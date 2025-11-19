uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v129 = v21;
  v120 = v22;
  v121 = v23;
  v24 = v12;
  v158 = *MEMORY[0x29EDCA608];
  v119 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v133 = v14;
  v25 = v14 >> 4;
  v118 = v14 + a10 - 1;
  v26 = v118 >> 4;
  v134 = v24;
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
  v137 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v128 = v16 + a9 - 1;
    if (v16 >> 4 <= v128 >> 4)
    {
      v135 = (v20 - 1) >> 4;
      v117 = (v18 - 1) >> 4;
      v122 = (v20 - 1) & 0xF;
      v115 = ((v18 - 1) & 0xF) + 1;
      v116 = (v18 - 1) & 0xF;
      v126 = v16;
      v113 = v26 + 1;
      v114 = v16 >> 4;
      v127 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v133)
        {
          v34 = v133;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v118 < v33)
        {
          v33 = v118;
        }

        v125 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v116;
        v124 = v36;
        v38 = v36 != 16;
        v39 = v115;
        if (v25 != v117)
        {
          v39 = 16;
          v37 = v38;
        }

        v123 = v37;
        v131 = v121 + (v34 - v133) * a11;
        v132 = v39;
        v130 = v39;
        v40 = v114;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v128 < v43)
          {
            v43 = v128;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v135)
          {
            v47 = v122 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v133 && v41 >= v126)
          {
            v49 = v45 != v122;
            if (v40 != v135)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v123;
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
          v62 = (v129 + v61);
          v63 = (v131 + 8 * (v44 - v16));
          v64 = (v120 + v25 * v119 + (v40 << 11));
          __src = v64;
          if (v137)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v130 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v130 < 0x10)))
          {
LABEL_67:
            v65 = v63;
            v66 = a11;
            v67 = v64;
            v68 = (v129 + v61);
            v69 = v47;
            v70 = v132;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v139 = v64;
          v147 = v47;
          v148 = v132;
          v143 = v125;
          v144 = v44 - v41;
          v140 = v62;
          v141 = v63;
          v142 = a11;
          v145 = v124;
          v146 = v46;
          if ((v48 & 1) == 0)
          {
            v71 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v64, *v62)];
            v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v71, v62[1]);
            v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v72, v62[2]);
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v73, v62[3]);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v74, v62[4]);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v75, v62[5]);
            v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v76, v62[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v76 + v77, v62[7]);
            v78 = v145;
            if (v145)
            {
              v79 = v146;
              if (v146)
              {
                v80 = v143 << 7;
                v81 = 8 * v144;
                v82 = &v150[0].i8[v80 + v81];
                v83 = v141;
                v84 = v142;
                v85 = 8 * v146;
                if ((v85 - 1) >> 32)
                {
                  v86 = 1;
                }

                else
                {
                  v86 = v85 == 0;
                }

                if (v86)
                {
                  v87 = 0;
                  do
                  {
                    v88 = 0;
                    do
                    {
                      v82[v88] = *(v83 + v88);
                      ++v88;
                    }

                    while (v85 > v88);
                    ++v87;
                    v82 += 128;
                    v83 += v84;
                  }

                  while (v87 != v78);
                }

                else
                {
                  if ((v141 >= &__dst[128 * v145 + 1920 + 128 * v143 + v85 + v81] || v82 >= &v141->i8[v142 * (v145 - 1) + v85]) && v142 >= 0)
                  {
                    v93 = 0;
                    v94 = v85 & 0x1FFFFFFE0;
                    v95 = &v150[1].i8[v80 + v81];
                    v96 = v141 + 1;
                    v97 = v82;
                    v98 = v141;
                    while (1)
                    {
                      if (v79 >= 4)
                      {
                        v100 = v96;
                        v101 = v95;
                        v102 = v85 & 0x1FFFFFFE0;
                        do
                        {
                          v103 = *v100;
                          *(v101 - 1) = v100[-1];
                          *v101 = v103;
                          v101 += 32;
                          v100 += 2;
                          v102 -= 32;
                        }

                        while (v102);
                        if (v85 == v94)
                        {
                          goto LABEL_95;
                        }

                        v99 = v85 & 0x1FFFFFFE0;
                        if ((v79 & 3) == 0)
                        {
                          v108 = &v82[128 * v93 + v94];
                          v109 = (v83 + v93 * v84 + v94);
                          v110 = (v85 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v111 = *v109++;
                            *v108++ = v111;
                          }

                          while (v85 > v110++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v99 = 0;
                      }

                      v104 = -8 * v79 + v99;
                      v105 = (v98 + v99);
                      v106 = &v97[v99];
                      do
                      {
                        v107 = *v105++;
                        *v106 = v107;
                        v106 += 8;
                        v104 += 8;
                      }

                      while (v104);
LABEL_95:
                      ++v93;
                      v95 += 128;
                      v96 = (v96 + v84);
                      v98 += v84;
                      v97 += 128;
                      if (v93 == v78)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v91 = 0;
                  do
                  {
                    v92 = 0;
                    do
                    {
                      v82[v92] = *(v83 + v92);
                      ++v92;
                    }

                    while (v85 > v92);
                    ++v91;
                    v82 += 128;
                    v83 += v84;
                  }

                  while (v91 != v78);
                }
              }
            }

LABEL_92:
            v67 = v139;
            v68 = v140;
            v69 = v147;
            v70 = v148;
            v65 = v150;
            v66 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v65, v66, v67, v68, v69, v70);
            if (!v137)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v137)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v127;
          result = v134;
        }

        while (v42 != (v128 >> 4) + 1);
        ++v25;
      }

      while (v25 != v113);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v186 = v21;
  v175 = v22;
  v176 = v23;
  v24 = v12;
  v213 = *MEMORY[0x29EDCA608];
  v174 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v188 = v14;
  v25 = v14 >> 4;
  v173 = v14 + a10 - 1;
  v26 = v173 >> 4;
  v189 = v24;
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
  v192 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v185 = v16 + a9 - 1;
    if (v16 >> 4 <= v185 >> 4)
    {
      v33 = a11;
      v190 = (v20 - 1) >> 4;
      v172 = (v18 - 1) >> 4;
      v179 = (v20 - 1) & 0xF;
      v170 = ((v18 - 1) & 0xF) + 1;
      v171 = (v18 - 1) & 0xF;
      v183 = v16;
      v168 = v26 + 1;
      v169 = v16 >> 4;
      v184 = v16;
      do
      {
        v34 = (16 * v25) | 0xF;
        if (16 * v25 <= v188)
        {
          v35 = v188;
        }

        else
        {
          v35 = 16 * v25;
        }

        if (v173 < v34)
        {
          v34 = v173;
        }

        v182 = v35 - 16 * v25;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v171;
        v181 = v37;
        if (v25 == v172)
        {
          v39 = v170;
        }

        else
        {
          v39 = 16;
        }

        if (v25 != v172)
        {
          v38 = v37 != 16;
        }

        v180 = v38;
        v187 = v176 + (v35 - v188) * v33;
        v40 = v169;
        do
        {
          v41 = 16 * v40;
          v42 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v43 = v16;
          }

          else
          {
            v43 = 16 * v40;
          }

          if (v185 < v42)
          {
            v42 = v185;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v40 == v190)
          {
            v46 = v179 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v25 >= v188 && v41 >= v183)
          {
            v48 = v44 != v179;
            if (v40 != v190)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v180;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
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

          v191 = v40 + 1;
          if (v54 | v51)
          {
            v55 = 0;
            v56 = 0;
            v57 = v51 != 0;
            v58 = v54 != 0;
            v59 = 1;
            do
            {
              --v51;
              if (v57)
              {
                v56 |= (v59 & v40) << v55++;
              }

              else
              {
                v51 = 0;
              }

              --v54;
              if (v58)
              {
                v56 |= (v59 & v25) << v55++;
              }

              else
              {
                v54 = 0;
              }

              v59 *= 2;
              --v55;
              v58 = v54 != 0;
              v57 = v51 != 0;
            }

            while (v54 | v51);
            v60 = 8 * v56;
          }

          else
          {
            v60 = 0;
          }

          v61 = (v186 + v60);
          v62 = v187 + 8 * (v43 - v16);
          v63 = (v175 + v25 * v174 + (v40 << 11));
          if (v192)
          {
            if (!(v47 & 1 | (v46 < 0x10u) | (v39 < 0x10u)))
            {
              v66 = __dst;
LABEL_72:
              v69 = &byte_29D2F30C1;
              v70 = 16;
              v71 = v66;
              do
              {
                v94 = *v69;
                v95 = *(v69 - 1);
                if (v46 <= 8 * v95 || 4 * v94 >= v39)
                {
                  v93 = 0;
                }

                else
                {
                  v72 = (v62 + 4 * a11 * v94 + (v95 << 6));
                  v73 = (v72 + v33);
                  v75 = *v72;
                  v76 = v72[1];
                  v77 = v72[2];
                  v78 = v72[3];
                  v74 = (v72 + 2 * a11);
                  v79 = v73[2];
                  v80 = v73[3];
                  v81 = *v73;
                  v83 = *v74;
                  v84 = v74[1];
                  v85 = v74[2];
                  v86 = v74[3];
                  v82 = (v74 + v33);
                  v87 = v76;
                  v88 = v73[1];
                  v89 = v82[1];
                  v90 = v82[2];
                  v91 = v82[3];
                  v92 = *v82;
                  *v71 = v75;
                  v71[1] = v81;
                  v71[2] = v87;
                  v71[3] = v88;
                  v71[4] = v83;
                  v71[5] = v92;
                  v71[6] = v84;
                  v71[7] = v89;
                  v71[8] = v77;
                  v71[9] = v79;
                  v71[10] = v78;
                  v71[11] = v80;
                  v71[12] = v85;
                  v71[13] = v90;
                  v71[14] = v86;
                  v71[15] = v91;
                  v71 += 16;
                  v93 = -1;
                }

                *v61++ = v93;
                v69 += 2;
                v70 -= 2;
              }

              while (v70);
LABEL_68:
              v16 = v184;
              v68 = v191;
              goto LABEL_69;
            }

            v177 = v45;
            v64 = v33;
            v65 = 16 * v40;
            memcpy(__dst, v63, sizeof(__dst));
            LODWORD(v41) = v65;
            v33 = v64;
            v45 = v177;
            v66 = __dst;
            result = v189;
          }

          else
          {
            v66 = (v175 + v25 * v174 + (v40 << 11));
            if (!(v47 & 1 | (v46 < 0x10u) | (v39 < 0x10u)))
            {
              goto LABEL_72;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v194 = v66;
          v202 = v46;
          v203 = v39;
          v198 = v182;
          v199 = v43 - v41;
          v195 = v61;
          v196 = v62;
          v197 = v33;
          v200 = v181;
          v201 = v45;
          if (v47)
          {
            v67 = v66;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v66 = v67;
            result = v189;
            goto LABEL_68;
          }

          v178 = v66;
          v97 = &v66[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v205, 128, v66, *v61)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v206, 128, v97, v61[1]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v207, 128, v98, v61[2]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v99, v61[3]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v209, 128, v100, v61[4]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v210, 128, v101, v61[5]);
          v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v211, 128, v102, v61[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v212, 128, v102 + v103, v61[7]);
          v104 = v200;
          v16 = v184;
          if (v200)
          {
            v105 = v201;
            if (v201)
            {
              v106 = v198 << 7;
              v107 = 8 * v199;
              v108 = &v205[0].i8[v106 + v107];
              v109 = v196;
              v110 = v197;
              v111 = 8 * v201;
              if ((v111 - 1) >> 32)
              {
                v112 = 1;
              }

              else
              {
                v112 = v111 == 0;
              }

              if (v112)
              {
                v113 = 0;
                do
                {
                  v114 = 0;
                  do
                  {
                    v108[v114] = *(v109 + v114);
                    ++v114;
                  }

                  while (v111 > v114);
                  ++v113;
                  v108 += 128;
                  v109 += v110;
                }

                while (v113 != v104);
              }

              else
              {
                if ((v196 >= &__dst[128 * v200 + 1920 + 128 * v198 + v111 + v107] || v108 >= v196 + v197 * (v200 - 1) + v111) && v197 >= 0)
                {
                  v147 = 0;
                  v148 = v111 & 0x1FFFFFFE0;
                  v149 = &v205[1].i8[v106 + v107];
                  v150 = (v196 + 16);
                  v151 = v108;
                  v152 = v196;
                  v153 = -8 * v201;
                  while (1)
                  {
                    if (v105 >= 4)
                    {
                      v155 = v150;
                      v156 = v149;
                      v157 = v111 & 0x1FFFFFFE0;
                      do
                      {
                        v158 = *v155;
                        *(v156 - 1) = *(v155 - 1);
                        *v156 = v158;
                        v156 += 32;
                        v155 += 2;
                        v157 -= 32;
                      }

                      while (v157);
                      if (v111 == v148)
                      {
                        goto LABEL_112;
                      }

                      v154 = v111 & 0x1FFFFFFE0;
                      if ((v105 & 3) == 0)
                      {
                        v163 = &v108[128 * v147 + v148];
                        v164 = (v109 + v147 * v110 + v148);
                        v165 = (v111 & 0xFFFFFFE0) + 1;
                        do
                        {
                          v166 = *v164++;
                          *v163++ = v166;
                        }

                        while (v111 > v165++);
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v159 = v153 + v154;
                    v160 = (v152 + v154);
                    v161 = &v151[v154];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 8;
                      v159 += 8;
                    }

                    while (v159);
LABEL_112:
                    ++v147;
                    v149 += 128;
                    v150 = (v150 + v110);
                    v152 += v110;
                    v151 += 128;
                    if (v147 == v104)
                    {
                      goto LABEL_104;
                    }
                  }
                }

                v117 = 0;
                do
                {
                  v118 = 0;
                  do
                  {
                    v108[v118] = *(v109 + v118);
                    ++v118;
                  }

                  while (v111 > v118);
                  ++v117;
                  v108 += 128;
                  v109 += v110;
                }

                while (v117 != v104);
              }
            }
          }

LABEL_104:
          v119 = v194;
          v120 = v195;
          v121 = v202;
          v122 = &byte_29D2F30C1;
          v123 = 16;
          v124 = v203;
          result = v189;
          v68 = v191;
          v66 = v178;
          do
          {
            v144 = *v122;
            v145 = *(v122 - 1);
            if (v121 <= 8 * v145 || 4 * v144 >= v124)
            {
              v143 = 0;
            }

            else
            {
              v125 = &v205[32 * v144 + 4 * v145];
              v126 = v125[2];
              v127 = v125[10];
              v128 = v125[3];
              v129 = v125[11];
              v130 = *v125;
              v131 = v125[8];
              v132 = v125[1];
              v133 = v125[16];
              v134 = v125[17];
              v135 = v125[18];
              v136 = v125[19];
              v137 = v125[9];
              v125 += 24;
              v138 = v125[1];
              v139 = v125[2];
              v140 = v125[3];
              v141 = *v125;
              *v119 = v130;
              v119[1] = v131;
              v119[2] = v132;
              v119[3] = v137;
              v119[4] = v133;
              v119[5] = v141;
              v119[6] = v134;
              v119[7] = v138;
              v119[8] = v126;
              v119[9] = v127;
              v119[10] = v128;
              v119[11] = v129;
              v142 = v119 + 12;
              v119 += 16;
              v143 = -1;
              *v142 = v135;
              v142[1] = v139;
              v142[2] = v136;
              v142[3] = v140;
            }

            *v120++ = v143;
            v122 += 2;
            v123 -= 2;
          }

          while (v123);
LABEL_69:
          if (v192)
          {
            memcpy(v63, v66, 0x800uLL);
            result = v189;
          }

          v40 = v68;
        }

        while (v68 != (v185 >> 4) + 1);
        ++v25;
      }

      while (v25 != v168);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v160 = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + (v40 << 10));
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = v152 + v82 + v83;
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= v143 + v144 * (v147 - 1) + v87) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[1] + v82 + v83;
                    v98 = v143 + 1;
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108 = v109;
                        v108 += 8;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v160 = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + 768 * v40);
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = v152 + v82 + v83;
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= v143 + v144 * (v147 - 1) + v87) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[1] + v82 + v83;
                    v98 = v143 + 1;
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108 = v109;
                        v108 += 8;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v160 = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + 768 * v40);
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = v152 + v82 + v83;
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= v143 + v144 * (v147 - 1) + v87) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[1] + v82 + v83;
                    v98 = v143 + 1;
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108 = v109;
                        v108 += 8;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v209 = *MEMORY[0x29EDCA608];
  v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v24 = a8 >> 4;
  v146 = a8 + a10 - 1;
  v25 = v146 >> 4;
  v160 = a1;
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
  v163 = v30;
  result = a1;
  if (v24 <= v25)
  {
    v154 = a7 + a9 - 1;
    if (a7 >> 4 <= v154 >> 4)
    {
      v161 = (a5 - 1) >> 4;
      v145 = (a6 - 1) >> 4;
      v150 = (a5 - 1) & 0xF;
      v143 = ((a6 - 1) & 0xF) + 1;
      v144 = (a6 - 1) & 0xF;
      v142 = v25 + 1;
      do
      {
        v32 = (16 * v24) | 0xF;
        if (16 * v24 <= v159)
        {
          v33 = v159;
        }

        else
        {
          v33 = 16 * v24;
        }

        if (v146 < v32)
        {
          v32 = v146;
        }

        v153 = v33 - 16 * v24;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v144;
        v152 = v35;
        v37 = v35 != 16;
        v38 = v143;
        if (v24 != v145)
        {
          v38 = 16;
          v36 = v37;
        }

        v151 = v36;
        v157 = a3 + (v33 - v159) * a11;
        v158 = v38;
        v156 = v38;
        v39 = a7 >> 4;
        do
        {
          v40 = 16 * v39;
          v41 = v39 + 1;
          v42 = 16 * (v39 + 1) - 1;
          if (16 * v39 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 16 * v39;
          }

          if (v154 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v39 == v161)
          {
            v46 = v150 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v24 >= v159 && v40 >= a7)
          {
            v48 = v44 != v150;
            if (v39 != v161)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v151;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
            if (!v51)
            {
LABEL_59:
              v60 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
            if (!(v54 | v51))
            {
              goto LABEL_59;
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = v51 != 0;
          v58 = v54 != 0;
          v59 = 1;
          do
          {
            --v51;
            if (v57)
            {
              v56 |= (v59 & v39) << v55++;
            }

            else
            {
              v51 = 0;
            }

            --v54;
            if (v58)
            {
              v56 |= (v59 & v24) << v55++;
            }

            else
            {
              v54 = 0;
            }

            v59 *= 2;
            --v55;
            v58 = v54 != 0;
            v57 = v51 != 0;
          }

          while (v54 | v51);
          v60 = 8 * v56;
LABEL_60:
          v61 = (a4 + v60);
          v62 = (a2 + v24 * v147 + (v39 << 9));
          __src = v62;
          if (v163)
          {
            v62 = __dst;
            if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v160;
          }

          else if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
          {
LABEL_67:
            v63 = (v157 + 2 * (v43 - a7));
            v64 = a11;
            v65 = v62;
            v66 = (a4 + v60);
            v67 = v46;
            v68 = v158;
            goto LABEL_168;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v62;
          v174 = v46;
          v175 = v158;
          v170 = v153;
          v171 = v43 - v40;
          v167 = v61;
          v168 = (v157 + 2 * (v43 - a7));
          v169 = a11;
          v172 = v152;
          v173 = v45;
          if ((v47 & 1) == 0)
          {
            v69 = *v61;
            if (v69 == 63)
            {
              v71 = *(v62 + 1);
              v18 = *(v62 + 2);
              v19 = *(v62 + 3);
              v20 = vuzp1q_s32(*v62, v18);
              v72 = vuzp2q_s32(*v62, v18);
              v177 = v20;
              v179 = v72;
              v16 = vuzp1q_s32(v71, v19);
              v17 = vuzp2q_s32(v71, v19);
              v181 = v16;
              v183 = v17;
              v70 = 64;
            }

            else if (v69 == 1)
            {
              v16 = vld1q_dup_s16(v62);
              v177 = v16;
              v179 = v16;
              v181 = v16;
              v183 = v16;
              v70 = 2;
            }

            else if (*v61)
            {
              v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v177, 32, v62, v69, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v70 = 0;
              v177 = 0uLL;
              v179 = 0uLL;
              v181 = 0uLL;
              v183 = 0uLL;
            }

            v73 = v62 + v70;
            v74 = v61[1];
            if (v74 == 63)
            {
              v76 = *(v73 + 16);
              v18 = *(v73 + 32);
              v19 = *(v73 + 48);
              v20 = vuzp1q_s32(*v73, v18);
              v77 = vuzp2q_s32(*v73, v18);
              v178 = v20;
              v180 = v77;
              v16 = vuzp1q_s32(v76, v19);
              v17 = vuzp2q_s32(v76, v19);
              v182 = v16;
              v184 = v17;
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v16 = vld1q_dup_s16(v73);
              v178 = v16;
              v180 = v16;
              v182 = v16;
              v184 = v16;
              v75 = 2;
            }

            else if (v61[1])
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v178, 32, v73, v74, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v75 = 0;
              v178 = 0uLL;
              v180 = 0uLL;
              v182 = 0uLL;
              v184 = 0uLL;
            }

            v78 = v73 + v75;
            v79 = v61[2];
            if (v79 == 63)
            {
              v81 = *(v78 + 16);
              v18 = *(v78 + 32);
              v19 = *(v78 + 48);
              v20 = vuzp1q_s32(*v78, v18);
              v82 = vuzp2q_s32(*v78, v18);
              v185 = v20;
              v187 = v82;
              v16 = vuzp1q_s32(v81, v19);
              v17 = vuzp2q_s32(v81, v19);
              v189 = v16;
              v191 = v17;
              v80 = 64;
            }

            else if (v79 == 1)
            {
              v16 = vld1q_dup_s16(v78);
              v185 = v16;
              v187 = v16;
              v189 = v16;
              v191 = v16;
              v80 = 2;
            }

            else if (v61[2])
            {
              v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v185, 32, v78, v79, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v80 = 0;
              v185 = 0uLL;
              v187 = 0uLL;
              v189 = 0uLL;
              v191 = 0uLL;
            }

            v83 = v78 + v80;
            v84 = v61[3];
            if (v84 == 63)
            {
              v86 = *(v83 + 16);
              v18 = *(v83 + 32);
              v19 = *(v83 + 48);
              v20 = vuzp1q_s32(*v83, v18);
              v87 = vuzp2q_s32(*v83, v18);
              v186 = v20;
              v188 = v87;
              v16 = vuzp1q_s32(v86, v19);
              v17 = vuzp2q_s32(v86, v19);
              v190 = v16;
              v192 = v17;
              v85 = 64;
            }

            else if (v84 == 1)
            {
              v16 = vld1q_dup_s16(v83);
              v186 = v16;
              v188 = v16;
              v190 = v16;
              v192 = v16;
              v85 = 2;
            }

            else if (v61[3])
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v186, 32, v83, v84, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v85 = 0;
              v186 = 0uLL;
              v188 = 0uLL;
              v190 = 0uLL;
              v192 = 0uLL;
            }

            v88 = v83 + v85;
            v89 = v61[4];
            if (v89 == 63)
            {
              v91 = *(v88 + 16);
              v18 = *(v88 + 32);
              v19 = *(v88 + 48);
              v20 = vuzp1q_s32(*v88, v18);
              v92 = vuzp2q_s32(*v88, v18);
              v193 = v20;
              v195 = v92;
              v16 = vuzp1q_s32(v91, v19);
              v17 = vuzp2q_s32(v91, v19);
              v197 = v16;
              v199 = v17;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v16 = vld1q_dup_s16(v88);
              v193 = v16;
              v195 = v16;
              v197 = v16;
              v199 = v16;
              v90 = 2;
            }

            else if (v61[4])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v193, 32, v88, v89, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v90 = 0;
              v193 = 0uLL;
              v195 = 0uLL;
              v197 = 0uLL;
              v199 = 0uLL;
            }

            v93 = v88 + v90;
            v94 = v61[5];
            if (v94 == 63)
            {
              v96 = *(v93 + 16);
              v18 = *(v93 + 32);
              v19 = *(v93 + 48);
              v20 = vuzp1q_s32(*v93, v18);
              v97 = vuzp2q_s32(*v93, v18);
              v194 = v20;
              v196 = v97;
              v16 = vuzp1q_s32(v96, v19);
              v17 = vuzp2q_s32(v96, v19);
              v198 = v16;
              v200 = v17;
              v95 = 64;
            }

            else if (v94 == 1)
            {
              v16 = vld1q_dup_s16(v93);
              v194 = v16;
              v196 = v16;
              v198 = v16;
              v200 = v16;
              v95 = 2;
            }

            else if (v61[5])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v194, 32, v93, v94, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v95 = 0;
              v194 = 0uLL;
              v196 = 0uLL;
              v198 = 0uLL;
              v200 = 0uLL;
            }

            v98 = v93 + v95;
            v99 = v61[6];
            if (v99 == 63)
            {
              v101 = *(v98 + 16);
              v18 = *(v98 + 32);
              v19 = *(v98 + 48);
              v20 = vuzp1q_s32(*v98, v18);
              v102 = vuzp2q_s32(*v98, v18);
              v201 = v20;
              v203 = v102;
              v16 = vuzp1q_s32(v101, v19);
              v17 = vuzp2q_s32(v101, v19);
              v205 = v16;
              v207 = v17;
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v16 = vld1q_dup_s16(v98);
              v201 = v16;
              v203 = v16;
              v205 = v16;
              v207 = v16;
              v100 = 2;
            }

            else if (v61[6])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v201, 32, v98, v99, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v100 = 0;
              v201 = 0uLL;
              v203 = 0uLL;
              v205 = 0uLL;
              v207 = 0uLL;
            }

            v103 = v98 + v100;
            v104 = v61[7];
            if (v104 == 63)
            {
              v106 = *(v103 + 16);
              v18 = *(v103 + 32);
              v19 = *(v103 + 48);
              v20 = vuzp1q_s32(*v103, v18);
              v107 = vuzp2q_s32(*v103, v18);
              v202 = v20;
              v204 = v107;
              v16 = vuzp1q_s32(v106, v19);
              v17 = vuzp2q_s32(v106, v19);
              v206 = v16;
              v208 = v17;
              v105 = v172;
              if (v172)
              {
                goto LABEL_127;
              }
            }

            else if (v104 == 1)
            {
              v16 = vld1q_dup_s16(v103);
              v202 = v16;
              v204 = v16;
              v206 = v16;
              v208 = v16;
              v105 = v172;
              if (v172)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if (v61[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v202, 32, v103, v104, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
                v105 = v172;
                if (!v172)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v202 = 0uLL;
                v204 = 0uLL;
                v206 = 0uLL;
                v208 = 0uLL;
                v105 = v172;
                if (!v172)
                {
                  goto LABEL_167;
                }
              }

LABEL_127:
              v108 = v173;
              if (!v173)
              {
                goto LABEL_167;
              }

              v109 = 32 * v170;
              v110 = 2 * v171;
              v111 = &v177.i8[v109 + v110];
              v112 = v168;
              v113 = v169;
              v114 = 2 * v173;
              v116 = v111 < &v168->i8[v169 * (v105 - 1) + v114] && v168 < (&__dst[2 * v105 + 30 + 2 * v170] + 2 * v173 + v110) || v169 < 0;
              v117 = v116;
              if (v173 <= 3)
              {
                v118 = 0;
                do
                {
                  v119 = 0;
                  do
                  {
                    v111[v119] = v112->i8[v119];
                    ++v119;
                  }

                  while (v119 < v114);
                  ++v118;
                  v111 += 32;
                  v112 = (v112 + v113);
                }

                while (v118 != v105);
                goto LABEL_167;
              }

              if (v114)
              {
                v120 = (v114 - 1) >> 32;
                if (!v120)
                {
                  v121 = v114 & 0x1FFFFFFE0;
                  v122 = v114 & 0x1FFFFFFF8;
                  v123 = &v178.i8[v109 + v110];
                  v124 = v168 + 1;
                  v125 = v111;
                  v126 = v168;
                  while (1)
                  {
                    v127 = &v112->i8[v120 * v113];
                    v128 = &v111[32 * v120];
                    if (v117)
                    {
                      v129 = 0;
                      goto LABEL_160;
                    }

                    if (v108 >= 0x10)
                    {
                      v131 = v124;
                      v132 = v123;
                      v133 = v114 & 0x1FFFFFFE0;
                      do
                      {
                        v16 = v131[-1];
                        v17 = *v131;
                        v132[-1] = v16;
                        *v132 = v17;
                        v132 += 2;
                        v131 += 2;
                        v133 -= 32;
                      }

                      while (v133);
                      if (v114 == v121)
                      {
                        goto LABEL_146;
                      }

                      v130 = v114 & 0x1FFFFFFE0;
                      if ((v108 & 0xC) == 0)
                      {
                        v127 += v121;
                        v128 += v121;
                        v129 = v114 & 0xFFFFFFE0;
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v128 += v122;
                    v134 = v130 - (v114 & 0x1FFFFFFF8);
                    v135 = (v126->i64 + v130);
                    v136 = &v125[v130];
                    do
                    {
                      v137 = *v135++;
                      v16.i64[0] = v137;
                      *v136++ = v137;
                      v134 += 8;
                    }

                    while (v134);
                    if (v114 == v122)
                    {
                      goto LABEL_146;
                    }

                    v127 += v122;
                    v129 = v114 & 0xFFFFFFF8;
LABEL_160:
                    v138 = v129 + 1;
                    do
                    {
                      v139 = *v127++;
                      *v128++ = v139;
                      v116 = v114 > v138++;
                    }

                    while (v116);
LABEL_146:
                    ++v120;
                    v123 += 32;
                    v124 = (v124 + v113);
                    v126 = (v126 + v113);
                    v125 += 32;
                    if (v120 == v105)
                    {
                      goto LABEL_167;
                    }
                  }
                }
              }

              v140 = 0;
              do
              {
                v141 = 0;
                do
                {
                  v111[v141] = v112->i8[v141];
                  ++v141;
                }

                while (v114 > v141);
                ++v140;
                v111 += 32;
                v112 = (v112 + v113);
              }

              while (v140 != v105);
            }

LABEL_167:
            v65 = v166;
            v66 = v167;
            v67 = v174;
            v68 = v175;
            v63 = &v177;
            v64 = 32;
LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, v64, v65, v66, v67, v68, *v16.i64, *v17.i64, *v18.i64, *v19.i64, *v20.i64, v21, v22, v23);
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_169;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v163)
          {
            goto LABEL_26;
          }

LABEL_169:
          memcpy(__src, v62, 0x200uLL);
LABEL_26:
          v39 = v41;
          result = v160;
        }

        while (v41 != (v154 >> 4) + 1);
        ++v24;
      }

      while (v24 != v142);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v209 = *MEMORY[0x29EDCA608];
  v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v20 = a8 >> 4;
  v146 = a8 + a10 - 1;
  v21 = v146 >> 4;
  v160 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v163 = v26;
  result = a1;
  if (v20 <= v21)
  {
    v154 = a7 + a9 - 1;
    if (a7 >> 4 <= v154 >> 4)
    {
      v161 = (a5 - 1) >> 4;
      v145 = (a6 - 1) >> 4;
      v150 = (a5 - 1) & 0xF;
      v143 = ((a6 - 1) & 0xF) + 1;
      v144 = (a6 - 1) & 0xF;
      v142 = v21 + 1;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= v159)
        {
          v29 = v159;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v146 < v28)
        {
          v28 = v146;
        }

        v153 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v144;
        v152 = v31;
        v33 = v31 != 16;
        v34 = v143;
        if (v20 != v145)
        {
          v34 = 16;
          v32 = v33;
        }

        v151 = v32;
        v157 = a3 + (v29 - v159) * a11;
        v158 = v34;
        v156 = v34;
        v35 = a7 >> 4;
        do
        {
          v36 = 16 * v35;
          v37 = v35 + 1;
          v38 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v35;
          }

          if (v154 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v161)
          {
            v42 = v150 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (16 * v20 >= v159 && v36 >= a7)
          {
            v44 = v40 != v150;
            if (v35 != v161)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v151;
          }

          v45 = *(result + 128) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
          }

          v48 = *(result + 132) >> (*(result + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
            if (!v47)
            {
LABEL_59:
              v56 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
            if (!(v50 | v47))
            {
              goto LABEL_59;
            }
          }

          v51 = 0;
          v52 = 0;
          v53 = v47 != 0;
          v54 = v50 != 0;
          v55 = 1;
          do
          {
            --v47;
            if (v53)
            {
              v52 |= (v55 & v35) << v51++;
            }

            else
            {
              v47 = 0;
            }

            --v50;
            if (v54)
            {
              v52 |= (v55 & v20) << v51++;
            }

            else
            {
              v50 = 0;
            }

            v55 *= 2;
            --v51;
            v54 = v50 != 0;
            v53 = v47 != 0;
          }

          while (v50 | v47);
          v56 = 8 * v52;
LABEL_60:
          v57 = (a4 + v56);
          v58 = (a2 + v20 * v147 + (v35 << 9));
          __src = v58;
          if (v163)
          {
            v58 = __dst;
            if (!(v43 & 1 | (v42 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v160;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v156 < 0x10)))
          {
LABEL_67:
            v59 = (v157 + 2 * (v39 - a7));
            v60 = a11;
            v61 = v58;
            v62 = (a4 + v56);
            v63 = v42;
            v64 = v158;
            goto LABEL_168;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v58;
          v174 = v42;
          v175 = v158;
          v170 = v153;
          v171 = v39 - v36;
          v167 = v57;
          v168 = v157 + 2 * (v39 - a7);
          v169 = a11;
          v172 = v152;
          v173 = v41;
          if ((v43 & 1) == 0)
          {
            v65 = *v57;
            if (v65 == 63)
            {
              v67 = v58[1];
              v18 = v58[2];
              v19 = v58[3];
              v68 = vuzp2q_s32(*v58, v18);
              v177 = vuzp1q_s32(*v58, v18);
              v179 = v68;
              v16 = vuzp1q_s32(v67, v19);
              v17 = vuzp2q_s32(v67, v19);
              v181 = v16;
              v183 = v17;
              v66 = 64;
            }

            else if (v65 == 1)
            {
              v16 = vld1q_dup_s16(v58->i16);
              v177 = v16;
              v179 = v16;
              v181 = v16;
              v183 = v16;
              v66 = 2;
            }

            else if (*v57)
            {
              v66 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v177, 32, v58, v65, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v66 = 0;
              v177 = 0uLL;
              v179 = 0uLL;
              v181 = 0uLL;
              v183 = 0uLL;
            }

            v69 = v58->i64 + v66;
            v70 = v57[1];
            if (v70 == 63)
            {
              v72 = *(v69 + 16);
              v18 = *(v69 + 32);
              v19 = *(v69 + 48);
              v73 = vuzp2q_s32(*v69, v18);
              v178 = vuzp1q_s32(*v69, v18);
              v180 = v73;
              v16 = vuzp1q_s32(v72, v19);
              v17 = vuzp2q_s32(v72, v19);
              v182 = v16;
              v184 = v17;
              v71 = 64;
            }

            else if (v70 == 1)
            {
              v16 = vld1q_dup_s16(v69);
              v178 = v16;
              v180 = v16;
              v182 = v16;
              v184 = v16;
              v71 = 2;
            }

            else if (v57[1])
            {
              v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v178, 32, v69, v70, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v71 = 0;
              v178 = 0uLL;
              v180 = 0uLL;
              v182 = 0uLL;
              v184 = 0uLL;
            }

            v74 = v69 + v71;
            v75 = v57[2];
            if (v75 == 63)
            {
              v77 = *(v74 + 16);
              v18 = *(v74 + 32);
              v19 = *(v74 + 48);
              v78 = vuzp2q_s32(*v74, v18);
              v185 = vuzp1q_s32(*v74, v18);
              v187 = v78;
              v16 = vuzp1q_s32(v77, v19);
              v17 = vuzp2q_s32(v77, v19);
              v189 = v16;
              v191 = v17;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v16 = vld1q_dup_s16(v74);
              v185 = v16;
              v187 = v16;
              v189 = v16;
              v191 = v16;
              v76 = 2;
            }

            else if (v57[2])
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v185, 32, v74, v75, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v76 = 0;
              v185 = 0uLL;
              v187 = 0uLL;
              v189 = 0uLL;
              v191 = 0uLL;
            }

            v79 = v74 + v76;
            v80 = v57[3];
            if (v80 == 63)
            {
              v82 = *(v79 + 16);
              v18 = *(v79 + 32);
              v19 = *(v79 + 48);
              v83 = vuzp2q_s32(*v79, v18);
              v186 = vuzp1q_s32(*v79, v18);
              v188 = v83;
              v16 = vuzp1q_s32(v82, v19);
              v17 = vuzp2q_s32(v82, v19);
              v190 = v16;
              v192 = v17;
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v16 = vld1q_dup_s16(v79);
              v186 = v16;
              v188 = v16;
              v190 = v16;
              v192 = v16;
              v81 = 2;
            }

            else if (v57[3])
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v186, 32, v79, v80, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v81 = 0;
              v186 = 0uLL;
              v188 = 0uLL;
              v190 = 0uLL;
              v192 = 0uLL;
            }

            v84 = v79 + v81;
            v85 = v57[4];
            if (v85 == 63)
            {
              v87 = *(v84 + 16);
              v18 = *(v84 + 32);
              v19 = *(v84 + 48);
              v88 = vuzp2q_s32(*v84, v18);
              v193 = vuzp1q_s32(*v84, v18);
              v195 = v88;
              v16 = vuzp1q_s32(v87, v19);
              v17 = vuzp2q_s32(v87, v19);
              v197 = v16;
              v199 = v17;
              v86 = 64;
            }

            else if (v85 == 1)
            {
              v16 = vld1q_dup_s16(v84);
              v193 = v16;
              v195 = v16;
              v197 = v16;
              v199 = v16;
              v86 = 2;
            }

            else if (v57[4])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v193, 32, v84, v85, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v86 = 0;
              v193 = 0uLL;
              v195 = 0uLL;
              v197 = 0uLL;
              v199 = 0uLL;
            }

            v89 = v84 + v86;
            v90 = v57[5];
            if (v90 == 63)
            {
              v92 = *(v89 + 16);
              v18 = *(v89 + 32);
              v19 = *(v89 + 48);
              v93 = vuzp2q_s32(*v89, v18);
              v194 = vuzp1q_s32(*v89, v18);
              v196 = v93;
              v16 = vuzp1q_s32(v92, v19);
              v17 = vuzp2q_s32(v92, v19);
              v198 = v16;
              v200 = v17;
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v16 = vld1q_dup_s16(v89);
              v194 = v16;
              v196 = v16;
              v198 = v16;
              v200 = v16;
              v91 = 2;
            }

            else if (v57[5])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v194, 32, v89, v90, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v91 = 0;
              v194 = 0uLL;
              v196 = 0uLL;
              v198 = 0uLL;
              v200 = 0uLL;
            }

            v94 = v89 + v91;
            v95 = v57[6];
            if (v95 == 63)
            {
              v97 = *(v94 + 16);
              v18 = *(v94 + 32);
              v19 = *(v94 + 48);
              v98 = vuzp2q_s32(*v94, v18);
              v201 = vuzp1q_s32(*v94, v18);
              v203 = v98;
              v16 = vuzp1q_s32(v97, v19);
              v17 = vuzp2q_s32(v97, v19);
              v205 = v16;
              v207 = v17;
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v16 = vld1q_dup_s16(v94);
              v201 = v16;
              v203 = v16;
              v205 = v16;
              v207 = v16;
              v96 = 2;
            }

            else if (v57[6])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v201, 32, v94, v95, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
            }

            else
            {
              v96 = 0;
              v201 = 0uLL;
              v203 = 0uLL;
              v205 = 0uLL;
              v207 = 0uLL;
            }

            v99 = v94 + v96;
            v100 = v57[7];
            if (v100 == 63)
            {
              v103 = *(v99 + 16);
              v104 = *(v99 + 32);
              v105 = *(v99 + 48);
              v106 = vuzp2q_s32(*v99, v104);
              v202 = vuzp1q_s32(*v99, v104);
              v204 = v106;
              v206 = vuzp1q_s32(v103, v105);
              v208 = vuzp2q_s32(v103, v105);
              v101 = v172;
              if (v172)
              {
                goto LABEL_127;
              }
            }

            else if (v100 == 1)
            {
              v102 = vld1q_dup_s16(v99);
              v202 = v102;
              v204 = v102;
              v206 = v102;
              v208 = v102;
              v101 = v172;
              if (v172)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if (v57[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v202, 32, v99, v100, *v16.i64, *v17.i64, *v18.i64, *v19.i8);
                v101 = v172;
                if (!v172)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v202 = 0uLL;
                v204 = 0uLL;
                v206 = 0uLL;
                v208 = 0uLL;
                v101 = v172;
                if (!v172)
                {
                  goto LABEL_167;
                }
              }

LABEL_127:
              v107 = v173;
              if (!v173)
              {
                goto LABEL_167;
              }

              v108 = 32 * v170;
              v109 = 2 * v171;
              v110 = &v177.i8[v108 + v109];
              v111 = v168;
              v112 = v169;
              v113 = 2 * v173;
              v115 = v110 < v168 + v169 * (v101 - 1) + v113 && v168 < &__dst[2 * v101 + 30 + 2 * v170] + 2 * v173 + v109 || v169 < 0;
              v116 = v115;
              if (v173 <= 3)
              {
                v117 = 0;
                do
                {
                  v118 = 0;
                  do
                  {
                    v110[v118] = *(v111 + v118);
                    ++v118;
                  }

                  while (v118 < v113);
                  ++v117;
                  v110 += 32;
                  v111 += v112;
                }

                while (v117 != v101);
                goto LABEL_167;
              }

              if (v113)
              {
                v119 = (v113 - 1) >> 32;
                if (!v119)
                {
                  v120 = v113 & 0x1FFFFFFE0;
                  v121 = v113 & 0x1FFFFFFF8;
                  v122 = &v178.i8[v108 + v109];
                  v123 = (v168 + 16);
                  v124 = v110;
                  v125 = v168;
                  while (1)
                  {
                    v126 = (v111 + v119 * v112);
                    v127 = &v110[32 * v119];
                    if (v116)
                    {
                      v128 = 0;
                      goto LABEL_160;
                    }

                    if (v107 >= 0x10)
                    {
                      v130 = v123;
                      v131 = v122;
                      v132 = v113 & 0x1FFFFFFE0;
                      do
                      {
                        v133 = *v130;
                        *(v131 - 1) = *(v130 - 1);
                        *v131 = v133;
                        v131 += 32;
                        v130 += 2;
                        v132 -= 32;
                      }

                      while (v132);
                      if (v113 == v120)
                      {
                        goto LABEL_146;
                      }

                      v129 = v113 & 0x1FFFFFFE0;
                      if ((v107 & 0xC) == 0)
                      {
                        v126 += v120;
                        v127 += v120;
                        v128 = v113 & 0xFFFFFFE0;
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      v129 = 0;
                    }

                    v127 += v121;
                    v134 = v129 - (v113 & 0x1FFFFFFF8);
                    v135 = (v125 + v129);
                    v136 = &v124[v129];
                    do
                    {
                      v137 = *v135++;
                      *v136 = v137;
                      v136 += 8;
                      v134 += 8;
                    }

                    while (v134);
                    if (v113 == v121)
                    {
                      goto LABEL_146;
                    }

                    v126 += v121;
                    v128 = v113 & 0xFFFFFFF8;
LABEL_160:
                    v138 = v128 + 1;
                    do
                    {
                      v139 = *v126++;
                      *v127++ = v139;
                      v115 = v113 > v138++;
                    }

                    while (v115);
LABEL_146:
                    ++v119;
                    v122 += 32;
                    v123 = (v123 + v112);
                    v125 += v112;
                    v124 += 32;
                    if (v119 == v101)
                    {
                      goto LABEL_167;
                    }
                  }
                }
              }

              v140 = 0;
              do
              {
                v141 = 0;
                do
                {
                  v110[v141] = *(v111 + v141);
                  ++v141;
                }

                while (v113 > v141);
                ++v140;
                v110 += 32;
                v111 += v112;
              }

              while (v140 != v101);
            }

LABEL_167:
            v61 = v166;
            v62 = v167;
            v63 = v174;
            v64 = v175;
            v59 = &v177;
            v60 = 32;
LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v59, v60, v61, v62, v63, v64);
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_169;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v163)
          {
            goto LABEL_26;
          }

LABEL_169:
          memcpy(__src, v58, 0x200uLL);
LABEL_26:
          v35 = v37;
          result = v160;
        }

        while (v37 != (v154 >> 4) + 1);
        ++v20;
      }

      while (v20 != v142);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v185 = *MEMORY[0x29EDCA608];
  v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v24 = a8 >> 4;
  v146 = a8 + a10 - 1;
  v25 = v146 >> 4;
  v161 = a1;
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
  v163 = v30;
  result = a1;
  if (v24 <= v25)
  {
    v154 = a7 + a9 - 1;
    if (a7 >> 4 <= v154 >> 4)
    {
      v160 = (a5 - 1) >> 4;
      v145 = (a6 - 1) >> 4;
      v150 = (a5 - 1) & 0xF;
      v143 = ((a6 - 1) & 0xF) + 1;
      v144 = (a6 - 1) & 0xF;
      v142 = v25 + 1;
      do
      {
        v32 = (16 * v24) | 0xF;
        if (16 * v24 <= v159)
        {
          v33 = v159;
        }

        else
        {
          v33 = 16 * v24;
        }

        if (v146 < v32)
        {
          v32 = v146;
        }

        v153 = v33 - 16 * v24;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v144;
        v152 = v35;
        v37 = v35 != 16;
        v38 = v143;
        if (v24 != v145)
        {
          v38 = 16;
          v36 = v37;
        }

        v151 = v36;
        v157 = a3 + (v33 - v159) * a11;
        v158 = v38;
        v156 = v38;
        v39 = a7 >> 4;
        do
        {
          v40 = 16 * v39;
          v41 = v39 + 1;
          v42 = 16 * (v39 + 1) - 1;
          if (16 * v39 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 16 * v39;
          }

          if (v154 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v39 == v160)
          {
            v46 = v150 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v24 >= v159 && v40 >= a7)
          {
            v48 = v44 != v150;
            if (v39 != v160)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v151;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
            if (!v51)
            {
LABEL_59:
              v60 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
            if (!(v54 | v51))
            {
              goto LABEL_59;
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = v51 != 0;
          v58 = v54 != 0;
          v59 = 1;
          do
          {
            --v51;
            if (v57)
            {
              v56 |= (v59 & v39) << v55++;
            }

            else
            {
              v51 = 0;
            }

            --v54;
            if (v58)
            {
              v56 |= (v59 & v24) << v55++;
            }

            else
            {
              v54 = 0;
            }

            v59 *= 2;
            --v55;
            v58 = v54 != 0;
            v57 = v51 != 0;
          }

          while (v54 | v51);
          v60 = 8 * v56;
LABEL_60:
          v61 = (a4 + v60);
          v62 = (a2 + v24 * v147 + 384 * v39);
          __src = v62;
          if (v163)
          {
            v62 = __dst;
            if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v161;
          }

          else if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
          {
LABEL_67:
            v63 = *(*(result + 208) + 52);
            v64 = (v157 + 2 * (v43 - a7));
            v65 = a11;
            v66 = v62;
            v67 = (a4 + v60);
            v68 = v46;
            v69 = v158;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v62;
          v174 = v46;
          v175 = v158;
          v170 = v153;
          v171 = v43 - v40;
          v167 = v61;
          v168 = v157 + 2 * (v43 - a7);
          v169 = a11;
          v172 = v152;
          v173 = v45;
          if ((v47 & 1) == 0)
          {
            v70 = *(*(result + 208) + 52);
            v71 = v62 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v177, 32, v62, *v61, v70, *&v16, *&v17, v18, *&v19);
            v76 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v178, 32, v71, v61[1], v70, v72, v73, v74, v75);
            v81 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v179, 32, v76, v61[2], v70, v77, v78, v79, v80);
            v86 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v180, 32, v81, v61[3], v70, v82, v83, v84, v85);
            v91 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v181, 32, v86, v61[4], v70, v87, v88, v89, v90);
            v96 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v182, 32, v91, v61[5], v70, v92, v93, v94, v95);
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v183, 32, v96, v61[6], v70, v97, v98, v99, v100);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v184, 32, v96 + v101, v61[7], v70, v102, v103, v104, v105);
            v106 = v172;
            if (!v172)
            {
              goto LABEL_109;
            }

            v107 = v173;
            if (!v173)
            {
              goto LABEL_109;
            }

            v108 = 2 * v170;
            v109 = 2 * v171;
            v110 = &v177[v108].i8[v109];
            v111 = v168;
            v112 = v169;
            v113 = 2 * v173;
            v116 = v110 < v168 + v169 * (v172 - 1) + v113 && v168 < &__dst[2 * v172 + 30 + 2 * v170] + 2 * v173 + v109 || v169 < 0;
            if (v173 <= 3)
            {
              v117 = 0;
              do
              {
                v118 = 0;
                do
                {
                  v110[v118] = *(v111 + v118);
                  ++v118;
                }

                while (v118 < v113);
                ++v117;
                v110 += 32;
                v111 += v112;
              }

              while (v117 != v106);
              goto LABEL_109;
            }

            if (v113)
            {
              v119 = (v113 - 1) >> 32;
              if (!v119)
              {
                v120 = v113 & 0x1FFFFFFE0;
                v121 = v113 & 0x1FFFFFFF8;
                v122 = &v178[v108].i8[v109];
                v123 = (v168 + 16);
                v124 = v110;
                v125 = v168;
                while (1)
                {
                  v126 = (v111 + v119 * v112);
                  v127 = &v110[32 * v119];
                  if (v116)
                  {
                    v128 = 0;
                    goto LABEL_102;
                  }

                  if (v107 >= 0x10)
                  {
                    v130 = v123;
                    v131 = v122;
                    v132 = v113 & 0x1FFFFFFE0;
                    do
                    {
                      v16 = *(v130 - 1);
                      v17 = *v130;
                      *(v131 - 1) = v16;
                      *v131 = v17;
                      v131 += 32;
                      v130 += 2;
                      v132 -= 32;
                    }

                    while (v132);
                    if (v113 == v120)
                    {
                      goto LABEL_88;
                    }

                    v129 = v113 & 0x1FFFFFFE0;
                    if ((v107 & 0xC) == 0)
                    {
                      v126 += v120;
                      v127 += v120;
                      v128 = v113 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v129 = 0;
                  }

                  v127 += v121;
                  v133 = v129 - (v113 & 0x1FFFFFFF8);
                  v134 = (v125 + v129);
                  v135 = &v124[v129];
                  do
                  {
                    v136 = *v134++;
                    *&v16 = v136;
                    *v135 = v136;
                    v135 += 8;
                    v133 += 8;
                  }

                  while (v133);
                  if (v113 == v121)
                  {
                    goto LABEL_88;
                  }

                  v126 += v121;
                  v128 = v113 & 0xFFFFFFF8;
LABEL_102:
                  v137 = v128 + 1;
                  do
                  {
                    v138 = *v126++;
                    *v127++ = v138;
                  }

                  while (v113 > v137++);
LABEL_88:
                  ++v119;
                  v122 += 32;
                  v123 = (v123 + v112);
                  v125 += v112;
                  v124 += 32;
                  if (v119 == v106)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v140 = 0;
            do
            {
              v141 = 0;
              do
              {
                v110[v141] = *(v111 + v141);
                ++v141;
              }

              while (v113 > v141);
              ++v140;
              v110 += 32;
              v111 += v112;
            }

            while (v140 != v106);
LABEL_109:
            v66 = v166;
            v67 = v167;
            v68 = v174;
            v69 = v175;
            v63 = *(*(v161 + 208) + 52);
            v64 = v177;
            v65 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, v65, v66, v67, v68, v69, v63, *&v16, *&v17, v18, v19, v20, v21, v22, v23);
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v163)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v62, 0x200uLL);
LABEL_26:
          v39 = v41;
          result = v161;
        }

        while (v41 != (v154 >> 4) + 1);
        ++v24;
      }

      while (v24 != v142);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v185 = *MEMORY[0x29EDCA608];
  v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v24 = a8 >> 4;
  v146 = a8 + a10 - 1;
  v25 = v146 >> 4;
  v161 = a1;
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
  v163 = v30;
  result = a1;
  if (v24 <= v25)
  {
    v154 = a7 + a9 - 1;
    if (a7 >> 4 <= v154 >> 4)
    {
      v160 = (a5 - 1) >> 4;
      v145 = (a6 - 1) >> 4;
      v150 = (a5 - 1) & 0xF;
      v143 = ((a6 - 1) & 0xF) + 1;
      v144 = (a6 - 1) & 0xF;
      v142 = v25 + 1;
      do
      {
        v32 = (16 * v24) | 0xF;
        if (16 * v24 <= v159)
        {
          v33 = v159;
        }

        else
        {
          v33 = 16 * v24;
        }

        if (v146 < v32)
        {
          v32 = v146;
        }

        v153 = v33 - 16 * v24;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v144;
        v152 = v35;
        v37 = v35 != 16;
        v38 = v143;
        if (v24 != v145)
        {
          v38 = 16;
          v36 = v37;
        }

        v151 = v36;
        v157 = a3 + (v33 - v159) * a11;
        v158 = v38;
        v156 = v38;
        v39 = a7 >> 4;
        do
        {
          v40 = 16 * v39;
          v41 = v39 + 1;
          v42 = 16 * (v39 + 1) - 1;
          if (16 * v39 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 16 * v39;
          }

          if (v154 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v39 == v160)
          {
            v46 = v150 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v24 >= v159 && v40 >= a7)
          {
            v48 = v44 != v150;
            if (v39 != v160)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v151;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
            if (!v51)
            {
LABEL_59:
              v60 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
            if (!(v54 | v51))
            {
              goto LABEL_59;
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = v51 != 0;
          v58 = v54 != 0;
          v59 = 1;
          do
          {
            --v51;
            if (v57)
            {
              v56 |= (v59 & v39) << v55++;
            }

            else
            {
              v51 = 0;
            }

            --v54;
            if (v58)
            {
              v56 |= (v59 & v24) << v55++;
            }

            else
            {
              v54 = 0;
            }

            v59 *= 2;
            --v55;
            v58 = v54 != 0;
            v57 = v51 != 0;
          }

          while (v54 | v51);
          v60 = 8 * v56;
LABEL_60:
          v61 = (a4 + v60);
          v62 = (a2 + v24 * v147 + 320 * v39);
          __src = v62;
          if (v163)
          {
            v62 = __dst;
            if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v161;
          }

          else if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
          {
LABEL_67:
            v63 = *(*(result + 208) + 52);
            v64 = (v157 + 2 * (v43 - a7));
            v65 = a11;
            v66 = v62;
            v67 = (a4 + v60);
            v68 = v46;
            v69 = v158;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v62;
          v174 = v46;
          v175 = v158;
          v170 = v153;
          v171 = v43 - v40;
          v167 = v61;
          v168 = v157 + 2 * (v43 - a7);
          v169 = a11;
          v172 = v152;
          v173 = v45;
          if ((v47 & 1) == 0)
          {
            v70 = *(*(result + 208) + 52);
            v71 = v62 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v177, 32, v62, *v61, v70, *&v16, *&v17, v18, *&v19);
            v76 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v178, 32, v71, v61[1], v70, v72, v73, v74, v75);
            v81 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v179, 32, v76, v61[2], v70, v77, v78, v79, v80);
            v86 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v180, 32, v81, v61[3], v70, v82, v83, v84, v85);
            v91 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v181, 32, v86, v61[4], v70, v87, v88, v89, v90);
            v96 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v182, 32, v91, v61[5], v70, v92, v93, v94, v95);
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v183, 32, v96, v61[6], v70, v97, v98, v99, v100);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v184, 32, v96 + v101, v61[7], v70, v102, v103, v104, v105);
            v106 = v172;
            if (!v172)
            {
              goto LABEL_109;
            }

            v107 = v173;
            if (!v173)
            {
              goto LABEL_109;
            }

            v108 = 2 * v170;
            v109 = 2 * v171;
            v110 = &v177[v108].i8[v109];
            v111 = v168;
            v112 = v169;
            v113 = 2 * v173;
            v116 = v110 < v168 + v169 * (v172 - 1) + v113 && v168 < &__dst[2 * v172 + 30 + 2 * v170] + 2 * v173 + v109 || v169 < 0;
            if (v173 <= 3)
            {
              v117 = 0;
              do
              {
                v118 = 0;
                do
                {
                  v110[v118] = *(v111 + v118);
                  ++v118;
                }

                while (v118 < v113);
                ++v117;
                v110 += 32;
                v111 += v112;
              }

              while (v117 != v106);
              goto LABEL_109;
            }

            if (v113)
            {
              v119 = (v113 - 1) >> 32;
              if (!v119)
              {
                v120 = v113 & 0x1FFFFFFE0;
                v121 = v113 & 0x1FFFFFFF8;
                v122 = &v178[v108].i8[v109];
                v123 = (v168 + 16);
                v124 = v110;
                v125 = v168;
                while (1)
                {
                  v126 = (v111 + v119 * v112);
                  v127 = &v110[32 * v119];
                  if (v116)
                  {
                    v128 = 0;
                    goto LABEL_102;
                  }

                  if (v107 >= 0x10)
                  {
                    v130 = v123;
                    v131 = v122;
                    v132 = v113 & 0x1FFFFFFE0;
                    do
                    {
                      v16 = *(v130 - 1);
                      v17 = *v130;
                      *(v131 - 1) = v16;
                      *v131 = v17;
                      v131 += 32;
                      v130 += 2;
                      v132 -= 32;
                    }

                    while (v132);
                    if (v113 == v120)
                    {
                      goto LABEL_88;
                    }

                    v129 = v113 & 0x1FFFFFFE0;
                    if ((v107 & 0xC) == 0)
                    {
                      v126 += v120;
                      v127 += v120;
                      v128 = v113 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v129 = 0;
                  }

                  v127 += v121;
                  v133 = v129 - (v113 & 0x1FFFFFFF8);
                  v134 = (v125 + v129);
                  v135 = &v124[v129];
                  do
                  {
                    v136 = *v134++;
                    *&v16 = v136;
                    *v135 = v136;
                    v135 += 8;
                    v133 += 8;
                  }

                  while (v133);
                  if (v113 == v121)
                  {
                    goto LABEL_88;
                  }

                  v126 += v121;
                  v128 = v113 & 0xFFFFFFF8;
LABEL_102:
                  v137 = v128 + 1;
                  do
                  {
                    v138 = *v126++;
                    *v127++ = v138;
                  }

                  while (v113 > v137++);
LABEL_88:
                  ++v119;
                  v122 += 32;
                  v123 = (v123 + v112);
                  v125 += v112;
                  v124 += 32;
                  if (v119 == v106)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v140 = 0;
            do
            {
              v141 = 0;
              do
              {
                v110[v141] = *(v111 + v141);
                ++v141;
              }

              while (v113 > v141);
              ++v140;
              v110 += 32;
              v111 += v112;
            }

            while (v140 != v106);
LABEL_109:
            v66 = v166;
            v67 = v167;
            v68 = v174;
            v69 = v175;
            v63 = *(*(v161 + 208) + 52);
            v64 = v177;
            v65 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, v65, v66, v67, v68, v69, v63, *&v16, *&v17, v18, v19, v20, v21, v22, v23);
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v163)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v62, 0x200uLL);
LABEL_26:
          v39 = v41;
          result = v161;
        }

        while (v41 != (v154 >> 4) + 1);
        ++v24;
      }

      while (v24 != v142);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v185 = *MEMORY[0x29EDCA608];
  v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v159 = a8;
  v24 = a8 >> 4;
  v146 = a8 + a10 - 1;
  v25 = v146 >> 4;
  v161 = a1;
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
  v163 = v30;
  result = a1;
  if (v24 <= v25)
  {
    v154 = a7 + a9 - 1;
    if (a7 >> 4 <= v154 >> 4)
    {
      v160 = (a5 - 1) >> 4;
      v145 = (a6 - 1) >> 4;
      v150 = (a5 - 1) & 0xF;
      v143 = ((a6 - 1) & 0xF) + 1;
      v144 = (a6 - 1) & 0xF;
      v142 = v25 + 1;
      do
      {
        v32 = (16 * v24) | 0xF;
        if (16 * v24 <= v159)
        {
          v33 = v159;
        }

        else
        {
          v33 = 16 * v24;
        }

        if (v146 < v32)
        {
          v32 = v146;
        }

        v153 = v33 - 16 * v24;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v144;
        v152 = v35;
        v37 = v35 != 16;
        v38 = v143;
        if (v24 != v145)
        {
          v38 = 16;
          v36 = v37;
        }

        v151 = v36;
        v157 = a3 + (v33 - v159) * a11;
        v158 = v38;
        v156 = v38;
        v39 = a7 >> 4;
        do
        {
          v40 = 16 * v39;
          v41 = v39 + 1;
          v42 = 16 * (v39 + 1) - 1;
          if (16 * v39 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 16 * v39;
          }

          if (v154 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v39 == v160)
          {
            v46 = v150 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v24 >= v159 && v40 >= a7)
          {
            v48 = v44 != v150;
            if (v39 != v160)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v151;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
            if (!v51)
            {
LABEL_59:
              v60 = 0;
              goto LABEL_60;
            }
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
            if (!(v54 | v51))
            {
              goto LABEL_59;
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = v51 != 0;
          v58 = v54 != 0;
          v59 = 1;
          do
          {
            --v51;
            if (v57)
            {
              v56 |= (v59 & v39) << v55++;
            }

            else
            {
              v51 = 0;
            }

            --v54;
            if (v58)
            {
              v56 |= (v59 & v24) << v55++;
            }

            else
            {
              v54 = 0;
            }

            v59 *= 2;
            --v55;
            v58 = v54 != 0;
            v57 = v51 != 0;
          }

          while (v54 | v51);
          v60 = 8 * v56;
LABEL_60:
          v61 = (a4 + v60);
          v62 = (a2 + v24 * v147 + (v39 << 8));
          __src = v62;
          if (v163)
          {
            v62 = __dst;
            if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v161;
          }

          else if (!(v47 & 1 | (v46 < 0x10u) | (v156 < 0x10)))
          {
LABEL_67:
            v63 = *(*(result + 208) + 52);
            v64 = (v157 + 2 * (v43 - a7));
            v65 = a11;
            v66 = v62;
            v67 = (a4 + v60);
            v68 = v46;
            v69 = v158;
            goto LABEL_110;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v62;
          v174 = v46;
          v175 = v158;
          v170 = v153;
          v171 = v43 - v40;
          v167 = v61;
          v168 = v157 + 2 * (v43 - a7);
          v169 = a11;
          v172 = v152;
          v173 = v45;
          if ((v47 & 1) == 0)
          {
            v70 = *(*(result + 208) + 52);
            v71 = v62 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v177, 32, v62, *v61, v70, *&v16, *&v17, v18, *&v19);
            v76 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v178, 32, v71, v61[1], v70, v72, v73, v74, v75);
            v81 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v179, 32, v76, v61[2], v70, v77, v78, v79, v80);
            v86 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v180, 32, v81, v61[3], v70, v82, v83, v84, v85);
            v91 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v181, 32, v86, v61[4], v70, v87, v88, v89, v90);
            v96 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v182, 32, v91, v61[5], v70, v92, v93, v94, v95);
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v183, 32, v96, v61[6], v70, v97, v98, v99, v100);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v184, 32, v96 + v101, v61[7], v70, v102, v103, v104, v105);
            v106 = v172;
            if (!v172)
            {
              goto LABEL_109;
            }

            v107 = v173;
            if (!v173)
            {
              goto LABEL_109;
            }

            v108 = 2 * v170;
            v109 = 2 * v171;
            v110 = &v177[v108].i8[v109];
            v111 = v168;
            v112 = v169;
            v113 = 2 * v173;
            v116 = v110 < v168 + v169 * (v172 - 1) + v113 && v168 < &__dst[2 * v172 + 30 + 2 * v170] + 2 * v173 + v109 || v169 < 0;
            if (v173 <= 3)
            {
              v117 = 0;
              do
              {
                v118 = 0;
                do
                {
                  v110[v118] = *(v111 + v118);
                  ++v118;
                }

                while (v118 < v113);
                ++v117;
                v110 += 32;
                v111 += v112;
              }

              while (v117 != v106);
              goto LABEL_109;
            }

            if (v113)
            {
              v119 = (v113 - 1) >> 32;
              if (!v119)
              {
                v120 = v113 & 0x1FFFFFFE0;
                v121 = v113 & 0x1FFFFFFF8;
                v122 = &v178[v108].i8[v109];
                v123 = (v168 + 16);
                v124 = v110;
                v125 = v168;
                while (1)
                {
                  v126 = (v111 + v119 * v112);
                  v127 = &v110[32 * v119];
                  if (v116)
                  {
                    v128 = 0;
                    goto LABEL_102;
                  }

                  if (v107 >= 0x10)
                  {
                    v130 = v123;
                    v131 = v122;
                    v132 = v113 & 0x1FFFFFFE0;
                    do
                    {
                      v16 = *(v130 - 1);
                      v17 = *v130;
                      *(v131 - 1) = v16;
                      *v131 = v17;
                      v131 += 32;
                      v130 += 2;
                      v132 -= 32;
                    }

                    while (v132);
                    if (v113 == v120)
                    {
                      goto LABEL_88;
                    }

                    v129 = v113 & 0x1FFFFFFE0;
                    if ((v107 & 0xC) == 0)
                    {
                      v126 += v120;
                      v127 += v120;
                      v128 = v113 & 0xFFFFFFE0;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v129 = 0;
                  }

                  v127 += v121;
                  v133 = v129 - (v113 & 0x1FFFFFFF8);
                  v134 = (v125 + v129);
                  v135 = &v124[v129];
                  do
                  {
                    v136 = *v134++;
                    *&v16 = v136;
                    *v135 = v136;
                    v135 += 8;
                    v133 += 8;
                  }

                  while (v133);
                  if (v113 == v121)
                  {
                    goto LABEL_88;
                  }

                  v126 += v121;
                  v128 = v113 & 0xFFFFFFF8;
LABEL_102:
                  v137 = v128 + 1;
                  do
                  {
                    v138 = *v126++;
                    *v127++ = v138;
                  }

                  while (v113 > v137++);
LABEL_88:
                  ++v119;
                  v122 += 32;
                  v123 = (v123 + v112);
                  v125 += v112;
                  v124 += 32;
                  if (v119 == v106)
                  {
                    goto LABEL_109;
                  }
                }
              }
            }

            v140 = 0;
            do
            {
              v141 = 0;
              do
              {
                v110[v141] = *(v111 + v141);
                ++v141;
              }

              while (v113 > v141);
              ++v140;
              v110 += 32;
              v111 += v112;
            }

            while (v140 != v106);
LABEL_109:
            v66 = v166;
            v67 = v167;
            v68 = v174;
            v69 = v175;
            v63 = *(*(v161 + 208) + 52);
            v64 = v177;
            v65 = 32;
LABEL_110:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, v65, v66, v67, v68, v69, v63, *&v16, *&v17, v18, v19, v20, v21, v22, v23);
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_111;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v163)
          {
            goto LABEL_26;
          }

LABEL_111:
          memcpy(__src, v62, 0x200uLL);
LABEL_26:
          v39 = v41;
          result = v161;
        }

        while (v41 != (v154 >> 4) + 1);
        ++v24;
      }

      while (v24 != v142);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v129 = v21;
  v120 = v22;
  v121 = v23;
  v24 = v12;
  v158 = *MEMORY[0x29EDCA608];
  v119 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v133 = v14;
  v25 = v14 >> 4;
  v118 = v14 + a10 - 1;
  v26 = v118 >> 4;
  v134 = v24;
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
  v137 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v128 = v16 + a9 - 1;
    if (v16 >> 4 <= v128 >> 4)
    {
      v135 = (v20 - 1) >> 4;
      v117 = (v18 - 1) >> 4;
      v122 = (v20 - 1) & 0xF;
      v115 = ((v18 - 1) & 0xF) + 1;
      v116 = (v18 - 1) & 0xF;
      v126 = v16;
      v113 = v26 + 1;
      v114 = v16 >> 4;
      v127 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v133)
        {
          v34 = v133;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v118 < v33)
        {
          v33 = v118;
        }

        v125 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v116;
        v124 = v36;
        v38 = v36 != 16;
        v39 = v115;
        if (v25 != v117)
        {
          v39 = 16;
          v37 = v38;
        }

        v123 = v37;
        v131 = v121 + (v34 - v133) * a11;
        v132 = v39;
        v130 = v39;
        v40 = v114;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v128 < v43)
          {
            v43 = v128;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v135)
          {
            v47 = v122 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v133 && v41 >= v126)
          {
            v49 = v45 != v122;
            if (v40 != v135)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v123;
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
          v62 = (v129 + v61);
          v63 = (v131 + 8 * (v44 - v16));
          v64 = (v120 + v25 * v119 + (v40 << 11));
          __src = v64;
          if (v137)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v130 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v134;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v130 < 0x10)))
          {
LABEL_67:
            v65 = v63;
            v66 = a11;
            v67 = v64;
            v68 = (v129 + v61);
            v69 = v47;
            v70 = v132;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v139 = v64;
          v147 = v47;
          v148 = v132;
          v143 = v125;
          v144 = v44 - v41;
          v140 = v62;
          v141 = v63;
          v142 = a11;
          v145 = v124;
          v146 = v46;
          if ((v48 & 1) == 0)
          {
            v71 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v64, *v62)];
            v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v71, v62[1]);
            v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v72, v62[2]);
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v73, v62[3]);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v74, v62[4]);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v75, v62[5]);
            v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v76, v62[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v76 + v77, v62[7]);
            v78 = v145;
            if (v145)
            {
              v79 = v146;
              if (v146)
              {
                v80 = v143 << 7;
                v81 = 8 * v144;
                v82 = v150 + v80 + v81;
                v83 = v141;
                v84 = v142;
                v85 = 8 * v146;
                if ((v85 - 1) >> 32)
                {
                  v86 = 1;
                }

                else
                {
                  v86 = v85 == 0;
                }

                if (v86)
                {
                  v87 = 0;
                  do
                  {
                    v88 = 0;
                    do
                    {
                      v82[v88] = *(v83 + v88);
                      ++v88;
                    }

                    while (v85 > v88);
                    ++v87;
                    v82 += 128;
                    v83 += v84;
                  }

                  while (v87 != v78);
                }

                else
                {
                  if ((v141 >= &__dst[128 * v145 + 1920 + 128 * v143 + v85 + v81] || v82 >= v141 + v142 * (v145 - 1) + v85) && v142 >= 0)
                  {
                    v93 = 0;
                    v94 = v85 & 0x1FFFFFFE0;
                    v95 = &v150[1] + v80 + v81;
                    v96 = &v141[1];
                    v97 = v82;
                    v98 = v141;
                    while (1)
                    {
                      if (v79 >= 4)
                      {
                        v100 = v96;
                        v101 = v95;
                        v102 = v85 & 0x1FFFFFFE0;
                        do
                        {
                          v103 = *v100;
                          *(v101 - 1) = *(v100 - 1);
                          *v101 = v103;
                          v101 += 2;
                          v100 += 2;
                          v102 -= 32;
                        }

                        while (v102);
                        if (v85 == v94)
                        {
                          goto LABEL_95;
                        }

                        v99 = v85 & 0x1FFFFFFE0;
                        if ((v79 & 3) == 0)
                        {
                          v108 = &v82[128 * v93 + v94];
                          v109 = (v83 + v93 * v84 + v94);
                          v110 = (v85 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v111 = *v109++;
                            *v108++ = v111;
                          }

                          while (v85 > v110++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v99 = 0;
                      }

                      v104 = -8 * v79 + v99;
                      v105 = (v98 + v99);
                      v106 = &v97[v99];
                      do
                      {
                        v107 = *v105++;
                        *v106 = v107;
                        v106 += 8;
                        v104 += 8;
                      }

                      while (v104);
LABEL_95:
                      ++v93;
                      v95 += 128;
                      v96 = (v96 + v84);
                      v98 += v84;
                      v97 += 128;
                      if (v93 == v78)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v91 = 0;
                  do
                  {
                    v92 = 0;
                    do
                    {
                      v82[v92] = *(v83 + v92);
                      ++v92;
                    }

                    while (v85 > v92);
                    ++v91;
                    v82 += 128;
                    v83 += v84;
                  }

                  while (v91 != v78);
                }
              }
            }

LABEL_92:
            v67 = v139;
            v68 = v140;
            v69 = v147;
            v70 = v148;
            v65 = v150;
            v66 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v65, v66, v67, v68, v69, v70);
            if (!v137)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v137)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v127;
          result = v134;
        }

        while (v42 != (v128 >> 4) + 1);
        ++v25;
      }

      while (v25 != v113);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v186 = v21;
  v175 = v22;
  v176 = v23;
  v24 = v12;
  v213 = *MEMORY[0x29EDCA608];
  v174 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v188 = v14;
  v25 = v14 >> 4;
  v173 = v14 + a10 - 1;
  v26 = v173 >> 4;
  v189 = v24;
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
  v192 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v185 = v16 + a9 - 1;
    if (v16 >> 4 <= v185 >> 4)
    {
      v33 = a11;
      v190 = (v20 - 1) >> 4;
      v172 = (v18 - 1) >> 4;
      v179 = (v20 - 1) & 0xF;
      v170 = ((v18 - 1) & 0xF) + 1;
      v171 = (v18 - 1) & 0xF;
      v183 = v16;
      v168 = v26 + 1;
      v169 = v16 >> 4;
      v184 = v16;
      do
      {
        v34 = (16 * v25) | 0xF;
        if (16 * v25 <= v188)
        {
          v35 = v188;
        }

        else
        {
          v35 = 16 * v25;
        }

        if (v173 < v34)
        {
          v34 = v173;
        }

        v182 = v35 - 16 * v25;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v171;
        v181 = v37;
        if (v25 == v172)
        {
          v39 = v170;
        }

        else
        {
          v39 = 16;
        }

        if (v25 != v172)
        {
          v38 = v37 != 16;
        }

        v180 = v38;
        v187 = v176 + (v35 - v188) * v33;
        v40 = v169;
        do
        {
          v41 = 16 * v40;
          v42 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v43 = v16;
          }

          else
          {
            v43 = 16 * v40;
          }

          if (v185 < v42)
          {
            v42 = v185;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v40 == v190)
          {
            v46 = v179 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (16 * v25 >= v188 && v41 >= v183)
          {
            v48 = v44 != v179;
            if (v40 != v190)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v180;
          }

          v49 = *(result + 128) >> (*(result + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 15;
          if (v50 < 0x20)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 4) - 1)));
          }

          v52 = *(result + 132) >> (*(result + 144) + a12);
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

          v191 = v40 + 1;
          if (v54 | v51)
          {
            v55 = 0;
            v56 = 0;
            v57 = v51 != 0;
            v58 = v54 != 0;
            v59 = 1;
            do
            {
              --v51;
              if (v57)
              {
                v56 |= (v59 & v40) << v55++;
              }

              else
              {
                v51 = 0;
              }

              --v54;
              if (v58)
              {
                v56 |= (v59 & v25) << v55++;
              }

              else
              {
                v54 = 0;
              }

              v59 *= 2;
              --v55;
              v58 = v54 != 0;
              v57 = v51 != 0;
            }

            while (v54 | v51);
            v60 = 8 * v56;
          }

          else
          {
            v60 = 0;
          }

          v61 = (v186 + v60);
          v62 = v187 + 8 * (v43 - v16);
          v63 = (v175 + v25 * v174 + (v40 << 11));
          if (v192)
          {
            if (!(v47 & 1 | (v46 < 0x10u) | (v39 < 0x10u)))
            {
              v66 = __dst;
LABEL_72:
              v69 = &byte_29D2F30C1;
              v70 = 16;
              v71 = v66;
              do
              {
                v94 = *v69;
                v95 = *(v69 - 1);
                if (v46 <= 8 * v95 || 4 * v94 >= v39)
                {
                  v93 = 0;
                }

                else
                {
                  v72 = (v62 + 4 * a11 * v94 + (v95 << 6));
                  v73 = (v72 + v33);
                  v75 = *v72;
                  v76 = v72[1];
                  v77 = v72[2];
                  v78 = v72[3];
                  v74 = (v72 + 2 * a11);
                  v79 = v73[2];
                  v80 = v73[3];
                  v81 = *v73;
                  v83 = *v74;
                  v84 = v74[1];
                  v85 = v74[2];
                  v86 = v74[3];
                  v82 = (v74 + v33);
                  v87 = v76;
                  v88 = v73[1];
                  v89 = v82[1];
                  v90 = v82[2];
                  v91 = v82[3];
                  v92 = *v82;
                  *v71 = v75;
                  v71[1] = v81;
                  v71[2] = v87;
                  v71[3] = v88;
                  v71[4] = v83;
                  v71[5] = v92;
                  v71[6] = v84;
                  v71[7] = v89;
                  v71[8] = v77;
                  v71[9] = v79;
                  v71[10] = v78;
                  v71[11] = v80;
                  v71[12] = v85;
                  v71[13] = v90;
                  v71[14] = v86;
                  v71[15] = v91;
                  v71 += 16;
                  v93 = -1;
                }

                *v61++ = v93;
                v69 += 2;
                v70 -= 2;
              }

              while (v70);
LABEL_68:
              v16 = v184;
              v68 = v191;
              goto LABEL_69;
            }

            v177 = v45;
            v64 = v33;
            v65 = 16 * v40;
            memcpy(__dst, v63, sizeof(__dst));
            LODWORD(v41) = v65;
            v33 = v64;
            v45 = v177;
            v66 = __dst;
            result = v189;
          }

          else
          {
            v66 = (v175 + v25 * v174 + (v40 << 11));
            if (!(v47 & 1 | (v46 < 0x10u) | (v39 < 0x10u)))
            {
              goto LABEL_72;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v194 = v66;
          v202 = v46;
          v203 = v39;
          v198 = v182;
          v199 = v43 - v41;
          v195 = v61;
          v196 = v62;
          v197 = v33;
          v200 = v181;
          v201 = v45;
          if (v47)
          {
            v67 = v66;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v66 = v67;
            result = v189;
            goto LABEL_68;
          }

          v178 = v66;
          v97 = &v66[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v205, 128, v66, *v61)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v206, 128, v97, v61[1]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v207, 128, v98, v61[2]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v99, v61[3]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v209, 128, v100, v61[4]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v210, 128, v101, v61[5]);
          v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v211, 128, v102, v61[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v212, 128, v102 + v103, v61[7]);
          v104 = v200;
          v16 = v184;
          if (v200)
          {
            v105 = v201;
            if (v201)
            {
              v106 = v198 << 7;
              v107 = 8 * v199;
              v108 = v205 + v106 + v107;
              v109 = v196;
              v110 = v197;
              v111 = 8 * v201;
              if ((v111 - 1) >> 32)
              {
                v112 = 1;
              }

              else
              {
                v112 = v111 == 0;
              }

              if (v112)
              {
                v113 = 0;
                do
                {
                  v114 = 0;
                  do
                  {
                    v108[v114] = *(v109 + v114);
                    ++v114;
                  }

                  while (v111 > v114);
                  ++v113;
                  v108 += 128;
                  v109 += v110;
                }

                while (v113 != v104);
              }

              else
              {
                if ((v196 >= &__dst[128 * v200 + 1920 + 128 * v198 + v111 + v107] || v108 >= v196 + v197 * (v200 - 1) + v111) && v197 >= 0)
                {
                  v147 = 0;
                  v148 = v111 & 0x1FFFFFFE0;
                  v149 = &v205[1] + v106 + v107;
                  v150 = (v196 + 16);
                  v151 = v108;
                  v152 = v196;
                  v153 = -8 * v201;
                  while (1)
                  {
                    if (v105 >= 4)
                    {
                      v155 = v150;
                      v156 = v149;
                      v157 = v111 & 0x1FFFFFFE0;
                      do
                      {
                        v158 = *v155;
                        *(v156 - 1) = *(v155 - 1);
                        *v156 = v158;
                        v156 += 2;
                        v155 += 2;
                        v157 -= 32;
                      }

                      while (v157);
                      if (v111 == v148)
                      {
                        goto LABEL_112;
                      }

                      v154 = v111 & 0x1FFFFFFE0;
                      if ((v105 & 3) == 0)
                      {
                        v163 = &v108[128 * v147 + v148];
                        v164 = (v109 + v147 * v110 + v148);
                        v165 = (v111 & 0xFFFFFFE0) + 1;
                        do
                        {
                          v166 = *v164++;
                          *v163++ = v166;
                        }

                        while (v111 > v165++);
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v159 = v153 + v154;
                    v160 = (v152 + v154);
                    v161 = &v151[v154];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 8;
                      v159 += 8;
                    }

                    while (v159);
LABEL_112:
                    ++v147;
                    v149 += 128;
                    v150 = (v150 + v110);
                    v152 += v110;
                    v151 += 128;
                    if (v147 == v104)
                    {
                      goto LABEL_104;
                    }
                  }
                }

                v117 = 0;
                do
                {
                  v118 = 0;
                  do
                  {
                    v108[v118] = *(v109 + v118);
                    ++v118;
                  }

                  while (v111 > v118);
                  ++v117;
                  v108 += 128;
                  v109 += v110;
                }

                while (v117 != v104);
              }
            }
          }

LABEL_104:
          v119 = v194;
          v120 = v195;
          v121 = v202;
          v122 = &byte_29D2F30C1;
          v123 = 16;
          v124 = v203;
          result = v189;
          v68 = v191;
          v66 = v178;
          do
          {
            v144 = *v122;
            v145 = *(v122 - 1);
            if (v121 <= 8 * v145 || 4 * v144 >= v124)
            {
              v143 = 0;
            }

            else
            {
              v125 = &v205[32 * v144 + 4 * v145];
              v126 = v125[2];
              v127 = v125[10];
              v128 = v125[3];
              v129 = v125[11];
              v130 = *v125;
              v131 = v125[8];
              v132 = v125[1];
              v133 = v125[16];
              v134 = v125[17];
              v135 = v125[18];
              v136 = v125[19];
              v137 = v125[9];
              v125 += 24;
              v138 = v125[1];
              v139 = v125[2];
              v140 = v125[3];
              v141 = *v125;
              *v119 = v130;
              v119[1] = v131;
              v119[2] = v132;
              v119[3] = v137;
              v119[4] = v133;
              v119[5] = v141;
              v119[6] = v134;
              v119[7] = v138;
              v119[8] = v126;
              v119[9] = v127;
              v119[10] = v128;
              v119[11] = v129;
              v142 = v119 + 12;
              v119 += 16;
              v143 = -1;
              *v142 = v135;
              v142[1] = v139;
              v142[2] = v136;
              v142[3] = v140;
            }

            *v120++ = v143;
            v122 += 2;
            v123 -= 2;
          }

          while (v123);
LABEL_69:
          if (v192)
          {
            memcpy(v63, v66, 0x800uLL);
            result = v189;
          }

          v40 = v68;
        }

        while (v68 != (v185 >> 4) + 1);
        ++v25;
      }

      while (v25 != v168);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v159[56] = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + 1536 * v40);
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = &v152[v82 + v83];
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= &v143[v144 * (v147 - 1) + v87]) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[v82 + 16 + v83];
                    v98 = (v143 + 16);
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108++ = v109;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v159[56] = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + 1280 * v40);
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = &v152[v82 + v83];
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= &v143[v144 * (v147 - 1) + v87]) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[v82 + 16 + v83];
                    v98 = (v143 + 16);
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108++ = v109;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v131 = v21;
  v122 = v22;
  v123 = v23;
  v24 = v12;
  v159[56] = *MEMORY[0x29EDCA608];
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v135 = v14;
  v25 = v14 >> 4;
  v120 = v14 + a10 - 1;
  v26 = v120 >> 4;
  v137 = v24;
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
  v139 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v130 = v16 + a9 - 1;
    if (v16 >> 4 <= v130 >> 4)
    {
      v136 = (v20 - 1) >> 4;
      v119 = (v18 - 1) >> 4;
      v124 = (v20 - 1) & 0xF;
      v117 = ((v18 - 1) & 0xF) + 1;
      v118 = (v18 - 1) & 0xF;
      v128 = v16;
      v115 = v26 + 1;
      v116 = v16 >> 4;
      v129 = v16;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v135)
        {
          v34 = v135;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v120 < v33)
        {
          v33 = v120;
        }

        v127 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v118;
        v126 = v36;
        v38 = v36 != 16;
        v39 = v117;
        if (v25 != v119)
        {
          v39 = 16;
          v37 = v38;
        }

        v125 = v37;
        v133 = v123 + (v34 - v135) * a11;
        v134 = v39;
        v132 = v39;
        v40 = v116;
        do
        {
          v41 = 16 * v40;
          v42 = v40 + 1;
          v43 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v44 = v16;
          }

          else
          {
            v44 = 16 * v40;
          }

          if (v130 < v43)
          {
            v43 = v130;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v40 == v136)
          {
            v47 = v124 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v25 >= v135 && v41 >= v128)
          {
            v49 = v45 != v124;
            if (v40 != v136)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v125;
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
          v62 = (v131 + v61);
          v63 = (v133 + 8 * (v44 - v16));
          v64 = (v122 + v25 * v121 + (v40 << 10));
          __src = v64;
          if (v139)
          {
            v64 = __dst;
            if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
            {
              goto LABEL_67;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v137;
          }

          else if (!(v48 & 1 | (v47 < 0x10u) | (v132 < 0x10)))
          {
LABEL_67:
            v65 = *(*(result + 208) + 52);
            v66 = v63;
            v67 = a11;
            v68 = v64;
            v69 = (v131 + v61);
            v70 = v47;
            v71 = v134;
            goto LABEL_93;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v141 = v64;
          v149 = v47;
          v150 = v134;
          v145 = v127;
          v146 = v44 - v41;
          v142 = v62;
          v143 = v63;
          v144 = a11;
          v147 = v126;
          v148 = v46;
          if ((v48 & 1) == 0)
          {
            v72 = *(*(result + 208) + 52);
            v73 = &v64[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v152, 128, v64, *v62, v72)];
            v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v153, 128, v73, v62[1], v72);
            v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v154, 128, v74, v62[2], v72);
            v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v155, 128, v75, v62[3], v72);
            v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v156, 128, v76, v62[4], v72);
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v157, 128, v77, v62[5], v72);
            v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v158, 128, v78, v62[6], v72);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v159, 128, v78 + v79, v62[7], v72);
            v80 = v147;
            if (v147)
            {
              v81 = v148;
              if (v148)
              {
                v82 = v145 << 7;
                v83 = 8 * v146;
                v84 = &v152[v82 + v83];
                v85 = v143;
                v86 = v144;
                v87 = 8 * v148;
                if ((v87 - 1) >> 32)
                {
                  v88 = 1;
                }

                else
                {
                  v88 = v87 == 0;
                }

                if (v88)
                {
                  v89 = 0;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      v84[v90] = *(v85 + v90);
                      ++v90;
                    }

                    while (v87 > v90);
                    ++v89;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v89 != v80);
                }

                else
                {
                  if ((v143 >= &__dst[128 * v147 + 1920 + 128 * v145 + v87 + v83] || v84 >= &v143[v144 * (v147 - 1) + v87]) && v144 >= 0)
                  {
                    v95 = 0;
                    v96 = v87 & 0x1FFFFFFE0;
                    v97 = &v152[v82 + 16 + v83];
                    v98 = (v143 + 16);
                    v99 = v84;
                    v100 = v143;
                    while (1)
                    {
                      if (v81 >= 4)
                      {
                        v102 = v98;
                        v103 = v97;
                        v104 = v87 & 0x1FFFFFFE0;
                        do
                        {
                          v105 = *v102;
                          *(v103 - 1) = *(v102 - 1);
                          *v103 = v105;
                          v103 += 2;
                          v102 += 2;
                          v104 -= 32;
                        }

                        while (v104);
                        if (v87 == v96)
                        {
                          goto LABEL_95;
                        }

                        v101 = v87 & 0x1FFFFFFE0;
                        if ((v81 & 3) == 0)
                        {
                          v110 = &v84[128 * v95 + v96];
                          v111 = (v85 + v95 * v86 + v96);
                          v112 = (v87 & 0xFFFFFFE0) + 1;
                          do
                          {
                            v113 = *v111++;
                            *v110++ = v113;
                          }

                          while (v87 > v112++);
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v106 = -8 * v81 + v101;
                      v107 = (v100 + v101);
                      v108 = &v99[v101];
                      do
                      {
                        v109 = *v107++;
                        *v108++ = v109;
                        v106 += 8;
                      }

                      while (v106);
LABEL_95:
                      ++v95;
                      v97 += 128;
                      v98 = (v98 + v86);
                      v100 += v86;
                      v99 += 128;
                      if (v95 == v80)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

                  v93 = 0;
                  do
                  {
                    v94 = 0;
                    do
                    {
                      v84[v94] = *(v85 + v94);
                      ++v94;
                    }

                    while (v87 > v94);
                    ++v93;
                    v84 += 128;
                    v85 += v86;
                  }

                  while (v93 != v80);
                }
              }
            }

LABEL_92:
            v68 = v141;
            v69 = v142;
            v70 = v149;
            v71 = v150;
            v65 = *(*(v137 + 208) + 52);
            v66 = v152;
            v67 = 128;
LABEL_93:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v66, v67, v68, v69, v70, v71, v65);
            if (!v139)
            {
              goto LABEL_26;
            }

            goto LABEL_94;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
          if (!v139)
          {
            goto LABEL_26;
          }

LABEL_94:
          memcpy(__src, v64, 0x800uLL);
LABEL_26:
          v40 = v42;
          v16 = v129;
          result = v137;
        }

        while (v42 != (v130 >> 4) + 1);
        ++v25;
      }

      while (v25 != v115);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v63 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v56, *v54));
            v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v63, v54[1]));
            v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v64, v54[2]));
            v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v65, v54[3]));
            v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v66, v54[4]));
            v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v67, v54[5]));
            v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v68, v54[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, (v68 + v69), v54[7]);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v57, v58, v59, v60, v61, v62);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v87 = (v59 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v192, 64, v59, *v53));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v193, 64, v87, v53[1]));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v194, 64, v88, v53[2]));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v89, v53[3]));
              v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v53[4]));
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v91, v53[5]));
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v92, v53[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, (v92 + v93), v53[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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