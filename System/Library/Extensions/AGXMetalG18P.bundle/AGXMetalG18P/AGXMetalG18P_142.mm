uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v184 = *MEMORY[0x29EDCA608];
  v146 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v161 = a8;
  v21 = a8 >> 4;
  v145 = a8 + a10 - 1;
  v22 = v145 >> 4;
  v164 = a1;
  if (*(a1 + 168))
  {
    v23 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 & 0xD00) == 0 || v23 == 768;
  v25 = v23 & 0xE00;
  v27 = !v24 && v25 != 1024;
  v158 = v27;
  result = a1;
  if (v21 <= v22)
  {
    v157 = a7 + a9 - 1;
    if (a7 >> 4 <= v157 >> 4)
    {
      v163 = (a5 - 1) >> 4;
      v144 = (a6 - 1) >> 4;
      v152 = (a5 - 1) & 0xF;
      v142 = ((a6 - 1) & 0xF) + 1;
      v143 = (a6 - 1) & 0xF;
      v151 = 4 * a11;
      v150 = 8 * a11;
      v149 = 12 * a11;
      v156 = a7;
      v140 = v22 + 1;
      v141 = a7 >> 4;
      do
      {
        v29 = (16 * v21) | 0xF;
        if (16 * v21 <= v161)
        {
          v30 = v161;
        }

        else
        {
          v30 = 16 * v21;
        }

        if (v145 < v29)
        {
          v29 = v145;
        }

        v155 = v30 - 16 * v21;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v143;
        v154 = v32;
        v34 = v32 != 16;
        v35 = v142;
        if (v21 != v144)
        {
          v35 = 16;
        }

        v162 = v35;
        if (v21 != v144)
        {
          v33 = v34;
        }

        v153 = v33;
        v160 = a2 + (v30 - v161) * a11;
        v36 = v141;
        do
        {
          v74 = 16 * v36;
          v75 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v76 = a7;
          }

          else
          {
            v76 = 16 * v36;
          }

          if (v157 < v75)
          {
            v75 = v157;
          }

          v77 = v75 - v76;
          v78 = v77 + 1;
          if (v36 == v163)
          {
            v79 = v152 + 1;
          }

          else
          {
            v79 = 16;
          }

          v80 = 1;
          if (16 * v21 >= v161 && v74 >= v156)
          {
            v81 = v77 != v152;
            if (v36 != v163)
            {
              v81 = v78 != 16;
            }

            v80 = v81 || v153;
          }

          v82 = *(result + 128) >> (*(result + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 15;
          if (v83 < 0x20)
          {
            v84 = 0;
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 4) - 1)));
          }

          v85 = *(result + 132) >> (*(result + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 15;
          if (v86 < 0x20)
          {
            v87 = 0;
            if (!v84)
            {
LABEL_63:
              v93 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 4) - 1)));
            if (!(v87 | v84))
            {
              goto LABEL_63;
            }
          }

          v88 = 0;
          v89 = 0;
          v90 = v84 != 0;
          v91 = v87 != 0;
          v92 = 1;
          do
          {
            --v84;
            if (v90)
            {
              v89 |= (v92 & v36) << v88++;
            }

            else
            {
              v84 = 0;
            }

            --v87;
            if (v91)
            {
              v89 |= (v92 & v21) << v88++;
            }

            else
            {
              v87 = 0;
            }

            v92 *= 2;
            --v88;
            v91 = v87 != 0;
            v90 = v84 != 0;
          }

          while (v87 | v84);
          v93 = 8 * v89;
LABEL_64:
          v94 = (a3 + v21 * v146 + 384 * v36);
          v165 = v36 + 1;
          if (v158)
          {
            memcpy(__dst, v94, sizeof(__dst));
            result = v164;
            v94 = __dst;
          }

          v95 = (a4 + v93);
          v96 = a7;
          v97 = (v160 + 2 * (v76 - a7));
          if (!(v80 & 1 | (v79 < 0x10u)) && v162 > 0xF)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v97, a11, v94, *v95, v37, v17, v18, v19, v20)];
            v43 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v97 + 1, a11, v38, v95[1], v37, v39, v40, v41, v42);
            v48 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v151), a11, v43, v95[2], v37, v44, v45, v46, v47);
            v53 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v151 + 16), a11, v48, v95[3], v37, v49, v50, v51, v52);
            v58 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v150), a11, v53, v95[4], v37, v54, v55, v56, v57);
            v63 = v58 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v150 + 16), a11, v58, v95[5], v37, v59, v60, v61, v62);
            v68 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v149), a11, v63, v95[6], v37, v64, v65, v66, v67);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v97 + v149 + 16), a11, v63 + v68, v95[7], v37, v69, v70, v71, v72);
LABEL_29:
            a7 = v96;
            v73 = v165;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v94;
          v173 = v79;
          v174 = v162;
          v169 = v155;
          v170 = v76 - v74;
          block[6] = v95;
          v167 = v97;
          v168 = a11;
          v171 = v154;
          v172 = v78;
          if (v80)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v98 = *(*(result + 208) + 52);
          v99 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v176, 32, v94, *v95, v98, v17, v18, v19, v20)];
          v104 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v177, 32, v99, v95[1], v98, v100, v101, v102, v103);
          v109 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v178, 32, v104, v95[2], v98, v105, v106, v107, v108);
          v114 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v179, 32, v109, v95[3], v98, v110, v111, v112, v113);
          v119 = v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v180, 32, v114, v95[4], v98, v115, v116, v117, v118);
          v124 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v181, 32, v119, v95[5], v98, v120, v121, v122, v123);
          v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v182, 32, v124, v95[6], v98, v125, v126, v127, v128);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v183, 32, v124 + v129, v95[7], v98, v130, v131, v132, v133);
          v134 = v171;
          a7 = v96;
          v73 = v165;
          if (v171)
          {
            v135 = 0;
            v136 = &v176.i8[32 * v169 + 2 * v170];
            v137 = v172;
            do
            {
              if (v137)
              {
                v138 = 0;
                v139 = &v167->i8[v168 * v135];
                do
                {
                  v139[v138] = v136[v138];
                  ++v138;
                  v137 = v172;
                }

                while (2 * v172 > v138);
                v134 = v171;
              }

              ++v135;
              v136 += 32;
            }

            while (v135 < v134);
          }

LABEL_30:
          v36 = v73;
          result = v164;
        }

        while (v73 != (v157 >> 4) + 1);
        ++v21;
      }

      while (v21 != v140);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v184 = *MEMORY[0x29EDCA608];
  v146 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v161 = a8;
  v21 = a8 >> 4;
  v145 = a8 + a10 - 1;
  v22 = v145 >> 4;
  v164 = a1;
  if (*(a1 + 168))
  {
    v23 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 & 0xD00) == 0 || v23 == 768;
  v25 = v23 & 0xE00;
  v27 = !v24 && v25 != 1024;
  v158 = v27;
  result = a1;
  if (v21 <= v22)
  {
    v157 = a7 + a9 - 1;
    if (a7 >> 4 <= v157 >> 4)
    {
      v163 = (a5 - 1) >> 4;
      v144 = (a6 - 1) >> 4;
      v152 = (a5 - 1) & 0xF;
      v142 = ((a6 - 1) & 0xF) + 1;
      v143 = (a6 - 1) & 0xF;
      v151 = 4 * a11;
      v150 = 8 * a11;
      v149 = 12 * a11;
      v156 = a7;
      v140 = v22 + 1;
      v141 = a7 >> 4;
      do
      {
        v29 = (16 * v21) | 0xF;
        if (16 * v21 <= v161)
        {
          v30 = v161;
        }

        else
        {
          v30 = 16 * v21;
        }

        if (v145 < v29)
        {
          v29 = v145;
        }

        v155 = v30 - 16 * v21;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v143;
        v154 = v32;
        v34 = v32 != 16;
        v35 = v142;
        if (v21 != v144)
        {
          v35 = 16;
        }

        v162 = v35;
        if (v21 != v144)
        {
          v33 = v34;
        }

        v153 = v33;
        v160 = a2 + (v30 - v161) * a11;
        v36 = v141;
        do
        {
          v74 = 16 * v36;
          v75 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v76 = a7;
          }

          else
          {
            v76 = 16 * v36;
          }

          if (v157 < v75)
          {
            v75 = v157;
          }

          v77 = v75 - v76;
          v78 = v77 + 1;
          if (v36 == v163)
          {
            v79 = v152 + 1;
          }

          else
          {
            v79 = 16;
          }

          v80 = 1;
          if (16 * v21 >= v161 && v74 >= v156)
          {
            v81 = v77 != v152;
            if (v36 != v163)
            {
              v81 = v78 != 16;
            }

            v80 = v81 || v153;
          }

          v82 = *(result + 128) >> (*(result + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 15;
          if (v83 < 0x20)
          {
            v84 = 0;
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 4) - 1)));
          }

          v85 = *(result + 132) >> (*(result + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 15;
          if (v86 < 0x20)
          {
            v87 = 0;
            if (!v84)
            {
LABEL_63:
              v93 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 4) - 1)));
            if (!(v87 | v84))
            {
              goto LABEL_63;
            }
          }

          v88 = 0;
          v89 = 0;
          v90 = v84 != 0;
          v91 = v87 != 0;
          v92 = 1;
          do
          {
            --v84;
            if (v90)
            {
              v89 |= (v92 & v36) << v88++;
            }

            else
            {
              v84 = 0;
            }

            --v87;
            if (v91)
            {
              v89 |= (v92 & v21) << v88++;
            }

            else
            {
              v87 = 0;
            }

            v92 *= 2;
            --v88;
            v91 = v87 != 0;
            v90 = v84 != 0;
          }

          while (v87 | v84);
          v93 = 8 * v89;
LABEL_64:
          v94 = (a3 + v21 * v146 + 320 * v36);
          v165 = v36 + 1;
          if (v158)
          {
            memcpy(__dst, v94, sizeof(__dst));
            result = v164;
            v94 = __dst;
          }

          v95 = (a4 + v93);
          v96 = a7;
          v97 = (v160 + 2 * (v76 - a7));
          if (!(v80 & 1 | (v79 < 0x10u)) && v162 > 0xF)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v97, a11, v94, *v95, v37, v17, v18, v19, v20)];
            v43 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v97 + 1, a11, v38, v95[1], v37, v39, v40, v41, v42);
            v48 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v151), a11, v43, v95[2], v37, v44, v45, v46, v47);
            v53 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v151 + 16), a11, v48, v95[3], v37, v49, v50, v51, v52);
            v58 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v150), a11, v53, v95[4], v37, v54, v55, v56, v57);
            v63 = v58 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v150 + 16), a11, v58, v95[5], v37, v59, v60, v61, v62);
            v68 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v149), a11, v63, v95[6], v37, v64, v65, v66, v67);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v97 + v149 + 16), a11, v63 + v68, v95[7], v37, v69, v70, v71, v72);
LABEL_29:
            a7 = v96;
            v73 = v165;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v94;
          v173 = v79;
          v174 = v162;
          v169 = v155;
          v170 = v76 - v74;
          block[6] = v95;
          v167 = v97;
          v168 = a11;
          v171 = v154;
          v172 = v78;
          if (v80)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v98 = *(*(result + 208) + 52);
          v99 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v176, 32, v94, *v95, v98, v17, v18, v19, v20)];
          v104 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v177, 32, v99, v95[1], v98, v100, v101, v102, v103);
          v109 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v178, 32, v104, v95[2], v98, v105, v106, v107, v108);
          v114 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v179, 32, v109, v95[3], v98, v110, v111, v112, v113);
          v119 = v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v180, 32, v114, v95[4], v98, v115, v116, v117, v118);
          v124 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v181, 32, v119, v95[5], v98, v120, v121, v122, v123);
          v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v182, 32, v124, v95[6], v98, v125, v126, v127, v128);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v183, 32, v124 + v129, v95[7], v98, v130, v131, v132, v133);
          v134 = v171;
          a7 = v96;
          v73 = v165;
          if (v171)
          {
            v135 = 0;
            v136 = &v176.i8[32 * v169 + 2 * v170];
            v137 = v172;
            do
            {
              if (v137)
              {
                v138 = 0;
                v139 = &v167->i8[v168 * v135];
                do
                {
                  v139[v138] = v136[v138];
                  ++v138;
                  v137 = v172;
                }

                while (2 * v172 > v138);
                v134 = v171;
              }

              ++v135;
              v136 += 32;
            }

            while (v135 < v134);
          }

LABEL_30:
          v36 = v73;
          result = v164;
        }

        while (v73 != (v157 >> 4) + 1);
        ++v21;
      }

      while (v21 != v140);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v184 = *MEMORY[0x29EDCA608];
  v146 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v161 = a8;
  v21 = a8 >> 4;
  v145 = a8 + a10 - 1;
  v22 = v145 >> 4;
  v164 = a1;
  if (*(a1 + 168))
  {
    v23 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 & 0xD00) == 0 || v23 == 768;
  v25 = v23 & 0xE00;
  v27 = !v24 && v25 != 1024;
  v158 = v27;
  result = a1;
  if (v21 <= v22)
  {
    v157 = a7 + a9 - 1;
    if (a7 >> 4 <= v157 >> 4)
    {
      v163 = (a5 - 1) >> 4;
      v144 = (a6 - 1) >> 4;
      v152 = (a5 - 1) & 0xF;
      v142 = ((a6 - 1) & 0xF) + 1;
      v143 = (a6 - 1) & 0xF;
      v151 = 4 * a11;
      v150 = 8 * a11;
      v149 = 12 * a11;
      v156 = a7;
      v140 = v22 + 1;
      v141 = a7 >> 4;
      do
      {
        v29 = (16 * v21) | 0xF;
        if (16 * v21 <= v161)
        {
          v30 = v161;
        }

        else
        {
          v30 = 16 * v21;
        }

        if (v145 < v29)
        {
          v29 = v145;
        }

        v155 = v30 - 16 * v21;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v143;
        v154 = v32;
        v34 = v32 != 16;
        v35 = v142;
        if (v21 != v144)
        {
          v35 = 16;
        }

        v162 = v35;
        if (v21 != v144)
        {
          v33 = v34;
        }

        v153 = v33;
        v160 = a2 + (v30 - v161) * a11;
        v36 = v141;
        do
        {
          v74 = 16 * v36;
          v75 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v76 = a7;
          }

          else
          {
            v76 = 16 * v36;
          }

          if (v157 < v75)
          {
            v75 = v157;
          }

          v77 = v75 - v76;
          v78 = v77 + 1;
          if (v36 == v163)
          {
            v79 = v152 + 1;
          }

          else
          {
            v79 = 16;
          }

          v80 = 1;
          if (16 * v21 >= v161 && v74 >= v156)
          {
            v81 = v77 != v152;
            if (v36 != v163)
            {
              v81 = v78 != 16;
            }

            v80 = v81 || v153;
          }

          v82 = *(result + 128) >> (*(result + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 15;
          if (v83 < 0x20)
          {
            v84 = 0;
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 4) - 1)));
          }

          v85 = *(result + 132) >> (*(result + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 15;
          if (v86 < 0x20)
          {
            v87 = 0;
            if (!v84)
            {
LABEL_63:
              v93 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 4) - 1)));
            if (!(v87 | v84))
            {
              goto LABEL_63;
            }
          }

          v88 = 0;
          v89 = 0;
          v90 = v84 != 0;
          v91 = v87 != 0;
          v92 = 1;
          do
          {
            --v84;
            if (v90)
            {
              v89 |= (v92 & v36) << v88++;
            }

            else
            {
              v84 = 0;
            }

            --v87;
            if (v91)
            {
              v89 |= (v92 & v21) << v88++;
            }

            else
            {
              v87 = 0;
            }

            v92 *= 2;
            --v88;
            v91 = v87 != 0;
            v90 = v84 != 0;
          }

          while (v87 | v84);
          v93 = 8 * v89;
LABEL_64:
          v94 = (a3 + v21 * v146 + (v36 << 8));
          v165 = v36 + 1;
          if (v158)
          {
            memcpy(__dst, v94, sizeof(__dst));
            result = v164;
            v94 = __dst;
          }

          v95 = (a4 + v93);
          v96 = a7;
          v97 = (v160 + 2 * (v76 - a7));
          if (!(v80 & 1 | (v79 < 0x10u)) && v162 > 0xF)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v97, a11, v94, *v95, v37, v17, v18, v19, v20)];
            v43 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v97 + 1, a11, v38, v95[1], v37, v39, v40, v41, v42);
            v48 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v151), a11, v43, v95[2], v37, v44, v45, v46, v47);
            v53 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v151 + 16), a11, v48, v95[3], v37, v49, v50, v51, v52);
            v58 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v150), a11, v53, v95[4], v37, v54, v55, v56, v57);
            v63 = v58 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v150 + 16), a11, v58, v95[5], v37, v59, v60, v61, v62);
            v68 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v149), a11, v63, v95[6], v37, v64, v65, v66, v67);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v97 + v149 + 16), a11, v63 + v68, v95[7], v37, v69, v70, v71, v72);
LABEL_29:
            a7 = v96;
            v73 = v165;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v94;
          v173 = v79;
          v174 = v162;
          v169 = v155;
          v170 = v76 - v74;
          block[6] = v95;
          v167 = v97;
          v168 = a11;
          v171 = v154;
          v172 = v78;
          if (v80)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v98 = *(*(result + 208) + 52);
          v99 = &v94[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v176, 32, v94, *v95, v98, v17, v18, v19, v20)];
          v104 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v177, 32, v99, v95[1], v98, v100, v101, v102, v103);
          v109 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v178, 32, v104, v95[2], v98, v105, v106, v107, v108);
          v114 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v179, 32, v109, v95[3], v98, v110, v111, v112, v113);
          v119 = v114 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v180, 32, v114, v95[4], v98, v115, v116, v117, v118);
          v124 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v181, 32, v119, v95[5], v98, v120, v121, v122, v123);
          v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v182, 32, v124, v95[6], v98, v125, v126, v127, v128);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v183, 32, v124 + v129, v95[7], v98, v130, v131, v132, v133);
          v134 = v171;
          a7 = v96;
          v73 = v165;
          if (v171)
          {
            v135 = 0;
            v136 = &v176.i8[32 * v169 + 2 * v170];
            v137 = v172;
            do
            {
              if (v137)
              {
                v138 = 0;
                v139 = &v167->i8[v168 * v135];
                do
                {
                  v139[v138] = v136[v138];
                  ++v138;
                  v137 = v172;
                }

                while (2 * v172 > v138);
                v134 = v171;
              }

              ++v135;
              v136 += 32;
            }

            while (v135 < v134);
          }

LABEL_30:
          v36 = v73;
          result = v164;
        }

        while (v73 != (v157 >> 4) + 1);
        ++v21;
      }

      while (v21 != v140);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v106 = v15;
  v17 = v16;
  v19 = v18;
  v101 = v20;
  v90 = v21;
  v91 = v22;
  v23 = v12;
  v125 = *MEMORY[0x29EDCA608];
  v89 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v103 = v14;
  v24 = v14 >> 4;
  v88 = v14 + a10 - 1;
  v25 = v88 >> 4;
  if (*(v23 + 168))
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
  v100 = v30;
  if (v24 <= v25)
  {
    v99 = v106 + a9 - 1;
    if (v106 >> 4 <= v99 >> 4)
    {
      v105 = (v19 - 1) >> 4;
      v87 = (v17 - 1) >> 4;
      v94 = (v19 - 1) & 0xF;
      v85 = ((v17 - 1) & 0xF) + 1;
      v86 = (v17 - 1) & 0xF;
      v93 = 4 * a11;
      v92 = 8 * a11;
      v84 = v25 + 1;
      v98 = v23;
      do
      {
        v31 = (16 * v24) | 0xF;
        if (16 * v24 <= v103)
        {
          v32 = v103;
        }

        else
        {
          v32 = 16 * v24;
        }

        if (v88 < v31)
        {
          v31 = v88;
        }

        v97 = v32 - 16 * v24;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v86;
        v96 = v34;
        v36 = v34 != 16;
        v37 = v85;
        if (v24 != v87)
        {
          v37 = 16;
        }

        v104 = v37;
        if (v24 != v87)
        {
          v35 = v36;
        }

        v95 = v35;
        v102 = v90 + (v32 - v103) * a11;
        v38 = v106 >> 4;
        do
        {
          v47 = 16 * v38;
          v48 = v38 + 1;
          v49 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= v106)
          {
            v50 = v106;
          }

          else
          {
            v50 = 16 * v38;
          }

          if (v99 < v49)
          {
            v49 = v106 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v38 == v105)
          {
            v53 = v94 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (16 * v24 >= v103 && v47 >= v106)
          {
            v55 = v51 != v94;
            if (v38 != v105)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v95;
          }

          v56 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v59 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_62:
              v67 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_62;
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
              v63 |= (v66 & v24) << v62++;
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
LABEL_63:
          v68 = (v91 + v24 * v89 + (v38 << 11));
          if (v100)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (v101 + v67);
          v70 = (v102 + 8 * (v50 - v106));
          if (v54 & 1 | (v53 < 0x10u) || v104 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v98;
            block[5] = v68;
            v114 = v53;
            v115 = v104;
            v110 = v97;
            v111 = v50 - v47;
            block[6] = v69;
            v108 = v102 + 8 * (v50 - v106);
            v109 = a11;
            v112 = v96;
            v113 = v52;
            if (v54)
            {
              dispatch_sync(*(*(v98 + 8) + 16552), block);
              v23 = v98;
            }

            else
            {
              v71 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v117, 128, v68, *v69)];
              v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v118, 128, v71, v69[1]);
              v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v119, 128, v72, v69[2]);
              v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v120, 128, v73, v69[3]);
              v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v121, 128, v74, v69[4]);
              v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v122, 128, v75, v69[5]);
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v123, 128, v76, v69[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v124, 128, v76 + v77, v69[7]);
              v78 = v112;
              v23 = v98;
              if (v112)
              {
                v79 = 0;
                v80 = &v117[8 * v110].f64[v111];
                v81 = v113;
                do
                {
                  if (v81)
                  {
                    v82 = 0;
                    v83 = v108 + v109 * v79;
                    do
                    {
                      *(v83 + v82) = v80[v82];
                      ++v82;
                      v81 = v113;
                    }

                    while (8 * v113 > v82);
                    v78 = v112;
                  }

                  ++v79;
                  v80 += 128;
                }

                while (v79 < v78);
              }
            }
          }

          else
          {
            v39 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v102 + 8 * (v50 - v106)), a11, v68, *v69)];
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v70 + 4, a11, v39, v69[1]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93), a11, v40, v69[2]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93 + 64), a11, v41, v69[3]);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92), a11, v42, v69[4]);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92 + 64), a11, v43, v69[5]);
            v45 = (v70 + 12 * a11);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v45, a11, v44, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v44 + v46, v69[7]);
            v23 = v98;
          }

          v38 = v48;
        }

        while (v48 != (v99 >> 4) + 1);
        ++v24;
      }

      while (v24 != v84);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v106 = v15;
  v17 = v16;
  v19 = v18;
  v101 = v20;
  v90 = v21;
  v91 = v22;
  v23 = v12;
  v125 = *MEMORY[0x29EDCA608];
  v89 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v103 = v14;
  v24 = v14 >> 4;
  v88 = v14 + a10 - 1;
  v25 = v88 >> 4;
  if (*(v23 + 168))
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
  v100 = v30;
  if (v24 <= v25)
  {
    v99 = v106 + a9 - 1;
    if (v106 >> 4 <= v99 >> 4)
    {
      v105 = (v19 - 1) >> 4;
      v87 = (v17 - 1) >> 4;
      v94 = (v19 - 1) & 0xF;
      v85 = ((v17 - 1) & 0xF) + 1;
      v86 = (v17 - 1) & 0xF;
      v93 = 4 * a11;
      v92 = 8 * a11;
      v84 = v25 + 1;
      v98 = v23;
      do
      {
        v31 = (16 * v24) | 0xF;
        if (16 * v24 <= v103)
        {
          v32 = v103;
        }

        else
        {
          v32 = 16 * v24;
        }

        if (v88 < v31)
        {
          v31 = v88;
        }

        v97 = v32 - 16 * v24;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v86;
        v96 = v34;
        v36 = v34 != 16;
        v37 = v85;
        if (v24 != v87)
        {
          v37 = 16;
        }

        v104 = v37;
        if (v24 != v87)
        {
          v35 = v36;
        }

        v95 = v35;
        v102 = v90 + (v32 - v103) * a11;
        v38 = v106 >> 4;
        do
        {
          v47 = 16 * v38;
          v48 = v38 + 1;
          v49 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= v106)
          {
            v50 = v106;
          }

          else
          {
            v50 = 16 * v38;
          }

          if (v99 < v49)
          {
            v49 = v106 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v38 == v105)
          {
            v53 = v94 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (16 * v24 >= v103 && v47 >= v106)
          {
            v55 = v51 != v94;
            if (v38 != v105)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v95;
          }

          v56 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v59 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_62:
              v67 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_62;
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
              v63 |= (v66 & v24) << v62++;
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
LABEL_63:
          v68 = (v91 + v24 * v89 + (v38 << 11));
          if (v100)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (v101 + v67);
          v70 = (v102 + 8 * (v50 - v106));
          if (v54 & 1 | (v53 < 0x10u) || v104 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v98;
            block[5] = v68;
            v114 = v53;
            v115 = v104;
            v110 = v97;
            v111 = v50 - v47;
            block[6] = v69;
            v108 = v102 + 8 * (v50 - v106);
            v109 = a11;
            v112 = v96;
            v113 = v52;
            if (v54)
            {
              dispatch_sync(*(*(v98 + 8) + 16552), block);
              v23 = v98;
            }

            else
            {
              v71 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v117, 128, v68, *v69)];
              v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v118, 128, v71, v69[1]);
              v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v119, 128, v72, v69[2]);
              v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v120, 128, v73, v69[3]);
              v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v121, 128, v74, v69[4]);
              v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v122, 128, v75, v69[5]);
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v123, 128, v76, v69[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v124, 128, v76 + v77, v69[7]);
              v78 = v112;
              v23 = v98;
              if (v112)
              {
                v79 = 0;
                v80 = &v117[8 * v110].f64[v111];
                v81 = v113;
                do
                {
                  if (v81)
                  {
                    v82 = 0;
                    v83 = v108 + v109 * v79;
                    do
                    {
                      *(v83 + v82) = v80[v82];
                      ++v82;
                      v81 = v113;
                    }

                    while (8 * v113 > v82);
                    v78 = v112;
                  }

                  ++v79;
                  v80 += 128;
                }

                while (v79 < v78);
              }
            }
          }

          else
          {
            v39 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v102 + 8 * (v50 - v106)), a11, v68, *v69)];
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v70 + 4, a11, v39, v69[1]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93), a11, v40, v69[2]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93 + 64), a11, v41, v69[3]);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92), a11, v42, v69[4]);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92 + 64), a11, v43, v69[5]);
            v45 = (v70 + 12 * a11);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v45, a11, v44, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v44 + v46, v69[7]);
            v23 = v98;
          }

          v38 = v48;
        }

        while (v48 != (v99 >> 4) + 1);
        ++v24;
      }

      while (v24 != v84);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v131[56] = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

          v58 = *(result + 128) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
          }

          v61 = *(result + 132) >> (*(result + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 15;
          if (v62 < 0x20)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
          v69 = 8 * v65;
LABEL_64:
          v70 = (v96 + v25 * v94 + 1536 * v40);
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = v108 + 8 * (v52 - v16);
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + 64, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v99, a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v99 + 64, a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v98, a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v98 + 64, a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v97, a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v73 + v97 + 64, a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[128 * v117 + 8 * v118];
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  *(v87 + v86) = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v131[56] = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

          v58 = *(result + 128) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
          }

          v61 = *(result + 132) >> (*(result + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 15;
          if (v62 < 0x20)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
          v69 = 8 * v65;
LABEL_64:
          v70 = (v96 + v25 * v94 + 1280 * v40);
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = v108 + 8 * (v52 - v16);
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + 64, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v99, a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v99 + 64, a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v98, a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v98 + 64, a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v97, a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + v97 + 64, a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[128 * v117 + 8 * v118];
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  *(v87 + v86) = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v131[56] = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

          v58 = *(result + 128) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
          }

          v61 = *(result + 132) >> (*(result + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 15;
          if (v62 < 0x20)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
          v69 = 8 * v65;
LABEL_64:
          v70 = (v96 + v25 * v94 + (v40 << 10));
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = v108 + 8 * (v52 - v16);
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + 64, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v99, a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v99 + 64, a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v98, a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v98 + 64, a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v97, a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + v97 + 64, a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[128 * v117 + 8 * v118];
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  *(v87 + v86) = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
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
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
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
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + 768 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + 640 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + (v32 << 9));
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
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
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
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
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + 640 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + (v32 << 9));
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
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

          v53 = *(result + 132) >> (*(result + 144) + a12);
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
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
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
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
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
LABEL_64:
          v62 = (a3 + v17 * v86 + 384 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v143 = v15;
  v17 = v16;
  v19 = v18;
  v138 = v20;
  v139 = v21;
  v126 = v22;
  v23 = v12;
  v165 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v142 = v14;
  v24 = v14 >> 3;
  v125 = v14 + a10 - 1;
  v127 = v125 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v146 = v23;
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
  v137 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v136 = result;
  if (v24 <= v127)
  {
    v135 = v143 + a9 - 1;
    if (v143 >> 4 <= v135 >> 4)
    {
      result = v23;
      v33 = a11;
      v145 = (v19 - 1) >> 4;
      v122 = v19 - 1;
      v129 = (v19 - 1) & 0xF;
      v123 = (v17 - 1) & 7;
      v124 = (v17 - 1) >> 3;
      v128 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v134 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v133 = v35;
      v121 = 8 * v26 * v25;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v142)
        {
          v37 = v142;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v125 < v36)
        {
          v36 = v125;
        }

        v141 = 8 * v24;
        v132 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v123;
        v131 = v39;
        v41 = v39 != 8;
        v42 = v143 >> 4;
        v43 = v123 + 1;
        if (v24 != v124)
        {
          v43 = 8;
        }

        v144 = v43;
        if (v24 != v124)
        {
          v40 = v41;
        }

        v130 = v40;
        v140 = v126 + (v37 - v142) * v33;
        v44 = v143;
        do
        {
          v54 = 16 * v42;
          v55 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = 16 * v42;
          }

          if (v135 < v55)
          {
            v55 = v143 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v42 == v145)
          {
            v59 = v129 + 1;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (v141 >= v142 && v54 >= v44)
          {
            v61 = v57 != v129;
            if (v42 != v145)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v130;
          }

          if (v136)
          {
            v82 = 0;
            v83 = v121 >> (*(result + 57) != 0);
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
              v85 = 0;
              v86 = 16;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v85 = 0;
              v82 = 16;
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

            v109 = (v82 >> 4) - 1;
            if (v84)
            {
              v110 = 0;
            }

            else
            {
              v110 = 32 - __clz(~(-1 << -__clz(v109)));
            }

            v111 = (v86 >> 3) - 1;
            if (v85)
            {
              v112 = 0;
              if (v110)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v112 = 32 - __clz(~(-1 << -__clz(v111)));
              if (v112 | v110)
              {
LABEL_114:
                v113 = 0;
                v114 = 0;
                v115 = v42 & v109;
                v116 = v24 & v111;
                v117 = v112 != 0;
                v118 = v110 != 0;
                v119 = 1;
                do
                {
                  --v112;
                  if (v117)
                  {
                    v114 |= (v119 & v116) << v113++;
                  }

                  else
                  {
                    v112 = 0;
                  }

                  --v110;
                  if (v118)
                  {
                    v114 |= (v119 & v115) << v113++;
                  }

                  else
                  {
                    v110 = 0;
                  }

                  v119 *= 2;
                  --v113;
                  v118 = v110 != 0;
                  v117 = v112 != 0;
                }

                while (v110 | v112);
                v120 = v114 << 10;
                result = v146;
                goto LABEL_126;
              }
            }

            v120 = 0;
LABEL_126:
            v69 = v120 + ((v54 / v82 + v141 / v86 * ((v82 + v122) / v82)) << 14);
            goto LABEL_56;
          }

          if (v134)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v133.i8[0];
            v65 = v133.i8[4];
            v67 = v134.i32[0];
            v68 = v134.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v24) << v62++;
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

LABEL_56:
          v70 = *(result + 128) >> (*(result + 144) + a12);
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

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 7;
          if (v74 < 0x10)
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
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
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
              v77 |= (v80 & v42) << v76++;
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
          v87 = (v138 + v69);
          if (v137)
          {
            v88 = v58;
            v89 = v33;
            v90 = v59;
            v91 = v56;
            v92 = v60;
            memcpy(__dst, (v138 + v69), sizeof(__dst));
            v60 = v92;
            v56 = v91;
            v54 = 16 * v42;
            v59 = v90;
            v33 = v89;
            v58 = v88;
            result = v146;
            v87 = __dst;
          }

          v93 = (v139 + v81);
          v94 = (v140 + 16 * (v56 - v44));
          if (!(v60 & 1 | (v59 < 0x10u)) && v144 > 7)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v140 + 16 * (v56 - v44)), v33, v87, *v93, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v94 + 4, v33, v46, v93[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v94 + v128), v33, v47, v93[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v94 + v128 + 64), v33, v48, v93[3], v45);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v94 + 8, v33, v49, v93[4], v45);
            v51 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v94 + 12, v33, v50, v93[5], v45);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v94 + v128 + 128), v33, v51, v93[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v94 + v128 + 192), v33, v51 + v52, v93[7], v45);
LABEL_29:
            v44 = v143;
            v53 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v87;
          v154 = v59;
          v155 = v144;
          v150 = v132;
          v151 = v56 - v54;
          block[6] = v93;
          v148 = v140 + 16 * (v56 - v44);
          v149 = v33;
          v152 = v131;
          v153 = v58;
          if (v60)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v95 = *(*(result + 208) + 52);
          v96 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v157, 256, v87, *v93, v95)];
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v158, 256, v96, v93[1], v95);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v161, 256, v97, v93[2], v95);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v162, 256, v98, v93[3], v95);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v159, 256, v99, v93[4], v95);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v160, 256, v100, v93[5], v95);
          v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 256, v101, v93[6], v95);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v164, 256, v101 + v102, v93[7], v95);
          v103 = v152;
          v44 = v143;
          v53 = v42 + 1;
          if (v152)
          {
            v104 = 0;
            v105 = &v157[16 * v150 + v151];
            v106 = v153;
            do
            {
              if (v106)
              {
                v107 = 0;
                v108 = v148 + v149 * v104;
                do
                {
                  *(v108 + v107) = *(v105 + v107);
                  ++v107;
                  v106 = v153;
                }

                while (16 * v153 > v107);
                v103 = v152;
              }

              ++v104;
              v105 += 16;
            }

            while (v104 < v103);
          }

LABEL_30:
          v28 = v42 == v135 >> 4;
          v42 = v53;
          result = v146;
        }

        while (!v28);
        v28 = v24++ == v127;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v146 = v15;
  v17 = v16;
  v19 = v18;
  v141 = v20;
  v142 = v21;
  v128 = v22;
  v23 = v12;
  v168 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v24 = v14 >> 3;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v149 = v23;
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
  v140 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v139 = result;
  if (v24 <= v129)
  {
    v138 = v146 + a9 - 1;
    if (v146 >> 3 <= v138 >> 3)
    {
      result = v23;
      v33 = a11;
      v148 = (v19 - 1) >> 3;
      v124 = v19 - 1;
      v132 = (v19 - 1) & 7;
      v125 = (v17 - 1) & 7;
      v126 = (v17 - 1) >> 3;
      v130 = 4 * a11;
      v131 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v136 = v35;
      v123 = 8 * v26 * v25;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v145)
        {
          v37 = v145;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v127 < v36)
        {
          v36 = v127;
        }

        v144 = 8 * v24;
        v135 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v125;
        v134 = v39;
        v41 = v39 != 8;
        v42 = v146 >> 3;
        v43 = v125 + 1;
        if (v24 != v126)
        {
          v43 = 8;
        }

        v147 = v43;
        if (v24 != v126)
        {
          v40 = v41;
        }

        v133 = v40;
        v143 = v128 + (v37 - v145) * v33;
        v44 = v146;
        do
        {
          v56 = 8 * v42;
          v57 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v44)
          {
            v58 = v44;
          }

          else
          {
            v58 = 8 * v42;
          }

          if (v138 < v57)
          {
            v57 = v146 + a9 - 1;
          }

          v59 = v57 - v58;
          v60 = v59 + 1;
          if (v42 == v148)
          {
            v61 = v132 + 1;
          }

          else
          {
            v61 = 8;
          }

          v62 = 1;
          if (v144 >= v145 && v56 >= v44)
          {
            v63 = v59 != v132;
            if (v42 != v148)
            {
              v63 = v60 != 8;
            }

            v62 = v63 || v133;
          }

          if (v139)
          {
            v84 = 0;
            v85 = v123 >> (*(result + 57) != 0);
            v86 = 1;
            if (v85 <= 63)
            {
              if (v85 > 15)
              {
                if (v85 == 16)
                {
                  v86 = 0;
                  v87 = 0;
                  v88 = 64;
                  v84 = 128;
                }

                else
                {
                  v87 = 1;
                  v88 = 0;
                  if (v85 == 32)
                  {
                    v86 = 0;
                    v87 = 0;
                    v84 = 64;
                    v88 = 64;
                  }
                }
              }

              else if (v85 == 4)
              {
                v86 = 0;
                v87 = 0;
                v88 = 128;
                v84 = 256;
              }

              else
              {
                v87 = 1;
                v88 = 0;
                if (v85 == 8)
                {
                  v86 = 0;
                  v87 = 0;
                  v84 = 128;
                  v88 = 128;
                }
              }
            }

            else if (v85 <= 255)
            {
              if (v85 == 64)
              {
                v86 = 0;
                v87 = 0;
                v88 = 32;
                v84 = 64;
              }

              else
              {
                v87 = 1;
                v88 = 0;
                if (v85 == 128)
                {
                  v86 = 0;
                  v87 = 0;
                  v84 = 32;
                  v88 = 32;
                }
              }
            }

            else if (v85 == 256)
            {
              v86 = 0;
              v87 = 0;
              v88 = 16;
              v84 = 32;
            }

            else if (v85 == 512)
            {
              v86 = 0;
              v87 = 0;
              v84 = 16;
              v88 = 16;
            }

            else
            {
              v87 = 1;
              v88 = 0;
              if (v85 == 1024)
              {
                v86 = 0;
                v88 = 8;
                v84 = 16;
              }
            }

            v111 = (v84 >> 3) - 1;
            if (v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = 32 - __clz(~(-1 << -__clz(v111)));
            }

            v113 = (v88 >> 3) - 1;
            if (v87)
            {
              v114 = 0;
              if (v112)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v114 = 32 - __clz(~(-1 << -__clz(v113)));
              if (v114 | v112)
              {
LABEL_114:
                v115 = 0;
                v116 = 0;
                v117 = v42 & v111;
                v118 = v24 & v113;
                v119 = v112 != 0;
                v120 = v114 != 0;
                v121 = 1;
                do
                {
                  --v112;
                  if (v119)
                  {
                    v116 |= (v121 & v117) << v115++;
                  }

                  else
                  {
                    v112 = 0;
                  }

                  --v114;
                  if (v120)
                  {
                    v116 |= (v121 & v118) << v115++;
                  }

                  else
                  {
                    v114 = 0;
                  }

                  v121 *= 2;
                  --v115;
                  v120 = v114 != 0;
                  v119 = v112 != 0;
                }

                while (v114 | v112);
                v122 = v116 << 10;
                result = v149;
                goto LABEL_126;
              }
            }

            v122 = 0;
LABEL_126:
            v71 = v122 + ((v56 / v84 + v144 / v88 * ((v84 + v124) / v84)) << 14);
            goto LABEL_56;
          }

          if (v137)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v136.i8[0];
            v68 = v136.i8[4];
            v70 = v137.i32[0];
            v69 = v137.i32[1];
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v42) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v24) << v64++;
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
            v71 = v65 << 10;
          }

          else
          {
            v71 = 0;
          }

LABEL_56:
          v72 = *(result + 128) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          v75 = *(result + 132) >> (*(result + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 7;
          if (v76 < 0x10)
          {
            v77 = 0;
            if (!v74)
            {
LABEL_81:
              v83 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 3) - 1)));
            if (!(v77 | v74))
            {
              goto LABEL_81;
            }
          }

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
              v79 |= (v82 & v42) << v78++;
            }

            else
            {
              v74 = 0;
            }

            --v77;
            if (v81)
            {
              v79 |= (v82 & v24) << v78++;
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
LABEL_82:
          v89 = (v141 + v71);
          if (v140)
          {
            v90 = v60;
            v91 = v33;
            v92 = v61;
            v93 = v58;
            v94 = v62;
            memcpy(__dst, (v141 + v71), sizeof(__dst));
            v62 = v94;
            v58 = v93;
            v56 = 8 * v42;
            v61 = v92;
            v33 = v91;
            v60 = v90;
            result = v149;
            v89 = __dst;
          }

          v95 = (v142 + v83);
          v96 = (v143 + 32 * (v58 - v44));
          if (!(v62 & 1 | (v61 < 8u)) && v147 > 7)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v143 + 32 * (v58 - v44)), v33, v89, *v95, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v131), v33, v46, v95[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v96 + 8, v33, v47, v95[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v131 + 128), v33, v48, v95[3], v45);
            v50 = (v96 + v130);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v130), v33, v49, v95[4], v45);
            v52 = (v96 + 6 * a11);
            v53 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v52, v33, v51, v95[5], v45);
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v50 + 8, v33, v53, v95[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v52 + 8, v33, v53 + v54, v95[7], v45);
LABEL_29:
            v44 = v146;
            v55 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v89;
          v157 = v61;
          v158 = v147;
          v153 = v135;
          v154 = v58 - v56;
          block[6] = v95;
          v151 = v143 + 32 * (v58 - v44);
          v152 = v33;
          v155 = v134;
          v156 = v60;
          if (v62)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v97 = *(*(result + 208) + 52);
          v98 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v160, 256, v89, *v95, v97)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v162, 256, v98, v95[1], v97);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v161, 256, v99, v95[2], v97);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 256, v100, v95[3], v97);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v164, 256, v101, v95[4], v97);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v166, 256, v102, v95[5], v97);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v165, 256, v103, v95[6], v97);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v167, 256, v103 + v104, v95[7], v97);
          v105 = v155;
          v44 = v146;
          v55 = v42 + 1;
          if (v155)
          {
            v106 = 0;
            v107 = &v160[16 * v153 + 2 * v154];
            v108 = v156;
            do
            {
              if (v108)
              {
                v109 = 0;
                v110 = v151 + v152 * v106;
                do
                {
                  *(v110 + v109) = v107->i8[v109];
                  ++v109;
                  v108 = v156;
                }

                while (32 * v156 > v109);
                v105 = v155;
              }

              ++v106;
              v107 += 16;
            }

            while (v106 < v105);
          }

LABEL_30:
          v28 = v42 == v138 >> 3;
          v42 = v55;
          result = v149;
        }

        while (!v28);
        v28 = v24++ == v129;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v142 = v15;
  v17 = v16;
  v19 = v18;
  v137 = v20;
  v138 = v21;
  v125 = v22;
  v23 = v12;
  v164 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v141 = v14;
  v24 = v14 >> 2;
  v124 = v14 + a10 - 1;
  v126 = v124 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v145 = v23;
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
  v136 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v135 = result;
  if (v24 <= v126)
  {
    v134 = v142 + a9 - 1;
    if (v142 >> 3 <= v134 >> 3)
    {
      result = v23;
      v33 = a11;
      v144 = (v19 - 1) >> 3;
      v121 = v19 - 1;
      v128 = (v19 - 1) & 7;
      v122 = (v17 - 1) & 3;
      v123 = (v17 - 1) >> 2;
      v127 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v132 = v35;
      v120 = 8 * v26 * v25;
      do
      {
        v36 = (4 * v24) | 3;
        if (4 * v24 <= v141)
        {
          v37 = v141;
        }

        else
        {
          v37 = 4 * v24;
        }

        if (v124 < v36)
        {
          v36 = v124;
        }

        v140 = 4 * v24;
        v131 = v37 - 4 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v122;
        v130 = v39;
        v41 = v39 != 4;
        v42 = v142 >> 3;
        v43 = v122 + 1;
        if (v24 != v123)
        {
          v43 = 4;
        }

        v143 = v43;
        if (v24 != v123)
        {
          v40 = v41;
        }

        v129 = v40;
        v139 = v125 + (v37 - v141) * v33;
        v44 = v142;
        do
        {
          v54 = 8 * v42;
          v55 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = 8 * v42;
          }

          if (v134 < v55)
          {
            v55 = v142 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v42 == v144)
          {
            v59 = v128 + 1;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (v140 >= v141 && v54 >= v44)
          {
            v61 = v57 != v128;
            if (v42 != v144)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v129;
          }

          if (v135)
          {
            v82 = 0;
            v83 = v120 >> (*(result + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v82 = 64;
                    v85 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v82 = 128;
                  v85 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v82 = 32;
                  v85 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v85 = 16;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v84 = 0;
              v82 = 16;
              v85 = 16;
            }

            else
            {
              v85 = 0;
              if (v83 == 1024)
              {
                v84 = 0;
                v85 = 8;
                v82 = 16;
              }
            }

            v108 = (v82 >> 3) - 1;
            v109 = (v85 >> 2) - 1;
            if ((v84 & 1) != 0 || (v110 = 32 - __clz(~(-1 << -__clz(v108))), v111 = 32 - __clz(~(-1 << -__clz(v109))), !(v111 | v110)))
            {
              v119 = 0;
            }

            else
            {
              v112 = 0;
              v113 = 0;
              v114 = v42 & v108;
              v115 = v24 & v109;
              v116 = v111 != 0;
              v117 = v110 != 0;
              v118 = 1;
              do
              {
                --v111;
                if (v116)
                {
                  v113 |= (v118 & v115) << v112++;
                }

                else
                {
                  v111 = 0;
                }

                --v110;
                if (v117)
                {
                  v113 |= (v118 & v114) << v112++;
                }

                else
                {
                  v110 = 0;
                }

                v118 *= 2;
                --v112;
                v117 = v110 != 0;
                v116 = v111 != 0;
              }

              while (v110 | v111);
              v119 = v113 << 10;
              result = v145;
            }

            v69 = v119 + ((v54 / v82 + v140 / v85 * ((v82 + v121) / v82)) << 14);
          }

          else if (v133)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v132.i8[0];
            v65 = v132.i8[4];
            v67 = v133.i32[0];
            v68 = v133.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v24) << v62++;
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
            if (!v72)
            {
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
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
              v77 |= (v80 & v42) << v76++;
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
          v86 = (v137 + v69);
          if (v136)
          {
            v87 = v58;
            v88 = v33;
            v89 = v59;
            v90 = v56;
            v91 = v60;
            memcpy(__dst, (v137 + v69), sizeof(__dst));
            v60 = v91;
            v56 = v90;
            v54 = 8 * v42;
            v59 = v89;
            v33 = v88;
            v58 = v87;
            result = v145;
            v86 = __dst;
          }

          v92 = (v138 + v81);
          v93 = (v139 + ((v56 - v44) << 6));
          if (!(v60 & 1 | (v59 < 8u)) && v143 > 3)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v139 + ((v56 - v44) << 6)), v33, v86, *v92, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v93 + 8, v33, v46, v92[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v93 + v127), v33, v47, v92[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v93 + v127 + 128), v33, v48, v92[3], v45);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v93 + 16, v33, v49, v92[4], v45);
            v51 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v93 + 24, v33, v50, v92[5], v45);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v93 + v127 + 256), v33, v51, v92[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v93 + v127 + 384), v33, v51 + v52, v92[7], v45);
LABEL_29:
            v44 = v142;
            v53 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v86;
          v153 = v59;
          v154 = v143;
          v149 = v131;
          v150 = v56 - v54;
          block[6] = v92;
          v147 = v139 + ((v56 - v44) << 6);
          v148 = v33;
          v151 = v130;
          v152 = v58;
          if (v60)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v94 = *(*(result + 208) + 52);
          v95 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v156, 512, v86, *v92, v94)];
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v157, 512, v95, v92[1], v94);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v160, 512, v96, v92[2], v94);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v161, 512, v97, v92[3], v94);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v158, 512, v98, v92[4], v94);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v159, 512, v99, v92[5], v94);
          v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v162, 512, v100, v92[6], v94);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 512, v100 + v101, v92[7], v94);
          v102 = v151;
          v44 = v142;
          v53 = v42 + 1;
          if (v151)
          {
            v103 = 0;
            v104 = &v156[32 * v149 + 4 * v150];
            v105 = v152;
            do
            {
              if (v105)
              {
                v106 = 0;
                v107 = v147 + v148 * v103;
                do
                {
                  *(v107 + v106) = v104->i8[v106];
                  ++v106;
                  v105 = v152;
                }

                while (v152 << 6 > v106);
                v102 = v151;
              }

              ++v103;
              v104 += 32;
            }

            while (v103 < v102);
          }

LABEL_30:
          v28 = v42 == v134 >> 3;
          v42 = v53;
          result = v145;
        }

        while (!v28);
        v28 = v24++ == v126;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v260 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v214 = a8;
  v17 = a8 >> 3;
  v196 = a8 + a10 - 1;
  v198 = v196 >> 3;
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
  v209 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v198)
  {
    v207 = a7 + a9 - 1;
    if (a7 >> 4 <= v207 >> 4)
    {
      v216 = (a5 - 1) >> 4;
      v193 = a5 - 1;
      v200 = (a5 - 1) & 0xF;
      v194 = (a6 - 1) & 7;
      v195 = (a6 - 1) >> 3;
      v199 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v26 = vcgt_u32(v25, 0x1F0000000FLL);
      v27.val[0] = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v26);
      v205 = v27.val[0];
      v206 = v27.val[0].i32[0] | v27.val[0].i32[1];
      v204 = v26;
      v192 = 8 * v19 * v18;
      v217 = 2 * a11;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v214)
        {
          v29 = v214;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v196 < v28)
        {
          v28 = v196;
        }

        v213 = 8 * v17;
        v203 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v194;
        v202 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v194 + 1;
        if (v17 != v195)
        {
          v35 = 8;
        }

        v215 = v35;
        if (v17 != v195)
        {
          v32 = v33;
        }

        v201 = v32;
        v212 = a2 + (v29 - v214) * a11;
        do
        {
          v37 = 16 * v34;
          v38 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v34;
          }

          if (v207 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v34 == v216)
          {
            v42 = v200 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v213 >= v214 && v37 >= a7)
          {
            v44 = v40 != v200;
            if (v34 != v216)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v201;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v192 >> (*(a1 + 57) != 0);
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

            v180 = (v65 >> 4) - 1;
            if (v67)
            {
              v181 = 0;
            }

            else
            {
              v181 = 32 - __clz(~(-1 << -__clz(v180)));
            }

            v182 = (v69 >> 3) - 1;
            if (v68)
            {
              v183 = 0;
              if (v181)
              {
                goto LABEL_259;
              }
            }

            else
            {
              v183 = 32 - __clz(~(-1 << -__clz(v182)));
              if (v183 | v181)
              {
LABEL_259:
                v184 = 0;
                v185 = 0;
                v186 = v34 & v180;
                v187 = v17 & v182;
                v188 = v183 != 0;
                v189 = v181 != 0;
                v190 = 1;
                do
                {
                  --v183;
                  if (v188)
                  {
                    v185 |= (v190 & v187) << v184++;
                  }

                  else
                  {
                    v183 = 0;
                  }

                  --v181;
                  if (v189)
                  {
                    v185 |= (v190 & v186) << v184++;
                  }

                  else
                  {
                    v181 = 0;
                  }

                  v190 *= 2;
                  --v184;
                  v189 = v181 != 0;
                  v188 = v183 != 0;
                }

                while (v181 | v183);
                v191 = v185 << 7;
                goto LABEL_271;
              }
            }

            v191 = 0;
LABEL_271:
            v52 = v191 + ((v37 / v65 + v213 / v69 * ((v65 + v193) / v65)) << 14);
            goto LABEL_56;
          }

          if (v206)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v204;
            v48 = BYTE4(v204);
            v50 = v205.i32[0];
            v51 = v205.i32[1];
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
            v52 = v46 << 7;
          }

          else
          {
            v52 = 0;
          }

LABEL_56:
          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
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
LABEL_81:
              v64 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_81;
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
LABEL_82:
          v70 = (a3 + v52);
          if (v209)
          {
            v71 = v70[13];
            v227[12] = v70[12];
            v227[13] = v71;
            v72 = v70[15];
            v227[14] = v70[14];
            v227[15] = v72;
            v73 = v70[9];
            v227[8] = v70[8];
            v227[9] = v73;
            v74 = v70[11];
            v227[10] = v70[10];
            v227[11] = v74;
            v75 = v70[5];
            v227[4] = v70[4];
            v227[5] = v75;
            v76 = v70[7];
            v227[6] = v70[6];
            v227[7] = v76;
            v77 = v70[1];
            v227[0] = *v70;
            v227[1] = v77;
            v27 = v70[2];
            v26 = v70[3];
            v70 = v227;
            v227[2] = v27;
            v227[3] = v26;
          }

          v78 = (a4 + v64);
          v79 = (v212 + 2 * (v39 - a7));
          if (!(v43 & 1 | (v42 < 0x10u)) && v215 > 7)
          {
            v80 = *(a1 + 208);
            v81 = *(v80 + 52);
            v82 = *v78;
            if (*v78)
            {
              if (v82 < 0xF0)
              {
                if (v82 == 31)
                {
                  v88 = (v70 + 1);
                  v27 = vld2_f32(v88);
                  v89 = *v70;
                  v90 = *(v70 + 8);
                  *v79 = vzip1_s32(*v70, v90);
                  *(v79 + a11) = vzip2_s32(v89, v90);
                  v91 = (v79 + v217);
                  *v91 = v27.val[0];
                  *(v91 + a11) = v26;
                  v83 = 32;
                }

                else if (v82 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v70, 0);
                  *v79 = v27.val[0];
                  *(v79 + a11) = v27.val[0];
                  *(v79 + 2 * a11) = v27.val[0];
                  *(v79 + 3 * a11) = v27.val[0];
                  v83 = 1;
                }

                else
                {
                  v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v212 + 2 * (v39 - a7)), a11, v70, v82, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v212 + 2 * (v39 - a7)), a11, v70, v82, *(v80 + 52)).n64_u64[0];
                v83 = 16;
              }
            }

            else
            {
              v83 = 0;
              *v79 = 0;
              *(v79 + a11) = 0;
              *(v79 + 2 * a11) = 0;
              *(v79 + 3 * a11) = 0;
            }

            v92 = (v70 + v83);
            v93 = v79 + 1;
            v94 = v78[1];
            if (v78[1])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 31)
                {
                  v96 = &v92[2];
                  v27 = vld2_f32(v96);
                  v97 = *v92;
                  v98 = v92[1];
                  *v93 = vzip1_s32(*v92, v98);
                  *(v93 + a11) = vzip2_s32(v97, v98);
                  v99 = (v93 + v217);
                  *v99 = v27.val[0];
                  *(v99 + a11) = v26;
                  v95 = 32;
                }

                else if (v94 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v92, 0);
                  *v93 = v27.val[0];
                  *(v93 + a11) = v27.val[0];
                  *(v93 + 2 * a11) = v27.val[0];
                  *(v93 + 3 * a11) = v27.val[0];
                  v95 = 1;
                }

                else
                {
                  v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v93, a11, v92, v94, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v93, a11, v92, v94, v81).n64_u64[0];
                v95 = 16;
              }
            }

            else
            {
              v95 = 0;
              *v93 = 0;
              *(v93 + a11) = 0;
              *(v93 + 2 * a11) = 0;
              *(v93 + 3 * a11) = 0;
            }

            v100 = (v92 + v95);
            v101 = (v79 + v199);
            v102 = v78[2];
            if (v78[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 31)
                {
                  v104 = &v100[2];
                  v27 = vld2_f32(v104);
                  v105 = *v100;
                  v106 = v100[1];
                  *v101 = vzip1_s32(*v100, v106);
                  *(v101 + a11) = vzip2_s32(v105, v106);
                  v107 = (v101 + v217);
                  *v107 = v27.val[0];
                  *(v107 + a11) = v26;
                  v103 = 32;
                }

                else if (v102 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v100, 0);
                  *v101 = v27.val[0];
                  *(v101 + a11) = v27.val[0];
                  *(v101 + 2 * a11) = v27.val[0];
                  *(v101 + 3 * a11) = v27.val[0];
                  v103 = 1;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v199), a11, v100, v102, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v79 + v199), a11, v100, v102, v81).n64_u64[0];
                v103 = 16;
              }
            }

            else
            {
              v103 = 0;
              *v101 = 0;
              *(v101 + a11) = 0;
              *(v101 + 2 * a11) = 0;
              *(v101 + 3 * a11) = 0;
            }

            v108 = (v100 + v103);
            v109 = v101 + 1;
            v110 = v78[3];
            if (v78[3])
            {
              if (v110 < 0xF0)
              {
                if (v110 == 31)
                {
                  v112 = &v108[2];
                  v27 = vld2_f32(v112);
                  v113 = *v108;
                  v114 = v108[1];
                  *v109 = vzip1_s32(*v108, v114);
                  *(v109 + a11) = vzip2_s32(v113, v114);
                  v115 = (v109 + v217);
                  *v115 = v27.val[0];
                  *(v115 + a11) = v26;
                  v111 = 32;
                }

                else if (v110 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v108, 0);
                  *v109 = v27.val[0];
                  *(v109 + a11) = v27.val[0];
                  *(v109 + 2 * a11) = v27.val[0];
                  *(v109 + 3 * a11) = v27.val[0];
                  v111 = 1;
                }

                else
                {
                  v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v109, a11, v108, v110, v81).n64_u64[0];
                v111 = 16;
              }
            }

            else
            {
              v111 = 0;
              *v109 = 0;
              *(v109 + a11) = 0;
              *(v109 + 2 * a11) = 0;
              *(v109 + 3 * a11) = 0;
            }

            v116 = (v108 + v111);
            v117 = v79 + 2;
            v118 = v78[4];
            if (v78[4])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 31)
                {
                  v120 = &v116[2];
                  v27 = vld2_f32(v120);
                  v121 = *v116;
                  v122 = v116[1];
                  *v117 = vzip1_s32(*v116, v122);
                  *(v117 + a11) = vzip2_s32(v121, v122);
                  v123 = (v117 + v217);
                  *v123 = v27.val[0];
                  *(v123 + a11) = v26;
                  v119 = 32;
                }

                else if (v118 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v116, 0);
                  *v117 = v27.val[0];
                  *(v117 + a11) = v27.val[0];
                  *(v117 + 2 * a11) = v27.val[0];
                  *(v117 + 3 * a11) = v27.val[0];
                  v119 = 1;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v117, a11, v116, v118, v81).n64_u64[0];
                v119 = 16;
              }
            }

            else
            {
              v119 = 0;
              *v117 = 0;
              *(v117 + a11) = 0;
              *(v117 + 2 * a11) = 0;
              *(v117 + 3 * a11) = 0;
            }

            v124 = (v116 + v119);
            v125 = v79 + 3;
            v126 = v78[5];
            if (v78[5])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 31)
                {
                  v128 = &v124[2];
                  v27 = vld2_f32(v128);
                  v129 = *v124;
                  v130 = v124[1];
                  *v125 = vzip1_s32(*v124, v130);
                  *(v125 + a11) = vzip2_s32(v129, v130);
                  v131 = (v125 + v217);
                  *v131 = v27.val[0];
                  *(v131 + a11) = v26;
                  v127 = 32;
                }

                else if (v126 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v124, 0);
                  *v125 = v27.val[0];
                  *(v125 + a11) = v27.val[0];
                  *(v125 + 2 * a11) = v27.val[0];
                  *(v125 + 3 * a11) = v27.val[0];
                  v127 = 1;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, a11, v124, v126, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125, a11, v124, v126, v81).n64_u64[0];
                v127 = 16;
              }
            }

            else
            {
              v127 = 0;
              *v125 = 0;
              *(v125 + a11) = 0;
              *(v125 + 2 * a11) = 0;
              *(v125 + 3 * a11) = 0;
            }

            v132 = (v124 + v127);
            v133 = v101 + 2;
            v134 = v78[6];
            if (v78[6])
            {
              if (v134 < 0xF0)
              {
                if (v134 == 31)
                {
                  v136 = &v132[2];
                  v27 = vld2_f32(v136);
                  v137 = *v132;
                  v138 = v132[1];
                  *v133 = vzip1_s32(*v132, v138);
                  *(v133 + a11) = vzip2_s32(v137, v138);
                  v139 = (v133 + v217);
                  *v139 = v27.val[0];
                  *(v139 + a11) = v26;
                  v135 = 32;
                }

                else if (v134 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v132, 0);
                  *v133 = v27.val[0];
                  *(v133 + a11) = v27.val[0];
                  *(v133 + 2 * a11) = v27.val[0];
                  *(v133 + 3 * a11) = v27.val[0];
                  v135 = 1;
                }

                else
                {
                  v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v133, a11, v132, v134, v81).n64_u64[0];
                v135 = 16;
              }
            }

            else
            {
              v135 = 0;
              *v133 = 0;
              *(v133 + a11) = 0;
              *(v133 + 2 * a11) = 0;
              *(v133 + 3 * a11) = 0;
            }

            v140 = v101 + 3;
            v141 = v78[7];
            if (v78[7])
            {
              v142 = (v132 + v135);
              if (v141 < 0xF0)
              {
                if (v141 == 31)
                {
                  v143 = *v142;
                  *&v26 = v142[1];
                  v144 = &v142[2];
                  v261 = vld2_f32(v144);
                  *v140 = vzip1_s32(*v142, *&v26);
                  v27.val[0] = vzip2_s32(v143, *&v26);
                  *(v140 + a11) = v27.val[0];
                  v145 = (v140 + v217);
                  *v145 = v261.val[0];
                  *(v145 + a11) = v261.val[1];
                }

                else if (v141 == 96)
                {
                  v27.val[0] = vdup_lane_s8(*v142, 0);
                  *v140 = v27.val[0];
                  *(v140 + a11) = v27.val[0];
                  *(v140 + 2 * a11) = v27.val[0];
                  *(v140 + 3 * a11) = v27.val[0];
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v140, a11, v142, v141, *v27.val, *&v26);
                }
              }

              else
              {
                v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v140, a11, v142, v141, v81).n64_u64[0];
              }
            }

            else
            {
              *v140 = 0;
              *(v140 + a11) = 0;
              *(v140 + 2 * a11) = 0;
              *(v140 + 3 * a11) = 0;
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v70;
          v225 = v42;
          v226 = v215;
          v221 = v203;
          v222 = v39 - v37;
          block[6] = a4 + v64;
          v219 = v212 + 2 * (v39 - a7);
          v220 = a11;
          v223 = v202;
          v224 = v41;
          if (v43)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v84 = *(a1 + 208);
          v85 = *(v84 + 52);
          v86 = *v78;
          if (*v78)
          {
            if (v86 < 0xF0)
            {
              if (v86 == 31)
              {
                *&v26 = *(v70 + 1);
                v146 = (v70 + 1);
                v262 = vld2_f32(v146);
                v27.val[0] = vzip2_s32(*v70, *&v26);
                v228 = vzip1_s32(*v70, *&v26);
                v232 = v27.val[0];
                v236 = v262.val[0];
                v240 = v262.val[1];
                v87 = 32;
              }

              else if (v86 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v70, 0);
                v228 = v27.val[0];
                v232 = v27.val[0];
                v236 = v27.val[0];
                v240 = v27.val[0];
                v87 = 1;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v228, 32, v70, v86, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v228, 32, v70, v86, *(v84 + 52)).n64_u64[0];
              v87 = 16;
            }
          }

          else
          {
            v87 = 0;
            v228 = 0;
            v232 = 0;
            v236 = 0;
            v240 = 0;
          }

          v147 = (v70 + v87);
          v148 = v78[1];
          if (v78[1])
          {
            if (v148 < 0xF0)
            {
              if (v148 == 31)
              {
                *&v26 = v147[1];
                v150 = &v147[2];
                v263 = vld2_f32(v150);
                v27.val[0] = vzip2_s32(*v147, *&v26);
                v229 = vzip1_s32(*v147, *&v26);
                v233 = v27.val[0];
                v237 = v263.val[0];
                v241 = v263.val[1];
                v149 = 32;
              }

              else if (v148 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v147, 0);
                v229 = v27.val[0];
                v233 = v27.val[0];
                v237 = v27.val[0];
                v241 = v27.val[0];
                v149 = 1;
              }

              else
              {
                v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v229, 32, v147, v148, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v229, 32, v147, v148, v85).n64_u64[0];
              v149 = 16;
            }
          }

          else
          {
            v149 = 0;
            v229 = 0;
            v233 = 0;
            v237 = 0;
            v241 = 0;
          }

          v151 = (v147 + v149);
          v152 = v78[2];
          if (v78[2])
          {
            if (v152 < 0xF0)
            {
              if (v152 == 31)
              {
                *&v26 = v151[1];
                v154 = &v151[2];
                v264 = vld2_f32(v154);
                v27.val[0] = vzip2_s32(*v151, *&v26);
                v244 = vzip1_s32(*v151, *&v26);
                v248 = v27.val[0];
                v252 = v264.val[0];
                v256 = v264.val[1];
                v153 = 32;
              }

              else if (v152 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v151, 0);
                v244 = v27.val[0];
                v248 = v27.val[0];
                v252 = v27.val[0];
                v256 = v27.val[0];
                v153 = 1;
              }

              else
              {
                v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v244, 32, v151, v152, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v244, 32, v151, v152, v85).n64_u64[0];
              v153 = 16;
            }
          }

          else
          {
            v153 = 0;
            v244 = 0;
            v248 = 0;
            v252 = 0;
            v256 = 0;
          }

          v155 = (v151 + v153);
          v156 = v78[3];
          if (v78[3])
          {
            if (v156 < 0xF0)
            {
              if (v156 == 31)
              {
                *&v26 = v155[1];
                v158 = &v155[2];
                v265 = vld2_f32(v158);
                v27.val[0] = vzip2_s32(*v155, *&v26);
                v245 = vzip1_s32(*v155, *&v26);
                v249 = v27.val[0];
                v253 = v265.val[0];
                v257 = v265.val[1];
                v157 = 32;
              }

              else if (v156 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v155, 0);
                v245 = v27.val[0];
                v249 = v27.val[0];
                v253 = v27.val[0];
                v257 = v27.val[0];
                v157 = 1;
              }

              else
              {
                v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 32, v155, v156, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v245, 32, v155, v156, v85).n64_u64[0];
              v157 = 16;
            }
          }

          else
          {
            v157 = 0;
            v245 = 0;
            v249 = 0;
            v253 = 0;
            v257 = 0;
          }

          v159 = (v155 + v157);
          v160 = v78[4];
          if (v78[4])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 31)
              {
                *&v26 = v159[1];
                v162 = &v159[2];
                v266 = vld2_f32(v162);
                v27.val[0] = vzip2_s32(*v159, *&v26);
                v230 = vzip1_s32(*v159, *&v26);
                v234 = v27.val[0];
                v238 = v266.val[0];
                v242 = v266.val[1];
                v161 = 32;
              }

              else if (v160 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v159, 0);
                v230 = v27.val[0];
                v234 = v27.val[0];
                v238 = v27.val[0];
                v242 = v27.val[0];
                v161 = 1;
              }

              else
              {
                v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v230, 32, v159, v160, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v230, 32, v159, v160, v85).n64_u64[0];
              v161 = 16;
            }
          }

          else
          {
            v161 = 0;
            v230 = 0;
            v234 = 0;
            v238 = 0;
            v242 = 0;
          }

          v163 = (v159 + v161);
          v164 = v78[5];
          if (v78[5])
          {
            if (v164 < 0xF0)
            {
              if (v164 == 31)
              {
                *&v26 = v163[1];
                v166 = &v163[2];
                v267 = vld2_f32(v166);
                v27.val[0] = vzip2_s32(*v163, *&v26);
                v231 = vzip1_s32(*v163, *&v26);
                v235 = v27.val[0];
                v239 = v267.val[0];
                v243 = v267.val[1];
                v165 = 32;
              }

              else if (v164 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v163, 0);
                v231 = v27.val[0];
                v235 = v27.val[0];
                v239 = v27.val[0];
                v243 = v27.val[0];
                v165 = 1;
              }

              else
              {
                v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 32, v163, v164, *v27.val, *&v26);
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 32, v163, v164, v85).n64_u64[0];
              v165 = 16;
            }
          }

          else
          {
            v165 = 0;
            v231 = 0;
            v235 = 0;
            v239 = 0;
            v243 = 0;
          }

          v167 = (v163 + v165);
          v168 = v78[6];
          if (v78[6])
          {
            if (v168 < 0xF0)
            {
              if (v168 == 31)
              {
                *&v26 = v167[1];
                v171 = &v167[2];
                v268 = vld2_f32(v171);
                v27.val[0] = vzip2_s32(*v167, *&v26);
                v246 = vzip1_s32(*v167, *&v26);
                v250 = v27.val[0];
                v254 = v268.val[0];
                v258 = v268.val[1];
                v169 = 32;
                v170 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_231;
                }
              }

              else if (v168 == 96)
              {
                v27.val[0] = vdup_lane_s8(*v167, 0);
                v246 = v27.val[0];
                v250 = v27.val[0];
                v254 = v27.val[0];
                v258 = v27.val[0];
                v169 = 1;
                v170 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_231;
                }
              }

              else
              {
                v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 32, v167, v168, *v27.val, *&v26);
                v170 = v78[7];
                if (!v78[7])
                {
LABEL_231:
                  v247 = 0;
                  v251 = 0;
                  v255 = 0;
                  v259 = 0;
                  goto LABEL_233;
                }
              }
            }

            else
            {
              v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 32, v167, v168, v85).n64_u64[0];
              v169 = 16;
              v170 = v78[7];
              if (!v78[7])
              {
                goto LABEL_231;
              }
            }
          }

          else
          {
            v169 = 0;
            v246 = 0;
            v250 = 0;
            v254 = 0;
            v258 = 0;
            v170 = v78[7];
            if (!v78[7])
            {
              goto LABEL_231;
            }
          }

          v172 = (v167 + v169);
          if (v170 < 0xF0)
          {
            if (v170 == 31)
            {
              *&v26 = v172[1];
              v173 = &v172[2];
              v269 = vld2_f32(v173);
              v27.val[0] = vzip2_s32(*v172, *&v26);
              v247 = vzip1_s32(*v172, *&v26);
              v251 = v27.val[0];
              v255 = v269.val[0];
              v259 = v269.val[1];
            }

            else if (v170 == 96)
            {
              v27.val[0] = vdup_lane_s8(*v172, 0);
              v247 = v27.val[0];
              v251 = v27.val[0];
              v255 = v27.val[0];
              v259 = v27.val[0];
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v247, 32, v172, v170, *v27.val, *&v26);
            }
          }

          else
          {
            v27.val[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v247, 32, v172, v170, v85).n64_u64[0];
          }

LABEL_233:
          v36 = v34 + 1;
          v174 = v223;
          if (v223)
          {
            v175 = 0;
            v176 = &v228 + 32 * v221 + 2 * v222;
            v177 = v224;
            do
            {
              if (v177)
              {
                v178 = 0;
                v179 = v219 + v220 * v175;
                do
                {
                  *(v179 + v178) = v176[v178];
                  ++v178;
                  v177 = v224;
                }

                while (2 * v224 > v178);
                v174 = v223;
              }

              ++v175;
              v176 += 32;
            }

            while (v175 < v174);
          }

LABEL_30:
          v21 = v34 == v207 >> 4;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v198;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v156[52] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v117 = a8 + a10 - 1;
  v119 = v117 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v138 = a1;
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
  v129 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v128 = result;
  if (v16 <= v119)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      result = a1;
      v25 = a11;
      v137 = (a5 - 1) >> 4;
      v114 = a5 - 1;
      v121 = (a5 - 1) & 0xF;
      v115 = (a6 - 1) & 7;
      v116 = (a6 - 1) >> 3;
      v120 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v126 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v125 = v27;
      v113 = 8 * v18 * v17;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v29 = v134;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v117 < v28)
        {
          v28 = v117;
        }

        v133 = 8 * v16;
        v124 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v115;
        v123 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v115 + 1;
        if (v16 != v116)
        {
          v35 = 8;
        }

        v136 = v35;
        if (v16 != v116)
        {
          v32 = v33;
        }

        v122 = v32;
        v132 = a2 + (v29 - v134) * v25;
        v36 = a7;
        do
        {
          v46 = 16 * v34;
          v47 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v48 = v36;
          }

          else
          {
            v48 = 16 * v34;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v34 == v137)
          {
            v51 = v121 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v36)
          {
            v53 = v49 != v121;
            if (v34 != v137)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v122;
          }

          if (v128)
          {
            v74 = 0;
            v75 = v113 >> (*(result + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v77 = 0;
              v74 = 16;
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

            v101 = (v74 >> 4) - 1;
            if (v76)
            {
              v102 = 0;
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
            }

            v103 = (v78 >> 3) - 1;
            if (v77)
            {
              v104 = 0;
              if (v102)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v104 = 32 - __clz(~(-1 << -__clz(v103)));
              if (v104 | v102)
              {
LABEL_114:
                v105 = 0;
                v106 = 0;
                v107 = v34 & v101;
                v108 = v16 & v103;
                v109 = v104 != 0;
                v110 = v102 != 0;
                v111 = 1;
                do
                {
                  --v104;
                  if (v109)
                  {
                    v106 |= (v111 & v108) << v105++;
                  }

                  else
                  {
                    v104 = 0;
                  }

                  --v102;
                  if (v110)
                  {
                    v106 |= (v111 & v107) << v105++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v111 *= 2;
                  --v105;
                  v110 = v102 != 0;
                  v109 = v104 != 0;
                }

                while (v102 | v104);
                v112 = v106 << 9;
                result = v138;
                goto LABEL_126;
              }
            }

            v112 = 0;
LABEL_126:
            v61 = v112 + ((v46 / v74 + v133 / v78 * ((v74 + v114) / v74)) << 14);
            goto LABEL_56;
          }

          if (v126)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v125.i8[0];
            v57 = v125.i8[4];
            v59 = v126.i32[0];
            v60 = v126.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v16) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v34) << v54++;
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
            v61 = v55 << 9;
          }

          else
          {
            v61 = 0;
          }

LABEL_56:
          v62 = *(result + 128) >> (*(result + 144) + a12);
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

          v65 = *(result + 132) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_81:
              v73 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_81;
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
              v69 |= (v72 & v34) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v16) << v68++;
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
LABEL_82:
          v79 = (a3 + v61);
          if (v129)
          {
            v80 = v50;
            v81 = v25;
            v82 = v51;
            v83 = v48;
            v84 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v84;
            v48 = v83;
            v46 = 16 * v34;
            v51 = v82;
            v25 = v81;
            v50 = v80;
            result = v138;
            v79 = __dst;
          }

          v85 = (a4 + v73);
          v86 = v132 + 8 * (v48 - v36);
          if (!(v52 & 1 | (v51 < 0x10u)) && v136 > 7)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v132 + 8 * (v48 - v36), v25, v79, *v85, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 32, v25, v38, v85[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120, v25, v39, v85[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 32, v25, v40, v85[3], v37);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 64, v25, v41, v85[4], v37);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 96, v25, v42, v85[5], v37);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 64, v25, v43, v85[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 96, v25, v43 + v44, v85[7], v37);
LABEL_29:
            v36 = a7;
            v45 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v79;
          v146 = v51;
          v147 = v136;
          v142 = v124;
          v143 = v48 - v46;
          block[6] = v85;
          v140 = v132 + 8 * (v48 - v36);
          v141 = v25;
          v144 = v123;
          v145 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v87 = *(*(result + 208) + 52);
          v88 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v149, 128, v79, *v85, v87)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v150, 128, v88, v85[1], v87);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 128, v89, v85[2], v87);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 128, v90, v85[3], v87);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v151, 128, v91, v85[4], v87);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 128, v92, v85[5], v87);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 128, v93, v85[6], v87);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v156, 128, v93 + v94, v85[7], v87);
          v95 = v144;
          v36 = a7;
          v45 = v34 + 1;
          if (v144)
          {
            v96 = 0;
            v97 = &v149[128 * v142 + 8 * v143];
            v98 = v145;
            do
            {
              if (v98)
              {
                v99 = 0;
                v100 = v140 + v141 * v96;
                do
                {
                  *(v100 + v99) = v97[v99];
                  ++v99;
                  v98 = v145;
                }

                while (8 * v145 > v99);
                v95 = v144;
              }

              ++v96;
              v97 += 128;
            }

            while (v96 < v95);
          }

LABEL_30:
          v20 = v34 == v127 >> 4;
          v34 = v45;
          result = v138;
        }

        while (!v20);
        v20 = v16++ == v119;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v450 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v370 = a8;
  v16 = a8 >> 3;
  v352 = a8 + a10 - 1;
  v354 = v352 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v374 = a1;
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
  v365 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v364 = result;
  if (v16 <= v354)
  {
    v363 = a7 + a9 - 1;
    if (a7 >> 4 <= v363 >> 4)
    {
      result = a1;
      v25 = a11;
      v373 = (a5 - 1) >> 4;
      v349 = a5 - 1;
      v357 = (a5 - 1) & 0xF;
      v350 = (a6 - 1) & 7;
      v351 = (a6 - 1) >> 3;
      v356 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v362 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v361 = v27;
      v348 = 8 * v18 * v17;
      v375 = 3 * a11;
      v355 = 2 * a11;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v370)
        {
          v29 = v370;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v352 < v28)
        {
          v28 = v352;
        }

        v369 = 8 * v16;
        v360 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v350;
        v359 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v350 + 1;
        if (v16 != v351)
        {
          v35 = 8;
        }

        v372 = v35;
        if (v16 != v351)
        {
          v32 = v33;
        }

        v358 = v32;
        v368 = a2 + (v29 - v370) * v25;
        v36 = a7;
        do
        {
          v38 = 16 * v34;
          v39 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = 16 * v34;
          }

          if (v363 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v373)
          {
            v43 = v357 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v369 >= v370 && v38 >= v36)
          {
            v45 = v41 != v357;
            if (v34 != v373)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v358;
          }

          if (v364)
          {
            v66 = 0;
            v67 = v348 >> (*(result + 57) != 0);
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
              v69 = 0;
              v70 = 16;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v69 = 0;
              v66 = 16;
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

            v336 = (v66 >> 4) - 1;
            if (v68)
            {
              v337 = 0;
            }

            else
            {
              v337 = 32 - __clz(~(-1 << -__clz(v336)));
            }

            v338 = (v70 >> 3) - 1;
            if (v69)
            {
              v339 = 0;
              if (v337)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v339 = 32 - __clz(~(-1 << -__clz(v338)));
              if (v339 | v337)
              {
LABEL_261:
                v340 = 0;
                v341 = 0;
                v342 = v34 & v336;
                v343 = v16 & v338;
                v344 = v339 != 0;
                v345 = v337 != 0;
                v346 = 1;
                do
                {
                  --v339;
                  if (v344)
                  {
                    v341 |= (v346 & v343) << v340++;
                  }

                  else
                  {
                    v339 = 0;
                  }

                  --v337;
                  if (v345)
                  {
                    v341 |= (v346 & v342) << v340++;
                  }

                  else
                  {
                    v337 = 0;
                  }

                  v346 *= 2;
                  --v340;
                  v345 = v337 != 0;
                  v344 = v339 != 0;
                }

                while (v337 | v339);
                v347 = v341 << 9;
                result = v374;
                goto LABEL_273;
              }
            }

            v347 = 0;
LABEL_273:
            v53 = v347 + ((v38 / v66 + v369 / v70 * ((v66 + v349) / v66)) << 14);
            goto LABEL_56;
          }

          if (v362)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v361.i8[0];
            v50 = v361.i8[4];
            v51 = v362.i32[0];
            v52 = v362.i32[1];
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v34) << v46++;
              }

              else
              {
                v52 = 0;
              }

              v48 *= 2;
              --v46;
              v50 = v52 != 0;
              v49 = v51 != 0;
            }

            while (v52 | v51);
            v53 = v47 << 9;
          }

          else
          {
            v53 = 0;
          }

LABEL_56:
          v54 = *(result + 128) >> (*(result + 144) + a12);
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

          v57 = *(result + 132) >> (*(result + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_81:
              v65 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_81;
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
              v61 |= (v64 & v34) << v60++;
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
LABEL_82:
          v71 = (a3 + v53);
          if (v365)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v374;
            v71 = __dst;
          }

          v72 = (a4 + v65);
          v73 = v368 + 8 * (v40 - v36);
          if (!(v44 & 1 | (v43 < 0x10u)) && v372 > 7)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v72;
            if (*v72)
            {
              v25 = a11;
              v77 = 2 * a11;
              if (v76 < 0xF0)
              {
                if (v76 == 127)
                {
                  v91 = v71[1];
                  v92 = v71[2];
                  v93 = v71[3];
                  v94 = v71[5];
                  v95 = v71[6];
                  v96 = v71[7];
                  v97 = v71[4];
                  *v73 = *v71;
                  *(v73 + 16) = v92;
                  v98 = (v73 + v355);
                  v99 = (v73 + a11);
                  *v99 = v91;
                  v99[1] = v93;
                  *v98 = v97;
                  v98[1] = v95;
                  v100 = (v73 + v355 + a11);
                  *v100 = v94;
                  v100[1] = v96;
                  v78 = 128;
                }

                else if (v76 == 3)
                {
                  v86 = vld1q_dup_f32(v71->f32);
                  *v73 = v86;
                  *(v73 + 16) = v86;
                  v87 = (v73 + a11);
                  *v87 = v86;
                  v87[1] = v86;
                  v88 = (v73 + v355);
                  *v88 = v86;
                  v88[1] = v86;
                  v89 = (v73 + v375);
                  *v89 = v86;
                  v89[1] = v86;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v73, a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v73, a11, v71, v76, *(v74 + 52));
                v78 = 64;
              }
            }

            else
            {
              v78 = 0;
              *v73 = 0u;
              *(v73 + 16) = 0u;
              v25 = a11;
              v83 = (v73 + a11);
              *v83 = 0u;
              v83[1] = 0u;
              v77 = 2 * a11;
              v84 = (v73 + v355);
              *v84 = 0u;
              v84[1] = 0u;
              v85 = (v73 + v375);
              *v85 = 0u;
              v85[1] = 0u;
            }

            v101 = v71 + v78;
            v102 = (v73 + 32);
            v103 = v72[1];
            if (v72[1])
            {
              if (v103 < 0xF0)
              {
                if (v103 == 127)
                {
                  v112 = *(v101 + 16);
                  v113 = *(v101 + 32);
                  v114 = *(v101 + 48);
                  v115 = *(v101 + 80);
                  v116 = *(v101 + 96);
                  v117 = *(v101 + 112);
                  v118 = *(v101 + 64);
                  *v102 = *v101;
                  *(v73 + 48) = v113;
                  v119 = &v102->i8[v77];
                  v120 = &v102->i8[v25];
                  *v120 = v112;
                  *(v120 + 1) = v114;
                  *v119 = v118;
                  *(v119 + 1) = v116;
                  v121 = &v102->i8[v77 + v25];
                  *v121 = v115;
                  *(v121 + 1) = v117;
                  v104 = 128;
                }

                else if (v103 == 3)
                {
                  v108 = vld1q_dup_f32(v101);
                  *(v73 + 32) = v108;
                  *(v73 + 48) = v108;
                  v109 = &v102->i8[v25];
                  *v109 = v108;
                  v109[1] = v108;
                  v110 = &v102->i8[v77];
                  *v110 = v108;
                  v110[1] = v108;
                  v111 = &v102->i8[v375];
                  *v111 = v108;
                  v111[1] = v108;
                  v104 = 4;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v102, v25, v101, v103);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v102->i32, v25, v101, v103, v75);
                v104 = 64;
              }
            }

            else
            {
              v104 = 0;
              *v102 = 0u;
              *(v73 + 48) = 0u;
              v105 = &v102->i8[v25];
              *v105 = 0u;
              *(v105 + 1) = 0u;
              v106 = &v102->i8[v77];
              *v106 = 0u;
              *(v106 + 1) = 0u;
              v107 = &v102->i8[v375];
              *v107 = 0u;
              *(v107 + 1) = 0u;
            }

            v122 = v101 + v104;
            v123 = (v73 + v356);
            v124 = v72[2];
            if (v72[2])
            {
              if (v124 < 0xF0)
              {
                if (v124 == 127)
                {
                  v133 = *(v122 + 16);
                  v134 = *(v122 + 32);
                  v135 = *(v122 + 48);
                  v136 = *(v122 + 80);
                  v137 = *(v122 + 96);
                  v138 = *(v122 + 112);
                  v139 = *(v122 + 64);
                  *v123 = *v122;
                  v123[1] = v134;
                  v140 = (v123->f32 + v77);
                  v141 = (v123->f32 + v25);
                  *v141 = v133;
                  v141[1] = v135;
                  *v140 = v139;
                  v140[1] = v137;
                  v142 = (v123->f32 + v77 + v25);
                  *v142 = v136;
                  v142[1] = v138;
                  v125 = 128;
                }

                else if (v124 == 3)
                {
                  v129 = vld1q_dup_f32(v122);
                  *v123 = v129;
                  v123[1] = v129;
                  v130 = (v123 + v25);
                  *v130 = v129;
                  v130[1] = v129;
                  v131 = (v123 + v77);
                  *v131 = v129;
                  v131[1] = v129;
                  v132 = (v123 + v375);
                  *v132 = v129;
                  v132[1] = v129;
                  v125 = 4;
                }

                else
                {
                  v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v356), v25, v122, v124);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v73 + v356), v25, v122, v124, v75);
                v125 = 64;
              }
            }

            else
            {
              v125 = 0;
              *v123 = 0u;
              v123[1] = 0u;
              v126 = (v123->f32 + v25);
              *v126 = 0u;
              v126[1] = 0u;
              v127 = (v123->f32 + v77);
              *v127 = 0u;
              v127[1] = 0u;
              v128 = (v123->f32 + v375);
              *v128 = 0u;
              v128[1] = 0u;
            }

            v143 = v122 + v125;
            v144 = &v123[2];
            v145 = v72[3];
            if (v72[3])
            {
              if (v145 < 0xF0)
              {
                if (v145 == 127)
                {
                  v154 = *(v143 + 16);
                  v155 = *(v143 + 32);
                  v156 = *(v143 + 48);
                  v157 = *(v143 + 80);
                  v158 = *(v143 + 96);
                  v159 = *(v143 + 112);
                  v160 = *(v143 + 64);
                  *v144 = *v143;
                  v123[3] = v155;
                  v161 = &v144->i8[v77];
                  v162 = &v144->i8[v25];
                  *v162 = v154;
                  *(v162 + 1) = v156;
                  *v161 = v160;
                  *(v161 + 1) = v158;
                  v163 = &v144->i8[v77 + v25];
                  *v163 = v157;
                  *(v163 + 1) = v159;
                  v146 = 128;
                }

                else if (v145 == 3)
                {
                  v150 = vld1q_dup_f32(v143);
                  v123[2] = v150;
                  v123[3] = v150;
                  v151 = &v144->i8[v25];
                  *v151 = v150;
                  v151[1] = v150;
                  v152 = &v144->i8[v77];
                  *v152 = v150;
                  v152[1] = v150;
                  v153 = &v144->i8[v375];
                  *v153 = v150;
                  v153[1] = v150;
                  v146 = 4;
                }

                else
                {
                  v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v144, v25, v143, v145);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v144->i32, v25, v143, v145, v75);
                v146 = 64;
              }
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              v123[3] = 0u;
              v147 = &v144->i8[v25];
              *v147 = 0u;
              *(v147 + 1) = 0u;
              v148 = &v144->i8[v77];
              *v148 = 0u;
              *(v148 + 1) = 0u;
              v149 = &v144->i8[v375];
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            v164 = v143 + v146;
            v165 = (v73 + 64);
            v166 = v72[4];
            if (v72[4])
            {
              if (v166 < 0xF0)
              {
                if (v166 == 127)
                {
                  v175 = *(v164 + 16);
                  v176 = *(v164 + 32);
                  v177 = *(v164 + 48);
                  v178 = *(v164 + 80);
                  v179 = *(v164 + 96);
                  v180 = *(v164 + 112);
                  v181 = *(v164 + 64);
                  *v165 = *v164;
                  *(v73 + 80) = v176;
                  v182 = &v165->i8[v77];
                  v183 = &v165->i8[v25];
                  *v183 = v175;
                  *(v183 + 1) = v177;
                  *v182 = v181;
                  *(v182 + 1) = v179;
                  v184 = &v165->i8[v77 + v25];
                  *v184 = v178;
                  *(v184 + 1) = v180;
                  v167 = 128;
                }

                else if (v166 == 3)
                {
                  v171 = vld1q_dup_f32(v164);
                  *(v73 + 64) = v171;
                  *(v73 + 80) = v171;
                  v172 = &v165->i8[v25];
                  *v172 = v171;
                  v172[1] = v171;
                  v173 = &v165->i8[v77];
                  *v173 = v171;
                  v173[1] = v171;
                  v174 = &v165->i8[v375];
                  *v174 = v171;
                  v174[1] = v171;
                  v167 = 4;
                }

                else
                {
                  v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v165, v25, v164, v166);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v165->i32, v25, v164, v166, v75);
                v167 = 64;
              }
            }

            else
            {
              v167 = 0;
              *v165 = 0u;
              *(v73 + 80) = 0u;
              v168 = &v165->i8[v25];
              *v168 = 0u;
              *(v168 + 1) = 0u;
              v169 = &v165->i8[v77];
              *v169 = 0u;
              *(v169 + 1) = 0u;
              v170 = &v165->i8[v375];
              *v170 = 0u;
              *(v170 + 1) = 0u;
            }

            v185 = v164 + v167;
            v186 = (v73 + 96);
            v187 = v72[5];
            if (v72[5])
            {
              if (v187 < 0xF0)
              {
                if (v187 == 127)
                {
                  v196 = *(v185 + 16);
                  v197 = *(v185 + 32);
                  v198 = *(v185 + 48);
                  v199 = *(v185 + 80);
                  v200 = *(v185 + 96);
                  v201 = *(v185 + 112);
                  v202 = *(v185 + 64);
                  *v186 = *v185;
                  *(v73 + 112) = v197;
                  v203 = &v186->i8[v77];
                  v204 = &v186->i8[v25];
                  *v204 = v196;
                  *(v204 + 1) = v198;
                  *v203 = v202;
                  *(v203 + 1) = v200;
                  v205 = &v186->i8[v77 + v25];
                  *v205 = v199;
                  *(v205 + 1) = v201;
                  v188 = 128;
                }

                else if (v187 == 3)
                {
                  v192 = vld1q_dup_f32(v185);
                  *(v73 + 96) = v192;
                  *(v73 + 112) = v192;
                  v193 = &v186->i8[v25];
                  *v193 = v192;
                  v193[1] = v192;
                  v194 = &v186->i8[v77];
                  *v194 = v192;
                  v194[1] = v192;
                  v195 = &v186->i8[v375];
                  *v195 = v192;
                  v195[1] = v192;
                  v188 = 4;
                }

                else
                {
                  v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v186, v25, v185, v187);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v186->i32, v25, v185, v187, v75);
                v188 = 64;
              }
            }

            else
            {
              v188 = 0;
              *v186 = 0u;
              *(v73 + 112) = 0u;
              v189 = &v186->i8[v25];
              *v189 = 0u;
              *(v189 + 1) = 0u;
              v190 = &v186->i8[v77];
              *v190 = 0u;
              *(v190 + 1) = 0u;
              v191 = &v186->i8[v375];
              *v191 = 0u;
              *(v191 + 1) = 0u;
            }

            v206 = v185 + v188;
            v207 = &v123[4];
            v208 = v72[6];
            if (v72[6])
            {
              if (v208 < 0xF0)
              {
                if (v208 == 127)
                {
                  v217 = *(v206 + 16);
                  v218 = *(v206 + 32);
                  v219 = *(v206 + 48);
                  v220 = *(v206 + 80);
                  v221 = *(v206 + 96);
                  v222 = *(v206 + 112);
                  v223 = *(v206 + 64);
                  *v207 = *v206;
                  v123[5] = v218;
                  v224 = &v207->i8[v77];
                  v225 = &v207->i8[v25];
                  *v225 = v217;
                  *(v225 + 1) = v219;
                  *v224 = v223;
                  *(v224 + 1) = v221;
                  v226 = &v207->i8[v77 + v25];
                  *v226 = v220;
                  *(v226 + 1) = v222;
                  v209 = 128;
                }

                else if (v208 == 3)
                {
                  v213 = vld1q_dup_f32(v206);
                  v123[4] = v213;
                  v123[5] = v213;
                  v214 = &v207->i8[v25];
                  *v214 = v213;
                  v214[1] = v213;
                  v215 = &v207->i8[v77];
                  *v215 = v213;
                  v215[1] = v213;
                  v216 = &v207->i8[v375];
                  *v216 = v213;
                  v216[1] = v213;
                  v209 = 4;
                }

                else
                {
                  v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v207, v25, v185 + v188, v208);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v207->i32, v25, v185 + v188, v208, v75);
                v209 = 64;
              }
            }

            else
            {
              v209 = 0;
              *v207 = 0u;
              v123[5] = 0u;
              v210 = &v207->i8[v25];
              *v210 = 0u;
              *(v210 + 1) = 0u;
              v211 = &v207->i8[v77];
              *v211 = 0u;
              *(v211 + 1) = 0u;
              v212 = &v207->i8[v375];
              *v212 = 0u;
              *(v212 + 1) = 0u;
            }

            f32 = v123[6].f32;
            v228 = v72[7];
            if (v72[7])
            {
              v229 = v206 + v209;
              if (v228 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(f32, v25, v229, v228, v75);
                goto LABEL_161;
              }

              v36 = a7;
              if (v228 == 127)
              {
                v237 = *(v229 + 16);
                v238 = *(v229 + 32);
                v239 = *(v229 + 48);
                v240 = *(v229 + 64);
                v241 = *(v229 + 80);
                v242 = *(v229 + 96);
                v243 = *(v229 + 112);
                *f32 = *v229;
                v123[7] = v238;
                v244 = (f32 + v77);
                v245 = (f32 + v25);
                *v245 = v237;
                v245[1] = v239;
                *v244 = v240;
                v244[1] = v242;
                v246 = (f32 + v77 + v25);
                *v246 = v241;
                v246[1] = v243;
              }

              else if (v228 == 3)
              {
                v233 = vld1q_dup_f32(v229);
                v123[6] = v233;
                v123[7] = v233;
                v234 = (f32 + v25);
                *v234 = v233;
                v234[1] = v233;
                v235 = (f32 + v77);
                *v235 = v233;
                v235[1] = v233;
                v236 = (f32 + v375);
                *v236 = v233;
                v236[1] = v233;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(f32, v25, v229, v228);
              }
            }

            else
            {
              *f32 = 0u;
              v123[7] = 0u;
              v230 = (f32 + v25);
              *v230 = 0u;
              v230[1] = 0u;
              v231 = (f32 + v77);
              *v231 = 0u;
              v231[1] = 0u;
              v232 = (f32 + v375);
              *v232 = 0u;
              v232[1] = 0u;
LABEL_161:
              v36 = a7;
            }

            result = v374;
LABEL_29:
            v37 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v383 = v43;
          v384 = v372;
          v379 = v360;
          v380 = v40 - v38;
          block[6] = v72;
          v377 = v73;
          v25 = a11;
          v378 = a11;
          v381 = v359;
          v382 = v42;
          if (v44)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v374;
            v36 = a7;
            goto LABEL_29;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v72;
          v36 = a7;
          if (*v72)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 127)
              {
                v247 = v71[1];
                v248 = v71[2];
                v249 = v71[3];
                v250 = v71[4];
                v251 = v71[5];
                v252 = v71[6];
                v253 = v71[7];
                v386 = *v71;
                v387 = v248;
                v394 = v247;
                v395 = v249;
                v402 = v250;
                v403 = v252;
                v410 = v251;
                v411 = v253;
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v90 = vld1q_dup_f32(v71->f32);
                v386 = v90;
                v387 = v90;
                v394 = v90;
                v395 = v90;
                v402 = v90;
                v403 = v90;
                v410 = v90;
                v411 = v90;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v386, 128, v71, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v386.i32, 128, v71, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v387 = 0u;
            v386 = 0u;
            v394 = 0u;
            v395 = 0u;
            v402 = 0u;
            v403 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v254 = v71 + v82;
          v255 = v72[1];
          if (v72[1])
          {
            if (v255 < 0xF0)
            {
              if (v255 == 127)
              {
                v258 = *(v254 + 16);
                v259 = *(v254 + 32);
                v260 = *(v254 + 48);
                v261 = *(v254 + 64);
                v262 = *(v254 + 80);
                v263 = *(v254 + 96);
                v264 = *(v254 + 112);
                v388 = *v254;
                v389 = v259;
                v396 = v258;
                v397 = v260;
                v404 = v261;
                v405 = v263;
                v412 = v262;
                v413 = v264;
                v256 = 128;
              }

              else if (v255 == 3)
              {
                v257 = vld1q_dup_f32(v254);
                v388 = v257;
                v389 = v257;
                v396 = v257;
                v397 = v257;
                v404 = v257;
                v405 = v257;
                v412 = v257;
                v413 = v257;
                v256 = 4;
              }

              else
              {
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v388, 128, v254, v255);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v388.i32, 128, v254, v255, v80);
              v256 = 64;
            }
          }

          else
          {
            v256 = 0;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v404 = 0u;
            v405 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v265 = v254 + v256;
          v266 = v72[2];
          if (v72[2])
          {
            if (v266 < 0xF0)
            {
              if (v266 == 127)
              {
                v269 = *(v265 + 16);
                v270 = *(v265 + 32);
                v271 = *(v265 + 48);
                v272 = *(v265 + 64);
                v273 = *(v265 + 80);
                v274 = *(v265 + 96);
                v275 = *(v265 + 112);
                v418 = *v265;
                v419 = v270;
                v426 = v269;
                v427 = v271;
                v434 = v272;
                v435 = v274;
                v442 = v273;
                v443 = v275;
                v267 = 128;
              }

              else if (v266 == 3)
              {
                v268 = vld1q_dup_f32(v265);
                v418 = v268;
                v419 = v268;
                v426 = v268;
                v427 = v268;
                v434 = v268;
                v435 = v268;
                v442 = v268;
                v443 = v268;
                v267 = 4;
              }

              else
              {
                v267 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v418, 128, v265, v266);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v418.i32, 128, v265, v266, v80);
              v267 = 64;
            }
          }

          else
          {
            v267 = 0;
            v418 = 0u;
            v419 = 0u;
            v426 = 0u;
            v427 = 0u;
            v434 = 0u;
            v435 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v276 = v265 + v267;
          v277 = v72[3];
          if (v72[3])
          {
            if (v277 < 0xF0)
            {
              if (v277 == 127)
              {
                v280 = *(v276 + 16);
                v281 = *(v276 + 32);
                v282 = *(v276 + 48);
                v283 = *(v276 + 64);
                v284 = *(v276 + 80);
                v285 = *(v276 + 96);
                v286 = *(v276 + 112);
                v420 = *v276;
                v421 = v281;
                v428 = v280;
                v429 = v282;
                v436 = v283;
                v437 = v285;
                v444 = v284;
                v445 = v286;
                v278 = 128;
              }

              else if (v277 == 3)
              {
                v279 = vld1q_dup_f32(v276);
                v420 = v279;
                v421 = v279;
                v428 = v279;
                v429 = v279;
                v436 = v279;
                v437 = v279;
                v444 = v279;
                v445 = v279;
                v278 = 4;
              }

              else
              {
                v278 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v420, 128, v276, v277);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v420.i32, 128, v276, v277, v80);
              v278 = 64;
            }
          }

          else
          {
            v278 = 0;
            v420 = 0u;
            v421 = 0u;
            v428 = 0u;
            v429 = 0u;
            v436 = 0u;
            v437 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v287 = v276 + v278;
          v288 = v72[4];
          if (v72[4])
          {
            if (v288 < 0xF0)
            {
              if (v288 == 127)
              {
                v291 = *(v287 + 16);
                v292 = *(v287 + 32);
                v293 = *(v287 + 48);
                v294 = *(v287 + 64);
                v295 = *(v287 + 80);
                v296 = *(v287 + 96);
                v297 = *(v287 + 112);
                v390 = *v287;
                v391 = v292;
                v398 = v291;
                v399 = v293;
                v406 = v294;
                v407 = v296;
                v414 = v295;
                v415 = v297;
                v289 = 128;
              }

              else if (v288 == 3)
              {
                v290 = vld1q_dup_f32(v287);
                v390 = v290;
                v391 = v290;
                v398 = v290;
                v399 = v290;
                v406 = v290;
                v407 = v290;
                v414 = v290;
                v415 = v290;
                v289 = 4;
              }

              else
              {
                v289 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v390, 128, v287, v288);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v390.i32, 128, v287, v288, v80);
              v289 = 64;
            }
          }

          else
          {
            v289 = 0;
            v390 = 0u;
            v391 = 0u;
            v398 = 0u;
            v399 = 0u;
            v406 = 0u;
            v407 = 0u;
            v414 = 0u;
            v415 = 0u;
          }

          v298 = v287 + v289;
          v299 = v72[5];
          if (v72[5])
          {
            if (v299 < 0xF0)
            {
              if (v299 == 127)
              {
                v302 = *(v298 + 16);
                v303 = *(v298 + 32);
                v304 = *(v298 + 48);
                v305 = *(v298 + 64);
                v306 = *(v298 + 80);
                v307 = *(v298 + 96);
                v308 = *(v298 + 112);
                v392 = *v298;
                v393 = v303;
                v400 = v302;
                v401 = v304;
                v408 = v305;
                v409 = v307;
                v416 = v306;
                v417 = v308;
                v300 = 128;
              }

              else if (v299 == 3)
              {
                v301 = vld1q_dup_f32(v298);
                v392 = v301;
                v393 = v301;
                v400 = v301;
                v401 = v301;
                v408 = v301;
                v409 = v301;
                v416 = v301;
                v417 = v301;
                v300 = 4;
              }

              else
              {
                v300 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v392, 128, v298, v299);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v392.i32, 128, v298, v299, v80);
              v300 = 64;
            }
          }

          else
          {
            v300 = 0;
            v392 = 0u;
            v393 = 0u;
            v400 = 0u;
            v401 = 0u;
            v408 = 0u;
            v409 = 0u;
            v416 = 0u;
            v417 = 0u;
          }

          v309 = v298 + v300;
          v310 = v72[6];
          if (v72[6])
          {
            if (v310 < 0xF0)
            {
              if (v310 == 127)
              {
                v316 = *(v309 + 16);
                v317 = *(v309 + 32);
                v318 = *(v309 + 48);
                v319 = *(v309 + 64);
                v320 = *(v309 + 80);
                v321 = *(v309 + 96);
                v322 = *(v309 + 112);
                v422 = *v309;
                v423 = v317;
                v430 = v316;
                v431 = v318;
                v438 = v319;
                v439 = v321;
                v446 = v320;
                v447 = v322;
                v311 = 128;
                v312 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v310 == 3)
              {
                v314 = vld1q_dup_f32(v309);
                v422 = v314;
                v423 = v314;
                v430 = v314;
                v431 = v314;
                v438 = v314;
                v439 = v314;
                v446 = v314;
                v447 = v314;
                v311 = 4;
                v312 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v311 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v422, 128, v309, v310);
                v312 = v72[7];
                if (!v72[7])
                {
LABEL_218:
                  v424 = 0u;
                  v425 = 0u;
                  v432 = 0u;
                  v433 = 0u;
                  v440 = 0u;
                  v441 = 0u;
                  v448 = 0u;
                  v449 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v422.i32, 128, v309, v310, v80);
              v311 = 64;
              v312 = v72[7];
              if (!v72[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v311 = 0;
            v422 = 0u;
            v423 = 0u;
            v430 = 0u;
            v431 = 0u;
            v438 = 0u;
            v439 = 0u;
            v446 = 0u;
            v447 = 0u;
            v312 = v72[7];
            if (!v72[7])
            {
              goto LABEL_218;
            }
          }

          v313 = v309 + v311;
          if (v312 < 0xF0)
          {
            if (v312 == 127)
            {
              v323 = *(v313 + 16);
              v324 = *(v313 + 32);
              v325 = *(v313 + 48);
              v326 = *(v313 + 80);
              v327 = *(v313 + 96);
              v328 = *(v313 + 112);
              v329 = *(v313 + 64);
              v424 = *v313;
              v425 = v324;
              v432 = v323;
              v433 = v325;
              v440 = v329;
              v441 = v327;
              v448 = v326;
              v449 = v328;
            }

            else if (v312 == 3)
            {
              v315 = vld1q_dup_f32(v313);
              v424 = v315;
              v425 = v315;
              v432 = v315;
              v433 = v315;
              v440 = v315;
              v441 = v315;
              v448 = v315;
              v449 = v315;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v424, 128, v313, v312);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v424.i32, 128, v313, v312, v80);
          }

LABEL_235:
          result = v374;
          v37 = v34 + 1;
          v330 = v381;
          if (v381)
          {
            v331 = 0;
            v332 = &v386.i8[128 * v379 + 8 * v380];
            v333 = v382;
            do
            {
              if (v333)
              {
                v334 = 0;
                v335 = v377 + v378 * v331;
                do
                {
                  *(v335 + v334) = v332[v334];
                  ++v334;
                  v333 = v382;
                }

                while (8 * v382 > v334);
                v330 = v381;
              }

              ++v331;
              v332 += 128;
            }

            while (v331 < v330);
          }

LABEL_30:
          v20 = v34 == v363 >> 4;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v354;
      }

      while (!v20);
    }
  }

  return result;
}