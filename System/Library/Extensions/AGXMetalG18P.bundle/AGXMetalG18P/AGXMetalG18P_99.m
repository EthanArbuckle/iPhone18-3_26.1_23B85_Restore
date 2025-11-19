uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v155 = v15;
  v17 = v16;
  v19 = v18;
  v149 = v20;
  v140 = v21;
  v141 = v22;
  v23 = v12;
  v168 = *MEMORY[0x29EDCA608];
  v139 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v28 = v14 >> 5;
  v138 = v14 + a10 - 1;
  v29 = v138 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v154 = v34;
  result = v23;
  if (v28 <= v29)
  {
    v148 = v155 + a9 - 1;
    if (v155 >> 5 <= v148 >> 5)
    {
      v152 = (v19 - 1) >> 5;
      v137 = (v17 - 1) >> 5;
      v144 = (v19 - 1) & 0x1F;
      v135 = ((v17 - 1) & 0x1F) + 1;
      v136 = (v17 - 1) & 0x1F;
      v134 = v29 + 1;
      v36 = 2 * a11;
      do
      {
        v37 = (32 * v28) | 0x1F;
        if (32 * v28 <= v151)
        {
          v38 = v151;
        }

        else
        {
          v38 = 32 * v28;
        }

        if (v138 < v37)
        {
          v37 = v138;
        }

        v147 = v38 - 32 * v28;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v136;
        v146 = v40;
        if (v28 == v137)
        {
          v42 = v135;
        }

        else
        {
          v42 = 32;
        }

        if (v28 != v137)
        {
          v41 = v40 != 32;
        }

        v145 = v41;
        v150 = v141 + (v38 - v151) * a11;
        v43 = v155 >> 5;
        do
        {
          v44 = 32 * v43;
          v45 = 32 * (v43 + 1) - 1;
          if (32 * v43 <= v155)
          {
            v46 = v155;
          }

          else
          {
            v46 = 32 * v43;
          }

          if (v148 < v45)
          {
            v45 = v155 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v152)
          {
            v49 = v144 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 >= v151 && v44 >= v155)
          {
            v51 = v47 != v144;
            if (v43 != v152)
            {
              v51 = v48 != 32;
            }

            v50 = v51 || v145;
          }

          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 31;
          if (v53 < 0x40)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 5) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 31;
          if (v56 < 0x40)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 5) - 1)));
          }

          v153 = v43 + 1;
          if (v57 | v54)
          {
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
                v59 |= (v62 & v43) << v58++;
              }

              else
              {
                v54 = 0;
              }

              --v57;
              if (v61)
              {
                v59 |= (v62 & v28) << v58++;
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
            v63 = 32 * v59;
          }

          else
          {
            v63 = 0;
          }

          v64 = (v149 + v63);
          v65 = (v140 + v28 * v139 + (v43 << 11));
          if (v154)
          {
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              v67 = __dst;
LABEL_70:
              v71 = &byte_29D2F790B;
              v72 = 64;
              v73 = v67;
              do
              {
                v79 = *v71;
                v80 = *(v71 - 1);
                if (v49 <= 8 * v80 || 4 * v79 >= v42)
                {
                  v78 = 0;
                }

                else
                {
                  v74 = (v150 + 2 * (v46 - v155) + 4 * a11 * v79 + 16 * v80);
                  v24 = *v74;
                  v25 = *(v74 + a11);
                  v75 = (v74 + v36);
                  v26 = *v75;
                  v27 = *(v75 + a11);
                  v76 = vzip2q_s32(*v75, v27);
                  v77 = v73;
                  vst2_f32(v77, v24);
                  v77 += 4;
                  vst2_f32(v77, v26);
                  *(v73 + 2) = vzip2q_s32(v24, v25);
                  *(v73 + 3) = v76;
                  v73 += 16;
                  v78 = 63;
                }

                v71 += 2;
                *v64++ = v78;
                v72 -= 2;
              }

              while (v72);
              v70 = v153;
              if (v154)
              {
                goto LABEL_123;
              }

              goto LABEL_29;
            }

            v66 = (v140 + v28 * v139 + (v43 << 11));
            __srca = v48;
            memcpy(__dst, v65, 0x800uLL);
            v48 = __srca;
            v67 = __dst;
            v65 = v66;
            result = v23;
          }

          else
          {
            v67 = (v140 + v28 * v139 + (v43 << 11));
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              goto LABEL_70;
            }
          }

          v68 = v65;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v67;
          v165 = v49;
          v166 = v42;
          v161 = v147;
          v162 = v46 - v44;
          v158 = v64;
          v159 = (v150 + 2 * (v46 - v155));
          v160 = a11;
          v163 = v146;
          v164 = v48;
          if (v50)
          {
            v69 = v67;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v67 = v69;
            result = v23;
            v70 = v153;
            v65 = v68;
            v36 = 2 * a11;
            if (!v154)
            {
              goto LABEL_29;
            }

LABEL_123:
            memcpy(v65, v67, 0x800uLL);
            result = v23;
            goto LABEL_29;
          }

          v82 = &byte_29D2F790B;
          v83 = 64;
          __src = v67;
          v84 = v67;
          do
          {
            v85 = *v64++;
            v84 = (v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v82 + 2048 + 16 * *(v82 - 1)], 64, v84, v85, *v24.val, *v25.i64, *v26.val, v27.val[0]));
            v82 += 2;
            v83 -= 2;
          }

          while (v83);
          v86 = v163;
          if (v163)
          {
            v87 = v164;
            if (v164)
            {
              v88 = 0;
              v89 = v161 << 6;
              v90 = 2 * v162;
              v91 = &__dst[v89 + 2048 + v90];
              v92 = v159;
              v93 = v160;
              v94 = 2 * v164;
              if (2 * v164)
              {
                v95 = (2 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v95 = 0;
              }

              v96 = !v95;
              v98 = v91 < &v159->i8[2 * v164 + v160 * (v163 - 1)] && v159 < &__dst[64 * v163 + 1984 + 64 * v161 + 2 * v164 + v90];
              v99 = v98 || v160 < 0;
              v100 = v94 & 0x1FFFFFFE0;
              v101 = v94 & 0x1FFFFFFF8;
              v102 = (v164 < 4) | v96 | v99;
              v103 = &__dst[v89 + 2064 + v90];
              v104 = v159 + 1;
              v105 = v91;
              v106 = v159;
              do
              {
                v107 = (v92 + v88 * v93);
                v108 = &v91[64 * v88];
                if (v102)
                {
                  v109 = 0;
                  goto LABEL_111;
                }

                if (v87 >= 0x10)
                {
                  v111 = v104;
                  v112 = v103;
                  v113 = v94 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = v111[-1];
                    v25 = *v111;
                    v112[-1] = v24;
                    *v112 = v25;
                    v112 += 2;
                    v111 += 2;
                    v113 -= 32;
                  }

                  while (v113);
                  if (v94 == v100)
                  {
                    goto LABEL_97;
                  }

                  v110 = v94 & 0x1FFFFFFE0;
                  if ((v87 & 0xC) == 0)
                  {
                    v107 += v100;
                    v108 += v100;
                    v109 = v94 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v110 = 0;
                }

                v108 += v101;
                v114 = v110 - (v94 & 0x1FFFFFFF8);
                v115 = (v106 + v110);
                v116 = &v105[v110];
                do
                {
                  v117 = *v115++;
                  v24.val[0] = v117;
                  *v116++ = v117;
                  v114 += 8;
                }

                while (v114);
                if (v94 == v101)
                {
                  goto LABEL_97;
                }

                v107 += v101;
                v109 = v94 & 0xFFFFFFF8;
LABEL_111:
                v118 = v109 + 1;
                do
                {
                  v119 = *v107++;
                  *v108++ = v119;
                }

                while (v94 > v118++);
LABEL_97:
                ++v88;
                v103 += 4;
                v104 = (v104 + v93);
                v106 += v93;
                v105 += 64;
              }

              while (v88 != v86);
            }
          }

          v121 = v157;
          v122 = v158;
          v123 = v165;
          v124 = &byte_29D2F790B;
          v125 = 64;
          v126 = v166;
          v70 = v153;
          v65 = v68;
          v36 = 2 * a11;
          do
          {
            v131 = *v124;
            v132 = *(v124 - 1);
            if (v123 <= 8 * v132 || 4 * v131 >= v126)
            {
              v130 = 0;
            }

            else
            {
              v127 = &__dst[256 * v131 + 2048 + 16 * v132];
              v24 = *v127;
              v25 = v127[4];
              v26 = vzip2q_s32(*v127, v25);
              v27 = v127[8];
              v128 = v127[12];
              v129 = v121;
              vst2_f32(v129, v24);
              v129 += 4;
              vst2_f32(v129, v27);
              v121[2] = v26;
              v121[3] = vzip2q_s32(v27, v128);
              v121 += 4;
              v130 = 63;
            }

            v124 += 2;
            *v122++ = v130;
            v125 -= 2;
          }

          while (v125);
          result = v23;
          v67 = __src;
          if (v154)
          {
            goto LABEL_123;
          }

LABEL_29:
          v43 = v70;
        }

        while (v70 != (v148 >> 5) + 1);
        ++v28;
      }

      while (v28 != v134);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + (v47 << 10));
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 768 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 640 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v142 = v22;
  v143 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v33 = v14 >> 5;
  v140 = v14 + a10 - 1;
  v34 = v140 >> 5;
  v155 = v24;
  result = *(v24 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v36 = result & 0xF00;
  }

  else
  {
    v36 = 0;
  }

  v37 = (v36 & 0xD00) == 0 || v36 == 768;
  v38 = v36 & 0xE00;
  v40 = !v37 && v38 != 1024;
  v158 = v40;
  if (v33 <= v34)
  {
    v151 = v16 + a9 - 1;
    if (v16 >> 5 <= v151 >> 5)
    {
      v156 = (v20 - 1) >> 5;
      v139 = (v18 - 1) >> 5;
      v145 = (v20 - 1) & 0x1F;
      v137 = ((v18 - 1) & 0x1F) + 1;
      v138 = (v18 - 1) & 0x1F;
      v41 = 4 * a11;
      v149 = v16;
      v135 = v34 + 1;
      v136 = v16 >> 5;
      v150 = v16;
      do
      {
        v42 = (32 * v33) | 0x1F;
        if (32 * v33 <= v154)
        {
          v43 = v154;
        }

        else
        {
          v43 = 32 * v33;
        }

        if (v140 < v42)
        {
          v42 = v140;
        }

        v148 = v43 - 32 * v33;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v138;
        v147 = v45;
        if (v33 == v139)
        {
          v47 = v137;
        }

        else
        {
          v47 = 32;
        }

        if (v33 != v139)
        {
          v46 = v45 != 32;
        }

        v146 = v46;
        v153 = v143 + (v43 - v154) * a11;
        v48 = v136;
        v49 = v155;
        do
        {
          v50 = 32 * v48;
          v157 = v48 + 1;
          v51 = 32 * (v48 + 1) - 1;
          if (32 * v48 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 32 * v48;
          }

          if (v151 < v51)
          {
            v51 = v151;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v48 == v156)
          {
            v55 = v145 + 1;
          }

          else
          {
            v55 = 32;
          }

          v56 = 1;
          if (32 * v33 >= v154 && v50 >= v149)
          {
            v57 = v53 != v145;
            if (v48 != v156)
            {
              v57 = v54 != 32;
            }

            v56 = v57 || v146;
          }

          v58 = *(v49 + 128) >> (*(v49 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 31;
          if (v59 < 0x40)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 5) - 1)));
          }

          v61 = *(v49 + 132) >> (*(v49 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 31;
          if (v62 < 0x40)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_62:
              v69 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 5) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_62;
            }
          }

          v64 = 0;
          v65 = 0;
          v66 = v60 != 0;
          v67 = v63 != 0;
          v68 = 1;
          do
          {
            --v60;
            if (v66)
            {
              v65 |= (v68 & v48) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v33) << v64++;
            }

            else
            {
              v63 = 0;
            }

            v68 *= 2;
            --v64;
            v67 = v63 != 0;
            v66 = v60 != 0;
          }

          while (v63 | v60);
          v69 = 32 * v65;
LABEL_63:
          v70 = (v152 + v69);
          v71 = v153 + 2 * (v52 - v16);
          v72 = (v142 + v33 * v141 + (v48 << 11));
          __src = v72;
          if (v158)
          {
            if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
            {
              v72 = __dst;
LABEL_70:
              v74 = &byte_29D2F790B;
              v75 = 64;
              v73 = v72;
              v76 = v72;
              do
              {
                v79 = *v74;
                v80 = *(v74 - 1);
                v81 = v55 - 8 * v80;
                v82 = v47 - 4 * v79;
                v83 = v81 < 1 || v82 <= 0;
                if (v83)
                {
                  *v70 = 0;
                }

                else
                {
                  if (v82 >= 4)
                  {
                    v77 = 4;
                  }

                  else
                  {
                    v77 = v47 - 4 * v79;
                  }

                  if (v81 >= 8)
                  {
                    v78 = 8;
                  }

                  else
                  {
                    v78 = v55 - 8 * v80;
                  }

                  v76 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v76, v70, (v71 + v41 * v79 + 16 * v80), a11, v78, v77, *&v25, *&v26, v27, v28, v29, v30, v31, v32));
                }

                v74 += 2;
                ++v70;
                v75 -= 2;
              }

              while (v75);
              v16 = v150;
              v49 = v155;
              goto LABEL_136;
            }

            memcpy(__dst, v72, 0x800uLL);
            v72 = __dst;
          }

          else if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v155;
          v161 = v72;
          v169 = v55;
          v170 = v47;
          v165 = v148;
          v166 = v52 - v50;
          v162 = v70;
          v163 = v71;
          v164 = a11;
          v167 = v147;
          v168 = v54;
          if (v56)
          {
            v73 = v72;
            dispatch_sync(*(*(v155 + 8) + 16552), block);
            v16 = v150;
            v49 = v155;
            goto LABEL_136;
          }

          v84 = &byte_29D2F790B;
          v85 = 64;
          v144 = v72;
          v86 = v72;
          do
          {
            v87 = *v70++;
            v86 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v84 + 2048 + 16 * *(v84 - 1)], 64, v86, v87, *&v25, *&v26, v27, *&v28));
            v84 += 2;
            v85 -= 2;
          }

          while (v85);
          v88 = v167;
          if (v167)
          {
            v89 = v168;
            if (v168)
            {
              v90 = 0;
              v91 = v165 << 6;
              v92 = 2 * v166;
              v93 = &__dst[v91 + 2048 + v92];
              v94 = v163;
              v95 = v164;
              v96 = 2 * v168;
              if (2 * v168)
              {
                v97 = (2 * v168 - 1) >> 32 == 0;
              }

              else
              {
                v97 = 0;
              }

              v98 = !v97;
              v100 = v93 < v163 + v164 * (v167 - 1) + 2 * v168 && v163 < &__dst[64 * v167 + 1984 + 64 * v165 + 2 * v168 + v92];
              v101 = v100 || v164 < 0;
              v102 = v96 & 0x1FFFFFFE0;
              v103 = v96 & 0x1FFFFFFF8;
              v104 = (v168 < 4) | v98 | v101;
              v105 = &__dst[v91 + 2064 + v92];
              v106 = (v163 + 16);
              v107 = v93;
              v108 = v163;
              do
              {
                v109 = (v94 + v90 * v95);
                v110 = &v93[64 * v90];
                if (v104)
                {
                  v111 = 0;
                  goto LABEL_117;
                }

                if (v89 >= 0x10)
                {
                  v113 = v106;
                  v114 = v105;
                  v115 = v96 & 0x1FFFFFFE0;
                  do
                  {
                    v25 = *(v113 - 1);
                    v26 = *v113;
                    *(v114 - 1) = v25;
                    *v114 = v26;
                    v114 += 2;
                    v113 += 2;
                    v115 -= 32;
                  }

                  while (v115);
                  if (v96 == v102)
                  {
                    goto LABEL_103;
                  }

                  v112 = v96 & 0x1FFFFFFE0;
                  if ((v89 & 0xC) == 0)
                  {
                    v109 += v102;
                    v110 += v102;
                    v111 = v96 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v112 = 0;
                }

                v110 += v103;
                v116 = v112 - (v96 & 0x1FFFFFFF8);
                v117 = (v108 + v112);
                v118 = &v107[v112];
                do
                {
                  v119 = *v117++;
                  *&v25 = v119;
                  *v118++ = v119;
                  v116 += 8;
                }

                while (v116);
                if (v96 == v103)
                {
                  goto LABEL_103;
                }

                v109 += v103;
                v111 = v96 & 0xFFFFFFF8;
LABEL_117:
                v120 = v111 + 1;
                do
                {
                  v121 = *v109++;
                  *v110++ = v121;
                  v83 = v96 > v120++;
                }

                while (v83);
LABEL_103:
                ++v90;
                v105 += 64;
                v106 = (v106 + v95);
                v108 += v95;
                v107 += 64;
              }

              while (v90 != v88);
            }
          }

          v122 = v161;
          v123 = v162;
          v124 = v169;
          v125 = &byte_29D2F790B;
          v126 = 64;
          v127 = v170;
          do
          {
            v130 = *v125;
            v131 = *(v125 - 1);
            v132 = v124 - 8 * v131;
            v133 = v127 - 4 * v130;
            if (v132 < 1 || v133 <= 0)
            {
              *v123 = 0;
            }

            else
            {
              if (v133 >= 4)
              {
                v128 = 4;
              }

              else
              {
                v128 = v127 - 4 * v130;
              }

              if (v132 >= 8)
              {
                v129 = 8;
              }

              else
              {
                v129 = v124 - 8 * v131;
              }

              v122 = (v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v122, v123, &__dst[256 * v130 + 2048 + 16 * v131], 64, v129, v128, *&v25, *&v26, v27, v28, v29, v30, v31, v32));
            }

            v125 += 2;
            ++v123;
            v126 -= 2;
          }

          while (v126);
          v16 = v150;
          v49 = v155;
          v41 = 4 * a11;
          v73 = v144;
LABEL_136:
          result = __src;
          if (v158)
          {
            result = memcpy(__src, v73, 0x800uLL);
          }

          v48 = v157;
        }

        while (v157 != (v151 >> 5) + 1);
        ++v33;
      }

      while (v33 != v135);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v155 = v15;
  v17 = v16;
  v19 = v18;
  v149 = v20;
  v140 = v21;
  v141 = v22;
  v23 = v12;
  v168 = *MEMORY[0x29EDCA608];
  v139 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v28 = v14 >> 5;
  v138 = v14 + a10 - 1;
  v29 = v138 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v154 = v34;
  result = v23;
  if (v28 <= v29)
  {
    v148 = v155 + a9 - 1;
    if (v155 >> 5 <= v148 >> 5)
    {
      v152 = (v19 - 1) >> 5;
      v137 = (v17 - 1) >> 5;
      v144 = (v19 - 1) & 0x1F;
      v135 = ((v17 - 1) & 0x1F) + 1;
      v136 = (v17 - 1) & 0x1F;
      v134 = v29 + 1;
      v36 = 2 * a11;
      do
      {
        v37 = (32 * v28) | 0x1F;
        if (32 * v28 <= v151)
        {
          v38 = v151;
        }

        else
        {
          v38 = 32 * v28;
        }

        if (v138 < v37)
        {
          v37 = v138;
        }

        v147 = v38 - 32 * v28;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v136;
        v146 = v40;
        if (v28 == v137)
        {
          v42 = v135;
        }

        else
        {
          v42 = 32;
        }

        if (v28 != v137)
        {
          v41 = v40 != 32;
        }

        v145 = v41;
        v150 = v141 + (v38 - v151) * a11;
        v43 = v155 >> 5;
        do
        {
          v44 = 32 * v43;
          v45 = 32 * (v43 + 1) - 1;
          if (32 * v43 <= v155)
          {
            v46 = v155;
          }

          else
          {
            v46 = 32 * v43;
          }

          if (v148 < v45)
          {
            v45 = v155 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v152)
          {
            v49 = v144 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 >= v151 && v44 >= v155)
          {
            v51 = v47 != v144;
            if (v43 != v152)
            {
              v51 = v48 != 32;
            }

            v50 = v51 || v145;
          }

          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 31;
          if (v53 < 0x40)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 5) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 31;
          if (v56 < 0x40)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 5) - 1)));
          }

          v153 = v43 + 1;
          if (v57 | v54)
          {
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
                v59 |= (v62 & v43) << v58++;
              }

              else
              {
                v54 = 0;
              }

              --v57;
              if (v61)
              {
                v59 |= (v62 & v28) << v58++;
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
            v63 = 32 * v59;
          }

          else
          {
            v63 = 0;
          }

          v64 = (v149 + v63);
          v65 = (v140 + v28 * v139 + (v43 << 11));
          if (v154)
          {
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              v67 = __dst;
LABEL_70:
              v71 = &byte_29D2F790B;
              v72 = 64;
              v73 = v67;
              do
              {
                v79 = *v71;
                v80 = *(v71 - 1);
                if (v49 <= 8 * v80 || 4 * v79 >= v42)
                {
                  v78 = 0;
                }

                else
                {
                  v74 = (v150 + 2 * (v46 - v155) + 4 * a11 * v79 + 16 * v80);
                  v24 = *v74;
                  v25 = *(v74 + a11);
                  v75 = (v74 + v36);
                  v26 = *v75;
                  v27 = *(v75 + a11);
                  v76 = vzip2q_s32(*v75, v27);
                  v77 = v73;
                  vst2_f32(v77, v24);
                  v77 += 4;
                  vst2_f32(v77, v26);
                  *(v73 + 2) = vzip2q_s32(v24, v25);
                  *(v73 + 3) = v76;
                  v73 += 16;
                  v78 = 63;
                }

                v71 += 2;
                *v64++ = v78;
                v72 -= 2;
              }

              while (v72);
              v70 = v153;
              if (v154)
              {
                goto LABEL_123;
              }

              goto LABEL_29;
            }

            v66 = (v140 + v28 * v139 + (v43 << 11));
            __srca = v48;
            memcpy(__dst, v65, 0x800uLL);
            v48 = __srca;
            v67 = __dst;
            v65 = v66;
            result = v23;
          }

          else
          {
            v67 = (v140 + v28 * v139 + (v43 << 11));
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              goto LABEL_70;
            }
          }

          v68 = v65;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v67;
          v165 = v49;
          v166 = v42;
          v161 = v147;
          v162 = v46 - v44;
          v158 = v64;
          v159 = (v150 + 2 * (v46 - v155));
          v160 = a11;
          v163 = v146;
          v164 = v48;
          if (v50)
          {
            v69 = v67;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v67 = v69;
            result = v23;
            v70 = v153;
            v65 = v68;
            v36 = 2 * a11;
            if (!v154)
            {
              goto LABEL_29;
            }

LABEL_123:
            memcpy(v65, v67, 0x800uLL);
            result = v23;
            goto LABEL_29;
          }

          v82 = &byte_29D2F790B;
          v83 = 64;
          __src = v67;
          v84 = v67;
          do
          {
            v85 = *v64++;
            v84 = (v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v82 + 2048 + 16 * *(v82 - 1)], 64, v84, v85, *v24.val, *v25.i64, *v26.val, v27.val[0]));
            v82 += 2;
            v83 -= 2;
          }

          while (v83);
          v86 = v163;
          if (v163)
          {
            v87 = v164;
            if (v164)
            {
              v88 = 0;
              v89 = v161 << 6;
              v90 = 2 * v162;
              v91 = &__dst[v89 + 2048 + v90];
              v92 = v159;
              v93 = v160;
              v94 = 2 * v164;
              if (2 * v164)
              {
                v95 = (2 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v95 = 0;
              }

              v96 = !v95;
              v98 = v91 < &v159->i8[2 * v164 + v160 * (v163 - 1)] && v159 < &__dst[64 * v163 + 1984 + 64 * v161 + 2 * v164 + v90];
              v99 = v98 || v160 < 0;
              v100 = v94 & 0x1FFFFFFE0;
              v101 = v94 & 0x1FFFFFFF8;
              v102 = (v164 < 4) | v96 | v99;
              v103 = &__dst[v89 + 2064 + v90];
              v104 = v159 + 1;
              v105 = v91;
              v106 = v159;
              do
              {
                v107 = (v92 + v88 * v93);
                v108 = &v91[64 * v88];
                if (v102)
                {
                  v109 = 0;
                  goto LABEL_111;
                }

                if (v87 >= 0x10)
                {
                  v111 = v104;
                  v112 = v103;
                  v113 = v94 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = v111[-1];
                    v25 = *v111;
                    v112[-1] = v24;
                    *v112 = v25;
                    v112 += 2;
                    v111 += 2;
                    v113 -= 32;
                  }

                  while (v113);
                  if (v94 == v100)
                  {
                    goto LABEL_97;
                  }

                  v110 = v94 & 0x1FFFFFFE0;
                  if ((v87 & 0xC) == 0)
                  {
                    v107 += v100;
                    v108 += v100;
                    v109 = v94 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v110 = 0;
                }

                v108 += v101;
                v114 = v110 - (v94 & 0x1FFFFFFF8);
                v115 = (v106 + v110);
                v116 = &v105[v110];
                do
                {
                  v117 = *v115++;
                  v24.val[0] = v117;
                  *v116++ = v117;
                  v114 += 8;
                }

                while (v114);
                if (v94 == v101)
                {
                  goto LABEL_97;
                }

                v107 += v101;
                v109 = v94 & 0xFFFFFFF8;
LABEL_111:
                v118 = v109 + 1;
                do
                {
                  v119 = *v107++;
                  *v108++ = v119;
                }

                while (v94 > v118++);
LABEL_97:
                ++v88;
                v103 += 4;
                v104 = (v104 + v93);
                v106 += v93;
                v105 += 64;
              }

              while (v88 != v86);
            }
          }

          v121 = v157;
          v122 = v158;
          v123 = v165;
          v124 = &byte_29D2F790B;
          v125 = 64;
          v126 = v166;
          v70 = v153;
          v65 = v68;
          v36 = 2 * a11;
          do
          {
            v131 = *v124;
            v132 = *(v124 - 1);
            if (v123 <= 8 * v132 || 4 * v131 >= v126)
            {
              v130 = 0;
            }

            else
            {
              v127 = &__dst[256 * v131 + 2048 + 16 * v132];
              v24 = *v127;
              v25 = v127[4];
              v26 = vzip2q_s32(*v127, v25);
              v27 = v127[8];
              v128 = v127[12];
              v129 = v121;
              vst2_f32(v129, v24);
              v129 += 4;
              vst2_f32(v129, v27);
              v121[2] = v26;
              v121[3] = vzip2q_s32(v27, v128);
              v121 += 4;
              v130 = 63;
            }

            v124 += 2;
            *v122++ = v130;
            v125 -= 2;
          }

          while (v125);
          result = v23;
          v67 = __src;
          if (v154)
          {
            goto LABEL_123;
          }

LABEL_29:
          v43 = v70;
        }

        while (v70 != (v148 >> 5) + 1);
        ++v28;
      }

      while (v28 != v134);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 1536 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 1280 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + (v47 << 10));
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v142 = v22;
  v143 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v33 = v14 >> 5;
  v140 = v14 + a10 - 1;
  v34 = v140 >> 5;
  v155 = v24;
  result = *(v24 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v36 = result & 0xF00;
  }

  else
  {
    v36 = 0;
  }

  v37 = (v36 & 0xD00) == 0 || v36 == 768;
  v38 = v36 & 0xE00;
  v40 = !v37 && v38 != 1024;
  v158 = v40;
  if (v33 <= v34)
  {
    v151 = v16 + a9 - 1;
    if (v16 >> 5 <= v151 >> 5)
    {
      v156 = (v20 - 1) >> 5;
      v139 = (v18 - 1) >> 5;
      v145 = (v20 - 1) & 0x1F;
      v137 = ((v18 - 1) & 0x1F) + 1;
      v138 = (v18 - 1) & 0x1F;
      v41 = 4 * a11;
      v149 = v16;
      v135 = v34 + 1;
      v136 = v16 >> 5;
      v150 = v16;
      do
      {
        v42 = (32 * v33) | 0x1F;
        if (32 * v33 <= v154)
        {
          v43 = v154;
        }

        else
        {
          v43 = 32 * v33;
        }

        if (v140 < v42)
        {
          v42 = v140;
        }

        v148 = v43 - 32 * v33;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v138;
        v147 = v45;
        if (v33 == v139)
        {
          v47 = v137;
        }

        else
        {
          v47 = 32;
        }

        if (v33 != v139)
        {
          v46 = v45 != 32;
        }

        v146 = v46;
        v153 = v143 + (v43 - v154) * a11;
        v48 = v136;
        v49 = v155;
        do
        {
          v50 = 32 * v48;
          v157 = v48 + 1;
          v51 = 32 * (v48 + 1) - 1;
          if (32 * v48 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 32 * v48;
          }

          if (v151 < v51)
          {
            v51 = v151;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v48 == v156)
          {
            v55 = v145 + 1;
          }

          else
          {
            v55 = 32;
          }

          v56 = 1;
          if (32 * v33 >= v154 && v50 >= v149)
          {
            v57 = v53 != v145;
            if (v48 != v156)
            {
              v57 = v54 != 32;
            }

            v56 = v57 || v146;
          }

          v58 = *(v49 + 128) >> (*(v49 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 31;
          if (v59 < 0x40)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 5) - 1)));
          }

          v61 = *(v49 + 132) >> (*(v49 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 31;
          if (v62 < 0x40)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_62:
              v69 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 5) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_62;
            }
          }

          v64 = 0;
          v65 = 0;
          v66 = v60 != 0;
          v67 = v63 != 0;
          v68 = 1;
          do
          {
            --v60;
            if (v66)
            {
              v65 |= (v68 & v48) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v33) << v64++;
            }

            else
            {
              v63 = 0;
            }

            v68 *= 2;
            --v64;
            v67 = v63 != 0;
            v66 = v60 != 0;
          }

          while (v63 | v60);
          v69 = 32 * v65;
LABEL_63:
          v70 = (v152 + v69);
          v71 = v153 + 2 * (v52 - v16);
          v72 = (v142 + v33 * v141 + (v48 << 11));
          __src = v72;
          if (v158)
          {
            if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
            {
              v72 = __dst;
LABEL_70:
              v74 = &byte_29D2F790B;
              v75 = 64;
              v73 = v72;
              v76 = v72;
              do
              {
                v79 = *v74;
                v80 = *(v74 - 1);
                v81 = v55 - 8 * v80;
                v82 = v47 - 4 * v79;
                v83 = v81 < 1 || v82 <= 0;
                if (v83)
                {
                  *v70 = 0;
                }

                else
                {
                  if (v82 >= 4)
                  {
                    v77 = 4;
                  }

                  else
                  {
                    v77 = v47 - 4 * v79;
                  }

                  if (v81 >= 8)
                  {
                    v78 = 8;
                  }

                  else
                  {
                    v78 = v55 - 8 * v80;
                  }

                  v76 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v76, v70, (v71 + v41 * v79 + 16 * v80), a11, v78, v77, *&v25, *&v26, v27, v28, v29, v30, v31, v32);
                }

                v74 += 2;
                ++v70;
                v75 -= 2;
              }

              while (v75);
              v16 = v150;
              v49 = v155;
              goto LABEL_136;
            }

            memcpy(__dst, v72, 0x800uLL);
            v72 = __dst;
          }

          else if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v155;
          v161 = v72;
          v169 = v55;
          v170 = v47;
          v165 = v148;
          v166 = v52 - v50;
          v162 = v70;
          v163 = v71;
          v164 = a11;
          v167 = v147;
          v168 = v54;
          if (v56)
          {
            v73 = v72;
            dispatch_sync(*(*(v155 + 8) + 16552), block);
            v16 = v150;
            v49 = v155;
            goto LABEL_136;
          }

          v84 = &byte_29D2F790B;
          v85 = 64;
          v144 = v72;
          v86 = v72;
          do
          {
            v87 = *v70++;
            v86 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v84 + 2048 + 16 * *(v84 - 1)], 64, v86, v87, *&v25, *&v26, v27, *&v28));
            v84 += 2;
            v85 -= 2;
          }

          while (v85);
          v88 = v167;
          if (v167)
          {
            v89 = v168;
            if (v168)
            {
              v90 = 0;
              v91 = v165 << 6;
              v92 = 2 * v166;
              v93 = &__dst[v91 + 2048 + v92];
              v94 = v163;
              v95 = v164;
              v96 = 2 * v168;
              if (2 * v168)
              {
                v97 = (2 * v168 - 1) >> 32 == 0;
              }

              else
              {
                v97 = 0;
              }

              v98 = !v97;
              v100 = v93 < v163 + v164 * (v167 - 1) + 2 * v168 && v163 < &__dst[64 * v167 + 1984 + 64 * v165 + 2 * v168 + v92];
              v101 = v100 || v164 < 0;
              v102 = v96 & 0x1FFFFFFE0;
              v103 = v96 & 0x1FFFFFFF8;
              v104 = (v168 < 4) | v98 | v101;
              v105 = &__dst[v91 + 2064 + v92];
              v106 = (v163 + 16);
              v107 = v93;
              v108 = v163;
              do
              {
                v109 = (v94 + v90 * v95);
                v110 = &v93[64 * v90];
                if (v104)
                {
                  v111 = 0;
                  goto LABEL_117;
                }

                if (v89 >= 0x10)
                {
                  v113 = v106;
                  v114 = v105;
                  v115 = v96 & 0x1FFFFFFE0;
                  do
                  {
                    v25 = *(v113 - 1);
                    v26 = *v113;
                    *(v114 - 1) = v25;
                    *v114 = v26;
                    v114 += 2;
                    v113 += 2;
                    v115 -= 32;
                  }

                  while (v115);
                  if (v96 == v102)
                  {
                    goto LABEL_103;
                  }

                  v112 = v96 & 0x1FFFFFFE0;
                  if ((v89 & 0xC) == 0)
                  {
                    v109 += v102;
                    v110 += v102;
                    v111 = v96 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v112 = 0;
                }

                v110 += v103;
                v116 = v112 - (v96 & 0x1FFFFFFF8);
                v117 = (v108 + v112);
                v118 = &v107[v112];
                do
                {
                  v119 = *v117++;
                  *&v25 = v119;
                  *v118++ = v119;
                  v116 += 8;
                }

                while (v116);
                if (v96 == v103)
                {
                  goto LABEL_103;
                }

                v109 += v103;
                v111 = v96 & 0xFFFFFFF8;
LABEL_117:
                v120 = v111 + 1;
                do
                {
                  v121 = *v109++;
                  *v110++ = v121;
                  v83 = v96 > v120++;
                }

                while (v83);
LABEL_103:
                ++v90;
                v105 += 64;
                v106 = (v106 + v95);
                v108 += v95;
                v107 += 64;
              }

              while (v90 != v88);
            }
          }

          v122 = v161;
          v123 = v162;
          v124 = v169;
          v125 = &byte_29D2F790B;
          v126 = 64;
          v127 = v170;
          do
          {
            v130 = *v125;
            v131 = *(v125 - 1);
            v132 = v124 - 8 * v131;
            v133 = v127 - 4 * v130;
            if (v132 < 1 || v133 <= 0)
            {
              *v123 = 0;
            }

            else
            {
              if (v133 >= 4)
              {
                v128 = 4;
              }

              else
              {
                v128 = v127 - 4 * v130;
              }

              if (v132 >= 8)
              {
                v129 = 8;
              }

              else
              {
                v129 = v124 - 8 * v131;
              }

              v122 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v122, v123, &__dst[256 * v130 + 2048 + 16 * v131], 64, v129, v128, *&v25, *&v26, v27, v28, v29, v30, v31, v32);
            }

            v125 += 2;
            ++v123;
            v126 -= 2;
          }

          while (v126);
          v16 = v150;
          v49 = v155;
          v41 = 4 * a11;
          v73 = v144;
LABEL_136:
          result = __src;
          if (v158)
          {
            result = memcpy(__src, v73, 0x800uLL);
          }

          v48 = v157;
        }

        while (v157 != (v151 >> 5) + 1);
        ++v33;
      }

      while (v33 != v135);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v155 = v15;
  v17 = v16;
  v19 = v18;
  v149 = v20;
  v140 = v21;
  v141 = v22;
  v23 = v12;
  v168 = *MEMORY[0x29EDCA608];
  v139 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v28 = v14 >> 5;
  v138 = v14 + a10 - 1;
  v29 = v138 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v154 = v34;
  result = v23;
  if (v28 <= v29)
  {
    v148 = v155 + a9 - 1;
    if (v155 >> 5 <= v148 >> 5)
    {
      v152 = (v19 - 1) >> 5;
      v137 = (v17 - 1) >> 5;
      v144 = (v19 - 1) & 0x1F;
      v135 = ((v17 - 1) & 0x1F) + 1;
      v136 = (v17 - 1) & 0x1F;
      v134 = v29 + 1;
      v36 = 2 * a11;
      do
      {
        v37 = (32 * v28) | 0x1F;
        if (32 * v28 <= v151)
        {
          v38 = v151;
        }

        else
        {
          v38 = 32 * v28;
        }

        if (v138 < v37)
        {
          v37 = v138;
        }

        v147 = v38 - 32 * v28;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v136;
        v146 = v40;
        if (v28 == v137)
        {
          v42 = v135;
        }

        else
        {
          v42 = 32;
        }

        if (v28 != v137)
        {
          v41 = v40 != 32;
        }

        v145 = v41;
        v150 = v141 + (v38 - v151) * a11;
        v43 = v155 >> 5;
        do
        {
          v44 = 32 * v43;
          v45 = 32 * (v43 + 1) - 1;
          if (32 * v43 <= v155)
          {
            v46 = v155;
          }

          else
          {
            v46 = 32 * v43;
          }

          if (v148 < v45)
          {
            v45 = v155 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v152)
          {
            v49 = v144 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 >= v151 && v44 >= v155)
          {
            v51 = v47 != v144;
            if (v43 != v152)
            {
              v51 = v48 != 32;
            }

            v50 = v51 || v145;
          }

          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 31;
          if (v53 < 0x40)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 5) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 31;
          if (v56 < 0x40)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 5) - 1)));
          }

          v153 = v43 + 1;
          if (v57 | v54)
          {
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
                v59 |= (v62 & v43) << v58++;
              }

              else
              {
                v54 = 0;
              }

              --v57;
              if (v61)
              {
                v59 |= (v62 & v28) << v58++;
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
            v63 = 32 * v59;
          }

          else
          {
            v63 = 0;
          }

          v64 = (v149 + v63);
          v65 = (v140 + v28 * v139 + (v43 << 11));
          if (v154)
          {
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              v67 = __dst;
LABEL_70:
              v71 = &byte_29D2F790B;
              v72 = 64;
              v73 = v67;
              do
              {
                v79 = *v71;
                v80 = *(v71 - 1);
                if (v49 <= 8 * v80 || 4 * v79 >= v42)
                {
                  v78 = 0;
                }

                else
                {
                  v74 = (v150 + 2 * (v46 - v155) + 4 * a11 * v79 + 16 * v80);
                  v24 = *v74;
                  v25 = *(v74 + a11);
                  v75 = (v74 + v36);
                  v26 = *v75;
                  v27 = *(v75 + a11);
                  v76 = vzip2q_s32(*v75, v27);
                  v77 = v73;
                  vst2_f32(v77, v24);
                  v77 += 4;
                  vst2_f32(v77, v26);
                  *(v73 + 2) = vzip2q_s32(v24, v25);
                  *(v73 + 3) = v76;
                  v73 += 16;
                  v78 = 63;
                }

                v71 += 2;
                *v64++ = v78;
                v72 -= 2;
              }

              while (v72);
              v70 = v153;
              if (v154)
              {
                goto LABEL_123;
              }

              goto LABEL_29;
            }

            v66 = (v140 + v28 * v139 + (v43 << 11));
            __srca = v48;
            memcpy(__dst, v65, 0x800uLL);
            v48 = __srca;
            v67 = __dst;
            v65 = v66;
            result = v23;
          }

          else
          {
            v67 = (v140 + v28 * v139 + (v43 << 11));
            if (!(v50 & 1 | (v49 < 0x20u) | (v42 < 0x20u)))
            {
              goto LABEL_70;
            }
          }

          v68 = v65;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v67;
          v165 = v49;
          v166 = v42;
          v161 = v147;
          v162 = v46 - v44;
          v158 = v64;
          v159 = (v150 + 2 * (v46 - v155));
          v160 = a11;
          v163 = v146;
          v164 = v48;
          if (v50)
          {
            v69 = v67;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v67 = v69;
            result = v23;
            v70 = v153;
            v65 = v68;
            v36 = 2 * a11;
            if (!v154)
            {
              goto LABEL_29;
            }

LABEL_123:
            memcpy(v65, v67, 0x800uLL);
            result = v23;
            goto LABEL_29;
          }

          v82 = &byte_29D2F790B;
          v83 = 64;
          __src = v67;
          v84 = v67;
          do
          {
            v85 = *v64++;
            v84 = (v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v82 + 2048 + 16 * *(v82 - 1)], 64, v84, v85, *v24.val, *v25.i64, *v26.val, v27.val[0]));
            v82 += 2;
            v83 -= 2;
          }

          while (v83);
          v86 = v163;
          if (v163)
          {
            v87 = v164;
            if (v164)
            {
              v88 = 0;
              v89 = v161 << 6;
              v90 = 2 * v162;
              v91 = &__dst[v89 + 2048 + v90];
              v92 = v159;
              v93 = v160;
              v94 = 2 * v164;
              if (2 * v164)
              {
                v95 = (2 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v95 = 0;
              }

              v96 = !v95;
              v98 = v91 < &v159->i8[2 * v164 + v160 * (v163 - 1)] && v159 < &__dst[64 * v163 + 1984 + 64 * v161 + 2 * v164 + v90];
              v99 = v98 || v160 < 0;
              v100 = v94 & 0x1FFFFFFE0;
              v101 = v94 & 0x1FFFFFFF8;
              v102 = (v164 < 4) | v96 | v99;
              v103 = &__dst[v89 + 2064 + v90];
              v104 = v159 + 1;
              v105 = v91;
              v106 = v159;
              do
              {
                v107 = (v92 + v88 * v93);
                v108 = &v91[64 * v88];
                if (v102)
                {
                  v109 = 0;
                  goto LABEL_111;
                }

                if (v87 >= 0x10)
                {
                  v111 = v104;
                  v112 = v103;
                  v113 = v94 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = v111[-1];
                    v25 = *v111;
                    v112[-1] = v24;
                    *v112 = v25;
                    v112 += 2;
                    v111 += 2;
                    v113 -= 32;
                  }

                  while (v113);
                  if (v94 == v100)
                  {
                    goto LABEL_97;
                  }

                  v110 = v94 & 0x1FFFFFFE0;
                  if ((v87 & 0xC) == 0)
                  {
                    v107 += v100;
                    v108 += v100;
                    v109 = v94 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v110 = 0;
                }

                v108 += v101;
                v114 = v110 - (v94 & 0x1FFFFFFF8);
                v115 = (v106 + v110);
                v116 = &v105[v110];
                do
                {
                  v117 = *v115++;
                  v24.val[0] = v117;
                  *v116++ = v117;
                  v114 += 8;
                }

                while (v114);
                if (v94 == v101)
                {
                  goto LABEL_97;
                }

                v107 += v101;
                v109 = v94 & 0xFFFFFFF8;
LABEL_111:
                v118 = v109 + 1;
                do
                {
                  v119 = *v107++;
                  *v108++ = v119;
                }

                while (v94 > v118++);
LABEL_97:
                ++v88;
                v103 += 4;
                v104 = (v104 + v93);
                v106 += v93;
                v105 += 64;
              }

              while (v88 != v86);
            }
          }

          v121 = v157;
          v122 = v158;
          v123 = v165;
          v124 = &byte_29D2F790B;
          v125 = 64;
          v126 = v166;
          v70 = v153;
          v65 = v68;
          v36 = 2 * a11;
          do
          {
            v131 = *v124;
            v132 = *(v124 - 1);
            if (v123 <= 8 * v132 || 4 * v131 >= v126)
            {
              v130 = 0;
            }

            else
            {
              v127 = &__dst[256 * v131 + 2048 + 16 * v132];
              v24 = *v127;
              v25 = v127[4];
              v26 = vzip2q_s32(*v127, v25);
              v27 = v127[8];
              v128 = v127[12];
              v129 = v121;
              vst2_f32(v129, v24);
              v129 += 4;
              vst2_f32(v129, v27);
              v121[2] = v26;
              v121[3] = vzip2q_s32(v27, v128);
              v121 += 4;
              v130 = 63;
            }

            v124 += 2;
            *v122++ = v130;
            v125 -= 2;
          }

          while (v125);
          result = v23;
          v67 = __src;
          if (v154)
          {
            goto LABEL_123;
          }

LABEL_29:
          v43 = v70;
        }

        while (v70 != (v148 >> 5) + 1);
        ++v28;
      }

      while (v28 != v134);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 1152 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + (v47 << 10));
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v159 = v15;
  v17 = v16;
  v19 = v18;
  v152 = v20;
  v145 = v21;
  v146 = v22;
  v23 = v12;
  v174 = *MEMORY[0x29EDCA608];
  v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v32 = v14 >> 5;
  v143 = v14 + a10 - 1;
  v33 = v143 >> 5;
  v160 = v23;
  result = *(v23 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v35 = result & 0xF00;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v35 & 0xD00) == 0 || v35 == 768;
  v37 = v35 & 0xE00;
  v39 = !v36 && v37 != 1024;
  v158 = v39;
  if (v32 <= v33)
  {
    v151 = v159 + a9 - 1;
    if (v159 >> 5 <= v151 >> 5)
    {
      v40 = a11;
      v156 = (v19 - 1) >> 5;
      v142 = (v17 - 1) >> 5;
      v147 = (v19 - 1) & 0x1F;
      v140 = ((v17 - 1) & 0x1F) + 1;
      v141 = (v17 - 1) & 0x1F;
      v139 = v33 + 1;
      do
      {
        v41 = (32 * v32) | 0x1F;
        if (32 * v32 <= v154)
        {
          v42 = v154;
        }

        else
        {
          v42 = 32 * v32;
        }

        if (v143 < v41)
        {
          v41 = v143;
        }

        v150 = v42 - 32 * v32;
        v43 = v41 - v42;
        v44 = v43 + 1;
        v45 = v43 != v141;
        v149 = v44;
        if (v32 == v142)
        {
          v46 = v140;
        }

        else
        {
          v46 = 32;
        }

        if (v32 != v142)
        {
          v45 = v44 != 32;
        }

        v148 = v45;
        v153 = v146 + (v42 - v154) * v40;
        v47 = v159 >> 5;
        v48 = v160;
        do
        {
          v49 = 32 * v47;
          v157 = v47 + 1;
          v50 = 32 * (v47 + 1) - 1;
          if (32 * v47 <= v159)
          {
            v51 = v159;
          }

          else
          {
            v51 = 32 * v47;
          }

          if (v151 < v50)
          {
            v50 = v159 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v47 == v156)
          {
            v54 = v147 + 1;
          }

          else
          {
            v54 = 32;
          }

          v55 = 1;
          if (32 * v32 >= v154 && v49 >= v159)
          {
            v56 = v52 != v147;
            if (v47 != v156)
            {
              v56 = v53 != 32;
            }

            v55 = v56 || v148;
          }

          v57 = *(v48 + 128) >> (*(v48 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          if (v58 < 0x40)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          }

          v60 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 31;
          if (v61 < 0x40)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_62:
              v68 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 5) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_62;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v47) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v32) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 32 * v64;
LABEL_63:
          v69 = (v152 + v68);
          v70 = v153 + 2 * (v51 - v159);
          v71 = (v145 + v32 * v144 + 768 * v47);
          __src = v71;
          if (v158)
          {
            if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
            {
              v71 = __dst;
LABEL_70:
              v75 = *(*(v160 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v155 = v71;
              v78 = v71;
              do
              {
                v81 = *v76;
                v82 = *(v76 - 1);
                v83 = v54 - 8 * v82;
                v84 = v46 - 4 * v81;
                v85 = v83 < 1 || v84 <= 0;
                if (v85)
                {
                  *v69 = 0;
                }

                else
                {
                  if (v84 >= 4)
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = v46 - 4 * v81;
                  }

                  if (v83 >= 8)
                  {
                    v80 = 8;
                  }

                  else
                  {
                    v80 = v54 - 8 * v82;
                  }

                  v78 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v78, v69, (v70 + 4 * a11 * v81 + 16 * v82), v40, v80, v79, v75, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
                }

                v76 += 2;
                ++v69;
                v77 -= 2;
              }

              while (v77);
              v48 = v160;
              goto LABEL_136;
            }

            memcpy(__dst, v71, 0x800uLL);
            v71 = __dst;
          }

          else if (!(v55 & 1 | (v54 < 0x20u) | (v46 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v160;
          v163 = v71;
          v171 = v54;
          v172 = v46;
          v167 = v150;
          v168 = v51 - v49;
          v164 = v69;
          v165 = v153 + 2 * (v51 - v159);
          v166 = v40;
          v169 = v149;
          v170 = v53;
          if (v55)
          {
            v72 = v71;
            dispatch_sync(*(*(v160 + 8) + 16552), block);
            v73 = v72;
            v48 = v160;
            v74 = v157;
            result = __src;
            goto LABEL_137;
          }

          v86 = *(*(v160 + 208) + 52);
          v87 = &byte_29D2F790B;
          v88 = 64;
          v155 = v71;
          v89 = v71;
          do
          {
            v90 = *v69++;
            v89 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v87 + 2048 + 16 * *(v87 - 1)], 64, v89, v90, v86, *&v24, *&v25, v26, *&v27);
            v87 += 2;
            v88 -= 2;
          }

          while (v88);
          v91 = v169;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 6;
              v95 = 2 * v168;
              v96 = &__dst[v94 + 2048 + v95];
              v97 = v165;
              v98 = v166;
              v99 = 2 * v170;
              if (2 * v170)
              {
                v100 = (2 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 2 * v170 && v165 < &__dst[64 * v169 + 1984 + 64 * v167 + 2 * v170 + v95];
              v104 = v103 || v166 < 0;
              v105 = v99 & 0x1FFFFFFE0;
              v106 = v99 & 0x1FFFFFFF8;
              v107 = (v170 < 4) | v101 | v104;
              v108 = &__dst[v94 + 2064 + v95];
              v109 = (v165 + 16);
              v110 = v96;
              v111 = v165;
              do
              {
                v112 = (v97 + v93 * v98);
                v113 = &v96[64 * v93];
                if (v107)
                {
                  v114 = 0;
                  goto LABEL_117;
                }

                if (v92 >= 0x10)
                {
                  v116 = v109;
                  v117 = v108;
                  v118 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v24 = *(v116 - 1);
                    v25 = *v116;
                    *(v117 - 1) = v24;
                    *v117 = v25;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v99 == v105)
                  {
                    goto LABEL_103;
                  }

                  v115 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 0xC) == 0)
                  {
                    v112 += v105;
                    v113 += v105;
                    v114 = v99 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v115 = 0;
                }

                v113 += v106;
                v119 = v115 - (v99 & 0x1FFFFFFF8);
                v120 = (v111 + v115);
                v121 = &v110[v115];
                do
                {
                  v122 = *v120++;
                  *&v24 = v122;
                  *v121++ = v122;
                  v119 += 8;
                }

                while (v119);
                if (v99 == v106)
                {
                  goto LABEL_103;
                }

                v112 += v106;
                v114 = v99 & 0xFFFFFFF8;
LABEL_117:
                v123 = v114 + 1;
                do
                {
                  v124 = *v112++;
                  *v113++ = v124;
                  v85 = v99 > v123++;
                }

                while (v85);
LABEL_103:
                ++v93;
                v108 += 64;
                v109 = (v109 + v98);
                v111 += v98;
                v110 += 64;
              }

              while (v93 != v91);
            }
          }

          v125 = v163;
          v126 = v164;
          v127 = v171;
          v128 = v172;
          v129 = *(*(v160 + 208) + 52);
          v130 = &byte_29D2F790B;
          v131 = 64;
          do
          {
            v134 = *v130;
            v135 = *(v130 - 1);
            v136 = v127 - 8 * v135;
            v137 = v128 - 4 * v134;
            if (v136 < 1 || v137 <= 0)
            {
              *v126 = 0;
            }

            else
            {
              if (v137 >= 4)
              {
                v132 = 4;
              }

              else
              {
                v132 = v128 - 4 * v134;
              }

              if (v136 >= 8)
              {
                v133 = 8;
              }

              else
              {
                v133 = v127 - 8 * v135;
              }

              v125 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v125, v126, &__dst[256 * v134 + 2048 + 16 * v135], 64, v133, v132, v129, *&v24, *&v25, v26, v27, v28, v29, v30, v31);
            }

            v130 += 2;
            ++v126;
            v131 -= 2;
          }

          while (v131);
          v48 = v160;
          v40 = a11;
LABEL_136:
          v74 = v157;
          result = __src;
          v73 = v155;
LABEL_137:
          if (v158)
          {
            result = memcpy(result, v73, 0x800uLL);
          }

          v47 = v74;
        }

        while (v74 != (v151 >> 5) + 1);
        ++v32;
      }

      while (v32 != v139);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v214 = *MEMORY[0x29EDCA608];
  v156 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v24 = a8 >> 4;
  v155 = a8 + a10 - 1;
  v25 = v155 >> 4;
  if (*(a1 + 168))
  {
    v26 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  if (v24 <= v25)
  {
    v31 = a7 + a9 - 1;
    if (a7 >> 4 <= v31 >> 4)
    {
      v168 = (a5 - 1) >> 4;
      v154 = (a6 - 1) >> 4;
      v160 = (a5 - 1) & 0xF;
      v152 = ((a6 - 1) & 0xF) + 1;
      v153 = (a6 - 1) & 0xF;
      v151 = v25 + 1;
      do
      {
        v32 = (16 * v24) | 0xF;
        v33 = v159;
        if (16 * v24 <= v159)
        {
          v34 = v159;
        }

        else
        {
          v34 = 16 * v24;
        }

        if (v155 < v32)
        {
          v32 = v155;
        }

        v163 = v34 - 16 * v24;
        v35 = v32 - v34;
        v36 = v35 + 1;
        v37 = v35 != v153;
        v162 = v36;
        v38 = v36 != 16;
        v39 = v152;
        if (v24 != v154)
        {
          v39 = 16;
          v37 = v38;
        }

        v161 = v37;
        v166 = a3 + (v34 - v159) * a11;
        v167 = v39;
        v165 = v39;
        v40 = a7 >> 4;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v31 < v43)
          {
            v43 = a7 + a9 - 1;
          }

          v45 = v43 - v44;
          v46 = v43 - v44 + 1;
          if (v40 == v168)
          {
            v47 = v160 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v24 >= v33 && v41 >= a7)
          {
            v49 = v45 != v160;
            if (v40 != v168)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v161;
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
              v57 |= (v60 & v40) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v24) << v56++;
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
          v63 = (v166 + v44 - a7);
          v64 = (a2 + v24 * v156 + (v40 << 8));
          if (v30)
          {
            if (!(v48 & 1 | (v47 < 0x10u) | (v165 < 0x10)))
            {
              v72 = v180;
LABEL_68:
              v73 = a11;
              v74 = v72;
              v75 = (a4 + v61);
              v76 = v167;
              goto LABEL_163;
            }

            v65 = v64[13];
            v180[12] = v64[12];
            v180[13] = v65;
            v66 = v64[15];
            v180[14] = v64[14];
            v181 = v66;
            v67 = v64[9];
            v180[8] = v64[8];
            v180[9] = v67;
            v68 = v64[11];
            v180[10] = v64[10];
            v180[11] = v68;
            v69 = v64[5];
            v180[4] = v64[4];
            v180[5] = v69;
            v70 = v64[7];
            v180[6] = v64[6];
            v180[7] = v70;
            v71 = v64[1];
            v180[0] = *v64;
            v180[1] = v71;
            v17 = v64[2];
            v18 = v64[3];
            v72 = v180;
            v180[2] = v17;
            v180[3] = v18;
          }

          else
          {
            v72 = (a2 + v24 * v156 + (v40 << 8));
            if (!(v48 & 1 | (v47 < 0x10u) | (v165 < 0x10)))
            {
              goto LABEL_68;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v170 = v72;
          v178 = v47;
          v179 = v167;
          v174 = v163;
          v175 = v44 - v41;
          v171 = (a4 + v61);
          v172 = v166 + v44 - a7;
          v173 = a11;
          v176 = v162;
          v177 = v46;
          if ((v48 & 1) == 0)
          {
            v77 = *v62;
            if (v77 == 96)
            {
              *&v17 = vdup_lane_s8(*v72, 0);
              v182 = v17;
              v184 = v17;
              v186 = v17;
              v188 = v17;
              v78 = 1;
            }

            else if (v77 == 31)
            {
              v79 = v72[1];
              *&v19 = v72[2];
              *&v20 = v72[3];
              v21 = vuzp1_s16(*v72, *&v19);
              v80 = vuzp2_s16(*v72, *&v19);
              v182 = v21;
              v184 = v80;
              *&v17 = vuzp1_s16(v79, *&v20);
              *&v18 = vuzp2_s16(v79, *&v20);
              v186 = v17;
              v188 = v18;
              v78 = 32;
            }

            else if (*v62)
            {
              v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v182, 16, v72, v77, *&v17, *&v18);
            }

            else
            {
              v78 = 0;
              v182 = 0;
              v184 = 0;
              v186 = 0;
              v188 = 0;
            }

            v81 = (v72 + v78);
            v82 = v62[1];
            if (v82 == 96)
            {
              *&v17 = vdup_lane_s8(*v81, 0);
              v183 = v17;
              v185 = v17;
              v187 = v17;
              v189 = v17;
              v83 = 1;
            }

            else if (v82 == 31)
            {
              v84 = v81[1];
              *&v19 = v81[2];
              *&v20 = v81[3];
              v21 = vuzp1_s16(*v81, *&v19);
              v85 = vuzp2_s16(*v81, *&v19);
              v183 = v21;
              v185 = v85;
              *&v17 = vuzp1_s16(v84, *&v20);
              *&v18 = vuzp2_s16(v84, *&v20);
              v187 = v17;
              v189 = v18;
              v83 = 32;
            }

            else if (v62[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v183, 16, v81, v82, *&v17, *&v18);
            }

            else
            {
              v83 = 0;
              v183 = 0;
              v185 = 0;
              v187 = 0;
              v189 = 0;
            }

            v86 = (v81 + v83);
            v87 = v62[2];
            if (v87 == 96)
            {
              *&v17 = vdup_lane_s8(*v86, 0);
              v190 = v17;
              v192 = v17;
              v194 = v17;
              v196 = v17;
              v88 = 1;
            }

            else if (v87 == 31)
            {
              v89 = v86[1];
              *&v19 = v86[2];
              *&v20 = v86[3];
              v21 = vuzp1_s16(*v86, *&v19);
              v90 = vuzp2_s16(*v86, *&v19);
              v190 = v21;
              v192 = v90;
              *&v17 = vuzp1_s16(v89, *&v20);
              *&v18 = vuzp2_s16(v89, *&v20);
              v194 = v17;
              v196 = v18;
              v88 = 32;
            }

            else if (v62[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v190, 16, v86, v87, *&v17, *&v18);
            }

            else
            {
              v88 = 0;
              v190 = 0;
              v192 = 0;
              v194 = 0;
              v196 = 0;
            }

            v91 = (v86 + v88);
            v92 = v62[3];
            if (v92 == 96)
            {
              *&v17 = vdup_lane_s8(*v91, 0);
              v191 = v17;
              v193 = v17;
              v195 = v17;
              v197 = v17;
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v94 = v91[1];
              *&v19 = v91[2];
              *&v20 = v91[3];
              v21 = vuzp1_s16(*v91, *&v19);
              v95 = vuzp2_s16(*v91, *&v19);
              v191 = v21;
              v193 = v95;
              *&v17 = vuzp1_s16(v94, *&v20);
              *&v18 = vuzp2_s16(v94, *&v20);
              v195 = v17;
              v197 = v18;
              v93 = 32;
            }

            else if (v62[3])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v191, 16, v91, v92, *&v17, *&v18);
            }

            else
            {
              v93 = 0;
              v191 = 0;
              v193 = 0;
              v195 = 0;
              v197 = 0;
            }

            v96 = (v91 + v93);
            v97 = v62[4];
            if (v97 == 96)
            {
              *&v17 = vdup_lane_s8(*v96, 0);
              v198 = v17;
              v200 = v17;
              v202 = v17;
              v204 = v17;
              v98 = 1;
            }

            else if (v97 == 31)
            {
              v99 = v96[1];
              *&v19 = v96[2];
              *&v20 = v96[3];
              v21 = vuzp1_s16(*v96, *&v19);
              v100 = vuzp2_s16(*v96, *&v19);
              v198 = v21;
              v200 = v100;
              *&v17 = vuzp1_s16(v99, *&v20);
              *&v18 = vuzp2_s16(v99, *&v20);
              v202 = v17;
              v204 = v18;
              v98 = 32;
            }

            else if (v62[4])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 16, v96, v97, *&v17, *&v18);
            }

            else
            {
              v98 = 0;
              v198 = 0;
              v200 = 0;
              v202 = 0;
              v204 = 0;
            }

            v101 = (v96 + v98);
            v102 = v62[5];
            if (v102 == 96)
            {
              *&v17 = vdup_lane_s8(*v101, 0);
              v199 = v17;
              v201 = v17;
              v203 = v17;
              v205 = v17;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v104 = v101[1];
              *&v19 = v101[2];
              *&v20 = v101[3];
              v21 = vuzp1_s16(*v101, *&v19);
              v105 = vuzp2_s16(*v101, *&v19);
              v199 = v21;
              v201 = v105;
              *&v17 = vuzp1_s16(v104, *&v20);
              *&v18 = vuzp2_s16(v104, *&v20);
              v203 = v17;
              v205 = v18;
              v103 = 32;
            }

            else if (v62[5])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 16, v101, v102, *&v17, *&v18);
            }

            else
            {
              v103 = 0;
              v199 = 0;
              v201 = 0;
              v203 = 0;
              v205 = 0;
            }

            v106 = (v101 + v103);
            v107 = v62[6];
            if (v107 == 96)
            {
              *&v17 = vdup_lane_s8(*v106, 0);
              v206 = v17;
              v208 = v17;
              v210 = v17;
              v212 = v17;
              v108 = 1;
            }

            else if (v107 == 31)
            {
              v109 = v106[1];
              *&v19 = v106[2];
              *&v20 = v106[3];
              v21 = vuzp1_s16(*v106, *&v19);
              v110 = vuzp2_s16(*v106, *&v19);
              v206 = v21;
              v208 = v110;
              *&v17 = vuzp1_s16(v109, *&v20);
              *&v18 = vuzp2_s16(v109, *&v20);
              v210 = v17;
              v212 = v18;
              v108 = 32;
            }

            else if (v62[6])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v206, 16, v106, v107, *&v17, *&v18);
            }

            else
            {
              v108 = 0;
              v206 = 0;
              v208 = 0;
              v210 = 0;
              v212 = 0;
            }

            v111 = (v106 + v108);
            v112 = v62[7];
            if (v112 == 96)
            {
              *&v17 = vdup_lane_s8(*v111, 0);
              v207 = v17;
              v209 = v17;
              v211 = v17;
              v213 = v17;
              v33 = v159;
              v113 = v176;
              if (v176)
              {
                goto LABEL_128;
              }
            }

            else
            {
              v33 = v159;
              if (v112 != 31)
              {
                if (v62[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 16, v111, v112, *&v17, *&v18);
                  v113 = v176;
                  if (!v176)
                  {
                    goto LABEL_162;
                  }
                }

                else
                {
                  v207 = 0;
                  v209 = 0;
                  v211 = 0;
                  v213 = 0;
                  v113 = v176;
                  if (!v176)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_128:
                v116 = v177;
                if (!v177)
                {
                  goto LABEL_162;
                }

                v117 = 16 * v174;
                v119 = v172;
                v118 = v173;
                if (v177 <= 7)
                {
                  v120 = &v182 + v117 + v175 + 3;
                  v121 = (v172 + 3);
                  do
                  {
                    *(v120 - 3) = *(v121 - 3);
                    if (v116 != 1)
                    {
                      *(v120 - 2) = *(v121 - 2);
                      if (v116 != 2)
                      {
                        *(v120 - 1) = *(v121 - 1);
                        if (v116 != 3)
                        {
                          *v120 = *v121;
                          if (v116 != 4)
                          {
                            v120[1] = v121[1];
                            if (v116 != 5)
                            {
                              v120[2] = v121[2];
                              if (v116 != 6)
                              {
                                v120[3] = v121[3];
                              }
                            }
                          }
                        }
                      }
                    }

                    v120 += 16;
                    v121 += v118;
                    --v113;
                  }

                  while (v113);
                  goto LABEL_162;
                }

                v122 = &v182 + v175 + v117;
                v123 = v177 - 1;
                v124 = v172 >= &v181 + 16 * v113 + 16 * v174 + v175 + v123 + 1 || v122 >= v172 + v173 * (v113 - 1) + v123 + 1;
                if (!v124 || v173 < 0)
                {
                  v137 = 0;
                  do
                  {
                    v138 = (v119 + v137 * v118);
                    v139 = &v122[16 * v137];
                    v140 = v116;
                    do
                    {
                      v141 = *v138++;
                      *v139++ = v141;
                      --v140;
                    }

                    while (v140);
                    ++v137;
                  }

                  while (v137 != v113);
                  goto LABEL_162;
                }

                v125 = 0;
                v126 = &v184 + v117 + v175;
                v127 = (v172 + 16);
                while (2)
                {
                  if (v116 >= 0x20)
                  {
                    v129 = v127;
                    v130 = v126;
                    v131 = v116 & 0xFFFFFFE0;
                    do
                    {
                      v17 = *(v129 - 1);
                      v18 = *v129;
                      *(v130 - 1) = v17;
                      *v130 = v18;
                      v130 += 2;
                      v129 += 2;
                      v131 -= 32;
                    }

                    while (v131);
                    if ((v116 & 0xFFFFFFE0) != v116)
                    {
                      v128 = v116 & 0xFFFFFFE0;
                      v132 = v128;
                      if ((v116 & 0x18) != 0)
                      {
                        goto LABEL_153;
                      }

                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v128 = 0;
LABEL_153:
                    v133 = v128 - (v116 & 0xFFFFFFF8);
                    v134 = (v119 + v128);
                    v135 = &v122[v128];
                    do
                    {
                      v136 = *v134++;
                      *&v17 = v136;
                      *v135 = v136;
                      v135 += 8;
                      v133 += 8;
                    }

                    while (v133);
                    v132 = v116 & 0xFFFFFFF8;
                    if (v132 != v116)
                    {
                      do
                      {
LABEL_156:
                        v122[v132] = *(v119 + v132);
                        ++v132;
                      }

                      while (v116 != v132);
                    }
                  }

                  ++v125;
                  v126 += 16;
                  v127 = (v127 + v118);
                  v119 += v118;
                  v122 += 16;
                  if (v125 == v113)
                  {
                    goto LABEL_162;
                  }

                  continue;
                }
              }

              v114 = v111[1];
              *&v19 = v111[2];
              *&v20 = v111[3];
              v21 = vuzp1_s16(*v111, *&v19);
              v115 = vuzp2_s16(*v111, *&v19);
              v207 = v21;
              v209 = v115;
              *&v17 = vuzp1_s16(v114, *&v20);
              *&v18 = vuzp2_s16(v114, *&v20);
              v211 = v17;
              v213 = v18;
              v113 = v176;
              if (v176)
              {
                goto LABEL_128;
              }
            }

LABEL_162:
            v74 = v170;
            v75 = v171;
            v47 = v178;
            v76 = v179;
            v63 = &v182;
            v73 = 16;
LABEL_163:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, v73, v74, v75, v47, v76, *&v17, *&v18, *&v19, *&v20, *&v21, v22, v23);
            if (!v30)
            {
              goto LABEL_26;
            }

            goto LABEL_164;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v30)
          {
            goto LABEL_26;
          }

LABEL_164:
          v142 = *v72->i8;
          v143 = *v72[2].i8;
          v144 = *v72[6].i8;
          v64[2] = *v72[4].i8;
          v64[3] = v144;
          *v64 = v142;
          v64[1] = v143;
          v145 = *v72[8].i8;
          v146 = *v72[10].i8;
          v147 = *v72[14].i8;
          v64[6] = *v72[12].i8;
          v64[7] = v147;
          v64[4] = v145;
          v64[5] = v146;
          v148 = *v72[16].i8;
          v149 = *v72[18].i8;
          v150 = *v72[22].i8;
          v64[10] = *v72[20].i8;
          v64[11] = v150;
          v64[8] = v148;
          v64[9] = v149;
          v17 = *v72[24].i8;
          v18 = *v72[26].i8;
          v19 = *v72[28].i8;
          v20 = *v72[30].i8;
          v64[14] = v19;
          v64[15] = v20;
          v64[12] = v17;
          v64[13] = v18;
LABEL_26:
          v40 = v42;
        }

        while (v42 != (v31 >> 4) + 1);
        ++v24;
      }

      while (v24 != v151);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v255 = *MEMORY[0x29EDCA608];
  v195 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v18 = a8 >> 4;
  v194 = a8 + a10 - 1;
  v19 = v194 >> 4;
  if (*(a1 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v21 = a1;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v21 = a1;
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v27 = a7;
  if (v18 <= v19)
  {
    v206 = a7 + a9 - 1;
    if (a7 >> 4 <= v206 >> 4)
    {
      v28 = (a5 - 1) >> 4;
      v193 = (a6 - 1) >> 4;
      v199 = (a5 - 1) & 0xF;
      v191 = ((a6 - 1) & 0xF) + 1;
      v192 = (a6 - 1) & 0xF;
      v190 = v19 + 1;
      v204 = v26;
      v203 = v28;
      do
      {
        v29 = (16 * v18) | 0xF;
        v30 = v198;
        if (16 * v18 <= v198)
        {
          v31 = v198;
        }

        else
        {
          v31 = 16 * v18;
        }

        if (v194 < v29)
        {
          v29 = v194;
        }

        v202 = v31 - 16 * v18;
        v32 = v29 - v31;
        v33 = v32 + 1;
        v34 = v32 != v192;
        v201 = v33;
        if (v18 == v193)
        {
          v35 = v191;
        }

        else
        {
          v35 = 16;
        }

        if (v18 != v193)
        {
          v34 = v33 != 16;
        }

        v200 = v34;
        v208 = a2 + v18 * v195;
        v209 = a3 + (v31 - v198) * a11;
        v36 = a7 >> 4;
        do
        {
          v37 = 16 * v36;
          v38 = v36 + 1;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v27)
          {
            v40 = v27;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v206 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          v43 = v199 + 1;
          if (v36 != v28)
          {
            v43 = 16;
          }

          v44 = 1;
          if (16 * v18 >= v30 && v37 >= a7)
          {
            v45 = v41 != v199;
            if (v36 != v28)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v200;
          }

          v46 = *(v21 + 128) >> (*(v21 + 144) + a12);
          if (v46 <= 1)
          {
            v46 = 1;
          }

          v47 = v46 + 15;
          if (v47 < 0x20)
          {
            v48 = 0;
          }

          else
          {
            v48 = 32 - __clz(~(-1 << -__clz((v47 >> 4) - 1)));
          }

          v49 = *(v21 + 132) >> (*(v21 + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
            if (!v48)
            {
LABEL_61:
              v57 = 0;
              goto LABEL_62;
            }
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
            if (!(v51 | v48))
            {
              goto LABEL_61;
            }
          }

          v52 = 0;
          v53 = 0;
          v54 = v48 != 0;
          v55 = v51 != 0;
          v56 = 1;
          do
          {
            --v48;
            if (v54)
            {
              v53 |= (v56 & v36) << v52++;
            }

            else
            {
              v48 = 0;
            }

            --v51;
            if (v55)
            {
              v53 |= (v56 & v18) << v52++;
            }

            else
            {
              v51 = 0;
            }

            v56 *= 2;
            --v52;
            v55 = v51 != 0;
            v54 = v48 != 0;
          }

          while (v51 | v48);
          v57 = 8 * v53;
LABEL_62:
          v58 = v36 << 8;
          v59 = (a4 + v57);
          v60 = v209 + v40 - v27;
          v61 = (v208 + v58);
          if (v26)
          {
            if (v44 & 1 | (v43 < 0x10u) | (v35 < 0x10u))
            {
              v62 = v61[13];
              v221[12] = v61[12];
              v221[13] = v62;
              v63 = v61[15];
              v221[14] = v61[14];
              v222 = v63;
              v64 = v61[9];
              v221[8] = v61[8];
              v221[9] = v64;
              v65 = v61[11];
              v221[10] = v61[10];
              v221[11] = v65;
              v66 = v61[5];
              v221[4] = v61[4];
              v221[5] = v66;
              v67 = v61[7];
              v221[6] = v61[6];
              v221[7] = v67;
              v68 = v61[1];
              v221[0] = *v61;
              v221[1] = v68;
              v16 = v61[2];
              v17 = v61[3];
              v69 = v221;
              v221[2] = v16;
              v221[3] = v17;
LABEL_66:
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = v21;
              v211 = v69;
              v219 = v43;
              v220 = v35;
              v215 = v202;
              v216 = v40 - v37;
              v212 = (a4 + v57);
              v213 = v209 + v40 - v27;
              v214 = a11;
              v217 = v201;
              v218 = v42;
              if (v44)
              {
                dispatch_sync(*(*(v21 + 8) + 16552), block);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
                goto LABEL_68;
              }

              v93 = *v59;
              if (v93 == 96)
              {
                *&v16 = vdup_lane_s8(*v69, 0);
                v223 = v16;
                v225 = v16;
                v227 = v16;
                v229 = v16;
                v94 = 1;
              }

              else if (v93 == 31)
              {
                v95 = v69[1];
                v96 = v69[2];
                v97 = v69[3];
                v98 = vuzp2_s16(*v69, v96);
                v223 = vuzp1_s16(*v69, v96);
                v225 = v98;
                *&v16 = vuzp1_s16(v95, v97);
                *&v17 = vuzp2_s16(v95, v97);
                v227 = v16;
                v229 = v17;
                v94 = 32;
              }

              else if (*v59)
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v223, 16, v69, v93, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v94 = 0;
                v223 = 0;
                v225 = 0;
                v227 = 0;
                v229 = 0;
              }

              v99 = (v69 + v94);
              v100 = v59[1];
              if (v100 == 96)
              {
                *&v16 = vdup_lane_s8(*v99, 0);
                v224 = v16;
                v226 = v16;
                v228 = v16;
                v230 = v16;
                v101 = 1;
              }

              else if (v100 == 31)
              {
                v102 = v99[1];
                v103 = v99[2];
                v104 = v99[3];
                v105 = vuzp2_s16(*v99, v103);
                v224 = vuzp1_s16(*v99, v103);
                v226 = v105;
                *&v16 = vuzp1_s16(v102, v104);
                *&v17 = vuzp2_s16(v102, v104);
                v228 = v16;
                v230 = v17;
                v101 = 32;
              }

              else if (v59[1])
              {
                v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 16, v99, v100, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v101 = 0;
                v224 = 0;
                v226 = 0;
                v228 = 0;
                v230 = 0;
              }

              v106 = (v99 + v101);
              v107 = v59[2];
              if (v107 == 96)
              {
                *&v16 = vdup_lane_s8(*v106, 0);
                v231 = v16;
                v233 = v16;
                v235 = v16;
                v237 = v16;
                v108 = 1;
              }

              else if (v107 == 31)
              {
                v109 = v106[1];
                v110 = v106[2];
                v111 = v106[3];
                v112 = vuzp2_s16(*v106, v110);
                v231 = vuzp1_s16(*v106, v110);
                v233 = v112;
                *&v16 = vuzp1_s16(v109, v111);
                *&v17 = vuzp2_s16(v109, v111);
                v235 = v16;
                v237 = v17;
                v108 = 32;
              }

              else if (v59[2])
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 16, v106, v107, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v108 = 0;
                v231 = 0;
                v233 = 0;
                v235 = 0;
                v237 = 0;
              }

              v113 = (v106 + v108);
              v114 = v59[3];
              if (v114 == 96)
              {
                *&v16 = vdup_lane_s8(*v113, 0);
                v232 = v16;
                v234 = v16;
                v236 = v16;
                v238 = v16;
                v115 = 1;
              }

              else if (v114 == 31)
              {
                v116 = v113[1];
                v117 = v113[2];
                v118 = v113[3];
                v119 = vuzp2_s16(*v113, v117);
                v232 = vuzp1_s16(*v113, v117);
                v234 = v119;
                *&v16 = vuzp1_s16(v116, v118);
                *&v17 = vuzp2_s16(v116, v118);
                v236 = v16;
                v238 = v17;
                v115 = 32;
              }

              else if (v59[3])
              {
                v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 16, v113, v114, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v115 = 0;
                v232 = 0;
                v234 = 0;
                v236 = 0;
                v238 = 0;
              }

              v120 = (v113 + v115);
              v121 = v59[4];
              if (v121 == 96)
              {
                *&v16 = vdup_lane_s8(*v120, 0);
                v239 = v16;
                v241 = v16;
                v243 = v16;
                v245 = v16;
                v122 = 1;
              }

              else if (v121 == 31)
              {
                v123 = v120[1];
                v124 = v120[2];
                v125 = v120[3];
                v126 = vuzp2_s16(*v120, v124);
                v239 = vuzp1_s16(*v120, v124);
                v241 = v126;
                *&v16 = vuzp1_s16(v123, v125);
                *&v17 = vuzp2_s16(v123, v125);
                v243 = v16;
                v245 = v17;
                v122 = 32;
              }

              else if (v59[4])
              {
                v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 16, v120, v121, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v122 = 0;
                v239 = 0;
                v241 = 0;
                v243 = 0;
                v245 = 0;
              }

              v127 = (v120 + v122);
              v128 = v59[5];
              if (v128 == 96)
              {
                *&v16 = vdup_lane_s8(*v127, 0);
                v240 = v16;
                v242 = v16;
                v244 = v16;
                v246 = v16;
                v129 = 1;
              }

              else if (v128 == 31)
              {
                v130 = v127[1];
                v131 = v127[2];
                v132 = v127[3];
                v133 = vuzp2_s16(*v127, v131);
                v240 = vuzp1_s16(*v127, v131);
                v242 = v133;
                *&v16 = vuzp1_s16(v130, v132);
                *&v17 = vuzp2_s16(v130, v132);
                v244 = v16;
                v246 = v17;
                v129 = 32;
              }

              else if (v59[5])
              {
                v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 16, v127, v128, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v129 = 0;
                v240 = 0;
                v242 = 0;
                v244 = 0;
                v246 = 0;
              }

              v134 = (v127 + v129);
              v135 = v59[6];
              if (v135 == 96)
              {
                *&v16 = vdup_lane_s8(*v134, 0);
                v247 = v16;
                v249 = v16;
                v251 = v16;
                v253 = v16;
                v136 = 1;
              }

              else if (v135 == 31)
              {
                v137 = v134[1];
                v138 = v134[2];
                v139 = v134[3];
                v140 = vuzp2_s16(*v134, v138);
                v247 = vuzp1_s16(*v134, v138);
                v249 = v140;
                *&v16 = vuzp1_s16(v137, v139);
                *&v17 = vuzp2_s16(v137, v139);
                v251 = v16;
                v253 = v17;
                v136 = 32;
              }

              else if (v59[6])
              {
                v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 16, v134, v135, *&v16, *&v17);
                v28 = v203;
                v26 = v204;
                v21 = a1;
                v27 = a7;
              }

              else
              {
                v136 = 0;
                v247 = 0;
                v249 = 0;
                v251 = 0;
                v253 = 0;
              }

              v141 = (v134 + v136);
              v142 = v59[7];
              if (v142 == 96)
              {
                *&v16 = vdup_lane_s8(*v141, 0);
                v248 = v16;
                v250 = v16;
                v252 = v16;
                v254 = v16;
                v30 = v198;
                v143 = v217;
                if (v217)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v30 = v198;
                if (v142 == 31)
                {
                  v144 = v141[1];
                  v145 = v141[2];
                  v146 = v141[3];
                  v147 = vuzp2_s16(*v141, v145);
                  v248 = vuzp1_s16(*v141, v145);
                  v250 = v147;
                  *&v16 = vuzp1_s16(v144, v146);
                  *&v17 = vuzp2_s16(v144, v146);
                  v252 = v16;
                  v254 = v17;
                  v143 = v217;
                  if (v217)
                  {
                    goto LABEL_138;
                  }
                }

                else
                {
                  if (v59[7])
                  {
                    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 16, v141, v142, *&v16, *&v17);
                    v28 = v203;
                    v26 = v204;
                    v21 = a1;
                    v27 = a7;
                    v143 = v217;
                    if (!v217)
                    {
                      goto LABEL_172;
                    }
                  }

                  else
                  {
                    v248 = 0;
                    v250 = 0;
                    v252 = 0;
                    v254 = 0;
                    v143 = v217;
                    if (!v217)
                    {
                      goto LABEL_172;
                    }
                  }

LABEL_138:
                  v148 = v218;
                  if (!v218)
                  {
                    goto LABEL_172;
                  }

                  v149 = 16 * v215;
                  v151 = v213;
                  v150 = v214;
                  if (v218 <= 7)
                  {
                    v152 = &v223 + v149 + v216 + 3;
                    v153 = (v213 + 3);
                    do
                    {
                      *(v152 - 3) = *(v153 - 3);
                      if (v148 != 1)
                      {
                        *(v152 - 2) = *(v153 - 2);
                        if (v148 != 2)
                        {
                          *(v152 - 1) = *(v153 - 1);
                          if (v148 != 3)
                          {
                            *v152 = *v153;
                            if (v148 != 4)
                            {
                              v152[1] = v153[1];
                              if (v148 != 5)
                              {
                                v152[2] = v153[2];
                                if (v148 != 6)
                                {
                                  v152[3] = v153[3];
                                }
                              }
                            }
                          }
                        }
                      }

                      v152 += 16;
                      v153 += v150;
                      --v143;
                    }

                    while (v143);
                    goto LABEL_172;
                  }

                  v154 = &v223 + v216 + v149;
                  v155 = v218 - 1;
                  v156 = v213 >= &v222 + 16 * v143 + 16 * v215 + v216 + v155 + 1 || v154 >= v213 + v214 * (v143 - 1) + v155 + 1;
                  if (v156 && (v214 & 0x8000000000000000) == 0)
                  {
                    v157 = 0;
                    v158 = &v225 + v149 + v216;
                    v159 = (v213 + 16);
                    while (v148 >= 0x20)
                    {
                      v161 = v159;
                      v162 = v158;
                      v163 = v148 & 0xFFFFFFE0;
                      do
                      {
                        v16 = *(v161 - 1);
                        v17 = *v161;
                        *(v162 - 1) = v16;
                        *v162 = v17;
                        v162 += 2;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if ((v148 & 0xFFFFFFE0) == v148)
                      {
                        goto LABEL_156;
                      }

                      v160 = v148 & 0xFFFFFFE0;
                      v164 = v160;
                      if ((v148 & 0x18) != 0)
                      {
                        goto LABEL_163;
                      }

                      do
                      {
LABEL_166:
                        v154[v164] = *(v151 + v164);
                        ++v164;
                      }

                      while (v148 != v164);
LABEL_156:
                      ++v157;
                      v158 += 16;
                      v159 = (v159 + v150);
                      v151 += v150;
                      v154 += 16;
                      if (v157 == v143)
                      {
                        goto LABEL_172;
                      }
                    }

                    v160 = 0;
LABEL_163:
                    v165 = v160 - (v148 & 0xFFFFFFF8);
                    v166 = (v151 + v160);
                    v167 = &v154[v160];
                    do
                    {
                      v168 = *v166++;
                      *&v16 = v168;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    v164 = v148 & 0xFFFFFFF8;
                    if (v164 == v148)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_166;
                  }

                  v169 = 0;
                  do
                  {
                    v170 = (v151 + v169 * v150);
                    v171 = &v154[16 * v169];
                    v172 = v148;
                    do
                    {
                      v173 = *v170++;
                      *v171++ = v173;
                      --v172;
                    }

                    while (v172);
                    ++v169;
                  }

                  while (v169 != v143);
                }
              }

LABEL_172:
              v174 = v211;
              v175 = v212;
              v176 = v219;
              v177 = &byte_29D2F30C1;
              v178 = 16;
              v179 = v220;
              do
              {
                v187 = *v177;
                v188 = *(v177 - 1);
                if (v176 <= 8 * v188 || 4 * v187 >= v179)
                {
                  v186 = 0;
                }

                else
                {
                  v180 = &v223 + 8 * v187 + v188;
                  v181 = v180[2];
                  v182 = vzip1_s16(*v180, v181);
                  *&v16 = vzip2_s16(*v180, v181);
                  v183 = v180[4];
                  v184 = v180[6];
                  v185 = vzip1_s16(v183, v184);
                  *&v17 = vzip2_s16(v183, v184);
                  *v174 = v182;
                  v174[1] = v185;
                  v174[2] = v16;
                  v174[3] = v17;
                  v174 += 4;
                  v186 = 31;
                }

                *v175++ = v186;
                v177 += 2;
                v178 -= 2;
              }

              while (v178);
              goto LABEL_68;
            }

            v69 = v221;
          }

          else
          {
            v69 = (v208 + v58);
            if (v44 & 1 | (v43 < 0x10u) | (v35 < 0x10u))
            {
              goto LABEL_66;
            }
          }

          v80 = &byte_29D2F30C1;
          v81 = 16;
          v82 = v69;
          do
          {
            v90 = *v80;
            v91 = *(v80 - 1);
            if (v43 <= 8 * v91 || 4 * v90 >= v35)
            {
              v89 = 0;
            }

            else
            {
              v83 = (v60 + 4 * a11 * v90 + 8 * v91);
              v84 = *(v83 + a11);
              v85 = vzip1_s16(*v83, v84);
              *&v16 = vzip2_s16(*v83, v84);
              v86 = (v83 + 2 * a11);
              v87 = *(v86 + a11);
              v88 = vzip1_s16(*v86, v87);
              *&v17 = vzip2_s16(*v86, v87);
              *v82 = v85;
              v82[1] = v88;
              v82[2] = v16;
              v82[3] = v17;
              v82 += 4;
              v89 = 31;
            }

            *v59++ = v89;
            v80 += 2;
            v81 -= 2;
          }

          while (v81);
LABEL_68:
          if (v26)
          {
            v70 = *v69->i8;
            v71 = *v69[2].i8;
            v72 = *v69[6].i8;
            v61[2] = *v69[4].i8;
            v61[3] = v72;
            *v61 = v70;
            v61[1] = v71;
            v73 = *v69[8].i8;
            v74 = *v69[10].i8;
            v75 = *v69[14].i8;
            v61[6] = *v69[12].i8;
            v61[7] = v75;
            v61[4] = v73;
            v61[5] = v74;
            v76 = *v69[16].i8;
            v77 = *v69[18].i8;
            v78 = *v69[22].i8;
            v61[10] = *v69[20].i8;
            v61[11] = v78;
            v61[8] = v76;
            v61[9] = v77;
            v16 = *v69[24].i8;
            v17 = *v69[26].i8;
            v79 = *v69[30].i8;
            v61[14] = *v69[28].i8;
            v61[15] = v79;
            v61[12] = v16;
            v61[13] = v17;
          }

          v36 = v38;
        }

        while (v38 != (v206 >> 4) + 1);
        ++v18;
      }

      while (v18 != v190);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
          v63 = (a2 + v25 * v145 + 192 * v39);
          if (v40)
          {
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              v71 = v172;
LABEL_68:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v158 + v44 - a7, a11, v71, v62, v47, v159, *(*(a1 + 208) + 52), *&v18, *&v19, *&v20, *&v21, v22, v23, v24);
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
            v71 = (a2 + v25 * v145 + 192 * v39);
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              goto LABEL_68;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v74 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v174, 16, v71, *v62, v72, *&v18, *&v19);
            v77 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v175, 16, v74, v62[1], v72, v75, v76);
            v80 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v176, 16, v77, v62[2], v72, v78, v79);
            v83 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v177, 16, v80, v62[3], v72, v81, v82);
            v86 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v178, 16, v83, v62[4], v72, v84, v85);
            v89 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v179, 16, v86, v62[5], v72, v87, v88);
            v92 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v180, 16, v89, v62[6], v72, v90, v91);
            a8 = v73;
            v93 = v72;
            v40 = v150;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v181, 16, v92, v62[7], v93, v94, v95);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v174, 16, v162, v163, v170, v171, *(*(a1 + 208) + 52), *&v96, *&v97, v98, v99, v100, v101, v102);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
          v63 = (a2 + v25 * v145 + 160 * v39);
          if (v40)
          {
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              v71 = v172;
LABEL_68:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v158 + v44 - a7, a11, v71, v62, v47, v159, *(*(a1 + 208) + 52), *&v18, *&v19, *&v20, *&v21, v22, v23, v24);
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
            v71 = (a2 + v25 * v145 + 160 * v39);
            if (!(v48 & 1 | (v47 < 0x10u) | (v157 < 0x10)))
            {
              goto LABEL_68;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v74 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v174, 16, v71, *v62, v72, *&v18, *&v19);
            v77 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v175, 16, v74, v62[1], v72, v75, v76);
            v80 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v176, 16, v77, v62[2], v72, v78, v79);
            v83 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v177, 16, v80, v62[3], v72, v81, v82);
            v86 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v178, 16, v83, v62[4], v72, v84, v85);
            v89 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v179, 16, v86, v62[5], v72, v87, v88);
            v92 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v180, 16, v89, v62[6], v72, v90, v91);
            a8 = v73;
            v93 = v72;
            v40 = v150;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v181, 16, v92, v62[7], v93, v94, v95);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v174, 16, v162, v163, v170, v171, *(*(a1 + 208) + 52), *&v96, *&v97, v98, v99, v100, v101, v102);
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