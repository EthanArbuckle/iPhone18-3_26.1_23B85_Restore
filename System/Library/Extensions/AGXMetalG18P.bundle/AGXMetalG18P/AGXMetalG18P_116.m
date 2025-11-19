uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v134 = a8 + a10 - 1;
  v153 = a1;
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
  v133 = v134 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v155 = v24;
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
      v146 = 0;
LABEL_32:
      v143 = v27 - 3;
      v137 = v26 - 3;
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

    v146 = v32 >= v26;
    goto LABEL_32;
  }

  v146 = 0;
  v131 = 0;
  v137 = 0;
  v143 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v145 = a7 + a9 - 1;
    v130 = a7 >> 3;
    if (a7 >> 3 <= v145 >> 3)
    {
      v154 = v19 >> 3;
      v139 = v19 & 7;
      v128 = v20 & 7;
      v129 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v135 = v35;
      v144 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v152)
        {
          v37 = v152;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v142 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v141 = v39;
        v41 = v39 != 8;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 8;
          v40 = v41;
        }

        v140 = v40;
        v43 = v130;
        v150 = a3 + (v37 - v152) * a11;
        v151 = v42;
        v149 = v42;
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

          if (v145 < v45)
          {
            v45 = v145;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v139 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v152 && v44 >= a7)
          {
            v51 = v47 != v139;
            if (v43 != v154)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v140;
          }

          if (v146)
          {
            if (v143 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v143 != 0;
              v56 = v137;
              v58 = v143;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v143) & v55) << v52++;
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
              v59 = v53 << 9;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v143) + (v18 >> v137) * v131);
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
            v67 = v61 << 9;
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

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
          }

          v71 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_104:
              v79 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_104;
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
LABEL_105:
          v80 = (a4 + v79);
          v81 = v150 + 8 * (v46 - a7);
          v82 = (a2 + v67);
          if (v155)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              v86 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v86, v80, v49, v151);
LABEL_113:
              a7 = v144;
              if (v155)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v138 = v48;
            v83 = v50;
            v84 = v49;
            v85 = v46;
            memcpy(__dst, v82, sizeof(__dst));
            v46 = v85;
            v50 = v83;
            v86 = __dst;
            v48 = v138;
            LOBYTE(v49) = v84;
            result = v153;
          }

          else
          {
            v86 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v86;
          v165 = v49;
          v166 = v151;
          v161 = v142;
          v162 = v46 - v44;
          v158 = v80;
          v159 = v81;
          v160 = a11;
          v163 = v141;
          v164 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v87 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v86, *v80)];
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v87, v80[1]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v88, v80[2]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v89, v80[3]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v90, v80[4]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v91, v80[5]);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v92, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v92 + v93, v80[7]);
          v94 = v163;
          a7 = v144;
          if (v163)
          {
            v95 = v164;
            if (v164)
            {
              v96 = 0;
              v97 = v161 << 6;
              v98 = 8 * v162;
              v99 = &v168[0].i8[v97 + v98];
              v100 = v159;
              v101 = v160;
              v102 = 8 * v164;
              if (8 * v164)
              {
                v103 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v103 = 0;
              }

              v104 = !v103;
              v106 = v99 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[64 * v163 + 448 + 64 * v161 + 8 * v164 + v98];
              v107 = v102 & 0x1FFFFFFE0;
              v108 = v104 | (v160 < 0) | v106;
              v109 = &v168[1].i8[v97 + v98];
              v110 = (v159 + 16);
              v111 = v99;
              v112 = v159;
              do
              {
                v113 = (v100 + v96 * v101);
                v114 = &v99[64 * v96];
                if (v108)
                {
                  v115 = 0;
                }

                else
                {
                  if (v95 < 4)
                  {
                    v119 = 0;
LABEL_142:
                    v124 = -8 * v95 + v119;
                    v125 = (v112 + v119);
                    v126 = &v111[v119];
                    do
                    {
                      v127 = *v125++;
                      *v126 = v127;
                      v126 += 8;
                      v124 += 8;
                    }

                    while (v124);
                    goto LABEL_130;
                  }

                  v120 = v110;
                  v121 = v109;
                  v122 = v102 & 0x1FFFFFFE0;
                  do
                  {
                    v123 = *v120;
                    *(v121 - 1) = *(v120 - 1);
                    *v121 = v123;
                    v121 += 32;
                    v120 += 2;
                    v122 -= 32;
                  }

                  while (v122);
                  if (v102 == v107)
                  {
                    goto LABEL_130;
                  }

                  v119 = v102 & 0x1FFFFFFE0;
                  if ((v95 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v113 += v107;
                  v114 += v107;
                  v115 = v102 & 0xFFFFFFE0;
                }

                v116 = v115 + 1;
                do
                {
                  v117 = *v113++;
                  *v114++ = v117;
                }

                while (v102 > v116++);
LABEL_130:
                ++v96;
                v109 += 64;
                v110 = (v110 + v101);
                v112 += v101;
                v111 += 64;
              }

              while (v96 != v94);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
          if (v155)
          {
LABEL_46:
            memcpy(v82, v86, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v145 >> 3;
          result = v153;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v161 = v162 >> 3;
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
      v166 = v26 - 3;
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
      v156 = v20 & 7;
      v157 = v20 >> 3;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 8 * v18;
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
          v43 = 8;
        }

        if (v18 != v157)
        {
          v41 = v40 != 8;
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
          if (8 * v18 >= v180 && v45 >= a7)
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
              v55 = v166 != 0;
              v56 = 1;
              v58 = v172 != 0;
              v57 = v166;
              v59 = v172;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v164.i8[0];
            v65 = v164.i8[4];
            v67 = v165.i32[0];
            v66 = v165.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v73 = v72 + 7;
          if (v73 < 0x10)
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
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
          v82 = v179 + 8 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 4 * v98 || 2 * v97 >= v43)
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
                  v89[1] = v94;
                  v89[2] = v92;
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
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 64, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 6;
              v111 = 8 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 8 * v192;
              if (8 * v192)
              {
                v116 = (8 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 8 * v192 && v187 < &__dst[64 * v191 + 448 + 64 * v189 + 8 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[64 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 < 4)
                  {
                    v132 = 0;
LABEL_152:
                    v137 = -8 * v108 + v132;
                    v138 = (v125 + v132);
                    v139 = &v124[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    goto LABEL_140;
                  }

                  v133 = v123;
                  v134 = v122;
                  v135 = v115 & 0x1FFFFFFE0;
                  do
                  {
                    v136 = *v133;
                    *(v134 - 1) = *(v133 - 1);
                    *v134 = v136;
                    v134 += 32;
                    v133 += 2;
                    v135 -= 32;
                  }

                  while (v135);
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if ((v108 & 3) != 0)
                  {
                    goto LABEL_152;
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
                v122 += 64;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 64;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F2FE5;
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
            if (v143 <= 4 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[8 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[4];
              v150 = v147[5];
              *v141 = *v147;
              v141[1] = v149;
              v141[2] = v148;
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
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
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
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
              v66 = 0;
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
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 9;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
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

          v56 = v55 + 7;
          if (v56 < 0x10)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
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
          v69 = (a4 + v63);
          v70 = v148 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 64, v74, *v69)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80 + v81, v69[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 6;
              v86 = 8 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 8 * v163;
              if (8 * v163)
              {
                v91 = (8 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 8 * v163 && v158 < &__dst[64 * v162 + 448 + 64 * v160 + 8 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[64 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 < 4)
                  {
                    v107 = 0;
LABEL_116:
                    v112 = -8 * v83 + v107;
                    v113 = (v100 + v107);
                    v114 = &v99[v107];
                    do
                    {
                      v115 = *v113++;
                      *v114 = v115;
                      v114 += 8;
                      v112 += 8;
                    }

                    while (v112);
                    goto LABEL_104;
                  }

                  v108 = v98;
                  v109 = v97;
                  v110 = v90 & 0x1FFFFFFE0;
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
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if ((v83 & 3) != 0)
                  {
                    goto LABEL_116;
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
                v97 += 64;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 64;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 64, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x200uLL);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v16 = a8 >> 3;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v173 = isLevelTiled;
  if (v16 <= v162)
  {
    v172 = a7 + a9 - 1;
    if (a7 >> 3 <= v172 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v166 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v171 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v170 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v180)
        {
          v30 = v180;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v179 = 8 * v16;
        v169 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v168 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 8;
        }

        if (v16 != v159)
        {
          v33 = v32 != 8;
        }

        v167 = v33;
        v178 = a3 + (v30 - v180) * v26;
        v177 = v35;
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

          if (v172 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v166 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v179 >= v180 && v36 >= a7)
          {
            v43 = v39 != v166;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v167;
          }

          if (v173)
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
              v66 = 0;
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
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v144 = (v64 >> 3) - 1;
            if (v66)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v68 >> 3) - 1;
            if (v67)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_156:
                v148 = 0;
                v149 = 0;
                v150 = v34 & v144;
                v151 = v16 & v146;
                v152 = v145 != 0;
                v153 = v147 != 0;
                v154 = 1;
                do
                {
                  --v145;
                  if (v152)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  --v147;
                  if (v153)
                  {
                    v149 |= (v154 & v151) << v148++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v147 != 0;
                  v152 = v145 != 0;
                }

                while (v147 | v145);
                v155 = v149 << 9;
                goto LABEL_168;
              }
            }

            v155 = 0;
LABEL_168:
            v51 = v155 + ((v36 / v64 + v179 / v68 * ((v64 + v157) / v64)) << 14);
            goto LABEL_55;
          }

          if (v171)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v170.i8[0];
            v48 = v170.i8[4];
            v50 = v171.i32[0];
            v49 = v171.i32[1];
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
                v45 |= (v46 & v16) << v44++;
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

LABEL_55:
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

          v56 = v55 + 7;
          if (v56 < 0x10)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
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
          v69 = (a4 + v63);
          v70 = v178 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              v74 = __dst;
LABEL_90:
              v76 = &byte_29D2F2FE5;
              v77 = 16;
              v78 = v74;
              do
              {
                v86 = *v76;
                v87 = *(v76 - 1);
                if (v41 <= 4 * v87 || 2 * v86 >= v35)
                {
                  v85 = 0;
                }

                else
                {
                  v79 = (v70 + 2 * a11 * v86 + 32 * v87);
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = (v79 + v26);
                  v83 = *v82;
                  v84 = v82[1];
                  *v78 = v80;
                  v78[1] = v83;
                  v78[2] = v81;
                  v78[3] = v84;
                  v78 += 4;
                  v85 = 63;
                }

                *v69++ = v85;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              goto LABEL_87;
            }

            v164 = (a2 + v51);
            v72 = v40;
            v73 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v74 = __dst;
            v38 = v73;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v163;
            v40 = v72;
            v71 = v164;
            v25 = a1;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v74;
          v192 = v41;
          v193 = v35;
          v188 = v169;
          v189 = v38 - v36;
          v185 = v69;
          v186 = v70;
          v187 = v26;
          v190 = v168;
          v191 = v40;
          if (v42)
          {
            v75 = v74;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v74 = v75;
            v25 = a1;
            goto LABEL_87;
          }

          v165 = v74;
          v89 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v74, *v69)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v89, v69[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v69[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v91, v69[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v92, v69[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v93, v69[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v94, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v94 + v95, v69[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 6;
              v100 = 8 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 8 * v191;
              if (8 * v191)
              {
                v105 = (8 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 8 * v191 && v186 < &__dst[64 * v190 + 448 + 64 * v188 + 8 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[64 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 < 4)
                  {
                    v121 = 0;
LABEL_125:
                    v126 = -8 * v97 + v121;
                    v127 = (v114 + v121);
                    v128 = &v113[v121];
                    do
                    {
                      v129 = *v127++;
                      *v128 = v129;
                      v128 += 8;
                      v126 += 8;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v122 = v112;
                  v123 = v111;
                  v124 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v125 = *v122;
                    *(v123 - 1) = *(v122 - 1);
                    *v123 = v125;
                    v123 += 32;
                    v122 += 2;
                    v124 -= 32;
                  }

                  while (v124);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if ((v97 & 3) != 0)
                  {
                    goto LABEL_125;
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
                v111 += 64;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 64;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F2FE5;
          v134 = 16;
          v135 = v193;
          v25 = a1;
          v74 = v165;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 4 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[8 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[4];
              v139 = v136[5];
              *v130 = *v136;
              v130[1] = v138;
              v130[2] = v137;
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
            memcpy(v71, v74, 0x200uLL);
            v25 = a1;
          }

          v20 = v34++ == v172 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176[24] = *MEMORY[0x29EDCA608];
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

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v135 = v136 >> 3;
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
      v139 = v26 - 3;
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
      v130 = v20 & 7;
      v131 = v20 >> 3;
      v129 = ~(-1 << v139);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v137 = v35;
      v145 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v153)
        {
          v37 = v153;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v143 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v130;
        v142 = v39;
        v41 = v39 != 8;
        v42 = v130 + 1;
        if (v18 != v131)
        {
          v42 = 8;
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
          if (8 * v18 >= v153 && v45 >= a7)
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
              v55 = v139 != 0;
              v56 = 1;
              v58 = v144 != 0;
              v57 = v139;
              v59 = v144;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v144) & v56) << v53++;
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
              v60 = v54 << 10;
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
            v64 = v137.i8[0];
            v65 = v137.i8[4];
            v67 = v138.i32[0];
            v66 = v138.i32[1];
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

          v73 = v72 + 7;
          if (v73 < 0x10)
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
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 8)))
            {
              v87 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
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
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v88 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v175, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v174, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
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
              v100 = &v169[v98 + v99];
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
              v107 = v100 < v160 + v161 * (v164 - 1) + 16 * v165 && v160 < &__dst[128 * v164 + 896 + 128 * v162 + 16 * v165 + v99];
              v108 = v103 & 0x1FFFFFFE0;
              v109 = v105 | (v161 < 0) | v107;
              v110 = &v169[v98 + 16 + v99];
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
                      *v123++ = v124;
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
                    v126 += 2;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
          if (v156)
          {
LABEL_46:
            memcpy(v83, v87, 0x400uLL);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v215[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v174 = a8 + a10 - 1;
  v193 = a1;
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
  v173 = v174 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v195 = v24;
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
      v187 = 0;
LABEL_32:
      v184 = v27 - 3;
      v178 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v171 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v187 = v32 >= v26;
    goto LABEL_32;
  }

  v187 = 0;
  v171 = 0;
  v178 = 0;
  v184 = 0;
LABEL_33:
  if (v18 <= v173)
  {
    v186 = a7 + a9 - 1;
    v170 = a7 >> 3;
    if (a7 >> 3 <= v186 >> 3)
    {
      v34 = a11;
      v194 = v19 >> 3;
      v180 = v19 & 7;
      v168 = v20 & 7;
      v169 = v20 >> 3;
      v167 = ~(-1 << v178);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v177 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v176 = v36;
      v185 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v192)
        {
          v38 = v192;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v174 < v37)
        {
          v37 = v174;
        }

        v183 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v168;
        v182 = v40;
        v42 = v170;
        if (v18 == v169)
        {
          v43 = v168 + 1;
        }

        else
        {
          v43 = 8;
        }

        if (v18 != v169)
        {
          v41 = v40 != 8;
        }

        v181 = v41;
        v44 = v18 & v167;
        v191 = a3 + (v38 - v192) * v34;
        v190 = v43;
        v175 = v43;
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

          if (v186 < v46)
          {
            v46 = v186;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v194)
          {
            v50 = v180 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v192 && v45 >= a7)
          {
            v52 = v48 != v180;
            if (v42 != v194)
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
              v58 = v184 != 0;
              v57 = v178;
              v59 = v184;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v184) & v56) << v53++;
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
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v42 >> v184) + (v18 >> v178) * v171);
          }

          else if (v177)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v176.i8[0];
            v65 = v176.i8[4];
            v67 = v177.i32[0];
            v66 = v177.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v73 = v72 + 7;
          if (v73 < 0x10)
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
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
          v82 = v191 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v195)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v102 = *v87;
                v103 = *(v87 - 1);
                if (v50 <= 4 * v103 || 2 * v102 >= v43)
                {
                  v101 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v102 + (v103 << 6));
                  v91 = v90 + 2;
                  v93 = *v90;
                  v94 = v90[1];
                  v92 = (v90 + v34);
                  v95 = *v91;
                  v96 = v91[1];
                  v97 = *v92;
                  v98 = v92[1];
                  v92 += 2;
                  v99 = *v92;
                  v100 = v92[1];
                  *v89 = v93;
                  v89[1] = v94;
                  v89[2] = v97;
                  v89[3] = v98;
                  v89[4] = v95;
                  v89[5] = v96;
                  v89[6] = v99;
                  v89[7] = v100;
                  v89 += 8;
                  v101 = 127;
                }

                *v81++ = v101;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v185;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v167;
            v43 = v175;
            v85 = __dst;
            v34 = a11;
            result = v193;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v197 = v85;
          v205 = v50;
          v206 = v43;
          v201 = v183;
          v202 = v47 - v45;
          v198 = v81;
          v199 = v82;
          v200 = v34;
          v203 = v182;
          v204 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v193;
            goto LABEL_113;
          }

          v179 = v85;
          v105 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v85, *v81)];
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v210, 128, v105, v81[1]);
          v107 = v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v209, 128, v106, v81[2]);
          v108 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v211, 128, v107, v81[3]);
          v109 = v108 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v212, 128, v108, v81[4]);
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v214, 128, v109, v81[5]);
          v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v213, 128, v110, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v215, 128, v110 + v111, v81[7]);
          v112 = v203;
          if (v203)
          {
            v113 = v204;
            if (v204)
            {
              v114 = 0;
              v115 = v201 << 7;
              v116 = 16 * v202;
              v117 = &v208[v115 + v116];
              v118 = v199;
              v119 = v200;
              v120 = 16 * v204;
              if (16 * v204)
              {
                v121 = (16 * v204 - 1) >> 32 == 0;
              }

              else
              {
                v121 = 0;
              }

              v122 = !v121;
              v124 = v117 < v199 + v200 * (v203 - 1) + 16 * v204 && v199 < &__dst[128 * v203 + 896 + 128 * v201 + 16 * v204 + v116];
              v125 = v120 & 0x1FFFFFFE0;
              v126 = v122 | (v200 < 0) | v124;
              v127 = &v208[v115 + 16 + v116];
              v128 = (v199 + 16);
              v129 = v117;
              v130 = v199;
              do
              {
                v131 = (v118 + v114 * v119);
                v132 = &v117[128 * v114];
                if (v126)
                {
                  v133 = 0;
                }

                else
                {
                  if (v113 == 1)
                  {
                    v137 = 0;
LABEL_148:
                    v138 = -16 * v113 + v137;
                    v139 = (v130 + v137);
                    v140 = &v129[v137];
                    do
                    {
                      v141 = *v139++;
                      *v140++ = v141;
                      v138 += 16;
                    }

                    while (v138);
                    goto LABEL_140;
                  }

                  v142 = v128;
                  v143 = v127;
                  v144 = v120 & 0x1FFFFFFE0;
                  do
                  {
                    v145 = *v142;
                    *(v143 - 1) = *(v142 - 1);
                    *v143 = v145;
                    v143 += 2;
                    v142 += 2;
                    v144 -= 32;
                  }

                  while (v144);
                  if (v120 == v125)
                  {
                    goto LABEL_140;
                  }

                  v137 = v120 & 0x1FFFFFFE0;
                  if (v113)
                  {
                    goto LABEL_148;
                  }

                  v131 += v125;
                  v132 += v125;
                  v133 = v120 & 0xFFFFFFE0;
                }

                v134 = v133 + 1;
                do
                {
                  v135 = *v131++;
                  *v132++ = v135;
                }

                while (v120 > v134++);
LABEL_140:
                ++v114;
                v127 += 128;
                v128 = (v128 + v119);
                v130 += v119;
                v129 += 128;
              }

              while (v114 != v112);
            }
          }

          v146 = v197;
          v147 = v198;
          v148 = v205;
          v149 = &byte_29D2F2FE5;
          v150 = 16;
          v151 = v206;
          a7 = v185;
          v34 = a11;
          result = v193;
          v85 = v179;
          do
          {
            v164 = *v149;
            v165 = *(v149 - 1);
            if (v148 <= 4 * v165 || 2 * v164 >= v151)
            {
              v163 = 0;
            }

            else
            {
              v152 = &v208[256 * v164 + 64 * v165];
              v154 = *v152;
              v155 = v152[1];
              v153 = v152 + 2;
              v156 = v152 + 8;
              v152 += 10;
              v157 = *v153;
              v158 = v153[1];
              v159 = *v156;
              v160 = v156[1];
              v161 = *v152;
              v162 = v152[1];
              *v146 = v154;
              v146[1] = v155;
              v146[2] = v159;
              v146[3] = v160;
              v146[4] = v157;
              v146[5] = v158;
              v146[6] = v161;
              v146[7] = v162;
              v146 += 8;
              v163 = 127;
            }

            *v147++ = v163;
            v149 += 2;
            v150 -= 2;
          }

          while (v150);
LABEL_114:
          if (v195)
          {
            memcpy(v83, v85, 0x400uLL);
            v34 = a11;
            result = v193;
          }

          v21 = v42++ == v186 >> 3;
        }

        while (!v21);
        v21 = v18++ == v173;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v174[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
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
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
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
              v66 = 0;
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
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 10;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
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

          v56 = v55 + 7;
          if (v56 < 0x10)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
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
          v69 = (a4 + v63);
          v70 = v148 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v69)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v169, 128, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v168, 128, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 128, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 128, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 128, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 128, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v69[7]);
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
              v87 = &v167[v85 + v86];
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
              v94 = v87 < v158 + v159 * (v162 - 1) + 16 * v163 && v158 < &__dst[128 * v162 + 896 + 128 * v160 + 16 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[v85 + 16 + v86];
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
                      *v110++ = v111;
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
                    v113 += 2;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v214[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v16 = a8 >> 3;
  v171 = a8 + a10 - 1;
  v173 = v171 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v194 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v185 = isLevelTiled;
  if (v16 <= v173)
  {
    v184 = a7 + a9 - 1;
    if (a7 >> 3 <= v184 >> 3)
    {
      v193 = (a5 - 1) >> 3;
      v168 = a5 - 1;
      v178 = (a5 - 1) & 7;
      v169 = (a6 - 1) & 7;
      v170 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v183 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v182 = v27;
      v167 = 8 * v18 * v17;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v192)
        {
          v29 = v192;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v171 < v28)
        {
          v28 = v171;
        }

        v191 = 8 * v16;
        v181 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v169;
        v180 = v31;
        v33 = a7 >> 3;
        if (v16 == v170)
        {
          v34 = v169 + 1;
        }

        else
        {
          v34 = 8;
        }

        if (v16 != v170)
        {
          v32 = v31 != 8;
        }

        v179 = v32;
        v190 = a3 + (v29 - v192) * a11;
        v189 = v34;
        v174 = v34;
        do
        {
          v35 = 8 * v33;
          v36 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= a7)
          {
            v37 = a7;
          }

          else
          {
            v37 = 8 * v33;
          }

          if (v184 < v36)
          {
            v36 = a7 + a9 - 1;
          }

          v38 = v36 - v37;
          v39 = v38 + 1;
          if (v33 == v193)
          {
            v40 = v178 + 1;
          }

          else
          {
            v40 = 8;
          }

          v41 = 1;
          if (v191 >= v192 && v35 >= a7)
          {
            v42 = v38 != v178;
            if (v33 != v193)
            {
              v42 = v39 != 8;
            }

            v41 = v42 || v179;
          }

          if (v185)
          {
            v63 = 0;
            v64 = v167 >> (*(v25 + 57) != 0);
            v65 = 1;
            if (v64 <= 63)
            {
              if (v64 > 15)
              {
                if (v64 == 16)
                {
                  v65 = 0;
                  v66 = 0;
                  v67 = 64;
                  v63 = 128;
                }

                else
                {
                  v66 = 1;
                  v67 = 0;
                  if (v64 == 32)
                  {
                    v65 = 0;
                    v66 = 0;
                    v63 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v64 == 4)
              {
                v65 = 0;
                v66 = 0;
                v67 = 128;
                v63 = 256;
              }

              else
              {
                v66 = 1;
                v67 = 0;
                if (v64 == 8)
                {
                  v65 = 0;
                  v66 = 0;
                  v63 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v64 <= 255)
            {
              if (v64 == 64)
              {
                v65 = 0;
                v66 = 0;
                v67 = 32;
                v63 = 64;
              }

              else
              {
                v66 = 1;
                v67 = 0;
                if (v64 == 128)
                {
                  v65 = 0;
                  v66 = 0;
                  v63 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v64 == 256)
            {
              v65 = 0;
              v66 = 0;
              v67 = 16;
              v63 = 32;
            }

            else if (v64 == 512)
            {
              v65 = 0;
              v66 = 0;
              v63 = 16;
              v67 = 16;
            }

            else
            {
              v66 = 1;
              v67 = 0;
              if (v64 == 1024)
              {
                v65 = 0;
                v67 = 8;
                v63 = 16;
              }
            }

            v155 = (v63 >> 3) - 1;
            if (v65)
            {
              v156 = 0;
            }

            else
            {
              v156 = 32 - __clz(~(-1 << -__clz(v155)));
            }

            v157 = (v67 >> 3) - 1;
            if (v66)
            {
              v158 = 0;
              if (v156)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v158 = 32 - __clz(~(-1 << -__clz(v157)));
              if (v158 | v156)
              {
LABEL_156:
                v159 = 0;
                v160 = 0;
                v161 = v33 & v155;
                v162 = v16 & v157;
                v163 = v156 != 0;
                v164 = v158 != 0;
                v165 = 1;
                do
                {
                  --v156;
                  if (v163)
                  {
                    v160 |= (v165 & v161) << v159++;
                  }

                  else
                  {
                    v156 = 0;
                  }

                  --v158;
                  if (v164)
                  {
                    v160 |= (v165 & v162) << v159++;
                  }

                  else
                  {
                    v158 = 0;
                  }

                  v165 *= 2;
                  --v159;
                  v164 = v158 != 0;
                  v163 = v156 != 0;
                }

                while (v158 | v156);
                v166 = v160 << 10;
                goto LABEL_168;
              }
            }

            v166 = 0;
LABEL_168:
            v50 = v166 + ((v35 / v63 + v191 / v67 * ((v63 + v168) / v63)) << 14);
            goto LABEL_55;
          }

          if (v183)
          {
            v43 = 0;
            v44 = 0;
            v45 = 1;
            v46 = v182.i8[0];
            v47 = v182.i8[4];
            v49 = v183.i32[0];
            v48 = v183.i32[1];
            do
            {
              --v48;
              if (v47)
              {
                v44 |= (v45 & v33) << v43++;
              }

              else
              {
                v48 = 0;
              }

              --v49;
              if (v46)
              {
                v44 |= (v45 & v16) << v43++;
              }

              else
              {
                v49 = 0;
              }

              v45 *= 2;
              --v43;
              v46 = v49 != 0;
              v47 = v48 != 0;
            }

            while (v49 | v48);
            v50 = v44 << 10;
          }

          else
          {
            v50 = 0;
          }

LABEL_55:
          v51 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 7;
          if (v52 < 0x10)
          {
            v53 = 0;
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 3) - 1)));
          }

          v54 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 7;
          if (v55 < 0x10)
          {
            v56 = 0;
            if (!v53)
            {
LABEL_80:
              v62 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 3) - 1)));
            if (!(v56 | v53))
            {
              goto LABEL_80;
            }
          }

          v57 = 0;
          v58 = 0;
          v59 = v53 != 0;
          v60 = v56 != 0;
          v61 = 1;
          do
          {
            --v53;
            if (v59)
            {
              v58 |= (v61 & v33) << v57++;
            }

            else
            {
              v53 = 0;
            }

            --v56;
            if (v60)
            {
              v58 |= (v61 & v16) << v57++;
            }

            else
            {
              v56 = 0;
            }

            v61 *= 2;
            --v57;
            v60 = v56 != 0;
            v59 = v53 != 0;
          }

          while (v56 | v53);
          v62 = 8 * v58;
LABEL_81:
          v68 = (a4 + v62);
          v69 = v190 + 16 * (v37 - a7);
          v70 = (a2 + v50);
          if (v194)
          {
            if (!(v41 & 1 | (v40 < 8u) | (v189 < 8)))
            {
              v73 = __dst;
LABEL_90:
              v75 = &byte_29D2F2FE5;
              v76 = 16;
              v77 = v73;
              do
              {
                v90 = *v75;
                v91 = *(v75 - 1);
                if (v40 <= 4 * v91 || 2 * v90 >= v34)
                {
                  v89 = 0;
                }

                else
                {
                  v78 = (v69 + 2 * a11 * v90 + (v91 << 6));
                  v79 = v78 + 2;
                  v81 = *v78;
                  v82 = v78[1];
                  v80 = (v78 + a11);
                  v83 = *v79;
                  v84 = v79[1];
                  v85 = *v80;
                  v86 = v80[1];
                  v80 += 2;
                  v87 = *v80;
                  v88 = v80[1];
                  *v77 = v81;
                  v77[1] = v82;
                  v77[2] = v85;
                  v77[3] = v86;
                  v77[4] = v83;
                  v77[5] = v84;
                  v77[6] = v87;
                  v77[7] = v88;
                  v77 += 8;
                  v89 = 127;
                }

                *v68++ = v89;
                v75 += 2;
                v76 -= 2;
              }

              while (v76);
              goto LABEL_87;
            }

            v175 = (a2 + v50);
            v71 = v39;
            v176 = v37;
            v72 = v41;
            memcpy(__dst, (a2 + v50), sizeof(__dst));
            v73 = __dst;
            v35 = 8 * v33;
            v34 = v174;
            v41 = v72;
            v37 = v176;
            v39 = v71;
            v70 = v175;
            v25 = a1;
          }

          else
          {
            v73 = (a2 + v50);
            if (!(v41 & 1 | (v40 < 8u) | (v189 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v196 = v73;
          v204 = v40;
          v205 = v34;
          v200 = v181;
          v201 = v37 - v35;
          v197 = v68;
          v198 = v69;
          v199 = a11;
          v202 = v180;
          v203 = v39;
          if (v41)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = a1;
            goto LABEL_87;
          }

          v177 = v73;
          v93 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v207, 128, v73, *v68)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v209, 128, v93, v68[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v208, 128, v94, v68[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v210, 128, v95, v68[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v211, 128, v96, v68[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v213, 128, v97, v68[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v212, 128, v98, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v214, 128, v98 + v99, v68[7]);
          v100 = v202;
          if (v202)
          {
            v101 = v203;
            if (v203)
            {
              v102 = 0;
              v103 = v200 << 7;
              v104 = 16 * v201;
              v105 = &v207[v103 + v104];
              v106 = v198;
              v107 = v199;
              v108 = 16 * v203;
              if (16 * v203)
              {
                v109 = (16 * v203 - 1) >> 32 == 0;
              }

              else
              {
                v109 = 0;
              }

              v110 = !v109;
              v112 = v105 < v198 + v199 * (v202 - 1) + 16 * v203 && v198 < &__dst[128 * v202 + 896 + 128 * v200 + 16 * v203 + v104];
              v113 = v108 & 0x1FFFFFFE0;
              v114 = v110 | (v199 < 0) | v112;
              v115 = &v207[v103 + 16 + v104];
              v116 = (v198 + 16);
              v117 = v105;
              v118 = v198;
              do
              {
                v119 = (v106 + v102 * v107);
                v120 = &v105[128 * v102];
                if (v114)
                {
                  v121 = 0;
                }

                else
                {
                  if (v101 == 1)
                  {
                    v125 = 0;
LABEL_121:
                    v126 = -16 * v101 + v125;
                    v127 = (v118 + v125);
                    v128 = &v117[v125];
                    do
                    {
                      v129 = *v127++;
                      *v128++ = v129;
                      v126 += 16;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v130 = v116;
                  v131 = v115;
                  v132 = v108 & 0x1FFFFFFE0;
                  do
                  {
                    v133 = *v130;
                    *(v131 - 1) = *(v130 - 1);
                    *v131 = v133;
                    v131 += 2;
                    v130 += 2;
                    v132 -= 32;
                  }

                  while (v132);
                  if (v108 == v113)
                  {
                    goto LABEL_113;
                  }

                  v125 = v108 & 0x1FFFFFFE0;
                  if (v101)
                  {
                    goto LABEL_121;
                  }

                  v119 += v113;
                  v120 += v113;
                  v121 = v108 & 0xFFFFFFE0;
                }

                v122 = v121 + 1;
                do
                {
                  v123 = *v119++;
                  *v120++ = v123;
                }

                while (v108 > v122++);
LABEL_113:
                ++v102;
                v115 += 128;
                v116 = (v116 + v107);
                v118 += v107;
                v117 += 128;
              }

              while (v102 != v100);
            }
          }

          v134 = v196;
          v135 = v197;
          v136 = v204;
          v137 = &byte_29D2F2FE5;
          v138 = 16;
          v139 = v205;
          v25 = a1;
          v73 = v177;
          do
          {
            v152 = *v137;
            v153 = *(v137 - 1);
            if (v136 <= 4 * v153 || 2 * v152 >= v139)
            {
              v151 = 0;
            }

            else
            {
              v140 = &v207[256 * v152 + 64 * v153];
              v142 = *v140;
              v143 = v140[1];
              v141 = v140 + 2;
              v144 = v140 + 8;
              v140 += 10;
              v145 = *v141;
              v146 = v141[1];
              v147 = *v144;
              v148 = v144[1];
              v149 = *v140;
              v150 = v140[1];
              *v134 = v142;
              v134[1] = v143;
              v134[2] = v147;
              v134[3] = v148;
              v134[4] = v145;
              v134[5] = v146;
              v134[6] = v149;
              v134[7] = v150;
              v134 += 8;
              v151 = 127;
            }

            *v135++ = v151;
            v137 += 2;
            v138 -= 2;
          }

          while (v138);
LABEL_87:
          if (v194)
          {
            memcpy(v70, v73, 0x400uLL);
            v25 = a1;
          }

          v20 = v33++ == v184 >> 3;
        }

        while (!v20);
        v20 = v16++ == v173;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v135 = v136 >> 3;
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
      v139 = v26 - 3;
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
      v130 = v20 & 7;
      v131 = v20 >> 3;
      v129 = ~(-1 << v139);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v137 = v35;
      v145 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v153)
        {
          v37 = v153;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v143 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v130;
        v142 = v39;
        v41 = v39 != 8;
        v42 = v130 + 1;
        if (v18 != v131)
        {
          v42 = 8;
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
          if (8 * v18 >= v153 && v45 >= a7)
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
              v55 = v139 != 0;
              v56 = 1;
              v58 = v144 != 0;
              v57 = v139;
              v59 = v144;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v144) & v56) << v53++;
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
              v60 = v54 << 10;
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
            v64 = v137.i8[0];
            v65 = v137.i8[4];
            v67 = v138.i32[0];
            v66 = v138.i32[1];
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

          v73 = v72 + 7;
          if (v73 < 0x10)
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
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 8)))
            {
              v87 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
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
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v88 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
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
              v100 = v169 + v98 + v99;
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
              v107 = v100 < v160 + v161 * (v164 - 1) + 16 * v165 && v160 < &__dst[128 * v164 + 896 + 128 * v162 + 16 * v165 + v99];
              v108 = v103 & 0x1FFFFFFE0;
              v109 = v105 | (v161 < 0) | v107;
              v110 = &v169[1] + v98 + v99;
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
                    v126 += 2;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
          if (v156)
          {
LABEL_46:
            memcpy(v83, v87, 0x400uLL);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v216 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v174 = a8 + a10 - 1;
  v193 = a1;
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
  v173 = v174 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v195 = v24;
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
      v187 = 0;
LABEL_32:
      v184 = v27 - 3;
      v178 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v171 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v187 = v32 >= v26;
    goto LABEL_32;
  }

  v187 = 0;
  v171 = 0;
  v178 = 0;
  v184 = 0;
LABEL_33:
  if (v18 <= v173)
  {
    v186 = a7 + a9 - 1;
    v170 = a7 >> 3;
    if (a7 >> 3 <= v186 >> 3)
    {
      v34 = a11;
      v194 = v19 >> 3;
      v180 = v19 & 7;
      v168 = v20 & 7;
      v169 = v20 >> 3;
      v167 = ~(-1 << v178);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v177 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v176 = v36;
      v185 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v192)
        {
          v38 = v192;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v174 < v37)
        {
          v37 = v174;
        }

        v183 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v168;
        v182 = v40;
        v42 = v170;
        if (v18 == v169)
        {
          v43 = v168 + 1;
        }

        else
        {
          v43 = 8;
        }

        if (v18 != v169)
        {
          v41 = v40 != 8;
        }

        v181 = v41;
        v44 = v18 & v167;
        v191 = a3 + (v38 - v192) * v34;
        v190 = v43;
        v175 = v43;
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

          if (v186 < v46)
          {
            v46 = v186;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v194)
          {
            v50 = v180 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v192 && v45 >= a7)
          {
            v52 = v48 != v180;
            if (v42 != v194)
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
              v58 = v184 != 0;
              v57 = v178;
              v59 = v184;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v184) & v56) << v53++;
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
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v42 >> v184) + (v18 >> v178) * v171);
          }

          else if (v177)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v176.i8[0];
            v65 = v176.i8[4];
            v67 = v177.i32[0];
            v66 = v177.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v73 = v72 + 7;
          if (v73 < 0x10)
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
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
          v82 = v191 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v195)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v102 = *v87;
                v103 = *(v87 - 1);
                if (v50 <= 4 * v103 || 2 * v102 >= v43)
                {
                  v101 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v102 + (v103 << 6));
                  v91 = v90 + 2;
                  v93 = *v90;
                  v94 = v90[1];
                  v92 = (v90 + v34);
                  v95 = *v91;
                  v96 = v91[1];
                  v97 = *v92;
                  v98 = v92[1];
                  v92 += 2;
                  v99 = *v92;
                  v100 = v92[1];
                  *v89 = v93;
                  v89[1] = v94;
                  v89[2] = v97;
                  v89[3] = v98;
                  v89[4] = v95;
                  v89[5] = v96;
                  v89[6] = v99;
                  v89[7] = v100;
                  v89 += 8;
                  v101 = 127;
                }

                *v81++ = v101;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v185;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v167;
            v43 = v175;
            v85 = __dst;
            v34 = a11;
            result = v193;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v197 = v85;
          v205 = v50;
          v206 = v43;
          v201 = v183;
          v202 = v47 - v45;
          v198 = v81;
          v199 = v82;
          v200 = v34;
          v203 = v182;
          v204 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v193;
            goto LABEL_113;
          }

          v179 = v85;
          v105 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v85, *v81)];
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v210, 128, v105, v81[1]);
          v107 = v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v209, 128, v106, v81[2]);
          v108 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v211, 128, v107, v81[3]);
          v109 = v108 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v212, 128, v108, v81[4]);
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v214, 128, v109, v81[5]);
          v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v213, 128, v110, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v215, 128, v110 + v111, v81[7]);
          v112 = v203;
          if (v203)
          {
            v113 = v204;
            if (v204)
            {
              v114 = 0;
              v115 = v201 << 7;
              v116 = 16 * v202;
              v117 = v208 + v115 + v116;
              v118 = v199;
              v119 = v200;
              v120 = 16 * v204;
              if (16 * v204)
              {
                v121 = (16 * v204 - 1) >> 32 == 0;
              }

              else
              {
                v121 = 0;
              }

              v122 = !v121;
              v124 = v117 < v199 + v200 * (v203 - 1) + 16 * v204 && v199 < &__dst[128 * v203 + 896 + 128 * v201 + 16 * v204 + v116];
              v125 = v120 & 0x1FFFFFFE0;
              v126 = v122 | (v200 < 0) | v124;
              v127 = &v208[1] + v115 + v116;
              v128 = (v199 + 16);
              v129 = v117;
              v130 = v199;
              do
              {
                v131 = (v118 + v114 * v119);
                v132 = &v117[128 * v114];
                if (v126)
                {
                  v133 = 0;
                }

                else
                {
                  if (v113 == 1)
                  {
                    v137 = 0;
LABEL_148:
                    v138 = -16 * v113 + v137;
                    v139 = (v130 + v137);
                    v140 = &v129[v137];
                    do
                    {
                      v141 = *v139++;
                      *v140 = v141;
                      v140 += 16;
                      v138 += 16;
                    }

                    while (v138);
                    goto LABEL_140;
                  }

                  v142 = v128;
                  v143 = v127;
                  v144 = v120 & 0x1FFFFFFE0;
                  do
                  {
                    v145 = *v142;
                    *(v143 - 1) = *(v142 - 1);
                    *v143 = v145;
                    v143 += 2;
                    v142 += 2;
                    v144 -= 32;
                  }

                  while (v144);
                  if (v120 == v125)
                  {
                    goto LABEL_140;
                  }

                  v137 = v120 & 0x1FFFFFFE0;
                  if (v113)
                  {
                    goto LABEL_148;
                  }

                  v131 += v125;
                  v132 += v125;
                  v133 = v120 & 0xFFFFFFE0;
                }

                v134 = v133 + 1;
                do
                {
                  v135 = *v131++;
                  *v132++ = v135;
                }

                while (v120 > v134++);
LABEL_140:
                ++v114;
                v127 += 128;
                v128 = (v128 + v119);
                v130 += v119;
                v129 += 128;
              }

              while (v114 != v112);
            }
          }

          v146 = v197;
          v147 = v198;
          v148 = v205;
          v149 = &byte_29D2F2FE5;
          v150 = 16;
          v151 = v206;
          a7 = v185;
          v34 = a11;
          result = v193;
          v85 = v179;
          do
          {
            v164 = *v149;
            v165 = *(v149 - 1);
            if (v148 <= 4 * v165 || 2 * v164 >= v151)
            {
              v163 = 0;
            }

            else
            {
              v152 = &v208[16 * v164 + 4 * v165];
              v154 = *v152;
              v155 = v152[1];
              v153 = v152 + 2;
              v156 = v152 + 8;
              v152 += 10;
              v157 = *v153;
              v158 = v153[1];
              v159 = *v156;
              v160 = v156[1];
              v161 = *v152;
              v162 = v152[1];
              *v146 = v154;
              v146[1] = v155;
              v146[2] = v159;
              v146[3] = v160;
              v146[4] = v157;
              v146[5] = v158;
              v146[6] = v161;
              v146[7] = v162;
              v146 += 8;
              v163 = 127;
            }

            *v147++ = v163;
            v149 += 2;
            v150 -= 2;
          }

          while (v150);
LABEL_114:
          if (v195)
          {
            memcpy(v83, v85, 0x400uLL);
            v34 = a11;
            result = v193;
          }

          v21 = v42++ == v186 >> 3;
        }

        while (!v21);
        v21 = v18++ == v173;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
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
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
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
              v66 = 0;
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
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 10;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
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

          v56 = v55 + 7;
          if (v56 < 0x10)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
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
          v69 = (a4 + v63);
          v70 = v148 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v69)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 128, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v69[7]);
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
              v87 = v167 + v85 + v86;
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
              v94 = v87 < v158 + v159 * (v162 - 1) + 16 * v163 && v158 < &__dst[128 * v162 + 896 + 128 * v160 + 16 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1] + v85 + v86;
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
                    v113 += 2;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v215 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v16 = a8 >> 3;
  v171 = a8 + a10 - 1;
  v173 = v171 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v194 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v185 = isLevelTiled;
  if (v16 <= v173)
  {
    v184 = a7 + a9 - 1;
    if (a7 >> 3 <= v184 >> 3)
    {
      v193 = (a5 - 1) >> 3;
      v168 = a5 - 1;
      v178 = (a5 - 1) & 7;
      v169 = (a6 - 1) & 7;
      v170 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v183 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v182 = v27;
      v167 = 8 * v18 * v17;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v192)
        {
          v29 = v192;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v171 < v28)
        {
          v28 = v171;
        }

        v191 = 8 * v16;
        v181 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v169;
        v180 = v31;
        v33 = a7 >> 3;
        if (v16 == v170)
        {
          v34 = v169 + 1;
        }

        else
        {
          v34 = 8;
        }

        if (v16 != v170)
        {
          v32 = v31 != 8;
        }

        v179 = v32;
        v190 = a3 + (v29 - v192) * a11;
        v189 = v34;
        v174 = v34;
        do
        {
          v35 = 8 * v33;
          v36 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= a7)
          {
            v37 = a7;
          }

          else
          {
            v37 = 8 * v33;
          }

          if (v184 < v36)
          {
            v36 = a7 + a9 - 1;
          }

          v38 = v36 - v37;
          v39 = v38 + 1;
          if (v33 == v193)
          {
            v40 = v178 + 1;
          }

          else
          {
            v40 = 8;
          }

          v41 = 1;
          if (v191 >= v192 && v35 >= a7)
          {
            v42 = v38 != v178;
            if (v33 != v193)
            {
              v42 = v39 != 8;
            }

            v41 = v42 || v179;
          }

          if (v185)
          {
            v63 = 0;
            v64 = v167 >> (*(v25 + 57) != 0);
            v65 = 1;
            if (v64 <= 63)
            {
              if (v64 > 15)
              {
                if (v64 == 16)
                {
                  v65 = 0;
                  v66 = 0;
                  v67 = 64;
                  v63 = 128;
                }

                else
                {
                  v66 = 1;
                  v67 = 0;
                  if (v64 == 32)
                  {
                    v65 = 0;
                    v66 = 0;
                    v63 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v64 == 4)
              {
                v65 = 0;
                v66 = 0;
                v67 = 128;
                v63 = 256;
              }

              else
              {
                v66 = 1;
                v67 = 0;
                if (v64 == 8)
                {
                  v65 = 0;
                  v66 = 0;
                  v63 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v64 <= 255)
            {
              if (v64 == 64)
              {
                v65 = 0;
                v66 = 0;
                v67 = 32;
                v63 = 64;
              }

              else
              {
                v66 = 1;
                v67 = 0;
                if (v64 == 128)
                {
                  v65 = 0;
                  v66 = 0;
                  v63 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v64 == 256)
            {
              v65 = 0;
              v66 = 0;
              v67 = 16;
              v63 = 32;
            }

            else if (v64 == 512)
            {
              v65 = 0;
              v66 = 0;
              v63 = 16;
              v67 = 16;
            }

            else
            {
              v66 = 1;
              v67 = 0;
              if (v64 == 1024)
              {
                v65 = 0;
                v67 = 8;
                v63 = 16;
              }
            }

            v155 = (v63 >> 3) - 1;
            if (v65)
            {
              v156 = 0;
            }

            else
            {
              v156 = 32 - __clz(~(-1 << -__clz(v155)));
            }

            v157 = (v67 >> 3) - 1;
            if (v66)
            {
              v158 = 0;
              if (v156)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v158 = 32 - __clz(~(-1 << -__clz(v157)));
              if (v158 | v156)
              {
LABEL_156:
                v159 = 0;
                v160 = 0;
                v161 = v33 & v155;
                v162 = v16 & v157;
                v163 = v156 != 0;
                v164 = v158 != 0;
                v165 = 1;
                do
                {
                  --v156;
                  if (v163)
                  {
                    v160 |= (v165 & v161) << v159++;
                  }

                  else
                  {
                    v156 = 0;
                  }

                  --v158;
                  if (v164)
                  {
                    v160 |= (v165 & v162) << v159++;
                  }

                  else
                  {
                    v158 = 0;
                  }

                  v165 *= 2;
                  --v159;
                  v164 = v158 != 0;
                  v163 = v156 != 0;
                }

                while (v158 | v156);
                v166 = v160 << 10;
                goto LABEL_168;
              }
            }

            v166 = 0;
LABEL_168:
            v50 = v166 + ((v35 / v63 + v191 / v67 * ((v63 + v168) / v63)) << 14);
            goto LABEL_55;
          }

          if (v183)
          {
            v43 = 0;
            v44 = 0;
            v45 = 1;
            v46 = v182.i8[0];
            v47 = v182.i8[4];
            v49 = v183.i32[0];
            v48 = v183.i32[1];
            do
            {
              --v48;
              if (v47)
              {
                v44 |= (v45 & v33) << v43++;
              }

              else
              {
                v48 = 0;
              }

              --v49;
              if (v46)
              {
                v44 |= (v45 & v16) << v43++;
              }

              else
              {
                v49 = 0;
              }

              v45 *= 2;
              --v43;
              v46 = v49 != 0;
              v47 = v48 != 0;
            }

            while (v49 | v48);
            v50 = v44 << 10;
          }

          else
          {
            v50 = 0;
          }

LABEL_55:
          v51 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 7;
          if (v52 < 0x10)
          {
            v53 = 0;
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 3) - 1)));
          }

          v54 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 7;
          if (v55 < 0x10)
          {
            v56 = 0;
            if (!v53)
            {
LABEL_80:
              v62 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 3) - 1)));
            if (!(v56 | v53))
            {
              goto LABEL_80;
            }
          }

          v57 = 0;
          v58 = 0;
          v59 = v53 != 0;
          v60 = v56 != 0;
          v61 = 1;
          do
          {
            --v53;
            if (v59)
            {
              v58 |= (v61 & v33) << v57++;
            }

            else
            {
              v53 = 0;
            }

            --v56;
            if (v60)
            {
              v58 |= (v61 & v16) << v57++;
            }

            else
            {
              v56 = 0;
            }

            v61 *= 2;
            --v57;
            v60 = v56 != 0;
            v59 = v53 != 0;
          }

          while (v56 | v53);
          v62 = 8 * v58;
LABEL_81:
          v68 = (a4 + v62);
          v69 = v190 + 16 * (v37 - a7);
          v70 = (a2 + v50);
          if (v194)
          {
            if (!(v41 & 1 | (v40 < 8u) | (v189 < 8)))
            {
              v73 = __dst;
LABEL_90:
              v75 = &byte_29D2F2FE5;
              v76 = 16;
              v77 = v73;
              do
              {
                v90 = *v75;
                v91 = *(v75 - 1);
                if (v40 <= 4 * v91 || 2 * v90 >= v34)
                {
                  v89 = 0;
                }

                else
                {
                  v78 = (v69 + 2 * a11 * v90 + (v91 << 6));
                  v79 = v78 + 2;
                  v81 = *v78;
                  v82 = v78[1];
                  v80 = (v78 + a11);
                  v83 = *v79;
                  v84 = v79[1];
                  v85 = *v80;
                  v86 = v80[1];
                  v80 += 2;
                  v87 = *v80;
                  v88 = v80[1];
                  *v77 = v81;
                  v77[1] = v82;
                  v77[2] = v85;
                  v77[3] = v86;
                  v77[4] = v83;
                  v77[5] = v84;
                  v77[6] = v87;
                  v77[7] = v88;
                  v77 += 8;
                  v89 = 127;
                }

                *v68++ = v89;
                v75 += 2;
                v76 -= 2;
              }

              while (v76);
              goto LABEL_87;
            }

            v175 = (a2 + v50);
            v71 = v39;
            v176 = v37;
            v72 = v41;
            memcpy(__dst, (a2 + v50), sizeof(__dst));
            v73 = __dst;
            v35 = 8 * v33;
            v34 = v174;
            v41 = v72;
            v37 = v176;
            v39 = v71;
            v70 = v175;
            v25 = a1;
          }

          else
          {
            v73 = (a2 + v50);
            if (!(v41 & 1 | (v40 < 8u) | (v189 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v196 = v73;
          v204 = v40;
          v205 = v34;
          v200 = v181;
          v201 = v37 - v35;
          v197 = v68;
          v198 = v69;
          v199 = a11;
          v202 = v180;
          v203 = v39;
          if (v41)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = a1;
            goto LABEL_87;
          }

          v177 = v73;
          v93 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v207, 128, v73, *v68)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v209, 128, v93, v68[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v94, v68[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v210, 128, v95, v68[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v211, 128, v96, v68[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v213, 128, v97, v68[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v212, 128, v98, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v214, 128, v98 + v99, v68[7]);
          v100 = v202;
          if (v202)
          {
            v101 = v203;
            if (v203)
            {
              v102 = 0;
              v103 = v200 << 7;
              v104 = 16 * v201;
              v105 = v207 + v103 + v104;
              v106 = v198;
              v107 = v199;
              v108 = 16 * v203;
              if (16 * v203)
              {
                v109 = (16 * v203 - 1) >> 32 == 0;
              }

              else
              {
                v109 = 0;
              }

              v110 = !v109;
              v112 = v105 < v198 + v199 * (v202 - 1) + 16 * v203 && v198 < &__dst[128 * v202 + 896 + 128 * v200 + 16 * v203 + v104];
              v113 = v108 & 0x1FFFFFFE0;
              v114 = v110 | (v199 < 0) | v112;
              v115 = &v207[1] + v103 + v104;
              v116 = (v198 + 16);
              v117 = v105;
              v118 = v198;
              do
              {
                v119 = (v106 + v102 * v107);
                v120 = &v105[128 * v102];
                if (v114)
                {
                  v121 = 0;
                }

                else
                {
                  if (v101 == 1)
                  {
                    v125 = 0;
LABEL_121:
                    v126 = -16 * v101 + v125;
                    v127 = (v118 + v125);
                    v128 = &v117[v125];
                    do
                    {
                      v129 = *v127++;
                      *v128 = v129;
                      v128 += 16;
                      v126 += 16;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v130 = v116;
                  v131 = v115;
                  v132 = v108 & 0x1FFFFFFE0;
                  do
                  {
                    v133 = *v130;
                    *(v131 - 1) = *(v130 - 1);
                    *v131 = v133;
                    v131 += 2;
                    v130 += 2;
                    v132 -= 32;
                  }

                  while (v132);
                  if (v108 == v113)
                  {
                    goto LABEL_113;
                  }

                  v125 = v108 & 0x1FFFFFFE0;
                  if (v101)
                  {
                    goto LABEL_121;
                  }

                  v119 += v113;
                  v120 += v113;
                  v121 = v108 & 0xFFFFFFE0;
                }

                v122 = v121 + 1;
                do
                {
                  v123 = *v119++;
                  *v120++ = v123;
                }

                while (v108 > v122++);
LABEL_113:
                ++v102;
                v115 += 128;
                v116 = (v116 + v107);
                v118 += v107;
                v117 += 128;
              }

              while (v102 != v100);
            }
          }

          v134 = v196;
          v135 = v197;
          v136 = v204;
          v137 = &byte_29D2F2FE5;
          v138 = 16;
          v139 = v205;
          v25 = a1;
          v73 = v177;
          do
          {
            v152 = *v137;
            v153 = *(v137 - 1);
            if (v136 <= 4 * v153 || 2 * v152 >= v139)
            {
              v151 = 0;
            }

            else
            {
              v140 = &v207[16 * v152 + 4 * v153];
              v142 = *v140;
              v143 = v140[1];
              v141 = v140 + 2;
              v144 = v140 + 8;
              v140 += 10;
              v145 = *v141;
              v146 = v141[1];
              v147 = *v144;
              v148 = v144[1];
              v149 = *v140;
              v150 = v140[1];
              *v134 = v142;
              v134[1] = v143;
              v134[2] = v147;
              v134[3] = v148;
              v134[4] = v145;
              v134[5] = v146;
              v134[6] = v149;
              v134[7] = v150;
              v134 += 8;
              v151 = 127;
            }

            *v135++ = v151;
            v137 += 2;
            v138 -= 2;
          }

          while (v138);
LABEL_87:
          if (v194)
          {
            memcpy(v70, v73, 0x400uLL);
            v25 = a1;
          }

          v20 = v33++ == v184 >> 3;
        }

        while (!v20);
        v20 = v16++ == v173;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v147 = v21;
  v148 = v22;
  v130 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v132 = v14 + a10 - 1;
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

  v27 = v14 >> 2;
  v28 = v20 - 1;
  v29 = v18 - 1;
  v131 = v132 >> 2;
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
      v135 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v129 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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
  v129 = 0;
  v135 = 0;
  v142 = 0;
LABEL_33:
  if (v27 <= v131)
  {
    v145 = v16 + a9 - 1;
    v128 = v16 >> 3;
    if (v16 >> 3 <= v145 >> 3)
    {
      v153 = v28 >> 3;
      v137 = v28 & 7;
      v143 = (v28 & 7) + 1;
      v126 = v29 & 3;
      v127 = v29 >> 2;
      v125 = (v29 & 3) + 1;
      v136 = 2 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v134 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v133 = v43;
      v152 = v24;
      v144 = v16;
      do
      {
        v44 = (4 * v27) | 3;
        if (4 * v27 <= v151)
        {
          v45 = v151;
        }

        else
        {
          v45 = 4 * v27;
        }

        if (v132 < v44)
        {
          v44 = v132;
        }

        v141 = v45 - 4 * v27;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v126;
        v140 = v47;
        v49 = v47 != 4;
        v50 = v125;
        if (v27 != v127)
        {
          v50 = 4;
          v48 = v49;
        }

        v138 = v48;
        v139 = v50;
        v51 = v128;
        v150 = v130 + (v45 - v151) * a11;
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
          if (4 * v27 >= v151 && v52 >= v16)
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
            if (v142 | v135)
            {
              v60 = 0;
              v61 = 0;
              v62 = v142 != 0;
              v63 = 1;
              v65 = v135 != 0;
              v64 = v135;
              v66 = v142;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v27 & ~(-1 << v135) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v51 & ~(-1 << v142) & v63) << v60++;
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

            v75 = v67 + *(v24 + 336) * ((v51 >> v142) + (v27 >> v135) * v129);
          }

          else if (v134)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v133.i8[0];
            v71 = v133.i8[4];
            v73 = v134.i32[0];
            v74 = v134.i32[1];
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

          v80 = v79 + 3;
          if (v80 < 8)
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
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
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
          v89 = (v150 + ((v54 - v16) << 6));
          v90 = (v147 + v75);
          v154 = (v147 + v75);
          if (v155)
          {
            if (!(v58 & 1 | (v57 < 8u) | (v149 < 4)))
            {
              v90 = __dst;
LABEL_111:
              v92 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v90, v88, v89, a11));
              v93 = (v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v92, v88 + 1, (v89 + v136), a11));
              v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v93, v88 + 2, v89 + 16, a11));
              v95 = v88 + 3;
              v96 = (v89 + v136 + 256);
              v97 = a11;
              goto LABEL_112;
            }

            v91 = v58;
            memcpy(__dst, (v147 + v75), sizeof(__dst));
            v58 = v91;
            v90 = __dst;
          }

          else if (!(v58 & 1 | (v57 < 8u) | (v149 < 4)))
          {
            goto LABEL_111;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v98 = v90->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v90, *v88);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v98, v88[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v99, v88[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v99 + v100, v88[3]);
          v101 = v163;
          if (v163 && v164)
          {
            v102 = 0;
            v103 = v161 << 9;
            v104 = v162 << 6;
            v105 = &v168[0].i8[v103 + v104];
            v106 = v159;
            v107 = v160;
            v108 = v164 << 6;
            if (v108)
            {
              v109 = (v108 - 1) >> 32 == 0;
            }

            else
            {
              v109 = 0;
            }

            v110 = !v109;
            v112 = v105 < &v159->i8[v160 * (v163 - 1) + v108] && v159 < &__dst[512 * v163 + 1536 + 512 * v161 + v108 + v104];
            v113 = v110 | (v160 < 0) | v112;
            v114 = &v168[1].i8[v103 + v104];
            v115 = v159 + 1;
            do
            {
              v116 = v115;
              v117 = v114;
              v118 = v108;
              if (v113)
              {
                v119 = 0;
                do
                {
                  v105[v119] = v106->i8[v119];
                  ++v119;
                }

                while (v108 > v119);
              }

              else
              {
                do
                {
                  v120 = *v116;
                  *(v117 - 1) = v116[-1];
                  *v117 = v120;
                  v117 += 32;
                  v116 += 2;
                  v118 -= 32;
                }

                while (v118);
              }

              ++v102;
              v114 += 512;
              v115 = (v115 + v107);
              v105 += 512;
              v106 = (v106 + v107);
            }

            while (v102 != v101);
          }

          v122 = v157;
          v121 = v158;
          v123 = v165;
          v124 = v166;
          if (v165 && v166)
          {
            v122 = (v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v157, v158, v168, 512));
            if (!v123)
            {
              goto LABEL_146;
            }
          }

          else
          {
            *v158 = 0;
            if (!v123)
            {
              goto LABEL_146;
            }
          }

          if (v124 >= 3)
          {
            v122 = (v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v122, v121 + 1, v170, 512));
            if (v123 < 5)
            {
              goto LABEL_149;
            }

            goto LABEL_147;
          }

LABEL_146:
          v121[1] = 0;
          if (v123 < 5)
          {
            goto LABEL_149;
          }

LABEL_147:
          if (!v124)
          {
LABEL_149:
            v121[2] = 0;
            if (v123 < 5)
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }

          v122 = (v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v122, v121 + 2, v169, 512));
LABEL_150:
          if (v124 < 3)
          {
LABEL_152:
            v121[3] = 0;
            goto LABEL_113;
          }

          v95 = v121 + 3;
          v96 = v171;
          v94 = v122;
          v97 = 512;
LABEL_112:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v94, v95, v96, v97);
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
        v30 = v27++ == v131;
      }

      while (!v30);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v408 = v21;
  v356 = v22;
  v407 = v23;
  v24 = v12;
  v433 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v412 = v14;
  v358 = v14 + a10 - 1;
  v413 = v24;
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
  v357 = v358 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v415 = v32;
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
      v406 = 0;
LABEL_32:
      v370 = v35 - 3;
      v362 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v355 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v406 = v40 >= v34;
    goto LABEL_32;
  }

  v406 = 0;
  v355 = 0;
  v362 = 0;
  v370 = 0;
LABEL_33:
  if (v26 <= v357)
  {
    v405 = v16 + a9 - 1;
    v354 = v16 >> 3;
    if (v16 >> 3 <= v405 >> 3)
    {
      v414 = v27 >> 3;
      v364 = v27 & 7;
      v403 = (v27 & 7) + 1;
      v352 = v28 & 3;
      v353 = v28 >> 2;
      v351 = (v28 & 3) + 1;
      v363 = 2 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v361 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v360 = v43;
      v404 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v412)
        {
          v45 = v412;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v358 < v44)
        {
          v44 = v358;
        }

        v411 = 4 * v26;
        v369 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v352;
        v368 = v47;
        v49 = v47 != 4;
        v50 = v351;
        if (v26 != v353)
        {
          v50 = 4;
          v48 = v49;
        }

        v366 = v48;
        v51 = v354;
        v365 = (v26 >> v362) * v355;
        v52 = v26 & ~(-1 << v362);
        v410 = v356 + (v45 - v412) * a11;
        v367 = v50;
        v409 = v50;
        v359 = v26;
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

          if (v405 < v54)
          {
            v54 = v405;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v414)
          {
            v58 = v403;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v411 >= v412 && v53 >= v16)
          {
            v60 = v56 != v364;
            if (v51 != v414)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v366;
          }

          if (v406)
          {
            if (v370 | v362)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v362 != 0;
              v65 = v370 != 0;
              v66 = v362;
              v67 = v370;
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
                  v62 |= (v51 & ~(-1 << v370) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v370) + v365);
          }

          else if (v361)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v360.i8[0];
            v73 = v360.i8[4];
            v74 = v361.i32[0];
            v75 = v361.i32[1];
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

          v89 = (v408 + v88);
          v90 = (v410 + ((v55 - v16) << 6));
          v91 = (v407 + v76);
          if (v415)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v409 < 4)))
            {
              v97 = __dst;
LABEL_111:
              v371 = v90[4];
              v379 = v90[5];
              v387 = v90[6];
              v395 = v90[7];
              v98 = v90[8];
              v99 = v90[9];
              v100 = v90[10];
              v101 = v90[11];
              v102 = v90[12];
              v103 = v90[13];
              v104 = v90[14];
              v105 = v90[15];
              v106 = *(v90 + a11);
              v107 = *(v90 + a11 + 16);
              v108 = *(v90 + a11 + 32);
              v109 = *(v90 + a11 + 48);
              v110 = *(v90 + a11 + 64);
              v111 = *(v90 + a11 + 80);
              v112 = *(v90 + a11 + 96);
              v113 = *(v90 + a11 + 112);
              v114 = *(v90 + a11 + 128);
              v115 = *(v90 + a11 + 144);
              v116 = *(v90 + a11 + 160);
              v117 = *(v90 + a11 + 176);
              v118 = *(v90 + a11 + 192);
              v119 = *(v90 + a11 + 208);
              v120 = *(v90 + a11 + 224);
              v121 = *(v90 + a11 + 240);
              v122 = v90[1];
              v123 = v90[2];
              v124 = v90[3];
              *v97 = *v90;
              v97[1] = v122;
              v97[2] = v123;
              v97[3] = v124;
              v97[4] = v371;
              v97[5] = v379;
              v97[6] = v387;
              v97[7] = v395;
              v97[8] = v106;
              v97[9] = v107;
              v97[10] = v108;
              v97[11] = v109;
              v97[12] = v110;
              v97[13] = v111;
              v97[14] = v112;
              v97[15] = v113;
              v97[16] = v98;
              v97[17] = v99;
              v97[18] = v100;
              v97[19] = v101;
              v97[20] = v102;
              v97[21] = v103;
              v97[22] = v104;
              v97[23] = v105;
              v97[24] = v114;
              v97[25] = v115;
              v97[26] = v116;
              v97[27] = v117;
              v97[28] = v118;
              v97[29] = v119;
              v97[30] = v120;
              v97[31] = v121;
              *v89 = -1;
              v372 = *(v90 + v363 + 64);
              v380 = *(v90 + v363 + 80);
              v388 = *(v90 + v363 + 96);
              v396 = *(v90 + v363 + 112);
              v125 = *(v90 + v363 + 128);
              v126 = *(v90 + v363 + 144);
              v127 = *(v90 + v363 + 160);
              v128 = *(v90 + v363 + 176);
              v129 = *(v90 + v363 + 192);
              v130 = *(v90 + v363 + 208);
              v131 = *(v90 + v363 + 224);
              v132 = *(v90 + v363 + 240);
              v133 = *(v90 + v363 + a11);
              v134 = *(v90 + v363 + a11 + 16);
              v135 = *(v90 + v363 + a11 + 32);
              v136 = *(v90 + v363 + a11 + 48);
              v137 = *(v90 + v363 + a11 + 64);
              v138 = *(v90 + v363 + a11 + 80);
              v139 = *(v90 + v363 + a11 + 96);
              v140 = *(v90 + v363 + a11 + 112);
              v141 = *(v90 + v363 + a11 + 128);
              v142 = *(v90 + v363 + a11 + 144);
              v143 = *(v90 + v363 + a11 + 160);
              v144 = *(v90 + v363 + a11 + 176);
              v145 = *(v90 + v363 + a11 + 192);
              v146 = *(v90 + v363 + a11 + 208);
              v147 = *(v90 + v363 + a11 + 224);
              v148 = *(v90 + v363 + a11 + 240);
              v149 = *(v90 + v363 + 16);
              v150 = *(v90 + v363 + 32);
              v151 = *(v90 + v363 + 48);
              v97[32] = *(v90 + 2 * a11);
              v97[33] = v149;
              v97[34] = v150;
              v97[35] = v151;
              v97[36] = v372;
              v97[37] = v380;
              v97[38] = v388;
              v97[39] = v396;
              v97[40] = v133;
              v97[41] = v134;
              v97[42] = v135;
              v97[43] = v136;
              v97[44] = v137;
              v97[45] = v138;
              v97[46] = v139;
              v97[47] = v140;
              v97[48] = v125;
              v97[49] = v126;
              v97[50] = v127;
              v97[51] = v128;
              v97[52] = v129;
              v97[53] = v130;
              v97[54] = v131;
              v97[55] = v132;
              v97[56] = v141;
              v97[57] = v142;
              v97[58] = v143;
              v97[59] = v144;
              v97[60] = v145;
              v97[61] = v146;
              v97[62] = v147;
              v97[63] = v148;
              v89[1] = -1;
              v152 = (v90 + a11 + 256);
              v373 = v90[20];
              v381 = v90[21];
              v389 = v90[22];
              v397 = v90[23];
              v153 = v90[24];
              v154 = v90[25];
              v155 = v90[26];
              v156 = v90[27];
              v157 = v90[28];
              v158 = v90[29];
              v159 = v90[30];
              v160 = v90[31];
              v161 = *v152;
              v162 = v152[1];
              v163 = v152[2];
              v164 = v152[3];
              v165 = v152[4];
              v166 = v152[5];
              v167 = v152[6];
              v168 = v152[7];
              v169 = v152[8];
              v170 = v152[9];
              v171 = v152[10];
              v172 = v152[11];
              v152 += 12;
              v173 = *v152;
              v174 = v152[1];
              v175 = v152[2];
              v176 = v152[3];
              v177 = v90[17];
              v178 = v90[18];
              v179 = v90[19];
              v97[64] = v90[16];
              v97[65] = v177;
              v97[66] = v178;
              v97[67] = v179;
              v97[68] = v373;
              v97[69] = v381;
              v97[70] = v389;
              v97[71] = v397;
              v97[72] = v161;
              v97[73] = v162;
              v97[74] = v163;
              v97[75] = v164;
              v97[76] = v165;
              v97[77] = v166;
              v97[78] = v167;
              v97[79] = v168;
              v97[80] = v153;
              v97[81] = v154;
              v97[82] = v155;
              v97[83] = v156;
              v97[84] = v157;
              v97[85] = v158;
              v97[86] = v159;
              v97[87] = v160;
              v97[88] = v169;
              v97[89] = v170;
              v97[90] = v171;
              v97[91] = v172;
              v97[92] = v173;
              v97[93] = v174;
              v97[94] = v175;
              v97[95] = v176;
              v89[2] = -1;
              v180 = (v90 + v363 + a11 + 256);
              v374 = *(v90 + v363 + 320);
              v382 = *(v90 + v363 + 336);
              v390 = *(v90 + v363 + 352);
              v398 = *(v90 + v363 + 368);
              v181 = *(v90 + v363 + 384);
              v182 = *(v90 + v363 + 400);
              v183 = *(v90 + v363 + 416);
              v184 = *(v90 + v363 + 432);
              v185 = *(v90 + v363 + 448);
              v186 = *(v90 + v363 + 464);
              v187 = *(v90 + v363 + 480);
              v188 = *(v90 + v363 + 496);
              v189 = *v180;
              v190 = v180[1];
              v191 = v180[2];
              v192 = v180[3];
              v193 = v180[4];
              v194 = v180[5];
              v195 = v180[6];
              v196 = v180[7];
              v197 = v180[8];
              v198 = v180[9];
              v199 = v180[10];
              v200 = v180[11];
              v201 = v180[12];
              v202 = v180[13];
              v203 = v180[14];
              v204 = v180[15];
              v205 = *(v90 + v363 + 272);
              v206 = *(v90 + v363 + 288);
              v207 = *(v90 + v363 + 304);
              v97[96] = *(v90 + v363 + 256);
              v97[97] = v205;
              v97[98] = v206;
              v97[99] = v207;
              v97[100] = v374;
              v97[101] = v382;
              v97[102] = v390;
              v97[103] = v398;
              v97[104] = v189;
              v97[105] = v190;
              v97[106] = v191;
              v97[107] = v192;
              v97[108] = v193;
              v97[109] = v194;
              v97[110] = v195;
              v97[111] = v196;
              v97[112] = v181;
              v97[113] = v182;
              v97[114] = v183;
              v97[115] = v184;
              v97[116] = v185;
              v97[117] = v186;
              v97[118] = v187;
              v97[119] = v188;
              v97[120] = v197;
              v97[121] = v198;
              v97[122] = v199;
              v97[123] = v200;
              v97[124] = v201;
              v97[125] = v202;
              v97[126] = v203;
              v97[127] = v204;
              v89[3] = -1;
LABEL_112:
              v208 = v51 + 1;
              if (v415)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v92 = v52;
            v93 = v57;
            v94 = (v408 + v88);
            v95 = v58;
            v96 = v55;
            memcpy(__dst, v91, sizeof(__dst));
            v55 = v96;
            v58 = v95;
            v89 = v94;
            v97 = __dst;
            v57 = v93;
            v52 = v92;
            v26 = v359;
            result = v413;
          }

          else
          {
            v97 = (v407 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v409 < 4)))
            {
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v417 = v97;
          v425 = v58;
          v426 = v367;
          v421 = v369;
          v422 = v55 - v53;
          v418 = v89;
          v419 = v90;
          v420 = a11;
          v423 = v368;
          v424 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v413;
            goto LABEL_112;
          }

          v209 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v428, 512, v97, *v89);
          v210 = v209 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v431, 512, v209, v89[1]);
          v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v430, 512, v210, v89[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v432, 512, v210 + v211, v89[3]);
          v212 = v423;
          if (v423 && v424)
          {
            v213 = 0;
            v214 = v422 << 6;
            v215 = &v429[32 * v421 - 1] + v214;
            v216 = v419;
            v217 = v420;
            v218 = v424 << 6;
            if (v218)
            {
              v219 = (v218 - 1) >> 32 == 0;
            }

            else
            {
              v219 = 0;
            }

            v220 = !v219;
            v222 = v215 < v419 + v420 * (v423 - 1) + v218 && v419 < &__dst[512 * v423 + 1536 + 512 * v421 + v218 + v214];
            v223 = v220 | (v420 < 0) | v222;
            v224 = &v429[32 * v421] + v214;
            v225 = v419 + 1;
            do
            {
              v226 = v225;
              v227 = v224;
              v228 = v218;
              if (v223)
              {
                v229 = 0;
                do
                {
                  v215[v229] = *(v216 + v229);
                  ++v229;
                }

                while (v218 > v229);
              }

              else
              {
                do
                {
                  v230 = *v226;
                  *(v227 - 1) = *(v226 - 1);
                  *v227 = v230;
                  v227 += 2;
                  v226 += 2;
                  v228 -= 32;
                }

                while (v228);
              }

              ++v213;
              v224 += 512;
              v225 = (v225 + v217);
              v215 += 512;
              v216 = (v216 + v217);
            }

            while (v213 != v212);
          }

          v231 = 0;
          v232 = v417;
          v233 = v418;
          v234 = v425;
          v235 = v426;
          if (v425)
          {
            result = v413;
            v208 = v51 + 1;
            if (v426)
            {
              v375 = v429[3];
              v383 = v429[4];
              v391 = v429[5];
              v399 = v429[6];
              v236 = v429[7];
              v237 = v429[8];
              v238 = v429[9];
              v239 = v429[10];
              v240 = v429[11];
              v241 = v429[12];
              v242 = v429[13];
              v243 = v429[14];
              v244 = v430[16];
              v245 = v430[17];
              v246 = v430[18];
              v247 = v430[19];
              v248 = v430[20];
              v249 = v430[21];
              v250 = v430[22];
              v251 = v430[23];
              v252 = v430[24];
              v253 = v430[25];
              v254 = v430[26];
              v255 = v430[27];
              v256 = v430[28];
              v257 = v430[29];
              v258 = v430[30];
              v259 = v430[31];
              v260 = v429[0];
              v261 = v429[1];
              v262 = v429[2];
              *v417 = v428;
              v232[1] = v260;
              v232[2] = v261;
              v232[3] = v262;
              v232[4] = v375;
              v232[5] = v383;
              v232[6] = v391;
              v232[7] = v399;
              v232[8] = v244;
              v232[9] = v245;
              v232[10] = v246;
              v232[11] = v247;
              v232[12] = v248;
              v232[13] = v249;
              v232[14] = v250;
              v232[15] = v251;
              v232[16] = v236;
              v232[17] = v237;
              v232[18] = v238;
              v232[19] = v239;
              v232[20] = v240;
              v232[21] = v241;
              v232[22] = v242;
              v232[23] = v243;
              v232[24] = v252;
              v232[25] = v253;
              v232[26] = v254;
              v232[27] = v255;
              v263 = v232 + 28;
              v232 += 32;
              *v263 = v256;
              v263[1] = v257;
              v263[2] = v258;
              v263[3] = v259;
              v231 = -1;
            }
          }

          else
          {
            result = v413;
            v208 = v51 + 1;
          }

          v264 = 0;
          *v233 = v231;
          if (v234 && v235 >= 3)
          {
            v376 = v431[4];
            v384 = v431[5];
            v392 = v431[6];
            v400 = v431[7];
            v265 = v431[8];
            v266 = v431[9];
            v267 = v431[10];
            v268 = v431[11];
            v269 = v431[12];
            v270 = v431[13];
            v271 = v431[14];
            v272 = v431[15];
            v273 = v432[16];
            v274 = v432[17];
            v275 = v432[18];
            v276 = v432[19];
            v277 = v432[20];
            v278 = v432[21];
            v279 = v432[22];
            v280 = v432[23];
            v281 = v432[24];
            v282 = v432[25];
            v283 = v432[26];
            v284 = v432[27];
            v285 = v432[28];
            v286 = v432[29];
            v287 = v432[30];
            v288 = v432[31];
            v289 = v431[1];
            v290 = v431[2];
            v291 = v431[3];
            *v232 = v431[0];
            v232[1] = v289;
            v232[2] = v290;
            v232[3] = v291;
            v232[4] = v376;
            v232[5] = v384;
            v232[6] = v392;
            v232[7] = v400;
            v232[8] = v273;
            v232[9] = v274;
            v232[10] = v275;
            v232[11] = v276;
            v232[12] = v277;
            v232[13] = v278;
            v232[14] = v279;
            v232[15] = v280;
            v232[16] = v265;
            v232[17] = v266;
            v232[18] = v267;
            v232[19] = v268;
            v232[20] = v269;
            v232[21] = v270;
            v232[22] = v271;
            v232[23] = v272;
            v232[24] = v281;
            v232[25] = v282;
            v232[26] = v283;
            v232[27] = v284;
            v292 = v232 + 28;
            v232 += 32;
            *v292 = v285;
            v292[1] = v286;
            v292[2] = v287;
            v292[3] = v288;
            v264 = -1;
          }

          v293 = 0;
          v233[1] = v264;
          if (v234 >= 5 && v235)
          {
            v377 = v430[4];
            v385 = v430[5];
            v393 = v430[6];
            v401 = v430[7];
            v294 = v430[8];
            v295 = v430[9];
            v296 = v430[10];
            v297 = v430[11];
            v298 = v430[12];
            v299 = v430[13];
            v300 = v430[14];
            v301 = v430[15];
            v302 = v430[32];
            v303 = v430[33];
            v304 = v430[34];
            v305 = v430[35];
            v306 = v430[36];
            v307 = v430[37];
            v308 = v430[38];
            v309 = v430[39];
            v310 = v430[40];
            v311 = v430[41];
            v312 = v430[42];
            v313 = v430[43];
            v314 = v430[44];
            v315 = v430[45];
            v316 = v430[46];
            v317 = v430[47];
            v318 = v430[1];
            v319 = v430[2];
            v320 = v430[3];
            *v232 = v430[0];
            v232[1] = v318;
            v232[2] = v319;
            v232[3] = v320;
            v232[4] = v377;
            v232[5] = v385;
            v232[6] = v393;
            v232[7] = v401;
            v232[8] = v302;
            v232[9] = v303;
            v232[10] = v304;
            v232[11] = v305;
            v232[12] = v306;
            v232[13] = v307;
            v232[14] = v308;
            v232[15] = v309;
            v232[16] = v294;
            v232[17] = v295;
            v232[18] = v296;
            v232[19] = v297;
            v232[20] = v298;
            v232[21] = v299;
            v232[22] = v300;
            v232[23] = v301;
            v232[24] = v310;
            v232[25] = v311;
            v232[26] = v312;
            v232[27] = v313;
            v321 = v232 + 28;
            v232 += 32;
            *v321 = v314;
            v321[1] = v315;
            v321[2] = v316;
            v321[3] = v317;
            v293 = -1;
          }

          v322 = 0;
          v233[2] = v293;
          if (v234 >= 5 && v235 >= 3)
          {
            v378 = v432[4];
            v386 = v432[5];
            v394 = v432[6];
            v402 = v432[7];
            v323 = v432[8];
            v324 = v432[9];
            v325 = v432[10];
            v326 = v432[11];
            v327 = v432[12];
            v328 = v432[13];
            v329 = v432[14];
            v330 = v432[15];
            v331 = v432[32];
            v332 = v432[33];
            v333 = v432[34];
            v334 = v432[35];
            v335 = v432[36];
            v336 = v432[37];
            v337 = v432[38];
            v338 = v432[39];
            v339 = v432[40];
            v340 = v432[41];
            v341 = v432[42];
            v342 = v432[43];
            v343 = v432[44];
            v344 = v432[45];
            v345 = v432[46];
            v346 = v432[47];
            v347 = v432[1];
            v348 = v432[2];
            v349 = v432[3];
            *v232 = v432[0];
            v232[1] = v347;
            v232[2] = v348;
            v232[3] = v349;
            v232[4] = v378;
            v232[5] = v386;
            v232[6] = v394;
            v232[7] = v402;
            v232[8] = v331;
            v232[9] = v332;
            v232[10] = v333;
            v232[11] = v334;
            v232[12] = v335;
            v232[13] = v336;
            v232[14] = v337;
            v232[15] = v338;
            v232[16] = v323;
            v232[17] = v324;
            v232[18] = v325;
            v232[19] = v326;
            v232[20] = v327;
            v232[21] = v328;
            v232[22] = v329;
            v232[23] = v330;
            v232[24] = v339;
            v232[25] = v340;
            v232[26] = v341;
            v232[27] = v342;
            v350 = v232 + 28;
            v322 = -1;
            *v350 = v343;
            v350[1] = v344;
            v350[2] = v345;
            v350[3] = v346;
          }

          v233[3] = v322;
          if (v415)
          {
LABEL_46:
            memcpy(v91, v97, 0x800uLL);
            result = v413;
          }

LABEL_47:
          v29 = v51 == v405 >> 3;
          v51 = v208;
          v16 = v404;
        }

        while (!v29);
        v29 = v26++ == v357;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v149 = v21;
  v150 = v22;
  v136 = v23;
  v24 = v12;
  v174 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v25 = v14 >> 2;
  v135 = v14 + a10 - 1;
  v137 = v135 >> 2;
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
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v137)
  {
    v147 = v16 + a9 - 1;
    v134 = v16 >> 3;
    if (v16 >> 3 <= v147 >> 3)
    {
      v156 = (v20 - 1) >> 3;
      v133 = (v18 - 1) >> 2;
      v130 = v20 - 1;
      v139 = (v20 - 1) & 7;
      v131 = ((v18 - 1) & 3) + 1;
      v132 = (v18 - 1) & 3;
      v138 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v145 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v144 = v34;
      v129 = 8 * v27 * v26;
      v146 = v16;
      do
      {
        v35 = (4 * v25) | 3;
        if (4 * v25 <= v154)
        {
          v36 = v154;
        }

        else
        {
          v36 = 4 * v25;
        }

        if (v135 < v35)
        {
          v35 = v135;
        }

        v153 = 4 * v25;
        v143 = v36 - 4 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v132;
        v142 = v38;
        v40 = v38 != 4;
        v41 = v134;
        v42 = v131;
        if (v25 != v133)
        {
          v42 = 4;
          v39 = v40;
        }

        v140 = v39;
        v141 = v42;
        v152 = v136 + (v36 - v154) * a11;
        v151 = v42;
        v43 = v155;
        do
        {
          v44 = 8 * v41;
          v45 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v41;
          }

          if (v147 < v45)
          {
            v45 = v147;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v41 == v156)
          {
            v49 = v139 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v153 >= v154 && v44 >= v16)
          {
            v51 = v47 != v139;
            if (v41 != v156)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v140;
          }

          if (isLevelTiled)
          {
            v72 = 0;
            v73 = v129 >> (*(v43 + 57) != 0);
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

            v117 = (v72 >> 3) - 1;
            v118 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v119 = 32 - __clz(~(-1 << -__clz(v117))), v120 = 32 - __clz(~(-1 << -__clz(v118))), !(v120 | v119)))
            {
              v128 = 0;
            }

            else
            {
              v121 = 0;
              v122 = 0;
              v123 = v41 & v117;
              v124 = v25 & v118;
              v125 = v120 != 0;
              v126 = v119 != 0;
              v127 = 1;
              do
              {
                --v120;
                if (v125)
                {
                  v122 |= (v127 & v124) << v121++;
                }

                else
                {
                  v120 = 0;
                }

                --v119;
                if (v126)
                {
                  v122 |= (v127 & v123) << v121++;
                }

                else
                {
                  v119 = 0;
                }

                v127 *= 2;
                --v121;
                v126 = v119 != 0;
                v125 = v120 != 0;
              }

              while (v119 | v120);
              v128 = v122 << 11;
            }

            v59 = v128 + ((v44 / v72 + v153 / v75 * ((v72 + v130) / v72)) << 14);
          }

          else if (v145)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v144.i8[0];
            v55 = v144.i8[4];
            v57 = v145.i32[0];
            v58 = v145.i32[1];
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
                v53 |= (v54 & v41) << v52++;
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

          v60 = *(v43 + 128) >> (*(v43 + 144) + a12);
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

          v63 = *(v43 + 132) >> (*(v43 + 144) + a12);
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
LABEL_78:
              v71 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 2) - 1)));
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
              v67 |= (v70 & v41) << v66++;
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
          v76 = (v150 + v71);
          v77 = (v152 + ((v46 - v16) << 6));
          v78 = (v149 + v59);
          if (v157)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v151 < 4)))
            {
              v82 = __dst;
LABEL_87:
              v84 = (v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v82, v76, v77, a11));
              v85 = (v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v84, v76 + 1, (v77 + v138), a11));
              v86 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v85, v76 + 2, v77 + 16, a11));
              v87 = v76 + 3;
              v88 = (v77 + v138 + 256);
              v89 = a11;
LABEL_88:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v86, v87, v88, v89);
              goto LABEL_89;
            }

            v79 = v48;
            v80 = (v149 + v59);
            v81 = v50;
            memcpy(__dst, (v149 + v59), sizeof(__dst));
            v50 = v81;
            v78 = v80;
            v48 = v79;
            v44 = 8 * v41;
            v82 = __dst;
          }

          else
          {
            v82 = (v149 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v151 < 4)))
            {
              goto LABEL_87;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v155;
          v159 = v82;
          v167 = v49;
          v168 = v141;
          v163 = v143;
          v164 = v46 - v44;
          v160 = v76;
          v161 = v77;
          v162 = a11;
          v165 = v142;
          v166 = v48;
          if (v50)
          {
            dispatch_sync(*(*(v155 + 8) + 16552), block);
            v43 = v155;
            v83 = v41 + 1;
            if (v157)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v90 = v82->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v82, *v76);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v90, v76[1]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v91, v76[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v173, 512, v91 + v92, v76[3]);
          v93 = v165;
          if (v165 && v166)
          {
            v94 = 0;
            v95 = v163 << 9;
            v96 = v164 << 6;
            v97 = &v170[0].i8[v95 + v96];
            v98 = v161;
            v99 = v162;
            v100 = v166 << 6;
            if (v100)
            {
              v101 = (v100 - 1) >> 32 == 0;
            }

            else
            {
              v101 = 0;
            }

            v102 = !v101;
            v104 = v97 < &v161->i8[v162 * (v165 - 1) + v100] && v161 < &__dst[512 * v165 + 1536 + 512 * v163 + v100 + v96];
            v105 = v102 | (v162 < 0) | v104;
            v106 = &v170[1].i8[v95 + v96];
            v107 = v161 + 1;
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
                  v97[v111] = v98->i8[v111];
                  ++v111;
                }

                while (v100 > v111);
              }

              else
              {
                do
                {
                  v112 = *v108;
                  *(v109 - 1) = v108[-1];
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
              v98 = (v98 + v99);
            }

            while (v94 != v93);
          }

          v114 = v159;
          v113 = v160;
          v115 = v167;
          v116 = v168;
          if (v167 && v168)
          {
            v114 = (v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v159, v160, v170, 512));
            if (!v115)
            {
              goto LABEL_121;
            }
          }

          else
          {
            *v160 = 0;
            if (!v115)
            {
              goto LABEL_121;
            }
          }

          if (v116 >= 3)
          {
            v114 = (v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v114, v113 + 1, v172, 512));
            if (v115 < 5)
            {
              goto LABEL_124;
            }

            goto LABEL_122;
          }

LABEL_121:
          v113[1] = 0;
          if (v115 < 5)
          {
            goto LABEL_124;
          }

LABEL_122:
          if (!v116)
          {
LABEL_124:
            v113[2] = 0;
            if (v115 < 5)
            {
              goto LABEL_127;
            }

            goto LABEL_125;
          }

          v114 = (v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v114, v113 + 2, v171, 512));
LABEL_125:
          if (v116 >= 3)
          {
            v87 = v113 + 3;
            v88 = v173;
            v86 = v114;
            v89 = 512;
            goto LABEL_88;
          }

LABEL_127:
          v113[3] = 0;
LABEL_89:
          v43 = v155;
          v83 = v41 + 1;
          if (v157)
          {
LABEL_26:
            memcpy(v78, v82, 0x800uLL);
          }

LABEL_27:
          v16 = v146;
          v29 = v41 == v147 >> 3;
          v41 = v83;
        }

        while (!v29);
        v29 = v25++ == v137;
      }

      while (!v29);
    }
  }
}