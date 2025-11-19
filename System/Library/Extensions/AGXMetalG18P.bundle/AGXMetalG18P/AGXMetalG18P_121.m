void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v89 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 128, v73, *v68)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v89, v68[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v90, v68[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v91, v68[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v92, v68[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v93, v68[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v94, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v94 + v95, v68[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v88 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 128, v105 + v106, v81[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v69, a11, v74, v68, v41, v149);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v68)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 128, v75, v68[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v76, v68[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v77, v68[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v78, v68[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v79, v68[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v80, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v68[7]);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v89 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 128, v73, *v68)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v89, v68[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v90, v68[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v91, v68[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v92, v68[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v93, v68[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v94, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v94 + v95, v68[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v164[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v141 = a8;
  v123 = a8 + a10 - 1;
  v142 = a1;
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
  v122 = v123 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v144 = v24;
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
      v135 = 0;
LABEL_32:
      v132 = v27 - 3;
      v126 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v120 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v135 = v32 >= v26;
    goto LABEL_32;
  }

  v135 = 0;
  v120 = 0;
  v126 = 0;
  v132 = 0;
LABEL_33:
  if (v18 <= v122)
  {
    v134 = a7 + a9 - 1;
    v119 = a7 >> 3;
    if (a7 >> 3 <= v134 >> 3)
    {
      v143 = v19 >> 3;
      v128 = v19 & 7;
      v117 = v20 & 3;
      v118 = v20 >> 2;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v124 = v35;
      v133 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v141)
        {
          v37 = v141;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v123 < v36)
        {
          v36 = v123;
        }

        v131 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v117;
        v130 = v39;
        v41 = v39 != 4;
        v42 = v117 + 1;
        if (v18 != v118)
        {
          v42 = 4;
          v40 = v41;
        }

        v129 = v40;
        v43 = v119;
        v44 = v18 & ~(-1 << v126);
        v139 = a3 + (v37 - v141) * a11;
        v140 = v42;
        v138 = v42;
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

          if (v134 < v46)
          {
            v46 = v134;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v143)
          {
            v50 = v128 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v141 && v45 >= a7)
          {
            v52 = v48 != v128;
            if (v43 != v143)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v129;
          }

          if (v135)
          {
            if (v132 | v126)
            {
              v53 = 0;
              v54 = 0;
              v55 = v132 != 0;
              v56 = 1;
              v58 = v126 != 0;
              v57 = v126;
              v59 = v132;
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
                  v54 |= (v43 & ~(-1 << v132) & v56) << v53++;
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
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v132) + (v18 >> v126) * v120);
          }

          else if (v125)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v124.i8[0];
            v64 = v124.i8[4];
            v66 = v125.i32[0];
            v67 = v125.i32[1];
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

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
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
          v82 = v139 + 32 * (v47 - a7);
          v83 = (a2 + v68);
          if (v144)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              v88 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v88, v81, v50, v140);
              goto LABEL_111;
            }

            v127 = (a2 + v68);
            v84 = v51;
            v85 = v50;
            v86 = v44;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v44 = v86;
            v88 = __dst;
            v51 = v84;
            v83 = v127;
            LOBYTE(v50) = v85;
            result = v142;
          }

          else
          {
            v88 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v146 = v88;
          v154 = v50;
          v155 = v140;
          v150 = v131;
          v151 = v47 - v45;
          v147 = v81;
          v148 = v82;
          v149 = a11;
          v152 = v130;
          v153 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v133;
            v89 = v43 + 1;
            if (!v144)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v83, v88, 0x400uLL);
            goto LABEL_46;
          }

          v90 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v88, *v81)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v158, 256, v90, v81[1]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v161, 256, v91, v81[2]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v162, 256, v92, v81[3]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v159, 256, v93, v81[4]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v160, 256, v94, v81[5]);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v163, 256, v95, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v95 + v96, v81[7]);
          v97 = v152;
          a7 = v133;
          v89 = v43 + 1;
          if (v152 && v153)
          {
            v98 = 0;
            v99 = v150 << 8;
            v100 = 32 * v151;
            v101 = &v157[v99 + v100];
            v102 = v148;
            v103 = v149;
            v104 = 32 * v153;
            if (v104)
            {
              v105 = (v104 - 1) >> 32 == 0;
            }

            else
            {
              v105 = 0;
            }

            v106 = !v105;
            v108 = v101 < v148 + v149 * (v152 - 1) + v104 && v148 < &__dst[256 * v152 + 768 + 256 * v150 + v104 + v100];
            v109 = v106 | (v149 < 0) | v108;
            v110 = &v157[v99 + 16 + v100];
            v111 = (v148 + 16);
            do
            {
              v112 = v111;
              v113 = v110;
              v114 = v104;
              if (v109)
              {
                v115 = 0;
                do
                {
                  v101[v115] = *(v102 + v115);
                  ++v115;
                }

                while (v104 > v115);
              }

              else
              {
                do
                {
                  v116 = *v112;
                  *(v113 - 1) = *(v112 - 1);
                  *v113 = v116;
                  v113 += 2;
                  v112 += 2;
                  v114 -= 32;
                }

                while (v114);
              }

              ++v98;
              v110 += 256;
              v111 = (v111 + v103);
              v101 += 256;
              v102 += v103;
            }

            while (v98 != v97);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v157, 256, v146, v147, v154, v155);
          if (v144)
          {
            goto LABEL_136;
          }

LABEL_46:
          v21 = v43 == v134 >> 3;
          v43 = v89;
          result = v142;
        }

        while (!v21);
        v21 = v18++ == v122;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v163 = a8 + a10 - 1;
  v182 = a1;
  if (*(a1 + 168))
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
  v162 = v163 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v184 = v23;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v18);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v175 = 0;
LABEL_32:
      v173 = v26 - 3;
      v167 = v25 - 2;
      v32 = -1 << *(*(a1 + 208) + 48);
      v160 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v175 = v31 >= v25;
    goto LABEL_32;
  }

  v175 = 0;
  v160 = 0;
  v167 = 0;
  v173 = 0;
LABEL_33:
  if (v17 <= v162)
  {
    v174 = a7 + a9 - 1;
    if (a7 >> 3 <= v174 >> 3)
    {
      v33 = a11;
      v183 = v18 >> 3;
      v169 = v18 & 7;
      v158 = v19 & 3;
      v159 = v19 >> 2;
      v157 = ~(-1 << v167);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v166 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v165 = v35;
      v36 = 2 * a11;
      do
      {
        v37 = (4 * v17) | 3;
        if (4 * v17 <= v181)
        {
          v38 = v181;
        }

        else
        {
          v38 = 4 * v17;
        }

        if (v163 < v37)
        {
          v37 = v163;
        }

        v172 = v38 - 4 * v17;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v158;
        v171 = v40;
        v42 = a7 >> 3;
        if (v17 == v159)
        {
          v43 = v158 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v17 != v159)
        {
          v41 = v40 != 4;
        }

        v170 = v41;
        v44 = v17 & v157;
        v179 = a3 + (v38 - v181) * v33;
        v178 = v43;
        v45 = a7;
        v164 = v43;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v174 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v183)
          {
            v51 = v169 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= v181 && v46 >= v45)
          {
            v53 = v49 != v169;
            if (v42 != v183)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v170;
          }

          if (v175)
          {
            if (v173 | v167)
            {
              v54 = 0;
              v55 = 0;
              v56 = v173 != 0;
              v57 = 1;
              v59 = v167 != 0;
              v58 = v167;
              v60 = v173;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v44 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v42 & ~(-1 << v173) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v60 != 0;
                v59 = v58 != 0;
              }

              while (v60 | v58);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v42 >> v173) + (v17 >> v167) * v160);
          }

          else if (v166)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v165.i8[0];
            v65 = v165.i8[4];
            v67 = v166.i32[0];
            v68 = v166.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
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
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(result + 128) >> (*(result + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 7;
          if (v71 < 0x10)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 3) - 1)));
          }

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 3;
          if (v74 < 8)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
          }

          if (v75 | v72)
          {
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
                v77 |= (v80 & v42) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v17) << v76++;
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
          }

          else
          {
            v81 = 0;
          }

          v82 = (a4 + v81);
          v83 = v179 + 32 * (v48 - v45);
          v84 = (a2 + v69);
          if (v184)
          {
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              v88 = __dst;
LABEL_116:
              v91 = &byte_29D2F30E1;
              v92 = 16;
              v93 = v88;
              do
              {
                v106 = *v91;
                v107 = *(v91 - 1);
                if (v51 <= 2 * v107 || 2 * v106 >= v43)
                {
                  v105 = 0;
                }

                else
                {
                  v94 = (v83 + v36 * v106 + (v107 << 6));
                  v95 = v94 + 2;
                  v97 = *v94;
                  v98 = v94[1];
                  v96 = (v94 + v33);
                  v99 = *v95;
                  v100 = v95[1];
                  v101 = *v96;
                  v102 = v96[1];
                  v96 += 2;
                  v103 = *v96;
                  v104 = v96[1];
                  *v93 = v97;
                  v93[1] = v98;
                  v93[2] = v99;
                  v93[3] = v100;
                  v93[4] = v101;
                  v93[5] = v102;
                  v93[6] = v103;
                  v93[7] = v104;
                  v93 += 8;
                  v105 = 127;
                }

                *v82++ = v105;
                v91 += 2;
                v92 -= 2;
              }

              while (v92);
LABEL_112:
              v45 = a7;
              v90 = v42 + 1;
              goto LABEL_113;
            }

            v85 = v50;
            v86 = v52;
            v87 = v48;
            memcpy(__dst, v84, sizeof(__dst));
            v48 = v87;
            v52 = v86;
            v43 = v164;
            v44 = v17 & v157;
            v50 = v85;
            v36 = 2 * a11;
            v88 = __dst;
            v33 = a11;
            result = v182;
          }

          else
          {
            v88 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              goto LABEL_116;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v88;
          v194 = v51;
          v195 = v43;
          v190 = v172;
          v191 = v48 - v46;
          v187 = v82;
          v188 = v83;
          v189 = v33;
          v192 = v171;
          v193 = v50;
          if (v52)
          {
            v89 = v88;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v88 = v89;
            v33 = a11;
            result = v182;
            goto LABEL_112;
          }

          v168 = v88;
          v109 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 256, v88, *v82)];
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v198, 256, v109, v82[1]);
          v111 = v110 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v201, 256, v110, v82[2]);
          v112 = v111 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v202, 256, v111, v82[3]);
          v113 = v112 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v199, 256, v112, v82[4]);
          v114 = v113 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v200, 256, v113, v82[5]);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v203, 256, v114, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v204, 256, v114 + v115, v82[7]);
          v116 = v192;
          if (v192 && v193)
          {
            v117 = 0;
            v118 = v190 << 8;
            v119 = 32 * v191;
            v120 = &v197[v118 + v119];
            v121 = v188;
            v122 = v189;
            v123 = 32 * v193;
            if (v123)
            {
              v124 = (v123 - 1) >> 32 == 0;
            }

            else
            {
              v124 = 0;
            }

            v125 = !v124;
            v127 = v120 < v188 + v189 * (v192 - 1) + v123 && v188 < &__dst[256 * v192 + 768 + 256 * v190 + v123 + v119];
            v128 = v125 | (v189 < 0) | v127;
            v129 = &v197[v118 + 16 + v119];
            v130 = (v188 + 16);
            do
            {
              v131 = v130;
              v132 = v129;
              v133 = v123;
              if (v128)
              {
                v134 = 0;
                do
                {
                  v120[v134] = *(v121 + v134);
                  ++v134;
                }

                while (v123 > v134);
              }

              else
              {
                do
                {
                  v135 = *v131;
                  *(v132 - 1) = *(v131 - 1);
                  *v132 = v135;
                  v132 += 2;
                  v131 += 2;
                  v133 -= 32;
                }

                while (v133);
              }

              ++v117;
              v129 += 256;
              v130 = (v130 + v122);
              v120 += 256;
              v121 += v122;
            }

            while (v117 != v116);
          }

          v136 = v186;
          v137 = v187;
          v138 = v194;
          v139 = &byte_29D2F30E1;
          v140 = 16;
          v141 = v195;
          v45 = a7;
          v33 = a11;
          result = v182;
          v90 = v42 + 1;
          v88 = v168;
          do
          {
            v154 = *v139;
            v155 = *(v139 - 1);
            if (v138 <= 2 * v155 || 2 * v154 >= v141)
            {
              v153 = 0;
            }

            else
            {
              v142 = &v197[512 * v154 + 64 * v155];
              v144 = *v142;
              v145 = v142[1];
              v143 = v142 + 2;
              v146 = v142 + 16;
              v142 += 18;
              v147 = *v143;
              v148 = v143[1];
              v149 = *v146;
              v150 = v146[1];
              v151 = *v142;
              v152 = v142[1];
              *v136 = v144;
              v136[1] = v145;
              v136[2] = v147;
              v136[3] = v148;
              v136[4] = v149;
              v136[5] = v150;
              v136[6] = v151;
              v136[7] = v152;
              v136 += 8;
              v153 = 127;
            }

            *v137++ = v153;
            v139 += 2;
            v140 -= 2;
          }

          while (v140);
LABEL_113:
          if (v184)
          {
            memcpy(v84, v88, 0x400uLL);
            v33 = a11;
            result = v182;
          }

          v20 = v42 == v174 >> 3;
          v42 = v90;
        }

        while (!v20);
        v20 = v17++ == v162;
      }

      while (!v20);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v160[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v137 = a8;
  v17 = a8 >> 2;
  v119 = a8 + a10 - 1;
  v121 = v119 >> 2;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  v138 = v16;
  if (*(v16 + 168))
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
  v140 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v121)
  {
    v129 = a7 + a9 - 1;
    v118 = a7 >> 3;
    if (a7 >> 3 <= v129 >> 3)
    {
      v139 = (a5 - 1) >> 3;
      v115 = a5 - 1;
      v122 = (a5 - 1) & 7;
      v116 = (a6 - 1) & 3;
      v117 = (a6 - 1) >> 2;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v127 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v126 = v26;
      v114 = 8 * v19 * v18;
      v128 = a7;
      do
      {
        v27 = (4 * v17) | 3;
        if (4 * v17 <= v137)
        {
          v28 = v137;
        }

        else
        {
          v28 = 4 * v17;
        }

        if (v119 < v27)
        {
          v27 = v119;
        }

        v136 = 4 * v17;
        v125 = v28 - 4 * v17;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v116;
        v124 = v30;
        v32 = v30 != 4;
        v33 = v118;
        v34 = v116 + 1;
        if (v17 != v117)
        {
          v34 = 4;
          v31 = v32;
        }

        v123 = v31;
        v134 = a3 + (v28 - v137) * a11;
        v135 = v34;
        v133 = v34;
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

          if (v129 < v36)
          {
            v36 = v129;
          }

          v38 = v36 - v37;
          v39 = v38 + 1;
          if (v33 == v139)
          {
            v40 = v122 + 1;
          }

          else
          {
            v40 = 8;
          }

          v41 = 1;
          if (v136 >= v137 && v35 >= a7)
          {
            v42 = v38 != v122;
            if (v33 != v139)
            {
              v42 = v39 != 8;
            }

            v41 = v42 || v123;
          }

          if (isLevelTiled)
          {
            v63 = 0;
            v64 = v114 >> (*(v16 + 57) != 0);
            v65 = 1;
            if (v64 <= 63)
            {
              if (v64 > 15)
              {
                if (v64 == 16)
                {
                  v65 = 0;
                  v66 = 64;
                  v63 = 128;
                }

                else
                {
                  v66 = 0;
                  if (v64 == 32)
                  {
                    v65 = 0;
                    v63 = 64;
                    v66 = 64;
                  }
                }
              }

              else if (v64 == 4)
              {
                v65 = 0;
                v66 = 128;
                v63 = 256;
              }

              else
              {
                v66 = 0;
                if (v64 == 8)
                {
                  v65 = 0;
                  v63 = 128;
                  v66 = 128;
                }
              }
            }

            else if (v64 <= 255)
            {
              if (v64 == 64)
              {
                v65 = 0;
                v66 = 32;
                v63 = 64;
              }

              else
              {
                v66 = 0;
                if (v64 == 128)
                {
                  v65 = 0;
                  v63 = 32;
                  v66 = 32;
                }
              }
            }

            else if (v64 == 256)
            {
              v65 = 0;
              v66 = 16;
              v63 = 32;
            }

            else if (v64 == 512)
            {
              v65 = 0;
              v63 = 16;
              v66 = 16;
            }

            else
            {
              v66 = 0;
              if (v64 == 1024)
              {
                v65 = 0;
                v66 = 8;
                v63 = 16;
              }
            }

            v102 = (v63 >> 3) - 1;
            v103 = (v66 >> 2) - 1;
            if ((v65 & 1) != 0 || (v104 = 32 - __clz(~(-1 << -__clz(v102))), v105 = 32 - __clz(~(-1 << -__clz(v103))), !(v105 | v104)))
            {
              v113 = 0;
            }

            else
            {
              v106 = 0;
              v107 = 0;
              v108 = v33 & v102;
              v109 = v17 & v103;
              v110 = v105 != 0;
              v111 = v104 != 0;
              v112 = 1;
              do
              {
                --v105;
                if (v110)
                {
                  v107 |= (v112 & v109) << v106++;
                }

                else
                {
                  v105 = 0;
                }

                --v104;
                if (v111)
                {
                  v107 |= (v112 & v108) << v106++;
                }

                else
                {
                  v104 = 0;
                }

                v112 *= 2;
                --v106;
                v111 = v104 != 0;
                v110 = v105 != 0;
              }

              while (v104 | v105);
              v113 = v107 << 10;
              v16 = v138;
            }

            v50 = v113 + ((v35 / v63 + v136 / v66 * ((v63 + v115) / v63)) << 14);
          }

          else if (v127)
          {
            v43 = 0;
            v44 = 0;
            v45 = 1;
            v47 = v126.i8[0];
            v46 = v126.i8[4];
            v48 = v127.i32[0];
            v49 = v127.i32[1];
            do
            {
              --v48;
              if (v47)
              {
                v44 |= (v45 & v17) << v43++;
              }

              else
              {
                v48 = 0;
              }

              --v49;
              if (v46)
              {
                v44 |= (v45 & v33) << v43++;
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

          v51 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v54 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 3;
          if (v55 < 8)
          {
            v56 = 0;
            if (!v53)
            {
LABEL_77:
              v62 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 2) - 1)));
            if (!(v56 | v53))
            {
              goto LABEL_77;
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
              v58 |= (v61 & v17) << v57++;
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
LABEL_78:
          v67 = (a4 + v62);
          v68 = v134 + 32 * (v37 - a7);
          v69 = (a2 + v50);
          if (v140)
          {
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              v74 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, a11, v74, v67, v40, v135);
              goto LABEL_86;
            }

            v70 = v40;
            v71 = v39;
            v72 = (a2 + v50);
            v73 = v41;
            memcpy(__dst, (a2 + v50), sizeof(__dst));
            v35 = 8 * v33;
            v74 = __dst;
            v41 = v73;
            v69 = v72;
            v39 = v71;
            LOBYTE(v40) = v70;
            v16 = v138;
          }

          else
          {
            v74 = (a2 + v50);
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v16;
          v142 = v74;
          v150 = v40;
          v151 = v135;
          v146 = v125;
          v147 = v37 - v35;
          v143 = v67;
          v144 = v68;
          v145 = a11;
          v148 = v124;
          v149 = v39;
          if (v41)
          {
            dispatch_sync(*(*(v16 + 8) + 16552), block);
LABEL_86:
            a7 = v128;
            if (!v140)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v69, v74, 0x400uLL);
            goto LABEL_26;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v74, *v67)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v154, 256, v75, v67[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v157, 256, v76, v67[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v158, 256, v77, v67[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v155, 256, v78, v67[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v156, 256, v79, v67[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v159, 256, v80, v67[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v80 + v81, v67[7]);
          v82 = v148;
          a7 = v128;
          if (v148 && v149)
          {
            v83 = 0;
            v84 = v146 << 8;
            v85 = 32 * v147;
            v86 = &v153[v84 + v85];
            v87 = v144;
            v88 = v145;
            v89 = 32 * v149;
            if (v89)
            {
              v90 = (v89 - 1) >> 32 == 0;
            }

            else
            {
              v90 = 0;
            }

            v91 = !v90;
            v93 = v86 < v144 + v145 * (v148 - 1) + v89 && v144 < &__dst[256 * v148 + 768 + 256 * v146 + v89 + v85];
            v94 = v91 | (v145 < 0) | v93;
            v95 = &v153[v84 + 16 + v85];
            v96 = (v144 + 16);
            do
            {
              v97 = v96;
              v98 = v95;
              v99 = v89;
              if (v94)
              {
                v100 = 0;
                do
                {
                  v86[v100] = *(v87 + v100);
                  ++v100;
                }

                while (v89 > v100);
              }

              else
              {
                do
                {
                  v101 = *v97;
                  *(v98 - 1) = *(v97 - 1);
                  *v98 = v101;
                  v98 += 2;
                  v97 += 2;
                  v99 -= 32;
                }

                while (v99);
              }

              ++v83;
              v95 += 256;
              v96 = (v96 + v88);
              v86 += 256;
              v87 += v88;
            }

            while (v83 != v82);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v153, 256, v142, v143, v150, v151);
          if (v140)
          {
            goto LABEL_111;
          }

LABEL_26:
          v21 = v33++ == v129 >> 3;
          v16 = v138;
        }

        while (!v21);
        v21 = v17++ == v121;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v200[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v178 = a8;
  v16 = a8 >> 2;
  v158 = a8 + a10 - 1;
  v160 = v158 >> 2;
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
  v180 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v171 = isLevelTiled;
  if (v16 <= v160)
  {
    v170 = a7 + a9 - 1;
    if (a7 >> 3 <= v170 >> 3)
    {
      v26 = a11;
      v179 = (a5 - 1) >> 3;
      v155 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v156 = (a6 - 1) & 3;
      v157 = (a6 - 1) >> 2;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v169 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v168 = v28;
      v154 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v178)
        {
          v30 = v178;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v158 < v29)
        {
          v29 = v158;
        }

        v177 = 4 * v16;
        v167 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v156;
        v166 = v32;
        v34 = a7 >> 3;
        if (v16 == v157)
        {
          v35 = v156 + 1;
        }

        else
        {
          v35 = 4;
        }

        if (v16 != v157)
        {
          v33 = v32 != 4;
        }

        v165 = v33;
        v176 = a3 + (v30 - v178) * v26;
        v175 = v35;
        v161 = v35;
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

          if (v170 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v179)
          {
            v41 = v164 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v177 >= v178 && v36 >= a7)
          {
            v43 = v39 != v164;
            if (v34 != v179)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v165;
          }

          if (v171)
          {
            v64 = 0;
            v65 = v154 >> (*(v25 + 57) != 0);
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

            v142 = (v64 >> 3) - 1;
            v143 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v144 = 32 - __clz(~(-1 << -__clz(v142))), v145 = 32 - __clz(~(-1 << -__clz(v143))), !(v145 | v144)))
            {
              v153 = 0;
            }

            else
            {
              v146 = 0;
              v147 = 0;
              v148 = v34 & v142;
              v149 = v16 & v143;
              v150 = v145 != 0;
              v151 = v144 != 0;
              v152 = 1;
              do
              {
                --v145;
                if (v150)
                {
                  v147 |= (v152 & v149) << v146++;
                }

                else
                {
                  v145 = 0;
                }

                --v144;
                if (v151)
                {
                  v147 |= (v152 & v148) << v146++;
                }

                else
                {
                  v144 = 0;
                }

                v152 *= 2;
                --v146;
                v151 = v144 != 0;
                v150 = v145 != 0;
              }

              while (v144 | v145);
              v153 = v147 << 10;
            }

            v51 = v153 + ((v36 / v64 + v177 / v67 * ((v64 + v155) / v64)) << 14);
          }

          else if (v169)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v168.i8[0];
            v47 = v168.i8[4];
            v49 = v169.i32[0];
            v50 = v169.i32[1];
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
            v51 = v45 << 10;
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
LABEL_81:
              v63 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_81;
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
LABEL_82:
          v68 = (a4 + v63);
          v69 = v176 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          if (v180)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              v73 = __dst;
LABEL_91:
              v76 = &byte_29D2F30E1;
              v77 = 16;
              v78 = v73;
              v75 = v34 + 1;
              do
              {
                v91 = *v76;
                v92 = *(v76 - 1);
                if (v41 <= 2 * v92 || 2 * v91 >= v35)
                {
                  v90 = 0;
                }

                else
                {
                  v79 = (v69 + 2 * a11 * v91 + (v92 << 6));
                  v80 = v79 + 2;
                  v82 = *v79;
                  v83 = v79[1];
                  v81 = (v79 + v26);
                  v84 = *v80;
                  v85 = v80[1];
                  v86 = *v81;
                  v87 = v81[1];
                  v81 += 2;
                  v88 = *v81;
                  v89 = v81[1];
                  *v78 = v82;
                  v78[1] = v83;
                  v78[2] = v84;
                  v78[3] = v85;
                  v78[4] = v86;
                  v78[5] = v87;
                  v78[6] = v88;
                  v78[7] = v89;
                  v78 += 8;
                  v90 = 127;
                }

                *v68++ = v90;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              if (v180)
              {
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            v162 = (a2 + v51);
            v71 = v40;
            v72 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v73 = __dst;
            v38 = v72;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v161;
            v40 = v71;
            v70 = v162;
            v25 = a1;
          }

          else
          {
            v73 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              goto LABEL_91;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v182 = v73;
          v190 = v41;
          v191 = v35;
          v186 = v167;
          v187 = v38 - v36;
          v183 = v68;
          v184 = v69;
          v185 = v26;
          v188 = v166;
          v189 = v40;
          if (v42)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = a1;
          }

          else
          {
            v163 = v73;
            v94 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v193, 256, v73, *v68)];
            v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v194, 256, v94, v68[1]);
            v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v197, 256, v95, v68[2]);
            v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v198, 256, v96, v68[3]);
            v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v195, 256, v97, v68[4]);
            v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v196, 256, v98, v68[5]);
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v199, 256, v99, v68[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 256, v99 + v100, v68[7]);
            v101 = v188;
            if (v188 && v189)
            {
              v102 = 0;
              v103 = v186 << 8;
              v104 = 32 * v187;
              v105 = &v193[v103 + v104];
              v106 = v184;
              v107 = v185;
              v108 = 32 * v189;
              if (v108)
              {
                v109 = (v108 - 1) >> 32 == 0;
              }

              else
              {
                v109 = 0;
              }

              v110 = !v109;
              v112 = v105 < v184 + v185 * (v188 - 1) + v108 && v184 < &__dst[256 * v188 + 768 + 256 * v186 + v108 + v104];
              v113 = v110 | (v185 < 0) | v112;
              v114 = &v193[v103 + 16 + v104];
              v115 = (v184 + 16);
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
                    v105[v119] = *(v106 + v119);
                    ++v119;
                  }

                  while (v108 > v119);
                }

                else
                {
                  do
                  {
                    v120 = *v116;
                    *(v117 - 1) = *(v116 - 1);
                    *v117 = v120;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                }

                ++v102;
                v114 += 256;
                v115 = (v115 + v107);
                v105 += 256;
                v106 += v107;
              }

              while (v102 != v101);
            }

            v121 = v182;
            v122 = v183;
            v123 = v190;
            v124 = &byte_29D2F30E1;
            v125 = 16;
            v126 = v191;
            v25 = a1;
            v73 = v163;
            do
            {
              v139 = *v124;
              v140 = *(v124 - 1);
              if (v123 <= 2 * v140 || 2 * v139 >= v126)
              {
                v138 = 0;
              }

              else
              {
                v127 = &v193[512 * v139 + 64 * v140];
                v129 = *v127;
                v130 = v127[1];
                v128 = v127 + 2;
                v131 = v127 + 16;
                v127 += 18;
                v132 = *v128;
                v133 = v128[1];
                v134 = *v131;
                v135 = v131[1];
                v136 = *v127;
                v137 = v127[1];
                *v121 = v129;
                v121[1] = v130;
                v121[2] = v132;
                v121[3] = v133;
                v121[4] = v134;
                v121[5] = v135;
                v121[6] = v136;
                v121[7] = v137;
                v121 += 8;
                v138 = 127;
              }

              *v122++ = v138;
              v124 += 2;
              v125 -= 2;
            }

            while (v125);
          }

          v75 = v34 + 1;
          if (v180)
          {
LABEL_29:
            memcpy(v70, v73, 0x400uLL);
            v25 = a1;
          }

LABEL_30:
          v20 = v34 == v170 >> 3;
          v34 = v75;
        }

        while (!v20);
        v20 = v16++ == v160;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v165 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v141 = a8;
  v123 = a8 + a10 - 1;
  v142 = a1;
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
  v122 = v123 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v144 = v24;
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
      v135 = 0;
LABEL_32:
      v132 = v27 - 3;
      v126 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v120 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v135 = v32 >= v26;
    goto LABEL_32;
  }

  v135 = 0;
  v120 = 0;
  v126 = 0;
  v132 = 0;
LABEL_33:
  if (v18 <= v122)
  {
    v134 = a7 + a9 - 1;
    v119 = a7 >> 3;
    if (a7 >> 3 <= v134 >> 3)
    {
      v143 = v19 >> 3;
      v128 = v19 & 7;
      v117 = v20 & 3;
      v118 = v20 >> 2;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v124 = v35;
      v133 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v141)
        {
          v37 = v141;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v123 < v36)
        {
          v36 = v123;
        }

        v131 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v117;
        v130 = v39;
        v41 = v39 != 4;
        v42 = v117 + 1;
        if (v18 != v118)
        {
          v42 = 4;
          v40 = v41;
        }

        v129 = v40;
        v43 = v119;
        v44 = v18 & ~(-1 << v126);
        v139 = a3 + (v37 - v141) * a11;
        v140 = v42;
        v138 = v42;
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

          if (v134 < v46)
          {
            v46 = v134;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v143)
          {
            v50 = v128 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v141 && v45 >= a7)
          {
            v52 = v48 != v128;
            if (v43 != v143)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v129;
          }

          if (v135)
          {
            if (v132 | v126)
            {
              v53 = 0;
              v54 = 0;
              v55 = v132 != 0;
              v56 = 1;
              v58 = v126 != 0;
              v57 = v126;
              v59 = v132;
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
                  v54 |= (v43 & ~(-1 << v132) & v56) << v53++;
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
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v132) + (v18 >> v126) * v120);
          }

          else if (v125)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v124.i8[0];
            v64 = v124.i8[4];
            v66 = v125.i32[0];
            v67 = v125.i32[1];
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

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
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
          v82 = v139 + 32 * (v47 - a7);
          v83 = (a2 + v68);
          if (v144)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              v88 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v88, v81, v50, v140);
              goto LABEL_111;
            }

            v127 = (a2 + v68);
            v84 = v51;
            v85 = v50;
            v86 = v44;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v44 = v86;
            v88 = __dst;
            v51 = v84;
            v83 = v127;
            LOBYTE(v50) = v85;
            result = v142;
          }

          else
          {
            v88 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v146 = v88;
          v154 = v50;
          v155 = v140;
          v150 = v131;
          v151 = v47 - v45;
          v147 = v81;
          v148 = v82;
          v149 = a11;
          v152 = v130;
          v153 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v133;
            v89 = v43 + 1;
            if (!v144)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v83, v88, 0x400uLL);
            goto LABEL_46;
          }

          v90 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v88, *v81)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v90, v81[1]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v91, v81[2]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v92, v81[3]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v93, v81[4]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v94, v81[5]);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v95, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v95 + v96, v81[7]);
          v97 = v152;
          a7 = v133;
          v89 = v43 + 1;
          if (v152 && v153)
          {
            v98 = 0;
            v99 = v150 << 8;
            v100 = 32 * v151;
            v101 = v157 + v99 + v100;
            v102 = v148;
            v103 = v149;
            v104 = 32 * v153;
            if (v104)
            {
              v105 = (v104 - 1) >> 32 == 0;
            }

            else
            {
              v105 = 0;
            }

            v106 = !v105;
            v108 = v101 < v148 + v149 * (v152 - 1) + v104 && v148 < &__dst[256 * v152 + 768 + 256 * v150 + v104 + v100];
            v109 = v106 | (v149 < 0) | v108;
            v110 = &v157[1] + v99 + v100;
            v111 = (v148 + 16);
            do
            {
              v112 = v111;
              v113 = v110;
              v114 = v104;
              if (v109)
              {
                v115 = 0;
                do
                {
                  v101[v115] = *(v102 + v115);
                  ++v115;
                }

                while (v104 > v115);
              }

              else
              {
                do
                {
                  v116 = *v112;
                  *(v113 - 1) = *(v112 - 1);
                  *v113 = v116;
                  v113 += 2;
                  v112 += 2;
                  v114 -= 32;
                }

                while (v114);
              }

              ++v98;
              v110 += 256;
              v111 = (v111 + v103);
              v101 += 256;
              v102 += v103;
            }

            while (v98 != v97);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v157, 256, v146, v147, v154, v155);
          if (v144)
          {
            goto LABEL_136;
          }

LABEL_46:
          v21 = v43 == v134 >> 3;
          v43 = v89;
          result = v142;
        }

        while (!v21);
        v21 = v18++ == v122;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v205 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v163 = a8 + a10 - 1;
  v182 = a1;
  if (*(a1 + 168))
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
  v162 = v163 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v184 = v23;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v18);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v175 = 0;
LABEL_32:
      v173 = v26 - 3;
      v167 = v25 - 2;
      v32 = -1 << *(*(a1 + 208) + 48);
      v160 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v175 = v31 >= v25;
    goto LABEL_32;
  }

  v175 = 0;
  v160 = 0;
  v167 = 0;
  v173 = 0;
LABEL_33:
  if (v17 <= v162)
  {
    v174 = a7 + a9 - 1;
    if (a7 >> 3 <= v174 >> 3)
    {
      v33 = a11;
      v183 = v18 >> 3;
      v169 = v18 & 7;
      v158 = v19 & 3;
      v159 = v19 >> 2;
      v157 = ~(-1 << v167);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v166 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v165 = v35;
      v36 = 2 * a11;
      do
      {
        v37 = (4 * v17) | 3;
        if (4 * v17 <= v181)
        {
          v38 = v181;
        }

        else
        {
          v38 = 4 * v17;
        }

        if (v163 < v37)
        {
          v37 = v163;
        }

        v172 = v38 - 4 * v17;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v158;
        v171 = v40;
        v42 = a7 >> 3;
        if (v17 == v159)
        {
          v43 = v158 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v17 != v159)
        {
          v41 = v40 != 4;
        }

        v170 = v41;
        v44 = v17 & v157;
        v179 = a3 + (v38 - v181) * v33;
        v178 = v43;
        v45 = a7;
        v164 = v43;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v174 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v183)
          {
            v51 = v169 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= v181 && v46 >= v45)
          {
            v53 = v49 != v169;
            if (v42 != v183)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v170;
          }

          if (v175)
          {
            if (v173 | v167)
            {
              v54 = 0;
              v55 = 0;
              v56 = v173 != 0;
              v57 = 1;
              v59 = v167 != 0;
              v58 = v167;
              v60 = v173;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v44 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v42 & ~(-1 << v173) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v60 != 0;
                v59 = v58 != 0;
              }

              while (v60 | v58);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v42 >> v173) + (v17 >> v167) * v160);
          }

          else if (v166)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v165.i8[0];
            v65 = v165.i8[4];
            v67 = v166.i32[0];
            v68 = v166.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
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
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(result + 128) >> (*(result + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 7;
          if (v71 < 0x10)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 3) - 1)));
          }

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 3;
          if (v74 < 8)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
          }

          if (v75 | v72)
          {
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
                v77 |= (v80 & v42) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v17) << v76++;
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
          }

          else
          {
            v81 = 0;
          }

          v82 = (a4 + v81);
          v83 = v179 + 32 * (v48 - v45);
          v84 = (a2 + v69);
          if (v184)
          {
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              v88 = __dst;
LABEL_116:
              v91 = &byte_29D2F30E1;
              v92 = 16;
              v93 = v88;
              do
              {
                v106 = *v91;
                v107 = *(v91 - 1);
                if (v51 <= 2 * v107 || 2 * v106 >= v43)
                {
                  v105 = 0;
                }

                else
                {
                  v94 = (v83 + v36 * v106 + (v107 << 6));
                  v95 = v94 + 2;
                  v97 = *v94;
                  v98 = v94[1];
                  v96 = (v94 + v33);
                  v99 = *v95;
                  v100 = v95[1];
                  v101 = *v96;
                  v102 = v96[1];
                  v96 += 2;
                  v103 = *v96;
                  v104 = v96[1];
                  *v93 = v97;
                  v93[1] = v98;
                  v93[2] = v99;
                  v93[3] = v100;
                  v93[4] = v101;
                  v93[5] = v102;
                  v93[6] = v103;
                  v93[7] = v104;
                  v93 += 8;
                  v105 = 127;
                }

                *v82++ = v105;
                v91 += 2;
                v92 -= 2;
              }

              while (v92);
LABEL_112:
              v45 = a7;
              v90 = v42 + 1;
              goto LABEL_113;
            }

            v85 = v50;
            v86 = v52;
            v87 = v48;
            memcpy(__dst, v84, sizeof(__dst));
            v48 = v87;
            v52 = v86;
            v43 = v164;
            v44 = v17 & v157;
            v50 = v85;
            v36 = 2 * a11;
            v88 = __dst;
            v33 = a11;
            result = v182;
          }

          else
          {
            v88 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              goto LABEL_116;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v88;
          v194 = v51;
          v195 = v43;
          v190 = v172;
          v191 = v48 - v46;
          v187 = v82;
          v188 = v83;
          v189 = v33;
          v192 = v171;
          v193 = v50;
          if (v52)
          {
            v89 = v88;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v88 = v89;
            v33 = a11;
            result = v182;
            goto LABEL_112;
          }

          v168 = v88;
          v109 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 256, v88, *v82)];
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 256, v109, v82[1]);
          v111 = v110 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 256, v110, v82[2]);
          v112 = v111 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 256, v111, v82[3]);
          v113 = v112 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 256, v112, v82[4]);
          v114 = v113 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 256, v113, v82[5]);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 256, v114, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v204, 256, v114 + v115, v82[7]);
          v116 = v192;
          if (v192 && v193)
          {
            v117 = 0;
            v118 = v190 << 8;
            v119 = 32 * v191;
            v120 = v197 + v118 + v119;
            v121 = v188;
            v122 = v189;
            v123 = 32 * v193;
            if (v123)
            {
              v124 = (v123 - 1) >> 32 == 0;
            }

            else
            {
              v124 = 0;
            }

            v125 = !v124;
            v127 = v120 < v188 + v189 * (v192 - 1) + v123 && v188 < &__dst[256 * v192 + 768 + 256 * v190 + v123 + v119];
            v128 = v125 | (v189 < 0) | v127;
            v129 = &v197[1] + v118 + v119;
            v130 = (v188 + 16);
            do
            {
              v131 = v130;
              v132 = v129;
              v133 = v123;
              if (v128)
              {
                v134 = 0;
                do
                {
                  v120[v134] = *(v121 + v134);
                  ++v134;
                }

                while (v123 > v134);
              }

              else
              {
                do
                {
                  v135 = *v131;
                  *(v132 - 1) = *(v131 - 1);
                  *v132 = v135;
                  v132 += 2;
                  v131 += 2;
                  v133 -= 32;
                }

                while (v133);
              }

              ++v117;
              v129 += 256;
              v130 = (v130 + v122);
              v120 += 256;
              v121 += v122;
            }

            while (v117 != v116);
          }

          v136 = v186;
          v137 = v187;
          v138 = v194;
          v139 = &byte_29D2F30E1;
          v140 = 16;
          v141 = v195;
          v45 = a7;
          v33 = a11;
          result = v182;
          v90 = v42 + 1;
          v88 = v168;
          do
          {
            v154 = *v139;
            v155 = *(v139 - 1);
            if (v138 <= 2 * v155 || 2 * v154 >= v141)
            {
              v153 = 0;
            }

            else
            {
              v142 = &v197[32 * v154 + 4 * v155];
              v144 = *v142;
              v145 = v142[1];
              v143 = v142 + 2;
              v146 = v142 + 16;
              v142 += 18;
              v147 = *v143;
              v148 = v143[1];
              v149 = *v146;
              v150 = v146[1];
              v151 = *v142;
              v152 = v142[1];
              *v136 = v144;
              v136[1] = v145;
              v136[2] = v147;
              v136[3] = v148;
              v136[4] = v149;
              v136[5] = v150;
              v136[6] = v151;
              v136[7] = v152;
              v136 += 8;
              v153 = 127;
            }

            *v137++ = v153;
            v139 += 2;
            v140 -= 2;
          }

          while (v140);
LABEL_113:
          if (v184)
          {
            memcpy(v84, v88, 0x400uLL);
            v33 = a11;
            result = v182;
          }

          v20 = v42 == v174 >> 3;
          v42 = v90;
        }

        while (!v20);
        v20 = v17++ == v162;
      }

      while (!v20);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v137 = a8;
  v17 = a8 >> 2;
  v119 = a8 + a10 - 1;
  v121 = v119 >> 2;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  v138 = v16;
  if (*(v16 + 168))
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
  v140 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v121)
  {
    v129 = a7 + a9 - 1;
    v118 = a7 >> 3;
    if (a7 >> 3 <= v129 >> 3)
    {
      v139 = (a5 - 1) >> 3;
      v115 = a5 - 1;
      v122 = (a5 - 1) & 7;
      v116 = (a6 - 1) & 3;
      v117 = (a6 - 1) >> 2;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v127 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v126 = v26;
      v114 = 8 * v19 * v18;
      v128 = a7;
      do
      {
        v27 = (4 * v17) | 3;
        if (4 * v17 <= v137)
        {
          v28 = v137;
        }

        else
        {
          v28 = 4 * v17;
        }

        if (v119 < v27)
        {
          v27 = v119;
        }

        v136 = 4 * v17;
        v125 = v28 - 4 * v17;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v116;
        v124 = v30;
        v32 = v30 != 4;
        v33 = v118;
        v34 = v116 + 1;
        if (v17 != v117)
        {
          v34 = 4;
          v31 = v32;
        }

        v123 = v31;
        v134 = a3 + (v28 - v137) * a11;
        v135 = v34;
        v133 = v34;
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

          if (v129 < v36)
          {
            v36 = v129;
          }

          v38 = v36 - v37;
          v39 = v38 + 1;
          if (v33 == v139)
          {
            v40 = v122 + 1;
          }

          else
          {
            v40 = 8;
          }

          v41 = 1;
          if (v136 >= v137 && v35 >= a7)
          {
            v42 = v38 != v122;
            if (v33 != v139)
            {
              v42 = v39 != 8;
            }

            v41 = v42 || v123;
          }

          if (isLevelTiled)
          {
            v63 = 0;
            v64 = v114 >> (*(v16 + 57) != 0);
            v65 = 1;
            if (v64 <= 63)
            {
              if (v64 > 15)
              {
                if (v64 == 16)
                {
                  v65 = 0;
                  v66 = 64;
                  v63 = 128;
                }

                else
                {
                  v66 = 0;
                  if (v64 == 32)
                  {
                    v65 = 0;
                    v63 = 64;
                    v66 = 64;
                  }
                }
              }

              else if (v64 == 4)
              {
                v65 = 0;
                v66 = 128;
                v63 = 256;
              }

              else
              {
                v66 = 0;
                if (v64 == 8)
                {
                  v65 = 0;
                  v63 = 128;
                  v66 = 128;
                }
              }
            }

            else if (v64 <= 255)
            {
              if (v64 == 64)
              {
                v65 = 0;
                v66 = 32;
                v63 = 64;
              }

              else
              {
                v66 = 0;
                if (v64 == 128)
                {
                  v65 = 0;
                  v63 = 32;
                  v66 = 32;
                }
              }
            }

            else if (v64 == 256)
            {
              v65 = 0;
              v66 = 16;
              v63 = 32;
            }

            else if (v64 == 512)
            {
              v65 = 0;
              v63 = 16;
              v66 = 16;
            }

            else
            {
              v66 = 0;
              if (v64 == 1024)
              {
                v65 = 0;
                v66 = 8;
                v63 = 16;
              }
            }

            v102 = (v63 >> 3) - 1;
            v103 = (v66 >> 2) - 1;
            if ((v65 & 1) != 0 || (v104 = 32 - __clz(~(-1 << -__clz(v102))), v105 = 32 - __clz(~(-1 << -__clz(v103))), !(v105 | v104)))
            {
              v113 = 0;
            }

            else
            {
              v106 = 0;
              v107 = 0;
              v108 = v33 & v102;
              v109 = v17 & v103;
              v110 = v105 != 0;
              v111 = v104 != 0;
              v112 = 1;
              do
              {
                --v105;
                if (v110)
                {
                  v107 |= (v112 & v109) << v106++;
                }

                else
                {
                  v105 = 0;
                }

                --v104;
                if (v111)
                {
                  v107 |= (v112 & v108) << v106++;
                }

                else
                {
                  v104 = 0;
                }

                v112 *= 2;
                --v106;
                v111 = v104 != 0;
                v110 = v105 != 0;
              }

              while (v104 | v105);
              v113 = v107 << 10;
              v16 = v138;
            }

            v50 = v113 + ((v35 / v63 + v136 / v66 * ((v63 + v115) / v63)) << 14);
          }

          else if (v127)
          {
            v43 = 0;
            v44 = 0;
            v45 = 1;
            v47 = v126.i8[0];
            v46 = v126.i8[4];
            v48 = v127.i32[0];
            v49 = v127.i32[1];
            do
            {
              --v48;
              if (v47)
              {
                v44 |= (v45 & v17) << v43++;
              }

              else
              {
                v48 = 0;
              }

              --v49;
              if (v46)
              {
                v44 |= (v45 & v33) << v43++;
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

          v51 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v54 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 3;
          if (v55 < 8)
          {
            v56 = 0;
            if (!v53)
            {
LABEL_77:
              v62 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 2) - 1)));
            if (!(v56 | v53))
            {
              goto LABEL_77;
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
              v58 |= (v61 & v17) << v57++;
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
LABEL_78:
          v67 = (a4 + v62);
          v68 = v134 + 32 * (v37 - a7);
          v69 = (a2 + v50);
          if (v140)
          {
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              v74 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, a11, v74, v67, v40, v135);
              goto LABEL_86;
            }

            v70 = v40;
            v71 = v39;
            v72 = (a2 + v50);
            v73 = v41;
            memcpy(__dst, (a2 + v50), sizeof(__dst));
            v35 = 8 * v33;
            v74 = __dst;
            v41 = v73;
            v69 = v72;
            v39 = v71;
            LOBYTE(v40) = v70;
            v16 = v138;
          }

          else
          {
            v74 = (a2 + v50);
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v16;
          v142 = v74;
          v150 = v40;
          v151 = v135;
          v146 = v125;
          v147 = v37 - v35;
          v143 = v67;
          v144 = v68;
          v145 = a11;
          v148 = v124;
          v149 = v39;
          if (v41)
          {
            dispatch_sync(*(*(v16 + 8) + 16552), block);
LABEL_86:
            a7 = v128;
            if (!v140)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v69, v74, 0x400uLL);
            goto LABEL_26;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v74, *v67)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v75, v67[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v76, v67[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v77, v67[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v78, v67[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v79, v67[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v80, v67[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v80 + v81, v67[7]);
          v82 = v148;
          a7 = v128;
          if (v148 && v149)
          {
            v83 = 0;
            v84 = v146 << 8;
            v85 = 32 * v147;
            v86 = v153 + v84 + v85;
            v87 = v144;
            v88 = v145;
            v89 = 32 * v149;
            if (v89)
            {
              v90 = (v89 - 1) >> 32 == 0;
            }

            else
            {
              v90 = 0;
            }

            v91 = !v90;
            v93 = v86 < v144 + v145 * (v148 - 1) + v89 && v144 < &__dst[256 * v148 + 768 + 256 * v146 + v89 + v85];
            v94 = v91 | (v145 < 0) | v93;
            v95 = &v153[1] + v84 + v85;
            v96 = (v144 + 16);
            do
            {
              v97 = v96;
              v98 = v95;
              v99 = v89;
              if (v94)
              {
                v100 = 0;
                do
                {
                  v86[v100] = *(v87 + v100);
                  ++v100;
                }

                while (v89 > v100);
              }

              else
              {
                do
                {
                  v101 = *v97;
                  *(v98 - 1) = *(v97 - 1);
                  *v98 = v101;
                  v98 += 2;
                  v97 += 2;
                  v99 -= 32;
                }

                while (v99);
              }

              ++v83;
              v95 += 256;
              v96 = (v96 + v88);
              v86 += 256;
              v87 += v88;
            }

            while (v83 != v82);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v153, 256, v142, v143, v150, v151);
          if (v140)
          {
            goto LABEL_111;
          }

LABEL_26:
          v21 = v33++ == v129 >> 3;
          v16 = v138;
        }

        while (!v21);
        v21 = v17++ == v121;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v201 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v178 = a8;
  v16 = a8 >> 2;
  v158 = a8 + a10 - 1;
  v160 = v158 >> 2;
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
  v180 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v171 = isLevelTiled;
  if (v16 <= v160)
  {
    v170 = a7 + a9 - 1;
    if (a7 >> 3 <= v170 >> 3)
    {
      v26 = a11;
      v179 = (a5 - 1) >> 3;
      v155 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v156 = (a6 - 1) & 3;
      v157 = (a6 - 1) >> 2;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v169 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v168 = v28;
      v154 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v178)
        {
          v30 = v178;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v158 < v29)
        {
          v29 = v158;
        }

        v177 = 4 * v16;
        v167 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v156;
        v166 = v32;
        v34 = a7 >> 3;
        if (v16 == v157)
        {
          v35 = v156 + 1;
        }

        else
        {
          v35 = 4;
        }

        if (v16 != v157)
        {
          v33 = v32 != 4;
        }

        v165 = v33;
        v176 = a3 + (v30 - v178) * v26;
        v175 = v35;
        v161 = v35;
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

          if (v170 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v179)
          {
            v41 = v164 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v177 >= v178 && v36 >= a7)
          {
            v43 = v39 != v164;
            if (v34 != v179)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v165;
          }

          if (v171)
          {
            v64 = 0;
            v65 = v154 >> (*(v25 + 57) != 0);
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

            v142 = (v64 >> 3) - 1;
            v143 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v144 = 32 - __clz(~(-1 << -__clz(v142))), v145 = 32 - __clz(~(-1 << -__clz(v143))), !(v145 | v144)))
            {
              v153 = 0;
            }

            else
            {
              v146 = 0;
              v147 = 0;
              v148 = v34 & v142;
              v149 = v16 & v143;
              v150 = v145 != 0;
              v151 = v144 != 0;
              v152 = 1;
              do
              {
                --v145;
                if (v150)
                {
                  v147 |= (v152 & v149) << v146++;
                }

                else
                {
                  v145 = 0;
                }

                --v144;
                if (v151)
                {
                  v147 |= (v152 & v148) << v146++;
                }

                else
                {
                  v144 = 0;
                }

                v152 *= 2;
                --v146;
                v151 = v144 != 0;
                v150 = v145 != 0;
              }

              while (v144 | v145);
              v153 = v147 << 10;
            }

            v51 = v153 + ((v36 / v64 + v177 / v67 * ((v64 + v155) / v64)) << 14);
          }

          else if (v169)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v168.i8[0];
            v47 = v168.i8[4];
            v49 = v169.i32[0];
            v50 = v169.i32[1];
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
            v51 = v45 << 10;
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
LABEL_81:
              v63 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_81;
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
LABEL_82:
          v68 = (a4 + v63);
          v69 = v176 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          if (v180)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              v73 = __dst;
LABEL_91:
              v76 = &byte_29D2F30E1;
              v77 = 16;
              v78 = v73;
              v75 = v34 + 1;
              do
              {
                v91 = *v76;
                v92 = *(v76 - 1);
                if (v41 <= 2 * v92 || 2 * v91 >= v35)
                {
                  v90 = 0;
                }

                else
                {
                  v79 = (v69 + 2 * a11 * v91 + (v92 << 6));
                  v80 = v79 + 2;
                  v82 = *v79;
                  v83 = v79[1];
                  v81 = (v79 + v26);
                  v84 = *v80;
                  v85 = v80[1];
                  v86 = *v81;
                  v87 = v81[1];
                  v81 += 2;
                  v88 = *v81;
                  v89 = v81[1];
                  *v78 = v82;
                  v78[1] = v83;
                  v78[2] = v84;
                  v78[3] = v85;
                  v78[4] = v86;
                  v78[5] = v87;
                  v78[6] = v88;
                  v78[7] = v89;
                  v78 += 8;
                  v90 = 127;
                }

                *v68++ = v90;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              if (v180)
              {
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            v162 = (a2 + v51);
            v71 = v40;
            v72 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v73 = __dst;
            v38 = v72;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v161;
            v40 = v71;
            v70 = v162;
            v25 = a1;
          }

          else
          {
            v73 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              goto LABEL_91;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v182 = v73;
          v190 = v41;
          v191 = v35;
          v186 = v167;
          v187 = v38 - v36;
          v183 = v68;
          v184 = v69;
          v185 = v26;
          v188 = v166;
          v189 = v40;
          if (v42)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = a1;
          }

          else
          {
            v163 = v73;
            v94 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v193, 256, v73, *v68)];
            v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v194, 256, v94, v68[1]);
            v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 256, v95, v68[2]);
            v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 256, v96, v68[3]);
            v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 256, v97, v68[4]);
            v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 256, v98, v68[5]);
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 256, v99, v68[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 256, v99 + v100, v68[7]);
            v101 = v188;
            if (v188 && v189)
            {
              v102 = 0;
              v103 = v186 << 8;
              v104 = 32 * v187;
              v105 = v193 + v103 + v104;
              v106 = v184;
              v107 = v185;
              v108 = 32 * v189;
              if (v108)
              {
                v109 = (v108 - 1) >> 32 == 0;
              }

              else
              {
                v109 = 0;
              }

              v110 = !v109;
              v112 = v105 < v184 + v185 * (v188 - 1) + v108 && v184 < &__dst[256 * v188 + 768 + 256 * v186 + v108 + v104];
              v113 = v110 | (v185 < 0) | v112;
              v114 = &v193[1] + v103 + v104;
              v115 = (v184 + 16);
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
                    v105[v119] = *(v106 + v119);
                    ++v119;
                  }

                  while (v108 > v119);
                }

                else
                {
                  do
                  {
                    v120 = *v116;
                    *(v117 - 1) = *(v116 - 1);
                    *v117 = v120;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                }

                ++v102;
                v114 += 256;
                v115 = (v115 + v107);
                v105 += 256;
                v106 += v107;
              }

              while (v102 != v101);
            }

            v121 = v182;
            v122 = v183;
            v123 = v190;
            v124 = &byte_29D2F30E1;
            v125 = 16;
            v126 = v191;
            v25 = a1;
            v73 = v163;
            do
            {
              v139 = *v124;
              v140 = *(v124 - 1);
              if (v123 <= 2 * v140 || 2 * v139 >= v126)
              {
                v138 = 0;
              }

              else
              {
                v127 = &v193[32 * v139 + 4 * v140];
                v129 = *v127;
                v130 = v127[1];
                v128 = v127 + 2;
                v131 = v127 + 16;
                v127 += 18;
                v132 = *v128;
                v133 = v128[1];
                v134 = *v131;
                v135 = v131[1];
                v136 = *v127;
                v137 = v127[1];
                *v121 = v129;
                v121[1] = v130;
                v121[2] = v132;
                v121[3] = v133;
                v121[4] = v134;
                v121[5] = v135;
                v121[6] = v136;
                v121[7] = v137;
                v121 += 8;
                v138 = 127;
              }

              *v122++ = v138;
              v124 += 2;
              v125 -= 2;
            }

            while (v125);
          }

          v75 = v34 + 1;
          if (v180)
          {
LABEL_29:
            memcpy(v70, v73, 0x400uLL);
            v25 = a1;
          }

LABEL_30:
          v20 = v34 == v170 >> 3;
          v34 = v75;
        }

        while (!v20);
        v20 = v16++ == v160;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v147 = v21;
  v148 = v22;
  v131 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v133 = v14 + a10 - 1;
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
  v132 = v133 >> 2;
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
      v142 = v35 - 2;
      v136 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v130 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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
  v130 = 0;
  v136 = 0;
  v142 = 0;
LABEL_33:
  if (v27 <= v132)
  {
    v145 = v16 + a9 - 1;
    v129 = v16 >> 2;
    if (v16 >> 2 <= v145 >> 2)
    {
      v153 = v28 >> 2;
      v137 = v28 & 3;
      v143 = (v28 & 3) + 1;
      v127 = v29 & 3;
      v128 = v29 >> 2;
      v126 = (v29 & 3) + 1;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x300000003);
      v43 = vcgt_u32(v42, 0x700000007);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 2uLL))))))), v43);
      v134 = v43;
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

        if (v133 < v44)
        {
          v44 = v133;
        }

        v141 = v45 - 4 * v27;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v127;
        v140 = v47;
        v49 = v47 != 4;
        v50 = v126;
        if (v27 != v128)
        {
          v50 = 4;
          v48 = v49;
        }

        v138 = v48;
        v139 = v50;
        v51 = v129;
        v150 = v131 + (v45 - v151) * a11;
        v149 = v50;
        do
        {
          v52 = 4 * v51;
          v53 = 4 * (v51 + 1) - 1;
          if (4 * v51 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 4 * v51;
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
            v57 = 4;
          }

          v58 = 1;
          if (4 * v27 >= v151 && v52 >= v16)
          {
            v59 = v55 != v137;
            if (v51 != v153)
            {
              v59 = v56 != 4;
            }

            v58 = v59 || v138;
          }

          if (v146)
          {
            if (v142 | v136)
            {
              v60 = 0;
              v61 = 0;
              v62 = v136 != 0;
              v63 = 1;
              v65 = v142 != 0;
              v64 = v136;
              v66 = v142;
              do
              {
                --v66;
                if (v65)
                {
                  v61 |= (v51 & ~(-1 << v142) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                --v64;
                if (v62)
                {
                  v61 |= (v27 & ~(-1 << v136) & v63) << v60++;
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
              v67 = v61 << 11;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v24 + 336) * ((v51 >> v142) + (v27 >> v136) * v130);
          }

          else if (v135)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v134.i8[0];
            v72 = v134.i8[4];
            v74 = v135.i32[0];
            v73 = v135.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v51) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v27) << v68++;
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

          v77 = v76 + 3;
          if (v77 < 8)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 2) - 1)));
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
          v89 = (v150 + ((v54 - v16) << 7));
          v90 = (v147 + v75);
          v154 = (v147 + v75);
          if (v155)
          {
            if (!(v58 & 1 | (v57 < 4u) | (v149 < 4)))
            {
              v90 = __dst;
LABEL_111:
              v92 = &v90[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v90, v88, v89, a11)];
              v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v92, v88 + 1, v89 + 16, a11);
              v94 = (v89 + 2 * a11);
              v95 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v93, v88 + 2, v94, a11);
              v96 = v88 + 3;
              v97 = v94 + 16;
              v98 = a11;
              goto LABEL_112;
            }

            v91 = v58;
            memcpy(__dst, (v147 + v75), sizeof(__dst));
            v58 = v91;
            v90 = __dst;
          }

          else if (!(v58 & 1 | (v57 < 4u) | (v149 < 4)))
          {
            goto LABEL_111;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v99 = &v90[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v90, *v88)];
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v99, v88[1]);
          v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v100, v88[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v100 + v101, v88[3]);
          v102 = v163;
          if (v163 && v164)
          {
            v103 = 0;
            v104 = v161 << 9;
            v105 = v162 << 7;
            v106 = &v168[0].i8[v104 + v105];
            v107 = v159;
            v108 = v160;
            v109 = v164 << 7;
            if (v109)
            {
              v110 = (v109 - 1) >> 32 == 0;
            }

            else
            {
              v110 = 0;
            }

            v111 = !v110;
            v113 = v106 < &v159->i8[v160 * (v163 - 1) + v109] && v159 < &__dst[512 * v163 + 1536 + 512 * v161 + v109 + v105];
            v114 = v111 | (v160 < 0) | v113;
            v115 = &v168[1].i8[v104 + v105];
            v116 = v159 + 1;
            do
            {
              v117 = v116;
              v118 = v115;
              v119 = v109;
              if (v114)
              {
                v120 = 0;
                do
                {
                  v106[v120] = v107->i8[v120];
                  ++v120;
                }

                while (v109 > v120);
              }

              else
              {
                do
                {
                  v121 = *v117;
                  *(v118 - 1) = v117[-1];
                  *v118 = v121;
                  v118 += 32;
                  v117 += 2;
                  v119 -= 32;
                }

                while (v119);
              }

              ++v103;
              v115 += 512;
              v116 = (v116 + v108);
              v106 += 512;
              v107 = (v107 + v108);
            }

            while (v103 != v102);
          }

          v123 = v157;
          v122 = v158;
          v124 = v165;
          v125 = v166;
          if (v165 && v166)
          {
            v123 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v157, v158, v168, 512);
            if (v124 < 3)
            {
              goto LABEL_145;
            }
          }

          else
          {
            *v158 = 0;
            if (v124 < 3)
            {
              goto LABEL_145;
            }
          }

          if (v125)
          {
            v123 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v123, v122 + 1, v169, 512);
            goto LABEL_146;
          }

LABEL_145:
          v122[1] = 0;
          if (!v124)
          {
            goto LABEL_149;
          }

LABEL_146:
          if (v125 < 3)
          {
LABEL_149:
            v122[2] = 0;
            if (v124 < 3)
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }

          v123 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v123, v122 + 2, v170, 512);
          if (v124 < 3)
          {
            goto LABEL_152;
          }

LABEL_150:
          if (v125 < 3)
          {
LABEL_152:
            v122[3] = 0;
            goto LABEL_113;
          }

          v96 = v122 + 3;
          v97 = v171;
          v95 = v123;
          v98 = 512;
LABEL_112:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v95, v96, v97, v98);
LABEL_113:
          v24 = v152;
LABEL_114:
          result = v154;
          v16 = v144;
          if (v155)
          {
            result = memcpy(v154, v90, 0x800uLL);
          }

          v30 = v51++ == v145 >> 2;
        }

        while (!v30);
        v30 = v27++ == v132;
      }

      while (!v30);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v409 = v21;
  v357 = v22;
  v408 = v23;
  v24 = v12;
  v434 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v413 = v14;
  v359 = v14 + a10 - 1;
  v414 = v24;
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
  v358 = v359 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v416 = v32;
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
      v407 = 0;
LABEL_32:
      v371 = v35 - 2;
      v363 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v356 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v407 = v40 >= v34;
    goto LABEL_32;
  }

  v407 = 0;
  v356 = 0;
  v363 = 0;
  v371 = 0;
LABEL_33:
  if (v26 <= v358)
  {
    v406 = v16 + a9 - 1;
    v355 = v16 >> 2;
    if (v16 >> 2 <= v406 >> 2)
    {
      v415 = v27 >> 2;
      v365 = v27 & 3;
      v404 = (v27 & 3) + 1;
      v353 = v28 & 3;
      v354 = v28 >> 2;
      v352 = (v28 & 3) + 1;
      v364 = 2 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x300000003);
      v43 = vcgt_u32(v42, 0x700000007);
      v362 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 2uLL))))))), v43);
      v361 = v43;
      v405 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v413)
        {
          v45 = v413;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v359 < v44)
        {
          v44 = v359;
        }

        v412 = 4 * v26;
        v370 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v353;
        v369 = v47;
        v49 = v47 != 4;
        v50 = v352;
        if (v26 != v354)
        {
          v50 = 4;
          v48 = v49;
        }

        v367 = v48;
        v51 = v355;
        v366 = (v26 >> v363) * v356;
        v52 = v26 & ~(-1 << v363);
        v411 = v357 + (v45 - v413) * a11;
        v368 = v50;
        v410 = v50;
        v360 = v26;
        do
        {
          v53 = 4 * v51;
          v54 = 4 * (v51 + 1) - 1;
          if (4 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 4 * v51;
          }

          if (v406 < v54)
          {
            v54 = v406;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v415)
          {
            v58 = v404;
          }

          else
          {
            v58 = 4;
          }

          v59 = 1;
          if (v412 >= v413 && v53 >= v16)
          {
            v60 = v56 != v365;
            if (v51 != v415)
            {
              v60 = v57 != 4;
            }

            v59 = v60 || v367;
          }

          if (v407)
          {
            if (v371 | v363)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v371 != 0;
              v65 = v363 != 0;
              v66 = v371;
              v67 = v363;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v371) & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v52 & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v371) + v366);
          }

          else if (v362)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v361.i8[4];
            v73 = v361.i8[0];
            v74 = v362.i32[1];
            v75 = v362.i32[0];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
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

          v78 = v77 + 3;
          if (v78 < 8)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 2) - 1)));
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

          v89 = (v409 + v88);
          v90 = (v411 + ((v55 - v16) << 7));
          v91 = (v408 + v76);
          if (v416)
          {
            if (!(v59 & 1 | (v58 < 4u) | (v410 < 4)))
            {
              v97 = __dst;
LABEL_111:
              v372 = v90[4];
              v380 = v90[5];
              v388 = v90[6];
              v396 = v90[7];
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
              v97[4] = v372;
              v97[5] = v380;
              v97[6] = v388;
              v97[7] = v396;
              v97[8] = v98;
              v97[9] = v99;
              v97[10] = v100;
              v97[11] = v101;
              v97[12] = v102;
              v97[13] = v103;
              v97[14] = v104;
              v97[15] = v105;
              v97[16] = v106;
              v97[17] = v107;
              v97[18] = v108;
              v97[19] = v109;
              v97[20] = v110;
              v97[21] = v111;
              v97[22] = v112;
              v97[23] = v113;
              v97[24] = v114;
              v97[25] = v115;
              v97[26] = v116;
              v97[27] = v117;
              v97[28] = v118;
              v97[29] = v119;
              v97[30] = v120;
              v97[31] = v121;
              *v89 = -1;
              v125 = (v90 + a11 + 256);
              v373 = v90[20];
              v381 = v90[21];
              v389 = v90[22];
              v397 = v90[23];
              v126 = v90[24];
              v127 = v90[25];
              v128 = v90[26];
              v129 = v90[27];
              v130 = v90[28];
              v131 = v90[29];
              v132 = v90[30];
              v133 = v90[31];
              v134 = *v125;
              v135 = v125[1];
              v136 = v125[2];
              v137 = v125[3];
              v138 = v125[4];
              v139 = v125[5];
              v140 = v125[6];
              v141 = v125[7];
              v142 = v125[8];
              v143 = v125[9];
              v144 = v125[10];
              v145 = v125[11];
              v125 += 12;
              v146 = *v125;
              v147 = v125[1];
              v148 = v125[2];
              v149 = v125[3];
              v150 = v90[17];
              v151 = v90[18];
              v152 = v90[19];
              v97[32] = v90[16];
              v97[33] = v150;
              v97[34] = v151;
              v97[35] = v152;
              v97[36] = v373;
              v97[37] = v381;
              v97[38] = v389;
              v97[39] = v397;
              v97[40] = v126;
              v97[41] = v127;
              v97[42] = v128;
              v97[43] = v129;
              v97[44] = v130;
              v97[45] = v131;
              v97[46] = v132;
              v97[47] = v133;
              v97[48] = v134;
              v97[49] = v135;
              v97[50] = v136;
              v97[51] = v137;
              v97[52] = v138;
              v97[53] = v139;
              v97[54] = v140;
              v97[55] = v141;
              v97[56] = v142;
              v97[57] = v143;
              v97[58] = v144;
              v97[59] = v145;
              v97[60] = v146;
              v97[61] = v147;
              v97[62] = v148;
              v97[63] = v149;
              v89[1] = -1;
              v374 = *(v90 + v364 + 64);
              v382 = *(v90 + v364 + 80);
              v390 = *(v90 + v364 + 96);
              v398 = *(v90 + v364 + 112);
              v153 = *(v90 + v364 + 128);
              v154 = *(v90 + v364 + 144);
              v155 = *(v90 + v364 + 160);
              v156 = *(v90 + v364 + 176);
              v157 = *(v90 + v364 + 192);
              v158 = *(v90 + v364 + 208);
              v159 = *(v90 + v364 + 224);
              v160 = *(v90 + v364 + 240);
              v161 = *(v90 + v364 + a11);
              v162 = *(v90 + v364 + a11 + 16);
              v163 = *(v90 + v364 + a11 + 32);
              v164 = *(v90 + v364 + a11 + 48);
              v165 = *(v90 + v364 + a11 + 64);
              v166 = *(v90 + v364 + a11 + 80);
              v167 = *(v90 + v364 + a11 + 96);
              v168 = *(v90 + v364 + a11 + 112);
              v169 = *(v90 + v364 + a11 + 128);
              v170 = *(v90 + v364 + a11 + 144);
              v171 = *(v90 + v364 + a11 + 160);
              v172 = *(v90 + v364 + a11 + 176);
              v173 = *(v90 + v364 + a11 + 192);
              v174 = *(v90 + v364 + a11 + 208);
              v175 = *(v90 + v364 + a11 + 224);
              v176 = *(v90 + v364 + a11 + 240);
              v177 = *(v90 + v364 + 16);
              v178 = *(v90 + v364 + 32);
              v179 = *(v90 + v364 + 48);
              v97[64] = *(v90 + 2 * a11);
              v97[65] = v177;
              v97[66] = v178;
              v97[67] = v179;
              v97[68] = v374;
              v97[69] = v382;
              v97[70] = v390;
              v97[71] = v398;
              v97[72] = v153;
              v97[73] = v154;
              v97[74] = v155;
              v97[75] = v156;
              v97[76] = v157;
              v97[77] = v158;
              v97[78] = v159;
              v97[79] = v160;
              v97[80] = v161;
              v97[81] = v162;
              v97[82] = v163;
              v97[83] = v164;
              v97[84] = v165;
              v97[85] = v166;
              v97[86] = v167;
              v97[87] = v168;
              v97[88] = v169;
              v97[89] = v170;
              v97[90] = v171;
              v97[91] = v172;
              v97[92] = v173;
              v97[93] = v174;
              v97[94] = v175;
              v97[95] = v176;
              v89[2] = -1;
              v180 = (v90 + v364 + a11 + 256);
              v375 = *(v90 + v364 + 320);
              v383 = *(v90 + v364 + 336);
              v391 = *(v90 + v364 + 352);
              v399 = *(v90 + v364 + 368);
              v181 = *(v90 + v364 + 384);
              v182 = *(v90 + v364 + 400);
              v183 = *(v90 + v364 + 416);
              v184 = *(v90 + v364 + 432);
              v185 = *(v90 + v364 + 448);
              v186 = *(v90 + v364 + 464);
              v187 = *(v90 + v364 + 480);
              v188 = *(v90 + v364 + 496);
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
              v205 = *(v90 + v364 + 272);
              v206 = *(v90 + v364 + 288);
              v207 = *(v90 + v364 + 304);
              v97[96] = *(v90 + v364 + 256);
              v97[97] = v205;
              v97[98] = v206;
              v97[99] = v207;
              v97[100] = v375;
              v97[101] = v383;
              v97[102] = v391;
              v97[103] = v399;
              v97[104] = v181;
              v97[105] = v182;
              v97[106] = v183;
              v97[107] = v184;
              v97[108] = v185;
              v97[109] = v186;
              v97[110] = v187;
              v97[111] = v188;
              v97[112] = v189;
              v97[113] = v190;
              v97[114] = v191;
              v97[115] = v192;
              v97[116] = v193;
              v97[117] = v194;
              v97[118] = v195;
              v97[119] = v196;
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
              if (v416)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v92 = v52;
            v93 = v57;
            v94 = (v409 + v88);
            v95 = v58;
            v96 = v55;
            memcpy(__dst, v91, sizeof(__dst));
            v55 = v96;
            v58 = v95;
            v89 = v94;
            v97 = __dst;
            v57 = v93;
            v52 = v92;
            v26 = v360;
            result = v414;
          }

          else
          {
            v97 = (v408 + v76);
            if (!(v59 & 1 | (v58 < 4u) | (v410 < 4)))
            {
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v418 = v97;
          v426 = v58;
          v427 = v368;
          v422 = v370;
          v423 = v55 - v53;
          v419 = v89;
          v420 = v90;
          v421 = a11;
          v424 = v369;
          v425 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v414;
            goto LABEL_112;
          }

          v209 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v429, 512, v97, *v89);
          v210 = v209 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v431, 512, v209, v89[1]);
          v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v432, 512, v210, v89[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v433, 512, v210 + v211, v89[3]);
          v212 = v424;
          if (v424 && v425)
          {
            v213 = 0;
            v214 = v423 << 7;
            v215 = &v430[32 * v422 - 1] + v214;
            v216 = v420;
            v217 = v421;
            v218 = v425 << 7;
            if (v218)
            {
              v219 = (v218 - 1) >> 32 == 0;
            }

            else
            {
              v219 = 0;
            }

            v220 = !v219;
            v222 = v215 < v420 + v421 * (v424 - 1) + v218 && v420 < &__dst[512 * v424 + 1536 + 512 * v422 + v218 + v214];
            v223 = v220 | (v421 < 0) | v222;
            v224 = &v430[32 * v422] + v214;
            v225 = v420 + 1;
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
          v232 = v418;
          v233 = v419;
          v234 = v426;
          v235 = v427;
          if (v426)
          {
            result = v414;
            v208 = v51 + 1;
            if (v427)
            {
              v376 = v430[3];
              v384 = v430[4];
              v392 = v430[5];
              v400 = v430[6];
              v236 = v430[7];
              v237 = v430[8];
              v238 = v430[9];
              v239 = v430[10];
              v240 = v430[11];
              v241 = v430[12];
              v242 = v430[13];
              v243 = v430[14];
              v244 = v431[16];
              v245 = v431[17];
              v246 = v431[18];
              v247 = v431[19];
              v248 = v431[20];
              v249 = v431[21];
              v250 = v431[22];
              v251 = v431[23];
              v252 = v431[24];
              v253 = v431[25];
              v254 = v431[26];
              v255 = v431[27];
              v256 = v431[28];
              v257 = v431[29];
              v258 = v431[30];
              v259 = v431[31];
              v260 = v430[0];
              v261 = v430[1];
              v262 = v430[2];
              *v418 = v429;
              v232[1] = v260;
              v232[2] = v261;
              v232[3] = v262;
              v232[4] = v376;
              v232[5] = v384;
              v232[6] = v392;
              v232[7] = v400;
              v232[8] = v236;
              v232[9] = v237;
              v232[10] = v238;
              v232[11] = v239;
              v232[12] = v240;
              v232[13] = v241;
              v232[14] = v242;
              v232[15] = v243;
              v232[16] = v244;
              v232[17] = v245;
              v232[18] = v246;
              v232[19] = v247;
              v232[20] = v248;
              v232[21] = v249;
              v232[22] = v250;
              v232[23] = v251;
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
            result = v414;
            v208 = v51 + 1;
          }

          *v233 = v231;
          if (v234 < 3 || v235 == 0)
          {
            v293 = 0;
          }

          else
          {
            v377 = v431[4];
            v385 = v431[5];
            v393 = v431[6];
            v401 = v431[7];
            v265 = v431[8];
            v266 = v431[9];
            v267 = v431[10];
            v268 = v431[11];
            v269 = v431[12];
            v270 = v431[13];
            v271 = v431[14];
            v272 = v431[15];
            v273 = v431[32];
            v274 = v431[33];
            v275 = v431[34];
            v276 = v431[35];
            v277 = v431[36];
            v278 = v431[37];
            v279 = v431[38];
            v280 = v431[39];
            v281 = v431[40];
            v282 = v431[41];
            v283 = v431[42];
            v284 = v431[43];
            v285 = v431[44];
            v286 = v431[45];
            v287 = v431[46];
            v288 = v431[47];
            v289 = v431[1];
            v290 = v431[2];
            v291 = v431[3];
            *v232 = v431[0];
            v232[1] = v289;
            v232[2] = v290;
            v232[3] = v291;
            v232[4] = v377;
            v232[5] = v385;
            v232[6] = v393;
            v232[7] = v401;
            v232[8] = v265;
            v232[9] = v266;
            v232[10] = v267;
            v232[11] = v268;
            v232[12] = v269;
            v232[13] = v270;
            v232[14] = v271;
            v232[15] = v272;
            v232[16] = v273;
            v232[17] = v274;
            v232[18] = v275;
            v232[19] = v276;
            v232[20] = v277;
            v232[21] = v278;
            v232[22] = v279;
            v232[23] = v280;
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
            v293 = -1;
          }

          v294 = 0;
          v233[1] = v293;
          if (v234 && v235 >= 3)
          {
            v378 = v432[4];
            v386 = v432[5];
            v394 = v432[6];
            v402 = v432[7];
            v295 = v432[8];
            v296 = v432[9];
            v297 = v432[10];
            v298 = v432[11];
            v299 = v432[12];
            v300 = v432[13];
            v301 = v432[14];
            v302 = v432[15];
            v303 = v433[16];
            v304 = v433[17];
            v305 = v433[18];
            v306 = v433[19];
            v307 = v433[20];
            v308 = v433[21];
            v309 = v433[22];
            v310 = v433[23];
            v311 = v433[24];
            v312 = v433[25];
            v313 = v433[26];
            v314 = v433[27];
            v315 = v433[28];
            v316 = v433[29];
            v317 = v433[30];
            v318 = v433[31];
            v319 = v432[1];
            v320 = v432[2];
            v321 = v432[3];
            *v232 = v432[0];
            v232[1] = v319;
            v232[2] = v320;
            v232[3] = v321;
            v232[4] = v378;
            v232[5] = v386;
            v232[6] = v394;
            v232[7] = v402;
            v232[8] = v295;
            v232[9] = v296;
            v232[10] = v297;
            v232[11] = v298;
            v232[12] = v299;
            v232[13] = v300;
            v232[14] = v301;
            v232[15] = v302;
            v232[16] = v303;
            v232[17] = v304;
            v232[18] = v305;
            v232[19] = v306;
            v232[20] = v307;
            v232[21] = v308;
            v232[22] = v309;
            v232[23] = v310;
            v232[24] = v311;
            v232[25] = v312;
            v232[26] = v313;
            v232[27] = v314;
            v322 = v232 + 28;
            v232 += 32;
            *v322 = v315;
            v322[1] = v316;
            v322[2] = v317;
            v322[3] = v318;
            v294 = -1;
          }

          v323 = 0;
          v233[2] = v294;
          if (v234 >= 3 && v235 >= 3)
          {
            v379 = v433[4];
            v387 = v433[5];
            v395 = v433[6];
            v403 = v433[7];
            v324 = v433[8];
            v325 = v433[9];
            v326 = v433[10];
            v327 = v433[11];
            v328 = v433[12];
            v329 = v433[13];
            v330 = v433[14];
            v331 = v433[15];
            v332 = v433[32];
            v333 = v433[33];
            v334 = v433[34];
            v335 = v433[35];
            v336 = v433[36];
            v337 = v433[37];
            v338 = v433[38];
            v339 = v433[39];
            v340 = v433[40];
            v341 = v433[41];
            v342 = v433[42];
            v343 = v433[43];
            v344 = v433[44];
            v345 = v433[45];
            v346 = v433[46];
            v347 = v433[47];
            v348 = v433[1];
            v349 = v433[2];
            v350 = v433[3];
            *v232 = v433[0];
            v232[1] = v348;
            v232[2] = v349;
            v232[3] = v350;
            v232[4] = v379;
            v232[5] = v387;
            v232[6] = v395;
            v232[7] = v403;
            v232[8] = v324;
            v232[9] = v325;
            v232[10] = v326;
            v232[11] = v327;
            v232[12] = v328;
            v232[13] = v329;
            v232[14] = v330;
            v232[15] = v331;
            v232[16] = v332;
            v232[17] = v333;
            v232[18] = v334;
            v232[19] = v335;
            v232[20] = v336;
            v232[21] = v337;
            v232[22] = v338;
            v232[23] = v339;
            v232[24] = v340;
            v232[25] = v341;
            v232[26] = v342;
            v232[27] = v343;
            v351 = v232 + 28;
            v323 = -1;
            *v351 = v344;
            v351[1] = v345;
            v351[2] = v346;
            v351[3] = v347;
          }

          v233[3] = v323;
          if (v416)
          {
LABEL_46:
            memcpy(v91, v97, 0x800uLL);
            result = v414;
          }

LABEL_47:
          v29 = v51 == v406 >> 2;
          v51 = v208;
          v16 = v405;
        }

        while (!v29);
        v29 = v26++ == v358;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v150 = v21;
  v151 = v22;
  v138 = v23;
  v24 = v12;
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v155 = v14;
  v25 = v14 >> 2;
  v137 = v14 + a10 - 1;
  v139 = v137 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v156 = v24;
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
  v158 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v139)
  {
    v148 = v16 + a9 - 1;
    v136 = v16 >> 2;
    if (v16 >> 2 <= v148 >> 2)
    {
      v157 = (v20 - 1) >> 2;
      v135 = (v18 - 1) >> 2;
      v132 = v20 - 1;
      v140 = (v20 - 1) & 3;
      v133 = ((v18 - 1) & 3) + 1;
      v134 = (v18 - 1) & 3;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0x300000003);
      v34 = vcgt_u32(v33, 0x700000007);
      v146 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 2uLL))))))), v34);
      v145 = v34;
      v131 = 8 * v27 * v26;
      v147 = v16;
      do
      {
        v35 = (4 * v25) | 3;
        if (4 * v25 <= v155)
        {
          v36 = v155;
        }

        else
        {
          v36 = 4 * v25;
        }

        if (v137 < v35)
        {
          v35 = v137;
        }

        v154 = 4 * v25;
        v144 = v36 - 4 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v134;
        v143 = v38;
        v40 = v38 != 4;
        v41 = v136;
        v42 = v133;
        if (v25 != v135)
        {
          v42 = 4;
          v39 = v40;
        }

        v141 = v39;
        v142 = v42;
        v153 = v138 + (v36 - v155) * a11;
        v152 = v42;
        v43 = v156;
        do
        {
          v44 = 4 * v41;
          v45 = 4 * (v41 + 1) - 1;
          if (4 * v41 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 4 * v41;
          }

          if (v148 < v45)
          {
            v45 = v148;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v41 == v157)
          {
            v49 = v140 + 1;
          }

          else
          {
            v49 = 4;
          }

          v50 = 1;
          if (v154 >= v155 && v44 >= v16)
          {
            v51 = v47 != v140;
            if (v41 != v157)
            {
              v51 = v48 != 4;
            }

            v50 = v51 || v141;
          }

          if (isLevelTiled)
          {
            v72 = 0;
            v73 = v131 >> (*(v43 + 57) != 0);
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

            v119 = (v72 >> 2) - 1;
            v120 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v121 = 32 - __clz(~(-1 << -__clz(v119))), v122 = 32 - __clz(~(-1 << -__clz(v120))), !(v122 | v121)))
            {
              v130 = 0;
            }

            else
            {
              v123 = 0;
              v124 = 0;
              v125 = v41 & v119;
              v126 = v25 & v120;
              v127 = v121 != 0;
              v128 = v122 != 0;
              v129 = 1;
              do
              {
                --v121;
                if (v127)
                {
                  v124 |= (v129 & v125) << v123++;
                }

                else
                {
                  v121 = 0;
                }

                --v122;
                if (v128)
                {
                  v124 |= (v129 & v126) << v123++;
                }

                else
                {
                  v122 = 0;
                }

                v129 *= 2;
                --v123;
                v128 = v122 != 0;
                v127 = v121 != 0;
              }

              while (v122 | v121);
              v130 = v124 << 11;
            }

            v59 = v130 + ((v44 / v72 + v154 / v75 * ((v72 + v132) / v72)) << 14);
          }

          else if (v146)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v145.i8[0];
            v56 = v145.i8[4];
            v58 = v146.i32[0];
            v57 = v146.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v41) << v52++;
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

          v60 = *(v43 + 128) >> (*(v43 + 144) + a12);
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
          v76 = (v151 + v71);
          v77 = (v153 + ((v46 - v16) << 7));
          v78 = (v150 + v59);
          if (v158)
          {
            if (!(v50 & 1 | (v49 < 4u) | (v152 < 4)))
            {
              v83 = __dst;
LABEL_87:
              v85 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v83, v76, v77, a11)];
              v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v85, v76 + 1, v77 + 16, a11);
              v87 = (v77 + 2 * a11);
              v88 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v86, v76 + 2, v87, a11);
              v89 = v76 + 3;
              v90 = v87 + 16;
              v91 = a11;
LABEL_88:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v88, v89, v90, v91);
              goto LABEL_89;
            }

            v79 = v48;
            v80 = (v150 + v59);
            v81 = v49;
            v82 = v50;
            memcpy(__dst, (v150 + v59), sizeof(__dst));
            v50 = v82;
            v83 = __dst;
            v49 = v81;
            v78 = v80;
            v48 = v79;
          }

          else
          {
            v83 = (v150 + v59);
            if (!(v50 & 1 | (v49 < 4u) | (v152 < 4)))
            {
              goto LABEL_87;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v156;
          v160 = v83;
          v168 = v49;
          v169 = v142;
          v164 = v144;
          v165 = v46 - v44;
          v161 = v76;
          v162 = v77;
          v163 = a11;
          v166 = v143;
          v167 = v48;
          if (v50)
          {
            dispatch_sync(*(*(v156 + 8) + 16552), block);
            v43 = v156;
            v84 = v41 + 1;
            if (v158)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v92 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v83, *v76)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v92, v76[1]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v173, 512, v93, v76[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v174, 512, v93 + v94, v76[3]);
          v95 = v166;
          if (v166 && v167)
          {
            v96 = 0;
            v97 = v164 << 9;
            v98 = v165 << 7;
            v99 = &v171[0].i8[v97 + v98];
            v100 = v162;
            v101 = v163;
            v102 = v167 << 7;
            if (v102)
            {
              v103 = (v102 - 1) >> 32 == 0;
            }

            else
            {
              v103 = 0;
            }

            v104 = !v103;
            v106 = v99 < &v162->i8[v163 * (v166 - 1) + v102] && v162 < &__dst[512 * v166 + 1536 + 512 * v164 + v102 + v98];
            v107 = v104 | (v163 < 0) | v106;
            v108 = &v171[1].i8[v97 + v98];
            v109 = v162 + 1;
            do
            {
              v110 = v109;
              v111 = v108;
              v112 = v102;
              if (v107)
              {
                v113 = 0;
                do
                {
                  v99[v113] = v100->i8[v113];
                  ++v113;
                }

                while (v102 > v113);
              }

              else
              {
                do
                {
                  v114 = *v110;
                  *(v111 - 1) = v110[-1];
                  *v111 = v114;
                  v111 += 32;
                  v110 += 2;
                  v112 -= 32;
                }

                while (v112);
              }

              ++v96;
              v108 += 512;
              v109 = (v109 + v101);
              v99 += 512;
              v100 = (v100 + v101);
            }

            while (v96 != v95);
          }

          v116 = v160;
          v115 = v161;
          v117 = v168;
          v118 = v169;
          if (v168 && v169)
          {
            v116 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v160, v161, v171, 512);
            if (v117 < 3)
            {
              goto LABEL_120;
            }
          }

          else
          {
            *v161 = 0;
            if (v117 < 3)
            {
              goto LABEL_120;
            }
          }

          if (v118)
          {
            v116 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v116, v115 + 1, v172, 512);
            goto LABEL_121;
          }

LABEL_120:
          v115[1] = 0;
          if (!v117)
          {
            goto LABEL_124;
          }

LABEL_121:
          if (v118 < 3)
          {
LABEL_124:
            v115[2] = 0;
            if (v117 < 3)
            {
              goto LABEL_127;
            }

            goto LABEL_125;
          }

          v116 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v116, v115 + 2, v173, 512);
          if (v117 < 3)
          {
            goto LABEL_127;
          }

LABEL_125:
          if (v118 >= 3)
          {
            v89 = v115 + 3;
            v90 = v174;
            v88 = v116;
            v91 = 512;
            goto LABEL_88;
          }

LABEL_127:
          v115[3] = 0;
LABEL_89:
          v43 = v156;
          v84 = v41 + 1;
          if (v158)
          {
LABEL_26:
            memcpy(v78, v83, 0x800uLL);
          }

LABEL_27:
          v16 = v147;
          v29 = v41 == v148 >> 2;
          v41 = v84;
        }

        while (!v29);
        v29 = v25++ == v139;
      }

      while (!v29);
    }
  }
}