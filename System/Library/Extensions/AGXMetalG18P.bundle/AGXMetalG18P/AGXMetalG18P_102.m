uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v63 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v56, *v54));
            v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v63, v54[1]));
            v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v64, v54[2]));
            v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v65, v54[3]));
            v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v66, v54[4]));
            v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v67, v54[5]));
            v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v68, v54[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, (v68 + v69), v54[7]);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v57, v58, v59, v60, v61, v62);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v87 = (v59 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v192, 64, v59, *v53));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v193, 64, v87, v53[1]));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v194, 64, v88, v53[2]));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v89, v53[3]));
              v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v53[4]));
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v91, v53[5]));
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v92, v53[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, (v92 + v93), v53[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v65 = &v56[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v149, 64, v56, *v54, v64)];
            v66 = v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v150, 64, v65, v54[1], v64);
            v67 = v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v151, 64, v66, v54[2], v64);
            v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v152, 64, v67, v54[3], v64);
            v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v153, 64, v68, v54[4], v64);
            v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v154, 64, v69, v54[5], v64);
            v71 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v155, 64, v70, v54[6], v64);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v156, 64, v70 + v71, v54[7], v64);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v58, v59, v60, v61, v62, v63, v57);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v78, a11, v82, v77, v49, v158, *(*(result + 208) + 52));
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v84 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v176, 256, v82, *v77, v83)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v177, 256, v84, v77[1], v83);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v180, 256, v85, v77[2], v83);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v181, 256, v86, v77[3], v83);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v178, 256, v87, v77[4], v83);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v179, 256, v88, v77[5], v83);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v182, 256, v89, v77[6], v83);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v183, 256, v89 + v90, v77[7], v83);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v176, 256, v165, v166, v173, v174, *(*(v162 + 208) + 52));
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v141 = v21;
  v142 = v22;
  v130 = v23;
  v24 = v12;
  v171 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v147 = v14;
  v25 = v14 >> 3;
  v129 = v14 + a10 - 1;
  v131 = v129 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v149 = v24;
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
  v150 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v140 = result;
  if (v25 <= v131)
  {
    v139 = v16 + a9 - 1;
    v128 = v16 >> 3;
    if (v16 >> 3 <= v139 >> 3)
    {
      result = v24;
      v148 = (v20 - 1) >> 3;
      v125 = v20 - 1;
      v132 = (v20 - 1) & 7;
      v126 = (v18 - 1) & 7;
      v127 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v136 = v35;
      v124 = 8 * v27 * v26;
      v138 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v147)
        {
          v37 = v147;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v129 < v36)
        {
          v36 = v129;
        }

        v146 = 8 * v25;
        v135 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v126;
        v134 = v39;
        v41 = v39 != 8;
        v42 = v128;
        v43 = v126 + 1;
        if (v25 != v127)
        {
          v43 = 8;
          v40 = v41;
        }

        v133 = v40;
        v144 = v130 + (v37 - v147) * a11;
        v145 = v43;
        v143 = v43;
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

          if (v139 < v45)
          {
            v45 = v139;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v148)
          {
            v49 = v132 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v146 >= v147 && v44 >= v16)
          {
            v51 = v47 != v132;
            if (v42 != v148)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v133;
          }

          if (v140)
          {
            v72 = 0;
            v73 = v124 >> (*(result + 57) != 0);
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

            v112 = (v72 >> 3) - 1;
            if (v74)
            {
              v113 = 0;
            }

            else
            {
              v113 = 32 - __clz(~(-1 << -__clz(v112)));
            }

            v114 = (v76 >> 3) - 1;
            if (v75)
            {
              v115 = 0;
              if (v113)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v115 = 32 - __clz(~(-1 << -__clz(v114)));
              if (v115 | v113)
              {
LABEL_131:
                v116 = 0;
                v117 = 0;
                v118 = v42 & v112;
                v119 = v25 & v114;
                v120 = v113 != 0;
                v121 = v115 != 0;
                v122 = 1;
                do
                {
                  --v113;
                  if (v120)
                  {
                    v117 |= (v122 & v118) << v116++;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  --v115;
                  if (v121)
                  {
                    v117 |= (v122 & v119) << v116++;
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v122 *= 2;
                  --v116;
                  v121 = v115 != 0;
                  v120 = v113 != 0;
                }

                while (v115 | v113);
                v123 = v117 << 10;
                result = v149;
                goto LABEL_143;
              }
            }

            v123 = 0;
LABEL_143:
            v59 = v123 + ((v44 / v72 + v146 / v76 * ((v72 + v125) / v72)) << 14);
            goto LABEL_52;
          }

          if (v137)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v136.i8[0];
            v56 = v136.i8[4];
            v58 = v137.i32[0];
            v57 = v137.i32[1];
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
          v77 = (v142 + v71);
          v78 = v144 + 32 * (v46 - v16);
          v79 = (v141 + v59);
          if (v150)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 8)))
            {
              v83 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v78, a11, v83, v77, v49, v145, *(*(result + 208) + 52));
              goto LABEL_86;
            }

            v80 = v49;
            v81 = (v141 + v59);
            v82 = v50;
            memcpy(__dst, (v141 + v59), sizeof(__dst));
            v44 = 8 * v42;
            v83 = __dst;
            v50 = v82;
            v79 = v81;
            LOBYTE(v49) = v80;
            result = v149;
          }

          else
          {
            v83 = (v141 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v152 = v83;
          v160 = v49;
          v161 = v145;
          v156 = v135;
          v157 = v46 - v44;
          v153 = v77;
          v154 = v78;
          v155 = a11;
          v158 = v134;
          v159 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v138;
            if (!v150)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v79, v83, 0x800uLL);
            goto LABEL_26;
          }

          v84 = *(*(result + 208) + 52);
          v85 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 256, v83, *v77, v84)];
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v165, 256, v85, v77[1], v84);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v164, 256, v86, v77[2], v84);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v166, 256, v87, v77[3], v84);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v167, 256, v88, v77[4], v84);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v169, 256, v89, v77[5], v84);
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v168, 256, v90, v77[6], v84);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v170, 256, v90 + v91, v77[7], v84);
          v92 = v158;
          v16 = v138;
          if (v158 && v159)
          {
            v93 = 0;
            v94 = v156 << 8;
            v95 = 32 * v157;
            v96 = &v163[0].i8[v94 + v95];
            v97 = v154;
            v98 = v155;
            v99 = 32 * v159;
            if (v99)
            {
              v100 = (v99 - 1) >> 32 == 0;
            }

            else
            {
              v100 = 0;
            }

            v101 = !v100;
            v103 = v96 < v154 + v155 * (v158 - 1) + v99 && v154 < &__dst[256 * v158 + 1792 + 256 * v156 + v99 + v95];
            v104 = v101 | (v155 < 0) | v103;
            v105 = &v163[1].i8[v94 + v95];
            v106 = (v154 + 16);
            do
            {
              v107 = v106;
              v108 = v105;
              v109 = v99;
              if (v104)
              {
                v110 = 0;
                do
                {
                  v96[v110] = *(v97 + v110);
                  ++v110;
                }

                while (v99 > v110);
              }

              else
              {
                do
                {
                  v111 = *v107;
                  *(v108 - 1) = *(v107 - 1);
                  *v108 = v111;
                  v108 += 32;
                  v107 += 2;
                  v109 -= 32;
                }

                while (v109);
              }

              ++v93;
              v105 += 256;
              v106 = (v106 + v98);
              v96 += 256;
              v97 += v98;
            }

            while (v93 != v92);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v163, 256, v152, v153, v160, v161, *(*(v149 + 208) + 52));
          if (v150)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v139 >> 3;
          result = v149;
        }

        while (!v29);
        v29 = v25++ == v131;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v141 = v21;
  v142 = v22;
  v130 = v23;
  v24 = v12;
  v171 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v147 = v14;
  v25 = v14 >> 2;
  v129 = v14 + a10 - 1;
  v131 = v129 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v149 = v24;
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
  v150 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v140 = result;
  if (v25 <= v131)
  {
    v139 = v16 + a9 - 1;
    v128 = v16 >> 3;
    if (v16 >> 3 <= v139 >> 3)
    {
      result = v24;
      v148 = (v20 - 1) >> 3;
      v125 = v20 - 1;
      v132 = (v20 - 1) & 7;
      v126 = (v18 - 1) & 3;
      v127 = (v18 - 1) >> 2;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v136 = v35;
      v124 = 8 * v27 * v26;
      v138 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v147)
        {
          v37 = v147;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v129 < v36)
        {
          v36 = v129;
        }

        v146 = 4 * v25;
        v135 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v126;
        v134 = v39;
        v41 = v39 != 4;
        v42 = v128;
        v43 = v126 + 1;
        if (v25 != v127)
        {
          v43 = 4;
          v40 = v41;
        }

        v133 = v40;
        v144 = v130 + (v37 - v147) * a11;
        v145 = v43;
        v143 = v43;
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

          if (v139 < v45)
          {
            v45 = v139;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v148)
          {
            v49 = v132 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v146 >= v147 && v44 >= v16)
          {
            v51 = v47 != v132;
            if (v42 != v148)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v133;
          }

          if (v140)
          {
            v72 = 0;
            v73 = v124 >> (*(result + 57) != 0);
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

            v112 = (v72 >> 3) - 1;
            v113 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v114 = 32 - __clz(~(-1 << -__clz(v112))), v115 = 32 - __clz(~(-1 << -__clz(v113))), !(v115 | v114)))
            {
              v123 = 0;
            }

            else
            {
              v116 = 0;
              v117 = 0;
              v118 = v42 & v112;
              v119 = v25 & v113;
              v120 = v115 != 0;
              v121 = v114 != 0;
              v122 = 1;
              do
              {
                --v115;
                if (v120)
                {
                  v117 |= (v122 & v119) << v116++;
                }

                else
                {
                  v115 = 0;
                }

                --v114;
                if (v121)
                {
                  v117 |= (v122 & v118) << v116++;
                }

                else
                {
                  v114 = 0;
                }

                v122 *= 2;
                --v116;
                v121 = v114 != 0;
                v120 = v115 != 0;
              }

              while (v114 | v115);
              v123 = v117 << 10;
              result = v149;
            }

            v59 = v123 + ((v44 / v72 + v146 / v75 * ((v72 + v125) / v72)) << 14);
          }

          else if (v137)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v136.i8[0];
            v55 = v136.i8[4];
            v57 = v137.i32[0];
            v58 = v137.i32[1];
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

          v64 = v63 + 3;
          if (v64 < 8)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 2) - 1)));
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
          v76 = (v142 + v71);
          v77 = v144 + ((v46 - v16) << 6);
          v78 = (v141 + v59);
          if (v150)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 4)))
            {
              v83 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v77, a11, v83, v76, v49, v145, *(*(result + 208) + 52));
              goto LABEL_86;
            }

            v79 = v49;
            v80 = v48;
            v81 = (v141 + v59);
            v82 = v50;
            memcpy(__dst, (v141 + v59), sizeof(__dst));
            v44 = 8 * v42;
            v83 = __dst;
            v50 = v82;
            v78 = v81;
            v48 = v80;
            LOBYTE(v49) = v79;
            result = v149;
          }

          else
          {
            v83 = (v141 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v152 = v83;
          v160 = v49;
          v161 = v145;
          v156 = v135;
          v157 = v46 - v44;
          v153 = v76;
          v154 = v77;
          v155 = a11;
          v158 = v134;
          v159 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v138;
            if (!v150)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v78, v83, 0x800uLL);
            goto LABEL_26;
          }

          v84 = *(*(result + 208) + 52);
          v85 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 512, v83, *v76, v84)];
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v164, 512, v85, v76[1], v84);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v167, 512, v86, v76[2], v84);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v168, 512, v87, v76[3], v84);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v165, 512, v88, v76[4], v84);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v166, 512, v89, v76[5], v84);
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v169, 512, v90, v76[6], v84);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v170, 512, v90 + v91, v76[7], v84);
          v92 = v158;
          v16 = v138;
          if (v158 && v159)
          {
            v93 = 0;
            v94 = v156 << 9;
            v95 = v157 << 6;
            v96 = &v163[0].i8[v94 + v95];
            v97 = v154;
            v98 = v155;
            v99 = v159 << 6;
            if (v99)
            {
              v100 = (v99 - 1) >> 32 == 0;
            }

            else
            {
              v100 = 0;
            }

            v101 = !v100;
            v103 = v96 < v154 + v155 * (v158 - 1) + v99 && v154 < &__dst[512 * v158 + 1536 + 512 * v156 + v99 + v95];
            v104 = v101 | (v155 < 0) | v103;
            v105 = &v163[1].i8[v94 + v95];
            v106 = (v154 + 16);
            do
            {
              v107 = v106;
              v108 = v105;
              v109 = v99;
              if (v104)
              {
                v110 = 0;
                do
                {
                  v96[v110] = *(v97 + v110);
                  ++v110;
                }

                while (v99 > v110);
              }

              else
              {
                do
                {
                  v111 = *v107;
                  *(v108 - 1) = *(v107 - 1);
                  *v108 = v111;
                  v108 += 32;
                  v107 += 2;
                  v109 -= 32;
                }

                while (v109);
              }

              ++v93;
              v105 += 512;
              v106 = (v106 + v98);
              v96 += 512;
              v97 += v98;
            }

            while (v93 != v92);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v163, 512, v152, v153, v160, v161, *(*(v149 + 208) + 52));
          if (v150)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v139 >> 3;
          result = v149;
        }

        while (!v29);
        v29 = v25++ == v131;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v246 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v17 = a8 >> 3;
  v180 = a8 + a10 - 1;
  v182 = v180 >> 3;
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
  v200 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v182)
  {
    v190 = a7 + a9 - 1;
    if (a7 >> 4 <= v190 >> 4)
    {
      v199 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v183 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 7;
      v179 = (a6 - 1) >> 3;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v26 = vcgt_u32(v25, 0x1F0000000FLL);
      *&v27 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v26);
      v188 = v27;
      v189 = v27 | DWORD1(v27);
      v187 = v26;
      v176 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v198)
        {
          v29 = v198;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v180 < v28)
        {
          v28 = v180;
        }

        v197 = 8 * v17;
        v186 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v185 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v178 + 1;
        if (v17 != v179)
        {
          v35 = 8;
          v32 = v33;
        }

        v184 = v32;
        v195 = a3 + (v29 - v198) * a11;
        v196 = v35;
        v194 = v35;
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

          if (v190 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v37 - v38 + 1;
          if (v34 == v199)
          {
            v41 = v183 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v197 >= v198 && v36 >= a7)
          {
            v43 = v39 != v183;
            if (v34 != v199)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v184;
          }

          if (isLevelTiled)
          {
            v64 = 0;
            v65 = v176 >> (*(a1 + 57) != 0);
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
                v68 = 8;
                v64 = 16;
              }
            }

            v164 = (v64 >> 4) - 1;
            if (v66)
            {
              v165 = 0;
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
            }

            v166 = (v68 >> 3) - 1;
            if (v67)
            {
              v167 = 0;
              if (v165)
              {
                goto LABEL_218;
              }
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if (v167 | v165)
              {
LABEL_218:
                v168 = 0;
                v169 = 0;
                v170 = v34 & v164;
                v171 = v17 & v166;
                v172 = v167 != 0;
                v173 = v165 != 0;
                v174 = 1;
                do
                {
                  --v167;
                  if (v172)
                  {
                    v169 |= (v174 & v171) << v168++;
                  }

                  else
                  {
                    v167 = 0;
                  }

                  --v165;
                  if (v173)
                  {
                    v169 |= (v174 & v170) << v168++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v174 *= 2;
                  --v168;
                  v173 = v165 != 0;
                  v172 = v167 != 0;
                }

                while (v165 | v167);
                v175 = v169 << 7;
                goto LABEL_230;
              }
            }

            v175 = 0;
LABEL_230:
            v51 = v175 + ((v36 / v64 + v197 / v68 * ((v64 + v177) / v64)) << 14);
            goto LABEL_52;
          }

          if (v189)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v187;
            v48 = BYTE4(v187);
            v49 = v188;
            v50 = HIDWORD(v188);
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
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
            v51 = v45 << 7;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v55 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
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
          v70 = (v195 + 2 * (v38 - a7));
          v71 = (a2 + v51);
          if (v200)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              v79 = v212;
LABEL_86:
              v80 = *(*(a1 + 208) + 52);
              v81 = a11;
              v82 = v79;
              v83 = (a4 + v63);
              v84 = v196;
              goto LABEL_197;
            }

            v72 = v71[13];
            v212[12] = v71[12];
            v212[13] = v72;
            v73 = v71[15];
            v213[0] = v71[14];
            v213[1] = v73;
            v74 = v71[9];
            v212[8] = v71[8];
            v212[9] = v74;
            v75 = v71[11];
            v212[10] = v71[10];
            v212[11] = v75;
            v76 = v71[5];
            v212[4] = v71[4];
            v212[5] = v76;
            v77 = v71[7];
            v212[6] = v71[6];
            v212[7] = v77;
            v78 = v71[1];
            v212[0] = *v71;
            v212[1] = v78;
            v27 = v71[2];
            v26 = v71[3];
            v79 = v212;
            v212[2] = v27;
            v212[3] = v26;
          }

          else
          {
            v79 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v202 = v79;
          v210 = v41;
          v211 = v196;
          v206 = v186;
          v207 = v38 - v36;
          v203 = (a4 + v63);
          v204 = v195 + 2 * (v38 - a7);
          v205 = a11;
          v208 = v185;
          v209 = v40;
          if ((v42 & 1) == 0)
          {
            v85 = *(a1 + 208);
            v86 = *(v85 + 52);
            v87 = *v69;
            if (*v69)
            {
              if (v87 < 0xF0)
              {
                if (v87 == 31)
                {
                  *&v26 = *(v79 + 1);
                  v89 = (v79 + 1);
                  v247 = vld2_f32(v89);
                  *&v27 = vzip2_s32(*v79, *&v26);
                  v214 = vzip1_s32(*v79, *&v26);
                  v218 = v27;
                  v222 = v247.val[0];
                  v226 = v247.val[1];
                  v88 = 32;
                }

                else if (v87 == 96)
                {
                  *&v27 = vdup_lane_s8(*v79, 0);
                  v214 = v27;
                  v218 = v27;
                  v222 = v27;
                  v226 = v27;
                  v88 = 1;
                }

                else
                {
                  v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v214, 32, v79, v87, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v214, 32, v79, v87, *(v85 + 52));
                v88 = 16;
              }
            }

            else
            {
              v88 = 0;
              v214 = 0;
              v218 = 0;
              v222 = 0;
              v226 = 0;
            }

            v90 = (v79 + v88);
            v91 = v69[1];
            if (v69[1])
            {
              if (v91 < 0xF0)
              {
                if (v91 == 31)
                {
                  *&v26 = v90[1];
                  v93 = &v90[2];
                  v248 = vld2_f32(v93);
                  *&v27 = vzip2_s32(*v90, *&v26);
                  v215 = vzip1_s32(*v90, *&v26);
                  v219 = v27;
                  v223 = v248.val[0];
                  v227 = v248.val[1];
                  v92 = 32;
                }

                else if (v91 == 96)
                {
                  *&v27 = vdup_lane_s8(*v90, 0);
                  v215 = v27;
                  v219 = v27;
                  v223 = v27;
                  v227 = v27;
                  v92 = 1;
                }

                else
                {
                  v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v215, 32, v90, v91, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v215, 32, v90, v91, v86);
                v92 = 16;
              }
            }

            else
            {
              v92 = 0;
              v215 = 0;
              v219 = 0;
              v223 = 0;
              v227 = 0;
            }

            v94 = (v90 + v92);
            v95 = v69[2];
            if (v69[2])
            {
              if (v95 < 0xF0)
              {
                if (v95 == 31)
                {
                  *&v26 = v94[1];
                  v97 = &v94[2];
                  v249 = vld2_f32(v97);
                  *&v27 = vzip2_s32(*v94, *&v26);
                  v230 = vzip1_s32(*v94, *&v26);
                  v234 = v27;
                  v238 = v249.val[0];
                  v242 = v249.val[1];
                  v96 = 32;
                }

                else if (v95 == 96)
                {
                  *&v27 = vdup_lane_s8(*v94, 0);
                  v230 = v27;
                  v234 = v27;
                  v238 = v27;
                  v242 = v27;
                  v96 = 1;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v230, 32, v94, v95, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v230, 32, v94, v95, v86);
                v96 = 16;
              }
            }

            else
            {
              v96 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
            }

            v98 = (v94 + v96);
            v99 = v69[3];
            if (v69[3])
            {
              if (v99 < 0xF0)
              {
                if (v99 == 31)
                {
                  *&v26 = v98[1];
                  v101 = &v98[2];
                  v250 = vld2_f32(v101);
                  *&v27 = vzip2_s32(*v98, *&v26);
                  v231 = vzip1_s32(*v98, *&v26);
                  v235 = v27;
                  v239 = v250.val[0];
                  v243 = v250.val[1];
                  v100 = 32;
                }

                else if (v99 == 96)
                {
                  *&v27 = vdup_lane_s8(*v98, 0);
                  v231 = v27;
                  v235 = v27;
                  v239 = v27;
                  v243 = v27;
                  v100 = 1;
                }

                else
                {
                  v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 32, v98, v99, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 32, v98, v99, v86);
                v100 = 16;
              }
            }

            else
            {
              v100 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
            }

            v102 = (v98 + v100);
            v103 = v69[4];
            if (v69[4])
            {
              if (v103 < 0xF0)
              {
                if (v103 == 31)
                {
                  *&v26 = v102[1];
                  v105 = &v102[2];
                  v251 = vld2_f32(v105);
                  *&v27 = vzip2_s32(*v102, *&v26);
                  v216 = vzip1_s32(*v102, *&v26);
                  v220 = v27;
                  v224 = v251.val[0];
                  v228 = v251.val[1];
                  v104 = 32;
                }

                else if (v103 == 96)
                {
                  *&v27 = vdup_lane_s8(*v102, 0);
                  v216 = v27;
                  v220 = v27;
                  v224 = v27;
                  v228 = v27;
                  v104 = 1;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v216, 32, v102, v103, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v216, 32, v102, v103, v86);
                v104 = 16;
              }
            }

            else
            {
              v104 = 0;
              v216 = 0;
              v220 = 0;
              v224 = 0;
              v228 = 0;
            }

            v106 = (v102 + v104);
            v107 = v69[5];
            if (v69[5])
            {
              if (v107 < 0xF0)
              {
                if (v107 == 31)
                {
                  *&v26 = v106[1];
                  v109 = &v106[2];
                  v252 = vld2_f32(v109);
                  *&v27 = vzip2_s32(*v106, *&v26);
                  v217 = vzip1_s32(*v106, *&v26);
                  v221 = v27;
                  v225 = v252.val[0];
                  v229 = v252.val[1];
                  v108 = 32;
                }

                else if (v107 == 96)
                {
                  *&v27 = vdup_lane_s8(*v106, 0);
                  v217 = v27;
                  v221 = v27;
                  v225 = v27;
                  v229 = v27;
                  v108 = 1;
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 32, v106, v107, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 32, v106, v107, v86);
                v108 = 16;
              }
            }

            else
            {
              v108 = 0;
              v217 = 0;
              v221 = 0;
              v225 = 0;
              v229 = 0;
            }

            v110 = (v106 + v108);
            v111 = v69[6];
            if (v69[6])
            {
              if (v111 >= 0xF0)
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v232, 32, v110, v111, v86);
                v112 = 16;
                v113 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_162;
                }

LABEL_152:
                v115 = (v110 + v112);
                if (v113 >= 0xF0)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v233, 32, v115, v113, v86);
                  v116 = v208;
                  if (!v208)
                  {
                    goto LABEL_196;
                  }

LABEL_165:
                  v120 = v209;
                  if (!v209)
                  {
                    goto LABEL_196;
                  }

                  v121 = 0;
                  v122 = 2 * v207;
                  v123 = &v214 + 32 * v206 + v122;
                  v124 = v204;
                  v125 = v205;
                  v126 = 2 * v209;
                  if (2 * v209)
                  {
                    v127 = (2 * v209 - 1) >> 32 == 0;
                  }

                  else
                  {
                    v127 = 0;
                  }

                  v128 = !v127;
                  v130 = v123 < v204 + v205 * (v116 - 1) + 2 * v209 && v204 < &v213[2 * v116 + 2 * v206] + 2 * v209 + v122;
                  v131 = v130 || v205 < 0;
                  v132 = v126 & 0x1FFFFFFE0;
                  v133 = v126 & 0x1FFFFFFF8;
                  v134 = (v209 < 4) | v128 | v131;
                  v135 = &v216 + 32 * v206 + v122;
                  v136 = (v204 + 16);
                  v137 = v123;
                  v138 = v204;
                  while (2)
                  {
                    v139 = (v124 + v121 * v125);
                    v140 = &v123[32 * v121];
                    if (v134)
                    {
                      v141 = 0;
LABEL_193:
                      v151 = v141 + 1;
                      do
                      {
                        v152 = *v139++;
                        *v140++ = v152;
                      }

                      while (v126 > v151++);
                    }

                    else
                    {
                      if (v120 >= 0x10)
                      {
                        v143 = v136;
                        v144 = v135;
                        v145 = v126 & 0x1FFFFFFE0;
                        do
                        {
                          v146 = *v143;
                          *(v144 - 1) = *(v143 - 1);
                          *v144 = v146;
                          v144 += 2;
                          v143 += 2;
                          v145 -= 32;
                        }

                        while (v145);
                        if (v126 == v132)
                        {
                          goto LABEL_179;
                        }

                        v142 = v126 & 0x1FFFFFFE0;
                        if ((v120 & 0xC) == 0)
                        {
                          v139 += v132;
                          v140 += v132;
                          v141 = v126 & 0xFFFFFFE0;
                          goto LABEL_193;
                        }
                      }

                      else
                      {
                        v142 = 0;
                      }

                      v140 += v133;
                      v147 = v142 - (v126 & 0x1FFFFFFF8);
                      v148 = (v138 + v142);
                      v149 = &v137[v142];
                      do
                      {
                        v150 = *v148++;
                        *v149 = v150;
                        v149 += 8;
                        v147 += 8;
                      }

                      while (v147);
                      if (v126 != v133)
                      {
                        v139 += v133;
                        v141 = v126 & 0xFFFFFFF8;
                        goto LABEL_193;
                      }
                    }

LABEL_179:
                    ++v121;
                    v135 += 32;
                    v136 = (v136 + v125);
                    v138 += v125;
                    v137 += 32;
                    if (v121 == v116)
                    {
                      goto LABEL_196;
                    }

                    continue;
                  }
                }

                if (v113 == 31)
                {
                  v117 = v115[1];
                  v118 = &v115[2];
                  v254 = vld2_f32(v118);
                  v119 = vzip2_s32(*v115, v117);
                  v233 = vzip1_s32(*v115, v117);
                  v237 = v119;
                  v241 = v254.val[0];
                  v245 = v254.val[1];
                  v116 = v208;
                  if (v208)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  if (v113 != 96)
                  {
                    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v233, 32, v115, v113, *&v27, *&v26);
                    v116 = v208;
                    if (!v208)
                    {
                      goto LABEL_196;
                    }

                    goto LABEL_165;
                  }

                  v233 = vdup_lane_s8(*v115, 0);
                  v237 = v233;
                  v241 = v233;
                  v245 = v233;
                  v116 = v208;
                  if (v208)
                  {
                    goto LABEL_165;
                  }
                }

LABEL_196:
                v82 = v202;
                v83 = v203;
                v41 = v210;
                v84 = v211;
                v80 = *(*(a1 + 208) + 52);
                v70 = &v214;
                v81 = 32;
LABEL_197:
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, v81, v82, v83, v41, v84, v80);
                if (!v200)
                {
                  goto LABEL_26;
                }

                goto LABEL_198;
              }

              if (v111 == 31)
              {
                *&v26 = v110[1];
                v114 = &v110[2];
                v253 = vld2_f32(v114);
                *&v27 = vzip2_s32(*v110, *&v26);
                v232 = vzip1_s32(*v110, *&v26);
                v236 = v27;
                v240 = v253.val[0];
                v244 = v253.val[1];
                v112 = 32;
                v113 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              if (v111 != 96)
              {
                v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v232, 32, v110, v111, *&v27, *&v26);
                v113 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              *&v27 = vdup_lane_s8(*v110, 0);
              v232 = v27;
              v236 = v27;
              v240 = v27;
              v244 = v27;
              v112 = 1;
              v113 = v69[7];
              if (v69[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v112 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
              v113 = v69[7];
              if (v69[7])
              {
                goto LABEL_152;
              }
            }

LABEL_162:
            v233 = 0;
            v237 = 0;
            v241 = 0;
            v245 = 0;
            v116 = v208;
            if (v208)
            {
              goto LABEL_165;
            }

            goto LABEL_196;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v200)
          {
            goto LABEL_26;
          }

LABEL_198:
          v154 = *v79;
          v155 = v79[1];
          v156 = v79[3];
          v71[2] = v79[2];
          v71[3] = v156;
          *v71 = v154;
          v71[1] = v155;
          v157 = v79[4];
          v158 = v79[5];
          v159 = v79[7];
          v71[6] = v79[6];
          v71[7] = v159;
          v71[4] = v157;
          v71[5] = v158;
          v160 = v79[8];
          v161 = v79[9];
          v162 = v79[11];
          v71[10] = v79[10];
          v71[11] = v162;
          v71[8] = v160;
          v71[9] = v161;
          v27 = v79[12];
          v26 = v79[13];
          v163 = v79[15];
          v71[14] = v79[14];
          v71[15] = v163;
          v71[12] = v27;
          v71[13] = v26;
LABEL_26:
          v21 = v34++ == v190 >> 4;
        }

        while (!v21);
        v21 = v17++ == v182;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175[52] = *MEMORY[0x29EDCA608];
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
    v133 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      result = a1;
      v153 = (a5 - 1) >> 4;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 0xF;
      v131 = (a6 - 1) & 7;
      v132 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
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
          if (v34 == v153)
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
            if (v34 != v153)
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
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
                v68 = 8;
                v64 = 16;
              }
            }

            v117 = (v64 >> 4) - 1;
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
                v125 = v120 != 0;
                v126 = v118 != 0;
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

                  --v118;
                  if (v126)
                  {
                    v122 |= (v127 & v123) << v121++;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  v127 *= 2;
                  --v121;
                  v126 = v118 != 0;
                  v125 = v120 != 0;
                }

                while (v118 | v120);
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
            v48 = v141.i8[0];
            v47 = v141.i8[4];
            v49 = v142.i32[0];
            v50 = v142.i32[1];
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

LABEL_53:
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
          v70 = v149 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v74, v69, v41, v150, *(*(result + 208) + 52));
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
            v36 = 16 * v34;
            v74 = __dst;
            v40 = v72;
            result = v154;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v76 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v168, 128, v74, *v69, v75)];
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v169, 128, v76, v69[1], v75);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v172, 128, v77, v69[2], v75);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 128, v78, v69[3], v75);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v170, 128, v79, v69[4], v75);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 128, v80, v69[5], v75);
          v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v174, 128, v81, v69[6], v75);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v175, 128, v81 + v82, v69[7], v75);
          v83 = v163;
          a7 = v143;
          if (v163)
          {
            v84 = v164;
            if (v164)
            {
              v85 = 0;
              v86 = v161 << 7;
              v87 = 8 * v162;
              v88 = &v168[v86 + v87];
              v89 = v159;
              v90 = v160;
              v91 = 8 * v164;
              if (8 * v164)
              {
                v92 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v92 = 0;
              }

              v93 = !v92;
              v95 = v88 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[128 * v163 + 896 + 128 * v161 + 8 * v164 + v87];
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
                  if (v84 < 4)
                  {
                    v108 = 0;
LABEL_116:
                    v113 = -8 * v84 + v108;
                    v114 = (v101 + v108);
                    v115 = &v100[v108];
                    do
                    {
                      v116 = *v114++;
                      *v115++ = v116;
                      v113 += 8;
                    }

                    while (v113);
                    goto LABEL_104;
                  }

                  v109 = v99;
                  v110 = v98;
                  v111 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v112 = *v109;
                    *(v110 - 1) = *(v109 - 1);
                    *v110 = v112;
                    v110 += 2;
                    v109 += 2;
                    v111 -= 32;
                  }

                  while (v111);
                  if (v91 == v96)
                  {
                    goto LABEL_104;
                  }

                  v108 = v91 & 0x1FFFFFFE0;
                  if ((v84 & 3) != 0)
                  {
                    goto LABEL_116;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v168, 128, v157, v158, v165, v166, *(*(v154 + 208) + 52));
          if (v155)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v144 >> 4;
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v310 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v229 = a8;
  v17 = a8 >> 3;
  v211 = a8 + a10 - 1;
  v213 = v211 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v231 = a1;
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
  v233 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v222 = result;
  if (v17 <= v213)
  {
    v221 = a7 + a9 - 1;
    v210 = a7 >> 4;
    if (a7 >> 4 <= v221 >> 4)
    {
      result = a1;
      v230 = (a5 - 1) >> 4;
      v207 = a5 - 1;
      v214 = (a5 - 1) & 0xF;
      v208 = (a6 - 1) & 7;
      v209 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v219 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v218 = v27;
      v206 = 8 * v19 * v18;
      v220 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v229)
        {
          v29 = v229;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v211 < v28)
        {
          v28 = v211;
        }

        v228 = 8 * v17;
        v217 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v208;
        v216 = v31;
        v33 = v31 != 8;
        v34 = v210;
        v35 = v208 + 1;
        if (v17 != v209)
        {
          v35 = 8;
          v32 = v33;
        }

        v215 = v32;
        v226 = a3 + (v29 - v229) * a11;
        v227 = v35;
        v225 = v35;
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

          if (v221 < v37)
          {
            v37 = v221;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v230)
          {
            v41 = v214 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v228 >= v229 && v36 >= a7)
          {
            v43 = v39 != v214;
            if (v34 != v230)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v215;
          }

          if (v222)
          {
            v64 = 0;
            v65 = v206 >> (*(result + 57) != 0);
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
                v68 = 8;
                v64 = 16;
              }
            }

            v194 = (v64 >> 4) - 1;
            if (v66)
            {
              v195 = 0;
            }

            else
            {
              v195 = 32 - __clz(~(-1 << -__clz(v194)));
            }

            v196 = (v68 >> 3) - 1;
            if (v67)
            {
              v197 = 0;
              if (v195)
              {
                goto LABEL_216;
              }
            }

            else
            {
              v197 = 32 - __clz(~(-1 << -__clz(v196)));
              if (v197 | v195)
              {
LABEL_216:
                v198 = 0;
                v199 = 0;
                v200 = v34 & v194;
                v201 = v17 & v196;
                v202 = v197 != 0;
                v203 = v195 != 0;
                v204 = 1;
                do
                {
                  --v197;
                  if (v202)
                  {
                    v199 |= (v204 & v201) << v198++;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  --v195;
                  if (v203)
                  {
                    v199 |= (v204 & v200) << v198++;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  v204 *= 2;
                  --v198;
                  v203 = v195 != 0;
                  v202 = v197 != 0;
                }

                while (v195 | v197);
                v205 = v199 << 9;
                result = v231;
                goto LABEL_228;
              }
            }

            v205 = 0;
LABEL_228:
            v51 = v205 + ((v36 / v64 + v228 / v68 * ((v64 + v207) / v64)) << 14);
            goto LABEL_53;
          }

          if (v219)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v218.i8[0];
            v48 = v218.i8[4];
            v49 = v219.i32[0];
            v50 = v219.i32[1];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
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
          v70 = v226 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v233)
          {
            v71 = v245;
            if (!(v42 & 1 | (v41 < 0x10u) | (v225 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v245, __dst, sizeof(v245));
            result = v231;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v225 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v227, *(*(result + 208) + 52));
LABEL_86:
            a7 = v220;
            v72 = v34 + 1;
            if (v233)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v235 = v71;
          v243 = v41;
          v244 = v227;
          v239 = v217;
          v240 = v38 - v36;
          v236 = v69;
          v237 = v70;
          v238 = a11;
          v241 = v216;
          v242 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v73 = *(result + 208);
          v74 = *(v73 + 52);
          v75 = *v69;
          if (*v69)
          {
            if (v75 < 0xF0)
            {
              if (v75 == 127)
              {
                v78 = v71[1];
                v79 = v71[2];
                v80 = v71[3];
                v81 = v71[4];
                v82 = v71[5];
                v83 = v71[6];
                v84 = v71[7];
                v246 = *v71;
                v247 = v79;
                v254 = v78;
                v255 = v80;
                v262 = v81;
                v263 = v83;
                v270 = v82;
                v271 = v84;
                v76 = 128;
              }

              else if (v75 == 3)
              {
                v77 = vld1q_dup_f32(v71->f32);
                v246 = v77;
                v247 = v77;
                v254 = v77;
                v255 = v77;
                v262 = v77;
                v263 = v77;
                v270 = v77;
                v271 = v77;
                v76 = 4;
              }

              else
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 128, v71, v75);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v246.i32, 128, v71, v75, *(v73 + 52));
              v76 = 64;
            }
          }

          else
          {
            v76 = 0;
            v247 = 0u;
            v246 = 0u;
            v254 = 0u;
            v255 = 0u;
            v262 = 0u;
            v263 = 0u;
            v270 = 0u;
            v271 = 0u;
          }

          v85 = v71 + v76;
          v86 = v69[1];
          if (v69[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 127)
              {
                v89 = *(v85 + 16);
                v90 = *(v85 + 32);
                v91 = *(v85 + 48);
                v92 = *(v85 + 64);
                v93 = *(v85 + 80);
                v94 = *(v85 + 96);
                v95 = *(v85 + 112);
                v248 = *v85;
                v249 = v90;
                v256 = v89;
                v257 = v91;
                v264 = v92;
                v265 = v94;
                v272 = v93;
                v273 = v95;
                v87 = 128;
              }

              else if (v86 == 3)
              {
                v88 = vld1q_dup_f32(v85);
                v248 = v88;
                v249 = v88;
                v256 = v88;
                v257 = v88;
                v264 = v88;
                v265 = v88;
                v272 = v88;
                v273 = v88;
                v87 = 4;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 128, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v248.i32, 128, v85, v86, v74);
              v87 = 64;
            }
          }

          else
          {
            v87 = 0;
            v248 = 0u;
            v249 = 0u;
            v256 = 0u;
            v257 = 0u;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v96 = v85 + v87;
          v97 = v69[2];
          if (v69[2])
          {
            if (v97 < 0xF0)
            {
              if (v97 == 127)
              {
                v100 = *(v96 + 16);
                v101 = *(v96 + 32);
                v102 = *(v96 + 48);
                v103 = *(v96 + 64);
                v104 = *(v96 + 80);
                v105 = *(v96 + 96);
                v106 = *(v96 + 112);
                v278 = *v96;
                v279 = v101;
                v286 = v100;
                v287 = v102;
                v294 = v103;
                v295 = v105;
                v302 = v104;
                v303 = v106;
                v98 = 128;
              }

              else if (v97 == 3)
              {
                v99 = vld1q_dup_f32(v96);
                v278 = v99;
                v279 = v99;
                v286 = v99;
                v287 = v99;
                v294 = v99;
                v295 = v99;
                v302 = v99;
                v303 = v99;
                v98 = 4;
              }

              else
              {
                v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v278, 128, v96, v97);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v278.i32, 128, v96, v97, v74);
              v98 = 64;
            }
          }

          else
          {
            v98 = 0;
            v278 = 0u;
            v279 = 0u;
            v286 = 0u;
            v287 = 0u;
            v294 = 0u;
            v295 = 0u;
            v302 = 0u;
            v303 = 0u;
          }

          v107 = v96 + v98;
          v108 = v69[3];
          if (v69[3])
          {
            if (v108 < 0xF0)
            {
              if (v108 == 127)
              {
                v111 = *(v107 + 16);
                v112 = *(v107 + 32);
                v113 = *(v107 + 48);
                v114 = *(v107 + 64);
                v115 = *(v107 + 80);
                v116 = *(v107 + 96);
                v117 = *(v107 + 112);
                v280 = *v107;
                v281 = v112;
                v288 = v111;
                v289 = v113;
                v296 = v114;
                v297 = v116;
                v304 = v115;
                v305 = v117;
                v109 = 128;
              }

              else if (v108 == 3)
              {
                v110 = vld1q_dup_f32(v107);
                v280 = v110;
                v281 = v110;
                v288 = v110;
                v289 = v110;
                v296 = v110;
                v297 = v110;
                v304 = v110;
                v305 = v110;
                v109 = 4;
              }

              else
              {
                v109 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v280, 128, v107, v108);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v280.i32, 128, v107, v108, v74);
              v109 = 64;
            }
          }

          else
          {
            v109 = 0;
            v280 = 0u;
            v281 = 0u;
            v288 = 0u;
            v289 = 0u;
            v296 = 0u;
            v297 = 0u;
            v304 = 0u;
            v305 = 0u;
          }

          v118 = v107 + v109;
          v119 = v69[4];
          if (v69[4])
          {
            if (v119 < 0xF0)
            {
              if (v119 == 127)
              {
                v122 = *(v118 + 16);
                v123 = *(v118 + 32);
                v124 = *(v118 + 48);
                v125 = *(v118 + 64);
                v126 = *(v118 + 80);
                v127 = *(v118 + 96);
                v128 = *(v118 + 112);
                v250 = *v118;
                v251 = v123;
                v258 = v122;
                v259 = v124;
                v266 = v125;
                v267 = v127;
                v274 = v126;
                v275 = v128;
                v120 = 128;
              }

              else if (v119 == 3)
              {
                v121 = vld1q_dup_f32(v118);
                v250 = v121;
                v251 = v121;
                v258 = v121;
                v259 = v121;
                v266 = v121;
                v267 = v121;
                v274 = v121;
                v275 = v121;
                v120 = 4;
              }

              else
              {
                v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v250, 128, v118, v119);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v250.i32, 128, v118, v119, v74);
              v120 = 64;
            }
          }

          else
          {
            v120 = 0;
            v250 = 0u;
            v251 = 0u;
            v258 = 0u;
            v259 = 0u;
            v266 = 0u;
            v267 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v129 = v118 + v120;
          v130 = v69[5];
          if (v69[5])
          {
            if (v130 < 0xF0)
            {
              if (v130 == 127)
              {
                v133 = *(v129 + 16);
                v134 = *(v129 + 32);
                v135 = *(v129 + 48);
                v136 = *(v129 + 64);
                v137 = *(v129 + 80);
                v138 = *(v129 + 96);
                v139 = *(v129 + 112);
                v252 = *v129;
                v253 = v134;
                v260 = v133;
                v261 = v135;
                v268 = v136;
                v269 = v138;
                v276 = v137;
                v277 = v139;
                v131 = 128;
              }

              else if (v130 == 3)
              {
                v132 = vld1q_dup_f32(v129);
                v252 = v132;
                v253 = v132;
                v260 = v132;
                v261 = v132;
                v268 = v132;
                v269 = v132;
                v276 = v132;
                v277 = v132;
                v131 = 4;
              }

              else
              {
                v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v252, 128, v129, v130);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v252.i32, 128, v129, v130, v74);
              v131 = 64;
            }
          }

          else
          {
            v131 = 0;
            v252 = 0u;
            v253 = 0u;
            v260 = 0u;
            v261 = 0u;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v140 = v129 + v131;
          v141 = v69[6];
          if (v69[6])
          {
            if (v141 < 0xF0)
            {
              if (v141 == 127)
              {
                v180 = *(v140 + 16);
                v181 = *(v140 + 32);
                v182 = *(v140 + 48);
                v183 = *(v140 + 64);
                v184 = *(v140 + 80);
                v185 = *(v140 + 96);
                v186 = *(v140 + 112);
                v282 = *v140;
                v283 = v181;
                v290 = v180;
                v291 = v182;
                v298 = v183;
                v299 = v185;
                v306 = v184;
                v307 = v186;
                v142 = 128;
                v143 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v141 == 3)
              {
                v178 = vld1q_dup_f32(v140);
                v282 = v178;
                v283 = v178;
                v290 = v178;
                v291 = v178;
                v298 = v178;
                v299 = v178;
                v306 = v178;
                v307 = v178;
                v142 = 4;
                v143 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v282, 128, v140, v141);
                v143 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v284 = 0u;
                  v285 = 0u;
                  v292 = 0u;
                  v293 = 0u;
                  v300 = 0u;
                  v301 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v282.i32, 128, v140, v141, v74);
              v142 = 64;
              v143 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v142 = 0;
            v282 = 0u;
            v283 = 0u;
            v290 = 0u;
            v291 = 0u;
            v298 = 0u;
            v299 = 0u;
            v306 = 0u;
            v307 = 0u;
            v143 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v144 = v140 + v142;
          if (v143 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v284.i32, 128, v144, v143, v74);
LABEL_149:
            a7 = v220;
LABEL_150:
            v72 = v34 + 1;
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }

            goto LABEL_151;
          }

          a7 = v220;
          if (v143 == 127)
          {
            v187 = *(v144 + 16);
            v188 = *(v144 + 32);
            v189 = *(v144 + 48);
            v190 = *(v144 + 80);
            v191 = *(v144 + 96);
            v192 = *(v144 + 112);
            v193 = *(v144 + 64);
            v284 = *v144;
            v285 = v188;
            v292 = v187;
            v293 = v189;
            v300 = v193;
            v301 = v191;
            v308 = v190;
            v309 = v192;
            goto LABEL_150;
          }

          v72 = v34 + 1;
          if (v143 == 3)
          {
            v179 = vld1q_dup_f32(v144);
            v284 = v179;
            v285 = v179;
            v292 = v179;
            v293 = v179;
            v300 = v179;
            v301 = v179;
            v308 = v179;
            v309 = v179;
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v284, 128, v144, v143);
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }
          }

LABEL_151:
          v146 = v242;
          if (v242)
          {
            v147 = 0;
            v148 = 8 * v240;
            v149 = &v246.i8[128 * v239 + v148];
            v150 = v237;
            v151 = v238;
            v152 = 8 * v242;
            if (8 * v242)
            {
              v153 = (8 * v242 - 1) >> 32 == 0;
            }

            else
            {
              v153 = 0;
            }

            v154 = !v153;
            v156 = v149 < v237 + v238 * (v145 - 1) + 8 * v242 && v237 < &v245[128 * v145 + 896 + 128 * v239 + 8 * v242 + v148];
            v157 = v152 & 0x1FFFFFFE0;
            v158 = v154 | (v238 < 0) | v156;
            v159 = &v247 + 128 * v239 + v148;
            v160 = (v237 + 16);
            v161 = v149;
            v162 = v237;
            do
            {
              v163 = (v150 + v147 * v151);
              v164 = &v149[128 * v147];
              if (v158)
              {
                v165 = 0;
              }

              else
              {
                if (v146 < 4)
                {
                  v169 = 0;
LABEL_177:
                  v174 = -8 * v146 + v169;
                  v175 = (v162 + v169);
                  v176 = &v161[v169];
                  do
                  {
                    v177 = *v175++;
                    *v176 = v177;
                    v176 += 8;
                    v174 += 8;
                  }

                  while (v174);
                  goto LABEL_165;
                }

                v170 = v160;
                v171 = v159;
                v172 = v152 & 0x1FFFFFFE0;
                do
                {
                  v173 = *v170;
                  *(v171 - 1) = *(v170 - 1);
                  *v171 = v173;
                  v171 += 2;
                  v170 += 2;
                  v172 -= 32;
                }

                while (v172);
                if (v152 == v157)
                {
                  goto LABEL_165;
                }

                v169 = v152 & 0x1FFFFFFE0;
                if ((v146 & 3) != 0)
                {
                  goto LABEL_177;
                }

                v163 += v157;
                v164 += v157;
                v165 = v152 & 0xFFFFFFE0;
              }

              v166 = v165 + 1;
              do
              {
                v167 = *v163++;
                *v164++ = v167;
              }

              while (v152 > v166++);
LABEL_165:
              ++v147;
              v159 += 128;
              v160 = (v160 + v151);
              v162 += v151;
              v161 += 128;
            }

            while (v147 != v145);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v246, 128, v235, v236, v243, v244, *(*(v231 + 208) + 52));
          if (v233)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34 == v221 >> 4;
          v34 = v72;
          result = v231;
        }

        while (!v21);
        v21 = v17++ == v213;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v231 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v182 = a8;
  v17 = a8 >> 3;
  v163 = a8 + a10 - 1;
  v165 = v163 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v184 = a1;
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
  v186 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v175 = result;
  if (v17 <= v165)
  {
    v174 = a7 + a9 - 1;
    v162 = a7 >> 4;
    if (a7 >> 4 <= v174 >> 4)
    {
      result = a1;
      v183 = (a5 - 1) >> 4;
      v159 = a5 - 1;
      v166 = (a5 - 1) & 0xF;
      v160 = (a6 - 1) & 7;
      v161 = (a6 - 1) >> 3;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v31.i8 = vcgt_u32(v30, 0x1F0000000FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v31.i8);
      v171 = v34.i64[0];
      v172 = v34.i32[0] | v34.i32[1];
      v170 = v31.i64[0];
      v158 = 8 * v19 * v18;
      v173 = a7;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v182)
        {
          v36 = v182;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v163 < v35)
        {
          v35 = v163;
        }

        v181 = 8 * v17;
        v169 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v160;
        v168 = v38;
        v40 = v38 != 8;
        v41 = v162;
        v42 = v160 + 1;
        if (v17 != v161)
        {
          v42 = 8;
          v39 = v40;
        }

        v167 = v39;
        v179 = a3 + (v36 - v182) * a11;
        v180 = v42;
        v178 = v42;
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

          if (v174 < v44)
          {
            v44 = v174;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v183)
          {
            v48 = v166 + 1;
          }

          else
          {
            v48 = 16;
          }

          v49 = 1;
          if (v181 >= v182 && v43 >= a7)
          {
            v50 = v46 != v166;
            if (v41 != v183)
            {
              v50 = v47 != 16;
            }

            v49 = v50 || v167;
          }

          if (v175)
          {
            v71 = 0;
            v72 = v158 >> (*(result + 57) != 0);
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
                v75 = 8;
                v71 = 16;
              }
            }

            v146 = (v71 >> 4) - 1;
            if (v73)
            {
              v147 = 0;
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
            }

            v148 = (v75 >> 3) - 1;
            if (v74)
            {
              v149 = 0;
              if (v147)
              {
                goto LABEL_217;
              }
            }

            else
            {
              v149 = 32 - __clz(~(-1 << -__clz(v148)));
              if (v149 | v147)
              {
LABEL_217:
                v150 = 0;
                v151 = 0;
                v152 = v41 & v146;
                v153 = v17 & v148;
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
                v157 = v151 << 8;
                result = v184;
                goto LABEL_229;
              }
            }

            v157 = 0;
LABEL_229:
            v58 = v157 + ((v43 / v71 + v181 / v75 * ((v71 + v159) / v71)) << 14);
            goto LABEL_53;
          }

          if (v172)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v170;
            v54 = BYTE4(v170);
            v56 = v171;
            v57 = HIDWORD(v171);
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v17) << v51++;
              }

              else
              {
                v56 = 0;
              }

              --v57;
              if (v54)
              {
                v52 |= (v53 & v41) << v51++;
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

LABEL_53:
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
            if (!v61)
            {
LABEL_78:
              v70 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
            if (!(v64 | v61))
            {
              goto LABEL_78;
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
LABEL_79:
          v76 = (a4 + v70);
          v77 = v179 + 4 * (v45 - a7);
          v78 = (a2 + v58);
          __dst = (a2 + v58);
          if (v186)
          {
            v78 = v198;
            if (!(v49 & 1 | (v48 < 0x10u) | (v178 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v198, __dst, sizeof(v198));
            result = v184;
          }

          else if (!(v49 & 1 | (v48 < 0x10u) | (v178 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v77, a11, v78, v76, v48, v180, *(*(result + 208) + 52), *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i8, v27, v28, v29);
LABEL_86:
            a7 = v173;
            if (v186)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v188 = v78;
          v196 = v48;
          v197 = v180;
          v192 = v169;
          v193 = v45 - v43;
          v189 = v76;
          v190 = v77;
          v191 = a11;
          v194 = v168;
          v195 = v47;
          if (v49)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v76;
          if (*v76)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 63)
              {
                v31 = *(v78 + 1);
                v83 = (v78 + 32);
                *v32.i8 = vld2q_f64(v83);
                v26 = vzip1q_s64(*v78, v31);
                v34 = vzip2q_s64(*v78, v31);
                v199 = v26;
                v203 = v34;
                v207 = v32;
                v211 = v33;
                v82 = 64;
              }

              else if (v81 == 1)
              {
                v34 = vld1q_dup_s16(v78);
                v199 = v34;
                v203 = v34;
                v207 = v34;
                v211 = v34;
                v82 = 2;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v199, 64, v78, v81, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v199.i16, 64, v78, v81, *(v79 + 52));
              v82 = 32;
            }
          }

          else
          {
            v82 = 0;
            v199 = 0uLL;
            v203 = 0uLL;
            v207 = 0uLL;
            v211 = 0uLL;
          }

          v84 = &v78[v82];
          v85 = v76[1];
          if (v76[1])
          {
            if (v85 < 0xF0)
            {
              if (v85 == 63)
              {
                v31 = *(v84 + 16);
                v87 = (v84 + 32);
                *v32.i8 = vld2q_f64(v87);
                v26 = vzip1q_s64(*v84, v31);
                v34 = vzip2q_s64(*v84, v31);
                v200 = v26;
                v204 = v34;
                v208 = v32;
                v212 = v33;
                v86 = 64;
              }

              else if (v85 == 1)
              {
                v34 = vld1q_dup_s16(v84);
                v200 = v34;
                v204 = v34;
                v208 = v34;
                v212 = v34;
                v86 = 2;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v200, 64, v84, v85, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v200.i16, 64, v84, v85, v80);
              v86 = 32;
            }
          }

          else
          {
            v86 = 0;
            v200 = 0uLL;
            v204 = 0uLL;
            v208 = 0uLL;
            v212 = 0uLL;
          }

          v88 = v84 + v86;
          v89 = v76[2];
          if (v76[2])
          {
            if (v89 < 0xF0)
            {
              if (v89 == 63)
              {
                v31 = *(v88 + 16);
                v91 = (v88 + 32);
                *v32.i8 = vld2q_f64(v91);
                v26 = vzip1q_s64(*v88, v31);
                v34 = vzip2q_s64(*v88, v31);
                v215 = v26;
                v219 = v34;
                v223 = v32;
                v227 = v33;
                v90 = 64;
              }

              else if (v89 == 1)
              {
                v34 = vld1q_dup_s16(v88);
                v215 = v34;
                v219 = v34;
                v223 = v34;
                v227 = v34;
                v90 = 2;
              }

              else
              {
                v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v215, 64, v88, v89, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v215.i16, 64, v88, v89, v80);
              v90 = 32;
            }
          }

          else
          {
            v90 = 0;
            v215 = 0uLL;
            v219 = 0uLL;
            v223 = 0uLL;
            v227 = 0uLL;
          }

          v92 = v88 + v90;
          v93 = v76[3];
          if (v76[3])
          {
            if (v93 < 0xF0)
            {
              if (v93 == 63)
              {
                v31 = *(v92 + 16);
                v95 = (v92 + 32);
                *v32.i8 = vld2q_f64(v95);
                v26 = vzip1q_s64(*v92, v31);
                v34 = vzip2q_s64(*v92, v31);
                v216 = v26;
                v220 = v34;
                v224 = v32;
                v228 = v33;
                v94 = 64;
              }

              else if (v93 == 1)
              {
                v34 = vld1q_dup_s16(v92);
                v216 = v34;
                v220 = v34;
                v224 = v34;
                v228 = v34;
                v94 = 2;
              }

              else
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v216, 64, v92, v93, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v216.i16, 64, v92, v93, v80);
              v94 = 32;
            }
          }

          else
          {
            v94 = 0;
            v216 = 0uLL;
            v220 = 0uLL;
            v224 = 0uLL;
            v228 = 0uLL;
          }

          v96 = v92 + v94;
          v97 = v76[4];
          if (v76[4])
          {
            if (v97 < 0xF0)
            {
              if (v97 == 63)
              {
                v31 = *(v96 + 16);
                v99 = (v96 + 32);
                *v32.i8 = vld2q_f64(v99);
                v26 = vzip1q_s64(*v96, v31);
                v34 = vzip2q_s64(*v96, v31);
                v201 = v26;
                v205 = v34;
                v209 = v32;
                v213 = v33;
                v98 = 64;
              }

              else if (v97 == 1)
              {
                v34 = vld1q_dup_s16(v96);
                v201 = v34;
                v205 = v34;
                v209 = v34;
                v213 = v34;
                v98 = 2;
              }

              else
              {
                v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v201, 64, v96, v97, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v201.i16, 64, v96, v97, v80);
              v98 = 32;
            }
          }

          else
          {
            v98 = 0;
            v201 = 0uLL;
            v205 = 0uLL;
            v209 = 0uLL;
            v213 = 0uLL;
          }

          v100 = v96 + v98;
          v101 = v76[5];
          if (v76[5])
          {
            if (v101 < 0xF0)
            {
              if (v101 == 63)
              {
                v31 = *(v100 + 16);
                v103 = (v100 + 32);
                *v32.i8 = vld2q_f64(v103);
                v26 = vzip1q_s64(*v100, v31);
                v34 = vzip2q_s64(*v100, v31);
                v202 = v26;
                v206 = v34;
                v210 = v32;
                v214 = v33;
                v102 = 64;
              }

              else if (v101 == 1)
              {
                v34 = vld1q_dup_s16(v100);
                v202 = v34;
                v206 = v34;
                v210 = v34;
                v214 = v34;
                v102 = 2;
              }

              else
              {
                v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v202, 64, v100, v101, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v202.i16, 64, v100, v101, v80);
              v102 = 32;
            }
          }

          else
          {
            v102 = 0;
            v202 = 0uLL;
            v206 = 0uLL;
            v210 = 0uLL;
            v214 = 0uLL;
          }

          v104 = v100 + v102;
          v105 = v76[6];
          if (v76[6])
          {
            if (v105 < 0xF0)
            {
              if (v105 == 63)
              {
                v31 = *(v104 + 16);
                v144 = (v104 + 32);
                *v32.i8 = vld2q_f64(v144);
                v26 = vzip1q_s64(*v104, v31);
                v34 = vzip2q_s64(*v104, v31);
                v217 = v26;
                v221 = v34;
                v225 = v32;
                v229 = v33;
                v106 = 64;
                v107 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v105 == 1)
              {
                v34 = vld1q_dup_s16(v104);
                v217 = v34;
                v221 = v34;
                v225 = v34;
                v229 = v34;
                v106 = 2;
                v107 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 64, v104, v105, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
                v107 = v76[7];
                if (!v76[7])
                {
LABEL_145:
                  v218 = 0uLL;
                  v222 = 0uLL;
                  v226 = 0uLL;
                  v230 = 0uLL;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v217.i16, 64, v104, v105, v80);
              v106 = 32;
              v107 = v76[7];
              if (!v76[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v106 = 0;
            v217 = 0uLL;
            v221 = 0uLL;
            v225 = 0uLL;
            v229 = 0uLL;
            v107 = v76[7];
            if (!v76[7])
            {
              goto LABEL_145;
            }
          }

          v108 = v104 + v106;
          if (v107 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v218.i16, 64, v108, v107, v80);
LABEL_149:
            a7 = v173;
            v109 = v194;
            if (!v194)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v173;
          if (v107 == 63)
          {
            v31 = *(v108 + 16);
            v145 = (v108 + 32);
            *v32.i8 = vld2q_f64(v145);
            v26 = vzip1q_s64(*v108, v31);
            v34 = vzip2q_s64(*v108, v31);
            v218 = v26;
            v222 = v34;
            v226 = v32;
            v230 = v33;
            v109 = v194;
            if (!v194)
            {
              goto LABEL_196;
            }
          }

          else if (v107 == 1)
          {
            v34 = vld1q_dup_s16(v108);
            v218 = v34;
            v222 = v34;
            v226 = v34;
            v230 = v34;
            v109 = v194;
            if (!v194)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v218, 64, v108, v107, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            v109 = v194;
            if (!v194)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v110 = v195;
          if (v195)
          {
            v111 = 0;
            v112 = v192 << 6;
            v113 = 4 * v193;
            v114 = &v199.i8[v112 + v113];
            v115 = v190;
            v116 = v191;
            v117 = 4 * v195;
            if (4 * v195)
            {
              v118 = (4 * v195 - 1) >> 32 == 0;
            }

            else
            {
              v118 = 0;
            }

            v119 = !v118;
            v121 = v114 < &v190->i8[4 * v195 + v191 * (v109 - 1)] && v190 < &v198[64 * v109 + 448 + 64 * v192 + 4 * v195 + v113];
            v122 = v121 || v191 < 0;
            v123 = v117 & 0x1FFFFFFE0;
            v124 = v117 & 0x1FFFFFFF8;
            v125 = (v195 == 1) | v119 | v122;
            v126 = &v200.i8[v112 + v113];
            v127 = v190 + 1;
            v128 = v114;
            v129 = v190;
            do
            {
              v130 = (v115 + v111 * v116);
              v131 = &v114[64 * v111];
              if (v125)
              {
                v132 = 0;
                goto LABEL_178;
              }

              if (v110 >= 8)
              {
                v134 = v127;
                v135 = v126;
                v136 = v117 & 0x1FFFFFFE0;
                do
                {
                  v34 = v134[-1];
                  v31 = *v134;
                  v135[-1] = v34;
                  *v135 = v31;
                  v135 += 2;
                  v134 += 2;
                  v136 -= 32;
                }

                while (v136);
                if (v117 == v123)
                {
                  goto LABEL_164;
                }

                v133 = v117 & 0x1FFFFFFE0;
                if ((v110 & 6) == 0)
                {
                  v130 += v123;
                  v131 += v123;
                  v132 = v117 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v133 = 0;
              }

              v131 += v124;
              v137 = -8 * ((v110 >> 1) & 0x3FFFFFFF) + v133;
              v138 = (v129 + v133);
              v139 = &v128[v133];
              do
              {
                v140 = *v138++;
                v34.i64[0] = v140;
                *v139++ = v140;
                v137 += 8;
              }

              while (v137);
              if (v117 == v124)
              {
                goto LABEL_164;
              }

              v130 += v124;
              v132 = v117 & 0xFFFFFFF8;
LABEL_178:
              v141 = v132 + 1;
              do
              {
                v142 = *v130++;
                *v131++ = v142;
              }

              while (v117 > v141++);
LABEL_164:
              ++v111;
              v126 += 64;
              v127 = (v127 + v116);
              v129 += v116;
              v128 += 64;
            }

            while (v111 != v109);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v199, 64, v188, v189, v196, v197, *(*(v184 + 208) + 52), *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i8, v27, v28, v29);
          if (v186)
          {
LABEL_26:
            memcpy(__dst, v78, 0x200uLL);
          }

LABEL_27:
          v21 = v41++ == v174 >> 4;
          result = v184;
        }

        while (!v21);
        v21 = v17++ == v165;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175[52] = *MEMORY[0x29EDCA608];
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
    v133 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      result = a1;
      v153 = (a5 - 1) >> 4;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 0xF;
      v131 = (a6 - 1) & 7;
      v132 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
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
          if (v34 == v153)
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
            if (v34 != v153)
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
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
                v68 = 8;
                v64 = 16;
              }
            }

            v117 = (v64 >> 4) - 1;
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
                v125 = v120 != 0;
                v126 = v118 != 0;
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

                  --v118;
                  if (v126)
                  {
                    v122 |= (v127 & v123) << v121++;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  v127 *= 2;
                  --v121;
                  v126 = v118 != 0;
                  v125 = v120 != 0;
                }

                while (v118 | v120);
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
            v48 = v141.i8[0];
            v47 = v141.i8[4];
            v49 = v142.i32[0];
            v50 = v142.i32[1];
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

LABEL_53:
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
          v70 = v149 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v74, v69, v41, v150, *(*(result + 208) + 52));
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
            v36 = 16 * v34;
            v74 = __dst;
            v40 = v72;
            result = v154;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v76 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v168, 128, v74, *v69, v75)];
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v169, 128, v76, v69[1], v75);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v172, 128, v77, v69[2], v75);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 128, v78, v69[3], v75);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v170, 128, v79, v69[4], v75);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 128, v80, v69[5], v75);
          v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v174, 128, v81, v69[6], v75);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v175, 128, v81 + v82, v69[7], v75);
          v83 = v163;
          a7 = v143;
          if (v163)
          {
            v84 = v164;
            if (v164)
            {
              v85 = 0;
              v86 = v161 << 7;
              v87 = 8 * v162;
              v88 = &v168[v86 + v87];
              v89 = v159;
              v90 = v160;
              v91 = 8 * v164;
              if (8 * v164)
              {
                v92 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v92 = 0;
              }

              v93 = !v92;
              v95 = v88 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[128 * v163 + 896 + 128 * v161 + 8 * v164 + v87];
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
                  if (v84 < 4)
                  {
                    v108 = 0;
LABEL_116:
                    v113 = -8 * v84 + v108;
                    v114 = (v101 + v108);
                    v115 = &v100[v108];
                    do
                    {
                      v116 = *v114++;
                      *v115++ = v116;
                      v113 += 8;
                    }

                    while (v113);
                    goto LABEL_104;
                  }

                  v109 = v99;
                  v110 = v98;
                  v111 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v112 = *v109;
                    *(v110 - 1) = *(v109 - 1);
                    *v110 = v112;
                    v110 += 2;
                    v109 += 2;
                    v111 -= 32;
                  }

                  while (v111);
                  if (v91 == v96)
                  {
                    goto LABEL_104;
                  }

                  v108 = v91 & 0x1FFFFFFE0;
                  if ((v84 & 3) != 0)
                  {
                    goto LABEL_116;
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v168, 128, v157, v158, v165, v166, *(*(v154 + 208) + 52));
          if (v155)
          {
LABEL_26:
            memcpy(v71, v74, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v144 >> 4;
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v310 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v229 = a8;
  v17 = a8 >> 3;
  v211 = a8 + a10 - 1;
  v213 = v211 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v231 = a1;
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
  v233 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v222 = result;
  if (v17 <= v213)
  {
    v221 = a7 + a9 - 1;
    v210 = a7 >> 4;
    if (a7 >> 4 <= v221 >> 4)
    {
      result = a1;
      v230 = (a5 - 1) >> 4;
      v207 = a5 - 1;
      v214 = (a5 - 1) & 0xF;
      v208 = (a6 - 1) & 7;
      v209 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v219 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v218 = v27;
      v206 = 8 * v19 * v18;
      v220 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v229)
        {
          v29 = v229;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v211 < v28)
        {
          v28 = v211;
        }

        v228 = 8 * v17;
        v217 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v208;
        v216 = v31;
        v33 = v31 != 8;
        v34 = v210;
        v35 = v208 + 1;
        if (v17 != v209)
        {
          v35 = 8;
          v32 = v33;
        }

        v215 = v32;
        v226 = a3 + (v29 - v229) * a11;
        v227 = v35;
        v225 = v35;
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

          if (v221 < v37)
          {
            v37 = v221;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v230)
          {
            v41 = v214 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v228 >= v229 && v36 >= a7)
          {
            v43 = v39 != v214;
            if (v34 != v230)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v215;
          }

          if (v222)
          {
            v64 = 0;
            v65 = v206 >> (*(result + 57) != 0);
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
                v68 = 8;
                v64 = 16;
              }
            }

            v194 = (v64 >> 4) - 1;
            if (v66)
            {
              v195 = 0;
            }

            else
            {
              v195 = 32 - __clz(~(-1 << -__clz(v194)));
            }

            v196 = (v68 >> 3) - 1;
            if (v67)
            {
              v197 = 0;
              if (v195)
              {
                goto LABEL_216;
              }
            }

            else
            {
              v197 = 32 - __clz(~(-1 << -__clz(v196)));
              if (v197 | v195)
              {
LABEL_216:
                v198 = 0;
                v199 = 0;
                v200 = v34 & v194;
                v201 = v17 & v196;
                v202 = v197 != 0;
                v203 = v195 != 0;
                v204 = 1;
                do
                {
                  --v197;
                  if (v202)
                  {
                    v199 |= (v204 & v201) << v198++;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  --v195;
                  if (v203)
                  {
                    v199 |= (v204 & v200) << v198++;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  v204 *= 2;
                  --v198;
                  v203 = v195 != 0;
                  v202 = v197 != 0;
                }

                while (v195 | v197);
                v205 = v199 << 9;
                result = v231;
                goto LABEL_228;
              }
            }

            v205 = 0;
LABEL_228:
            v51 = v205 + ((v36 / v64 + v228 / v68 * ((v64 + v207) / v64)) << 14);
            goto LABEL_53;
          }

          if (v219)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v218.i8[0];
            v48 = v218.i8[4];
            v49 = v219.i32[0];
            v50 = v219.i32[1];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
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
          v70 = v226 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v233)
          {
            v71 = v245;
            if (!(v42 & 1 | (v41 < 0x10u) | (v225 < 8)))
            {
              goto LABEL_85;
            }

            memcpy(v245, __dst, sizeof(v245));
            result = v231;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v225 < 8)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v227, *(*(result + 208) + 52));
LABEL_86:
            a7 = v220;
            v72 = v34 + 1;
            if (v233)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v235 = v71;
          v243 = v41;
          v244 = v227;
          v239 = v217;
          v240 = v38 - v36;
          v236 = v69;
          v237 = v70;
          v238 = a11;
          v241 = v216;
          v242 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v73 = *(result + 208);
          v74 = *(v73 + 52);
          v75 = *v69;
          if (*v69)
          {
            if (v75 < 0xF0)
            {
              if (v75 == 127)
              {
                v78 = v71[1];
                v79 = v71[2];
                v80 = v71[3];
                v81 = v71[4];
                v82 = v71[5];
                v83 = v71[6];
                v84 = v71[7];
                v246 = *v71;
                v247 = v79;
                v254 = v78;
                v255 = v80;
                v262 = v81;
                v263 = v83;
                v270 = v82;
                v271 = v84;
                v76 = 128;
              }

              else if (v75 == 3)
              {
                v77 = vld1q_dup_f32(v71->f32);
                v246 = v77;
                v247 = v77;
                v254 = v77;
                v255 = v77;
                v262 = v77;
                v263 = v77;
                v270 = v77;
                v271 = v77;
                v76 = 4;
              }

              else
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 128, v71, v75);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v246.i32, 128, v71, v75, *(v73 + 52));
              v76 = 64;
            }
          }

          else
          {
            v76 = 0;
            v247 = 0u;
            v246 = 0u;
            v254 = 0u;
            v255 = 0u;
            v262 = 0u;
            v263 = 0u;
            v270 = 0u;
            v271 = 0u;
          }

          v85 = v71 + v76;
          v86 = v69[1];
          if (v69[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 127)
              {
                v89 = *(v85 + 16);
                v90 = *(v85 + 32);
                v91 = *(v85 + 48);
                v92 = *(v85 + 64);
                v93 = *(v85 + 80);
                v94 = *(v85 + 96);
                v95 = *(v85 + 112);
                v248 = *v85;
                v249 = v90;
                v256 = v89;
                v257 = v91;
                v264 = v92;
                v265 = v94;
                v272 = v93;
                v273 = v95;
                v87 = 128;
              }

              else if (v86 == 3)
              {
                v88 = vld1q_dup_f32(v85);
                v248 = v88;
                v249 = v88;
                v256 = v88;
                v257 = v88;
                v264 = v88;
                v265 = v88;
                v272 = v88;
                v273 = v88;
                v87 = 4;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 128, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v248.i32, 128, v85, v86, v74);
              v87 = 64;
            }
          }

          else
          {
            v87 = 0;
            v248 = 0u;
            v249 = 0u;
            v256 = 0u;
            v257 = 0u;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v96 = v85 + v87;
          v97 = v69[2];
          if (v69[2])
          {
            if (v97 < 0xF0)
            {
              if (v97 == 127)
              {
                v100 = *(v96 + 16);
                v101 = *(v96 + 32);
                v102 = *(v96 + 48);
                v103 = *(v96 + 64);
                v104 = *(v96 + 80);
                v105 = *(v96 + 96);
                v106 = *(v96 + 112);
                v278 = *v96;
                v279 = v101;
                v286 = v100;
                v287 = v102;
                v294 = v103;
                v295 = v105;
                v302 = v104;
                v303 = v106;
                v98 = 128;
              }

              else if (v97 == 3)
              {
                v99 = vld1q_dup_f32(v96);
                v278 = v99;
                v279 = v99;
                v286 = v99;
                v287 = v99;
                v294 = v99;
                v295 = v99;
                v302 = v99;
                v303 = v99;
                v98 = 4;
              }

              else
              {
                v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v278, 128, v96, v97);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v278.i32, 128, v96, v97, v74);
              v98 = 64;
            }
          }

          else
          {
            v98 = 0;
            v278 = 0u;
            v279 = 0u;
            v286 = 0u;
            v287 = 0u;
            v294 = 0u;
            v295 = 0u;
            v302 = 0u;
            v303 = 0u;
          }

          v107 = v96 + v98;
          v108 = v69[3];
          if (v69[3])
          {
            if (v108 < 0xF0)
            {
              if (v108 == 127)
              {
                v111 = *(v107 + 16);
                v112 = *(v107 + 32);
                v113 = *(v107 + 48);
                v114 = *(v107 + 64);
                v115 = *(v107 + 80);
                v116 = *(v107 + 96);
                v117 = *(v107 + 112);
                v280 = *v107;
                v281 = v112;
                v288 = v111;
                v289 = v113;
                v296 = v114;
                v297 = v116;
                v304 = v115;
                v305 = v117;
                v109 = 128;
              }

              else if (v108 == 3)
              {
                v110 = vld1q_dup_f32(v107);
                v280 = v110;
                v281 = v110;
                v288 = v110;
                v289 = v110;
                v296 = v110;
                v297 = v110;
                v304 = v110;
                v305 = v110;
                v109 = 4;
              }

              else
              {
                v109 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v280, 128, v107, v108);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v280.i32, 128, v107, v108, v74);
              v109 = 64;
            }
          }

          else
          {
            v109 = 0;
            v280 = 0u;
            v281 = 0u;
            v288 = 0u;
            v289 = 0u;
            v296 = 0u;
            v297 = 0u;
            v304 = 0u;
            v305 = 0u;
          }

          v118 = v107 + v109;
          v119 = v69[4];
          if (v69[4])
          {
            if (v119 < 0xF0)
            {
              if (v119 == 127)
              {
                v122 = *(v118 + 16);
                v123 = *(v118 + 32);
                v124 = *(v118 + 48);
                v125 = *(v118 + 64);
                v126 = *(v118 + 80);
                v127 = *(v118 + 96);
                v128 = *(v118 + 112);
                v250 = *v118;
                v251 = v123;
                v258 = v122;
                v259 = v124;
                v266 = v125;
                v267 = v127;
                v274 = v126;
                v275 = v128;
                v120 = 128;
              }

              else if (v119 == 3)
              {
                v121 = vld1q_dup_f32(v118);
                v250 = v121;
                v251 = v121;
                v258 = v121;
                v259 = v121;
                v266 = v121;
                v267 = v121;
                v274 = v121;
                v275 = v121;
                v120 = 4;
              }

              else
              {
                v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v250, 128, v118, v119);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v250.i32, 128, v118, v119, v74);
              v120 = 64;
            }
          }

          else
          {
            v120 = 0;
            v250 = 0u;
            v251 = 0u;
            v258 = 0u;
            v259 = 0u;
            v266 = 0u;
            v267 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v129 = v118 + v120;
          v130 = v69[5];
          if (v69[5])
          {
            if (v130 < 0xF0)
            {
              if (v130 == 127)
              {
                v133 = *(v129 + 16);
                v134 = *(v129 + 32);
                v135 = *(v129 + 48);
                v136 = *(v129 + 64);
                v137 = *(v129 + 80);
                v138 = *(v129 + 96);
                v139 = *(v129 + 112);
                v252 = *v129;
                v253 = v134;
                v260 = v133;
                v261 = v135;
                v268 = v136;
                v269 = v138;
                v276 = v137;
                v277 = v139;
                v131 = 128;
              }

              else if (v130 == 3)
              {
                v132 = vld1q_dup_f32(v129);
                v252 = v132;
                v253 = v132;
                v260 = v132;
                v261 = v132;
                v268 = v132;
                v269 = v132;
                v276 = v132;
                v277 = v132;
                v131 = 4;
              }

              else
              {
                v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v252, 128, v129, v130);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v252.i32, 128, v129, v130, v74);
              v131 = 64;
            }
          }

          else
          {
            v131 = 0;
            v252 = 0u;
            v253 = 0u;
            v260 = 0u;
            v261 = 0u;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v140 = v129 + v131;
          v141 = v69[6];
          if (v69[6])
          {
            if (v141 < 0xF0)
            {
              if (v141 == 127)
              {
                v180 = *(v140 + 16);
                v181 = *(v140 + 32);
                v182 = *(v140 + 48);
                v183 = *(v140 + 64);
                v184 = *(v140 + 80);
                v185 = *(v140 + 96);
                v186 = *(v140 + 112);
                v282 = *v140;
                v283 = v181;
                v290 = v180;
                v291 = v182;
                v298 = v183;
                v299 = v185;
                v306 = v184;
                v307 = v186;
                v142 = 128;
                v143 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v141 == 3)
              {
                v178 = vld1q_dup_f32(v140);
                v282 = v178;
                v283 = v178;
                v290 = v178;
                v291 = v178;
                v298 = v178;
                v299 = v178;
                v306 = v178;
                v307 = v178;
                v142 = 4;
                v143 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v282, 128, v140, v141);
                v143 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v284 = 0u;
                  v285 = 0u;
                  v292 = 0u;
                  v293 = 0u;
                  v300 = 0u;
                  v301 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v282.i32, 128, v140, v141, v74);
              v142 = 64;
              v143 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v142 = 0;
            v282 = 0u;
            v283 = 0u;
            v290 = 0u;
            v291 = 0u;
            v298 = 0u;
            v299 = 0u;
            v306 = 0u;
            v307 = 0u;
            v143 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v144 = v140 + v142;
          if (v143 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v284.i32, 128, v144, v143, v74);
LABEL_149:
            a7 = v220;
LABEL_150:
            v72 = v34 + 1;
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }

            goto LABEL_151;
          }

          a7 = v220;
          if (v143 == 127)
          {
            v187 = *(v144 + 16);
            v188 = *(v144 + 32);
            v189 = *(v144 + 48);
            v190 = *(v144 + 80);
            v191 = *(v144 + 96);
            v192 = *(v144 + 112);
            v193 = *(v144 + 64);
            v284 = *v144;
            v285 = v188;
            v292 = v187;
            v293 = v189;
            v300 = v193;
            v301 = v191;
            v308 = v190;
            v309 = v192;
            goto LABEL_150;
          }

          v72 = v34 + 1;
          if (v143 == 3)
          {
            v179 = vld1q_dup_f32(v144);
            v284 = v179;
            v285 = v179;
            v292 = v179;
            v293 = v179;
            v300 = v179;
            v301 = v179;
            v308 = v179;
            v309 = v179;
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v284, 128, v144, v143);
            v145 = v241;
            if (!v241)
            {
              goto LABEL_195;
            }
          }

LABEL_151:
          v146 = v242;
          if (v242)
          {
            v147 = 0;
            v148 = 8 * v240;
            v149 = &v246.i8[128 * v239 + v148];
            v150 = v237;
            v151 = v238;
            v152 = 8 * v242;
            if (8 * v242)
            {
              v153 = (8 * v242 - 1) >> 32 == 0;
            }

            else
            {
              v153 = 0;
            }

            v154 = !v153;
            v156 = v149 < v237 + v238 * (v145 - 1) + 8 * v242 && v237 < &v245[128 * v145 + 896 + 128 * v239 + 8 * v242 + v148];
            v157 = v152 & 0x1FFFFFFE0;
            v158 = v154 | (v238 < 0) | v156;
            v159 = &v247 + 128 * v239 + v148;
            v160 = (v237 + 16);
            v161 = v149;
            v162 = v237;
            do
            {
              v163 = (v150 + v147 * v151);
              v164 = &v149[128 * v147];
              if (v158)
              {
                v165 = 0;
              }

              else
              {
                if (v146 < 4)
                {
                  v169 = 0;
LABEL_177:
                  v174 = -8 * v146 + v169;
                  v175 = (v162 + v169);
                  v176 = &v161[v169];
                  do
                  {
                    v177 = *v175++;
                    *v176 = v177;
                    v176 += 8;
                    v174 += 8;
                  }

                  while (v174);
                  goto LABEL_165;
                }

                v170 = v160;
                v171 = v159;
                v172 = v152 & 0x1FFFFFFE0;
                do
                {
                  v173 = *v170;
                  *(v171 - 1) = *(v170 - 1);
                  *v171 = v173;
                  v171 += 2;
                  v170 += 2;
                  v172 -= 32;
                }

                while (v172);
                if (v152 == v157)
                {
                  goto LABEL_165;
                }

                v169 = v152 & 0x1FFFFFFE0;
                if ((v146 & 3) != 0)
                {
                  goto LABEL_177;
                }

                v163 += v157;
                v164 += v157;
                v165 = v152 & 0xFFFFFFE0;
              }

              v166 = v165 + 1;
              do
              {
                v167 = *v163++;
                *v164++ = v167;
              }

              while (v152 > v166++);
LABEL_165:
              ++v147;
              v159 += 128;
              v160 = (v160 + v151);
              v162 += v151;
              v161 += 128;
            }

            while (v147 != v145);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v246, 128, v235, v236, v243, v244, *(*(v231 + 208) + 52));
          if (v233)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34 == v221 >> 4;
          v34 = v72;
          result = v231;
        }

        while (!v21);
        v21 = v17++ == v213;
      }

      while (!v21);
    }
  }

  return result;
}