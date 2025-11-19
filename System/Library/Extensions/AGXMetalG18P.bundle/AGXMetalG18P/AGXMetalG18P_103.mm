uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v154 = v21;
  v155 = v22;
  v143 = v23;
  v24 = v12;
  v184 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v160 = v14;
  v25 = v14 >> 3;
  v142 = v14 + a10 - 1;
  v144 = v142 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v162 = v24;
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
  v163 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v153 = result;
  if (v25 <= v144)
  {
    v152 = v16 + a9 - 1;
    v141 = v16 >> 4;
    if (v16 >> 4 <= v152 >> 4)
    {
      result = v24;
      v161 = (v20 - 1) >> 4;
      v138 = v20 - 1;
      v145 = (v20 - 1) & 0xF;
      v139 = (v18 - 1) & 7;
      v140 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v150 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v149 = v35;
      v137 = 8 * v27 * v26;
      v151 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v160)
        {
          v37 = v160;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v142 < v36)
        {
          v36 = v142;
        }

        v159 = 8 * v25;
        v148 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v139;
        v147 = v39;
        v41 = v39 != 8;
        v42 = v141;
        v43 = v139 + 1;
        if (v25 != v140)
        {
          v43 = 8;
          v40 = v41;
        }

        v146 = v40;
        v157 = v143 + (v37 - v160) * a11;
        v158 = v43;
        v156 = v43;
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
            v46 = 16 * v42;
          }

          if (v152 < v45)
          {
            v45 = v152;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v161)
          {
            v49 = v145 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v159 >= v160 && v44 >= v16)
          {
            v51 = v47 != v145;
            if (v42 != v161)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v146;
          }

          if (v153)
          {
            v72 = 0;
            v73 = v137 >> (*(result + 57) != 0);
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v75 = 0;
              v72 = 16;
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

            v125 = (v72 >> 4) - 1;
            if (v74)
            {
              v126 = 0;
            }

            else
            {
              v126 = 32 - __clz(~(-1 << -__clz(v125)));
            }

            v127 = (v76 >> 3) - 1;
            if (v75)
            {
              v128 = 0;
              if (v126)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v128 = 32 - __clz(~(-1 << -__clz(v127)));
              if (v128 | v126)
              {
LABEL_141:
                v129 = 0;
                v130 = 0;
                v131 = v42 & v125;
                v132 = v25 & v127;
                v133 = v128 != 0;
                v134 = v126 != 0;
                v135 = 1;
                do
                {
                  --v128;
                  if (v133)
                  {
                    v130 |= (v135 & v132) << v129++;
                  }

                  else
                  {
                    v128 = 0;
                  }

                  --v126;
                  if (v134)
                  {
                    v130 |= (v135 & v131) << v129++;
                  }

                  else
                  {
                    v126 = 0;
                  }

                  v135 *= 2;
                  --v129;
                  v134 = v126 != 0;
                  v133 = v128 != 0;
                }

                while (v126 | v128);
                v136 = v130 << 10;
                result = v162;
                goto LABEL_153;
              }
            }

            v136 = 0;
LABEL_153:
            v59 = v136 + ((v44 / v72 + v159 / v76 * ((v72 + v138) / v72)) << 14);
            goto LABEL_53;
          }

          if (v150)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v149.i8[0];
            v55 = v149.i8[4];
            v57 = v150.i32[0];
            v58 = v150.i32[1];
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
                v53 |= (v54 & v42) << v52++;
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
            v59 = v53 << 10;
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

          v64 = v63 + 7;
          if (v64 < 0x10)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
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
          v77 = (v155 + v71);
          v78 = v157 + 16 * (v46 - v16);
          v79 = (v154 + v59);
          if (v163)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v156 < 8)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v82, v77, v49, v158, *(*(result + 208) + 52));
LABEL_87:
              v16 = v151;
              if (v163)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v80 = v48;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v44 = 16 * v42;
            v82 = __dst;
            v48 = v80;
            result = v162;
          }

          else
          {
            v82 = (v154 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v156 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v165 = v82;
          v173 = v49;
          v174 = v158;
          v169 = v148;
          v170 = v46 - v44;
          v166 = v77;
          v167 = v78;
          v168 = a11;
          v171 = v147;
          v172 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = *(*(result + 208) + 52);
          v84 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v176, 256, v82, *v77, v83)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v177, 256, v84, v77[1], v83);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v180, 256, v85, v77[2], v83);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v181, 256, v86, v77[3], v83);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v178, 256, v87, v77[4], v83);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v179, 256, v88, v77[5], v83);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v182, 256, v89, v77[6], v83);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v183, 256, v89 + v90, v77[7], v83);
          v91 = v171;
          v16 = v151;
          if (v171)
          {
            v92 = v172;
            if (v172)
            {
              v93 = 0;
              v94 = v169 << 8;
              v95 = 16 * v170;
              v96 = v176 + v94 + v95;
              v97 = v167;
              v98 = v168;
              v99 = 16 * v172;
              if (16 * v172)
              {
                v100 = (16 * v172 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v167 + v168 * (v171 - 1) + 16 * v172 && v167 < &__dst[256 * v171 + 1792 + 256 * v169 + 16 * v172 + v95];
              v104 = v99 & 0x1FFFFFFE0;
              v105 = v101 | (v168 < 0) | v103;
              v106 = &v176[1] + v94 + v95;
              v107 = (v167 + 16);
              v108 = v96;
              v109 = v167;
              do
              {
                v110 = (v97 + v93 * v98);
                v111 = &v96[256 * v93];
                if (v105)
                {
                  v112 = 0;
                }

                else
                {
                  if (v92 == 1)
                  {
                    v116 = 0;
LABEL_112:
                    v117 = -16 * v92 + v116;
                    v118 = (v109 + v116);
                    v119 = &v108[v116];
                    do
                    {
                      v120 = *v118++;
                      *v119 = v120;
                      v119 += 16;
                      v117 += 16;
                    }

                    while (v117);
                    goto LABEL_104;
                  }

                  v121 = v107;
                  v122 = v106;
                  v123 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v124 = *v121;
                    *(v122 - 1) = *(v121 - 1);
                    *v122 = v124;
                    v122 += 2;
                    v121 += 2;
                    v123 -= 32;
                  }

                  while (v123);
                  if (v99 == v104)
                  {
                    goto LABEL_104;
                  }

                  v116 = v99 & 0x1FFFFFFE0;
                  if (v92)
                  {
                    goto LABEL_112;
                  }

                  v110 += v104;
                  v111 += v104;
                  v112 = v99 & 0xFFFFFFE0;
                }

                v113 = v112 + 1;
                do
                {
                  v114 = *v110++;
                  *v111++ = v114;
                }

                while (v99 > v113++);
LABEL_104:
                ++v93;
                v106 += 256;
                v107 = (v107 + v98);
                v109 += v98;
                v108 += 256;
              }

              while (v93 != v91);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v176, 256, v165, v166, v173, v174, *(*(v162 + 208) + 52));
          if (v163)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v152 >> 4;
          result = v162;
        }

        while (!v29);
        v29 = v25++ == v144;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v229 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v17 = a8 >> 3;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v182 = a1;
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
  v184 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v173 = result;
  if (v17 <= v163)
  {
    v172 = a7 + a9 - 1;
    v160 = a7 >> 4;
    if (a7 >> 4 <= v172 >> 4)
    {
      result = a1;
      v181 = (a5 - 1) >> 4;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 0xF;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v27.i8 = vcgt_u32(v26, 0x1F0000000FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v27.i8);
      v169 = v28.i64[0];
      v170 = v28.i32[0] | v28.i32[1];
      v168 = v27.i64[0];
      v156 = 8 * v19 * v18;
      v171 = a7;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v180)
        {
          v30 = v180;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v161 < v29)
        {
          v29 = v161;
        }

        v179 = 8 * v17;
        v167 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v166 = v32;
        v34 = v32 != 8;
        v35 = v160;
        v36 = v158 + 1;
        if (v17 != v159)
        {
          v36 = 8;
          v33 = v34;
        }

        v165 = v33;
        v177 = a3 + (v30 - v180) * a11;
        v178 = v36;
        v176 = v36;
        do
        {
          v37 = 16 * v35;
          v38 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v35;
          }

          if (v172 < v38)
          {
            v38 = v172;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v181)
          {
            v42 = v164 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v179 >= v180 && v37 >= a7)
          {
            v44 = v40 != v164;
            if (v35 != v181)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v165;
          }

          if (v173)
          {
            v65 = 0;
            v66 = v156 >> (*(result + 57) != 0);
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

            v144 = (v65 >> 4) - 1;
            if (v67)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v69 >> 3) - 1;
            if (v68)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_217;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_217:
                v148 = 0;
                v149 = 0;
                v150 = v35 & v144;
                v151 = v17 & v146;
                v152 = v147 != 0;
                v153 = v145 != 0;
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

                  --v145;
                  if (v153)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v145 != 0;
                  v152 = v147 != 0;
                }

                while (v145 | v147);
                v155 = v149 << 8;
                result = v182;
                goto LABEL_229;
              }
            }

            v155 = 0;
LABEL_229:
            v52 = v155 + ((v37 / v65 + v179 / v69 * ((v65 + v157) / v65)) << 14);
            goto LABEL_53;
          }

          if (v170)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v168;
            v48 = BYTE4(v168);
            v50 = v169;
            v51 = HIDWORD(v169);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v35) << v45++;
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
            v52 = v46 << 8;
          }

          else
          {
            v52 = 0;
          }

LABEL_53:
          v53 = *(result + 128) >> (*(result + 144) + a12);
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

          v56 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_78:
              v64 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_78;
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
              v60 |= (v63 & v35) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
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
LABEL_79:
          v70 = (a4 + v64);
          v71 = v177 + 4 * (v39 - a7);
          v72 = (a2 + v52);
          __dst = (a2 + v52);
          if (v184)
          {
            v72 = v196;
            if (!(v43 & 1 | (v42 < 0x10u) | (v176 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v196, __dst, sizeof(v196));
            result = v182;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v176 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v71, a11, v72, v70, v42, v178, *(*(result + 208) + 52));
LABEL_86:
            a7 = v171;
            if (v184)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v72;
          v194 = v42;
          v195 = v178;
          v190 = v167;
          v191 = v39 - v37;
          v187 = v70;
          v188 = v71;
          v189 = a11;
          v192 = v166;
          v193 = v41;
          if (v43)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v73 = *(result + 208);
          v74 = *(v73 + 52);
          v75 = *v70;
          if (*v70)
          {
            if (v75 < 0xF0)
            {
              if (v75 == 63)
              {
                v27 = *(v72 + 1);
                v77 = (v72 + 32);
                v230 = vld2q_f64(v77);
                v28 = vzip2q_s64(*v72, v27);
                v197 = vzip1q_s64(*v72, v27);
                v201 = v28;
                v205 = v230.val[0];
                v209 = v230.val[1];
                v76 = 64;
              }

              else if (v75 == 1)
              {
                v28 = vld1q_dup_s16(v72);
                v197 = v28;
                v201 = v28;
                v205 = v28;
                v209 = v28;
                v76 = 2;
              }

              else
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v197, 64, v72, v75, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v197.i16, 64, v72, v75, *(v73 + 52));
              v76 = 32;
            }
          }

          else
          {
            v76 = 0;
            v197 = 0uLL;
            v201 = 0uLL;
            v205 = 0uLL;
            v209 = 0uLL;
          }

          v78 = &v72[v76];
          v79 = v70[1];
          if (v70[1])
          {
            if (v79 < 0xF0)
            {
              if (v79 == 63)
              {
                v27 = *(v78 + 16);
                v81 = (v78 + 32);
                v231 = vld2q_f64(v81);
                v28 = vzip2q_s64(*v78, v27);
                v198 = vzip1q_s64(*v78, v27);
                v202 = v28;
                v206 = v231.val[0];
                v210 = v231.val[1];
                v80 = 64;
              }

              else if (v79 == 1)
              {
                v28 = vld1q_dup_s16(v78);
                v198 = v28;
                v202 = v28;
                v206 = v28;
                v210 = v28;
                v80 = 2;
              }

              else
              {
                v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v198, 64, v78, v79, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v198.i16, 64, v78, v79, v74);
              v80 = 32;
            }
          }

          else
          {
            v80 = 0;
            v198 = 0uLL;
            v202 = 0uLL;
            v206 = 0uLL;
            v210 = 0uLL;
          }

          v82 = v78 + v80;
          v83 = v70[2];
          if (v70[2])
          {
            if (v83 < 0xF0)
            {
              if (v83 == 63)
              {
                v27 = *(v82 + 16);
                v85 = (v82 + 32);
                v232 = vld2q_f64(v85);
                v28 = vzip2q_s64(*v82, v27);
                v213 = vzip1q_s64(*v82, v27);
                v217 = v28;
                v221 = v232.val[0];
                v225 = v232.val[1];
                v84 = 64;
              }

              else if (v83 == 1)
              {
                v28 = vld1q_dup_s16(v82);
                v213 = v28;
                v217 = v28;
                v221 = v28;
                v225 = v28;
                v84 = 2;
              }

              else
              {
                v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 64, v82, v83, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v213.i16, 64, v82, v83, v74);
              v84 = 32;
            }
          }

          else
          {
            v84 = 0;
            v213 = 0uLL;
            v217 = 0uLL;
            v221 = 0uLL;
            v225 = 0uLL;
          }

          v86 = v82 + v84;
          v87 = v70[3];
          if (v70[3])
          {
            if (v87 < 0xF0)
            {
              if (v87 == 63)
              {
                v27 = *(v86 + 16);
                v89 = (v86 + 32);
                v233 = vld2q_f64(v89);
                v28 = vzip2q_s64(*v86, v27);
                v214 = vzip1q_s64(*v86, v27);
                v218 = v28;
                v222 = v233.val[0];
                v226 = v233.val[1];
                v88 = 64;
              }

              else if (v87 == 1)
              {
                v28 = vld1q_dup_s16(v86);
                v214 = v28;
                v218 = v28;
                v222 = v28;
                v226 = v28;
                v88 = 2;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v214, 64, v86, v87, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v214.i16, 64, v86, v87, v74);
              v88 = 32;
            }
          }

          else
          {
            v88 = 0;
            v214 = 0uLL;
            v218 = 0uLL;
            v222 = 0uLL;
            v226 = 0uLL;
          }

          v90 = v86 + v88;
          v91 = v70[4];
          if (v70[4])
          {
            if (v91 < 0xF0)
            {
              if (v91 == 63)
              {
                v27 = *(v90 + 16);
                v93 = (v90 + 32);
                v234 = vld2q_f64(v93);
                v28 = vzip2q_s64(*v90, v27);
                v199 = vzip1q_s64(*v90, v27);
                v203 = v28;
                v207 = v234.val[0];
                v211 = v234.val[1];
                v92 = 64;
              }

              else if (v91 == 1)
              {
                v28 = vld1q_dup_s16(v90);
                v199 = v28;
                v203 = v28;
                v207 = v28;
                v211 = v28;
                v92 = 2;
              }

              else
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v199, 64, v90, v91, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v199.i16, 64, v90, v91, v74);
              v92 = 32;
            }
          }

          else
          {
            v92 = 0;
            v199 = 0uLL;
            v203 = 0uLL;
            v207 = 0uLL;
            v211 = 0uLL;
          }

          v94 = v90 + v92;
          v95 = v70[5];
          if (v70[5])
          {
            if (v95 < 0xF0)
            {
              if (v95 == 63)
              {
                v27 = *(v94 + 16);
                v97 = (v94 + 32);
                v235 = vld2q_f64(v97);
                v28 = vzip2q_s64(*v94, v27);
                v200 = vzip1q_s64(*v94, v27);
                v204 = v28;
                v208 = v235.val[0];
                v212 = v235.val[1];
                v96 = 64;
              }

              else if (v95 == 1)
              {
                v28 = vld1q_dup_s16(v94);
                v200 = v28;
                v204 = v28;
                v208 = v28;
                v212 = v28;
                v96 = 2;
              }

              else
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v200, 64, v94, v95, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v200.i16, 64, v94, v95, v74);
              v96 = 32;
            }
          }

          else
          {
            v96 = 0;
            v200 = 0uLL;
            v204 = 0uLL;
            v208 = 0uLL;
            v212 = 0uLL;
          }

          v98 = v94 + v96;
          v99 = v70[6];
          if (v70[6])
          {
            if (v99 < 0xF0)
            {
              if (v99 == 63)
              {
                v27 = *(v98 + 16);
                v140 = (v98 + 32);
                v236 = vld2q_f64(v140);
                v28 = vzip2q_s64(*v98, v27);
                v215 = vzip1q_s64(*v98, v27);
                v219 = v28;
                v223 = v236.val[0];
                v227 = v236.val[1];
                v100 = 64;
                v101 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v99 == 1)
              {
                v28 = vld1q_dup_s16(v98);
                v215 = v28;
                v219 = v28;
                v223 = v28;
                v227 = v28;
                v100 = 2;
                v101 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v215, 64, v98, v99, *v28.i8, *v27.i8);
                v101 = v70[7];
                if (!v70[7])
                {
LABEL_145:
                  v216 = 0uLL;
                  v220 = 0uLL;
                  v224 = 0uLL;
                  v228 = 0uLL;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v215.i16, 64, v98, v99, v74);
              v100 = 32;
              v101 = v70[7];
              if (!v70[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v100 = 0;
            v215 = 0uLL;
            v219 = 0uLL;
            v223 = 0uLL;
            v227 = 0uLL;
            v101 = v70[7];
            if (!v70[7])
            {
              goto LABEL_145;
            }
          }

          v102 = v98 + v100;
          if (v101 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v216.i16, 64, v102, v101, v74);
LABEL_149:
            a7 = v171;
            v103 = v192;
            if (!v192)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v171;
          if (v101 == 63)
          {
            v141 = *(v102 + 16);
            v142 = (v102 + 32);
            v237 = vld2q_f64(v142);
            v143 = vzip2q_s64(*v102, v141);
            v216 = vzip1q_s64(*v102, v141);
            v220 = v143;
            v224 = v237.val[0];
            v228 = v237.val[1];
            v103 = v192;
            if (!v192)
            {
              goto LABEL_196;
            }
          }

          else if (v101 == 1)
          {
            v139 = vld1q_dup_s16(v102);
            v216 = v139;
            v220 = v139;
            v224 = v139;
            v228 = v139;
            v103 = v192;
            if (!v192)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v216, 64, v102, v101, *v28.i8, *v27.i8);
            v103 = v192;
            if (!v192)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v104 = v193;
          if (v193)
          {
            v105 = 0;
            v106 = v190 << 6;
            v107 = 4 * v191;
            v108 = &v197.i8[v106 + v107];
            v109 = v188;
            v110 = v189;
            v111 = 4 * v193;
            if (4 * v193)
            {
              v112 = (4 * v193 - 1) >> 32 == 0;
            }

            else
            {
              v112 = 0;
            }

            v113 = !v112;
            v115 = v108 < v188 + v189 * (v103 - 1) + 4 * v193 && v188 < &v196[64 * v103 + 448 + 64 * v190 + 4 * v193 + v107];
            v116 = v115 || v189 < 0;
            v117 = v111 & 0x1FFFFFFE0;
            v118 = v111 & 0x1FFFFFFF8;
            v119 = (v193 == 1) | v113 | v116;
            v120 = &v198.i8[v106 + v107];
            v121 = (v188 + 16);
            v122 = v108;
            v123 = v188;
            do
            {
              v124 = (v109 + v105 * v110);
              v125 = &v108[64 * v105];
              if (v119)
              {
                v126 = 0;
                goto LABEL_178;
              }

              if (v104 >= 8)
              {
                v128 = v121;
                v129 = v120;
                v130 = v111 & 0x1FFFFFFE0;
                do
                {
                  v131 = *v128;
                  *(v129 - 1) = *(v128 - 1);
                  *v129 = v131;
                  v129 += 32;
                  v128 += 2;
                  v130 -= 32;
                }

                while (v130);
                if (v111 == v117)
                {
                  goto LABEL_164;
                }

                v127 = v111 & 0x1FFFFFFE0;
                if ((v104 & 6) == 0)
                {
                  v124 += v117;
                  v125 += v117;
                  v126 = v111 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v127 = 0;
              }

              v125 += v118;
              v132 = -8 * ((v104 >> 1) & 0x3FFFFFFF) + v127;
              v133 = (v123 + v127);
              v134 = &v122[v127];
              do
              {
                v135 = *v133++;
                *v134 = v135;
                v134 += 8;
                v132 += 8;
              }

              while (v132);
              if (v111 == v118)
              {
                goto LABEL_164;
              }

              v124 += v118;
              v126 = v111 & 0xFFFFFFF8;
LABEL_178:
              v136 = v126 + 1;
              do
              {
                v137 = *v124++;
                *v125++ = v137;
              }

              while (v111 > v136++);
LABEL_164:
              ++v105;
              v120 += 64;
              v121 = (v121 + v110);
              v123 += v110;
              v122 += 64;
            }

            while (v105 != v103);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v197, 64, v186, v187, v194, v195, *(*(v182 + 208) + 52));
          if (v184)
          {
LABEL_26:
            memcpy(__dst, v72, 0x200uLL);
          }

LABEL_27:
          v21 = v35++ == v172 >> 4;
          result = v182;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v175 = v21;
  v176 = v22;
  v164 = v23;
  v24 = v12;
  v326 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v181 = v14;
  v25 = v14 >> 3;
  v163 = v14 + a10 - 1;
  v165 = v163 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v183 = v24;
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
  v185 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v174 = result;
  if (v25 <= v165)
  {
    v173 = v16 + a9 - 1;
    v162 = v16 >> 4;
    if (v16 >> 4 <= v173 >> 4)
    {
      result = v24;
      v182 = (v20 - 1) >> 4;
      v159 = v20 - 1;
      v166 = (v20 - 1) & 0xF;
      v160 = (v18 - 1) & 7;
      v161 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v171 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v170 = v35;
      v158 = 8 * v27 * v26;
      v172 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v181)
        {
          v37 = v181;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v163 < v36)
        {
          v36 = v163;
        }

        v180 = 8 * v25;
        v169 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v160;
        v168 = v39;
        v41 = v39 != 8;
        v42 = v162;
        v43 = v160 + 1;
        if (v25 != v161)
        {
          v43 = 8;
          v40 = v41;
        }

        v167 = v40;
        v178 = v164 + (v37 - v181) * a11;
        v179 = v43;
        v177 = v43;
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
            v46 = 16 * v42;
          }

          if (v173 < v45)
          {
            v45 = v173;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v182)
          {
            v49 = v166 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v180 >= v181 && v44 >= v16)
          {
            v51 = v47 != v166;
            if (v42 != v182)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v167;
          }

          if (v174)
          {
            v72 = 0;
            v73 = v158 >> (*(result + 57) != 0);
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v75 = 0;
              v72 = 16;
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

            v146 = (v72 >> 4) - 1;
            if (v74)
            {
              v147 = 0;
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
            }

            v148 = (v76 >> 3) - 1;
            if (v75)
            {
              v149 = 0;
              if (v147)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v149 = 32 - __clz(~(-1 << -__clz(v148)));
              if (v149 | v147)
              {
LABEL_198:
                v150 = 0;
                v151 = 0;
                v152 = v42 & v146;
                v153 = v25 & v148;
                v154 = v149 != 0;
                v155 = v147 != 0;
                v156 = 1;
                do
                {
                  --v149;
                  if (v154)
                  {
                    v151 |= (v156 & v153) << v150++;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  --v147;
                  if (v155)
                  {
                    v151 |= (v156 & v152) << v150++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v156 *= 2;
                  --v150;
                  v155 = v147 != 0;
                  v154 = v149 != 0;
                }

                while (v147 | v149);
                v157 = v151 << 10;
                result = v183;
                goto LABEL_210;
              }
            }

            v157 = 0;
LABEL_210:
            v59 = v157 + ((v44 / v72 + v180 / v76 * ((v72 + v159) / v72)) << 14);
            goto LABEL_53;
          }

          if (v171)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v170.i8[0];
            v55 = v170.i8[4];
            v57 = v171.i32[0];
            v58 = v171.i32[1];
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
                v53 |= (v54 & v42) << v52++;
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
            v59 = v53 << 10;
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

          v64 = v63 + 7;
          if (v64 < 0x10)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
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
          v77 = (v176 + v71);
          v78 = v178 + 16 * (v46 - v16);
          v79 = (v175 + v59);
          __dst = (v175 + v59);
          if (v185)
          {
            v79 = v197;
            if (!(v50 & 1 | (v49 < 0x10u) | (v177 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v197, __dst, sizeof(v197));
            result = v183;
          }

          else if (!(v50 & 1 | (v49 < 0x10u) | (v177 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v79, v77, v49, v179, *(*(result + 208) + 52));
LABEL_86:
            v16 = v172;
            if (v185)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v187 = v79;
          v195 = v49;
          v196 = v179;
          v191 = v169;
          v192 = v46 - v44;
          v188 = v77;
          v189 = v78;
          v190 = a11;
          v193 = v168;
          v194 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v80 = *(result + 208);
          v81 = *(v80 + 52);
          v82 = *v77;
          if (*v77)
          {
            if (v82 < 0xF0)
            {
              if (v82 == 7)
              {
                v84 = vld1q_dup_f64(v79);
                v198 = v84;
                v199 = v84;
                v200 = v84;
                v201 = v84;
                v214 = v84;
                v215 = v84;
                v216 = v84;
                v217 = v84;
                v230 = v84;
                v231 = v84;
                v232 = v84;
                v233 = v84;
                v246 = v84;
                v247 = v84;
                v83 = 8;
                v248 = v84;
                v249 = v84;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v198, 256, v79, v82);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v198, 256, v79, v82, *(v80 + 52));
              v83 = 128;
            }
          }

          else
          {
            v83 = 0;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v198 = 0u;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v230 = 0u;
            v231 = 0u;
            v232 = 0u;
            v233 = 0u;
            v246 = 0u;
            v247 = 0u;
            v248 = 0u;
            v249 = 0u;
          }

          v85 = (v79 + v83);
          v86 = v77[1];
          if (v77[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 7)
              {
                v88 = vld1q_dup_f64(v85);
                v202 = v88;
                v203 = v88;
                v204 = v88;
                v205 = v88;
                v218 = v88;
                v219 = v88;
                v220 = v88;
                v221 = v88;
                v234 = v88;
                v235 = v88;
                v236 = v88;
                v237 = v88;
                v250 = v88;
                v251 = v88;
                v87 = 8;
                v252 = v88;
                v253 = v88;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v202, 256, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v202, 256, v85, v86, v81);
              v87 = 128;
            }
          }

          else
          {
            v87 = 0;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v250 = 0u;
            v251 = 0u;
            v252 = 0u;
            v253 = 0u;
          }

          v89 = (v85 + v87);
          v90 = v77[2];
          if (v77[2])
          {
            if (v90 < 0xF0)
            {
              if (v90 == 7)
              {
                v92 = vld1q_dup_f64(v89);
                v262 = v92;
                v263 = v92;
                v264 = v92;
                v265 = v92;
                v278 = v92;
                v279 = v92;
                v280 = v92;
                v281 = v92;
                v294 = v92;
                v295 = v92;
                v296 = v92;
                v297 = v92;
                v310 = v92;
                v311 = v92;
                v312 = v92;
                v91 = 8;
                v313 = v92;
              }

              else
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v262, 256, v89, v90);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v262, 256, v89, v90, v81);
              v91 = 128;
            }
          }

          else
          {
            v91 = 0;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v294 = 0u;
            v295 = 0u;
            v296 = 0u;
            v297 = 0u;
            v310 = 0u;
            v311 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v93 = (v89 + v91);
          v94 = v77[3];
          if (v77[3])
          {
            if (v94 < 0xF0)
            {
              if (v94 == 7)
              {
                v96 = vld1q_dup_f64(v93);
                v266 = v96;
                v267 = v96;
                v268 = v96;
                v269 = v96;
                v282 = v96;
                v283 = v96;
                v284 = v96;
                v285 = v96;
                v298 = v96;
                v299 = v96;
                v300 = v96;
                v301 = v96;
                v314 = v96;
                v315 = v96;
                v316 = v96;
                v95 = 8;
                v317 = v96;
              }

              else
              {
                v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v266, 256, v93, v94);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v266, 256, v93, v94, v81);
              v95 = 128;
            }
          }

          else
          {
            v95 = 0;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v314 = 0u;
            v315 = 0u;
            v316 = 0u;
            v317 = 0u;
          }

          v97 = (v93 + v95);
          v98 = v77[4];
          if (v77[4])
          {
            if (v98 < 0xF0)
            {
              if (v98 == 7)
              {
                v100 = vld1q_dup_f64(v97);
                v206 = v100;
                v207 = v100;
                v208 = v100;
                v209 = v100;
                v222 = v100;
                v223 = v100;
                v224 = v100;
                v225 = v100;
                v238 = v100;
                v239 = v100;
                v240 = v100;
                v241 = v100;
                v254 = v100;
                v255 = v100;
                v99 = 8;
                v256 = v100;
                v257 = v100;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v206, 256, v97, v98);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v206, 256, v97, v98, v81);
              v99 = 128;
            }
          }

          else
          {
            v99 = 0;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v222 = 0u;
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
            v241 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v101 = (v97 + v99);
          v102 = v77[5];
          if (v77[5])
          {
            if (v102 < 0xF0)
            {
              if (v102 == 7)
              {
                v104 = vld1q_dup_f64(v101);
                v210 = v104;
                v211 = v104;
                v212 = v104;
                v213 = v104;
                v226 = v104;
                v227 = v104;
                v228 = v104;
                v229 = v104;
                v242 = v104;
                v243 = v104;
                v244 = v104;
                v245 = v104;
                v258 = v104;
                v259 = v104;
                v103 = 8;
                v260 = v104;
                v261 = v104;
              }

              else
              {
                v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v210, 256, v101, v102);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v210, 256, v101, v102, v81);
              v103 = 128;
            }
          }

          else
          {
            v103 = 0;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v226 = 0u;
            v227 = 0u;
            v228 = 0u;
            v229 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v105 = (v101 + v103);
          v106 = v77[6];
          if (v77[6])
          {
            if (v106 < 0xF0)
            {
              if (v106 == 7)
              {
                v144 = vld1q_dup_f64(v105);
                v270 = v144;
                v271 = v144;
                v272 = v144;
                v273 = v144;
                v286 = v144;
                v287 = v144;
                v288 = v144;
                v289 = v144;
                v302 = v144;
                v303 = v144;
                v304 = v144;
                v305 = v144;
                v318 = v144;
                v319 = v144;
                v320 = v144;
                v107 = 8;
                v321 = v144;
                v108 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_133;
                }
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v270, 256, v105, v106);
                v108 = v77[7];
                if (!v77[7])
                {
LABEL_133:
                  v276 = 0u;
                  v277 = 0u;
                  v274 = 0u;
                  v275 = 0u;
                  v290 = 0u;
                  v291 = 0u;
                  v292 = 0u;
                  v293 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  v322 = 0u;
                  v323 = 0u;
                  v324 = 0u;
                  v325 = 0u;
                  goto LABEL_137;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v270, 256, v105, v106, v81);
              v107 = 128;
              v108 = v77[7];
              if (!v77[7])
              {
                goto LABEL_133;
              }
            }
          }

          else
          {
            v107 = 0;
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v286 = 0u;
            v287 = 0u;
            v288 = 0u;
            v289 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = 0u;
            v318 = 0u;
            v319 = 0u;
            v320 = 0u;
            v321 = 0u;
            v108 = v77[7];
            if (!v77[7])
            {
              goto LABEL_133;
            }
          }

          v109 = (v105 + v107);
          if (v108 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v274, 256, v109, v108, v81);
LABEL_137:
            v16 = v172;
            v110 = v193;
            if (!v193)
            {
              goto LABEL_177;
            }

            goto LABEL_138;
          }

          v16 = v172;
          if (v108 == 7)
          {
            v145 = vld1q_dup_f64(v109);
            v274 = v145;
            v275 = v145;
            v276 = v145;
            v277 = v145;
            v290 = v145;
            v291 = v145;
            v292 = v145;
            v293 = v145;
            v306 = v145;
            v307 = v145;
            v308 = v145;
            v309 = v145;
            v322 = v145;
            v323 = v145;
            v324 = v145;
            v325 = v145;
            v110 = v193;
            if (!v193)
            {
              goto LABEL_177;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v274, 256, v109, v108);
            v110 = v193;
            if (!v193)
            {
              goto LABEL_177;
            }
          }

LABEL_138:
          v111 = v194;
          if (v194)
          {
            v112 = 0;
            v113 = v191 << 8;
            v114 = 16 * v192;
            v115 = &v198 + v113 + v114;
            v116 = v189;
            v117 = v190;
            v118 = 16 * v194;
            if (16 * v194)
            {
              v119 = (16 * v194 - 1) >> 32 == 0;
            }

            else
            {
              v119 = 0;
            }

            v120 = !v119;
            v122 = v115 < v189 + v190 * (v110 - 1) + 16 * v194 && v189 < &v197[256 * v110 + 1792 + 256 * v191 + 16 * v194 + v114];
            v123 = v118 & 0x1FFFFFFE0;
            v124 = v120 | (v190 < 0) | v122;
            v125 = &v199 + v113 + v114;
            v126 = (v189 + 16);
            v127 = v115;
            v128 = v189;
            do
            {
              v129 = (v116 + v112 * v117);
              v130 = &v115[256 * v112];
              if (v124)
              {
                v131 = 0;
              }

              else
              {
                if (v111 == 1)
                {
                  v135 = 0;
LABEL_160:
                  v136 = -16 * v111 + v135;
                  v137 = (v128 + v135);
                  v138 = &v127[v135];
                  do
                  {
                    v139 = *v137++;
                    *v138 = v139;
                    v138 += 16;
                    v136 += 16;
                  }

                  while (v136);
                  goto LABEL_152;
                }

                v140 = v126;
                v141 = v125;
                v142 = v118 & 0x1FFFFFFE0;
                do
                {
                  v143 = *v140;
                  *(v141 - 1) = *(v140 - 1);
                  *v141 = v143;
                  v141 += 2;
                  v140 += 2;
                  v142 -= 32;
                }

                while (v142);
                if (v118 == v123)
                {
                  goto LABEL_152;
                }

                v135 = v118 & 0x1FFFFFFE0;
                if (v111)
                {
                  goto LABEL_160;
                }

                v129 += v123;
                v130 += v123;
                v131 = v118 & 0xFFFFFFE0;
              }

              v132 = v131 + 1;
              do
              {
                v133 = *v129++;
                *v130++ = v133;
              }

              while (v118 > v132++);
LABEL_152:
              ++v112;
              v125 += 256;
              v126 = (v126 + v117);
              v128 += v117;
              v127 += 256;
            }

            while (v112 != v110);
          }

LABEL_177:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v198, 256, v187, v188, v195, v196, *(*(v183 + 208) + 52));
          if (v185)
          {
LABEL_26:
            memcpy(__dst, v79, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v173 >> 4;
          result = v183;
        }

        while (!v29);
        v29 = v25++ == v165;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v160 = v21;
  v161 = v22;
  v147 = v23;
  v24 = v12;
  v185 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v14 >> 3;
  v146 = v14 + a10 - 1;
  v148 = v146 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v167 = v24;
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
  v166 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v159 = result;
  if (v25 <= v148)
  {
    v158 = v16 + a9 - 1;
    v145 = v16 >> 3;
    if (v16 >> 3 <= v158 >> 3)
    {
      result = v24;
      v165 = (v20 - 1) >> 3;
      v144 = (v18 - 1) >> 3;
      v141 = v20 - 1;
      v150 = (v20 - 1) & 7;
      v142 = ((v18 - 1) & 7) + 1;
      v143 = (v18 - 1) & 7;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v157 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v156 = v35;
      v140 = 8 * v27 * v26;
      v149 = v14;
      v151 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v14)
        {
          v37 = v14;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v146 < v36)
        {
          v36 = v146;
        }

        v164 = 8 * v25;
        v155 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v143;
        v154 = v39;
        v41 = v39 != 8;
        v42 = v145;
        v43 = v142;
        if (v25 != v144)
        {
          v43 = 8;
          v40 = v41;
        }

        v152 = v40;
        v153 = v43;
        v163 = v147 + (v37 - v14) * a11;
        v162 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v42;
          }

          if (v158 < v45)
          {
            v45 = v158;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v165)
          {
            v49 = v150 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v164 >= v14 && v44 >= v16)
          {
            v51 = v47 != v150;
            if (v42 != v165)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v152;
          }

          if (v159)
          {
            v72 = 0;
            v73 = v140 >> (*(result + 57) != 0);
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v74 = 0;
              v75 = 0;
              v72 = 16;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v74 = 0;
                v76 = 8;
                v72 = 16;
              }
            }

            v128 = (v72 >> 3) - 1;
            if (v74)
            {
              v129 = 0;
            }

            else
            {
              v129 = 32 - __clz(~(-1 << -__clz(v128)));
            }

            v130 = (v76 >> 3) - 1;
            if (v75)
            {
              v131 = 0;
              if (v129)
              {
                goto LABEL_169;
              }
            }

            else
            {
              v131 = 32 - __clz(~(-1 << -__clz(v130)));
              if (v131 | v129)
              {
LABEL_169:
                v132 = 0;
                v133 = 0;
                v134 = v42 & v128;
                v135 = v25 & v130;
                v136 = v129 != 0;
                v137 = v131 != 0;
                v138 = 1;
                do
                {
                  --v129;
                  if (v136)
                  {
                    v133 |= (v138 & v134) << v132++;
                  }

                  else
                  {
                    v129 = 0;
                  }

                  --v131;
                  if (v137)
                  {
                    v133 |= (v138 & v135) << v132++;
                  }

                  else
                  {
                    v131 = 0;
                  }

                  v138 *= 2;
                  --v132;
                  v137 = v131 != 0;
                  v136 = v129 != 0;
                }

                while (v131 | v129);
                v139 = v133 << 10;
                result = v167;
                goto LABEL_181;
              }
            }

            v139 = 0;
LABEL_181:
            v59 = v139 + ((v44 / v72 + v164 / v76 * ((v72 + v141) / v72)) << 14);
            goto LABEL_52;
          }

          if (v157)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v156.i8[0];
            v56 = v156.i8[4];
            v58 = v157.i32[0];
            v57 = v157.i32[1];
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
            v59 = v53 << 10;
          }

          else
          {
            v59 = 0;
          }

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
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

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 7;
          if (v64 < 0x10)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
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
LABEL_78:
          v77 = (v161 + v71);
          v78 = (v163 + 32 * (v46 - v16));
          __src = (v160 + v59);
          if (v166)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v162 < 8)))
            {
              v83 = __dst;
LABEL_85:
              v85 = *(*(result + 208) + 52);
              v84 = v83;
              v86 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v83, v77, (v163 + 32 * (v46 - v16)), a11, 4u, 4u, v85)];
              v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v86, v77 + 1, v78 + 8, a11, 4u, 4u, v85);
              v88 = (v78 + 4 * a11);
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v87, v77 + 2, v88, a11, 4u, 4u, v85);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v87 + v89, v77 + 3, v88 + 8, a11, 4u, 4u, v85);
              goto LABEL_148;
            }

            v79 = v14;
            v80 = v48;
            v81 = v46;
            v82 = v49;
            memcpy(__dst, __src, sizeof(__dst));
            v49 = v82;
            v46 = v81;
            v83 = __dst;
            v48 = v80;
            v14 = v79;
            v16 = v151;
            result = v167;
          }

          else
          {
            v83 = (v160 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v162 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v170 = v83;
          v178 = v49;
          v179 = v153;
          v174 = v155;
          v175 = v46 - v44;
          v171 = v77;
          v172 = v78;
          v173 = a11;
          v176 = v154;
          v177 = v48;
          if (v50)
          {
            v84 = v83;
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_148;
          }

          v90 = *(*(result + 208) + 52);
          v91 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v181, 256, v83, *v77, v90)];
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v182, 256, v91, v77[1], v90);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v183, 256, v92, v77[2], v90);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v184, 256, v92 + v93, v77[3], v90);
          v94 = v176;
          if (v176 && v177)
          {
            v95 = 0;
            v96 = 2 * v175;
            v97 = &v181[16 * v174 + v96];
            v98 = v172;
            v99 = v173;
            v100 = 32 * v177;
            if (v100)
            {
              v101 = (v100 - 1) >> 32 == 0;
            }

            else
            {
              v101 = 0;
            }

            v102 = !v101;
            v104 = v97 < &v172->i8[v173 * (v176 - 1) + v100] && v172 < &__dst[256 * v176 + 1792 + 256 * v174 + v100 + v96 * 16];
            v105 = v102 | (v173 < 0) | v104;
            v106 = &v181[16 * v174 + 1 + v96];
            v107 = v172 + 1;
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
                  v97->i8[v111] = v98->i8[v111];
                  ++v111;
                }

                while (v100 > v111);
              }

              else
              {
                do
                {
                  v112 = *v108;
                  v109[-1] = v108[-1];
                  *v109 = v112;
                  v109 += 2;
                  v108 += 2;
                  v110 -= 32;
                }

                while (v110);
              }

              ++v95;
              v106 += 16;
              v107 = (v107 + v99);
              v97 += 16;
              v98 = (v98 + v99);
            }

            while (v95 != v94);
          }

          v84 = v83;
          v114 = v170;
          v113 = v171;
          v115 = v178;
          v116 = v179;
          v117 = *(*(v167 + 208) + 52);
          if (v178 && v179)
          {
            if (v179 >= 4u)
            {
              v118 = 4;
            }

            else
            {
              v118 = v179;
            }

            if (v178 >= 4u)
            {
              v119 = 4;
            }

            else
            {
              v119 = v178;
            }

            v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v170, v171, v181, 256, v119, v118, v117);
          }

          else
          {
            *v171 = 0;
          }

          v120 = v115 - 4;
          if (v115 >= 5 && v116)
          {
            if (v116 >= 4)
            {
              v121 = 4;
            }

            else
            {
              v121 = v116;
            }

            if (v120 >= 4)
            {
              v122 = 4;
            }

            else
            {
              v122 = v115 - 4;
            }

            v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 1, v182, 256, v122, v121, v117);
            v123 = v116 - 4;
          }

          else
          {
            v113[1] = 0;
            v123 = v116 - 4;
            if (!v115)
            {
              goto LABEL_137;
            }
          }

          if (v116 < 5)
          {
LABEL_137:
            v113[2] = 0;
            if (v115 < 5)
            {
              goto LABEL_146;
            }

            goto LABEL_138;
          }

          if (v123 >= 4)
          {
            v124 = 4;
          }

          else
          {
            v124 = v123;
          }

          if (v115 >= 4)
          {
            v125 = 4;
          }

          else
          {
            v125 = v115;
          }

          v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 2, v183, 256, v125, v124, v117);
          if (v115 < 5)
          {
            goto LABEL_146;
          }

LABEL_138:
          if (v116 >= 5)
          {
            if (v123 >= 4)
            {
              v126 = 4;
            }

            else
            {
              v126 = v123;
            }

            if (v120 >= 4)
            {
              v127 = 4;
            }

            else
            {
              v127 = v115 - 4;
            }

            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 3, v184, 256, v127, v126, v117);
            goto LABEL_147;
          }

LABEL_146:
          v113[3] = 0;
LABEL_147:
          v14 = v149;
          v16 = v151;
LABEL_148:
          result = v167;
          if (v166)
          {
            memcpy(__src, v84, 0x800uLL);
            result = v167;
          }

          v29 = v42++ == v158 >> 3;
        }

        while (!v29);
        v29 = v25++ == v148;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v228 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v196 = a8;
  v17 = a8 >> 3;
  v178 = a8 + a10 - 1;
  v180 = v178 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
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
  v198 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v180)
  {
    v188 = a7 + a9 - 1;
    if (a7 >> 3 <= v188 >> 3)
    {
      v197 = (a5 - 1) >> 3;
      v175 = a5 - 1;
      v181 = (a5 - 1) & 7;
      v176 = (a6 - 1) & 7;
      v177 = (a6 - 1) >> 3;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      v27.i64[0] = -1;
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v186 = v28.i64[0];
      v187 = v28.i32[0] | v28.i32[1];
      v185 = v26.i64[0];
      v174 = 8 * v19 * v18;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v196)
        {
          v30 = v196;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v178 < v29)
        {
          v29 = v178;
        }

        v195 = 8 * v17;
        v184 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v176;
        v183 = v32;
        v34 = v32 != 8;
        v35 = a7 >> 3;
        v36 = v176 + 1;
        if (v17 != v177)
        {
          v36 = 8;
          v33 = v34;
        }

        v182 = v33;
        v193 = a3 + (v30 - v196) * a11;
        v194 = v36;
        v192 = v36;
        do
        {
          v37 = 8 * v35;
          v38 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v35;
          }

          if (v188 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v35 == v197)
          {
            v42 = v181 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v195 >= v196 && v37 >= a7)
          {
            v44 = v40 != v181;
            if (v35 != v197)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v182;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v174 >> (*(a1 + 57) != 0);
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
              v67 = 0;
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
                v67 = 0;
                v69 = 8;
                v65 = 16;
              }
            }

            v162 = (v65 >> 3) - 1;
            if (v67)
            {
              v163 = 0;
            }

            else
            {
              v163 = 32 - __clz(~(-1 << -__clz(v162)));
            }

            v164 = (v69 >> 3) - 1;
            if (v68)
            {
              v165 = 0;
              if (v163)
              {
                goto LABEL_218;
              }
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
              if (v165 | v163)
              {
LABEL_218:
                v166 = 0;
                v167 = 0;
                v168 = v35 & v162;
                v169 = v17 & v164;
                v170 = v163 != 0;
                v171 = v165 != 0;
                v172 = 1;
                do
                {
                  --v163;
                  if (v170)
                  {
                    v167 |= (v172 & v168) << v166++;
                  }

                  else
                  {
                    v163 = 0;
                  }

                  --v165;
                  if (v171)
                  {
                    v167 |= (v172 & v169) << v166++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v172 *= 2;
                  --v166;
                  v171 = v165 != 0;
                  v170 = v163 != 0;
                }

                while (v165 | v163);
                v173 = v167 << 7;
                goto LABEL_230;
              }
            }

            v173 = 0;
LABEL_230:
            v52 = v173 + ((v37 / v65 + v195 / v69 * ((v65 + v175) / v65)) << 14);
            goto LABEL_52;
          }

          if (v187)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v185;
            v48 = BYTE4(v185);
            v51 = v186;
            v50 = HIDWORD(v186);
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v49 = v51 != 0;
              v48 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 7;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 7;
          if (v54 < 0x10)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 3) - 1)));
          }

          v56 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_77:
              v64 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_77;
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
              v60 |= (v63 & v35) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
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
LABEL_78:
          v70 = (a4 + v64);
          v71 = (v193 + 4 * (v39 - a7));
          v72 = (a2 + v52);
          if (v198)
          {
            if (!(v43 & 1 | (v42 < 8u) | (v192 < 8)))
            {
              v80 = v210;
LABEL_86:
              v81 = *(*(a1 + 208) + 52);
              v82 = a11;
              v83 = v80;
              v84 = (a4 + v64);
              v85 = v194;
              goto LABEL_197;
            }

            v73 = v72[13];
            v210[12] = v72[12];
            v210[13] = v73;
            v74 = v72[15];
            v211[0] = v72[14];
            v211[1] = v74;
            v75 = v72[9];
            v210[8] = v72[8];
            v210[9] = v75;
            v76 = v72[11];
            v210[10] = v72[10];
            v210[11] = v76;
            v77 = v72[5];
            v210[4] = v72[4];
            v210[5] = v77;
            v78 = v72[7];
            v210[6] = v72[6];
            v210[7] = v78;
            v79 = v72[1];
            v210[0] = *v72;
            v210[1] = v79;
            v28 = v72[2];
            v26 = v72[3];
            v80 = v210;
            v210[2] = v28;
            v210[3] = v26;
          }

          else
          {
            v80 = (a2 + v52);
            if (!(v43 & 1 | (v42 < 8u) | (v192 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v200 = v80;
          v208 = v42;
          v209 = v194;
          v204 = v184;
          v205 = v39 - v37;
          v201 = (a4 + v64);
          v202 = (v193 + 4 * (v39 - a7));
          v203 = a11;
          v206 = v183;
          v207 = v41;
          if ((v43 & 1) == 0)
          {
            v86 = *(a1 + 208);
            v87 = *(v86 + 52);
            v88 = *v70;
            if (*v70)
            {
              if (v88 < 0xF0)
              {
                if (v88 == 31)
                {
                  v28.i64[0] = v80->i64[0];
                  v26.i64[0] = v80->i64[1];
                  v27.i64[0] = v80[1].i64[0];
                  v90 = v80[1].i64[1];
                  v212.i64[0] = v80->i64[0];
                  v212.i64[1] = v27.i64[0];
                  v214.i64[0] = v26.i64[0];
                  v214.i64[1] = v90;
                  v89 = 32;
                }

                else if (v88 == 96)
                {
                  v28 = vld1q_dup_s8(v80->i8);
                  v212 = v28;
                  v214 = v28;
                  v89 = 1;
                }

                else
                {
                  v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v212, 32, v80, v88, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v212, 32, v80, v88, *(v86 + 52)).u64[0];
                v89 = 16;
              }
            }

            else
            {
              v89 = 0;
              v212 = 0uLL;
              v214 = 0uLL;
            }

            v91 = v80->u64 + v89;
            v92 = v70[1];
            if (v70[1])
            {
              if (v92 < 0xF0)
              {
                if (v92 == 31)
                {
                  v28.i64[0] = *v91;
                  v26.i64[0] = *(v91 + 8);
                  v27.i64[0] = *(v91 + 16);
                  v94 = *(v91 + 24);
                  v216.i64[0] = *v91;
                  v216.i64[1] = v27.i64[0];
                  v218.i64[0] = v26.i64[0];
                  v218.i64[1] = v94;
                  v93 = 32;
                }

                else if (v92 == 96)
                {
                  v28 = vld1q_dup_s8(v91);
                  v216 = v28;
                  v218 = v28;
                  v93 = 1;
                }

                else
                {
                  v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v216, 32, v91, v92, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v216, 32, v91, v92, v87).u64[0];
                v93 = 16;
              }
            }

            else
            {
              v93 = 0;
              v216 = 0uLL;
              v218 = 0uLL;
            }

            v95 = v91 + v93;
            v96 = v70[2];
            if (v70[2])
            {
              if (v96 < 0xF0)
              {
                if (v96 == 31)
                {
                  v28.i64[0] = *v95;
                  v26.i64[0] = *(v95 + 8);
                  v27.i64[0] = *(v95 + 16);
                  v98 = *(v95 + 24);
                  v213.i64[0] = *v95;
                  v213.i64[1] = v27.i64[0];
                  v215.i64[0] = v26.i64[0];
                  v215.i64[1] = v98;
                  v97 = 32;
                }

                else if (v96 == 96)
                {
                  v28 = vld1q_dup_s8(v95);
                  v213 = v28;
                  v215 = v28;
                  v97 = 1;
                }

                else
                {
                  v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 32, v95, v96, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v213, 32, v95, v96, v87).u64[0];
                v97 = 16;
              }
            }

            else
            {
              v97 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
            }

            v99 = v95 + v97;
            v100 = v70[3];
            if (v70[3])
            {
              if (v100 < 0xF0)
              {
                if (v100 == 31)
                {
                  v28.i64[0] = *v99;
                  v26.i64[0] = *(v99 + 8);
                  v27.i64[0] = *(v99 + 16);
                  v102 = *(v99 + 24);
                  v217.i64[0] = *v99;
                  v217.i64[1] = v27.i64[0];
                  v219.i64[0] = v26.i64[0];
                  v219.i64[1] = v102;
                  v101 = 32;
                }

                else if (v100 == 96)
                {
                  v28 = vld1q_dup_s8(v99);
                  v217 = v28;
                  v219 = v28;
                  v101 = 1;
                }

                else
                {
                  v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 32, v99, v100, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 32, v99, v100, v87).u64[0];
                v101 = 16;
              }
            }

            else
            {
              v101 = 0;
              v217 = 0uLL;
              v219 = 0uLL;
            }

            v103 = v99 + v101;
            v104 = v70[4];
            if (v70[4])
            {
              if (v104 < 0xF0)
              {
                if (v104 == 31)
                {
                  v28.i64[0] = *v103;
                  v26.i64[0] = *(v103 + 8);
                  v27.i64[0] = *(v103 + 16);
                  v106 = *(v103 + 24);
                  v220.i64[0] = *v103;
                  v220.i64[1] = v27.i64[0];
                  v222.i64[0] = v26.i64[0];
                  v222.i64[1] = v106;
                  v105 = 32;
                }

                else if (v104 == 96)
                {
                  v28 = vld1q_dup_s8(v103);
                  v220 = v28;
                  v222 = v28;
                  v105 = 1;
                }

                else
                {
                  v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v220, 32, v103, v104, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v220, 32, v103, v104, v87).u64[0];
                v105 = 16;
              }
            }

            else
            {
              v105 = 0;
              v220 = 0uLL;
              v222 = 0uLL;
            }

            v107 = v103 + v105;
            v108 = v70[5];
            if (v70[5])
            {
              if (v108 < 0xF0)
              {
                if (v108 == 31)
                {
                  v28.i64[0] = *v107;
                  v26.i64[0] = *(v107 + 8);
                  v27.i64[0] = *(v107 + 16);
                  v110 = *(v107 + 24);
                  v224.i64[0] = *v107;
                  v224.i64[1] = v27.i64[0];
                  v226.i64[0] = v26.i64[0];
                  v226.i64[1] = v110;
                  v109 = 32;
                }

                else if (v108 == 96)
                {
                  v28 = vld1q_dup_s8(v107);
                  v224 = v28;
                  v226 = v28;
                  v109 = 1;
                }

                else
                {
                  v109 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v224, 32, v107, v108, *v28.i64, *v26.i8);
                }
              }

              else
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v224, 32, v107, v108, v87).u64[0];
                v109 = 16;
              }
            }

            else
            {
              v109 = 0;
              v224 = 0uLL;
              v226 = 0uLL;
            }

            v111 = v107 + v109;
            v112 = v70[6];
            if (v70[6])
            {
              if (v112 >= 0xF0)
              {
                v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v221, 32, v111, v112, v87).u64[0];
                v113 = 16;
                v114 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_162;
                }

LABEL_152:
                v116 = v111 + v113;
                if (v114 >= 0xF0)
                {
                  v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 32, v116, v114, v87).u64[0];
                  v117 = v206;
                  if (!v206)
                  {
                    goto LABEL_196;
                  }

LABEL_165:
                  v119 = v207;
                  if (!v207)
                  {
                    goto LABEL_196;
                  }

                  v120 = 0;
                  v121 = 4 * v205;
                  v122 = &v212.i8[32 * v204 + v121];
                  v123 = v202;
                  v124 = v203;
                  v125 = 4 * v207;
                  if (4 * v207)
                  {
                    v126 = (4 * v207 - 1) >> 32 == 0;
                  }

                  else
                  {
                    v126 = 0;
                  }

                  v127 = !v126;
                  v129 = v122 < &v202->i8[4 * v207 + v203 * (v117 - 1)] && v202 < (&v211[2 * v117 + 2 * v204] + 4 * v207 + v121);
                  v130 = v129 || v203 < 0;
                  v131 = v125 & 0x1FFFFFFE0;
                  v132 = v125 & 0x1FFFFFFF8;
                  v133 = (v207 == 1) | v127 | v130;
                  v134 = &v213.i8[32 * v204 + v121];
                  v135 = v202 + 1;
                  v136 = v122;
                  v137 = v202;
                  while (2)
                  {
                    v138 = &v123->i8[v120 * v124];
                    v139 = &v122[32 * v120];
                    if (v133)
                    {
                      v140 = 0;
LABEL_193:
                      v149 = v140 + 1;
                      do
                      {
                        v150 = *v138++;
                        *v139++ = v150;
                      }

                      while (v125 > v149++);
                    }

                    else
                    {
                      if (v119 >= 8)
                      {
                        v142 = v135;
                        v143 = v134;
                        v144 = v125 & 0x1FFFFFFE0;
                        do
                        {
                          v28 = v142[-1];
                          v26 = *v142;
                          v143[-1] = v28;
                          *v143 = v26;
                          v143 += 2;
                          v142 += 2;
                          v144 -= 32;
                        }

                        while (v144);
                        if (v125 == v131)
                        {
                          goto LABEL_179;
                        }

                        v141 = v125 & 0x1FFFFFFE0;
                        if ((v119 & 6) == 0)
                        {
                          v138 += v131;
                          v139 += v131;
                          v140 = v125 & 0xFFFFFFE0;
                          goto LABEL_193;
                        }
                      }

                      else
                      {
                        v141 = 0;
                      }

                      v139 += v132;
                      v145 = -8 * ((v119 >> 1) & 0x3FFFFFFF) + v141;
                      v146 = (v137->i64 + v141);
                      v147 = &v136[v141];
                      do
                      {
                        v148 = *v146++;
                        v28.i64[0] = v148;
                        *v147++ = v148;
                        v145 += 8;
                      }

                      while (v145);
                      if (v125 != v132)
                      {
                        v138 += v132;
                        v140 = v125 & 0xFFFFFFF8;
                        goto LABEL_193;
                      }
                    }

LABEL_179:
                    ++v120;
                    v134 += 32;
                    v135 = (v135 + v124);
                    v137 = (v137 + v124);
                    v136 += 32;
                    if (v120 == v117)
                    {
                      goto LABEL_196;
                    }

                    continue;
                  }
                }

                if (v114 == 31)
                {
                  v28.i64[0] = *v116;
                  v26.i64[0] = *(v116 + 8);
                  v27.i64[0] = *(v116 + 16);
                  v118 = *(v116 + 24);
                  v225.i64[0] = *v116;
                  v225.i64[1] = v27.i64[0];
                  v227.i64[0] = v26.i64[0];
                  v227.i64[1] = v118;
                  v117 = v206;
                  if (v206)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  if (v114 != 96)
                  {
                    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 32, v116, v114, *v28.i64, *v26.i8);
                    v117 = v206;
                    if (!v206)
                    {
                      goto LABEL_196;
                    }

                    goto LABEL_165;
                  }

                  v28 = vld1q_dup_s8(v116);
                  v225 = v28;
                  v227 = v28;
                  v117 = v206;
                  if (v206)
                  {
                    goto LABEL_165;
                  }
                }

LABEL_196:
                v83 = v200;
                v84 = v201;
                v42 = v208;
                v85 = v209;
                v81 = *(*(a1 + 208) + 52);
                v71 = &v212;
                v82 = 32;
LABEL_197:
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v71, v82, v83, v84, v42, v85, v81, *v28.i8, *v26.i64, *v27.i8);
                if (!v198)
                {
                  goto LABEL_26;
                }

                goto LABEL_198;
              }

              if (v112 == 31)
              {
                v28.i64[0] = *v111;
                v26.i64[0] = *(v111 + 8);
                v27.i64[0] = *(v111 + 16);
                v115 = *(v111 + 24);
                v221.i64[0] = *v111;
                v221.i64[1] = v27.i64[0];
                v223.i64[0] = v26.i64[0];
                v223.i64[1] = v115;
                v113 = 32;
                v114 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              if (v112 != 96)
              {
                v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v221, 32, v111, v112, *v28.i64, *v26.i8);
                v114 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              v28 = vld1q_dup_s8(v111);
              v221 = v28;
              v223 = v28;
              v113 = 1;
              v114 = v70[7];
              if (v70[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v113 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v114 = v70[7];
              if (v70[7])
              {
                goto LABEL_152;
              }
            }

LABEL_162:
            v225 = 0uLL;
            v227 = 0uLL;
            v117 = v206;
            if (v206)
            {
              goto LABEL_165;
            }

            goto LABEL_196;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v198)
          {
            goto LABEL_26;
          }

LABEL_198:
          v152 = *v80;
          v153 = v80[1];
          v154 = v80[3];
          v72[2] = v80[2];
          v72[3] = v154;
          *v72 = v152;
          v72[1] = v153;
          v155 = v80[4];
          v156 = v80[5];
          v157 = v80[7];
          v72[6] = v80[6];
          v72[7] = v157;
          v72[4] = v155;
          v72[5] = v156;
          v158 = v80[8];
          v159 = v80[9];
          v160 = v80[11];
          v72[10] = v80[10];
          v72[11] = v160;
          v72[8] = v158;
          v72[9] = v159;
          v28 = v80[12];
          v26 = v80[13];
          v27 = v80[14];
          v161 = v80[15];
          v72[14] = v27;
          v72[15] = v161;
          v72[12] = v28;
          v72[13] = v26;
LABEL_26:
          v21 = v35++ == v188 >> 3;
        }

        while (!v21);
        v21 = v17++ == v180;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v17 = a8 >> 3;
  v134 = a8 + a10 - 1;
  v136 = v134 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v154 = a1;
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
    v133 = a7 >> 3;
    if (a7 >> 3 <= v144 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 7;
      v131 = (a6 - 1) & 7;
      v132 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v141 = v27;
      v129 = 8 * v19 * v18;
      v143 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v152)
        {
          v29 = v152;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v134 < v28)
        {
          v28 = v134;
        }

        v151 = 8 * v17;
        v140 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v131;
        v139 = v31;
        v33 = v31 != 8;
        v34 = v133;
        v35 = v131 + 1;
        if (v17 != v132)
        {
          v35 = 8;
          v32 = v33;
        }

        v138 = v32;
        v149 = a3 + (v29 - v152) * a11;
        v150 = v35;
        v148 = v35;
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

          if (v144 < v37)
          {
            v37 = v144;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v137 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v151 >= v152 && v36 >= a7)
          {
            v43 = v39 != v137;
            if (v34 != v153)
            {
              v43 = v40 != 8;
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

            v117 = (v64 >> 3) - 1;
            if (v66)
            {
              v118 = 0;
            }

            else
            {
              v118 = 32 - __clz(~(-1 << -__clz(v117)));
            }

            v119 = (v68 >> 3) - 1;
            if (v67)
            {
              v120 = 0;
              if (v118)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v120 = 32 - __clz(~(-1 << -__clz(v119)));
              if (v120 | v118)
              {
LABEL_141:
                v121 = 0;
                v122 = 0;
                v123 = v34 & v117;
                v124 = v17 & v119;
                v125 = v118 != 0;
                v126 = v120 != 0;
                v127 = 1;
                do
                {
                  --v118;
                  if (v125)
                  {
                    v122 |= (v127 & v123) << v121++;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  --v120;
                  if (v126)
                  {
                    v122 |= (v127 & v124) << v121++;
                  }

                  else
                  {
                    v120 = 0;
                  }

                  v127 *= 2;
                  --v121;
                  v126 = v120 != 0;
                  v125 = v118 != 0;
                }

                while (v120 | v118);
                v128 = v122 << 9;
                result = v154;
                goto LABEL_153;
              }
            }

            v128 = 0;
LABEL_153:
            v51 = v128 + ((v36 / v64 + v151 / v68 * ((v64 + v130) / v64)) << 14);
            goto LABEL_53;
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
          v70 = v149 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v148 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v74, v69, v41, v150, *(*(result + 208) + 52));
LABEL_87:
              a7 = v143;
              if (v155)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v40;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v40 = v72;
            result = v154;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v148 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v74;
          v165 = v41;
          v166 = v150;
          v161 = v140;
          v162 = v38 - v36;
          v158 = v69;
          v159 = v70;
          v160 = a11;
          v163 = v139;
          v164 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = *(*(result + 208) + 52);
          v76 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v168, 128, v74, *v69, v75)];
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v170, 128, v76, v69[1], v75);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v169, 128, v77, v69[2], v75);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 128, v78, v69[3], v75);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v172, 128, v79, v69[4], v75);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v174, 128, v80, v69[5], v75);
          v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 128, v81, v69[6], v75);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v175, 128, v81 + v82, v69[7], v75);
          v83 = v163;
          a7 = v143;
          if (v163)
          {
            v84 = v164;
            if (v164)
            {
              v85 = 0;
              v86 = v161 << 7;
              v87 = 16 * v162;
              v88 = &v168[v86 + v87];
              v89 = v159;
              v90 = v160;
              v91 = 16 * v164;
              if (16 * v164)
              {
                v92 = (16 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v92 = 0;
              }

              v93 = !v92;
              v95 = v88 < v159 + v160 * (v163 - 1) + 16 * v164 && v159 < &__dst[128 * v163 + 896 + 128 * v161 + 16 * v164 + v87];
              v96 = v91 & 0x1FFFFFFE0;
              v97 = v93 | (v160 < 0) | v95;
              v98 = &v168[v86 + 16 + v87];
              v99 = (v159 + 16);
              v100 = v88;
              v101 = v159;
              do
              {
                v102 = (v89 + v85 * v90);
                v103 = &v88[128 * v85];
                if (v97)
                {
                  v104 = 0;
                }

                else
                {
                  if (v84 == 1)
                  {
                    v108 = 0;
LABEL_112:
                    v109 = -16 * v84 + v108;
                    v110 = (v101 + v108);
                    v111 = &v100[v108];
                    do
                    {
                      v112 = *v110++;
                      *v111++ = v112;
                      v109 += 16;
                    }

                    while (v109);
                    goto LABEL_104;
                  }

                  v113 = v99;
                  v114 = v98;
                  v115 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v116 = *v113;
                    *(v114 - 1) = *(v113 - 1);
                    *v114 = v116;
                    v114 += 2;
                    v113 += 2;
                    v115 -= 32;
                  }

                  while (v115);
                  if (v91 == v96)
                  {
                    goto LABEL_104;
                  }

                  v108 = v91 & 0x1FFFFFFE0;
                  if (v84)
                  {
                    goto LABEL_112;
                  }

                  v102 += v96;
                  v103 += v96;
                  v104 = v91 & 0xFFFFFFE0;
                }

                v105 = v104 + 1;
                do
                {
                  v106 = *v102++;
                  *v103++ = v106;
                }

                while (v91 > v105++);
LABEL_104:
                ++v85;
                v98 += 128;
                v99 = (v99 + v90);
                v101 += v90;
                v100 += 128;
              }

              while (v85 != v83);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v168, 128, v157, v158, v165, v166, *(*(v154 + 208) + 52));
          if (v155)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v144 >> 3;
          result = v154;
        }

        while (!v21);
        v21 = v17++ == v136;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v228 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v230 = a1;
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
  v232 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v221 = result;
  if (v17 <= v212)
  {
    v220 = a7 + a9 - 1;
    v209 = a7 >> 3;
    if (a7 >> 3 <= v220 >> 3)
    {
      result = a1;
      v229 = (a5 - 1) >> 3;
      v206 = a5 - 1;
      v213 = (a5 - 1) & 7;
      v207 = (a6 - 1) & 7;
      v208 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v218 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v217 = v27;
      v205 = 8 * v19 * v18;
      v219 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v228)
        {
          v29 = v228;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v227 = 8 * v17;
        v216 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v207;
        v215 = v31;
        v33 = v31 != 8;
        v34 = v209;
        v35 = v207 + 1;
        if (v17 != v208)
        {
          v35 = 8;
          v32 = v33;
        }

        v214 = v32;
        v225 = a3 + (v29 - v228) * a11;
        v226 = v35;
        v224 = v35;
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

          if (v220 < v37)
          {
            v37 = v220;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v229)
          {
            v41 = v213 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v227 >= v228 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v214;
          }

          if (v221)
          {
            v64 = 0;
            v65 = v205 >> (*(result + 57) != 0);
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

            v193 = (v64 >> 3) - 1;
            if (v66)
            {
              v194 = 0;
            }

            else
            {
              v194 = 32 - __clz(~(-1 << -__clz(v193)));
            }

            v195 = (v68 >> 3) - 1;
            if (v67)
            {
              v196 = 0;
              if (v194)
              {
                goto LABEL_216;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_216:
                v197 = 0;
                v198 = 0;
                v199 = v34 & v193;
                v200 = v17 & v195;
                v201 = v194 != 0;
                v202 = v196 != 0;
                v203 = 1;
                do
                {
                  --v194;
                  if (v201)
                  {
                    v198 |= (v203 & v199) << v197++;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  --v196;
                  if (v202)
                  {
                    v198 |= (v203 & v200) << v197++;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v203 *= 2;
                  --v197;
                  v202 = v196 != 0;
                  v201 = v194 != 0;
                }

                while (v196 | v194);
                v204 = v198 << 9;
                result = v230;
                goto LABEL_228;
              }
            }

            v204 = 0;
LABEL_228:
            v51 = v204 + ((v36 / v64 + v227 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_53;
          }

          if (v218)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v217.i8[4];
            v48 = v217.i8[0];
            v49 = v218.i32[1];
            v50 = v218.i32[0];
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
          v70 = v225 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v232)
          {
            v71 = v244;
            if (!(v42 & 1 | (v41 < 8u) | (v224 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v244, __dst, sizeof(v244));
            result = v230;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v224 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v226, *(*(result + 208) + 52));
LABEL_86:
            a7 = v219;
            if (v232)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v234 = v71;
          v242 = v41;
          v243 = v226;
          v238 = v216;
          v239 = v38 - v36;
          v235 = v69;
          v236 = v70;
          v237 = a11;
          v240 = v215;
          v241 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v72 = *(result + 208);
          v73 = *(v72 + 52);
          v74 = *v69;
          if (*v69)
          {
            if (v74 < 0xF0)
            {
              if (v74 == 127)
              {
                v77 = v71[1];
                v78 = v71[2];
                v79 = v71[3];
                v80 = v71[4];
                v81 = v71[5];
                v82 = v71[6];
                v83 = v71[7];
                v245 = *v71;
                v246 = v77;
                v247 = v80;
                v248 = v81;
                v253 = v78;
                v254 = v79;
                v255 = v82;
                v256 = v83;
                v75 = 128;
              }

              else if (v74 == 3)
              {
                v76 = vld1q_dup_f32(v71->f32);
                v245 = v76;
                v246 = v76;
                v247 = v76;
                v248 = v76;
                v253 = v76;
                v254 = v76;
                v255 = v76;
                v256 = v76;
                v75 = 4;
              }

              else
              {
                v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 128, v71, v74);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v245, 128, v71, v74, *(v72 + 52));
              v75 = 64;
            }
          }

          else
          {
            v75 = 0;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
          }

          v84 = v71 + v75;
          v85 = v69[1];
          if (v69[1])
          {
            if (v85 < 0xF0)
            {
              if (v85 == 127)
              {
                v88 = *(v84 + 16);
                v89 = *(v84 + 32);
                v90 = *(v84 + 48);
                v91 = *(v84 + 64);
                v92 = *(v84 + 80);
                v93 = *(v84 + 96);
                v94 = *(v84 + 112);
                v261 = *v84;
                v262 = v88;
                v263 = v91;
                v264 = v92;
                v269 = v89;
                v270 = v90;
                v271 = v93;
                v272 = v94;
                v86 = 128;
              }

              else if (v85 == 3)
              {
                v87 = vld1q_dup_f32(v84);
                v261 = v87;
                v262 = v87;
                v263 = v87;
                v264 = v87;
                v269 = v87;
                v270 = v87;
                v271 = v87;
                v272 = v87;
                v86 = 4;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v261, 128, v84, v85);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v261, 128, v84, v85, v73);
              v86 = 64;
            }
          }

          else
          {
            v86 = 0;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
          }

          v95 = v84 + v86;
          v96 = v69[2];
          if (v69[2])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 127)
              {
                v99 = *(v95 + 16);
                v100 = *(v95 + 32);
                v101 = *(v95 + 48);
                v102 = *(v95 + 64);
                v103 = *(v95 + 80);
                v104 = *(v95 + 96);
                v105 = *(v95 + 112);
                v249 = *v95;
                v250 = v99;
                v251 = v102;
                v252 = v103;
                v257 = v100;
                v258 = v101;
                v259 = v104;
                v260 = v105;
                v97 = 128;
              }

              else if (v96 == 3)
              {
                v98 = vld1q_dup_f32(v95);
                v249 = v98;
                v250 = v98;
                v251 = v98;
                v252 = v98;
                v257 = v98;
                v258 = v98;
                v259 = v98;
                v260 = v98;
                v97 = 4;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 128, v95, v96);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v249, 128, v95, v96, v73);
              v97 = 64;
            }
          }

          else
          {
            v97 = 0;
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v257 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
          }

          v106 = v95 + v97;
          v107 = v69[3];
          if (v69[3])
          {
            if (v107 < 0xF0)
            {
              if (v107 == 127)
              {
                v110 = *(v106 + 16);
                v111 = *(v106 + 32);
                v112 = *(v106 + 48);
                v113 = *(v106 + 64);
                v114 = *(v106 + 80);
                v115 = *(v106 + 96);
                v116 = *(v106 + 112);
                v265 = *v106;
                v266 = v110;
                v267 = v113;
                v268 = v114;
                v273 = v111;
                v274 = v112;
                v275 = v115;
                v276 = v116;
                v108 = 128;
              }

              else if (v107 == 3)
              {
                v109 = vld1q_dup_f32(v106);
                v265 = v109;
                v266 = v109;
                v267 = v109;
                v268 = v109;
                v273 = v109;
                v274 = v109;
                v275 = v109;
                v276 = v109;
                v108 = 4;
              }

              else
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v265, 128, v106, v107);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v265, 128, v106, v107, v73);
              v108 = 64;
            }
          }

          else
          {
            v108 = 0;
            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
          }

          v117 = v106 + v108;
          v118 = v69[4];
          if (v69[4])
          {
            if (v118 < 0xF0)
            {
              if (v118 == 127)
              {
                v121 = *(v117 + 16);
                v122 = *(v117 + 32);
                v123 = *(v117 + 48);
                v124 = *(v117 + 64);
                v125 = *(v117 + 80);
                v126 = *(v117 + 96);
                v127 = *(v117 + 112);
                v277 = *v117;
                v278 = v121;
                v279 = v124;
                v280 = v125;
                v285 = v122;
                v286 = v123;
                v287 = v126;
                v288 = v127;
                v119 = 128;
              }

              else if (v118 == 3)
              {
                v120 = vld1q_dup_f32(v117);
                v277 = v120;
                v278 = v120;
                v279 = v120;
                v280 = v120;
                v285 = v120;
                v286 = v120;
                v287 = v120;
                v288 = v120;
                v119 = 4;
              }

              else
              {
                v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v277, 128, v117, v118);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v277, 128, v117, v118, v73);
              v119 = 64;
            }
          }

          else
          {
            v119 = 0;
            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
            v288 = 0u;
          }

          v128 = v117 + v119;
          v129 = v69[5];
          if (v69[5])
          {
            if (v129 < 0xF0)
            {
              if (v129 == 127)
              {
                v132 = *(v128 + 16);
                v133 = *(v128 + 32);
                v134 = *(v128 + 48);
                v135 = *(v128 + 64);
                v136 = *(v128 + 80);
                v137 = *(v128 + 96);
                v138 = *(v128 + 112);
                v293 = *v128;
                v294 = v132;
                v295 = v135;
                v296 = v136;
                v301 = v133;
                v302 = v134;
                v303 = v137;
                v304 = v138;
                v130 = 128;
              }

              else if (v129 == 3)
              {
                v131 = vld1q_dup_f32(v128);
                v293 = v131;
                v294 = v131;
                v295 = v131;
                v296 = v131;
                v301 = v131;
                v302 = v131;
                v303 = v131;
                v304 = v131;
                v130 = 4;
              }

              else
              {
                v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v293, 128, v128, v129);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v293, 128, v128, v129, v73);
              v130 = 64;
            }
          }

          else
          {
            v130 = 0;
            v295 = 0u;
            v296 = 0u;
            v293 = 0u;
            v294 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
          }

          v139 = v128 + v130;
          v140 = v69[6];
          if (v69[6])
          {
            if (v140 < 0xF0)
            {
              if (v140 == 127)
              {
                v179 = *(v139 + 16);
                v180 = *(v139 + 32);
                v181 = *(v139 + 48);
                v182 = *(v139 + 64);
                v183 = *(v139 + 80);
                v184 = *(v139 + 96);
                v185 = *(v139 + 112);
                v281 = *v139;
                v282 = v179;
                v283 = v182;
                v284 = v183;
                v289 = v180;
                v290 = v181;
                v291 = v184;
                v292 = v185;
                v141 = 128;
                v142 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v140 == 3)
              {
                v177 = vld1q_dup_f32(v139);
                v281 = v177;
                v282 = v177;
                v283 = v177;
                v284 = v177;
                v289 = v177;
                v290 = v177;
                v291 = v177;
                v292 = v177;
                v141 = 4;
                v142 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v281, 128, v139, v140);
                v142 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v299 = 0u;
                  v300 = 0u;
                  v297 = 0u;
                  v298 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v281, 128, v139, v140, v73);
              v141 = 64;
              v142 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v141 = 0;
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v142 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v143 = v139 + v141;
          if (v142 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v297, 128, v143, v142, v73);
LABEL_149:
            a7 = v219;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }

            goto LABEL_150;
          }

          a7 = v219;
          if (v142 == 127)
          {
            v186 = *(v143 + 16);
            v187 = *(v143 + 32);
            v188 = *(v143 + 48);
            v189 = *(v143 + 64);
            v190 = *(v143 + 80);
            v191 = *(v143 + 96);
            v192 = *(v143 + 112);
            v297 = *v143;
            v298 = v186;
            v299 = v189;
            v300 = v190;
            v305 = v187;
            v306 = v188;
            v307 = v191;
            v308 = v192;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

          else if (v142 == 3)
          {
            v178 = vld1q_dup_f32(v143);
            v297 = v178;
            v298 = v178;
            v299 = v178;
            v300 = v178;
            v305 = v178;
            v306 = v178;
            v307 = v178;
            v308 = v178;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v297, 128, v143, v142);
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

LABEL_150:
          v145 = v241;
          if (v241)
          {
            v146 = 0;
            v147 = 16 * v239;
            v148 = &v245.i8[128 * v238 + v147];
            v149 = v236;
            v150 = v237;
            v151 = 16 * v241;
            if (16 * v241)
            {
              v152 = (16 * v241 - 1) >> 32 == 0;
            }

            else
            {
              v152 = 0;
            }

            v153 = !v152;
            v155 = v148 < v236 + v237 * (v144 - 1) + 16 * v241 && v236 < &v244[128 * v144 + 896 + 128 * v238 + 16 * v241 + v147];
            v156 = v151 & 0x1FFFFFFE0;
            v157 = v153 | (v237 < 0) | v155;
            v158 = &v246 + 128 * v238 + v147;
            v159 = (v236 + 16);
            v160 = v148;
            v161 = v236;
            do
            {
              v162 = (v149 + v146 * v150);
              v163 = &v148[128 * v146];
              if (v157)
              {
                v164 = 0;
              }

              else
              {
                if (v145 == 1)
                {
                  v168 = 0;
LABEL_172:
                  v169 = -16 * v145 + v168;
                  v170 = (v161 + v168);
                  v171 = &v160[v168];
                  do
                  {
                    v172 = *v170++;
                    *v171 = v172;
                    v171 += 16;
                    v169 += 16;
                  }

                  while (v169);
                  goto LABEL_164;
                }

                v173 = v159;
                v174 = v158;
                v175 = v151 & 0x1FFFFFFE0;
                do
                {
                  v176 = *v173;
                  *(v174 - 1) = *(v173 - 1);
                  *v174 = v176;
                  v174 += 2;
                  v173 += 2;
                  v175 -= 32;
                }

                while (v175);
                if (v151 == v156)
                {
                  goto LABEL_164;
                }

                v168 = v151 & 0x1FFFFFFE0;
                if (v145)
                {
                  goto LABEL_172;
                }

                v162 += v156;
                v163 += v156;
                v164 = v151 & 0xFFFFFFE0;
              }

              v165 = v164 + 1;
              do
              {
                v166 = *v162++;
                *v163++ = v166;
              }

              while (v151 > v165++);
LABEL_164:
              ++v146;
              v158 += 128;
              v159 = (v159 + v150);
              v161 += v150;
              v160 += 128;
            }

            while (v146 != v144);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v245, 128, v234, v235, v242, v243, *(*(v230 + 208) + 52));
          if (v232)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v220 >> 3;
          result = v230;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v230 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v17 = a8 >> 3;
  v162 = a8 + a10 - 1;
  v164 = v162 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v183 = a1;
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
  v185 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v174 = result;
  if (v17 <= v164)
  {
    v173 = a7 + a9 - 1;
    v161 = a7 >> 3;
    if (a7 >> 3 <= v173 >> 3)
    {
      result = a1;
      v182 = (a5 - 1) >> 3;
      v158 = a5 - 1;
      v165 = (a5 - 1) & 7;
      v159 = (a6 - 1) & 7;
      v160 = (a6 - 1) >> 3;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v31.i8 = vcgt_u32(v30, 0xF0000000FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      v34 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 3uLL))))))), *v31.i8);
      v170 = v34;
      v171 = v34.i32[0] | v34.i32[1];
      v169 = v31.i64[0];
      v157 = 8 * v19 * v18;
      v172 = a7;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v181)
        {
          v36 = v181;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v162 < v35)
        {
          v35 = v162;
        }

        v180 = 8 * v17;
        v168 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v159;
        v167 = v38;
        v40 = v38 != 8;
        v41 = v161;
        v42 = v159 + 1;
        if (v17 != v160)
        {
          v42 = 8;
          v39 = v40;
        }

        v166 = v39;
        v178 = a3 + (v36 - v181) * a11;
        v179 = v42;
        v177 = v42;
        do
        {
          v43 = 8 * v41;
          v44 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= a7)
          {
            v45 = a7;
          }

          else
          {
            v45 = 8 * v41;
          }

          if (v173 < v44)
          {
            v44 = v173;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v182)
          {
            v48 = v165 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v180 >= v181 && v43 >= a7)
          {
            v50 = v46 != v165;
            if (v41 != v182)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v166;
          }

          if (v174)
          {
            v71 = 0;
            v72 = v157 >> (*(result + 57) != 0);
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
              v74 = 0;
              v75 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v73 = 0;
              v74 = 0;
              v71 = 16;
              v75 = 16;
            }

            else
            {
              v74 = 1;
              v75 = 0;
              if (v72 == 1024)
              {
                v73 = 0;
                v75 = 8;
                v71 = 16;
              }
            }

            v145 = (v71 >> 3) - 1;
            if (v73)
            {
              v146 = 0;
            }

            else
            {
              v146 = 32 - __clz(~(-1 << -__clz(v145)));
            }

            v147 = (v75 >> 3) - 1;
            if (v74)
            {
              v148 = 0;
              if (v146)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v148 = 32 - __clz(~(-1 << -__clz(v147)));
              if (v148 | v146)
              {
LABEL_215:
                v149 = 0;
                v150 = 0;
                v151 = v41 & v145;
                v152 = v17 & v147;
                v153 = v146 != 0;
                v154 = v148 != 0;
                v155 = 1;
                do
                {
                  --v146;
                  if (v153)
                  {
                    v150 |= (v155 & v151) << v149++;
                  }

                  else
                  {
                    v146 = 0;
                  }

                  --v148;
                  if (v154)
                  {
                    v150 |= (v155 & v152) << v149++;
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v155 *= 2;
                  --v149;
                  v154 = v148 != 0;
                  v153 = v146 != 0;
                }

                while (v148 | v146);
                v156 = v150 << 8;
                result = v183;
                goto LABEL_227;
              }
            }

            v156 = 0;
LABEL_227:
            v58 = v156 + ((v43 / v71 + v180 / v75 * ((v71 + v158) / v71)) << 14);
            goto LABEL_52;
          }

          if (v171)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v54 = v169;
            v55 = BYTE4(v169);
            v57 = v170.i32[0];
            v56 = v170.i32[1];
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
            v58 = v52 << 8;
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

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
          }

          v62 = *(result + 132) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
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
          v77 = v178 + 8 * (v45 - a7);
          v78 = (a2 + v58);
          __src = (a2 + v58);
          if (v185)
          {
            v78 = __dst;
            if (!(v49 & 1 | (v48 < 8u) | (v177 < 8)))
            {
              goto LABEL_84;
            }

            v79 = v47;
            memcpy(__dst, __src, sizeof(__dst));
            v47 = v79;
            result = v183;
          }

          else if (!(v49 & 1 | (v48 < 8u) | (v177 < 8)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v77, a11, v78, v76, v48, v179, *(*(result + 208) + 52), v34, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v187 = v78;
          v195 = v48;
          v196 = v179;
          v191 = v168;
          v192 = v45 - v43;
          v188 = v76;
          v189 = v77;
          v190 = a11;
          v193 = v167;
          v194 = v47;
          if ((v49 & 1) == 0)
          {
            v80 = *(result + 208);
            v81 = *(v80 + 52);
            v82 = *v76;
            if (*v76)
            {
              if (v82 < 0xF0)
              {
                if (v82 == 63)
                {
                  v83 = *v78;
                  v31 = v78[1];
                  v32 = v78[2];
                  v33 = v78[3];
                  v198 = *v78;
                  v199 = v32;
                  v202 = v31;
                  v203 = v33;
                  v84 = 64;
                }

                else if (v82 == 1)
                {
                  v83 = vld1q_dup_s16(v78->i16);
                  v198 = v83;
                  v199 = v83;
                  v202 = v83;
                  v203 = v83;
                  v84 = 2;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v198, 64, v78, v82, *&v34, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v83.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v198, 64, v78, v82, *(v80 + 52)).u64[0];
                v84 = 32;
              }
            }

            else
            {
              v84 = 0;
              v83.i64[0] = 0;
              v198 = 0u;
              v199 = 0u;
              v202 = 0u;
              v203 = 0u;
            }

            v85 = v78->u64 + v84;
            v86 = v76[1];
            if (v76[1])
            {
              if (v86 < 0xF0)
              {
                if (v86 == 63)
                {
                  v87 = *v85;
                  v31 = *(v85 + 16);
                  v32 = *(v85 + 32);
                  v33 = *(v85 + 48);
                  v206 = *v85;
                  v207 = v32;
                  v210 = v31;
                  v211 = v33;
                  v88 = 64;
                }

                else if (v86 == 1)
                {
                  v87 = vld1q_dup_s16(v85);
                  v206 = v87;
                  v207 = v87;
                  v210 = v87;
                  v211 = v87;
                  v88 = 2;
                }

                else
                {
                  v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v206, 64, v85, v86, *v83.i64, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v87.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v206, 64, v85, v86, v81).u64[0];
                v88 = 32;
              }
            }

            else
            {
              v88 = 0;
              v87.i64[0] = 0;
              v206 = 0u;
              v207 = 0u;
              v210 = 0u;
              v211 = 0u;
            }

            v89 = v85 + v88;
            v90 = v76[2];
            if (v76[2])
            {
              if (v90 < 0xF0)
              {
                if (v90 == 63)
                {
                  v91 = *v89;
                  v31 = *(v89 + 16);
                  v32 = *(v89 + 32);
                  v33 = *(v89 + 48);
                  v200 = *v89;
                  v201 = v32;
                  v204 = v31;
                  v205 = v33;
                  v92 = 64;
                }

                else if (v90 == 1)
                {
                  v91 = vld1q_dup_s16(v89);
                  v200 = v91;
                  v201 = v91;
                  v204 = v91;
                  v205 = v91;
                  v92 = 2;
                }

                else
                {
                  v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v200, 64, v89, v90, *v87.i64, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v91.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v200, 64, v89, v90, v81).u64[0];
                v92 = 32;
              }
            }

            else
            {
              v92 = 0;
              v91.i64[0] = 0;
              v200 = 0u;
              v201 = 0u;
              v204 = 0u;
              v205 = 0u;
            }

            v93 = v89 + v92;
            v94 = v76[3];
            if (v76[3])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 63)
                {
                  v95 = *v93;
                  v31 = *(v93 + 16);
                  v32 = *(v93 + 32);
                  v33 = *(v93 + 48);
                  v208 = *v93;
                  v209 = v32;
                  v212 = v31;
                  v213 = v33;
                  v96 = 64;
                }

                else if (v94 == 1)
                {
                  v95 = vld1q_dup_s16(v93);
                  v208 = v95;
                  v209 = v95;
                  v212 = v95;
                  v213 = v95;
                  v96 = 2;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v208, 64, v93, v94, *v91.i64, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v95.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v208, 64, v93, v94, v81).u64[0];
                v96 = 32;
              }
            }

            else
            {
              v96 = 0;
              v95.i64[0] = 0;
              v208 = 0u;
              v209 = 0u;
              v212 = 0u;
              v213 = 0u;
            }

            v97 = v93 + v96;
            v98 = v76[4];
            if (v76[4])
            {
              if (v98 < 0xF0)
              {
                if (v98 == 63)
                {
                  v99 = *v97;
                  v31 = *(v97 + 16);
                  v32 = *(v97 + 32);
                  v33 = *(v97 + 48);
                  v214 = *v97;
                  v215 = v32;
                  v218 = v31;
                  v219 = v33;
                  v100 = 64;
                }

                else if (v98 == 1)
                {
                  v99 = vld1q_dup_s16(v97);
                  v214 = v99;
                  v215 = v99;
                  v218 = v99;
                  v219 = v99;
                  v100 = 2;
                }

                else
                {
                  v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v214, 64, v97, v98, *v95.i64, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v99.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v214, 64, v97, v98, v81).u64[0];
                v100 = 32;
              }
            }

            else
            {
              v100 = 0;
              v99.i64[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v218 = 0u;
              v219 = 0u;
            }

            v101 = v97 + v100;
            v102 = v76[5];
            if (v76[5])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 63)
                {
                  v103 = *v101;
                  v31 = *(v101 + 16);
                  v32 = *(v101 + 32);
                  v33 = *(v101 + 48);
                  v222 = *v101;
                  v223 = v32;
                  v226 = v31;
                  v227 = v33;
                  v104 = 64;
                }

                else if (v102 == 1)
                {
                  v103 = vld1q_dup_s16(v101);
                  v222 = v103;
                  v223 = v103;
                  v226 = v103;
                  v227 = v103;
                  v104 = 2;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v222, 64, v101, v102, *v99.i64, *v31.i64, *v32.i64, *v33.i8);
                }
              }

              else
              {
                v103.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v222, 64, v101, v102, v81).u64[0];
                v104 = 32;
              }
            }

            else
            {
              v104 = 0;
              v103.i64[0] = 0;
              v222 = 0u;
              v223 = 0u;
              v226 = 0u;
              v227 = 0u;
            }

            v105 = v101 + v104;
            v106 = v76[6];
            if (v76[6])
            {
              if (v106 >= 0xF0)
              {
                v107.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v216, 64, v105, v106, v81).u64[0];
                v108 = 32;
                v109 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_160;
                }

LABEL_152:
                v110 = v105 + v108;
                if (v109 >= 0xF0)
                {
                  v111.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v224, 64, v110, v109, v81).u64[0];
                  goto LABEL_161;
                }

                a7 = v172;
                if (v109 != 63)
                {
                  if (v109 == 1)
                  {
                    v111 = vld1q_dup_s16(v110);
                    v224 = v111;
                    v225 = v111;
                    v228 = v111;
                    v229 = v111;
                    v112 = v193;
                    if (!v193)
                    {
LABEL_194:
                      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v198, 64, v187, v188, v195, v196, *(*(v183 + 208) + 52), *v111.i8, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
                      if (!v185)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_195;
                    }
                  }

                  else
                  {
                    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v224, 64, v110, v109, *v107.i64, *v31.i64, *v32.i64, *v33.i8);
                    v112 = v193;
                    if (!v193)
                    {
                      goto LABEL_194;
                    }
                  }

LABEL_163:
                  v113 = v194;
                  if (!v194)
                  {
                    goto LABEL_194;
                  }

                  v114 = 0;
                  v115 = v191 << 6;
                  v116 = 8 * v192;
                  v117 = &v198.i8[v115 + v116];
                  v118 = v189;
                  v119 = v190;
                  v120 = 8 * v194;
                  if (8 * v194)
                  {
                    v121 = (8 * v194 - 1) >> 32 == 0;
                  }

                  else
                  {
                    v121 = 0;
                  }

                  v122 = !v121;
                  v124 = v117 < &v189->i8[8 * v194 + v190 * (v112 - 1)] && v189 < &__dst[64 * v112 + 448 + 64 * v191 + 8 * v194 + v116];
                  v125 = v120 & 0x1FFFFFFE0;
                  v126 = v122 | (v190 < 0) | v124;
                  v127 = &v199.i8[v115 + v116];
                  v128 = v189 + 1;
                  v129 = v117;
                  v130 = v189;
                  while (2)
                  {
                    v131 = (v118 + v114 * v119);
                    v132 = &v117[64 * v114];
                    if (v126)
                    {
                      v133 = 0;
LABEL_180:
                      v134 = v133 + 1;
                      do
                      {
                        v135 = *v131++;
                        *v132++ = v135;
                      }

                      while (v120 > v134++);
LABEL_177:
                      ++v114;
                      v127 += 64;
                      v128 = (v128 + v119);
                      v130 += v119;
                      v129 += 64;
                      if (v114 == v112)
                      {
                        goto LABEL_194;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v113 >= 4)
                  {
                    v138 = v128;
                    v139 = v127;
                    v140 = v120 & 0x1FFFFFFE0;
                    do
                    {
                      v111 = v138[-1];
                      v31 = *v138;
                      v139[-1] = v111;
                      *v139 = v31;
                      v139 += 2;
                      v138 += 2;
                      v140 -= 32;
                    }

                    while (v140);
                    if (v120 == v125)
                    {
                      goto LABEL_177;
                    }

                    v137 = v120 & 0x1FFFFFFE0;
                    if ((v113 & 3) == 0)
                    {
                      v131 += v125;
                      v132 += v125;
                      v133 = v120 & 0xFFFFFFE0;
                      goto LABEL_180;
                    }
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v141 = -8 * v113 + v137;
                  v142 = (v130 + v137);
                  v143 = &v129[v137];
                  do
                  {
                    v144 = *v142++;
                    v111.i64[0] = v144;
                    *v143++ = v144;
                    v141 += 8;
                  }

                  while (v141);
                  goto LABEL_177;
                }

                v111 = *v110;
                v31 = *(v110 + 16);
                v32 = *(v110 + 32);
                v33 = *(v110 + 48);
                v224 = *v110;
                v225 = v32;
                v228 = v31;
                v229 = v33;
LABEL_162:
                v112 = v193;
                if (!v193)
                {
                  goto LABEL_194;
                }

                goto LABEL_163;
              }

              if (v106 == 63)
              {
                v107 = *v105;
                v31 = *(v105 + 16);
                v32 = *(v105 + 32);
                v33 = *(v105 + 48);
                v216 = *v105;
                v217 = v32;
                v220 = v31;
                v221 = v33;
                v108 = 64;
                v109 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_160;
                }

                goto LABEL_152;
              }

              if (v106 != 1)
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v216, 64, v105, v106, *v103.i64, *v31.i64, *v32.i64, *v33.i8);
                v109 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_160;
                }

                goto LABEL_152;
              }

              v107 = vld1q_dup_s16(v105);
              v216 = v107;
              v217 = v107;
              v220 = v107;
              v221 = v107;
              v108 = 2;
              v109 = v76[7];
              if (v76[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v108 = 0;
              v107.i64[0] = 0;
              v216 = 0u;
              v217 = 0u;
              v220 = 0u;
              v221 = 0u;
              v109 = v76[7];
              if (v76[7])
              {
                goto LABEL_152;
              }
            }

LABEL_160:
            v111.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v228 = 0u;
            v229 = 0u;
LABEL_161:
            a7 = v172;
            goto LABEL_162;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
          a7 = v172;
          if (!v185)
          {
            goto LABEL_26;
          }

LABEL_195:
          memcpy(__src, v78, 0x200uLL);
LABEL_26:
          v21 = v41++ == v173 >> 3;
          result = v183;
        }

        while (!v21);
        v21 = v17++ == v164;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v17 = a8 >> 3;
  v134 = a8 + a10 - 1;
  v136 = v134 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v154 = a1;
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
    v133 = a7 >> 3;
    if (a7 >> 3 <= v144 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 7;
      v131 = (a6 - 1) & 7;
      v132 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v141 = v27;
      v129 = 8 * v19 * v18;
      v143 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v152)
        {
          v29 = v152;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v134 < v28)
        {
          v28 = v134;
        }

        v151 = 8 * v17;
        v140 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v131;
        v139 = v31;
        v33 = v31 != 8;
        v34 = v133;
        v35 = v131 + 1;
        if (v17 != v132)
        {
          v35 = 8;
          v32 = v33;
        }

        v138 = v32;
        v149 = a3 + (v29 - v152) * a11;
        v150 = v35;
        v148 = v35;
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

          if (v144 < v37)
          {
            v37 = v144;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v137 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v151 >= v152 && v36 >= a7)
          {
            v43 = v39 != v137;
            if (v34 != v153)
            {
              v43 = v40 != 8;
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

            v117 = (v64 >> 3) - 1;
            if (v66)
            {
              v118 = 0;
            }

            else
            {
              v118 = 32 - __clz(~(-1 << -__clz(v117)));
            }

            v119 = (v68 >> 3) - 1;
            if (v67)
            {
              v120 = 0;
              if (v118)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v120 = 32 - __clz(~(-1 << -__clz(v119)));
              if (v120 | v118)
              {
LABEL_141:
                v121 = 0;
                v122 = 0;
                v123 = v34 & v117;
                v124 = v17 & v119;
                v125 = v118 != 0;
                v126 = v120 != 0;
                v127 = 1;
                do
                {
                  --v118;
                  if (v125)
                  {
                    v122 |= (v127 & v123) << v121++;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  --v120;
                  if (v126)
                  {
                    v122 |= (v127 & v124) << v121++;
                  }

                  else
                  {
                    v120 = 0;
                  }

                  v127 *= 2;
                  --v121;
                  v126 = v120 != 0;
                  v125 = v118 != 0;
                }

                while (v120 | v118);
                v128 = v122 << 9;
                result = v154;
                goto LABEL_153;
              }
            }

            v128 = 0;
LABEL_153:
            v51 = v128 + ((v36 / v64 + v151 / v68 * ((v64 + v130) / v64)) << 14);
            goto LABEL_53;
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
          v70 = v149 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v148 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v74, v69, v41, v150, *(*(result + 208) + 52));
LABEL_87:
              a7 = v143;
              if (v155)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v40;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v40 = v72;
            result = v154;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v148 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v74;
          v165 = v41;
          v166 = v150;
          v161 = v140;
          v162 = v38 - v36;
          v158 = v69;
          v159 = v70;
          v160 = a11;
          v163 = v139;
          v164 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = *(*(result + 208) + 52);
          v76 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v168, 128, v74, *v69, v75)];
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v170, 128, v76, v69[1], v75);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v169, 128, v77, v69[2], v75);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 128, v78, v69[3], v75);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v172, 128, v79, v69[4], v75);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v174, 128, v80, v69[5], v75);
          v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 128, v81, v69[6], v75);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v175, 128, v81 + v82, v69[7], v75);
          v83 = v163;
          a7 = v143;
          if (v163)
          {
            v84 = v164;
            if (v164)
            {
              v85 = 0;
              v86 = v161 << 7;
              v87 = 16 * v162;
              v88 = &v168[v86 + v87];
              v89 = v159;
              v90 = v160;
              v91 = 16 * v164;
              if (16 * v164)
              {
                v92 = (16 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v92 = 0;
              }

              v93 = !v92;
              v95 = v88 < v159 + v160 * (v163 - 1) + 16 * v164 && v159 < &__dst[128 * v163 + 896 + 128 * v161 + 16 * v164 + v87];
              v96 = v91 & 0x1FFFFFFE0;
              v97 = v93 | (v160 < 0) | v95;
              v98 = &v168[v86 + 16 + v87];
              v99 = (v159 + 16);
              v100 = v88;
              v101 = v159;
              do
              {
                v102 = (v89 + v85 * v90);
                v103 = &v88[128 * v85];
                if (v97)
                {
                  v104 = 0;
                }

                else
                {
                  if (v84 == 1)
                  {
                    v108 = 0;
LABEL_112:
                    v109 = -16 * v84 + v108;
                    v110 = (v101 + v108);
                    v111 = &v100[v108];
                    do
                    {
                      v112 = *v110++;
                      *v111++ = v112;
                      v109 += 16;
                    }

                    while (v109);
                    goto LABEL_104;
                  }

                  v113 = v99;
                  v114 = v98;
                  v115 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v116 = *v113;
                    *(v114 - 1) = *(v113 - 1);
                    *v114 = v116;
                    v114 += 2;
                    v113 += 2;
                    v115 -= 32;
                  }

                  while (v115);
                  if (v91 == v96)
                  {
                    goto LABEL_104;
                  }

                  v108 = v91 & 0x1FFFFFFE0;
                  if (v84)
                  {
                    goto LABEL_112;
                  }

                  v102 += v96;
                  v103 += v96;
                  v104 = v91 & 0xFFFFFFE0;
                }

                v105 = v104 + 1;
                do
                {
                  v106 = *v102++;
                  *v103++ = v106;
                }

                while (v91 > v105++);
LABEL_104:
                ++v85;
                v98 += 128;
                v99 = (v99 + v90);
                v101 += v90;
                v100 += 128;
              }

              while (v85 != v83);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v168, 128, v157, v158, v165, v166, *(*(v154 + 208) + 52));
          if (v155)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v144 >> 3;
          result = v154;
        }

        while (!v21);
        v21 = v17++ == v136;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v228 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v230 = a1;
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
  v232 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v221 = result;
  if (v17 <= v212)
  {
    v220 = a7 + a9 - 1;
    v209 = a7 >> 3;
    if (a7 >> 3 <= v220 >> 3)
    {
      result = a1;
      v229 = (a5 - 1) >> 3;
      v206 = a5 - 1;
      v213 = (a5 - 1) & 7;
      v207 = (a6 - 1) & 7;
      v208 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v218 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v217 = v27;
      v205 = 8 * v19 * v18;
      v219 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v228)
        {
          v29 = v228;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v227 = 8 * v17;
        v216 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v207;
        v215 = v31;
        v33 = v31 != 8;
        v34 = v209;
        v35 = v207 + 1;
        if (v17 != v208)
        {
          v35 = 8;
          v32 = v33;
        }

        v214 = v32;
        v225 = a3 + (v29 - v228) * a11;
        v226 = v35;
        v224 = v35;
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

          if (v220 < v37)
          {
            v37 = v220;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v229)
          {
            v41 = v213 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v227 >= v228 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v214;
          }

          if (v221)
          {
            v64 = 0;
            v65 = v205 >> (*(result + 57) != 0);
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

            v193 = (v64 >> 3) - 1;
            if (v66)
            {
              v194 = 0;
            }

            else
            {
              v194 = 32 - __clz(~(-1 << -__clz(v193)));
            }

            v195 = (v68 >> 3) - 1;
            if (v67)
            {
              v196 = 0;
              if (v194)
              {
                goto LABEL_216;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_216:
                v197 = 0;
                v198 = 0;
                v199 = v34 & v193;
                v200 = v17 & v195;
                v201 = v194 != 0;
                v202 = v196 != 0;
                v203 = 1;
                do
                {
                  --v194;
                  if (v201)
                  {
                    v198 |= (v203 & v199) << v197++;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  --v196;
                  if (v202)
                  {
                    v198 |= (v203 & v200) << v197++;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v203 *= 2;
                  --v197;
                  v202 = v196 != 0;
                  v201 = v194 != 0;
                }

                while (v196 | v194);
                v204 = v198 << 9;
                result = v230;
                goto LABEL_228;
              }
            }

            v204 = 0;
LABEL_228:
            v51 = v204 + ((v36 / v64 + v227 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_53;
          }

          if (v218)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v217.i8[4];
            v48 = v217.i8[0];
            v49 = v218.i32[1];
            v50 = v218.i32[0];
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
          v70 = v225 + 16 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v232)
          {
            v71 = v244;
            if (!(v42 & 1 | (v41 < 8u) | (v224 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v244, __dst, sizeof(v244));
            result = v230;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v224 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v226, *(*(result + 208) + 52));
LABEL_86:
            a7 = v219;
            if (v232)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v234 = v71;
          v242 = v41;
          v243 = v226;
          v238 = v216;
          v239 = v38 - v36;
          v235 = v69;
          v236 = v70;
          v237 = a11;
          v240 = v215;
          v241 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v72 = *(result + 208);
          v73 = *(v72 + 52);
          v74 = *v69;
          if (*v69)
          {
            if (v74 < 0xF0)
            {
              if (v74 == 127)
              {
                v77 = v71[1];
                v78 = v71[2];
                v79 = v71[3];
                v80 = v71[4];
                v81 = v71[5];
                v82 = v71[6];
                v83 = v71[7];
                v245 = *v71;
                v246 = v77;
                v247 = v80;
                v248 = v81;
                v253 = v78;
                v254 = v79;
                v255 = v82;
                v256 = v83;
                v75 = 128;
              }

              else if (v74 == 3)
              {
                v76 = vld1q_dup_f32(v71->f32);
                v245 = v76;
                v246 = v76;
                v247 = v76;
                v248 = v76;
                v253 = v76;
                v254 = v76;
                v255 = v76;
                v256 = v76;
                v75 = 4;
              }

              else
              {
                v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 128, v71, v74);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v245.i32, 128, v71, v74, *(v72 + 52));
              v75 = 64;
            }
          }

          else
          {
            v75 = 0;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
          }

          v84 = v71 + v75;
          v85 = v69[1];
          if (v69[1])
          {
            if (v85 < 0xF0)
            {
              if (v85 == 127)
              {
                v88 = *(v84 + 16);
                v89 = *(v84 + 32);
                v90 = *(v84 + 48);
                v91 = *(v84 + 64);
                v92 = *(v84 + 80);
                v93 = *(v84 + 96);
                v94 = *(v84 + 112);
                v261 = *v84;
                v262 = v88;
                v263 = v91;
                v264 = v92;
                v269 = v89;
                v270 = v90;
                v271 = v93;
                v272 = v94;
                v86 = 128;
              }

              else if (v85 == 3)
              {
                v87 = vld1q_dup_f32(v84);
                v261 = v87;
                v262 = v87;
                v263 = v87;
                v264 = v87;
                v269 = v87;
                v270 = v87;
                v271 = v87;
                v272 = v87;
                v86 = 4;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v261, 128, v84, v85);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v261.i32, 128, v84, v85, v73);
              v86 = 64;
            }
          }

          else
          {
            v86 = 0;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
          }

          v95 = v84 + v86;
          v96 = v69[2];
          if (v69[2])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 127)
              {
                v99 = *(v95 + 16);
                v100 = *(v95 + 32);
                v101 = *(v95 + 48);
                v102 = *(v95 + 64);
                v103 = *(v95 + 80);
                v104 = *(v95 + 96);
                v105 = *(v95 + 112);
                v249 = *v95;
                v250 = v99;
                v251 = v102;
                v252 = v103;
                v257 = v100;
                v258 = v101;
                v259 = v104;
                v260 = v105;
                v97 = 128;
              }

              else if (v96 == 3)
              {
                v98 = vld1q_dup_f32(v95);
                v249 = v98;
                v250 = v98;
                v251 = v98;
                v252 = v98;
                v257 = v98;
                v258 = v98;
                v259 = v98;
                v260 = v98;
                v97 = 4;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 128, v95, v96);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v249.i32, 128, v95, v96, v73);
              v97 = 64;
            }
          }

          else
          {
            v97 = 0;
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v257 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
          }

          v106 = v95 + v97;
          v107 = v69[3];
          if (v69[3])
          {
            if (v107 < 0xF0)
            {
              if (v107 == 127)
              {
                v110 = *(v106 + 16);
                v111 = *(v106 + 32);
                v112 = *(v106 + 48);
                v113 = *(v106 + 64);
                v114 = *(v106 + 80);
                v115 = *(v106 + 96);
                v116 = *(v106 + 112);
                v265 = *v106;
                v266 = v110;
                v267 = v113;
                v268 = v114;
                v273 = v111;
                v274 = v112;
                v275 = v115;
                v276 = v116;
                v108 = 128;
              }

              else if (v107 == 3)
              {
                v109 = vld1q_dup_f32(v106);
                v265 = v109;
                v266 = v109;
                v267 = v109;
                v268 = v109;
                v273 = v109;
                v274 = v109;
                v275 = v109;
                v276 = v109;
                v108 = 4;
              }

              else
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v265, 128, v106, v107);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v265.i32, 128, v106, v107, v73);
              v108 = 64;
            }
          }

          else
          {
            v108 = 0;
            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
          }

          v117 = v106 + v108;
          v118 = v69[4];
          if (v69[4])
          {
            if (v118 < 0xF0)
            {
              if (v118 == 127)
              {
                v121 = *(v117 + 16);
                v122 = *(v117 + 32);
                v123 = *(v117 + 48);
                v124 = *(v117 + 64);
                v125 = *(v117 + 80);
                v126 = *(v117 + 96);
                v127 = *(v117 + 112);
                v277 = *v117;
                v278 = v121;
                v279 = v124;
                v280 = v125;
                v285 = v122;
                v286 = v123;
                v287 = v126;
                v288 = v127;
                v119 = 128;
              }

              else if (v118 == 3)
              {
                v120 = vld1q_dup_f32(v117);
                v277 = v120;
                v278 = v120;
                v279 = v120;
                v280 = v120;
                v285 = v120;
                v286 = v120;
                v287 = v120;
                v288 = v120;
                v119 = 4;
              }

              else
              {
                v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v277, 128, v117, v118);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v277.i32, 128, v117, v118, v73);
              v119 = 64;
            }
          }

          else
          {
            v119 = 0;
            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
            v288 = 0u;
          }

          v128 = v117 + v119;
          v129 = v69[5];
          if (v69[5])
          {
            if (v129 < 0xF0)
            {
              if (v129 == 127)
              {
                v132 = *(v128 + 16);
                v133 = *(v128 + 32);
                v134 = *(v128 + 48);
                v135 = *(v128 + 64);
                v136 = *(v128 + 80);
                v137 = *(v128 + 96);
                v138 = *(v128 + 112);
                v293 = *v128;
                v294 = v132;
                v295 = v135;
                v296 = v136;
                v301 = v133;
                v302 = v134;
                v303 = v137;
                v304 = v138;
                v130 = 128;
              }

              else if (v129 == 3)
              {
                v131 = vld1q_dup_f32(v128);
                v293 = v131;
                v294 = v131;
                v295 = v131;
                v296 = v131;
                v301 = v131;
                v302 = v131;
                v303 = v131;
                v304 = v131;
                v130 = 4;
              }

              else
              {
                v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v293, 128, v128, v129);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v293.i32, 128, v128, v129, v73);
              v130 = 64;
            }
          }

          else
          {
            v130 = 0;
            v295 = 0u;
            v296 = 0u;
            v293 = 0u;
            v294 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
          }

          v139 = v128 + v130;
          v140 = v69[6];
          if (v69[6])
          {
            if (v140 < 0xF0)
            {
              if (v140 == 127)
              {
                v179 = *(v139 + 16);
                v180 = *(v139 + 32);
                v181 = *(v139 + 48);
                v182 = *(v139 + 64);
                v183 = *(v139 + 80);
                v184 = *(v139 + 96);
                v185 = *(v139 + 112);
                v281 = *v139;
                v282 = v179;
                v283 = v182;
                v284 = v183;
                v289 = v180;
                v290 = v181;
                v291 = v184;
                v292 = v185;
                v141 = 128;
                v142 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v140 == 3)
              {
                v177 = vld1q_dup_f32(v139);
                v281 = v177;
                v282 = v177;
                v283 = v177;
                v284 = v177;
                v289 = v177;
                v290 = v177;
                v291 = v177;
                v292 = v177;
                v141 = 4;
                v142 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v281, 128, v139, v140);
                v142 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v299 = 0u;
                  v300 = 0u;
                  v297 = 0u;
                  v298 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v281.i32, 128, v139, v140, v73);
              v141 = 64;
              v142 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v141 = 0;
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v142 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v143 = v139 + v141;
          if (v142 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v297.i32, 128, v143, v142, v73);
LABEL_149:
            a7 = v219;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }

            goto LABEL_150;
          }

          a7 = v219;
          if (v142 == 127)
          {
            v186 = *(v143 + 16);
            v187 = *(v143 + 32);
            v188 = *(v143 + 48);
            v189 = *(v143 + 64);
            v190 = *(v143 + 80);
            v191 = *(v143 + 96);
            v192 = *(v143 + 112);
            v297 = *v143;
            v298 = v186;
            v299 = v189;
            v300 = v190;
            v305 = v187;
            v306 = v188;
            v307 = v191;
            v308 = v192;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

          else if (v142 == 3)
          {
            v178 = vld1q_dup_f32(v143);
            v297 = v178;
            v298 = v178;
            v299 = v178;
            v300 = v178;
            v305 = v178;
            v306 = v178;
            v307 = v178;
            v308 = v178;
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v297, 128, v143, v142);
            v144 = v240;
            if (!v240)
            {
              goto LABEL_195;
            }
          }

LABEL_150:
          v145 = v241;
          if (v241)
          {
            v146 = 0;
            v147 = 16 * v239;
            v148 = &v245.i8[128 * v238 + v147];
            v149 = v236;
            v150 = v237;
            v151 = 16 * v241;
            if (16 * v241)
            {
              v152 = (16 * v241 - 1) >> 32 == 0;
            }

            else
            {
              v152 = 0;
            }

            v153 = !v152;
            v155 = v148 < v236 + v237 * (v144 - 1) + 16 * v241 && v236 < &v244[128 * v144 + 896 + 128 * v238 + 16 * v241 + v147];
            v156 = v151 & 0x1FFFFFFE0;
            v157 = v153 | (v237 < 0) | v155;
            v158 = &v246 + 128 * v238 + v147;
            v159 = (v236 + 16);
            v160 = v148;
            v161 = v236;
            do
            {
              v162 = (v149 + v146 * v150);
              v163 = &v148[128 * v146];
              if (v157)
              {
                v164 = 0;
              }

              else
              {
                if (v145 == 1)
                {
                  v168 = 0;
LABEL_172:
                  v169 = -16 * v145 + v168;
                  v170 = (v161 + v168);
                  v171 = &v160[v168];
                  do
                  {
                    v172 = *v170++;
                    *v171 = v172;
                    v171 += 16;
                    v169 += 16;
                  }

                  while (v169);
                  goto LABEL_164;
                }

                v173 = v159;
                v174 = v158;
                v175 = v151 & 0x1FFFFFFE0;
                do
                {
                  v176 = *v173;
                  *(v174 - 1) = *(v173 - 1);
                  *v174 = v176;
                  v174 += 2;
                  v173 += 2;
                  v175 -= 32;
                }

                while (v175);
                if (v151 == v156)
                {
                  goto LABEL_164;
                }

                v168 = v151 & 0x1FFFFFFE0;
                if (v145)
                {
                  goto LABEL_172;
                }

                v162 += v156;
                v163 += v156;
                v164 = v151 & 0xFFFFFFE0;
              }

              v165 = v164 + 1;
              do
              {
                v166 = *v162++;
                *v163++ = v166;
              }

              while (v151 > v165++);
LABEL_164:
              ++v146;
              v158 += 128;
              v159 = (v159 + v150);
              v161 += v150;
              v160 += 128;
            }

            while (v146 != v144);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v245, 128, v234, v235, v242, v243, *(*(v230 + 208) + 52));
          if (v232)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v220 >> 3;
          result = v230;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v162 = v21;
  v163 = v22;
  v151 = v23;
  v24 = v12;
  v313 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v168 = v14;
  v25 = v14 >> 3;
  v150 = v14 + a10 - 1;
  v152 = v150 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v170 = v24;
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
  v172 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v161 = result;
  if (v25 <= v152)
  {
    v160 = v16 + a9 - 1;
    v149 = v16 >> 3;
    if (v16 >> 3 <= v160 >> 3)
    {
      result = v24;
      v169 = (v20 - 1) >> 3;
      v146 = v20 - 1;
      v153 = (v20 - 1) & 7;
      v147 = (v18 - 1) & 7;
      v148 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v158 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v157 = v35;
      v145 = 8 * v27 * v26;
      v159 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v168)
        {
          v37 = v168;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v150 < v36)
        {
          v36 = v150;
        }

        v167 = 8 * v25;
        v156 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v147;
        v155 = v39;
        v41 = v39 != 8;
        v42 = v149;
        v43 = v147 + 1;
        if (v25 != v148)
        {
          v43 = 8;
          v40 = v41;
        }

        v154 = v40;
        v165 = v151 + (v37 - v168) * a11;
        v166 = v43;
        v164 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v42;
          }

          if (v160 < v45)
          {
            v45 = v160;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v169)
          {
            v49 = v153 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v167 >= v168 && v44 >= v16)
          {
            v51 = v47 != v153;
            if (v42 != v169)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v154;
          }

          if (v161)
          {
            v72 = 0;
            v73 = v145 >> (*(result + 57) != 0);
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v74 = 0;
              v75 = 0;
              v72 = 16;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v74 = 0;
                v76 = 8;
                v72 = 16;
              }
            }

            v133 = (v72 >> 3) - 1;
            if (v74)
            {
              v134 = 0;
            }

            else
            {
              v134 = 32 - __clz(~(-1 << -__clz(v133)));
            }

            v135 = (v76 >> 3) - 1;
            if (v75)
            {
              v136 = 0;
              if (v134)
              {
                goto LABEL_187;
              }
            }

            else
            {
              v136 = 32 - __clz(~(-1 << -__clz(v135)));
              if (v136 | v134)
              {
LABEL_187:
                v137 = 0;
                v138 = 0;
                v139 = v42 & v133;
                v140 = v25 & v135;
                v141 = v134 != 0;
                v142 = v136 != 0;
                v143 = 1;
                do
                {
                  --v134;
                  if (v141)
                  {
                    v138 |= (v143 & v139) << v137++;
                  }

                  else
                  {
                    v134 = 0;
                  }

                  --v136;
                  if (v142)
                  {
                    v138 |= (v143 & v140) << v137++;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v143 *= 2;
                  --v137;
                  v142 = v136 != 0;
                  v141 = v134 != 0;
                }

                while (v136 | v134);
                v144 = v138 << 10;
                result = v170;
                goto LABEL_199;
              }
            }

            v144 = 0;
LABEL_199:
            v59 = v144 + ((v44 / v72 + v167 / v76 * ((v72 + v146) / v72)) << 14);
            goto LABEL_52;
          }

          if (v158)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v157.i8[0];
            v56 = v157.i8[4];
            v58 = v158.i32[0];
            v57 = v158.i32[1];
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
            v59 = v53 << 10;
          }

          else
          {
            v59 = 0;
          }

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
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

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 7;
          if (v64 < 0x10)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
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
LABEL_78:
          v77 = (v163 + v71);
          v78 = v165 + 32 * (v46 - v16);
          v79 = (v162 + v59);
          __src = (v162 + v59);
          if (v172)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v164 < 8)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v170;
          }

          else if (!(v50 & 1 | (v49 < 8u) | (v164 < 8)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v79, v77, v49, v166, *(*(result + 208) + 52));
LABEL_85:
            v16 = v159;
            v80 = v42 + 1;
            if (!v172)
            {
              goto LABEL_26;
            }

LABEL_167:
            memcpy(__src, v79, 0x800uLL);
            goto LABEL_26;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v174 = v79;
          v182 = v49;
          v183 = v166;
          v178 = v156;
          v179 = v46 - v44;
          v175 = v77;
          v176 = v78;
          v177 = a11;
          v180 = v155;
          v181 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_85;
          }

          v81 = *(result + 208);
          v82 = *(v81 + 52);
          v83 = *v77;
          if (*v77)
          {
            if (v83 < 0xF0)
            {
              if (v83 == 7)
              {
                v85 = vld1q_dup_f64(v79);
                v185 = v85;
                v186 = v85;
                v187 = v85;
                v188 = v85;
                v189 = v85;
                v190 = v85;
                v191 = v85;
                v192 = v85;
                v201 = v85;
                v202 = v85;
                v203 = v85;
                v204 = v85;
                v205 = v85;
                v206 = v85;
                v84 = 8;
                v207 = v85;
                v208 = v85;
              }

              else
              {
                v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v185, 256, v79, v83);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v185, 256, v79, v83, *(v81 + 52));
              v84 = 128;
            }
          }

          else
          {
            v84 = 0;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
          }

          v86 = &v79[v84];
          v87 = v77[1];
          if (v77[1])
          {
            if (v87 < 0xF0)
            {
              if (v87 == 7)
              {
                v89 = vld1q_dup_f64(v86);
                v217 = v89;
                v218 = v89;
                v219 = v89;
                v220 = v89;
                v221 = v89;
                v222 = v89;
                v223 = v89;
                v224 = v89;
                v233 = v89;
                v234 = v89;
                v235 = v89;
                v236 = v89;
                v237 = v89;
                v238 = v89;
                v88 = 8;
                v239 = v89;
                v240 = v89;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 256, v86, v87);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 256, v86, v87, v82);
              v88 = 128;
            }
          }

          else
          {
            v88 = 0;
            v223 = 0u;
            v224 = 0u;
            v221 = 0u;
            v222 = 0u;
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v233 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
          }

          v90 = (v86 + v88);
          v91 = v77[2];
          if (v77[2])
          {
            if (v91 < 0xF0)
            {
              if (v91 == 7)
              {
                v93 = vld1q_dup_f64(v90);
                v193 = v93;
                v194 = v93;
                v195 = v93;
                v196 = v93;
                v197 = v93;
                v198 = v93;
                v199 = v93;
                v200 = v93;
                v209 = v93;
                v210 = v93;
                v211 = v93;
                v212 = v93;
                v213 = v93;
                v214 = v93;
                v92 = 8;
                v215 = v93;
                v216 = v93;
              }

              else
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v193, 256, v90, v91);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v193, 256, v90, v91, v82);
              v92 = 128;
            }
          }

          else
          {
            v92 = 0;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v195 = 0u;
            v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            v209 = 0u;
            v210 = 0u;
            v211 = 0u;
            v212 = 0u;
            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
          }

          v94 = (v90 + v92);
          v95 = v77[3];
          if (v77[3])
          {
            if (v95 < 0xF0)
            {
              if (v95 == 7)
              {
                v97 = vld1q_dup_f64(v94);
                v225 = v97;
                v226 = v97;
                v227 = v97;
                v228 = v97;
                v229 = v97;
                v230 = v97;
                v231 = v97;
                v232 = v97;
                v241 = v97;
                v242 = v97;
                v243 = v97;
                v244 = v97;
                v245 = v97;
                v246 = v97;
                v96 = 8;
                v247 = v97;
                v248 = v97;
              }

              else
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 256, v94, v95);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 256, v94, v95, v82);
              v96 = 128;
            }
          }

          else
          {
            v96 = 0;
            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v227 = 0u;
            v228 = 0u;
            v225 = 0u;
            v226 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v246 = 0u;
            v247 = 0u;
            v248 = 0u;
          }

          v98 = (v94 + v96);
          v99 = v77[4];
          if (v77[4])
          {
            if (v99 < 0xF0)
            {
              if (v99 == 7)
              {
                v101 = vld1q_dup_f64(v98);
                v249 = v101;
                v250 = v101;
                v251 = v101;
                v252 = v101;
                v253 = v101;
                v254 = v101;
                v255 = v101;
                v256 = v101;
                v265 = v101;
                v266 = v101;
                v267 = v101;
                v268 = v101;
                v269 = v101;
                v270 = v101;
                v271 = v101;
                v100 = 8;
                v272 = v101;
              }

              else
              {
                v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 256, v98, v99);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v249, 256, v98, v99, v82);
              v100 = 128;
            }
          }

          else
          {
            v100 = 0;
            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
          }

          v102 = (v98 + v100);
          v103 = v77[5];
          if (v77[5])
          {
            if (v103 < 0xF0)
            {
              if (v103 == 7)
              {
                v105 = vld1q_dup_f64(v102);
                v281 = v105;
                v282 = v105;
                v283 = v105;
                v284 = v105;
                v285 = v105;
                v286 = v105;
                v287 = v105;
                v288 = v105;
                v297 = v105;
                v298 = v105;
                v299 = v105;
                v300 = v105;
                v301 = v105;
                v302 = v105;
                v303 = v105;
                v104 = 8;
                v304 = v105;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v281, 256, v102, v103);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v281, 256, v102, v103, v82);
              v104 = 128;
            }
          }

          else
          {
            v104 = 0;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
          }

          v106 = (v102 + v104);
          v107 = v77[6];
          if (v77[6])
          {
            if (v107 < 0xF0)
            {
              if (v107 == 7)
              {
                v110 = vld1q_dup_f64(v106);
                v257 = v110;
                v258 = v110;
                v259 = v110;
                v260 = v110;
                v261 = v110;
                v262 = v110;
                v263 = v110;
                v264 = v110;
                v273 = v110;
                v274 = v110;
                v275 = v110;
                v276 = v110;
                v277 = v110;
                v278 = v110;
                v279 = v110;
                v108 = 8;
                v280 = v110;
                v109 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v257, 256, v106, v107);
                v109 = v77[7];
                if (!v77[7])
                {
LABEL_142:
                  v295 = 0u;
                  v296 = 0u;
                  v293 = 0u;
                  v294 = 0u;
                  v291 = 0u;
                  v292 = 0u;
                  v289 = 0u;
                  v290 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v312 = 0u;
                  v16 = v159;
                  goto LABEL_144;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v257, 256, v106, v107, v82);
              v108 = 128;
              v109 = v77[7];
              if (!v77[7])
              {
                goto LABEL_142;
              }
            }
          }

          else
          {
            v108 = 0;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v109 = v77[7];
            if (!v77[7])
            {
              goto LABEL_142;
            }
          }

          v111 = (v106 + v108);
          if (v109 < 0xF0)
          {
            v16 = v159;
            if (v109 == 7)
            {
              v112 = vld1q_dup_f64(v111);
              v289 = v112;
              v290 = v112;
              v291 = v112;
              v292 = v112;
              v293 = v112;
              v294 = v112;
              v295 = v112;
              v296 = v112;
              v305 = v112;
              v306 = v112;
              v307 = v112;
              v308 = v112;
              v309 = v112;
              v310 = v112;
              v311 = v112;
              v312 = v112;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v289, 256, v111, v109);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v289, 256, v111, v109, v82);
            v16 = v159;
          }

LABEL_144:
          v80 = v42 + 1;
          v113 = v180;
          if (v180 && v181)
          {
            v114 = 0;
            v115 = v178 << 8;
            v116 = 32 * v179;
            v117 = &v185 + v115 + v116;
            v118 = v176;
            v119 = v177;
            v120 = 32 * v181;
            if (v120)
            {
              v121 = (v120 - 1) >> 32 == 0;
            }

            else
            {
              v121 = 0;
            }

            v122 = !v121;
            v124 = v117 < v176 + v177 * (v180 - 1) + v120 && v176 < &__dst[256 * v180 + 1792 + 256 * v178 + v120 + v116];
            v125 = v122 | (v177 < 0) | v124;
            v126 = &v186 + v115 + v116;
            v127 = (v176 + 16);
            do
            {
              v128 = v127;
              v129 = v126;
              v130 = v120;
              if (v125)
              {
                v131 = 0;
                do
                {
                  v117[v131] = *(v118 + v131);
                  ++v131;
                }

                while (v120 > v131);
              }

              else
              {
                do
                {
                  v132 = *v128;
                  *(v129 - 1) = *(v128 - 1);
                  *v129 = v132;
                  v129 += 2;
                  v128 += 2;
                  v130 -= 32;
                }

                while (v130);
              }

              ++v114;
              v126 += 256;
              v127 = (v127 + v119);
              v117 += 256;
              v118 += v119;
            }

            while (v114 != v113);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v185, 256, v174, v175, v182, v183, *(*(v170 + 208) + 52));
          if (v172)
          {
            goto LABEL_167;
          }

LABEL_26:
          v29 = v42 == v160 >> 3;
          v42 = v80;
          result = v170;
        }

        while (!v29);
        v29 = v25++ == v152;
      }

      while (!v29);
    }
  }

  return result;
}