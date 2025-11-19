void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v181[7] = *MEMORY[0x29EDCA608];
  v145 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v25 = a8 >> 4;
  v144 = a8 + a10 - 1;
  v26 = v144 >> 4;
  if (*(a1 + 168))
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
  v150 = v31;
  if (v25 <= v26)
  {
    v156 = a7 + a9 - 1;
    if (a7 >> 4 <= v156 >> 4)
    {
      v160 = (a5 - 1) >> 4;
      v143 = (a6 - 1) >> 4;
      v151 = (a5 - 1) & 0xF;
      v141 = ((a6 - 1) & 0xF) + 1;
      v142 = (a6 - 1) & 0xF;
      v155 = a7;
      v139 = v26 + 1;
      v140 = a7 >> 4;
      v149 = a4;
      v148 = a7;
      do
      {
        v32 = (16 * v25) | 0xF;
        if (16 * v25 <= a8)
        {
          v33 = a8;
        }

        else
        {
          v33 = 16 * v25;
        }

        if (v144 < v32)
        {
          v32 = v144;
        }

        v154 = v33 - 16 * v25;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v142;
        v153 = v35;
        v37 = v35 != 16;
        v38 = v141;
        if (v25 != v143)
        {
          v38 = 16;
          v36 = v37;
        }

        v152 = v36;
        v158 = a3 + (v33 - a8) * a11;
        v159 = v38;
        v157 = v38;
        v39 = v140;
        v40 = v150;
        do
        {
          v41 = 16 * v39;
          v42 = v39 + 1;
          v43 = 16 * (v39 + 1) - 1;
          if (16 * v39 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v39;
          }

          if (v156 < v43)
          {
            v43 = v156;
          }

          v45 = v43 - v44;
          v46 = v43 - v44 + 1;
          if (v39 == v160)
          {
            v47 = v151 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= a8 && v41 >= v155)
          {
            v49 = v45 != v151;
            if (v39 != v160)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v152;
          }

          v50 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_59:
              v61 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_59;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v39) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v25) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_60:
          v62 = (a4 + v61);
          v63 = (a2 + v25 * v145 + (v39 << 7));
          if (v40)
          {
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              v71 = v172;
LABEL_68:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v158 + v44 - a7, a11, v71, v62, v47, v159, *(*(a1 + 208) + 52), *&v18, *&v19, *&v20, *&v21, v22, v23, v24);
              if (!v40)
              {
                goto LABEL_26;
              }

              goto LABEL_106;
            }

            v64 = v63[13];
            v172[12] = v63[12];
            v172[13] = v64;
            v65 = v63[15];
            v172[14] = v63[14];
            v173 = v65;
            v66 = v63[9];
            v172[8] = v63[8];
            v172[9] = v66;
            v67 = v63[11];
            v172[10] = v63[10];
            v172[11] = v67;
            v68 = v63[5];
            v172[4] = v63[4];
            v172[5] = v68;
            v69 = v63[7];
            v172[6] = v63[6];
            v172[7] = v69;
            v70 = v63[1];
            v172[0] = *v63;
            v172[1] = v70;
            v18 = v63[2];
            v19 = v63[3];
            v71 = v172;
            v172[2] = v18;
            v172[3] = v19;
          }

          else
          {
            v71 = (a2 + v25 * v145 + (v39 << 7));
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              goto LABEL_68;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v162 = v71;
          v170 = v47;
          v171 = v159;
          v166 = v154;
          v167 = v44 - v41;
          v163 = (a4 + v61);
          v164 = v158 + v44 - a7;
          v165 = a11;
          v168 = v153;
          v169 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(a1 + 208) + 52);
            v73 = a8;
            v74 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v174, 16, v71, *v62, v72, *&v18, *&v19);
            v77 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v175, 16, v74, v62[1], v72, v75, v76);
            v80 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v176, 16, v77, v62[2], v72, v78, v79);
            v83 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v177, 16, v80, v62[3], v72, v81, v82);
            v86 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v178, 16, v83, v62[4], v72, v84, v85);
            v89 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v179, 16, v86, v62[5], v72, v87, v88);
            v92 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v180, 16, v89, v62[6], v72, v90, v91);
            a8 = v73;
            v93 = v72;
            v40 = v150;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v181, 16, v92, v62[7], v93, v94, v95);
            v103 = v168;
            if (!v168)
            {
              goto LABEL_105;
            }

            v104 = v169;
            if (!v169)
            {
              goto LABEL_105;
            }

            v105 = 2 * v166;
            v107 = v164;
            v106 = v165;
            if (v169 <= 7)
            {
              v108 = &v174[v105] + v167 + 3;
              v109 = (v164 + 3);
              do
              {
                *(v108 - 3) = *(v109 - 3);
                if (v104 != 1)
                {
                  *(v108 - 2) = *(v109 - 2);
                  if (v104 != 2)
                  {
                    *(v108 - 1) = *(v109 - 1);
                    if (v104 != 3)
                    {
                      *v108 = *v109;
                      if (v104 != 4)
                      {
                        v108[1] = v109[1];
                        if (v104 != 5)
                        {
                          v108[2] = v109[2];
                          if (v104 != 6)
                          {
                            v108[3] = v109[3];
                          }
                        }
                      }
                    }
                  }
                }

                v108 += 16;
                v109 += v106;
                --v103;
              }

              while (v103);
LABEL_105:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v174, 16, v162, v163, v170, v171, *(*(a1 + 208) + 52), *&v96, *&v97, v98, v99, v100, v101, v102);
              a4 = v149;
              a7 = v148;
              if (!v150)
              {
                goto LABEL_26;
              }

              goto LABEL_106;
            }

            v110 = v174 + v167 + v105 * 8;
            v111 = v169 - 1;
            v112 = v164 >= &v173 + 16 * v168 + 16 * v166 + v167 + v111 + 1 || v110 >= v164 + v165 * (v168 - 1) + v111 + 1;
            if (!v112 || v165 < 0)
            {
              v125 = 0;
              do
              {
                v126 = (v107 + v125 * v106);
                v127 = &v110[16 * v125];
                v128 = v104;
                do
                {
                  v129 = *v126++;
                  *v127++ = v129;
                  --v128;
                }

                while (v128);
                ++v125;
              }

              while (v125 != v103);
              goto LABEL_105;
            }

            v113 = 0;
            v114 = &v175[v105 + 1] + v167;
            v115 = (v164 + 16);
            while (2)
            {
              if (v104 >= 0x20)
              {
                v117 = v115;
                v118 = v114;
                v119 = v104 & 0xFFFFFFE0;
                do
                {
                  v96 = *(v117 - 1);
                  v97 = *v117;
                  *(v118 - 1) = v96;
                  *v118 = v97;
                  v118 += 2;
                  v117 += 2;
                  v119 -= 32;
                }

                while (v119);
                if ((v104 & 0xFFFFFFE0) != v104)
                {
                  v116 = v104 & 0xFFFFFFE0;
                  v120 = v116;
                  if ((v104 & 0x18) != 0)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_99;
                }
              }

              else
              {
                v116 = 0;
LABEL_96:
                v121 = v116 - (v104 & 0xFFFFFFF8);
                v122 = (v107 + v116);
                v123 = &v110[v116];
                do
                {
                  v124 = *v122++;
                  *&v96 = v124;
                  *v123 = v124;
                  v123 += 8;
                  v121 += 8;
                }

                while (v121);
                v120 = v104 & 0xFFFFFFF8;
                if (v120 != v104)
                {
                  do
                  {
LABEL_99:
                    v110[v120] = *(v107 + v120);
                    ++v120;
                  }

                  while (v104 != v120);
                }
              }

              ++v113;
              v114 += 16;
              v115 = (v115 + v106);
              v107 += v106;
              v110 += 16;
              if (v113 == v103)
              {
                goto LABEL_105;
              }

              continue;
            }
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v40)
          {
            goto LABEL_26;
          }

LABEL_106:
          v130 = *v71;
          v131 = v71[1];
          v132 = v71[3];
          v63[2] = v71[2];
          v63[3] = v132;
          *v63 = v130;
          v63[1] = v131;
          v133 = v71[4];
          v134 = v71[5];
          v135 = v71[7];
          v63[6] = v71[6];
          v63[7] = v135;
          v63[4] = v133;
          v63[5] = v134;
          v136 = v71[8];
          v137 = v71[9];
          v138 = v71[11];
          v63[10] = v71[10];
          v63[11] = v138;
          v63[8] = v136;
          v63[9] = v137;
          v18 = v71[12];
          v19 = v71[13];
          v20 = v71[14];
          v21 = v71[15];
          v63[14] = v20;
          v63[15] = v21;
          v63[12] = v18;
          v63[13] = v19;
LABEL_26:
          v39 = v42;
        }

        while (v42 != (v156 >> 4) + 1);
        ++v25;
      }

      while (v25 != v139);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v215 = *MEMORY[0x29EDCA608];
  v153 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v165 = a8;
  v19 = a8 >> 4;
  v152 = a8 + a10 - 1;
  v20 = v152 >> 4;
  v166 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v169 = v25;
  result = a1;
  if (v19 <= v20)
  {
    v160 = a7 + a9 - 1;
    if (a7 >> 4 <= v160 >> 4)
    {
      v167 = (a5 - 1) >> 4;
      v151 = (a6 - 1) >> 4;
      v156 = (a5 - 1) & 0xF;
      v149 = ((a6 - 1) & 0xF) + 1;
      v150 = (a6 - 1) & 0xF;
      v148 = v20 + 1;
      do
      {
        v27 = (16 * v19) | 0xF;
        if (16 * v19 <= v165)
        {
          v28 = v165;
        }

        else
        {
          v28 = 16 * v19;
        }

        if (v152 < v27)
        {
          v27 = v152;
        }

        v159 = v28 - 16 * v19;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v150;
        v158 = v30;
        v32 = v30 != 16;
        v33 = v149;
        if (v19 != v151)
        {
          v33 = 16;
          v31 = v32;
        }

        v157 = v31;
        v163 = a3 + (v28 - v165) * a11;
        v164 = v33;
        v162 = v33;
        v34 = a7 >> 4;
        do
        {
          v35 = 16 * v34;
          v36 = v34 + 1;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v160 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v167)
          {
            v41 = v156 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v19 >= v165 && v35 >= a7)
          {
            v43 = v39 != v156;
            if (v34 != v167)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v157;
          }

          v44 = *(result + 128) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(result + 132) >> (*(result + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_59:
              v55 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_59;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v19) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_60:
          v56 = (a4 + v55);
          v57 = (a2 + v19 * v153 + (v34 << 9));
          __src = v57;
          if (v169)
          {
            v57 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v162 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v166;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v162 < 0x10)))
          {
LABEL_67:
            v58 = (v163 + 2 * (v38 - a7));
            v59 = a11;
            v60 = v57;
            v61 = (a4 + v55);
            v62 = v41;
            v63 = v164;
            goto LABEL_168;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v172 = v57;
          v180 = v41;
          v181 = v164;
          v176 = v159;
          v177 = v38 - v35;
          v173 = v56;
          v174 = v163 + 2 * (v38 - a7);
          v175 = a11;
          v178 = v158;
          v179 = v40;
          if ((v42 & 1) == 0)
          {
            v64 = *v56;
            if (v64 == 63)
            {
              v66 = *(v57 + 1);
              v18 = *(v57 + 2);
              v67 = *(v57 + 3);
              v68 = vuzp2q_s32(*v57, v18);
              v183 = vuzp1q_s32(*v57, v18);
              v185 = v68;
              v16 = vuzp1q_s32(v66, v67);
              v17 = vuzp2q_s32(v66, v67);
              v187 = v16;
              v189 = v17;
              v65 = 64;
            }

            else if (v64 == 1)
            {
              v16 = vld1q_dup_s16(v57);
              v183 = v16;
              v185 = v16;
              v187 = v16;
              v189 = v16;
              v65 = 2;
            }

            else if (*v56)
            {
              v65 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v183, 32, v57, v64, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v65 = 0;
              v183 = 0uLL;
              v185 = 0uLL;
              v187 = 0uLL;
              v189 = 0uLL;
            }

            v69 = v57 + v65;
            v70 = v56[1];
            if (v70 == 63)
            {
              v72 = *(v69 + 16);
              v18 = *(v69 + 32);
              v73 = *(v69 + 48);
              v74 = vuzp2q_s32(*v69, v18);
              v184 = vuzp1q_s32(*v69, v18);
              v186 = v74;
              v16 = vuzp1q_s32(v72, v73);
              v17 = vuzp2q_s32(v72, v73);
              v188 = v16;
              v190 = v17;
              v71 = 64;
            }

            else if (v70 == 1)
            {
              v16 = vld1q_dup_s16(v69);
              v184 = v16;
              v186 = v16;
              v188 = v16;
              v190 = v16;
              v71 = 2;
            }

            else if (v56[1])
            {
              v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v184, 32, v69, v70, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v71 = 0;
              v184 = 0uLL;
              v186 = 0uLL;
              v188 = 0uLL;
              v190 = 0uLL;
            }

            v75 = v69 + v71;
            v76 = v56[2];
            if (v76 == 63)
            {
              v78 = *(v75 + 16);
              v18 = *(v75 + 32);
              v79 = *(v75 + 48);
              v80 = vuzp2q_s32(*v75, v18);
              v191 = vuzp1q_s32(*v75, v18);
              v193 = v80;
              v16 = vuzp1q_s32(v78, v79);
              v17 = vuzp2q_s32(v78, v79);
              v195 = v16;
              v197 = v17;
              v77 = 64;
            }

            else if (v76 == 1)
            {
              v16 = vld1q_dup_s16(v75);
              v191 = v16;
              v193 = v16;
              v195 = v16;
              v197 = v16;
              v77 = 2;
            }

            else if (v56[2])
            {
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v191, 32, v75, v76, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v77 = 0;
              v191 = 0uLL;
              v193 = 0uLL;
              v195 = 0uLL;
              v197 = 0uLL;
            }

            v81 = v75 + v77;
            v82 = v56[3];
            if (v82 == 63)
            {
              v84 = *(v81 + 16);
              v18 = *(v81 + 32);
              v85 = *(v81 + 48);
              v86 = vuzp2q_s32(*v81, v18);
              v192 = vuzp1q_s32(*v81, v18);
              v194 = v86;
              v16 = vuzp1q_s32(v84, v85);
              v17 = vuzp2q_s32(v84, v85);
              v196 = v16;
              v198 = v17;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v16 = vld1q_dup_s16(v81);
              v192 = v16;
              v194 = v16;
              v196 = v16;
              v198 = v16;
              v83 = 2;
            }

            else if (v56[3])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v192, 32, v81, v82, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v83 = 0;
              v192 = 0uLL;
              v194 = 0uLL;
              v196 = 0uLL;
              v198 = 0uLL;
            }

            v87 = v81 + v83;
            v88 = v56[4];
            if (v88 == 63)
            {
              v90 = *(v87 + 16);
              v18 = *(v87 + 32);
              v91 = *(v87 + 48);
              v92 = vuzp2q_s32(*v87, v18);
              v199 = vuzp1q_s32(*v87, v18);
              v201 = v92;
              v16 = vuzp1q_s32(v90, v91);
              v17 = vuzp2q_s32(v90, v91);
              v203 = v16;
              v205 = v17;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v16 = vld1q_dup_s16(v87);
              v199 = v16;
              v201 = v16;
              v203 = v16;
              v205 = v16;
              v89 = 2;
            }

            else if (v56[4])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 32, v87, v88, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v89 = 0;
              v199 = 0uLL;
              v201 = 0uLL;
              v203 = 0uLL;
              v205 = 0uLL;
            }

            v93 = v87 + v89;
            v94 = v56[5];
            if (v94 == 63)
            {
              v96 = *(v93 + 16);
              v18 = *(v93 + 32);
              v97 = *(v93 + 48);
              v98 = vuzp2q_s32(*v93, v18);
              v200 = vuzp1q_s32(*v93, v18);
              v202 = v98;
              v16 = vuzp1q_s32(v96, v97);
              v17 = vuzp2q_s32(v96, v97);
              v204 = v16;
              v206 = v17;
              v95 = 64;
            }

            else if (v94 == 1)
            {
              v16 = vld1q_dup_s16(v93);
              v200 = v16;
              v202 = v16;
              v204 = v16;
              v206 = v16;
              v95 = 2;
            }

            else if (v56[5])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v200, 32, v93, v94, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v95 = 0;
              v200 = 0uLL;
              v202 = 0uLL;
              v204 = 0uLL;
              v206 = 0uLL;
            }

            v99 = v93 + v95;
            v100 = v56[6];
            if (v100 == 63)
            {
              v102 = *(v99 + 16);
              v18 = *(v99 + 32);
              v103 = *(v99 + 48);
              v104 = vuzp2q_s32(*v99, v18);
              v207 = vuzp1q_s32(*v99, v18);
              v209 = v104;
              v16 = vuzp1q_s32(v102, v103);
              v17 = vuzp2q_s32(v102, v103);
              v211 = v16;
              v213 = v17;
              v101 = 64;
            }

            else if (v100 == 1)
            {
              v16 = vld1q_dup_s16(v99);
              v207 = v16;
              v209 = v16;
              v211 = v16;
              v213 = v16;
              v101 = 2;
            }

            else if (v56[6])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 32, v99, v100, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v101 = 0;
              v207 = 0uLL;
              v209 = 0uLL;
              v211 = 0uLL;
              v213 = 0uLL;
            }

            v105 = v99 + v101;
            v106 = v56[7];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v208 = vuzp1q_s32(*v105, v110);
              v210 = v112;
              v212 = vuzp1q_s32(v109, v111);
              v214 = vuzp2q_s32(v109, v111);
              v107 = v178;
              if (v178)
              {
                goto LABEL_127;
              }
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v208 = v108;
              v210 = v108;
              v212 = v108;
              v214 = v108;
              v107 = v178;
              if (v178)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if (v56[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 32, v105, v106, *v16.i8, *v17.i64, *v18.i8);
                v107 = v178;
                if (!v178)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v208 = 0uLL;
                v210 = 0uLL;
                v212 = 0uLL;
                v214 = 0uLL;
                v107 = v178;
                if (!v178)
                {
                  goto LABEL_167;
                }
              }

LABEL_127:
              v113 = v179;
              if (!v179)
              {
                goto LABEL_167;
              }

              v114 = 32 * v176;
              v115 = 2 * v177;
              v116 = &v183.i8[v114 + v115];
              v117 = v174;
              v118 = v175;
              v119 = 2 * v179;
              v121 = v116 < v174 + v175 * (v107 - 1) + v119 && v174 < &__dst[2 * v107 + 30 + 2 * v176] + 2 * v179 + v115 || v175 < 0;
              v122 = v121;
              if (v179 <= 3)
              {
                v123 = 0;
                do
                {
                  v124 = 0;
                  do
                  {
                    v116[v124] = *(v117 + v124);
                    ++v124;
                  }

                  while (v124 < v119);
                  ++v123;
                  v116 += 32;
                  v117 += v118;
                }

                while (v123 != v107);
                goto LABEL_167;
              }

              if (v119)
              {
                v125 = (v119 - 1) >> 32;
                if (!v125)
                {
                  v126 = v119 & 0x1FFFFFFE0;
                  v127 = v119 & 0x1FFFFFFF8;
                  v128 = &v184.i8[v114 + v115];
                  v129 = (v174 + 16);
                  v130 = v116;
                  v131 = v174;
                  while (1)
                  {
                    v132 = (v117 + v125 * v118);
                    v133 = &v116[32 * v125];
                    if (v122)
                    {
                      v134 = 0;
                      goto LABEL_160;
                    }

                    if (v113 >= 0x10)
                    {
                      v136 = v129;
                      v137 = v128;
                      v138 = v119 & 0x1FFFFFFE0;
                      do
                      {
                        v139 = *v136;
                        *(v137 - 1) = *(v136 - 1);
                        *v137 = v139;
                        v137 += 32;
                        v136 += 2;
                        v138 -= 32;
                      }

                      while (v138);
                      if (v119 == v126)
                      {
                        goto LABEL_146;
                      }

                      v135 = v119 & 0x1FFFFFFE0;
                      if ((v113 & 0xC) == 0)
                      {
                        v132 += v126;
                        v133 += v126;
                        v134 = v119 & 0xFFFFFFE0;
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      v135 = 0;
                    }

                    v133 += v127;
                    v140 = v135 - (v119 & 0x1FFFFFFF8);
                    v141 = (v131 + v135);
                    v142 = &v130[v135];
                    do
                    {
                      v143 = *v141++;
                      *v142 = v143;
                      v142 += 8;
                      v140 += 8;
                    }

                    while (v140);
                    if (v119 == v127)
                    {
                      goto LABEL_146;
                    }

                    v132 += v127;
                    v134 = v119 & 0xFFFFFFF8;
LABEL_160:
                    v144 = v134 + 1;
                    do
                    {
                      v145 = *v132++;
                      *v133++ = v145;
                      v121 = v119 > v144++;
                    }

                    while (v121);
LABEL_146:
                    ++v125;
                    v128 += 32;
                    v129 = (v129 + v118);
                    v131 += v118;
                    v130 += 32;
                    if (v125 == v107)
                    {
                      goto LABEL_167;
                    }
                  }
                }
              }

              v146 = 0;
              do
              {
                v147 = 0;
                do
                {
                  v116[v147] = *(v117 + v147);
                  ++v147;
                }

                while (v119 > v147);
                ++v146;
                v116 += 32;
                v117 += v118;
              }

              while (v146 != v107);
            }

LABEL_167:
            v60 = v172;
            v61 = v173;
            v62 = v180;
            v63 = v181;
            v58 = &v183;
            v59 = 32;
LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v58, v59, v60, v61, v62, v63);
            if (!v169)
            {
              goto LABEL_26;
            }

            goto LABEL_169;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v169)
          {
            goto LABEL_26;
          }

LABEL_169:
          memcpy(__src, v57, 0x200uLL);
LABEL_26:
          v34 = v36;
          result = v166;
        }

        while (v36 != (v160 >> 4) + 1);
        ++v19;
      }

      while (v19 != v148);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v215 = *MEMORY[0x29EDCA608];
  v153 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v165 = a8;
  v19 = a8 >> 4;
  v152 = a8 + a10 - 1;
  v20 = v152 >> 4;
  v166 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v169 = v25;
  result = a1;
  if (v19 <= v20)
  {
    v160 = a7 + a9 - 1;
    if (a7 >> 4 <= v160 >> 4)
    {
      v167 = (a5 - 1) >> 4;
      v151 = (a6 - 1) >> 4;
      v156 = (a5 - 1) & 0xF;
      v149 = ((a6 - 1) & 0xF) + 1;
      v150 = (a6 - 1) & 0xF;
      v148 = v20 + 1;
      do
      {
        v27 = (16 * v19) | 0xF;
        if (16 * v19 <= v165)
        {
          v28 = v165;
        }

        else
        {
          v28 = 16 * v19;
        }

        if (v152 < v27)
        {
          v27 = v152;
        }

        v159 = v28 - 16 * v19;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v150;
        v158 = v30;
        v32 = v30 != 16;
        v33 = v149;
        if (v19 != v151)
        {
          v33 = 16;
          v31 = v32;
        }

        v157 = v31;
        v163 = a3 + (v28 - v165) * a11;
        v164 = v33;
        v162 = v33;
        v34 = a7 >> 4;
        do
        {
          v35 = 16 * v34;
          v36 = v34 + 1;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v160 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v167)
          {
            v41 = v156 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v19 >= v165 && v35 >= a7)
          {
            v43 = v39 != v156;
            if (v34 != v167)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v157;
          }

          v44 = *(result + 128) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(result + 132) >> (*(result + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_59:
              v55 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_59;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v19) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_60:
          v56 = (a4 + v55);
          v57 = (a2 + v19 * v153 + (v34 << 9));
          __src = v57;
          if (v169)
          {
            v57 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v162 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v166;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v162 < 0x10)))
          {
LABEL_67:
            v58 = (v163 + 2 * (v38 - a7));
            v59 = a11;
            v60 = v57;
            v61 = (a4 + v55);
            v62 = v41;
            v63 = v164;
            goto LABEL_168;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v172 = v57;
          v180 = v41;
          v181 = v164;
          v176 = v159;
          v177 = v38 - v35;
          v173 = v56;
          v174 = v163 + 2 * (v38 - a7);
          v175 = a11;
          v178 = v158;
          v179 = v40;
          if ((v42 & 1) == 0)
          {
            v64 = *v56;
            if (v64 == 63)
            {
              v66 = v57[1];
              v18 = v57[2];
              v67 = v57[3];
              v68 = vuzp2q_s32(*v57, v18);
              v183 = vuzp1q_s32(*v57, v18);
              v185 = v68;
              v16 = vuzp1q_s32(v66, v67);
              v17 = vuzp2q_s32(v66, v67);
              v187 = v16;
              v189 = v17;
              v65 = 64;
            }

            else if (v64 == 1)
            {
              v16 = vld1q_dup_s16(v57->i16);
              v183 = v16;
              v185 = v16;
              v187 = v16;
              v189 = v16;
              v65 = 2;
            }

            else if (*v56)
            {
              v65 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v183, 32, v57, v64, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v65 = 0;
              v183 = 0uLL;
              v185 = 0uLL;
              v187 = 0uLL;
              v189 = 0uLL;
            }

            v69 = v57->i64 + v65;
            v70 = v56[1];
            if (v70 == 63)
            {
              v72 = *(v69 + 16);
              v18 = *(v69 + 32);
              v73 = *(v69 + 48);
              v74 = vuzp2q_s32(*v69, v18);
              v184 = vuzp1q_s32(*v69, v18);
              v186 = v74;
              v16 = vuzp1q_s32(v72, v73);
              v17 = vuzp2q_s32(v72, v73);
              v188 = v16;
              v190 = v17;
              v71 = 64;
            }

            else if (v70 == 1)
            {
              v16 = vld1q_dup_s16(v69);
              v184 = v16;
              v186 = v16;
              v188 = v16;
              v190 = v16;
              v71 = 2;
            }

            else if (v56[1])
            {
              v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v184, 32, v69, v70, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v71 = 0;
              v184 = 0uLL;
              v186 = 0uLL;
              v188 = 0uLL;
              v190 = 0uLL;
            }

            v75 = v69 + v71;
            v76 = v56[2];
            if (v76 == 63)
            {
              v78 = *(v75 + 16);
              v18 = *(v75 + 32);
              v79 = *(v75 + 48);
              v80 = vuzp2q_s32(*v75, v18);
              v191 = vuzp1q_s32(*v75, v18);
              v193 = v80;
              v16 = vuzp1q_s32(v78, v79);
              v17 = vuzp2q_s32(v78, v79);
              v195 = v16;
              v197 = v17;
              v77 = 64;
            }

            else if (v76 == 1)
            {
              v16 = vld1q_dup_s16(v75);
              v191 = v16;
              v193 = v16;
              v195 = v16;
              v197 = v16;
              v77 = 2;
            }

            else if (v56[2])
            {
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v191, 32, v75, v76, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v77 = 0;
              v191 = 0uLL;
              v193 = 0uLL;
              v195 = 0uLL;
              v197 = 0uLL;
            }

            v81 = v75 + v77;
            v82 = v56[3];
            if (v82 == 63)
            {
              v84 = *(v81 + 16);
              v18 = *(v81 + 32);
              v85 = *(v81 + 48);
              v86 = vuzp2q_s32(*v81, v18);
              v192 = vuzp1q_s32(*v81, v18);
              v194 = v86;
              v16 = vuzp1q_s32(v84, v85);
              v17 = vuzp2q_s32(v84, v85);
              v196 = v16;
              v198 = v17;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v16 = vld1q_dup_s16(v81);
              v192 = v16;
              v194 = v16;
              v196 = v16;
              v198 = v16;
              v83 = 2;
            }

            else if (v56[3])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v192, 32, v81, v82, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v83 = 0;
              v192 = 0uLL;
              v194 = 0uLL;
              v196 = 0uLL;
              v198 = 0uLL;
            }

            v87 = v81 + v83;
            v88 = v56[4];
            if (v88 == 63)
            {
              v90 = *(v87 + 16);
              v18 = *(v87 + 32);
              v91 = *(v87 + 48);
              v92 = vuzp2q_s32(*v87, v18);
              v199 = vuzp1q_s32(*v87, v18);
              v201 = v92;
              v16 = vuzp1q_s32(v90, v91);
              v17 = vuzp2q_s32(v90, v91);
              v203 = v16;
              v205 = v17;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v16 = vld1q_dup_s16(v87);
              v199 = v16;
              v201 = v16;
              v203 = v16;
              v205 = v16;
              v89 = 2;
            }

            else if (v56[4])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 32, v87, v88, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v89 = 0;
              v199 = 0uLL;
              v201 = 0uLL;
              v203 = 0uLL;
              v205 = 0uLL;
            }

            v93 = v87 + v89;
            v94 = v56[5];
            if (v94 == 63)
            {
              v96 = *(v93 + 16);
              v18 = *(v93 + 32);
              v97 = *(v93 + 48);
              v98 = vuzp2q_s32(*v93, v18);
              v200 = vuzp1q_s32(*v93, v18);
              v202 = v98;
              v16 = vuzp1q_s32(v96, v97);
              v17 = vuzp2q_s32(v96, v97);
              v204 = v16;
              v206 = v17;
              v95 = 64;
            }

            else if (v94 == 1)
            {
              v16 = vld1q_dup_s16(v93);
              v200 = v16;
              v202 = v16;
              v204 = v16;
              v206 = v16;
              v95 = 2;
            }

            else if (v56[5])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v200, 32, v93, v94, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v95 = 0;
              v200 = 0uLL;
              v202 = 0uLL;
              v204 = 0uLL;
              v206 = 0uLL;
            }

            v99 = v93 + v95;
            v100 = v56[6];
            if (v100 == 63)
            {
              v102 = *(v99 + 16);
              v18 = *(v99 + 32);
              v103 = *(v99 + 48);
              v104 = vuzp2q_s32(*v99, v18);
              v207 = vuzp1q_s32(*v99, v18);
              v209 = v104;
              v16 = vuzp1q_s32(v102, v103);
              v17 = vuzp2q_s32(v102, v103);
              v211 = v16;
              v213 = v17;
              v101 = 64;
            }

            else if (v100 == 1)
            {
              v16 = vld1q_dup_s16(v99);
              v207 = v16;
              v209 = v16;
              v211 = v16;
              v213 = v16;
              v101 = 2;
            }

            else if (v56[6])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 32, v99, v100, *v16.i8, *v17.i64, *v18.i8);
            }

            else
            {
              v101 = 0;
              v207 = 0uLL;
              v209 = 0uLL;
              v211 = 0uLL;
              v213 = 0uLL;
            }

            v105 = v99 + v101;
            v106 = v56[7];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v208 = vuzp1q_s32(*v105, v110);
              v210 = v112;
              v212 = vuzp1q_s32(v109, v111);
              v214 = vuzp2q_s32(v109, v111);
              v107 = v178;
              if (v178)
              {
                goto LABEL_127;
              }
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v208 = v108;
              v210 = v108;
              v212 = v108;
              v214 = v108;
              v107 = v178;
              if (v178)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if (v56[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 32, v105, v106, *v16.i8, *v17.i64, *v18.i8);
                v107 = v178;
                if (!v178)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v208 = 0uLL;
                v210 = 0uLL;
                v212 = 0uLL;
                v214 = 0uLL;
                v107 = v178;
                if (!v178)
                {
                  goto LABEL_167;
                }
              }

LABEL_127:
              v113 = v179;
              if (!v179)
              {
                goto LABEL_167;
              }

              v114 = 32 * v176;
              v115 = 2 * v177;
              v116 = &v183.i8[v114 + v115];
              v117 = v174;
              v118 = v175;
              v119 = 2 * v179;
              v121 = v116 < v174 + v175 * (v107 - 1) + v119 && v174 < &__dst[2 * v107 + 30 + 2 * v176] + 2 * v179 + v115 || v175 < 0;
              v122 = v121;
              if (v179 <= 3)
              {
                v123 = 0;
                do
                {
                  v124 = 0;
                  do
                  {
                    v116[v124] = *(v117 + v124);
                    ++v124;
                  }

                  while (v124 < v119);
                  ++v123;
                  v116 += 32;
                  v117 += v118;
                }

                while (v123 != v107);
                goto LABEL_167;
              }

              if (v119)
              {
                v125 = (v119 - 1) >> 32;
                if (!v125)
                {
                  v126 = v119 & 0x1FFFFFFE0;
                  v127 = v119 & 0x1FFFFFFF8;
                  v128 = &v184.i8[v114 + v115];
                  v129 = (v174 + 16);
                  v130 = v116;
                  v131 = v174;
                  while (1)
                  {
                    v132 = (v117 + v125 * v118);
                    v133 = &v116[32 * v125];
                    if (v122)
                    {
                      v134 = 0;
                      goto LABEL_160;
                    }

                    if (v113 >= 0x10)
                    {
                      v136 = v129;
                      v137 = v128;
                      v138 = v119 & 0x1FFFFFFE0;
                      do
                      {
                        v139 = *v136;
                        *(v137 - 1) = *(v136 - 1);
                        *v137 = v139;
                        v137 += 32;
                        v136 += 2;
                        v138 -= 32;
                      }

                      while (v138);
                      if (v119 == v126)
                      {
                        goto LABEL_146;
                      }

                      v135 = v119 & 0x1FFFFFFE0;
                      if ((v113 & 0xC) == 0)
                      {
                        v132 += v126;
                        v133 += v126;
                        v134 = v119 & 0xFFFFFFE0;
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      v135 = 0;
                    }

                    v133 += v127;
                    v140 = v135 - (v119 & 0x1FFFFFFF8);
                    v141 = (v131 + v135);
                    v142 = &v130[v135];
                    do
                    {
                      v143 = *v141++;
                      *v142 = v143;
                      v142 += 8;
                      v140 += 8;
                    }

                    while (v140);
                    if (v119 == v127)
                    {
                      goto LABEL_146;
                    }

                    v132 += v127;
                    v134 = v119 & 0xFFFFFFF8;
LABEL_160:
                    v144 = v134 + 1;
                    do
                    {
                      v145 = *v132++;
                      *v133++ = v145;
                      v121 = v119 > v144++;
                    }

                    while (v121);
LABEL_146:
                    ++v125;
                    v128 += 32;
                    v129 = (v129 + v118);
                    v131 += v118;
                    v130 += 32;
                    if (v125 == v107)
                    {
                      goto LABEL_167;
                    }
                  }
                }
              }

              v146 = 0;
              do
              {
                v147 = 0;
                do
                {
                  v116[v147] = *(v117 + v147);
                  ++v147;
                }

                while (v119 > v147);
                ++v146;
                v116 += 32;
                v117 += v118;
              }

              while (v146 != v107);
            }

LABEL_167:
            v60 = v172;
            v61 = v173;
            v62 = v180;
            v63 = v181;
            v58 = &v183;
            v59 = 32;
LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v58, v59, v60, v61, v62, v63);
            if (!v169)
            {
              goto LABEL_26;
            }

            goto LABEL_169;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v169)
          {
            goto LABEL_26;
          }

LABEL_169:
          memcpy(__src, v57, 0x200uLL);
LABEL_26:
          v34 = v36;
          result = v166;
        }

        while (v36 != (v160 >> 4) + 1);
        ++v19;
      }

      while (v19 != v148);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v173[14] = *MEMORY[0x29EDCA608];
  v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v148 = a8;
  v19 = a8 >> 4;
  v135 = a8 + a10 - 1;
  v20 = v135 >> 4;
  v150 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v152 = v25;
  result = a1;
  if (v19 <= v20)
  {
    v143 = a7 + a9 - 1;
    if (a7 >> 4 <= v143 >> 4)
    {
      v149 = (a5 - 1) >> 4;
      v134 = (a6 - 1) >> 4;
      v139 = (a5 - 1) & 0xF;
      v132 = ((a6 - 1) & 0xF) + 1;
      v133 = (a6 - 1) & 0xF;
      v131 = v20 + 1;
      do
      {
        v27 = (16 * v19) | 0xF;
        if (16 * v19 <= v148)
        {
          v28 = v148;
        }

        else
        {
          v28 = 16 * v19;
        }

        if (v135 < v27)
        {
          v27 = v135;
        }

        v142 = v28 - 16 * v19;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v133;
        v141 = v30;
        v32 = v30 != 16;
        v33 = v132;
        if (v19 != v134)
        {
          v33 = 16;
          v31 = v32;
        }

        v140 = v31;
        v146 = a3 + (v28 - v148) * a11;
        v147 = v33;
        v145 = v33;
        v34 = a7 >> 4;
        do
        {
          v35 = 16 * v34;
          v36 = v34 + 1;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v143 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v149)
          {
            v41 = v139 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v19 >= v148 && v35 >= a7)
          {
            v43 = v39 != v139;
            if (v34 != v149)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v140;
          }

          v44 = *(result + 128) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(result + 132) >> (*(result + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_59:
              v55 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_59;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v19) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_60:
          v56 = (a4 + v55);
          v57 = (a2 + v19 * v136 + 384 * v34);
          __src = v57;
          if (v152)
          {
            v57 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v150;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
          {
LABEL_67:
            v58 = *(*(result + 208) + 52);
            v59 = (v146 + 2 * (v38 - a7));
            v60 = a11;
            v61 = v57;
            v62 = (a4 + v55);
            v63 = v41;
            v64 = v147;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v155 = v57;
          v163 = v41;
          v164 = v147;
          v159 = v142;
          v160 = v38 - v35;
          v156 = v56;
          v157 = v146 + 2 * (v38 - a7);
          v158 = a11;
          v161 = v141;
          v162 = v40;
          if ((v42 & 1) == 0)
          {
            v65 = *(*(result + 208) + 52);
            v66 = v57 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v166, 32, v57, *v56, v65, v16, v17, v18);
            v70 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v167, 32, v66, v56[1], v65, v67, v68, v69);
            v74 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v168, 32, v70, v56[2], v65, v71, v72, v73);
            v78 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v169, 32, v74, v56[3], v65, v75, v76, v77);
            v82 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v170, 32, v78, v56[4], v65, v79, v80, v81);
            v86 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v171, 32, v82, v56[5], v65, v83, v84, v85);
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v172, 32, v86, v56[6], v65, v87, v88, v89);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v173, 32, v86 + v90, v56[7], v65, v91, v92, v93);
            v94 = v161;
            if (!v161)
            {
              goto LABEL_109;
            }

            v95 = v162;
            if (!v162)
            {
              goto LABEL_109;
            }

            v96 = 32 * v159;
            v97 = 2 * v160;
            v98 = &v166[v96 + v97];
            v99 = v157;
            v100 = v158;
            v101 = 2 * v162;
            v104 = v98 < v157 + v158 * (v161 - 1) + v101 && v157 < &__dst[2 * v161 + 30 + 2 * v159] + 2 * v162 + v97 || v158 < 0;
            if (v162 <= 3)
            {
              v105 = 0;
              do
              {
                v106 = 0;
                do
                {
                  v98[v106] = *(v99 + v106);
                  ++v106;
                }

                while (v106 < v101);
                ++v105;
                v98 += 32;
                v99 += v100;
              }

              while (v105 != v94);
              goto LABEL_109;
            }

            if (v101)
            {
              v107 = (v101 - 1) >> 32;
              if (!v107)
              {
                v108 = v101 & 0x1FFFFFFE0;
                v109 = v101 & 0x1FFFFFFF8;
                v110 = &v167[v96 + v97];
                v111 = (v157 + 16);
                v112 = v98;
                v113 = v157;
                while (1)
                {
                  v114 = (v99 + v107 * v100);
                  v115 = &v98[32 * v107];
                  if (v104)
                  {
                    v116 = 0;
                    goto LABEL_102;
                  }

                  if (v95 >= 0x10)
                  {
                    v118 = v111;
                    v119 = v110;
                    v120 = v101 & 0x1FFFFFFE0;
                    do
                    {
                      v121 = *v118;
                      *(v119 - 1) = *(v118 - 1);
                      *v119 = v121;
                      v119 += 2;
                      v118 += 2;
                      v120 -= 32;
                    }

                    while (v120);
                    if (v101 == v108)
                    {
                      goto LABEL_88;
                    }

                    v117 = v101 & 0x1FFFFFFE0;
                    if ((v95 & 0xC) == 0)
                    {
                      v114 += v108;
                      v115 += v108;
                      v116 = v101 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v115 += v109;
                  v122 = v117 - (v101 & 0x1FFFFFFF8);
                  v123 = (v113 + v117);
                  v124 = &v112[v117];
                  do
                  {
                    v125 = *v123++;
                    *v124++ = v125;
                    v122 += 8;
                  }

                  while (v122);
                  if (v101 == v109)
                  {
                    goto LABEL_88;
                  }

                  v114 += v109;
                  v116 = v101 & 0xFFFFFFF8;
LABEL_102:
                  v126 = v116 + 1;
                  do
                  {
                    v127 = *v114++;
                    *v115++ = v127;
                  }

                  while (v101 > v126++);
LABEL_88:
                  ++v107;
                  v110 += 32;
                  v111 = (v111 + v100);
                  v113 += v100;
                  v112 += 32;
                  if (v107 == v94)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v129 = 0;
            do
            {
              v130 = 0;
              do
              {
                v98[v130] = *(v99 + v130);
                ++v130;
              }

              while (v101 > v130);
              ++v129;
              v98 += 32;
              v99 += v100;
            }

            while (v129 != v94);
LABEL_109:
            v61 = v155;
            v62 = v156;
            v63 = v163;
            v64 = v164;
            v58 = *(*(v150 + 208) + 52);
            v59 = v166;
            v60 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v59, v60, v61, v62, v63, v64, v58);
            if (!v152)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v152)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v57, 0x200uLL);
LABEL_26:
          v34 = v36;
          result = v150;
        }

        while (v36 != (v143 >> 4) + 1);
        ++v19;
      }

      while (v19 != v131);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v173[14] = *MEMORY[0x29EDCA608];
  v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v148 = a8;
  v19 = a8 >> 4;
  v135 = a8 + a10 - 1;
  v20 = v135 >> 4;
  v150 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v152 = v25;
  result = a1;
  if (v19 <= v20)
  {
    v143 = a7 + a9 - 1;
    if (a7 >> 4 <= v143 >> 4)
    {
      v149 = (a5 - 1) >> 4;
      v134 = (a6 - 1) >> 4;
      v139 = (a5 - 1) & 0xF;
      v132 = ((a6 - 1) & 0xF) + 1;
      v133 = (a6 - 1) & 0xF;
      v131 = v20 + 1;
      do
      {
        v27 = (16 * v19) | 0xF;
        if (16 * v19 <= v148)
        {
          v28 = v148;
        }

        else
        {
          v28 = 16 * v19;
        }

        if (v135 < v27)
        {
          v27 = v135;
        }

        v142 = v28 - 16 * v19;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v133;
        v141 = v30;
        v32 = v30 != 16;
        v33 = v132;
        if (v19 != v134)
        {
          v33 = 16;
          v31 = v32;
        }

        v140 = v31;
        v146 = a3 + (v28 - v148) * a11;
        v147 = v33;
        v145 = v33;
        v34 = a7 >> 4;
        do
        {
          v35 = 16 * v34;
          v36 = v34 + 1;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v143 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v149)
          {
            v41 = v139 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v19 >= v148 && v35 >= a7)
          {
            v43 = v39 != v139;
            if (v34 != v149)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v140;
          }

          v44 = *(result + 128) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(result + 132) >> (*(result + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_59:
              v55 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_59;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v19) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_60:
          v56 = (a4 + v55);
          v57 = (a2 + v19 * v136 + (v34 << 8));
          __src = v57;
          if (v152)
          {
            v57 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v150;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
          {
LABEL_67:
            v58 = *(*(result + 208) + 52);
            v59 = (v146 + 2 * (v38 - a7));
            v60 = a11;
            v61 = v57;
            v62 = (a4 + v55);
            v63 = v41;
            v64 = v147;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v155 = v57;
          v163 = v41;
          v164 = v147;
          v159 = v142;
          v160 = v38 - v35;
          v156 = v56;
          v157 = v146 + 2 * (v38 - a7);
          v158 = a11;
          v161 = v141;
          v162 = v40;
          if ((v42 & 1) == 0)
          {
            v65 = *(*(result + 208) + 52);
            v66 = v57 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v166, 32, v57, *v56, v65, v16, v17, v18);
            v70 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v167, 32, v66, v56[1], v65, v67, v68, v69);
            v74 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v168, 32, v70, v56[2], v65, v71, v72, v73);
            v78 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v169, 32, v74, v56[3], v65, v75, v76, v77);
            v82 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v170, 32, v78, v56[4], v65, v79, v80, v81);
            v86 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v171, 32, v82, v56[5], v65, v83, v84, v85);
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v172, 32, v86, v56[6], v65, v87, v88, v89);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v173, 32, v86 + v90, v56[7], v65, v91, v92, v93);
            v94 = v161;
            if (!v161)
            {
              goto LABEL_109;
            }

            v95 = v162;
            if (!v162)
            {
              goto LABEL_109;
            }

            v96 = 32 * v159;
            v97 = 2 * v160;
            v98 = &v166[v96 + v97];
            v99 = v157;
            v100 = v158;
            v101 = 2 * v162;
            v104 = v98 < v157 + v158 * (v161 - 1) + v101 && v157 < &__dst[2 * v161 + 30 + 2 * v159] + 2 * v162 + v97 || v158 < 0;
            if (v162 <= 3)
            {
              v105 = 0;
              do
              {
                v106 = 0;
                do
                {
                  v98[v106] = *(v99 + v106);
                  ++v106;
                }

                while (v106 < v101);
                ++v105;
                v98 += 32;
                v99 += v100;
              }

              while (v105 != v94);
              goto LABEL_109;
            }

            if (v101)
            {
              v107 = (v101 - 1) >> 32;
              if (!v107)
              {
                v108 = v101 & 0x1FFFFFFE0;
                v109 = v101 & 0x1FFFFFFF8;
                v110 = &v167[v96 + v97];
                v111 = (v157 + 16);
                v112 = v98;
                v113 = v157;
                while (1)
                {
                  v114 = (v99 + v107 * v100);
                  v115 = &v98[32 * v107];
                  if (v104)
                  {
                    v116 = 0;
                    goto LABEL_102;
                  }

                  if (v95 >= 0x10)
                  {
                    v118 = v111;
                    v119 = v110;
                    v120 = v101 & 0x1FFFFFFE0;
                    do
                    {
                      v121 = *v118;
                      *(v119 - 1) = *(v118 - 1);
                      *v119 = v121;
                      v119 += 2;
                      v118 += 2;
                      v120 -= 32;
                    }

                    while (v120);
                    if (v101 == v108)
                    {
                      goto LABEL_88;
                    }

                    v117 = v101 & 0x1FFFFFFE0;
                    if ((v95 & 0xC) == 0)
                    {
                      v114 += v108;
                      v115 += v108;
                      v116 = v101 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v115 += v109;
                  v122 = v117 - (v101 & 0x1FFFFFFF8);
                  v123 = (v113 + v117);
                  v124 = &v112[v117];
                  do
                  {
                    v125 = *v123++;
                    *v124++ = v125;
                    v122 += 8;
                  }

                  while (v122);
                  if (v101 == v109)
                  {
                    goto LABEL_88;
                  }

                  v114 += v109;
                  v116 = v101 & 0xFFFFFFF8;
LABEL_102:
                  v126 = v116 + 1;
                  do
                  {
                    v127 = *v114++;
                    *v115++ = v127;
                  }

                  while (v101 > v126++);
LABEL_88:
                  ++v107;
                  v110 += 32;
                  v111 = (v111 + v100);
                  v113 += v100;
                  v112 += 32;
                  if (v107 == v94)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v129 = 0;
            do
            {
              v130 = 0;
              do
              {
                v98[v130] = *(v99 + v130);
                ++v130;
              }

              while (v101 > v130);
              ++v129;
              v98 += 32;
              v99 += v100;
            }

            while (v129 != v94);
LABEL_109:
            v61 = v155;
            v62 = v156;
            v63 = v163;
            v64 = v164;
            v58 = *(*(v150 + 208) + 52);
            v59 = v166;
            v60 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v59, v60, v61, v62, v63, v64, v58);
            if (!v152)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v152)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v57, 0x200uLL);
LABEL_26:
          v34 = v36;
          result = v150;
        }

        while (v36 != (v143 >> 4) + 1);
        ++v19;
      }

      while (v19 != v131);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v173[14] = *MEMORY[0x29EDCA608];
  v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v148 = a8;
  v19 = a8 >> 4;
  v135 = a8 + a10 - 1;
  v20 = v135 >> 4;
  v150 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v152 = v25;
  result = a1;
  if (v19 <= v20)
  {
    v143 = a7 + a9 - 1;
    if (a7 >> 4 <= v143 >> 4)
    {
      v149 = (a5 - 1) >> 4;
      v134 = (a6 - 1) >> 4;
      v139 = (a5 - 1) & 0xF;
      v132 = ((a6 - 1) & 0xF) + 1;
      v133 = (a6 - 1) & 0xF;
      v131 = v20 + 1;
      do
      {
        v27 = (16 * v19) | 0xF;
        if (16 * v19 <= v148)
        {
          v28 = v148;
        }

        else
        {
          v28 = 16 * v19;
        }

        if (v135 < v27)
        {
          v27 = v135;
        }

        v142 = v28 - 16 * v19;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v133;
        v141 = v30;
        v32 = v30 != 16;
        v33 = v132;
        if (v19 != v134)
        {
          v33 = 16;
          v31 = v32;
        }

        v140 = v31;
        v146 = a3 + (v28 - v148) * a11;
        v147 = v33;
        v145 = v33;
        v34 = a7 >> 4;
        do
        {
          v35 = 16 * v34;
          v36 = v34 + 1;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v143 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v149)
          {
            v41 = v139 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v19 >= v148 && v35 >= a7)
          {
            v43 = v39 != v139;
            if (v34 != v149)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v140;
          }

          v44 = *(result + 128) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(result + 132) >> (*(result + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_59:
              v55 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_59;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v19) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_60:
          v56 = (a4 + v55);
          v57 = (a2 + v19 * v136 + (v34 << 8));
          __src = v57;
          if (v152)
          {
            v57 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v150;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v145 < 0x10)))
          {
LABEL_67:
            v58 = *(*(result + 208) + 52);
            v59 = (v146 + 2 * (v38 - a7));
            v60 = a11;
            v61 = v57;
            v62 = (a4 + v55);
            v63 = v41;
            v64 = v147;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v155 = v57;
          v163 = v41;
          v164 = v147;
          v159 = v142;
          v160 = v38 - v35;
          v156 = v56;
          v157 = v146 + 2 * (v38 - a7);
          v158 = a11;
          v161 = v141;
          v162 = v40;
          if ((v42 & 1) == 0)
          {
            v65 = *(*(result + 208) + 52);
            v66 = v57 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v166, 32, v57, *v56, v65, v16, v17, v18);
            v70 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v167, 32, v66, v56[1], v65, v67, v68, v69);
            v74 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v168, 32, v70, v56[2], v65, v71, v72, v73);
            v78 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v169, 32, v74, v56[3], v65, v75, v76, v77);
            v82 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v170, 32, v78, v56[4], v65, v79, v80, v81);
            v86 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v171, 32, v82, v56[5], v65, v83, v84, v85);
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v172, 32, v86, v56[6], v65, v87, v88, v89);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v173, 32, v86 + v90, v56[7], v65, v91, v92, v93);
            v94 = v161;
            if (!v161)
            {
              goto LABEL_109;
            }

            v95 = v162;
            if (!v162)
            {
              goto LABEL_109;
            }

            v96 = 32 * v159;
            v97 = 2 * v160;
            v98 = &v166[v96 + v97];
            v99 = v157;
            v100 = v158;
            v101 = 2 * v162;
            v104 = v98 < v157 + v158 * (v161 - 1) + v101 && v157 < &__dst[2 * v161 + 30 + 2 * v159] + 2 * v162 + v97 || v158 < 0;
            if (v162 <= 3)
            {
              v105 = 0;
              do
              {
                v106 = 0;
                do
                {
                  v98[v106] = *(v99 + v106);
                  ++v106;
                }

                while (v106 < v101);
                ++v105;
                v98 += 32;
                v99 += v100;
              }

              while (v105 != v94);
              goto LABEL_109;
            }

            if (v101)
            {
              v107 = (v101 - 1) >> 32;
              if (!v107)
              {
                v108 = v101 & 0x1FFFFFFE0;
                v109 = v101 & 0x1FFFFFFF8;
                v110 = &v167[v96 + v97];
                v111 = (v157 + 16);
                v112 = v98;
                v113 = v157;
                while (1)
                {
                  v114 = (v99 + v107 * v100);
                  v115 = &v98[32 * v107];
                  if (v104)
                  {
                    v116 = 0;
                    goto LABEL_102;
                  }

                  if (v95 >= 0x10)
                  {
                    v118 = v111;
                    v119 = v110;
                    v120 = v101 & 0x1FFFFFFE0;
                    do
                    {
                      v121 = *v118;
                      *(v119 - 1) = *(v118 - 1);
                      *v119 = v121;
                      v119 += 2;
                      v118 += 2;
                      v120 -= 32;
                    }

                    while (v120);
                    if (v101 == v108)
                    {
                      goto LABEL_88;
                    }

                    v117 = v101 & 0x1FFFFFFE0;
                    if ((v95 & 0xC) == 0)
                    {
                      v114 += v108;
                      v115 += v108;
                      v116 = v101 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v115 += v109;
                  v122 = v117 - (v101 & 0x1FFFFFFF8);
                  v123 = (v113 + v117);
                  v124 = &v112[v117];
                  do
                  {
                    v125 = *v123++;
                    *v124++ = v125;
                    v122 += 8;
                  }

                  while (v122);
                  if (v101 == v109)
                  {
                    goto LABEL_88;
                  }

                  v114 += v109;
                  v116 = v101 & 0xFFFFFFF8;
LABEL_102:
                  v126 = v116 + 1;
                  do
                  {
                    v127 = *v114++;
                    *v115++ = v127;
                  }

                  while (v101 > v126++);
LABEL_88:
                  ++v107;
                  v110 += 32;
                  v111 = (v111 + v100);
                  v113 += v100;
                  v112 += 32;
                  if (v107 == v94)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v129 = 0;
            do
            {
              v130 = 0;
              do
              {
                v98[v130] = *(v99 + v130);
                ++v130;
              }

              while (v101 > v130);
              ++v129;
              v98 += 32;
              v99 += v100;
            }

            while (v129 != v94);
LABEL_109:
            v61 = v155;
            v62 = v156;
            v63 = v163;
            v64 = v164;
            v58 = *(*(v150 + 208) + 52);
            v59 = v166;
            v60 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v59, v60, v61, v62, v63, v64, v58);
            if (!v152)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v152)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v57, 0x200uLL);
LABEL_26:
          v34 = v36;
          result = v150;
        }

        while (v36 != (v143 >> 4) + 1);
        ++v19;
      }

      while (v19 != v131);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v154[28] = *MEMORY[0x29EDCA608];
  v116 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v130 = a8;
  v17 = a8 >> 4;
  v115 = a8 + a10 - 1;
  v18 = v115 >> 4;
  v131 = a1;
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
  v134 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v125 = a7 + a9 - 1;
    if (a7 >> 4 <= v125 >> 4)
    {
      v132 = (a5 - 1) >> 4;
      v114 = (a6 - 1) >> 4;
      v119 = (a5 - 1) & 0xF;
      v112 = ((a6 - 1) & 0xF) + 1;
      v113 = (a6 - 1) & 0xF;
      v123 = a7;
      v110 = v18 + 1;
      v111 = a7 >> 4;
      v124 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v130)
        {
          v26 = v130;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v115 < v25)
        {
          v25 = v115;
        }

        v122 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v113;
        v121 = v28;
        v30 = v28 != 16;
        v31 = v112;
        if (v17 != v114)
        {
          v31 = 16;
          v29 = v30;
        }

        v120 = v29;
        v128 = a3 + (v26 - v130) * a11;
        v129 = v31;
        v127 = v31;
        v32 = v111;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v125 < v35)
          {
            v35 = v125;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v132)
          {
            v39 = v119 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v130 && v33 >= v123)
          {
            v41 = v37 != v119;
            if (v32 != v132)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v120;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v128 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v116 + (v32 << 10));
          __src = v56;
          if (v134)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v131;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
          {
LABEL_67:
            v57 = v55;
            v58 = a11;
            v59 = v56;
            v60 = (a4 + v53);
            v61 = v39;
            v62 = v129;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v136 = v56;
          v144 = v39;
          v145 = v129;
          v140 = v122;
          v141 = v36 - v33;
          v137 = v54;
          v138 = v55;
          v139 = a11;
          v142 = v121;
          v143 = v38;
          if ((v40 & 1) == 0)
          {
            v63 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v56, *v54));
            v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v148, 64, v63, v54[1]));
            v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v149, 64, v64, v54[2]));
            v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v150, 64, v65, v54[3]));
            v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v151, 64, v66, v54[4]));
            v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v152, 64, v67, v54[5]));
            v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v153, 64, v68, v54[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, (v68 + v69), v54[7]);
            v70 = v142;
            if (!v142)
            {
              goto LABEL_109;
            }

            v71 = v143;
            if (!v143)
            {
              goto LABEL_109;
            }

            v72 = v140 << 6;
            v73 = 4 * v141;
            v74 = &v147[v72 + v73];
            v75 = v138;
            v76 = v139;
            v77 = 4 * v143;
            v80 = v74 < &v138[v139 * (v142 - 1) + v77] && v138 < &__dst[64 * v142 + 960 + 64 * v140 + 4 * v143 + v73] || v139 < 0;
            if (v143 == 1)
            {
              v81 = 0;
              do
              {
                v82 = (v75 + v81 * v76);
                v83 = &v74[64 * v81];
                v84 = -1;
                do
                {
                  v85 = *v82++;
                  *v83++ = v85;
                  ++v84;
                }

                while (v84 < 3);
                ++v81;
              }

              while (v81 != v70);
              goto LABEL_109;
            }

            if (v77)
            {
              v86 = (v77 - 1) >> 32;
              if (!v86)
              {
                v87 = v77 & 0x1FFFFFFE0;
                v88 = v77 & 0x1FFFFFFF8;
                v89 = &v147[v72 + 16 + v73];
                v90 = (v138 + 16);
                v91 = v74;
                v92 = v138;
                while (1)
                {
                  v93 = (v75 + v86 * v76);
                  v94 = &v74[64 * v86];
                  if (v80)
                  {
                    v95 = 0;
                    goto LABEL_102;
                  }

                  if (v71 >= 8)
                  {
                    v97 = v90;
                    v98 = v89;
                    v99 = v77 & 0x1FFFFFFE0;
                    do
                    {
                      v100 = *v97;
                      *(v98 - 1) = *(v97 - 1);
                      *v98 = v100;
                      v98 += 2;
                      v97 += 2;
                      v99 -= 32;
                    }

                    while (v99);
                    if (v77 == v87)
                    {
                      goto LABEL_88;
                    }

                    v96 = v77 & 0x1FFFFFFE0;
                    if ((v71 & 6) == 0)
                    {
                      v93 += v87;
                      v94 += v87;
                      v95 = v77 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v96 = 0;
                  }

                  v94 += v88;
                  v101 = -8 * ((v71 >> 1) & 0x3FFFFFFF) + v96;
                  v102 = (v92 + v96);
                  v103 = &v91[v96];
                  do
                  {
                    v104 = *v102++;
                    *v103++ = v104;
                    v101 += 8;
                  }

                  while (v101);
                  if (v77 == v88)
                  {
                    goto LABEL_88;
                  }

                  v93 += v88;
                  v95 = v77 & 0xFFFFFFF8;
LABEL_102:
                  v105 = v95 + 1;
                  do
                  {
                    v106 = *v93++;
                    *v94++ = v106;
                  }

                  while (v77 > v105++);
LABEL_88:
                  ++v86;
                  v89 += 64;
                  v90 = (v90 + v76);
                  v92 += v76;
                  v91 += 64;
                  if (v86 == v70)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v108 = 0;
            do
            {
              v109 = 0;
              do
              {
                v74[v109] = *(v75 + v109);
                ++v109;
              }

              while (v77 > v109);
              ++v108;
              v74 += 64;
              v75 += v76;
            }

            while (v108 != v70);
LABEL_109:
            v59 = v136;
            v60 = v137;
            v61 = v144;
            v62 = v145;
            v57 = v147;
            v58 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v57, v58, v59, v60, v61, v62);
            if (!v134)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v134)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v124;
          result = v131;
        }

        while (v34 != (v125 >> 4) + 1);
        ++v17;
      }

      while (v17 != v110);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v199[28] = *MEMORY[0x29EDCA608];
  v163 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v174 = a8;
  v16 = a8 >> 4;
  v162 = a8 + a10 - 1;
  v17 = v162 >> 4;
  v175 = a1;
  if (*(a1 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v178 = v22;
  result = a1;
  if (v16 <= v17)
  {
    v171 = a7 + a9 - 1;
    if (a7 >> 4 <= v171 >> 4)
    {
      v24 = a11;
      v176 = (a5 - 1) >> 4;
      v161 = (a6 - 1) >> 4;
      v167 = (a5 - 1) & 0xF;
      v159 = ((a6 - 1) & 0xF) + 1;
      v160 = (a6 - 1) & 0xF;
      v158 = v17 + 1;
      v25 = 2 * a11;
      do
      {
        v26 = (16 * v16) | 0xF;
        if (16 * v16 <= v174)
        {
          v27 = v174;
        }

        else
        {
          v27 = 16 * v16;
        }

        if (v162 < v26)
        {
          v26 = v162;
        }

        v170 = v27 - 16 * v16;
        v28 = v26 - v27;
        v29 = v28 + 1;
        v30 = v28 != v160;
        v169 = v29;
        if (v16 == v161)
        {
          v31 = v159;
        }

        else
        {
          v31 = 16;
        }

        if (v16 != v161)
        {
          v30 = v29 != 16;
        }

        v168 = v30;
        v173 = a3 + (v27 - v174) * v24;
        v32 = a7 >> 4;
        do
        {
          v33 = 16 * v32;
          v34 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 16 * v32;
          }

          if (v171 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v176)
          {
            v38 = v167 + 1;
          }

          else
          {
            v38 = 16;
          }

          v39 = 1;
          if (16 * v16 >= v174 && v33 >= a7)
          {
            v40 = v36 != v167;
            if (v32 != v176)
            {
              v40 = v37 != 16;
            }

            v39 = v40 || v168;
          }

          v41 = *(result + 128) >> (*(result + 144) + a12);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = v41 + 15;
          if (v42 < 0x20)
          {
            v43 = 0;
          }

          else
          {
            v43 = 32 - __clz(~(-1 << -__clz((v42 >> 4) - 1)));
          }

          v44 = *(result + 132) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v177 = v32 + 1;
          if (v46 | v43)
          {
            v47 = 0;
            v48 = 0;
            v49 = v43 != 0;
            v50 = v46 != 0;
            v51 = 1;
            do
            {
              --v43;
              if (v49)
              {
                v48 |= (v51 & v32) << v47++;
              }

              else
              {
                v43 = 0;
              }

              --v46;
              if (v50)
              {
                v48 |= (v51 & v16) << v47++;
              }

              else
              {
                v46 = 0;
              }

              v51 *= 2;
              --v47;
              v50 = v46 != 0;
              v49 = v43 != 0;
            }

            while (v46 | v43);
            v52 = 8 * v48;
          }

          else
          {
            v52 = 0;
          }

          v53 = (a4 + v52);
          v54 = v173 + 4 * (v35 - a7);
          v55 = (a2 + v16 * v163 + (v32 << 10));
          if (v178)
          {
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              v56 = (a2 + v16 * v163 + (v32 << 10));
              v166 = v37;
              v57 = v24;
              v58 = v35;
              memcpy(__dst, v55, sizeof(__dst));
              v35 = v58;
              v24 = v57;
              v37 = v166;
              v59 = __dst;
              v55 = v56;
              result = v175;
LABEL_66:
              v60 = v55;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v181 = v59;
              v189 = v38;
              v190 = v31;
              v185 = v170;
              v186 = v35 - v33;
              v182 = v53;
              v183 = v54;
              v184 = v24;
              v187 = v169;
              v188 = v37;
              if (v39)
              {
                v61 = v59;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v59 = v61;
                result = v175;
                v62 = v177;
                v55 = v60;
                v25 = 2 * a11;
                goto LABEL_78;
              }

              v86 = v59;
              v87 = (v59 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v192, 64, v59, *v53));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v193, 64, v87, v53[1]));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v194, 64, v88, v53[2]));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v195, 64, v89, v53[3]));
              v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v196, 64, v90, v53[4]));
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v197, 64, v91, v53[5]));
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v198, 64, v92, v53[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, (v92 + v93), v53[7]);
              v94 = v187;
              if (v187)
              {
                v95 = v188;
                if (v188)
                {
                  v96 = v185 << 6;
                  v97 = 4 * v186;
                  v98 = &v192[v96 + v97];
                  v99 = v183;
                  v100 = v184;
                  v101 = 4 * v188;
                  v104 = v98 < v183 + v184 * (v187 - 1) + v101 && v183 < &__dst[64 * v187 + 960 + 64 * v185 + 4 * v188 + v97] || v184 < 0;
                  if (v188 == 1)
                  {
                    v105 = 0;
                    do
                    {
                      v106 = (v99 + v105 * v100);
                      v107 = &v98[64 * v105];
                      v108 = -1;
                      do
                      {
                        v109 = *v106++;
                        *v107++ = v109;
                        ++v108;
                      }

                      while (v108 < 3);
                      ++v105;
                    }

                    while (v105 != v94);
                    goto LABEL_121;
                  }

                  if (v101)
                  {
                    v110 = (v101 - 1) >> 32;
                    if (!v110)
                    {
                      v111 = v101 & 0x1FFFFFFE0;
                      v112 = v101 & 0x1FFFFFFF8;
                      v113 = &v192[v96 + 16 + v97];
                      v114 = (v183 + 16);
                      v115 = v98;
                      v116 = v183;
                      v117 = -8 * ((v188 >> 1) & 0x3FFFFFFF);
                      while (1)
                      {
                        v118 = (v99 + v110 * v100);
                        v119 = &v98[64 * v110];
                        if (v104)
                        {
                          v120 = 0;
                          goto LABEL_114;
                        }

                        if (v95 >= 8)
                        {
                          v122 = v114;
                          v123 = v113;
                          v124 = v101 & 0x1FFFFFFE0;
                          do
                          {
                            v125 = *v122;
                            *(v123 - 1) = *(v122 - 1);
                            *v123 = v125;
                            v123 += 2;
                            v122 += 2;
                            v124 -= 32;
                          }

                          while (v124);
                          if (v101 == v111)
                          {
                            goto LABEL_100;
                          }

                          v121 = v101 & 0x1FFFFFFE0;
                          if ((v95 & 6) == 0)
                          {
                            v118 += v111;
                            v119 += v111;
                            v120 = v101 & 0xFFFFFFE0;
                            goto LABEL_114;
                          }
                        }

                        else
                        {
                          v121 = 0;
                        }

                        v119 += v112;
                        v126 = v117 + v121;
                        v127 = (v116 + v121);
                        v128 = &v115[v121];
                        do
                        {
                          v129 = *v127++;
                          *v128++ = v129;
                          v126 += 8;
                        }

                        while (v126);
                        if (v101 == v112)
                        {
                          goto LABEL_100;
                        }

                        v118 += v112;
                        v120 = v101 & 0xFFFFFFF8;
LABEL_114:
                        v130 = v120 + 1;
                        do
                        {
                          v131 = *v118++;
                          *v119++ = v131;
                        }

                        while (v101 > v130++);
LABEL_100:
                        ++v110;
                        v113 += 64;
                        v114 = (v114 + v100);
                        v116 += v100;
                        v115 += 64;
                        if (v110 == v94)
                        {
                          goto LABEL_121;
                        }
                      }
                    }
                  }

                  v133 = 0;
                  do
                  {
                    v134 = 0;
                    do
                    {
                      v98[v134] = *(v99 + v134);
                      ++v134;
                    }

                    while (v101 > v134);
                    ++v133;
                    v98 += 64;
                    v99 += v100;
                  }

                  while (v133 != v94);
                }
              }

LABEL_121:
              v135 = v181;
              v136 = v182;
              v137 = v189;
              v138 = &byte_29D2F30C1;
              v139 = 16;
              v140 = v190;
              result = v175;
              v62 = v177;
              v55 = v60;
              v25 = 2 * a11;
              v59 = v86;
              do
              {
                v155 = *v138;
                v156 = *(v138 - 1);
                if (v137 <= 8 * v156 || 4 * v155 >= v140)
                {
                  v154 = 0;
                }

                else
                {
                  v141 = &v192[256 * v155 + 32 * v156];
                  v142 = v141[1];
                  v143 = v141[4];
                  v144 = v141[5];
                  v145 = vzip1q_s64(*v141, v143);
                  v146 = vzip2q_s64(*v141, v143);
                  v147 = vzip1q_s64(v142, v144);
                  v148 = vzip2q_s64(v142, v144);
                  v149 = v141[8];
                  v150 = v141[9];
                  v141 += 12;
                  v151 = v141[1];
                  v152 = vzip1q_s64(v149, *v141);
                  v153 = vzip2q_s64(v149, *v141);
                  *v135 = v145;
                  v135[1] = v146;
                  v135[2] = v152;
                  v135[3] = v153;
                  v135[4] = v147;
                  v135[5] = v148;
                  v135[6] = vzip1q_s64(v150, v151);
                  v135[7] = vzip2q_s64(v150, v151);
                  v135 += 8;
                  v154 = 127;
                }

                *v136++ = v154;
                v138 += 2;
                v139 -= 2;
              }

              while (v139);
              goto LABEL_78;
            }

            v59 = __dst;
          }

          else
          {
            v59 = (a2 + v16 * v163 + (v32 << 10));
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              goto LABEL_66;
            }
          }

          v63 = &byte_29D2F30C1;
          v64 = 16;
          v65 = v59;
          do
          {
            v83 = *v63;
            v84 = *(v63 - 1);
            if (v38 <= 8 * v84 || 4 * v83 >= v31)
            {
              v82 = 0;
            }

            else
            {
              v66 = (v54 + 4 * a11 * v83 + 32 * v84);
              v67 = (v66 + v24);
              v69 = *v66;
              v70 = v66[1];
              v68 = (v66 + v25);
              v71 = v67[1];
              v72 = vzip1q_s64(v69, *v67);
              v73 = vzip2q_s64(v69, *v67);
              v74 = vzip1q_s64(v70, v71);
              v75 = vzip2q_s64(v70, v71);
              v77 = *v68;
              v78 = v68[1];
              v76 = (v68 + v24);
              v79 = v76[1];
              v80 = vzip1q_s64(v77, *v76);
              v81 = vzip2q_s64(v77, *v76);
              *v65 = v72;
              v65[1] = v73;
              v65[2] = v80;
              v65[3] = v81;
              v65[4] = v74;
              v65[5] = v75;
              v65[6] = vzip1q_s64(v78, v79);
              v65[7] = vzip2q_s64(v78, v79);
              v65 += 8;
              v82 = 127;
            }

            *v53++ = v82;
            v63 += 2;
            v64 -= 2;
          }

          while (v64);
          v62 = v177;
LABEL_78:
          if (v178)
          {
            memcpy(v55, v59, 0x400uLL);
            result = v175;
          }

          v32 = v62;
        }

        while (v62 != (v171 >> 4) + 1);
        ++v16;
      }

      while (v16 != v158);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v157 = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + 768 * v32);
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = v149 + v74 + v75;
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < v140 + v141 * (v144 - 1) + v79 && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[1] + v74 + v75;
                v92 = &v140[1];
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105 = v106;
                    v105 += 8;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v157 = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + 640 * v32);
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = v149 + v74 + v75;
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < v140 + v141 * (v144 - 1) + v79 && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[1] + v74 + v75;
                v92 = &v140[1];
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105 = v106;
                    v105 += 8;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v157 = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + (v32 << 9));
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = v149 + v74 + v75;
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < v140 + v141 * (v144 - 1) + v79 && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[1] + v74 + v75;
                v92 = &v140[1];
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105 = v106;
                    v105 += 8;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v155 = *MEMORY[0x29EDCA608];
  v116 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v130 = a8;
  v17 = a8 >> 4;
  v115 = a8 + a10 - 1;
  v18 = v115 >> 4;
  v131 = a1;
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
  v134 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v125 = a7 + a9 - 1;
    if (a7 >> 4 <= v125 >> 4)
    {
      v132 = (a5 - 1) >> 4;
      v114 = (a6 - 1) >> 4;
      v119 = (a5 - 1) & 0xF;
      v112 = ((a6 - 1) & 0xF) + 1;
      v113 = (a6 - 1) & 0xF;
      v123 = a7;
      v110 = v18 + 1;
      v111 = a7 >> 4;
      v124 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v130)
        {
          v26 = v130;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v115 < v25)
        {
          v25 = v115;
        }

        v122 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v113;
        v121 = v28;
        v30 = v28 != 16;
        v31 = v112;
        if (v17 != v114)
        {
          v31 = 16;
          v29 = v30;
        }

        v120 = v29;
        v128 = a3 + (v26 - v130) * a11;
        v129 = v31;
        v127 = v31;
        v32 = v111;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v125 < v35)
          {
            v35 = v125;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v132)
          {
            v39 = v119 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v130 && v33 >= v123)
          {
            v41 = v37 != v119;
            if (v32 != v132)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v120;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v128 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v116 + (v32 << 10));
          __src = v56;
          if (v134)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v131;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
          {
LABEL_67:
            v57 = v55;
            v58 = a11;
            v59 = v56;
            v60 = (a4 + v53);
            v61 = v39;
            v62 = v129;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v136 = v56;
          v144 = v39;
          v145 = v129;
          v140 = v122;
          v141 = v36 - v33;
          v137 = v54;
          v138 = v55;
          v139 = a11;
          v142 = v121;
          v143 = v38;
          if ((v40 & 1) == 0)
          {
            v63 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v56, *v54));
            v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v63, v54[1]));
            v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v64, v54[2]));
            v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v65, v54[3]));
            v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v66, v54[4]));
            v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v67, v54[5]));
            v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v68, v54[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, (v68 + v69), v54[7]);
            v70 = v142;
            if (!v142)
            {
              goto LABEL_109;
            }

            v71 = v143;
            if (!v143)
            {
              goto LABEL_109;
            }

            v72 = v140 << 6;
            v73 = 4 * v141;
            v74 = &v147[0].i8[v72 + v73];
            v75 = v138;
            v76 = v139;
            v77 = 4 * v143;
            v80 = v74 < &v138->i8[v139 * (v142 - 1) + v77] && v138 < &__dst[64 * v142 + 960 + 64 * v140 + 4 * v143 + v73] || v139 < 0;
            if (v143 == 1)
            {
              v81 = 0;
              do
              {
                v82 = (v75 + v81 * v76);
                v83 = &v74[64 * v81];
                v84 = -1;
                do
                {
                  v85 = *v82++;
                  *v83++ = v85;
                  ++v84;
                }

                while (v84 < 3);
                ++v81;
              }

              while (v81 != v70);
              goto LABEL_109;
            }

            if (v77)
            {
              v86 = (v77 - 1) >> 32;
              if (!v86)
              {
                v87 = v77 & 0x1FFFFFFE0;
                v88 = v77 & 0x1FFFFFFF8;
                v89 = &v147[1].i8[v72 + v73];
                v90 = v138 + 1;
                v91 = v74;
                v92 = v138;
                while (1)
                {
                  v93 = (v75 + v86 * v76);
                  v94 = &v74[64 * v86];
                  if (v80)
                  {
                    v95 = 0;
                    goto LABEL_102;
                  }

                  if (v71 >= 8)
                  {
                    v97 = v90;
                    v98 = v89;
                    v99 = v77 & 0x1FFFFFFE0;
                    do
                    {
                      v100 = *v97;
                      *(v98 - 1) = v97[-1];
                      *v98 = v100;
                      v98 += 32;
                      v97 += 2;
                      v99 -= 32;
                    }

                    while (v99);
                    if (v77 == v87)
                    {
                      goto LABEL_88;
                    }

                    v96 = v77 & 0x1FFFFFFE0;
                    if ((v71 & 6) == 0)
                    {
                      v93 += v87;
                      v94 += v87;
                      v95 = v77 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v96 = 0;
                  }

                  v94 += v88;
                  v101 = -8 * ((v71 >> 1) & 0x3FFFFFFF) + v96;
                  v102 = (v92 + v96);
                  v103 = &v91[v96];
                  do
                  {
                    v104 = *v102++;
                    *v103 = v104;
                    v103 += 8;
                    v101 += 8;
                  }

                  while (v101);
                  if (v77 == v88)
                  {
                    goto LABEL_88;
                  }

                  v93 += v88;
                  v95 = v77 & 0xFFFFFFF8;
LABEL_102:
                  v105 = v95 + 1;
                  do
                  {
                    v106 = *v93++;
                    *v94++ = v106;
                  }

                  while (v77 > v105++);
LABEL_88:
                  ++v86;
                  v89 += 64;
                  v90 = (v90 + v76);
                  v92 += v76;
                  v91 += 64;
                  if (v86 == v70)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v108 = 0;
            do
            {
              v109 = 0;
              do
              {
                v74[v109] = *(v75 + v109);
                ++v109;
              }

              while (v77 > v109);
              ++v108;
              v74 += 64;
              v75 += v76;
            }

            while (v108 != v70);
LABEL_109:
            v59 = v136;
            v60 = v137;
            v61 = v144;
            v62 = v145;
            v57 = v147;
            v58 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v57, v58, v59, v60, v61, v62);
            if (!v134)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v134)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v124;
          result = v131;
        }

        while (v34 != (v125 >> 4) + 1);
        ++v17;
      }

      while (v17 != v110);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v200 = *MEMORY[0x29EDCA608];
  v163 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v174 = a8;
  v16 = a8 >> 4;
  v162 = a8 + a10 - 1;
  v17 = v162 >> 4;
  v175 = a1;
  if (*(a1 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v178 = v22;
  result = a1;
  if (v16 <= v17)
  {
    v171 = a7 + a9 - 1;
    if (a7 >> 4 <= v171 >> 4)
    {
      v24 = a11;
      v176 = (a5 - 1) >> 4;
      v161 = (a6 - 1) >> 4;
      v167 = (a5 - 1) & 0xF;
      v159 = ((a6 - 1) & 0xF) + 1;
      v160 = (a6 - 1) & 0xF;
      v158 = v17 + 1;
      v25 = 2 * a11;
      do
      {
        v26 = (16 * v16) | 0xF;
        if (16 * v16 <= v174)
        {
          v27 = v174;
        }

        else
        {
          v27 = 16 * v16;
        }

        if (v162 < v26)
        {
          v26 = v162;
        }

        v170 = v27 - 16 * v16;
        v28 = v26 - v27;
        v29 = v28 + 1;
        v30 = v28 != v160;
        v169 = v29;
        if (v16 == v161)
        {
          v31 = v159;
        }

        else
        {
          v31 = 16;
        }

        if (v16 != v161)
        {
          v30 = v29 != 16;
        }

        v168 = v30;
        v173 = a3 + (v27 - v174) * v24;
        v32 = a7 >> 4;
        do
        {
          v33 = 16 * v32;
          v34 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 16 * v32;
          }

          if (v171 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v176)
          {
            v38 = v167 + 1;
          }

          else
          {
            v38 = 16;
          }

          v39 = 1;
          if (16 * v16 >= v174 && v33 >= a7)
          {
            v40 = v36 != v167;
            if (v32 != v176)
            {
              v40 = v37 != 16;
            }

            v39 = v40 || v168;
          }

          v41 = *(result + 128) >> (*(result + 144) + a12);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = v41 + 15;
          if (v42 < 0x20)
          {
            v43 = 0;
          }

          else
          {
            v43 = 32 - __clz(~(-1 << -__clz((v42 >> 4) - 1)));
          }

          v44 = *(result + 132) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v177 = v32 + 1;
          if (v46 | v43)
          {
            v47 = 0;
            v48 = 0;
            v49 = v43 != 0;
            v50 = v46 != 0;
            v51 = 1;
            do
            {
              --v43;
              if (v49)
              {
                v48 |= (v51 & v32) << v47++;
              }

              else
              {
                v43 = 0;
              }

              --v46;
              if (v50)
              {
                v48 |= (v51 & v16) << v47++;
              }

              else
              {
                v46 = 0;
              }

              v51 *= 2;
              --v47;
              v50 = v46 != 0;
              v49 = v43 != 0;
            }

            while (v46 | v43);
            v52 = 8 * v48;
          }

          else
          {
            v52 = 0;
          }

          v53 = (a4 + v52);
          v54 = v173 + 4 * (v35 - a7);
          v55 = (a2 + v16 * v163 + (v32 << 10));
          if (v178)
          {
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              v56 = (a2 + v16 * v163 + (v32 << 10));
              v166 = v37;
              v57 = v24;
              v58 = v35;
              memcpy(__dst, v55, sizeof(__dst));
              v35 = v58;
              v24 = v57;
              v37 = v166;
              v59 = __dst;
              v55 = v56;
              result = v175;
LABEL_66:
              v60 = v55;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v181 = v59;
              v189 = v38;
              v190 = v31;
              v185 = v170;
              v186 = v35 - v33;
              v182 = v53;
              v183 = v54;
              v184 = v24;
              v187 = v169;
              v188 = v37;
              if (v39)
              {
                v61 = v59;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v59 = v61;
                result = v175;
                v62 = v177;
                v55 = v60;
                v25 = 2 * a11;
                goto LABEL_78;
              }

              v86 = v59;
              v87 = (v59 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v192, 64, v59, *v53));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v193, 64, v87, v53[1]));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v194, 64, v88, v53[2]));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v89, v53[3]));
              v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v53[4]));
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v91, v53[5]));
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v92, v53[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, (v92 + v93), v53[7]);
              v94 = v187;
              if (v187)
              {
                v95 = v188;
                if (v188)
                {
                  v96 = v185 << 6;
                  v97 = 4 * v186;
                  v98 = &v192[0].i8[v96 + v97];
                  v99 = v183;
                  v100 = v184;
                  v101 = 4 * v188;
                  v104 = v98 < v183 + v184 * (v187 - 1) + v101 && v183 < &__dst[64 * v187 + 960 + 64 * v185 + 4 * v188 + v97] || v184 < 0;
                  if (v188 == 1)
                  {
                    v105 = 0;
                    do
                    {
                      v106 = (v99 + v105 * v100);
                      v107 = &v98[64 * v105];
                      v108 = -1;
                      do
                      {
                        v109 = *v106++;
                        *v107++ = v109;
                        ++v108;
                      }

                      while (v108 < 3);
                      ++v105;
                    }

                    while (v105 != v94);
                    goto LABEL_121;
                  }

                  if (v101)
                  {
                    v110 = (v101 - 1) >> 32;
                    if (!v110)
                    {
                      v111 = v101 & 0x1FFFFFFE0;
                      v112 = v101 & 0x1FFFFFFF8;
                      v113 = &v192[1].i8[v96 + v97];
                      v114 = (v183 + 16);
                      v115 = v98;
                      v116 = v183;
                      v117 = -8 * ((v188 >> 1) & 0x3FFFFFFF);
                      while (1)
                      {
                        v118 = (v99 + v110 * v100);
                        v119 = &v98[64 * v110];
                        if (v104)
                        {
                          v120 = 0;
                          goto LABEL_114;
                        }

                        if (v95 >= 8)
                        {
                          v122 = v114;
                          v123 = v113;
                          v124 = v101 & 0x1FFFFFFE0;
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
                          if (v101 == v111)
                          {
                            goto LABEL_100;
                          }

                          v121 = v101 & 0x1FFFFFFE0;
                          if ((v95 & 6) == 0)
                          {
                            v118 += v111;
                            v119 += v111;
                            v120 = v101 & 0xFFFFFFE0;
                            goto LABEL_114;
                          }
                        }

                        else
                        {
                          v121 = 0;
                        }

                        v119 += v112;
                        v126 = v117 + v121;
                        v127 = (v116 + v121);
                        v128 = &v115[v121];
                        do
                        {
                          v129 = *v127++;
                          *v128 = v129;
                          v128 += 8;
                          v126 += 8;
                        }

                        while (v126);
                        if (v101 == v112)
                        {
                          goto LABEL_100;
                        }

                        v118 += v112;
                        v120 = v101 & 0xFFFFFFF8;
LABEL_114:
                        v130 = v120 + 1;
                        do
                        {
                          v131 = *v118++;
                          *v119++ = v131;
                        }

                        while (v101 > v130++);
LABEL_100:
                        ++v110;
                        v113 += 64;
                        v114 = (v114 + v100);
                        v116 += v100;
                        v115 += 64;
                        if (v110 == v94)
                        {
                          goto LABEL_121;
                        }
                      }
                    }
                  }

                  v133 = 0;
                  do
                  {
                    v134 = 0;
                    do
                    {
                      v98[v134] = *(v99 + v134);
                      ++v134;
                    }

                    while (v101 > v134);
                    ++v133;
                    v98 += 64;
                    v99 += v100;
                  }

                  while (v133 != v94);
                }
              }

LABEL_121:
              v135 = v181;
              v136 = v182;
              v137 = v189;
              v138 = &byte_29D2F30C1;
              v139 = 16;
              v140 = v190;
              result = v175;
              v62 = v177;
              v55 = v60;
              v25 = 2 * a11;
              v59 = v86;
              do
              {
                v155 = *v138;
                v156 = *(v138 - 1);
                if (v137 <= 8 * v156 || 4 * v155 >= v140)
                {
                  v154 = 0;
                }

                else
                {
                  v141 = &v192[16 * v155 + 2 * v156];
                  v142 = v141[1];
                  v143 = v141[4];
                  v144 = v141[5];
                  v145 = vzip1q_s64(*v141, v143);
                  v146 = vzip2q_s64(*v141, v143);
                  v147 = vzip1q_s64(v142, v144);
                  v148 = vzip2q_s64(v142, v144);
                  v149 = v141[8];
                  v150 = v141[9];
                  v141 += 12;
                  v151 = v141[1];
                  v152 = vzip1q_s64(v149, *v141);
                  v153 = vzip2q_s64(v149, *v141);
                  *v135 = v145;
                  v135[1] = v146;
                  v135[2] = v152;
                  v135[3] = v153;
                  v135[4] = v147;
                  v135[5] = v148;
                  v135[6] = vzip1q_s64(v150, v151);
                  v135[7] = vzip2q_s64(v150, v151);
                  v135 += 8;
                  v154 = 127;
                }

                *v136++ = v154;
                v138 += 2;
                v139 -= 2;
              }

              while (v139);
              goto LABEL_78;
            }

            v59 = __dst;
          }

          else
          {
            v59 = (a2 + v16 * v163 + (v32 << 10));
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              goto LABEL_66;
            }
          }

          v63 = &byte_29D2F30C1;
          v64 = 16;
          v65 = v59;
          do
          {
            v83 = *v63;
            v84 = *(v63 - 1);
            if (v38 <= 8 * v84 || 4 * v83 >= v31)
            {
              v82 = 0;
            }

            else
            {
              v66 = (v54 + 4 * a11 * v83 + 32 * v84);
              v67 = (v66 + v24);
              v69 = *v66;
              v70 = v66[1];
              v68 = (v66 + v25);
              v71 = v67[1];
              v72 = vzip1q_s64(v69, *v67);
              v73 = vzip2q_s64(v69, *v67);
              v74 = vzip1q_s64(v70, v71);
              v75 = vzip2q_s64(v70, v71);
              v77 = *v68;
              v78 = v68[1];
              v76 = (v68 + v24);
              v79 = v76[1];
              v80 = vzip1q_s64(v77, *v76);
              v81 = vzip2q_s64(v77, *v76);
              *v65 = v72;
              v65[1] = v73;
              v65[2] = v80;
              v65[3] = v81;
              v65[4] = v74;
              v65[5] = v75;
              v65[6] = vzip1q_s64(v78, v79);
              v65[7] = vzip2q_s64(v78, v79);
              v65 += 8;
              v82 = 127;
            }

            *v53++ = v82;
            v63 += 2;
            v64 -= 2;
          }

          while (v64);
          v62 = v177;
LABEL_78:
          if (v178)
          {
            memcpy(v55, v59, 0x400uLL);
            result = v175;
          }

          v32 = v62;
        }

        while (v62 != (v171 >> 4) + 1);
        ++v16;
      }

      while (v16 != v158);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v156[28] = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + 896 * v32);
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = &v149[v74 + v75];
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < &v140[v141 * (v144 - 1) + v79] && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[v74 + 16 + v75];
                v92 = (v140 + 16);
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105++ = v106;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v156[28] = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + 640 * v32);
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = &v149[v74 + v75];
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < &v140[v141 * (v144 - 1) + v79] && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[v74 + 16 + v75];
                v92 = (v140 + 16);
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105++ = v106;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v156[28] = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + (v32 << 9));
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = &v149[v74 + v75];
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < &v140[v141 * (v144 - 1) + v79] && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[v74 + 16 + v75];
                v92 = (v140 + 16);
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = *(v99 - 1);
                      *v100 = v102;
                      v100 += 2;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105++ = v106;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v155 = *MEMORY[0x29EDCA608];
  v116 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v130 = a8;
  v17 = a8 >> 4;
  v115 = a8 + a10 - 1;
  v18 = v115 >> 4;
  v131 = a1;
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
  v134 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v125 = a7 + a9 - 1;
    if (a7 >> 4 <= v125 >> 4)
    {
      v132 = (a5 - 1) >> 4;
      v114 = (a6 - 1) >> 4;
      v119 = (a5 - 1) & 0xF;
      v112 = ((a6 - 1) & 0xF) + 1;
      v113 = (a6 - 1) & 0xF;
      v123 = a7;
      v110 = v18 + 1;
      v111 = a7 >> 4;
      v124 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v130)
        {
          v26 = v130;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v115 < v25)
        {
          v25 = v115;
        }

        v122 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v113;
        v121 = v28;
        v30 = v28 != 16;
        v31 = v112;
        if (v17 != v114)
        {
          v31 = 16;
          v29 = v30;
        }

        v120 = v29;
        v128 = a3 + (v26 - v130) * a11;
        v129 = v31;
        v127 = v31;
        v32 = v111;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v125 < v35)
          {
            v35 = v125;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v132)
          {
            v39 = v119 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v130 && v33 >= v123)
          {
            v41 = v37 != v119;
            if (v32 != v132)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v120;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v128 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v116 + (v32 << 10));
          __src = v56;
          if (v134)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v131;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v127 < 0x10)))
          {
LABEL_67:
            v57 = v55;
            v58 = a11;
            v59 = v56;
            v60 = (a4 + v53);
            v61 = v39;
            v62 = v129;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v136 = v56;
          v144 = v39;
          v145 = v129;
          v140 = v122;
          v141 = v36 - v33;
          v137 = v54;
          v138 = v55;
          v139 = a11;
          v142 = v121;
          v143 = v38;
          if ((v40 & 1) == 0)
          {
            v63 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v56, *v54));
            v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v63, v54[1]));
            v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v64, v54[2]));
            v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v65, v54[3]));
            v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v66, v54[4]));
            v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v67, v54[5]));
            v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v68, v54[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, (v68 + v69), v54[7]);
            v70 = v142;
            if (!v142)
            {
              goto LABEL_109;
            }

            v71 = v143;
            if (!v143)
            {
              goto LABEL_109;
            }

            v72 = v140 << 6;
            v73 = 4 * v141;
            v74 = &v147[0].i8[v72 + v73];
            v75 = v138;
            v76 = v139;
            v77 = 4 * v143;
            v80 = v74 < &v138->i8[v139 * (v142 - 1) + v77] && v138 < &__dst[64 * v142 + 960 + 64 * v140 + 4 * v143 + v73] || v139 < 0;
            if (v143 == 1)
            {
              v81 = 0;
              do
              {
                v82 = (v75 + v81 * v76);
                v83 = &v74[64 * v81];
                v84 = -1;
                do
                {
                  v85 = *v82++;
                  *v83++ = v85;
                  ++v84;
                }

                while (v84 < 3);
                ++v81;
              }

              while (v81 != v70);
              goto LABEL_109;
            }

            if (v77)
            {
              v86 = (v77 - 1) >> 32;
              if (!v86)
              {
                v87 = v77 & 0x1FFFFFFE0;
                v88 = v77 & 0x1FFFFFFF8;
                v89 = &v147[1].i8[v72 + v73];
                v90 = v138 + 1;
                v91 = v74;
                v92 = v138;
                while (1)
                {
                  v93 = (v75 + v86 * v76);
                  v94 = &v74[64 * v86];
                  if (v80)
                  {
                    v95 = 0;
                    goto LABEL_102;
                  }

                  if (v71 >= 8)
                  {
                    v97 = v90;
                    v98 = v89;
                    v99 = v77 & 0x1FFFFFFE0;
                    do
                    {
                      v100 = *v97;
                      *(v98 - 1) = v97[-1];
                      *v98 = v100;
                      v98 += 32;
                      v97 += 2;
                      v99 -= 32;
                    }

                    while (v99);
                    if (v77 == v87)
                    {
                      goto LABEL_88;
                    }

                    v96 = v77 & 0x1FFFFFFE0;
                    if ((v71 & 6) == 0)
                    {
                      v93 += v87;
                      v94 += v87;
                      v95 = v77 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v96 = 0;
                  }

                  v94 += v88;
                  v101 = -8 * ((v71 >> 1) & 0x3FFFFFFF) + v96;
                  v102 = (v92 + v96);
                  v103 = &v91[v96];
                  do
                  {
                    v104 = *v102++;
                    *v103 = v104;
                    v103 += 8;
                    v101 += 8;
                  }

                  while (v101);
                  if (v77 == v88)
                  {
                    goto LABEL_88;
                  }

                  v93 += v88;
                  v95 = v77 & 0xFFFFFFF8;
LABEL_102:
                  v105 = v95 + 1;
                  do
                  {
                    v106 = *v93++;
                    *v94++ = v106;
                  }

                  while (v77 > v105++);
LABEL_88:
                  ++v86;
                  v89 += 64;
                  v90 = (v90 + v76);
                  v92 += v76;
                  v91 += 64;
                  if (v86 == v70)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v108 = 0;
            do
            {
              v109 = 0;
              do
              {
                v74[v109] = *(v75 + v109);
                ++v109;
              }

              while (v77 > v109);
              ++v108;
              v74 += 64;
              v75 += v76;
            }

            while (v108 != v70);
LABEL_109:
            v59 = v136;
            v60 = v137;
            v61 = v144;
            v62 = v145;
            v57 = v147;
            v58 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v57, v58, v59, v60, v61, v62);
            if (!v134)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v134)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v124;
          result = v131;
        }

        while (v34 != (v125 >> 4) + 1);
        ++v17;
      }

      while (v17 != v110);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v200 = *MEMORY[0x29EDCA608];
  v163 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v174 = a8;
  v16 = a8 >> 4;
  v162 = a8 + a10 - 1;
  v17 = v162 >> 4;
  v175 = a1;
  if (*(a1 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v178 = v22;
  result = a1;
  if (v16 <= v17)
  {
    v171 = a7 + a9 - 1;
    if (a7 >> 4 <= v171 >> 4)
    {
      v24 = a11;
      v176 = (a5 - 1) >> 4;
      v161 = (a6 - 1) >> 4;
      v167 = (a5 - 1) & 0xF;
      v159 = ((a6 - 1) & 0xF) + 1;
      v160 = (a6 - 1) & 0xF;
      v158 = v17 + 1;
      v25 = 2 * a11;
      do
      {
        v26 = (16 * v16) | 0xF;
        if (16 * v16 <= v174)
        {
          v27 = v174;
        }

        else
        {
          v27 = 16 * v16;
        }

        if (v162 < v26)
        {
          v26 = v162;
        }

        v170 = v27 - 16 * v16;
        v28 = v26 - v27;
        v29 = v28 + 1;
        v30 = v28 != v160;
        v169 = v29;
        if (v16 == v161)
        {
          v31 = v159;
        }

        else
        {
          v31 = 16;
        }

        if (v16 != v161)
        {
          v30 = v29 != 16;
        }

        v168 = v30;
        v173 = a3 + (v27 - v174) * v24;
        v32 = a7 >> 4;
        do
        {
          v33 = 16 * v32;
          v34 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 16 * v32;
          }

          if (v171 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v176)
          {
            v38 = v167 + 1;
          }

          else
          {
            v38 = 16;
          }

          v39 = 1;
          if (16 * v16 >= v174 && v33 >= a7)
          {
            v40 = v36 != v167;
            if (v32 != v176)
            {
              v40 = v37 != 16;
            }

            v39 = v40 || v168;
          }

          v41 = *(result + 128) >> (*(result + 144) + a12);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = v41 + 15;
          if (v42 < 0x20)
          {
            v43 = 0;
          }

          else
          {
            v43 = 32 - __clz(~(-1 << -__clz((v42 >> 4) - 1)));
          }

          v44 = *(result + 132) >> (*(result + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v177 = v32 + 1;
          if (v46 | v43)
          {
            v47 = 0;
            v48 = 0;
            v49 = v43 != 0;
            v50 = v46 != 0;
            v51 = 1;
            do
            {
              --v43;
              if (v49)
              {
                v48 |= (v51 & v32) << v47++;
              }

              else
              {
                v43 = 0;
              }

              --v46;
              if (v50)
              {
                v48 |= (v51 & v16) << v47++;
              }

              else
              {
                v46 = 0;
              }

              v51 *= 2;
              --v47;
              v50 = v46 != 0;
              v49 = v43 != 0;
            }

            while (v46 | v43);
            v52 = 8 * v48;
          }

          else
          {
            v52 = 0;
          }

          v53 = (a4 + v52);
          v54 = v173 + 4 * (v35 - a7);
          v55 = (a2 + v16 * v163 + (v32 << 10));
          if (v178)
          {
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              v56 = (a2 + v16 * v163 + (v32 << 10));
              v166 = v37;
              v57 = v24;
              v58 = v35;
              memcpy(__dst, v55, sizeof(__dst));
              v35 = v58;
              v24 = v57;
              v37 = v166;
              v59 = __dst;
              v55 = v56;
              result = v175;
LABEL_66:
              v60 = v55;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v181 = v59;
              v189 = v38;
              v190 = v31;
              v185 = v170;
              v186 = v35 - v33;
              v182 = v53;
              v183 = v54;
              v184 = v24;
              v187 = v169;
              v188 = v37;
              if (v39)
              {
                v61 = v59;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v59 = v61;
                result = v175;
                v62 = v177;
                v55 = v60;
                v25 = 2 * a11;
                goto LABEL_78;
              }

              v86 = v59;
              v87 = (v59 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v192, 64, v59, *v53));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v193, 64, v87, v53[1]));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v194, 64, v88, v53[2]));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v89, v53[3]));
              v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v53[4]));
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v91, v53[5]));
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v92, v53[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, (v92 + v93), v53[7]);
              v94 = v187;
              if (v187)
              {
                v95 = v188;
                if (v188)
                {
                  v96 = v185 << 6;
                  v97 = 4 * v186;
                  v98 = &v192[0].i8[v96 + v97];
                  v99 = v183;
                  v100 = v184;
                  v101 = 4 * v188;
                  v104 = v98 < v183 + v184 * (v187 - 1) + v101 && v183 < &__dst[64 * v187 + 960 + 64 * v185 + 4 * v188 + v97] || v184 < 0;
                  if (v188 == 1)
                  {
                    v105 = 0;
                    do
                    {
                      v106 = (v99 + v105 * v100);
                      v107 = &v98[64 * v105];
                      v108 = -1;
                      do
                      {
                        v109 = *v106++;
                        *v107++ = v109;
                        ++v108;
                      }

                      while (v108 < 3);
                      ++v105;
                    }

                    while (v105 != v94);
                    goto LABEL_121;
                  }

                  if (v101)
                  {
                    v110 = (v101 - 1) >> 32;
                    if (!v110)
                    {
                      v111 = v101 & 0x1FFFFFFE0;
                      v112 = v101 & 0x1FFFFFFF8;
                      v113 = &v192[1].i8[v96 + v97];
                      v114 = (v183 + 16);
                      v115 = v98;
                      v116 = v183;
                      v117 = -8 * ((v188 >> 1) & 0x3FFFFFFF);
                      while (1)
                      {
                        v118 = (v99 + v110 * v100);
                        v119 = &v98[64 * v110];
                        if (v104)
                        {
                          v120 = 0;
                          goto LABEL_114;
                        }

                        if (v95 >= 8)
                        {
                          v122 = v114;
                          v123 = v113;
                          v124 = v101 & 0x1FFFFFFE0;
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
                          if (v101 == v111)
                          {
                            goto LABEL_100;
                          }

                          v121 = v101 & 0x1FFFFFFE0;
                          if ((v95 & 6) == 0)
                          {
                            v118 += v111;
                            v119 += v111;
                            v120 = v101 & 0xFFFFFFE0;
                            goto LABEL_114;
                          }
                        }

                        else
                        {
                          v121 = 0;
                        }

                        v119 += v112;
                        v126 = v117 + v121;
                        v127 = (v116 + v121);
                        v128 = &v115[v121];
                        do
                        {
                          v129 = *v127++;
                          *v128 = v129;
                          v128 += 8;
                          v126 += 8;
                        }

                        while (v126);
                        if (v101 == v112)
                        {
                          goto LABEL_100;
                        }

                        v118 += v112;
                        v120 = v101 & 0xFFFFFFF8;
LABEL_114:
                        v130 = v120 + 1;
                        do
                        {
                          v131 = *v118++;
                          *v119++ = v131;
                        }

                        while (v101 > v130++);
LABEL_100:
                        ++v110;
                        v113 += 64;
                        v114 = (v114 + v100);
                        v116 += v100;
                        v115 += 64;
                        if (v110 == v94)
                        {
                          goto LABEL_121;
                        }
                      }
                    }
                  }

                  v133 = 0;
                  do
                  {
                    v134 = 0;
                    do
                    {
                      v98[v134] = *(v99 + v134);
                      ++v134;
                    }

                    while (v101 > v134);
                    ++v133;
                    v98 += 64;
                    v99 += v100;
                  }

                  while (v133 != v94);
                }
              }

LABEL_121:
              v135 = v181;
              v136 = v182;
              v137 = v189;
              v138 = &byte_29D2F30C1;
              v139 = 16;
              v140 = v190;
              result = v175;
              v62 = v177;
              v55 = v60;
              v25 = 2 * a11;
              v59 = v86;
              do
              {
                v155 = *v138;
                v156 = *(v138 - 1);
                if (v137 <= 8 * v156 || 4 * v155 >= v140)
                {
                  v154 = 0;
                }

                else
                {
                  v141 = &v192[16 * v155 + 2 * v156];
                  v142 = v141[1];
                  v143 = v141[4];
                  v144 = v141[5];
                  v145 = vzip1q_s64(*v141, v143);
                  v146 = vzip2q_s64(*v141, v143);
                  v147 = vzip1q_s64(v142, v144);
                  v148 = vzip2q_s64(v142, v144);
                  v149 = v141[8];
                  v150 = v141[9];
                  v141 += 12;
                  v151 = v141[1];
                  v152 = vzip1q_s64(v149, *v141);
                  v153 = vzip2q_s64(v149, *v141);
                  *v135 = v145;
                  v135[1] = v146;
                  v135[2] = v152;
                  v135[3] = v153;
                  v135[4] = v147;
                  v135[5] = v148;
                  v135[6] = vzip1q_s64(v150, v151);
                  v135[7] = vzip2q_s64(v150, v151);
                  v135 += 8;
                  v154 = 127;
                }

                *v136++ = v154;
                v138 += 2;
                v139 -= 2;
              }

              while (v139);
              goto LABEL_78;
            }

            v59 = __dst;
          }

          else
          {
            v59 = (a2 + v16 * v163 + (v32 << 10));
            if (v39 & 1 | (v38 < 0x10u) | (v31 < 0x10u))
            {
              goto LABEL_66;
            }
          }

          v63 = &byte_29D2F30C1;
          v64 = 16;
          v65 = v59;
          do
          {
            v83 = *v63;
            v84 = *(v63 - 1);
            if (v38 <= 8 * v84 || 4 * v83 >= v31)
            {
              v82 = 0;
            }

            else
            {
              v66 = (v54 + 4 * a11 * v83 + 32 * v84);
              v67 = (v66 + v24);
              v69 = *v66;
              v70 = v66[1];
              v68 = (v66 + v25);
              v71 = v67[1];
              v72 = vzip1q_s64(v69, *v67);
              v73 = vzip2q_s64(v69, *v67);
              v74 = vzip1q_s64(v70, v71);
              v75 = vzip2q_s64(v70, v71);
              v77 = *v68;
              v78 = v68[1];
              v76 = (v68 + v24);
              v79 = v76[1];
              v80 = vzip1q_s64(v77, *v76);
              v81 = vzip2q_s64(v77, *v76);
              *v65 = v72;
              v65[1] = v73;
              v65[2] = v80;
              v65[3] = v81;
              v65[4] = v74;
              v65[5] = v75;
              v65[6] = vzip1q_s64(v78, v79);
              v65[7] = vzip2q_s64(v78, v79);
              v65 += 8;
              v82 = 127;
            }

            *v53++ = v82;
            v63 += 2;
            v64 -= 2;
          }

          while (v64);
          v62 = v177;
LABEL_78:
          if (v178)
          {
            memcpy(v55, v59, 0x400uLL);
            result = v175;
          }

          v32 = v62;
        }

        while (v62 != (v171 >> 4) + 1);
        ++v16;
      }

      while (v16 != v158);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v157 = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + (v32 << 9));
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = &v149[0].i8[v74 + v75];
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < &v140->i8[v141 * (v144 - 1) + v79] && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[1].i8[v74 + v75];
                v92 = v140 + 1;
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = v99[-1];
                      *v100 = v102;
                      v100 += 32;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105 = v106;
                    v105 += 8;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v157 = *MEMORY[0x29EDCA608];
  v118 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v17 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v18 = v117 >> 4;
  v134 = a1;
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
  v136 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      v133 = (a5 - 1) >> 4;
      v116 = (a6 - 1) >> 4;
      v121 = (a5 - 1) & 0xF;
      v114 = ((a6 - 1) & 0xF) + 1;
      v115 = (a6 - 1) & 0xF;
      v125 = a7;
      v112 = v18 + 1;
      v113 = a7 >> 4;
      v126 = a7;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v132)
        {
          v26 = v132;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v117 < v25)
        {
          v25 = v117;
        }

        v124 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v115;
        v123 = v28;
        v30 = v28 != 16;
        v31 = v114;
        if (v17 != v116)
        {
          v31 = 16;
          v29 = v30;
        }

        v122 = v29;
        v130 = a3 + (v26 - v132) * a11;
        v131 = v31;
        v129 = v31;
        v32 = v113;
        do
        {
          v33 = 16 * v32;
          v34 = v32 + 1;
          v35 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 16 * v32;
          }

          if (v127 < v35)
          {
            v35 = v127;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v32 == v133)
          {
            v39 = v121 + 1;
          }

          else
          {
            v39 = 16;
          }

          v40 = 1;
          if (16 * v17 >= v132 && v33 >= v125)
          {
            v41 = v37 != v121;
            if (v32 != v133)
            {
              v41 = v38 != 16;
            }

            v40 = v41 || v122;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 15;
          if (v43 < 0x20)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 4) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
            if (!v44)
            {
LABEL_59:
              v53 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
            if (!(v47 | v44))
            {
              goto LABEL_59;
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = v44 != 0;
          v51 = v47 != 0;
          v52 = 1;
          do
          {
            --v44;
            if (v50)
            {
              v49 |= (v52 & v32) << v48++;
            }

            else
            {
              v44 = 0;
            }

            --v47;
            if (v51)
            {
              v49 |= (v52 & v17) << v48++;
            }

            else
            {
              v47 = 0;
            }

            v52 *= 2;
            --v48;
            v51 = v47 != 0;
            v50 = v44 != 0;
          }

          while (v47 | v44);
          v53 = 8 * v49;
LABEL_60:
          v54 = (a4 + v53);
          v55 = (v130 + 4 * (v36 - a7));
          v56 = (a2 + v17 * v118 + 384 * v32);
          __src = v56;
          if (v136)
          {
            v56 = __dst;
            if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v40 & 1 | (v39 < 0x10u) | (v129 < 0x10)))
          {
LABEL_67:
            v57 = *(*(result + 208) + 52);
            v58 = v55;
            v59 = a11;
            v60 = v56;
            v61 = (a4 + v53);
            v62 = v39;
            v63 = v131;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v138 = v56;
          v146 = v39;
          v147 = v131;
          v142 = v124;
          v143 = v36 - v33;
          v139 = v54;
          v140 = v55;
          v141 = a11;
          v144 = v123;
          v145 = v38;
          if ((v40 & 1) == 0)
          {
            v64 = *(*(result + 208) + 52);
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
            v72 = v144;
            if (!v144)
            {
              goto LABEL_109;
            }

            v73 = v145;
            if (!v145)
            {
              goto LABEL_109;
            }

            v74 = v142 << 6;
            v75 = 4 * v143;
            v76 = &v149[0].i8[v74 + v75];
            v77 = v140;
            v78 = v141;
            v79 = 4 * v145;
            v82 = v76 < &v140->i8[v141 * (v144 - 1) + v79] && v140 < &__dst[64 * v144 + 960 + 64 * v142 + 4 * v145 + v75] || v141 < 0;
            if (v145 == 1)
            {
              v83 = 0;
              do
              {
                v84 = (v77 + v83 * v78);
                v85 = &v76[64 * v83];
                v86 = -1;
                do
                {
                  v87 = *v84++;
                  *v85++ = v87;
                  ++v86;
                }

                while (v86 < 3);
                ++v83;
              }

              while (v83 != v72);
              goto LABEL_109;
            }

            if (v79)
            {
              v88 = (v79 - 1) >> 32;
              if (!v88)
              {
                v89 = v79 & 0x1FFFFFFE0;
                v90 = v79 & 0x1FFFFFFF8;
                v91 = &v149[1].i8[v74 + v75];
                v92 = v140 + 1;
                v93 = v76;
                v94 = v140;
                while (1)
                {
                  v95 = (v77 + v88 * v78);
                  v96 = &v76[64 * v88];
                  if (v82)
                  {
                    v97 = 0;
                    goto LABEL_102;
                  }

                  if (v73 >= 8)
                  {
                    v99 = v92;
                    v100 = v91;
                    v101 = v79 & 0x1FFFFFFE0;
                    do
                    {
                      v102 = *v99;
                      *(v100 - 1) = v99[-1];
                      *v100 = v102;
                      v100 += 32;
                      v99 += 2;
                      v101 -= 32;
                    }

                    while (v101);
                    if (v79 == v89)
                    {
                      goto LABEL_88;
                    }

                    v98 = v79 & 0x1FFFFFFE0;
                    if ((v73 & 6) == 0)
                    {
                      v95 += v89;
                      v96 += v89;
                      v97 = v79 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v96 += v90;
                  v103 = -8 * ((v73 >> 1) & 0x3FFFFFFF) + v98;
                  v104 = (v94 + v98);
                  v105 = &v93[v98];
                  do
                  {
                    v106 = *v104++;
                    *v105 = v106;
                    v105 += 8;
                    v103 += 8;
                  }

                  while (v103);
                  if (v79 == v90)
                  {
                    goto LABEL_88;
                  }

                  v95 += v90;
                  v97 = v79 & 0xFFFFFFF8;
LABEL_102:
                  v107 = v97 + 1;
                  do
                  {
                    v108 = *v95++;
                    *v96++ = v108;
                  }

                  while (v79 > v107++);
LABEL_88:
                  ++v88;
                  v91 += 64;
                  v92 = (v92 + v78);
                  v94 += v78;
                  v93 += 64;
                  if (v88 == v72)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v110 = 0;
            do
            {
              v111 = 0;
              do
              {
                v76[v111] = *(v77 + v111);
                ++v111;
              }

              while (v79 > v111);
              ++v110;
              v76 += 64;
              v77 += v78;
            }

            while (v110 != v72);
LABEL_109:
            v60 = v138;
            v61 = v139;
            v62 = v146;
            v63 = v147;
            v57 = *(*(v134 + 208) + 52);
            v58 = v149;
            v59 = 64;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
            if (!v136)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v136)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v56, 0x400uLL);
LABEL_26:
          v32 = v34;
          a7 = v126;
          result = v134;
        }

        while (v34 != (v127 >> 4) + 1);
        ++v17;
      }

      while (v17 != v112);
    }
  }

  return result;
}