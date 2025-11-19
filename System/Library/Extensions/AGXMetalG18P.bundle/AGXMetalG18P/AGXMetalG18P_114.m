uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v139 = v21;
  v140 = v22;
  v128 = v23;
  v24 = v12;
  v169 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v25 = v14 >> 3;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v146 = v24;
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
  v148 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v138 = result;
  if (v25 <= v129)
  {
    v137 = v16 + a9 - 1;
    v126 = v16 >> 3;
    if (v16 >> 3 <= v137 >> 3)
    {
      result = v24;
      v147 = (v20 - 1) >> 3;
      v123 = v20 - 1;
      v130 = (v20 - 1) & 7;
      v124 = (v18 - 1) & 7;
      v125 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v134 = v35;
      v122 = 8 * v27 * v26;
      v136 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v145)
        {
          v37 = v145;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v127 < v36)
        {
          v36 = v127;
        }

        v144 = 8 * v25;
        v133 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v124;
        v132 = v39;
        v41 = v39 != 8;
        v42 = v126;
        v43 = v124 + 1;
        if (v25 != v125)
        {
          v43 = 8;
          v40 = v41;
        }

        v131 = v40;
        v142 = v128 + (v37 - v145) * a11;
        v143 = v43;
        v141 = v43;
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

          if (v137 < v45)
          {
            v45 = v137;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v147)
          {
            v49 = v130 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v144 >= v145 && v44 >= v16)
          {
            v51 = v47 != v130;
            if (v42 != v147)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v131;
          }

          if (v138)
          {
            v72 = 0;
            v73 = v122 >> (*(result + 57) != 0);
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

            v110 = (v72 >> 3) - 1;
            if (v74)
            {
              v111 = 0;
            }

            else
            {
              v111 = 32 - __clz(~(-1 << -__clz(v110)));
            }

            v112 = (v76 >> 3) - 1;
            if (v75)
            {
              v113 = 0;
              if (v111)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v113 = 32 - __clz(~(-1 << -__clz(v112)));
              if (v113 | v111)
              {
LABEL_131:
                v114 = 0;
                v115 = 0;
                v116 = v42 & v110;
                v117 = v25 & v112;
                v118 = v111 != 0;
                v119 = v113 != 0;
                v120 = 1;
                do
                {
                  --v111;
                  if (v118)
                  {
                    v115 |= (v120 & v116) << v114++;
                  }

                  else
                  {
                    v111 = 0;
                  }

                  --v113;
                  if (v119)
                  {
                    v115 |= (v120 & v117) << v114++;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v120 *= 2;
                  --v114;
                  v119 = v113 != 0;
                  v118 = v111 != 0;
                }

                while (v113 | v111);
                v121 = v115 << 11;
                result = v146;
                goto LABEL_143;
              }
            }

            v121 = 0;
LABEL_143:
            v59 = v121 + ((v44 / v72 + v144 / v76 * ((v72 + v123) / v72)) << 14);
            goto LABEL_52;
          }

          if (v135)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v134.i8[0];
            v56 = v134.i8[4];
            v58 = v135.i32[0];
            v57 = v135.i32[1];
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
            v59 = v53 << 11;
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
          v77 = (v140 + v71);
          v78 = v142 + 32 * (v46 - v16);
          v79 = (v139 + v59);
          if (v148)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v143);
              goto LABEL_86;
            }

            v80 = v49;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v82 = __dst;
            v44 = 8 * v42;
            LOBYTE(v49) = v80;
            result = v146;
          }

          else
          {
            v82 = (v139 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v150 = v82;
          v158 = v49;
          v159 = v143;
          v154 = v133;
          v155 = v46 - v44;
          v151 = v77;
          v152 = v78;
          v153 = a11;
          v156 = v132;
          v157 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v136;
            if (!v148)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v79, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v82, *v77)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v88 + v89, v77[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 8;
            v93 = 32 * v155;
            v94 = v161 + v92 + v93;
            v95 = v152;
            v96 = v153;
            v97 = 32 * v157;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v152 + v153 * (v156 - 1) + v97 && v152 < &__dst[256 * v156 + 1792 + 256 * v154 + v97 + v93];
            v102 = v99 | (v153 < 0) | v101;
            v103 = &v161[1] + v92 + v93;
            v104 = (v152 + 16);
            do
            {
              v105 = v104;
              v106 = v103;
              v107 = v97;
              if (v102)
              {
                v108 = 0;
                do
                {
                  v94[v108] = *(v95 + v108);
                  ++v108;
                }

                while (v97 > v108);
              }

              else
              {
                do
                {
                  v109 = *v105;
                  *(v106 - 1) = *(v105 - 1);
                  *v106 = v109;
                  v106 += 2;
                  v105 += 2;
                  v107 -= 32;
                }

                while (v107);
              }

              ++v91;
              v103 += 256;
              v104 = (v104 + v96);
              v94 += 256;
              v95 += v96;
            }

            while (v91 != v90);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v161, 256, v150, v151, v158, v159);
          if (v148)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v137 >> 3;
          result = v146;
        }

        while (!v29);
        v29 = v25++ == v129;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v139 = v21;
  v140 = v22;
  v128 = v23;
  v24 = v12;
  v169 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v25 = v14 >> 3;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v146 = v24;
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
  v148 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v138 = result;
  if (v25 <= v129)
  {
    v137 = v16 + a9 - 1;
    v126 = v16 >> 3;
    if (v16 >> 3 <= v137 >> 3)
    {
      result = v24;
      v147 = (v20 - 1) >> 3;
      v123 = v20 - 1;
      v130 = (v20 - 1) & 7;
      v124 = (v18 - 1) & 7;
      v125 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v134 = v35;
      v122 = 8 * v27 * v26;
      v136 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v145)
        {
          v37 = v145;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v127 < v36)
        {
          v36 = v127;
        }

        v144 = 8 * v25;
        v133 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v124;
        v132 = v39;
        v41 = v39 != 8;
        v42 = v126;
        v43 = v124 + 1;
        if (v25 != v125)
        {
          v43 = 8;
          v40 = v41;
        }

        v131 = v40;
        v142 = v128 + (v37 - v145) * a11;
        v143 = v43;
        v141 = v43;
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

          if (v137 < v45)
          {
            v45 = v137;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v147)
          {
            v49 = v130 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v144 >= v145 && v44 >= v16)
          {
            v51 = v47 != v130;
            if (v42 != v147)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v131;
          }

          if (v138)
          {
            v72 = 0;
            v73 = v122 >> (*(result + 57) != 0);
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

            v110 = (v72 >> 3) - 1;
            if (v74)
            {
              v111 = 0;
            }

            else
            {
              v111 = 32 - __clz(~(-1 << -__clz(v110)));
            }

            v112 = (v76 >> 3) - 1;
            if (v75)
            {
              v113 = 0;
              if (v111)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v113 = 32 - __clz(~(-1 << -__clz(v112)));
              if (v113 | v111)
              {
LABEL_131:
                v114 = 0;
                v115 = 0;
                v116 = v42 & v110;
                v117 = v25 & v112;
                v118 = v111 != 0;
                v119 = v113 != 0;
                v120 = 1;
                do
                {
                  --v111;
                  if (v118)
                  {
                    v115 |= (v120 & v116) << v114++;
                  }

                  else
                  {
                    v111 = 0;
                  }

                  --v113;
                  if (v119)
                  {
                    v115 |= (v120 & v117) << v114++;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v120 *= 2;
                  --v114;
                  v119 = v113 != 0;
                  v118 = v111 != 0;
                }

                while (v113 | v111);
                v121 = v115 << 11;
                result = v146;
                goto LABEL_143;
              }
            }

            v121 = 0;
LABEL_143:
            v59 = v121 + ((v44 / v72 + v144 / v76 * ((v72 + v123) / v72)) << 14);
            goto LABEL_52;
          }

          if (v135)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v134.i8[0];
            v56 = v134.i8[4];
            v58 = v135.i32[0];
            v57 = v135.i32[1];
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
            v59 = v53 << 11;
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
          v77 = (v140 + v71);
          v78 = v142 + 32 * (v46 - v16);
          v79 = (v139 + v59);
          if (v148)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v143);
              goto LABEL_86;
            }

            v80 = v49;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v82 = __dst;
            v44 = 8 * v42;
            LOBYTE(v49) = v80;
            result = v146;
          }

          else
          {
            v82 = (v139 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v150 = v82;
          v158 = v49;
          v159 = v143;
          v154 = v133;
          v155 = v46 - v44;
          v151 = v77;
          v152 = v78;
          v153 = a11;
          v156 = v132;
          v157 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v136;
            if (!v148)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v79, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v82, *v77);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v88 + v89, v77[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 8;
            v93 = 32 * v155;
            v94 = v161 + v92 + v93;
            v95 = v152;
            v96 = v153;
            v97 = 32 * v157;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v152 + v153 * (v156 - 1) + v97 && v152 < &__dst[256 * v156 + 1792 + 256 * v154 + v97 + v93];
            v102 = v99 | (v153 < 0) | v101;
            v103 = &v161[1] + v92 + v93;
            v104 = (v152 + 16);
            do
            {
              v105 = v104;
              v106 = v103;
              v107 = v97;
              if (v102)
              {
                v108 = 0;
                do
                {
                  v94[v108] = *(v95 + v108);
                  ++v108;
                }

                while (v97 > v108);
              }

              else
              {
                do
                {
                  v109 = *v105;
                  *(v106 - 1) = *(v105 - 1);
                  *v106 = v109;
                  v106 += 2;
                  v105 += 2;
                  v107 -= 32;
                }

                while (v107);
              }

              ++v91;
              v103 += 256;
              v104 = (v104 + v96);
              v94 += 256;
              v95 += v96;
            }

            while (v91 != v90);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v161, 256, v150, v151, v158, v159);
          if (v148)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v137 >> 3;
          result = v146;
        }

        while (!v29);
        v29 = v25++ == v129;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v243 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v194 = a8;
  v176 = a8 + a10 - 1;
  v195 = a1;
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
  v175 = v176 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v198 = v24;
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
      v188 = 0;
LABEL_32:
      v185 = v27 - 3;
      v179 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v173 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v188 = v32 >= v26;
    goto LABEL_32;
  }

  v188 = 0;
  v173 = 0;
  v179 = 0;
  v185 = 0;
LABEL_33:
  if (v18 <= v175)
  {
    v187 = a7 + a9 - 1;
    v172 = a7 >> 3;
    if (a7 >> 3 <= v187 >> 3)
    {
      v196 = v19 >> 3;
      v181 = v19 & 7;
      v170 = v20 & 7;
      v171 = v20 >> 3;
      v169 = ~(-1 << v179);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v35.i8 = vcgt_u32(v34, 0xF0000000FLL);
      v36 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), *v35.i8);
      v178 = v36;
      v180 = v36.i32[0] | v36.i32[1];
      v177 = v35.i64[0];
      v186 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v194)
        {
          v38 = v194;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v176 < v37)
        {
          v37 = v176;
        }

        v184 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v170;
        v183 = v40;
        v42 = v40 != 8;
        v43 = v170 + 1;
        if (v18 != v171)
        {
          v43 = 8;
          v41 = v42;
        }

        v182 = v41;
        v44 = v172;
        v45 = v18 & v169;
        v192 = a3 + (v38 - v194) * a11;
        v193 = v43;
        v191 = v43;
        do
        {
          v46 = 8 * v44;
          v47 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 8 * v44;
          }

          if (v187 < v47)
          {
            v47 = v187;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v196)
          {
            v51 = v181 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v18 >= v194 && v46 >= a7)
          {
            v53 = v49 != v181;
            if (v44 != v196)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v182;
          }

          if (v188)
          {
            if (v185 | v179)
            {
              v54 = 0;
              v55 = 0;
              v56 = v179 != 0;
              v57 = 1;
              v59 = v185 != 0;
              v58 = v179;
              v60 = v185;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v44 & ~(-1 << v185) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v45 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v58 != 0;
                v59 = v60 != 0;
              }

              while (v58 | v60);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v44 >> v185) + (v18 >> v179) * v173);
          }

          else if (v180)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v177;
            v66 = BYTE4(v177);
            v68 = v178.i32[0];
            v67 = v178.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v44) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
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
            v69 = v63 << 9;
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

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
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
                v77 |= (v80 & v44) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v18) << v76++;
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
          v83 = v192 + 8 * (v48 - a7);
          v197 = (a2 + v69);
          if (v198)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 8u) | (v191 < 8)))
            {
              goto LABEL_109;
            }

            v85 = (a4 + v81);
            v86 = v50;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v86;
            v82 = v85;
            v45 = v18 & v169;
            result = v195;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 8u) | (v191 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v193);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v200 = v84;
          v208 = v51;
          v209 = v193;
          v204 = v184;
          v205 = v48 - v46;
          v201 = v82;
          v202 = v83;
          v203 = a11;
          v206 = v183;
          v207 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v186;
            v87 = v44 + 1;
            goto LABEL_201;
          }

          v88 = *v82;
          a7 = v186;
          if (v88 == 63)
          {
            v90 = *v84;
            v35 = v84[1];
            v91 = v84[2];
            v92 = v84[3];
            v211 = *v84;
            v212 = v91;
            v215 = v35;
            v216 = v92;
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v84->i16);
            v211 = v90;
            v212 = v90;
            v215 = v90;
            v216 = v90;
            v89 = 2;
          }

          else if (*v82)
          {
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 64, v84, v88, v36, *v35.i8);
          }

          else
          {
            v89 = 0;
            v90.i64[0] = 0;
            v211 = 0u;
            v212 = 0u;
            v215 = 0u;
            v216 = 0u;
          }

          v93 = v84->i64 + v89;
          v94 = v82[1];
          if (v94 == 63)
          {
            v96 = *v93;
            v35 = *(v93 + 16);
            v97 = *(v93 + 32);
            v98 = *(v93 + 48);
            v219 = *v93;
            v220 = v97;
            v223 = v35;
            v224 = v98;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v93);
            v219 = v96;
            v220 = v96;
            v223 = v96;
            v224 = v96;
            v95 = 2;
          }

          else if (v82[1])
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 64, v93, v94, *v90.i8, *v35.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v219 = 0u;
            v220 = 0u;
            v223 = 0u;
            v224 = 0u;
          }

          v99 = v93 + v95;
          v100 = v82[2];
          if (v100 == 63)
          {
            v102 = *v99;
            v35 = *(v99 + 16);
            v103 = *(v99 + 32);
            v104 = *(v99 + 48);
            v213 = *v99;
            v214 = v103;
            v217 = v35;
            v218 = v104;
            v101 = 64;
          }

          else if (v100 == 1)
          {
            v102 = vld1q_dup_s16(v99);
            v213 = v102;
            v214 = v102;
            v217 = v102;
            v218 = v102;
            v101 = 2;
          }

          else if (v82[2])
          {
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 64, v99, v100, *v96.i8, *v35.i8);
          }

          else
          {
            v101 = 0;
            v102.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v217 = 0u;
            v218 = 0u;
          }

          v105 = v99 + v101;
          v106 = v82[3];
          if (v106 == 63)
          {
            v108 = *v105;
            v35 = *(v105 + 16);
            v109 = *(v105 + 32);
            v110 = *(v105 + 48);
            v221 = *v105;
            v222 = v109;
            v225 = v35;
            v226 = v110;
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v221 = v108;
            v222 = v108;
            v225 = v108;
            v226 = v108;
            v107 = 2;
          }

          else if (v82[3])
          {
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 64, v105, v106, *v102.i8, *v35.i8);
          }

          else
          {
            v107 = 0;
            v108.i64[0] = 0;
            v221 = 0u;
            v222 = 0u;
            v225 = 0u;
            v226 = 0u;
          }

          v111 = v105 + v107;
          v112 = v82[4];
          if (v112 == 63)
          {
            v114 = *v111;
            v35 = *(v111 + 16);
            v115 = *(v111 + 32);
            v116 = *(v111 + 48);
            v227 = *v111;
            v228 = v115;
            v231 = v35;
            v232 = v116;
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v227 = v114;
            v228 = v114;
            v231 = v114;
            v232 = v114;
            v113 = 2;
          }

          else if (v82[4])
          {
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v111, v112, *v108.i8, *v35.i8);
          }

          else
          {
            v113 = 0;
            v114.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v231 = 0u;
            v232 = 0u;
          }

          v117 = v111 + v113;
          v118 = v82[5];
          if (v118 == 63)
          {
            v120 = *v117;
            v35 = *(v117 + 16);
            v121 = *(v117 + 32);
            v122 = *(v117 + 48);
            v235 = *v117;
            v236 = v121;
            v239 = v35;
            v240 = v122;
            v119 = 64;
          }

          else if (v118 == 1)
          {
            v120 = vld1q_dup_s16(v117);
            v235 = v120;
            v236 = v120;
            v239 = v120;
            v240 = v120;
            v119 = 2;
          }

          else if (v82[5])
          {
            v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 64, v117, v118, *v114.i8, *v35.i8);
          }

          else
          {
            v119 = 0;
            v120.i64[0] = 0;
            v235 = 0u;
            v236 = 0u;
            v239 = 0u;
            v240 = 0u;
          }

          v123 = v117 + v119;
          v124 = v82[6];
          if (v124 == 63)
          {
            v126 = *v123;
            v35 = *(v123 + 16);
            v127 = *(v123 + 32);
            v128 = *(v123 + 48);
            v229 = *v123;
            v230 = v127;
            v233 = v35;
            v234 = v128;
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v229 = v126;
            v230 = v126;
            v233 = v126;
            v234 = v126;
            v125 = 2;
          }

          else if (v82[6])
          {
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v123, v124, *v120.i8, *v35.i8);
          }

          else
          {
            v125 = 0;
            v126.i64[0] = 0;
            v229 = 0u;
            v230 = 0u;
            v233 = 0u;
            v234 = 0u;
          }

          v129 = v123 + v125;
          v130 = v82[7];
          if (v130 == 63)
          {
            v133 = *(v129 + 16);
            v134 = *(v129 + 32);
            v135 = *(v129 + 48);
            v237 = *v129;
            v238 = v134;
            v241 = v133;
            v242 = v135;
            v87 = v44 + 1;
            v131 = v206;
            if (!v206)
            {
              goto LABEL_200;
            }
          }

          else
          {
            v87 = v44 + 1;
            if (v130 == 1)
            {
              v132 = vld1q_dup_s16(v129);
              v237 = v132;
              v238 = v132;
              v241 = v132;
              v242 = v132;
              v131 = v206;
              if (!v206)
              {
                goto LABEL_200;
              }
            }

            else if (v130)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 64, v129, v130, *v126.i8, *v35.i8);
              v131 = v206;
              if (!v206)
              {
                goto LABEL_200;
              }
            }

            else
            {
              v237 = 0u;
              v238 = 0u;
              v241 = 0u;
              v242 = 0u;
              v131 = v206;
              if (!v206)
              {
                goto LABEL_200;
              }
            }
          }

          v136 = v207;
          if (v207)
          {
            v137 = 0;
            v138 = v204 << 6;
            v139 = 8 * v205;
            v140 = &v211.i8[v138 + v139];
            v141 = v202;
            v142 = v203;
            v143 = 8 * v207;
            if (8 * v207)
            {
              v144 = (8 * v207 - 1) >> 32 == 0;
            }

            else
            {
              v144 = 0;
            }

            v145 = !v144;
            v147 = v140 < v202 + v203 * (v131 - 1) + 8 * v207 && v202 < &__dst[64 * v131 + 448 + 64 * v204 + 8 * v207 + v139];
            v148 = v143 & 0x1FFFFFFE0;
            v149 = v145 | (v203 < 0) | v147;
            v150 = &v212.i8[v138 + v139];
            v151 = (v202 + 16);
            v152 = v140;
            v153 = v202;
            do
            {
              v154 = (v141 + v137 * v142);
              v155 = &v140[64 * v137];
              if (v149)
              {
                v156 = 0;
              }

              else
              {
                if (v136 < 4)
                {
                  v160 = 0;
LABEL_196:
                  v165 = -8 * v136 + v160;
                  v166 = (v153 + v160);
                  v167 = &v152[v160];
                  do
                  {
                    v168 = *v166++;
                    *v167 = v168;
                    v167 += 8;
                    v165 += 8;
                  }

                  while (v165);
                  goto LABEL_184;
                }

                v161 = v151;
                v162 = v150;
                v163 = v143 & 0x1FFFFFFE0;
                do
                {
                  v164 = *v161;
                  *(v162 - 1) = *(v161 - 1);
                  *v162 = v164;
                  v162 += 32;
                  v161 += 2;
                  v163 -= 32;
                }

                while (v163);
                if (v143 == v148)
                {
                  goto LABEL_184;
                }

                v160 = v143 & 0x1FFFFFFE0;
                if ((v136 & 3) != 0)
                {
                  goto LABEL_196;
                }

                v154 += v148;
                v155 += v148;
                v156 = v143 & 0xFFFFFFE0;
              }

              v157 = v156 + 1;
              do
              {
                v158 = *v154++;
                *v155++ = v158;
              }

              while (v143 > v157++);
LABEL_184:
              ++v137;
              v150 += 64;
              v151 = (v151 + v142);
              v153 += v142;
              v152 += 64;
            }

            while (v137 != v131);
          }

LABEL_200:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v211, 64, v200, v201, v208, v209);
LABEL_201:
          if (v198)
          {
            memcpy(v197, v84, 0x200uLL);
          }

          v21 = v44 == v187 >> 3;
          v44 = v87;
          result = v195;
        }

        while (!v21);
        v21 = v18++ == v175;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v268 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v219 = a8;
  v201 = a8 + a10 - 1;
  v220 = a1;
  result = *(a1 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v18 = result & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = a8 >> 3;
  v20 = a5 - 1;
  v21 = a6 - 1;
  v200 = v201 >> 3;
  v22 = (v18 & 0xD00) == 0 || v18 == 768;
  v23 = v18 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v223 = v25;
  if (*(a1 + 232) == 1)
  {
    v26 = *(a1 + 273);
    v27 = *(a1 + 272);
    v28 = __clz(v20);
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
          v31 = __clz(~(-1 << -__clz(v21))) | 0xFFFFFFE0;
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
      v213 = 0;
LABEL_32:
      v211 = v27 - 3;
      v204 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v198 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = 32 - __clz(~(-1 << -__clz(v21)));
    }

    v213 = v32 >= v26;
    goto LABEL_32;
  }

  v213 = 0;
  v198 = 0;
  v204 = 0;
  v211 = 0;
LABEL_33:
  if (v19 <= v200)
  {
    v212 = a7 + a9 - 1;
    v197 = a7 >> 3;
    if (a7 >> 3 <= v212 >> 3)
    {
      v221 = v20 >> 3;
      v207 = v20 & 7;
      v195 = v21 & 7;
      v196 = v21 >> 3;
      v194 = ~(-1 << v204);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v35.i8 = vcgt_u32(v34, 0xF0000000FLL);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), *v35.i8);
      v203 = v36.i64[0];
      v206 = v36.i32[0] | v36.i32[1];
      v202 = v35.i64[0];
      do
      {
        v37 = (8 * v19) | 7;
        if (8 * v19 <= v219)
        {
          v38 = v219;
        }

        else
        {
          v38 = 8 * v19;
        }

        if (v201 < v37)
        {
          v37 = v201;
        }

        v210 = v38 - 8 * v19;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v195;
        v209 = v40;
        v42 = v40 != 8;
        v43 = v195 + 1;
        if (v19 != v196)
        {
          v43 = 8;
          v41 = v42;
        }

        v208 = v41;
        v44 = v197;
        v45 = v19 & v194;
        v217 = a3 + (v38 - v219) * a11;
        v218 = v43;
        v216 = v43;
        v46 = v220;
        do
        {
          v47 = 8 * v44;
          v48 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 8 * v44;
          }

          if (v212 < v48)
          {
            v48 = v212;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v44 == v221)
          {
            v52 = v207 + 1;
          }

          else
          {
            v52 = 8;
          }

          v53 = 1;
          if (8 * v19 >= v219 && v47 >= a7)
          {
            v54 = v50 != v207;
            if (v44 != v221)
            {
              v54 = v51 != 8;
            }

            v53 = v54 || v208;
          }

          if (v213)
          {
            if (v211 | v204)
            {
              v55 = 0;
              v56 = 0;
              v57 = v204 != 0;
              v58 = 1;
              v60 = v211 != 0;
              v59 = v204;
              v61 = v211;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v44 & ~(-1 << v211) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v45 & v58) << v55++;
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
              v62 = v56 << 9;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(v46 + 336) * ((v44 >> v211) + (v19 >> v204) * v198);
          }

          else if (v206)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v202;
            v67 = BYTE4(v202);
            v69 = v203;
            v68 = HIDWORD(v203);
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
                v64 |= (v65 & v19) << v63++;
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
            v70 = v64 << 9;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v46 + 128) >> (*(v46 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
          }

          v74 = *(v46 + 132) >> (*(v46 + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 7;
          if (v75 < 0x10)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_103:
              v82 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 3) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_103;
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
              v78 |= (v81 & v19) << v77++;
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
LABEL_104:
          v83 = (a4 + v82);
          v84 = a7;
          v85 = (v217 + 8 * (v49 - a7));
          v222 = (a2 + v70);
          if (v223)
          {
            v86 = __dst;
            if (!(v53 & 1 | (v52 < 8u) | (v216 < 8)))
            {
              goto LABEL_110;
            }

            v205 = v51;
            v87 = v53;
            memcpy(__dst, (a2 + v70), sizeof(__dst));
            v53 = v87;
            v51 = v205;
          }

          else
          {
            v86 = (a2 + v70);
            if (!(v53 & 1 | (v52 < 8u) | (v216 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v85, a11, v86, v83, v52, v218);
              a7 = v84;
              v46 = v220;
LABEL_111:
              v88 = v44 + 1;
              result = v222;
              if (!v223)
              {
                goto LABEL_46;
              }

LABEL_228:
              result = memcpy(result, v86, 0x200uLL);
              goto LABEL_46;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v220;
          v225 = v86;
          v233 = v52;
          v234 = v218;
          v229 = v210;
          v230 = v49 - v47;
          v226 = v83;
          v227 = v85;
          v228 = a11;
          v231 = v209;
          v232 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v220 + 8) + 16552), block);
            a7 = v84;
            v46 = v220;
            goto LABEL_111;
          }

          v89 = *v83;
          a7 = v84;
          if (v89 == 63)
          {
            v91 = *v86;
            v35 = v86[1];
            v92 = v86[2];
            v93 = v86[3];
            v236 = *v86;
            v237 = v92;
            v240 = v35;
            v241 = v93;
            v90 = 64;
            v88 = v44 + 1;
          }

          else
          {
            v88 = v44 + 1;
            if (v89 == 1)
            {
              v91 = vld1q_dup_s16(v86->i16);
              v236 = v91;
              v237 = v91;
              v240 = v91;
              v241 = v91;
              v90 = 2;
            }

            else if (*v83)
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 64, v86, v89, *v36.i8, *v35.i8);
            }

            else
            {
              v90 = 0;
              v91.i64[0] = 0;
              v236 = 0u;
              v237 = 0u;
              v240 = 0u;
              v241 = 0u;
            }
          }

          v94 = v86->i64 + v90;
          v95 = v83[1];
          if (v95 == 63)
          {
            v97 = *v94;
            v35 = *(v94 + 16);
            v98 = *(v94 + 32);
            v99 = *(v94 + 48);
            v244 = *v94;
            v245 = v98;
            v248 = v35;
            v249 = v99;
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v97 = vld1q_dup_s16(v94);
            v244 = v97;
            v245 = v97;
            v248 = v97;
            v249 = v97;
            v96 = 2;
          }

          else if (v83[1])
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v94, v95, *v91.i8, *v35.i8);
          }

          else
          {
            v96 = 0;
            v97.i64[0] = 0;
            v244 = 0u;
            v245 = 0u;
            v248 = 0u;
            v249 = 0u;
          }

          v100 = v94 + v96;
          v101 = v83[2];
          if (v101 == 63)
          {
            v103 = *v100;
            v35 = *(v100 + 16);
            v104 = *(v100 + 32);
            v105 = *(v100 + 48);
            v238 = *v100;
            v239 = v104;
            v242 = v35;
            v243 = v105;
            v102 = 64;
          }

          else if (v101 == 1)
          {
            v103 = vld1q_dup_s16(v100);
            v238 = v103;
            v239 = v103;
            v242 = v103;
            v243 = v103;
            v102 = 2;
          }

          else if (v83[2])
          {
            v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 64, v100, v101, *v97.i8, *v35.i8);
          }

          else
          {
            v102 = 0;
            v103.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v106 = v100 + v102;
          v107 = v83[3];
          if (v107 == 63)
          {
            v109 = *v106;
            v35 = *(v106 + 16);
            v110 = *(v106 + 32);
            v111 = *(v106 + 48);
            v246 = *v106;
            v247 = v110;
            v250 = v35;
            v251 = v111;
            v108 = 64;
          }

          else if (v107 == 1)
          {
            v109 = vld1q_dup_s16(v106);
            v246 = v109;
            v247 = v109;
            v250 = v109;
            v251 = v109;
            v108 = 2;
          }

          else if (v83[3])
          {
            v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 64, v106, v107, *v103.i8, *v35.i8);
          }

          else
          {
            v108 = 0;
            v109.i64[0] = 0;
            v246 = 0u;
            v247 = 0u;
            v250 = 0u;
            v251 = 0u;
          }

          v112 = v106 + v108;
          v113 = v83[4];
          if (v113 == 63)
          {
            v115 = *v112;
            v35 = *(v112 + 16);
            v116 = *(v112 + 32);
            v117 = *(v112 + 48);
            v252 = *v112;
            v253 = v116;
            v256 = v35;
            v257 = v117;
            v114 = 64;
          }

          else if (v113 == 1)
          {
            v115 = vld1q_dup_s16(v112);
            v252 = v115;
            v253 = v115;
            v256 = v115;
            v257 = v115;
            v114 = 2;
          }

          else if (v83[4])
          {
            v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v112, v113, *v109.i8, *v35.i8);
          }

          else
          {
            v114 = 0;
            v115.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v118 = v112 + v114;
          v119 = v83[5];
          if (v119 == 63)
          {
            v121 = *v118;
            v35 = *(v118 + 16);
            v122 = *(v118 + 32);
            v123 = *(v118 + 48);
            v260 = *v118;
            v261 = v122;
            v264 = v35;
            v265 = v123;
            v120 = 64;
          }

          else if (v119 == 1)
          {
            v121 = vld1q_dup_s16(v118);
            v260 = v121;
            v261 = v121;
            v264 = v121;
            v265 = v121;
            v120 = 2;
          }

          else if (v83[5])
          {
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 64, v118, v119, *v115.i8, *v35.i8);
          }

          else
          {
            v120 = 0;
            v121.i64[0] = 0;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v124 = v118 + v120;
          v125 = v83[6];
          if (v125 == 63)
          {
            v127 = *v124;
            v35 = *(v124 + 16);
            v128 = *(v124 + 32);
            v129 = *(v124 + 48);
            v254 = *v124;
            v255 = v128;
            v258 = v35;
            v259 = v129;
            v126 = 64;
          }

          else if (v125 == 1)
          {
            v127 = vld1q_dup_s16(v124);
            v254 = v127;
            v255 = v127;
            v258 = v127;
            v259 = v127;
            v126 = 2;
          }

          else if (v83[6])
          {
            v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v124, v125, *v121.i8, *v35.i8);
          }

          else
          {
            v126 = 0;
            v127.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
          }

          v130 = v124 + v126;
          v131 = v83[7];
          if (v131 == 63)
          {
            v36 = *v130;
            v35 = *(v130 + 16);
            v133 = *(v130 + 32);
            v134 = *(v130 + 48);
            v262 = *v130;
            v263 = v133;
            v266 = v35;
            v267 = v134;
            v46 = v220;
            v132 = v231;
            if (v231)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v46 = v220;
            if (v131 == 1)
            {
              v36 = vld1q_dup_s16(v130);
              v262 = v36;
              v263 = v36;
              v266 = v36;
              v267 = v36;
              v132 = v231;
              if (v231)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v83[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 64, v130, v131, *v127.i8, *v35.i8);
                v132 = v231;
                if (!v231)
                {
                  goto LABEL_202;
                }

LABEL_172:
                v135 = v232;
                if (!v232)
                {
                  goto LABEL_202;
                }

                v136 = 0;
                v137 = 8 * v230;
                v138 = &v236.i8[64 * v229 + v137];
                v139 = v227;
                v140 = v228;
                v141 = 8 * v232;
                if (8 * v232)
                {
                  v142 = (8 * v232 - 1) >> 32 == 0;
                }

                else
                {
                  v142 = 0;
                }

                v143 = !v142;
                v145 = v138 < v227 + 8 * v232 + v228 * (v132 - 1) && v227 < &__dst[64 * v132 + 448 + 64 * v229 + 8 * v232 + v137];
                v146 = v141 & 0x1FFFFFFE0;
                v147 = v143 | (v228 < 0) | v145;
                v148 = &v237.i8[64 * v229 + v137];
                v149 = (v227 + 1);
                v150 = v138;
                v151 = v227;
                while (2)
                {
                  v152 = v139 + v136 * v140;
                  v153 = &v138[64 * v136];
                  if (v147)
                  {
                    v154 = 0;
LABEL_189:
                    v155 = v154 + 1;
                    do
                    {
                      v156 = *v152++;
                      *v153++ = v156;
                    }

                    while (v141 > v155++);
LABEL_186:
                    ++v136;
                    v148 += 64;
                    v149 = (v149 + v140);
                    v151 = (v151 + v140);
                    v150 += 64;
                    if (v136 == v132)
                    {
                      goto LABEL_202;
                    }

                    continue;
                  }

                  break;
                }

                if (v135 >= 4)
                {
                  v159 = v149;
                  v160 = v148;
                  v161 = v141 & 0x1FFFFFFE0;
                  do
                  {
                    v36 = v159[-1];
                    v35 = *v159;
                    v160[-1] = v36;
                    *v160 = v35;
                    v160 += 2;
                    v159 += 2;
                    v161 -= 32;
                  }

                  while (v161);
                  if (v141 == v146)
                  {
                    goto LABEL_186;
                  }

                  v158 = v141 & 0x1FFFFFFE0;
                  if ((v135 & 3) == 0)
                  {
                    v152 += v146;
                    v153 += v146;
                    v154 = v141 & 0xFFFFFFE0;
                    goto LABEL_189;
                  }
                }

                else
                {
                  v158 = 0;
                }

                v162 = -8 * v135 + v158;
                v163 = (v151 + v158);
                v164 = &v150[v158];
                do
                {
                  v165 = *v163++;
                  v36.i64[0] = v165;
                  *v164++ = v165;
                  v162 += 8;
                }

                while (v162);
                goto LABEL_186;
              }

              v36.i64[0] = 0;
              v262 = 0u;
              v263 = 0u;
              v266 = 0u;
              v267 = 0u;
              v132 = v231;
              if (v231)
              {
                goto LABEL_172;
              }
            }
          }

LABEL_202:
          v166 = 0;
          v168 = v225;
          v167 = v226;
          v169 = v233;
          v170 = v234;
          if (v233)
          {
            result = v222;
            if (v234)
            {
              v36.i64[0] = v236.i64[0];
              v35 = v237;
              v171 = v240;
              v172 = v241;
              *v225 = v236;
              v168[1] = v171;
              v168[2] = v35;
              v168[3] = v172;
              v168 += 4;
              v166 = 63;
            }
          }

          else
          {
            result = v222;
          }

          v173 = 0;
          *v167 = v166;
          if (v169 && v170 >= 3)
          {
            v36.i64[0] = v244.i64[0];
            v35 = v245;
            v174 = v248;
            v175 = v249;
            *v168 = v244;
            v168[1] = v174;
            v168[2] = v35;
            v168[3] = v175;
            v168 += 4;
            v173 = 63;
          }

          v176 = 0;
          v167[1] = v173;
          if (v169 >= 5 && v170)
          {
            v36.i64[0] = v238.i64[0];
            v35 = v239;
            v177 = v242;
            v178 = v243;
            *v168 = v238;
            v168[1] = v177;
            v168[2] = v35;
            v168[3] = v178;
            v168 += 4;
            v176 = 63;
          }

          v179 = 0;
          v167[2] = v176;
          if (v169 >= 5 && v170 >= 3)
          {
            v36.i64[0] = v246.i64[0];
            v35 = v247;
            v180 = v250;
            v181 = v251;
            *v168 = v246;
            v168[1] = v180;
            v168[2] = v35;
            v168[3] = v181;
            v168 += 4;
            v179 = 63;
          }

          v182 = 0;
          v167[3] = v179;
          if (v169 && v170 >= 5)
          {
            v36.i64[0] = v252.i64[0];
            v35 = v253;
            v183 = v256;
            v184 = v257;
            *v168 = v252;
            v168[1] = v183;
            v168[2] = v35;
            v168[3] = v184;
            v168 += 4;
            v182 = 63;
          }

          v185 = 0;
          v167[4] = v182;
          if (v169 && v170 >= 7)
          {
            v36.i64[0] = v260.i64[0];
            v35 = v261;
            v186 = v264;
            v187 = v265;
            *v168 = v260;
            v168[1] = v186;
            v168[2] = v35;
            v168[3] = v187;
            v168 += 4;
            v185 = 63;
          }

          v188 = 0;
          v167[5] = v185;
          if (v169 >= 5 && v170 >= 5)
          {
            v36.i64[0] = v254.i64[0];
            v35 = v255;
            v189 = v258;
            v190 = v259;
            *v168 = v254;
            v168[1] = v189;
            v168[2] = v35;
            v168[3] = v190;
            v168 += 4;
            v188 = 63;
          }

          v191 = 0;
          v167[6] = v188;
          if (v169 >= 5 && v170 >= 7)
          {
            v36.i64[0] = v262.i64[0];
            v35 = v263;
            v192 = v266;
            v193 = v267;
            *v168 = v262;
            v168[1] = v192;
            v168[2] = v35;
            v168[3] = v193;
            v191 = 63;
          }

          v167[7] = v191;
          if (v223)
          {
            goto LABEL_228;
          }

LABEL_46:
          v22 = v44 == v212 >> 3;
          v44 = v88;
          v45 = v19 & v194;
        }

        while (!v22);
        v22 = v19++ == v200;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v240 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v191 = a8;
  v17 = a8 >> 3;
  v173 = a8 + a10 - 1;
  v175 = v173 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v192 = a1;
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
  v195 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v184 = result;
  if (v17 <= v175)
  {
    v183 = a7 + a9 - 1;
    v172 = a7 >> 3;
    if (a7 >> 3 <= v183 >> 3)
    {
      result = a1;
      v193 = (a5 - 1) >> 3;
      v169 = a5 - 1;
      v176 = (a5 - 1) & 7;
      v170 = (a6 - 1) & 7;
      v171 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v27.i8 = vcgt_u32(v26, 0xF0000000FLL);
      v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), *v27.i8);
      v181 = v28;
      v182 = v28.i32[0] | v28.i32[1];
      v180 = v27.i64[0];
      v168 = 8 * v19 * v18;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v191)
        {
          v30 = v191;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v173 < v29)
        {
          v29 = v173;
        }

        v190 = 8 * v17;
        v179 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v170;
        v178 = v32;
        v34 = v32 != 8;
        v35 = v172;
        v36 = v170 + 1;
        if (v17 != v171)
        {
          v36 = 8;
          v33 = v34;
        }

        v177 = v33;
        v188 = a3 + (v30 - v191) * a11;
        v189 = v36;
        v187 = v36;
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

          if (v183 < v38)
          {
            v38 = v183;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v193)
          {
            v42 = v176 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v190 >= v191 && v37 >= a7)
          {
            v44 = v40 != v176;
            if (v35 != v193)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v177;
          }

          if (v184)
          {
            v65 = 0;
            v66 = v168 >> (*(result + 57) != 0);
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

            v156 = (v65 >> 3) - 1;
            if (v67)
            {
              v157 = 0;
            }

            else
            {
              v157 = 32 - __clz(~(-1 << -__clz(v156)));
            }

            v158 = (v69 >> 3) - 1;
            if (v68)
            {
              v159 = 0;
              if (v157)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v159 = 32 - __clz(~(-1 << -__clz(v158)));
              if (v159 | v157)
              {
LABEL_198:
                v160 = 0;
                v161 = 0;
                v162 = v35 & v156;
                v163 = v17 & v158;
                v164 = v157 != 0;
                v165 = v159 != 0;
                v166 = 1;
                do
                {
                  --v157;
                  if (v164)
                  {
                    v161 |= (v166 & v162) << v160++;
                  }

                  else
                  {
                    v157 = 0;
                  }

                  --v159;
                  if (v165)
                  {
                    v161 |= (v166 & v163) << v160++;
                  }

                  else
                  {
                    v159 = 0;
                  }

                  v166 *= 2;
                  --v160;
                  v165 = v159 != 0;
                  v164 = v157 != 0;
                }

                while (v159 | v157);
                v167 = v161 << 9;
                result = v192;
                goto LABEL_210;
              }
            }

            v167 = 0;
LABEL_210:
            v52 = v167 + ((v37 / v65 + v190 / v69 * ((v65 + v169) / v65)) << 14);
            goto LABEL_52;
          }

          if (v182)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v180;
            v49 = BYTE4(v180);
            v51 = v181.i32[0];
            v50 = v181.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
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
            v52 = v46 << 9;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(result + 128) >> (*(result + 144) + a12);
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
          v71 = a7;
          v72 = v188 + 8 * (v39 - a7);
          v73 = (a2 + v52);
          __src = (a2 + v52);
          if (v195)
          {
            if (!(v43 & 1 | (v42 < 8u) | (v187 < 8)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v189);
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v74;
            v73 = __dst;
            result = v192;
          }

          else if (!(v43 & 1 | (v42 < 8u) | (v187 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v197 = v73;
          v205 = v42;
          v206 = v189;
          v201 = v179;
          v202 = v39 - v37;
          v198 = v70;
          v199 = v72;
          v200 = a11;
          v203 = v178;
          v204 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v70;
            a7 = v71;
            if (v75 == 63)
            {
              v77 = *v73;
              v27 = v73[1];
              v78 = v73[2];
              v79 = v73[3];
              v208 = *v73;
              v209 = v78;
              v212 = v27;
              v213 = v79;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v77 = vld1q_dup_s16(v73->i16);
              v208 = v77;
              v209 = v77;
              v212 = v77;
              v213 = v77;
              v76 = 2;
            }

            else if (*v70)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 64, v73, v75, v28, *v27.i8);
            }

            else
            {
              v76 = 0;
              v77.i64[0] = 0;
              v208 = 0u;
              v209 = 0u;
              v212 = 0u;
              v213 = 0u;
            }

            v80 = v73->i64 + v76;
            v81 = v70[1];
            if (v81 == 63)
            {
              v83 = *v80;
              v27 = *(v80 + 16);
              v84 = *(v80 + 32);
              v85 = *(v80 + 48);
              v216 = *v80;
              v217 = v84;
              v220 = v27;
              v221 = v85;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v216 = v83;
              v217 = v83;
              v220 = v83;
              v221 = v83;
              v82 = 2;
            }

            else if (v70[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81, *v77.i8, *v27.i8);
            }

            else
            {
              v82 = 0;
              v83.i64[0] = 0;
              v216 = 0u;
              v217 = 0u;
              v220 = 0u;
              v221 = 0u;
            }

            v86 = v80 + v82;
            v87 = v70[2];
            if (v87 == 63)
            {
              v89 = *v86;
              v27 = *(v86 + 16);
              v90 = *(v86 + 32);
              v91 = *(v86 + 48);
              v210 = *v86;
              v211 = v90;
              v214 = v27;
              v215 = v91;
              v88 = 64;
            }

            else if (v87 == 1)
            {
              v89 = vld1q_dup_s16(v86);
              v210 = v89;
              v211 = v89;
              v214 = v89;
              v215 = v89;
              v88 = 2;
            }

            else if (v70[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 64, v86, v87, *v83.i8, *v27.i8);
            }

            else
            {
              v88 = 0;
              v89.i64[0] = 0;
              v210 = 0u;
              v211 = 0u;
              v214 = 0u;
              v215 = 0u;
            }

            v92 = v86 + v88;
            v93 = v70[3];
            if (v93 == 63)
            {
              v95 = *v92;
              v27 = *(v92 + 16);
              v96 = *(v92 + 32);
              v97 = *(v92 + 48);
              v218 = *v92;
              v219 = v96;
              v222 = v27;
              v223 = v97;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v95 = vld1q_dup_s16(v92);
              v218 = v95;
              v219 = v95;
              v222 = v95;
              v223 = v95;
              v94 = 2;
            }

            else if (v70[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v92, v93, *v89.i8, *v27.i8);
            }

            else
            {
              v94 = 0;
              v95.i64[0] = 0;
              v218 = 0u;
              v219 = 0u;
              v222 = 0u;
              v223 = 0u;
            }

            v98 = v92 + v94;
            v99 = v70[4];
            if (v99 == 63)
            {
              v101 = *v98;
              v27 = *(v98 + 16);
              v102 = *(v98 + 32);
              v103 = *(v98 + 48);
              v224 = *v98;
              v225 = v102;
              v228 = v27;
              v229 = v103;
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v101 = vld1q_dup_s16(v98);
              v224 = v101;
              v225 = v101;
              v228 = v101;
              v229 = v101;
              v100 = 2;
            }

            else if (v70[4])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 64, v98, v99, *v95.i8, *v27.i8);
            }

            else
            {
              v100 = 0;
              v101.i64[0] = 0;
              v224 = 0u;
              v225 = 0u;
              v228 = 0u;
              v229 = 0u;
            }

            v104 = v98 + v100;
            v105 = v70[5];
            if (v105 == 63)
            {
              v107 = *v104;
              v27 = *(v104 + 16);
              v108 = *(v104 + 32);
              v109 = *(v104 + 48);
              v232 = *v104;
              v233 = v108;
              v236 = v27;
              v237 = v109;
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v107 = vld1q_dup_s16(v104);
              v232 = v107;
              v233 = v107;
              v236 = v107;
              v237 = v107;
              v106 = 2;
            }

            else if (v70[5])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v104, v105, *v101.i8, *v27.i8);
            }

            else
            {
              v106 = 0;
              v107.i64[0] = 0;
              v232 = 0u;
              v233 = 0u;
              v236 = 0u;
              v237 = 0u;
            }

            v110 = v104 + v106;
            v111 = v70[6];
            if (v111 == 63)
            {
              v113 = *v110;
              v27 = *(v110 + 16);
              v114 = *(v110 + 32);
              v115 = *(v110 + 48);
              v226 = *v110;
              v227 = v114;
              v230 = v27;
              v231 = v115;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v110);
              v226 = v113;
              v227 = v113;
              v230 = v113;
              v231 = v113;
              v112 = 2;
            }

            else if (v70[6])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v110, v111, *v107.i8, *v27.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              v226 = 0u;
              v227 = 0u;
              v230 = 0u;
              v231 = 0u;
            }

            v116 = v110 + v112;
            v117 = v70[7];
            if (v117 == 63)
            {
              v120 = *(v116 + 16);
              v121 = *(v116 + 32);
              v122 = *(v116 + 48);
              v234 = *v116;
              v235 = v121;
              v238 = v120;
              v239 = v122;
              v118 = v203;
              if (v203)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v117 != 1)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v116, v117, *v113.i8, *v27.i8);
                  v118 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v234 = 0u;
                  v235 = 0u;
                  v238 = 0u;
                  v239 = 0u;
                  v118 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v123 = v204;
                if (!v204)
                {
                  goto LABEL_177;
                }

                v124 = 0;
                v125 = v201 << 6;
                v126 = 8 * v202;
                v127 = &v208.i8[v125 + v126];
                v128 = v199;
                v129 = v200;
                v130 = 8 * v204;
                if (8 * v204)
                {
                  v131 = (8 * v204 - 1) >> 32 == 0;
                }

                else
                {
                  v131 = 0;
                }

                v132 = !v131;
                v134 = v127 < v199 + v200 * (v118 - 1) + 8 * v204 && v199 < &__dst[64 * v118 + 448 + 64 * v201 + 8 * v204 + v126];
                v135 = v130 & 0x1FFFFFFE0;
                v136 = v132 | (v200 < 0) | v134;
                v137 = &v209.i8[v125 + v126];
                v138 = (v199 + 16);
                v139 = v127;
                v140 = v199;
                while (2)
                {
                  v141 = (v128 + v124 * v129);
                  v142 = &v127[64 * v124];
                  if (v136)
                  {
                    v143 = 0;
LABEL_164:
                    v144 = v143 + 1;
                    do
                    {
                      v145 = *v141++;
                      *v142++ = v145;
                    }

                    while (v130 > v144++);
LABEL_161:
                    ++v124;
                    v137 += 64;
                    v138 = (v138 + v129);
                    v140 += v129;
                    v139 += 64;
                    if (v124 == v118)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v123 >= 4)
                {
                  v148 = v138;
                  v149 = v137;
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
                  if (v130 == v135)
                  {
                    goto LABEL_161;
                  }

                  v147 = v130 & 0x1FFFFFFE0;
                  if ((v123 & 3) == 0)
                  {
                    v141 += v135;
                    v142 += v135;
                    v143 = v130 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v147 = 0;
                }

                v152 = -8 * v123 + v147;
                v153 = (v140 + v147);
                v154 = &v139[v147];
                do
                {
                  v155 = *v153++;
                  *v154 = v155;
                  v154 += 8;
                  v152 += 8;
                }

                while (v152);
                goto LABEL_161;
              }

              v119 = vld1q_dup_s16(v116);
              v234 = v119;
              v235 = v119;
              v238 = v119;
              v239 = v119;
              v118 = v203;
              if (v203)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v208, 64, v197, v198, v205, v206);
            if (!v195)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v71;
          if (!v195)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v73, 0x200uLL);
LABEL_26:
          v21 = v35++ == v183 >> 3;
          result = v192;
        }

        while (!v21);
        v21 = v17++ == v175;
      }

      while (!v21);
    }
  }

  return result;
}

void *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v265 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v216 = a8;
  v17 = a8 >> 3;
  v198 = a8 + a10 - 1;
  v200 = v198 >> 3;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
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
  v220 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  v209 = result;
  if (v17 <= v200)
  {
    v208 = a7 + a9 - 1;
    v197 = a7 >> 3;
    if (a7 >> 3 <= v208 >> 3)
    {
      v218 = (a5 - 1) >> 3;
      v194 = a5 - 1;
      v201 = (a5 - 1) & 7;
      v195 = (a6 - 1) & 7;
      v196 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v27.i8 = vcgt_u32(v26, 0xF0000000FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), *v27.i8);
      v206 = v28.i64[0];
      v207 = v28.i32[0] | v28.i32[1];
      v205 = v27.i64[0];
      v193 = 8 * v19 * v18;
      v217 = v16;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v216)
        {
          v30 = v216;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v198 < v29)
        {
          v29 = v198;
        }

        v215 = 8 * v17;
        v204 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v195;
        v203 = v32;
        v34 = v32 != 8;
        v35 = v197;
        v36 = v195 + 1;
        if (v17 != v196)
        {
          v36 = 8;
          v33 = v34;
        }

        v202 = v33;
        v213 = a3 + (v30 - v216) * a11;
        v214 = v36;
        v212 = v36;
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

          if (v208 < v38)
          {
            v38 = v208;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v218)
          {
            v42 = v201 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v215 >= v216 && v37 >= a7)
          {
            v44 = v40 != v201;
            if (v35 != v218)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v202;
          }

          if (v209)
          {
            v65 = 0;
            v66 = v193 >> (*(v16 + 57) != 0);
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

            v181 = (v65 >> 3) - 1;
            if (v67)
            {
              v182 = 0;
            }

            else
            {
              v182 = 32 - __clz(~(-1 << -__clz(v181)));
            }

            v183 = (v69 >> 3) - 1;
            if (v68)
            {
              v184 = 0;
              if (v182)
              {
                goto LABEL_223;
              }
            }

            else
            {
              v184 = 32 - __clz(~(-1 << -__clz(v183)));
              if (v184 | v182)
              {
LABEL_223:
                v185 = 0;
                v186 = 0;
                v187 = v35 & v181;
                v188 = v17 & v183;
                v189 = v182 != 0;
                v190 = v184 != 0;
                v191 = 1;
                do
                {
                  --v182;
                  if (v189)
                  {
                    v186 |= (v191 & v187) << v185++;
                  }

                  else
                  {
                    v182 = 0;
                  }

                  --v184;
                  if (v190)
                  {
                    v186 |= (v191 & v188) << v185++;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v191 *= 2;
                  --v185;
                  v190 = v184 != 0;
                  v189 = v182 != 0;
                }

                while (v184 | v182);
                v192 = v186 << 9;
                goto LABEL_235;
              }
            }

            v192 = 0;
LABEL_235:
            v52 = v192 + ((v37 / v65 + v215 / v69 * ((v65 + v194) / v65)) << 14);
            goto LABEL_52;
          }

          if (v207)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v205;
            v49 = BYTE4(v205);
            v51 = v206;
            v50 = HIDWORD(v206);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
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
            v52 = v46 << 9;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v56 = *(v16 + 132) >> (*(v16 + 144) + a12);
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
          v71 = a7;
          v72 = (v213 + 8 * (v39 - a7));
          v73 = (a2 + v52);
          v219 = (a2 + v52);
          if (v220)
          {
            if (!(v43 & 1 | (v42 < 8u) | (v212 < 8)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v214);
              a7 = v71;
              v16 = v217;
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, (a2 + v52), sizeof(__dst));
            v41 = v74;
            v73 = __dst;
          }

          else if (!(v43 & 1 | (v42 < 8u) | (v212 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v217;
          v222 = v73;
          v230 = v42;
          v231 = v214;
          v226 = v204;
          v227 = v39 - v37;
          v223 = v70;
          v224 = v72;
          v225 = a11;
          v228 = v203;
          v229 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v217 + 8) + 16552), block);
            a7 = v71;
            v16 = v217;
LABEL_86:
            v75 = v35 + 1;
            result = v219;
            if (!v220)
            {
              goto LABEL_26;
            }

LABEL_203:
            result = memcpy(result, v73, 0x200uLL);
            goto LABEL_26;
          }

          v76 = *v70;
          a7 = v71;
          if (v76 == 63)
          {
            v78 = *v73;
            v27 = v73[1];
            v79 = v73[2];
            v80 = v73[3];
            v233 = *v73;
            v234 = v79;
            v237 = v27;
            v238 = v80;
            v77 = 64;
            v75 = v35 + 1;
          }

          else
          {
            v75 = v35 + 1;
            if (v76 == 1)
            {
              v78 = vld1q_dup_s16(v73->i16);
              v233 = v78;
              v234 = v78;
              v237 = v78;
              v238 = v78;
              v77 = 2;
            }

            else if (*v70)
            {
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v73, v76, *v28.i8, *v27.i8);
            }

            else
            {
              v77 = 0;
              v78.i64[0] = 0;
              v233 = 0u;
              v234 = 0u;
              v237 = 0u;
              v238 = 0u;
            }
          }

          v81 = v73->i64 + v77;
          v82 = v70[1];
          if (v82 == 63)
          {
            v84 = *v81;
            v27 = *(v81 + 16);
            v85 = *(v81 + 32);
            v86 = *(v81 + 48);
            v241 = *v81;
            v242 = v85;
            v245 = v27;
            v246 = v86;
            v83 = 64;
          }

          else if (v82 == 1)
          {
            v84 = vld1q_dup_s16(v81);
            v241 = v84;
            v242 = v84;
            v245 = v84;
            v246 = v84;
            v83 = 2;
          }

          else if (v70[1])
          {
            v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 64, v81, v82, *v78.i8, *v27.i8);
          }

          else
          {
            v83 = 0;
            v84.i64[0] = 0;
            v241 = 0u;
            v242 = 0u;
            v245 = 0u;
            v246 = 0u;
          }

          v87 = v81 + v83;
          v88 = v70[2];
          if (v88 == 63)
          {
            v90 = *v87;
            v27 = *(v87 + 16);
            v91 = *(v87 + 32);
            v92 = *(v87 + 48);
            v235 = *v87;
            v236 = v91;
            v239 = v27;
            v240 = v92;
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v87);
            v235 = v90;
            v236 = v90;
            v239 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (v70[2])
          {
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 64, v87, v88, *v84.i8, *v27.i8);
          }

          else
          {
            v89 = 0;
            v90.i64[0] = 0;
            v235 = 0u;
            v236 = 0u;
            v239 = 0u;
            v240 = 0u;
          }

          v93 = v87 + v89;
          v94 = v70[3];
          if (v94 == 63)
          {
            v96 = *v93;
            v27 = *(v93 + 16);
            v97 = *(v93 + 32);
            v98 = *(v93 + 48);
            v243 = *v93;
            v244 = v97;
            v247 = v27;
            v248 = v98;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v93);
            v243 = v96;
            v244 = v96;
            v247 = v96;
            v248 = v96;
            v95 = 2;
          }

          else if (v70[3])
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v93, v94, *v90.i8, *v27.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v243 = 0u;
            v244 = 0u;
            v247 = 0u;
            v248 = 0u;
          }

          v99 = v93 + v95;
          v100 = v70[4];
          if (v100 == 63)
          {
            v102 = *v99;
            v27 = *(v99 + 16);
            v103 = *(v99 + 32);
            v104 = *(v99 + 48);
            v249 = *v99;
            v250 = v103;
            v253 = v27;
            v254 = v104;
            v101 = 64;
          }

          else if (v100 == 1)
          {
            v102 = vld1q_dup_s16(v99);
            v249 = v102;
            v250 = v102;
            v253 = v102;
            v254 = v102;
            v101 = 2;
          }

          else if (v70[4])
          {
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 64, v99, v100, *v96.i8, *v27.i8);
          }

          else
          {
            v101 = 0;
            v102.i64[0] = 0;
            v249 = 0u;
            v250 = 0u;
            v253 = 0u;
            v254 = 0u;
          }

          v105 = v99 + v101;
          v106 = v70[5];
          if (v106 == 63)
          {
            v108 = *v105;
            v27 = *(v105 + 16);
            v109 = *(v105 + 32);
            v110 = *(v105 + 48);
            v257 = *v105;
            v258 = v109;
            v261 = v27;
            v262 = v110;
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v257 = v108;
            v258 = v108;
            v261 = v108;
            v262 = v108;
            v107 = 2;
          }

          else if (v70[5])
          {
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 64, v105, v106, *v102.i8, *v27.i8);
          }

          else
          {
            v107 = 0;
            v108.i64[0] = 0;
            v257 = 0u;
            v258 = 0u;
            v261 = 0u;
            v262 = 0u;
          }

          v111 = v105 + v107;
          v112 = v70[6];
          if (v112 == 63)
          {
            v114 = *v111;
            v27 = *(v111 + 16);
            v115 = *(v111 + 32);
            v116 = *(v111 + 48);
            v251 = *v111;
            v252 = v115;
            v255 = v27;
            v256 = v116;
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v251 = v114;
            v252 = v114;
            v255 = v114;
            v256 = v114;
            v113 = 2;
          }

          else if (v70[6])
          {
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 64, v111, v112, *v108.i8, *v27.i8);
          }

          else
          {
            v113 = 0;
            v114.i64[0] = 0;
            v251 = 0u;
            v252 = 0u;
            v255 = 0u;
            v256 = 0u;
          }

          v117 = v111 + v113;
          v118 = v70[7];
          if (v118 == 63)
          {
            v28 = *v117;
            v27 = *(v117 + 16);
            v120 = *(v117 + 32);
            v121 = *(v117 + 48);
            v259 = *v117;
            v260 = v120;
            v263 = v27;
            v264 = v121;
            v16 = v217;
            v119 = v228;
            if (v228)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v16 = v217;
            if (v118 == 1)
            {
              v28 = vld1q_dup_s16(v117);
              v259 = v28;
              v260 = v28;
              v263 = v28;
              v264 = v28;
              v119 = v228;
              if (v228)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v118)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 64, v117, v118, *v114.i8, *v27.i8);
                v119 = v228;
                if (!v228)
                {
                  goto LABEL_177;
                }

LABEL_147:
                v122 = v229;
                if (!v229)
                {
                  goto LABEL_177;
                }

                v123 = 0;
                v124 = 8 * v227;
                v125 = &v233.i8[64 * v226 + v124];
                v126 = v224;
                v127 = v225;
                v128 = 8 * v229;
                if (8 * v229)
                {
                  v129 = (8 * v229 - 1) >> 32 == 0;
                }

                else
                {
                  v129 = 0;
                }

                v130 = !v129;
                v132 = v125 < v224 + 8 * v229 + v225 * (v119 - 1) && v224 < &__dst[64 * v119 + 448 + 64 * v226 + 8 * v229 + v124];
                v133 = v128 & 0x1FFFFFFE0;
                v134 = v130 | (v225 < 0) | v132;
                v135 = &v234.i8[64 * v226 + v124];
                v136 = (v224 + 1);
                v137 = v125;
                v138 = v224;
                while (2)
                {
                  v139 = v126 + v123 * v127;
                  v140 = &v125[64 * v123];
                  if (v134)
                  {
                    v141 = 0;
LABEL_164:
                    v142 = v141 + 1;
                    do
                    {
                      v143 = *v139++;
                      *v140++ = v143;
                    }

                    while (v128 > v142++);
LABEL_161:
                    ++v123;
                    v135 += 64;
                    v136 = (v136 + v127);
                    v138 = (v138 + v127);
                    v137 += 64;
                    if (v123 == v119)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v122 >= 4)
                {
                  v146 = v136;
                  v147 = v135;
                  v148 = v128 & 0x1FFFFFFE0;
                  do
                  {
                    v28 = v146[-1];
                    v27 = *v146;
                    v147[-1] = v28;
                    *v147 = v27;
                    v147 += 2;
                    v146 += 2;
                    v148 -= 32;
                  }

                  while (v148);
                  if (v128 == v133)
                  {
                    goto LABEL_161;
                  }

                  v145 = v128 & 0x1FFFFFFE0;
                  if ((v122 & 3) == 0)
                  {
                    v139 += v133;
                    v140 += v133;
                    v141 = v128 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v145 = 0;
                }

                v149 = -8 * v122 + v145;
                v150 = (v138 + v145);
                v151 = &v137[v145];
                do
                {
                  v152 = *v150++;
                  v28.i64[0] = v152;
                  *v151++ = v152;
                  v149 += 8;
                }

                while (v149);
                goto LABEL_161;
              }

              v28.i64[0] = 0;
              v259 = 0u;
              v260 = 0u;
              v263 = 0u;
              v264 = 0u;
              v119 = v228;
              if (v228)
              {
                goto LABEL_147;
              }
            }
          }

LABEL_177:
          v153 = 0;
          v155 = v222;
          v154 = v223;
          v156 = v230;
          v157 = v231;
          if (v230)
          {
            result = v219;
            if (v231)
            {
              v28.i64[0] = v233.i64[0];
              v27 = v234;
              v158 = v237;
              v159 = v238;
              *v222 = v233;
              v155[1] = v158;
              v155[2] = v27;
              v155[3] = v159;
              v155 += 4;
              v153 = 63;
            }
          }

          else
          {
            result = v219;
          }

          v160 = 0;
          *v154 = v153;
          if (v156 && v157 >= 3)
          {
            v28.i64[0] = v241.i64[0];
            v27 = v242;
            v161 = v245;
            v162 = v246;
            *v155 = v241;
            v155[1] = v161;
            v155[2] = v27;
            v155[3] = v162;
            v155 += 4;
            v160 = 63;
          }

          v163 = 0;
          v154[1] = v160;
          if (v156 >= 5 && v157)
          {
            v28.i64[0] = v235.i64[0];
            v27 = v236;
            v164 = v239;
            v165 = v240;
            *v155 = v235;
            v155[1] = v164;
            v155[2] = v27;
            v155[3] = v165;
            v155 += 4;
            v163 = 63;
          }

          v166 = 0;
          v154[2] = v163;
          if (v156 >= 5 && v157 >= 3)
          {
            v28.i64[0] = v243.i64[0];
            v27 = v244;
            v167 = v247;
            v168 = v248;
            *v155 = v243;
            v155[1] = v167;
            v155[2] = v27;
            v155[3] = v168;
            v155 += 4;
            v166 = 63;
          }

          v169 = 0;
          v154[3] = v166;
          if (v156 && v157 >= 5)
          {
            v28.i64[0] = v249.i64[0];
            v27 = v250;
            v170 = v253;
            v171 = v254;
            *v155 = v249;
            v155[1] = v170;
            v155[2] = v27;
            v155[3] = v171;
            v155 += 4;
            v169 = 63;
          }

          v172 = 0;
          v154[4] = v169;
          if (v156 && v157 >= 7)
          {
            v28.i64[0] = v257.i64[0];
            v27 = v258;
            v173 = v261;
            v174 = v262;
            *v155 = v257;
            v155[1] = v173;
            v155[2] = v27;
            v155[3] = v174;
            v155 += 4;
            v172 = 63;
          }

          v175 = 0;
          v154[5] = v172;
          if (v156 >= 5 && v157 >= 5)
          {
            v28.i64[0] = v251.i64[0];
            v27 = v252;
            v176 = v255;
            v177 = v256;
            *v155 = v251;
            v155[1] = v176;
            v155[2] = v27;
            v155[3] = v177;
            v155 += 4;
            v175 = 63;
          }

          v178 = 0;
          v154[6] = v175;
          if (v156 >= 5 && v157 >= 7)
          {
            v28.i64[0] = v259.i64[0];
            v27 = v260;
            v179 = v263;
            v180 = v264;
            *v155 = v259;
            v155[1] = v179;
            v155[2] = v27;
            v155[3] = v180;
            v178 = 63;
          }

          v154[7] = v178;
          if (v220)
          {
            goto LABEL_203;
          }

LABEL_26:
          v21 = v35 == v208 >> 3;
          v35 = v75;
        }

        while (!v21);
        v21 = v17++ == v200;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v284 = v23;
  v24 = v12;
  v451 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v306 = v14;
  v286 = v14 + a10 - 1;
  v307 = v24;
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
  v285 = v286 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v310 = v32;
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
      v298 = 0;
LABEL_32:
      v295 = v35 - 3;
      v289 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v283 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v298 = v40 >= v34;
    goto LABEL_32;
  }

  v298 = 0;
  v283 = 0;
  v289 = 0;
  v295 = 0;
LABEL_33:
  if (v26 <= v285)
  {
    v297 = v16 + a9 - 1;
    v282 = v16 >> 3;
    if (v16 >> 3 <= v297 >> 3)
    {
      v308 = v27 >> 3;
      v290 = v27 & 7;
      v280 = v28 & 7;
      v281 = v28 >> 3;
      v279 = ~(-1 << v289);
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v288 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v287 = v43;
      v296 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v306)
        {
          v45 = v306;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v286 < v44)
        {
          v44 = v286;
        }

        v305 = 8 * v26;
        v294 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v280;
        v293 = v47;
        v49 = v47 != 8;
        v50 = v280 + 1;
        if (v26 != v281)
        {
          v50 = 8;
          v48 = v49;
        }

        v292 = v48;
        v51 = v282;
        v291 = (v26 >> v289) * v283;
        v52 = v26 & v279;
        v303 = v284 + (v45 - v306) * a11;
        v304 = v50;
        v302 = v50;
        v301 = v26 & v279;
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

          if (v297 < v54)
          {
            v54 = v297;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v308)
          {
            v58 = v290 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v305 >= v306 && v53 >= v16)
          {
            v60 = v56 != v290;
            if (v51 != v308)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v292;
          }

          if (v298)
          {
            if (v295 | v289)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v295 != 0;
              v65 = v289 != 0;
              v66 = v295;
              v67 = v289;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v295) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v295) + v291);
          }

          else if (v288)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v287.i8[4];
            v73 = v287.i8[0];
            v74 = v288.i32[1];
            v75 = v288.i32[0];
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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

          v89 = (v300 + v88);
          v90 = v303 + 32 * (v55 - v16);
          v309 = (v299 + v76);
          if (v310)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 8)))
            {
              goto LABEL_109;
            }

            v92 = (v300 + v88);
            v93 = v58;
            v94 = v59;
            v95 = v26;
            v96 = v55;
            memcpy(__dst, (v299 + v76), sizeof(__dst));
            v55 = v96;
            v26 = v95;
            v59 = v94;
            LOBYTE(v58) = v93;
            v89 = v92;
            result = v307;
          }

          else
          {
            v91 = (v299 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v304);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v97 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v312 = v91;
          v320 = v58;
          v321 = v304;
          v316 = v294;
          v317 = v55 - v53;
          v313 = v89;
          v314 = v90;
          v315 = a11;
          v318 = v293;
          v319 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            v16 = v296;
            v98 = v51 + 1;
            v52 = v301;
            goto LABEL_192;
          }

          v99 = *v89;
          v16 = v296;
          if (v99 == 255)
          {
            v102 = *(v91 + 1);
            v103 = *(v91 + 2);
            v104 = *(v91 + 3);
            v105 = *(v91 + 4);
            v106 = *(v91 + 5);
            v107 = *(v91 + 6);
            v108 = *(v91 + 7);
            v109 = *(v91 + 8);
            v110 = *(v91 + 9);
            v111 = *(v91 + 10);
            v112 = *(v91 + 11);
            v113 = *(v91 + 12);
            v114 = *(v91 + 13);
            v115 = *(v91 + 14);
            v116 = *(v91 + 15);
            v323 = *v91;
            v324 = v102;
            v325 = v103;
            v326 = v104;
            v327 = v109;
            v328 = v110;
            v329 = v111;
            v330 = v112;
            v339 = v105;
            v340 = v106;
            v341 = v107;
            v342 = v108;
            v100 = 256;
            v343 = v113;
            v344 = v114;
            v345 = v115;
            v346 = v116;
            v98 = v51 + 1;
            v52 = v301;
          }

          else
          {
            v98 = v51 + 1;
            v52 = v301;
            if (v99 == 7)
            {
              v101 = vld1q_dup_f64(v91);
              v323 = v101;
              v324 = v101;
              v325 = v101;
              v326 = v101;
              v327 = v101;
              v328 = v101;
              v329 = v101;
              v330 = v101;
              v339 = v101;
              v340 = v101;
              v341 = v101;
              v342 = v101;
              v343 = v101;
              v344 = v101;
              v100 = 8;
              v345 = v101;
              v346 = v101;
            }

            else if (*v89)
            {
              v117 = v89;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 256, v91, v99);
              v89 = v117;
            }

            else
            {
              v100 = 0;
              v330 = 0u;
              v329 = 0u;
              v328 = 0u;
              v327 = 0u;
              v326 = 0u;
              v325 = 0u;
              v324 = 0u;
              v323 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              v345 = 0u;
              v346 = 0u;
            }
          }

          v118 = &v91[v100];
          v119 = v89[1];
          if (v119 == 255)
          {
            v122 = *(v118 + 16);
            v123 = *(v118 + 32);
            v124 = *(v118 + 48);
            v125 = *(v118 + 64);
            v126 = *(v118 + 80);
            v127 = *(v118 + 96);
            v128 = *(v118 + 112);
            v129 = *(v118 + 128);
            v130 = *(v118 + 144);
            v131 = *(v118 + 160);
            v132 = *(v118 + 176);
            v133 = *(v118 + 192);
            v134 = *(v118 + 208);
            v135 = *(v118 + 224);
            v136 = *(v118 + 240);
            v355 = *v118;
            v356 = v122;
            v357 = v123;
            v358 = v124;
            v359 = v129;
            v360 = v130;
            v361 = v131;
            v362 = v132;
            v371 = v125;
            v372 = v126;
            v373 = v127;
            v374 = v128;
            v120 = 256;
            v375 = v133;
            v376 = v134;
            v377 = v135;
            v378 = v136;
          }

          else if (v119 == 7)
          {
            v121 = vld1q_dup_f64(v118);
            v355 = v121;
            v356 = v121;
            v357 = v121;
            v358 = v121;
            v359 = v121;
            v360 = v121;
            v361 = v121;
            v362 = v121;
            v371 = v121;
            v372 = v121;
            v373 = v121;
            v374 = v121;
            v375 = v121;
            v376 = v121;
            v120 = 8;
            v377 = v121;
            v378 = v121;
          }

          else if (v89[1])
          {
            v137 = v89;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v355, 256, v118, v119);
            v89 = v137;
          }

          else
          {
            v120 = 0;
            v361 = 0u;
            v362 = 0u;
            v359 = 0u;
            v360 = 0u;
            v357 = 0u;
            v358 = 0u;
            v355 = 0u;
            v356 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
          }

          v138 = v118 + v120;
          v139 = v89[2];
          if (v139 == 255)
          {
            v142 = *(v138 + 16);
            v143 = *(v138 + 32);
            v144 = *(v138 + 48);
            v145 = *(v138 + 64);
            v146 = *(v138 + 80);
            v147 = *(v138 + 96);
            v148 = *(v138 + 112);
            v149 = *(v138 + 128);
            v150 = *(v138 + 144);
            v151 = *(v138 + 160);
            v152 = *(v138 + 176);
            v153 = *(v138 + 192);
            v154 = *(v138 + 208);
            v155 = *(v138 + 224);
            v156 = *(v138 + 240);
            v331 = *v138;
            v332 = v142;
            v333 = v143;
            v334 = v144;
            v335 = v149;
            v336 = v150;
            v337 = v151;
            v338 = v152;
            v347 = v145;
            v348 = v146;
            v349 = v147;
            v350 = v148;
            v140 = 256;
            v351 = v153;
            v352 = v154;
            v353 = v155;
            v354 = v156;
          }

          else if (v139 == 7)
          {
            v141 = vld1q_dup_f64(v138);
            v331 = v141;
            v332 = v141;
            v333 = v141;
            v334 = v141;
            v335 = v141;
            v336 = v141;
            v337 = v141;
            v338 = v141;
            v347 = v141;
            v348 = v141;
            v349 = v141;
            v350 = v141;
            v351 = v141;
            v352 = v141;
            v140 = 8;
            v353 = v141;
            v354 = v141;
          }

          else if (v89[2])
          {
            v157 = v89;
            v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v331, 256, v138, v139);
            v89 = v157;
          }

          else
          {
            v140 = 0;
            v337 = 0u;
            v338 = 0u;
            v335 = 0u;
            v336 = 0u;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
          }

          v158 = v138 + v140;
          v159 = v89[3];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v169 = *(v158 + 128);
            v170 = *(v158 + 144);
            v171 = *(v158 + 160);
            v172 = *(v158 + 176);
            v173 = *(v158 + 192);
            v174 = *(v158 + 208);
            v175 = *(v158 + 224);
            v176 = *(v158 + 240);
            v363 = *v158;
            v364 = v162;
            v365 = v163;
            v366 = v164;
            v367 = v169;
            v368 = v170;
            v369 = v171;
            v370 = v172;
            v379 = v165;
            v380 = v166;
            v381 = v167;
            v382 = v168;
            v160 = 256;
            v383 = v173;
            v384 = v174;
            v385 = v175;
            v386 = v176;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v363 = v161;
            v364 = v161;
            v365 = v161;
            v366 = v161;
            v367 = v161;
            v368 = v161;
            v369 = v161;
            v370 = v161;
            v379 = v161;
            v380 = v161;
            v381 = v161;
            v382 = v161;
            v383 = v161;
            v384 = v161;
            v160 = 8;
            v385 = v161;
            v386 = v161;
          }

          else if (v89[3])
          {
            v177 = v89;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v363, 256, v158, v159);
            v89 = v177;
          }

          else
          {
            v160 = 0;
            v369 = 0u;
            v370 = 0u;
            v367 = 0u;
            v368 = 0u;
            v365 = 0u;
            v366 = 0u;
            v363 = 0u;
            v364 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
          }

          v178 = v158 + v160;
          v179 = v89[4];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v387 = *v178;
            v388 = v182;
            v389 = v183;
            v390 = v184;
            v391 = v189;
            v392 = v190;
            v393 = v191;
            v394 = v192;
            v403 = v185;
            v404 = v186;
            v405 = v187;
            v406 = v188;
            v180 = 256;
            v407 = v193;
            v408 = v194;
            v409 = v195;
            v410 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v387 = v181;
            v388 = v181;
            v389 = v181;
            v390 = v181;
            v391 = v181;
            v392 = v181;
            v393 = v181;
            v394 = v181;
            v403 = v181;
            v404 = v181;
            v405 = v181;
            v406 = v181;
            v407 = v181;
            v408 = v181;
            v409 = v181;
            v180 = 8;
            v410 = v181;
          }

          else if (v89[4])
          {
            v197 = v89;
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 256, v178, v179);
            v89 = v197;
          }

          else
          {
            v180 = 0;
            v393 = 0u;
            v394 = 0u;
            v391 = 0u;
            v392 = 0u;
            v389 = 0u;
            v390 = 0u;
            v387 = 0u;
            v388 = 0u;
            v403 = 0u;
            v404 = 0u;
            v405 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 0u;
          }

          v198 = v178 + v180;
          v199 = v89[5];
          if (v199 == 255)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = *(v198 + 64);
            v206 = *(v198 + 80);
            v207 = *(v198 + 96);
            v208 = *(v198 + 112);
            v209 = *(v198 + 128);
            v210 = *(v198 + 144);
            v211 = *(v198 + 160);
            v212 = *(v198 + 176);
            v213 = *(v198 + 192);
            v214 = *(v198 + 208);
            v215 = *(v198 + 224);
            v216 = *(v198 + 240);
            v419 = *v198;
            v420 = v202;
            v421 = v203;
            v422 = v204;
            v423 = v209;
            v424 = v210;
            v425 = v211;
            v426 = v212;
            v435 = v205;
            v436 = v206;
            v437 = v207;
            v438 = v208;
            v200 = 256;
            v439 = v213;
            v440 = v214;
            v441 = v215;
            v442 = v216;
          }

          else if (v199 == 7)
          {
            v201 = vld1q_dup_f64(v198);
            v419 = v201;
            v420 = v201;
            v421 = v201;
            v422 = v201;
            v423 = v201;
            v424 = v201;
            v425 = v201;
            v426 = v201;
            v435 = v201;
            v436 = v201;
            v437 = v201;
            v438 = v201;
            v439 = v201;
            v440 = v201;
            v441 = v201;
            v200 = 8;
            v442 = v201;
          }

          else if (v89[5])
          {
            v217 = v89;
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 256, v198, v199);
            v89 = v217;
          }

          else
          {
            v200 = 0;
            v425 = 0u;
            v426 = 0u;
            v423 = 0u;
            v424 = 0u;
            v421 = 0u;
            v422 = 0u;
            v419 = 0u;
            v420 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
          }

          v218 = v198 + v200;
          v219 = v89[6];
          if (v219 == 255)
          {
            v222 = *(v218 + 16);
            v223 = *(v218 + 32);
            v224 = *(v218 + 48);
            v225 = *(v218 + 64);
            v226 = *(v218 + 80);
            v227 = *(v218 + 96);
            v228 = *(v218 + 112);
            v229 = *(v218 + 128);
            v230 = *(v218 + 144);
            v231 = *(v218 + 160);
            v232 = *(v218 + 176);
            v233 = *(v218 + 192);
            v234 = *(v218 + 208);
            v235 = *(v218 + 224);
            v236 = *(v218 + 240);
            v395 = *v218;
            v396 = v222;
            v397 = v223;
            v398 = v224;
            v399 = v229;
            v400 = v230;
            v401 = v231;
            v402 = v232;
            v411 = v225;
            v412 = v226;
            v413 = v227;
            v414 = v228;
            v220 = 256;
            v415 = v233;
            v416 = v234;
            v417 = v235;
            v418 = v236;
          }

          else if (v219 == 7)
          {
            v221 = vld1q_dup_f64(v218);
            v395 = v221;
            v396 = v221;
            v397 = v221;
            v398 = v221;
            v399 = v221;
            v400 = v221;
            v401 = v221;
            v402 = v221;
            v411 = v221;
            v412 = v221;
            v413 = v221;
            v414 = v221;
            v415 = v221;
            v416 = v221;
            v417 = v221;
            v220 = 8;
            v418 = v221;
          }

          else if (v89[6])
          {
            v237 = v89;
            v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v395, 256, v218, v219);
            v89 = v237;
          }

          else
          {
            v220 = 0;
            v401 = 0u;
            v402 = 0u;
            v399 = 0u;
            v400 = 0u;
            v397 = 0u;
            v398 = 0u;
            v395 = 0u;
            v396 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v418 = 0u;
          }

          v238 = v218 + v220;
          v239 = v89[7];
          if (v239 == 255)
          {
            v243 = *(v238 + 16);
            v244 = *(v238 + 32);
            v245 = *(v238 + 48);
            v246 = *(v238 + 64);
            v247 = *(v238 + 80);
            v248 = *(v238 + 96);
            v249 = *(v238 + 112);
            v250 = *(v238 + 128);
            v251 = *(v238 + 144);
            v252 = *(v238 + 160);
            v253 = *(v238 + 176);
            v254 = *(v238 + 192);
            v255 = *(v238 + 208);
            v256 = *(v238 + 224);
            v257 = *(v238 + 240);
            v427 = *v238;
            v428 = v243;
            v429 = v244;
            v430 = v245;
            v431 = v250;
            v432 = v251;
            v433 = v252;
            v434 = v253;
            v443 = v246;
            v444 = v247;
            v445 = v248;
            v446 = v249;
            v240 = v293;
            v241 = v294;
            v447 = v254;
            v448 = v255;
            v449 = v256;
            v450 = v257;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v239 == 7)
          {
            v242 = vld1q_dup_f64(v238);
            v427 = v242;
            v428 = v242;
            v429 = v242;
            v430 = v242;
            v431 = v242;
            v432 = v242;
            v433 = v242;
            v434 = v242;
            v443 = v242;
            v444 = v242;
            v445 = v242;
            v446 = v242;
            v447 = v242;
            v448 = v242;
            v449 = v242;
            v240 = v293;
            v241 = v294;
            v450 = v242;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v427, 256, v238, v239);
            v241 = v316;
            v97 = v317;
            v240 = v318;
            if (v318)
            {
LABEL_170:
              if (v319)
              {
                v258 = 0;
                v259 = v241;
                v260 = v241 << 8;
                v261 = 32 * v97;
                v262 = &v323 + v260 + v261;
                v263 = v314;
                v264 = v315;
                v265 = 32 * v319;
                v266 = &__dst[256 * v240 + 1792 + 256 * v259 + v265 + v261];
                if (v265)
                {
                  v267 = (v265 - 1) >> 32 == 0;
                }

                else
                {
                  v267 = 0;
                }

                v268 = !v267;
                v270 = v262 < v314 + v315 * (v240 - 1) + v265 && v314 < v266;
                v271 = v268 | (v315 < 0) | v270;
                v272 = &v324 + v260 + v261;
                v273 = (v314 + 16);
                do
                {
                  v274 = v273;
                  v275 = v272;
                  v276 = v265;
                  if (v271)
                  {
                    v277 = 0;
                    do
                    {
                      v262[v277] = *(v263 + v277);
                      ++v277;
                    }

                    while (v265 > v277);
                  }

                  else
                  {
                    do
                    {
                      v278 = *v274;
                      *(v275 - 1) = *(v274 - 1);
                      *v275 = v278;
                      v275 += 2;
                      v274 += 2;
                      v276 -= 32;
                    }

                    while (v276);
                  }

                  ++v258;
                  v272 += 256;
                  v273 = (v273 + v264);
                  v262 += 256;
                  v263 += v264;
                }

                while (v258 != v240);
              }
            }
          }

          else
          {
            v433 = 0u;
            v434 = 0u;
            v431 = 0u;
            v432 = 0u;
            v429 = 0u;
            v430 = 0u;
            v427 = 0u;
            v428 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v240 = v293;
            v241 = v294;
            v449 = 0u;
            v450 = 0u;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v323, 256, v312, v313, v320, v321);
LABEL_192:
          if (v310)
          {
            memcpy(v309, v91, 0x800uLL);
          }

          v29 = v51 == v297 >> 3;
          v51 = v98;
          result = v307;
        }

        while (!v29);
        v29 = v26 == v285;
        v26 = (v26 + 1);
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v284 = v23;
  v24 = v12;
  v451 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v306 = v14;
  v286 = v14 + a10 - 1;
  v307 = v24;
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
  v285 = v286 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v310 = v32;
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
      v298 = 0;
LABEL_32:
      v295 = v35 - 3;
      v289 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v283 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v298 = v40 >= v34;
    goto LABEL_32;
  }

  v298 = 0;
  v283 = 0;
  v289 = 0;
  v295 = 0;
LABEL_33:
  if (v26 <= v285)
  {
    v297 = v16 + a9 - 1;
    v282 = v16 >> 3;
    if (v16 >> 3 <= v297 >> 3)
    {
      v308 = v27 >> 3;
      v290 = v27 & 7;
      v280 = v28 & 7;
      v281 = v28 >> 3;
      v279 = ~(-1 << v289);
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v288 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v287 = v43;
      v296 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v306)
        {
          v45 = v306;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v286 < v44)
        {
          v44 = v286;
        }

        v305 = 8 * v26;
        v294 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v280;
        v293 = v47;
        v49 = v47 != 8;
        v50 = v280 + 1;
        if (v26 != v281)
        {
          v50 = 8;
          v48 = v49;
        }

        v292 = v48;
        v51 = v282;
        v291 = (v26 >> v289) * v283;
        v52 = v26 & v279;
        v303 = v284 + (v45 - v306) * a11;
        v304 = v50;
        v302 = v50;
        v301 = v26 & v279;
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

          if (v297 < v54)
          {
            v54 = v297;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v308)
          {
            v58 = v290 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v305 >= v306 && v53 >= v16)
          {
            v60 = v56 != v290;
            if (v51 != v308)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v292;
          }

          if (v298)
          {
            if (v295 | v289)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v295 != 0;
              v65 = v289 != 0;
              v66 = v295;
              v67 = v289;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v295) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v295) + v291);
          }

          else if (v288)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v287.i8[4];
            v73 = v287.i8[0];
            v74 = v288.i32[1];
            v75 = v288.i32[0];
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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

          v89 = (v300 + v88);
          v90 = (v303 + 32 * (v55 - v16));
          v309 = (v299 + v76);
          if (v310)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 8)))
            {
              goto LABEL_109;
            }

            v92 = (v300 + v88);
            v93 = v58;
            v94 = v59;
            v95 = v26;
            v96 = v55;
            memcpy(__dst, (v299 + v76), sizeof(__dst));
            v55 = v96;
            v26 = v95;
            v59 = v94;
            LOBYTE(v58) = v93;
            v89 = v92;
            result = v307;
          }

          else
          {
            v91 = (v299 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v304);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v97 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v312 = v91;
          v320 = v58;
          v321 = v304;
          v316 = v294;
          v317 = v55 - v53;
          v313 = v89;
          v314 = v90;
          v315 = a11;
          v318 = v293;
          v319 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            v16 = v296;
            v98 = v51 + 1;
            v52 = v301;
            goto LABEL_192;
          }

          v99 = *v89;
          v16 = v296;
          if (v99 == 255)
          {
            v102 = *(v91 + 1);
            v103 = *(v91 + 2);
            v104 = *(v91 + 3);
            v105 = *(v91 + 4);
            v106 = *(v91 + 5);
            v107 = *(v91 + 6);
            v108 = *(v91 + 7);
            v109 = *(v91 + 8);
            v110 = *(v91 + 9);
            v111 = *(v91 + 10);
            v112 = *(v91 + 11);
            v113 = *(v91 + 12);
            v114 = *(v91 + 13);
            v115 = *(v91 + 14);
            v116 = *(v91 + 15);
            v323 = *v91;
            v324 = v102;
            v325 = v103;
            v326 = v104;
            v327 = v109;
            v328 = v110;
            v329 = v111;
            v330 = v112;
            v339 = v105;
            v340 = v106;
            v341 = v107;
            v342 = v108;
            v100 = 256;
            v343 = v113;
            v344 = v114;
            v345 = v115;
            v346 = v116;
            v98 = v51 + 1;
            v52 = v301;
          }

          else
          {
            v98 = v51 + 1;
            v52 = v301;
            if (v99 == 7)
            {
              v101 = vld1q_dup_f64(v91);
              v323 = v101;
              v324 = v101;
              v325 = v101;
              v326 = v101;
              v327 = v101;
              v328 = v101;
              v329 = v101;
              v330 = v101;
              v339 = v101;
              v340 = v101;
              v341 = v101;
              v342 = v101;
              v343 = v101;
              v344 = v101;
              v100 = 8;
              v345 = v101;
              v346 = v101;
            }

            else if (*v89)
            {
              v117 = v89;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 256, v91, v99);
              v89 = v117;
            }

            else
            {
              v100 = 0;
              v330 = 0u;
              v329 = 0u;
              v328 = 0u;
              v327 = 0u;
              v326 = 0u;
              v325 = 0u;
              v324 = 0u;
              v323 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              v345 = 0u;
              v346 = 0u;
            }
          }

          v118 = v91 + v100;
          v119 = v89[1];
          if (v119 == 255)
          {
            v122 = *(v118 + 16);
            v123 = *(v118 + 32);
            v124 = *(v118 + 48);
            v125 = *(v118 + 64);
            v126 = *(v118 + 80);
            v127 = *(v118 + 96);
            v128 = *(v118 + 112);
            v129 = *(v118 + 128);
            v130 = *(v118 + 144);
            v131 = *(v118 + 160);
            v132 = *(v118 + 176);
            v133 = *(v118 + 192);
            v134 = *(v118 + 208);
            v135 = *(v118 + 224);
            v136 = *(v118 + 240);
            v355 = *v118;
            v356 = v122;
            v357 = v123;
            v358 = v124;
            v359 = v129;
            v360 = v130;
            v361 = v131;
            v362 = v132;
            v371 = v125;
            v372 = v126;
            v373 = v127;
            v374 = v128;
            v120 = 256;
            v375 = v133;
            v376 = v134;
            v377 = v135;
            v378 = v136;
          }

          else if (v119 == 7)
          {
            v121 = vld1q_dup_f64(v118);
            v355 = v121;
            v356 = v121;
            v357 = v121;
            v358 = v121;
            v359 = v121;
            v360 = v121;
            v361 = v121;
            v362 = v121;
            v371 = v121;
            v372 = v121;
            v373 = v121;
            v374 = v121;
            v375 = v121;
            v376 = v121;
            v120 = 8;
            v377 = v121;
            v378 = v121;
          }

          else if (v89[1])
          {
            v137 = v89;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v355, 256, v118, v119);
            v89 = v137;
          }

          else
          {
            v120 = 0;
            v361 = 0u;
            v362 = 0u;
            v359 = 0u;
            v360 = 0u;
            v357 = 0u;
            v358 = 0u;
            v355 = 0u;
            v356 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
          }

          v138 = v118 + v120;
          v139 = v89[2];
          if (v139 == 255)
          {
            v142 = *(v138 + 16);
            v143 = *(v138 + 32);
            v144 = *(v138 + 48);
            v145 = *(v138 + 64);
            v146 = *(v138 + 80);
            v147 = *(v138 + 96);
            v148 = *(v138 + 112);
            v149 = *(v138 + 128);
            v150 = *(v138 + 144);
            v151 = *(v138 + 160);
            v152 = *(v138 + 176);
            v153 = *(v138 + 192);
            v154 = *(v138 + 208);
            v155 = *(v138 + 224);
            v156 = *(v138 + 240);
            v331 = *v138;
            v332 = v142;
            v333 = v143;
            v334 = v144;
            v335 = v149;
            v336 = v150;
            v337 = v151;
            v338 = v152;
            v347 = v145;
            v348 = v146;
            v349 = v147;
            v350 = v148;
            v140 = 256;
            v351 = v153;
            v352 = v154;
            v353 = v155;
            v354 = v156;
          }

          else if (v139 == 7)
          {
            v141 = vld1q_dup_f64(v138);
            v331 = v141;
            v332 = v141;
            v333 = v141;
            v334 = v141;
            v335 = v141;
            v336 = v141;
            v337 = v141;
            v338 = v141;
            v347 = v141;
            v348 = v141;
            v349 = v141;
            v350 = v141;
            v351 = v141;
            v352 = v141;
            v140 = 8;
            v353 = v141;
            v354 = v141;
          }

          else if (v89[2])
          {
            v157 = v89;
            v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v331, 256, v138, v139);
            v89 = v157;
          }

          else
          {
            v140 = 0;
            v337 = 0u;
            v338 = 0u;
            v335 = 0u;
            v336 = 0u;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
          }

          v158 = v138 + v140;
          v159 = v89[3];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v169 = *(v158 + 128);
            v170 = *(v158 + 144);
            v171 = *(v158 + 160);
            v172 = *(v158 + 176);
            v173 = *(v158 + 192);
            v174 = *(v158 + 208);
            v175 = *(v158 + 224);
            v176 = *(v158 + 240);
            v363 = *v158;
            v364 = v162;
            v365 = v163;
            v366 = v164;
            v367 = v169;
            v368 = v170;
            v369 = v171;
            v370 = v172;
            v379 = v165;
            v380 = v166;
            v381 = v167;
            v382 = v168;
            v160 = 256;
            v383 = v173;
            v384 = v174;
            v385 = v175;
            v386 = v176;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v363 = v161;
            v364 = v161;
            v365 = v161;
            v366 = v161;
            v367 = v161;
            v368 = v161;
            v369 = v161;
            v370 = v161;
            v379 = v161;
            v380 = v161;
            v381 = v161;
            v382 = v161;
            v383 = v161;
            v384 = v161;
            v160 = 8;
            v385 = v161;
            v386 = v161;
          }

          else if (v89[3])
          {
            v177 = v89;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v363, 256, v158, v159);
            v89 = v177;
          }

          else
          {
            v160 = 0;
            v369 = 0u;
            v370 = 0u;
            v367 = 0u;
            v368 = 0u;
            v365 = 0u;
            v366 = 0u;
            v363 = 0u;
            v364 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
          }

          v178 = v158 + v160;
          v179 = v89[4];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v387 = *v178;
            v388 = v182;
            v389 = v183;
            v390 = v184;
            v391 = v189;
            v392 = v190;
            v393 = v191;
            v394 = v192;
            v403 = v185;
            v404 = v186;
            v405 = v187;
            v406 = v188;
            v180 = 256;
            v407 = v193;
            v408 = v194;
            v409 = v195;
            v410 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v387 = v181;
            v388 = v181;
            v389 = v181;
            v390 = v181;
            v391 = v181;
            v392 = v181;
            v393 = v181;
            v394 = v181;
            v403 = v181;
            v404 = v181;
            v405 = v181;
            v406 = v181;
            v407 = v181;
            v408 = v181;
            v409 = v181;
            v180 = 8;
            v410 = v181;
          }

          else if (v89[4])
          {
            v197 = v89;
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 256, v178, v179);
            v89 = v197;
          }

          else
          {
            v180 = 0;
            v393 = 0u;
            v394 = 0u;
            v391 = 0u;
            v392 = 0u;
            v389 = 0u;
            v390 = 0u;
            v387 = 0u;
            v388 = 0u;
            v403 = 0u;
            v404 = 0u;
            v405 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 0u;
          }

          v198 = v178 + v180;
          v199 = v89[5];
          if (v199 == 255)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = *(v198 + 64);
            v206 = *(v198 + 80);
            v207 = *(v198 + 96);
            v208 = *(v198 + 112);
            v209 = *(v198 + 128);
            v210 = *(v198 + 144);
            v211 = *(v198 + 160);
            v212 = *(v198 + 176);
            v213 = *(v198 + 192);
            v214 = *(v198 + 208);
            v215 = *(v198 + 224);
            v216 = *(v198 + 240);
            v419 = *v198;
            v420 = v202;
            v421 = v203;
            v422 = v204;
            v423 = v209;
            v424 = v210;
            v425 = v211;
            v426 = v212;
            v435 = v205;
            v436 = v206;
            v437 = v207;
            v438 = v208;
            v200 = 256;
            v439 = v213;
            v440 = v214;
            v441 = v215;
            v442 = v216;
          }

          else if (v199 == 7)
          {
            v201 = vld1q_dup_f64(v198);
            v419 = v201;
            v420 = v201;
            v421 = v201;
            v422 = v201;
            v423 = v201;
            v424 = v201;
            v425 = v201;
            v426 = v201;
            v435 = v201;
            v436 = v201;
            v437 = v201;
            v438 = v201;
            v439 = v201;
            v440 = v201;
            v441 = v201;
            v200 = 8;
            v442 = v201;
          }

          else if (v89[5])
          {
            v217 = v89;
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 256, v198, v199);
            v89 = v217;
          }

          else
          {
            v200 = 0;
            v425 = 0u;
            v426 = 0u;
            v423 = 0u;
            v424 = 0u;
            v421 = 0u;
            v422 = 0u;
            v419 = 0u;
            v420 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
          }

          v218 = v198 + v200;
          v219 = v89[6];
          if (v219 == 255)
          {
            v222 = *(v218 + 16);
            v223 = *(v218 + 32);
            v224 = *(v218 + 48);
            v225 = *(v218 + 64);
            v226 = *(v218 + 80);
            v227 = *(v218 + 96);
            v228 = *(v218 + 112);
            v229 = *(v218 + 128);
            v230 = *(v218 + 144);
            v231 = *(v218 + 160);
            v232 = *(v218 + 176);
            v233 = *(v218 + 192);
            v234 = *(v218 + 208);
            v235 = *(v218 + 224);
            v236 = *(v218 + 240);
            v395 = *v218;
            v396 = v222;
            v397 = v223;
            v398 = v224;
            v399 = v229;
            v400 = v230;
            v401 = v231;
            v402 = v232;
            v411 = v225;
            v412 = v226;
            v413 = v227;
            v414 = v228;
            v220 = 256;
            v415 = v233;
            v416 = v234;
            v417 = v235;
            v418 = v236;
          }

          else if (v219 == 7)
          {
            v221 = vld1q_dup_f64(v218);
            v395 = v221;
            v396 = v221;
            v397 = v221;
            v398 = v221;
            v399 = v221;
            v400 = v221;
            v401 = v221;
            v402 = v221;
            v411 = v221;
            v412 = v221;
            v413 = v221;
            v414 = v221;
            v415 = v221;
            v416 = v221;
            v417 = v221;
            v220 = 8;
            v418 = v221;
          }

          else if (v89[6])
          {
            v237 = v89;
            v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v395, 256, v218, v219);
            v89 = v237;
          }

          else
          {
            v220 = 0;
            v401 = 0u;
            v402 = 0u;
            v399 = 0u;
            v400 = 0u;
            v397 = 0u;
            v398 = 0u;
            v395 = 0u;
            v396 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v418 = 0u;
          }

          v238 = v218 + v220;
          v239 = v89[7];
          if (v239 == 255)
          {
            v243 = *(v238 + 16);
            v244 = *(v238 + 32);
            v245 = *(v238 + 48);
            v246 = *(v238 + 64);
            v247 = *(v238 + 80);
            v248 = *(v238 + 96);
            v249 = *(v238 + 112);
            v250 = *(v238 + 128);
            v251 = *(v238 + 144);
            v252 = *(v238 + 160);
            v253 = *(v238 + 176);
            v254 = *(v238 + 192);
            v255 = *(v238 + 208);
            v256 = *(v238 + 224);
            v257 = *(v238 + 240);
            v427 = *v238;
            v428 = v243;
            v429 = v244;
            v430 = v245;
            v431 = v250;
            v432 = v251;
            v433 = v252;
            v434 = v253;
            v443 = v246;
            v444 = v247;
            v445 = v248;
            v446 = v249;
            v240 = v293;
            v241 = v294;
            v447 = v254;
            v448 = v255;
            v449 = v256;
            v450 = v257;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v239 == 7)
          {
            v242 = vld1q_dup_f64(v238);
            v427 = v242;
            v428 = v242;
            v429 = v242;
            v430 = v242;
            v431 = v242;
            v432 = v242;
            v433 = v242;
            v434 = v242;
            v443 = v242;
            v444 = v242;
            v445 = v242;
            v446 = v242;
            v447 = v242;
            v448 = v242;
            v449 = v242;
            v240 = v293;
            v241 = v294;
            v450 = v242;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v427, 256, v238, v239);
            v241 = v316;
            v97 = v317;
            v240 = v318;
            if (v318)
            {
LABEL_170:
              if (v319)
              {
                v258 = 0;
                v259 = v241;
                v260 = v241 << 8;
                v261 = 32 * v97;
                v262 = &v323 + v260 + v261;
                v263 = v314;
                v264 = v315;
                v265 = 32 * v319;
                v266 = &__dst[256 * v240 + 1792 + 256 * v259 + v265 + v261];
                if (v265)
                {
                  v267 = (v265 - 1) >> 32 == 0;
                }

                else
                {
                  v267 = 0;
                }

                v268 = !v267;
                v270 = v262 < v314 + v315 * (v240 - 1) + v265 && v314 < v266;
                v271 = v268 | (v315 < 0) | v270;
                v272 = &v324 + v260 + v261;
                v273 = v314 + 1;
                do
                {
                  v274 = v273;
                  v275 = v272;
                  v276 = v265;
                  if (v271)
                  {
                    v277 = 0;
                    do
                    {
                      v262[v277] = *(v263 + v277);
                      ++v277;
                    }

                    while (v265 > v277);
                  }

                  else
                  {
                    do
                    {
                      v278 = *v274;
                      *(v275 - 1) = *(v274 - 1);
                      *v275 = v278;
                      v275 += 2;
                      v274 += 2;
                      v276 -= 32;
                    }

                    while (v276);
                  }

                  ++v258;
                  v272 += 256;
                  v273 = (v273 + v264);
                  v262 += 256;
                  v263 = (v263 + v264);
                }

                while (v258 != v240);
              }
            }
          }

          else
          {
            v433 = 0u;
            v434 = 0u;
            v431 = 0u;
            v432 = 0u;
            v429 = 0u;
            v430 = 0u;
            v427 = 0u;
            v428 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v240 = v293;
            v241 = v294;
            v449 = 0u;
            v450 = 0u;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v323, 256, v312, v313, v320, v321);
LABEL_192:
          if (v310)
          {
            memcpy(v309, v91, 0x800uLL);
          }

          v29 = v51 == v297 >> 3;
          v51 = v98;
          result = v307;
        }

        while (!v29);
        v29 = v26 == v285;
        v26 = (v26 + 1);
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v286 = v21;
  v287 = v22;
  v275 = v23;
  v24 = v12;
  v437 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v292 = v14;
  v25 = v14 >> 3;
  v274 = v14 + a10 - 1;
  v276 = v274 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v293 = v24;
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
  v296 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v285 = result;
  if (v25 <= v276)
  {
    v284 = v16 + a9 - 1;
    v273 = v16 >> 3;
    if (v16 >> 3 <= v284 >> 3)
    {
      result = v24;
      v294 = (v20 - 1) >> 3;
      v270 = v20 - 1;
      v277 = (v20 - 1) & 7;
      v271 = (v18 - 1) & 7;
      v272 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v280 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v279 = v35;
      v269 = 8 * v27 * v26;
      v283 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v292)
        {
          v37 = v292;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v274 < v36)
        {
          v36 = v274;
        }

        v291 = 8 * v25;
        v282 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v271;
        v281 = v39;
        v41 = v39 != 8;
        v42 = v273;
        v43 = v271 + 1;
        if (v25 != v272)
        {
          v43 = 8;
          v40 = v41;
        }

        v278 = v40;
        v289 = v275 + (v37 - v292) * a11;
        v290 = v43;
        v288 = v43;
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

          if (v284 < v45)
          {
            v45 = v284;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v294)
          {
            v49 = v277 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v291 >= v292 && v44 >= v16)
          {
            v51 = v47 != v277;
            if (v42 != v294)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v278;
          }

          if (v285)
          {
            v72 = 0;
            v73 = v269 >> (*(result + 57) != 0);
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

            v257 = (v72 >> 3) - 1;
            if (v74)
            {
              v258 = 0;
            }

            else
            {
              v258 = 32 - __clz(~(-1 << -__clz(v257)));
            }

            v259 = (v76 >> 3) - 1;
            if (v75)
            {
              v260 = 0;
              if (v258)
              {
                goto LABEL_188;
              }
            }

            else
            {
              v260 = 32 - __clz(~(-1 << -__clz(v259)));
              if (v260 | v258)
              {
LABEL_188:
                v261 = 0;
                v262 = 0;
                v263 = v42 & v257;
                v264 = v25 & v259;
                v265 = v258 != 0;
                v266 = v260 != 0;
                v267 = 1;
                do
                {
                  --v258;
                  if (v265)
                  {
                    v262 |= (v267 & v263) << v261++;
                  }

                  else
                  {
                    v258 = 0;
                  }

                  --v260;
                  if (v266)
                  {
                    v262 |= (v267 & v264) << v261++;
                  }

                  else
                  {
                    v260 = 0;
                  }

                  v267 *= 2;
                  --v261;
                  v266 = v260 != 0;
                  v265 = v258 != 0;
                }

                while (v260 | v258);
                v268 = v262 << 11;
                result = v293;
                goto LABEL_200;
              }
            }

            v268 = 0;
LABEL_200:
            v59 = v268 + ((v44 / v72 + v291 / v76 * ((v72 + v270) / v72)) << 14);
            goto LABEL_52;
          }

          if (v280)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v279.i8[4];
            v56 = v279.i8[0];
            v57 = v280.i32[1];
            v58 = v280.i32[0];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
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
          v77 = (v287 + v71);
          v78 = v289 + 32 * (v46 - v16);
          v295 = (v286 + v59);
          if (v296)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v288 < 8)))
            {
              goto LABEL_84;
            }

            v80 = (v287 + v71);
            v81 = v48;
            v82 = v49;
            memcpy(__dst, (v286 + v59), sizeof(__dst));
            v44 = 8 * v42;
            LOBYTE(v49) = v82;
            v48 = v81;
            v77 = v80;
            result = v293;
          }

          else
          {
            v79 = (v286 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v288 < 8)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v290);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v83 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v298 = v79;
          v306 = v49;
          v307 = v290;
          v302 = v282;
          v303 = v83;
          v299 = v77;
          v300 = v78;
          v301 = a11;
          v304 = v281;
          v305 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v283;
            goto LABEL_167;
          }

          v84 = *v77;
          v16 = v283;
          if (v84 == 255)
          {
            v87 = *(v79 + 1);
            v88 = *(v79 + 2);
            v89 = *(v79 + 3);
            v90 = *(v79 + 4);
            v91 = *(v79 + 5);
            v92 = *(v79 + 6);
            v93 = *(v79 + 7);
            v94 = *(v79 + 8);
            v95 = *(v79 + 9);
            v96 = *(v79 + 10);
            v97 = *(v79 + 11);
            v98 = *(v79 + 12);
            v99 = *(v79 + 13);
            v100 = *(v79 + 14);
            v101 = *(v79 + 15);
            v309 = *v79;
            v310 = v87;
            v311 = v88;
            v312 = v89;
            v313 = v94;
            v314 = v95;
            v315 = v96;
            v316 = v97;
            v325 = v90;
            v326 = v91;
            v327 = v92;
            v328 = v93;
            v85 = 256;
            v329 = v98;
            v330 = v99;
            v331 = v100;
            v332 = v101;
          }

          else if (v84 == 7)
          {
            v86 = vld1q_dup_f64(v79);
            v309 = v86;
            v310 = v86;
            v311 = v86;
            v312 = v86;
            v313 = v86;
            v314 = v86;
            v315 = v86;
            v316 = v86;
            v325 = v86;
            v326 = v86;
            v327 = v86;
            v328 = v86;
            v329 = v86;
            v330 = v86;
            v85 = 8;
            v331 = v86;
            v332 = v86;
          }

          else if (*v77)
          {
            v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 256, v79, v84);
          }

          else
          {
            v85 = 0;
            v316 = 0u;
            v315 = 0u;
            v314 = 0u;
            v313 = 0u;
            v312 = 0u;
            v311 = 0u;
            v310 = 0u;
            v309 = 0u;
            v325 = 0u;
            v326 = 0u;
            v327 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
          }

          v102 = &v79[v85];
          v103 = v77[1];
          if (v103 == 255)
          {
            v106 = *(v102 + 16);
            v107 = *(v102 + 32);
            v108 = *(v102 + 48);
            v109 = *(v102 + 64);
            v110 = *(v102 + 80);
            v111 = *(v102 + 96);
            v112 = *(v102 + 112);
            v113 = *(v102 + 128);
            v114 = *(v102 + 144);
            v115 = *(v102 + 160);
            v116 = *(v102 + 176);
            v117 = *(v102 + 192);
            v118 = *(v102 + 208);
            v119 = *(v102 + 224);
            v120 = *(v102 + 240);
            v341 = *v102;
            v342 = v106;
            v343 = v107;
            v344 = v108;
            v345 = v113;
            v346 = v114;
            v347 = v115;
            v348 = v116;
            v357 = v109;
            v358 = v110;
            v359 = v111;
            v360 = v112;
            v104 = 256;
            v361 = v117;
            v362 = v118;
            v363 = v119;
            v364 = v120;
          }

          else if (v103 == 7)
          {
            v105 = vld1q_dup_f64(v102);
            v341 = v105;
            v342 = v105;
            v343 = v105;
            v344 = v105;
            v345 = v105;
            v346 = v105;
            v347 = v105;
            v348 = v105;
            v357 = v105;
            v358 = v105;
            v359 = v105;
            v360 = v105;
            v361 = v105;
            v362 = v105;
            v104 = 8;
            v363 = v105;
            v364 = v105;
          }

          else if (v77[1])
          {
            v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v341, 256, v102, v103);
          }

          else
          {
            v104 = 0;
            v347 = 0u;
            v348 = 0u;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
          }

          v121 = v102 + v104;
          v122 = v77[2];
          if (v122 == 255)
          {
            v125 = *(v121 + 16);
            v126 = *(v121 + 32);
            v127 = *(v121 + 48);
            v128 = *(v121 + 64);
            v129 = *(v121 + 80);
            v130 = *(v121 + 96);
            v131 = *(v121 + 112);
            v132 = *(v121 + 128);
            v133 = *(v121 + 144);
            v134 = *(v121 + 160);
            v135 = *(v121 + 176);
            v136 = *(v121 + 192);
            v137 = *(v121 + 208);
            v138 = *(v121 + 224);
            v139 = *(v121 + 240);
            v317 = *v121;
            v318 = v125;
            v319 = v126;
            v320 = v127;
            v321 = v132;
            v322 = v133;
            v323 = v134;
            v324 = v135;
            v333 = v128;
            v334 = v129;
            v335 = v130;
            v336 = v131;
            v123 = 256;
            v337 = v136;
            v338 = v137;
            v339 = v138;
            v340 = v139;
          }

          else if (v122 == 7)
          {
            v124 = vld1q_dup_f64(v121);
            v317 = v124;
            v318 = v124;
            v319 = v124;
            v320 = v124;
            v321 = v124;
            v322 = v124;
            v323 = v124;
            v324 = v124;
            v333 = v124;
            v334 = v124;
            v335 = v124;
            v336 = v124;
            v337 = v124;
            v338 = v124;
            v123 = 8;
            v339 = v124;
            v340 = v124;
          }

          else if (v77[2])
          {
            v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 256, v121, v122);
          }

          else
          {
            v123 = 0;
            v323 = 0u;
            v324 = 0u;
            v321 = 0u;
            v322 = 0u;
            v319 = 0u;
            v320 = 0u;
            v317 = 0u;
            v318 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
          }

          v140 = v121 + v123;
          v141 = v77[3];
          if (v141 == 255)
          {
            v144 = *(v140 + 16);
            v145 = *(v140 + 32);
            v146 = *(v140 + 48);
            v147 = *(v140 + 64);
            v148 = *(v140 + 80);
            v149 = *(v140 + 96);
            v150 = *(v140 + 112);
            v151 = *(v140 + 128);
            v152 = *(v140 + 144);
            v153 = *(v140 + 160);
            v154 = *(v140 + 176);
            v155 = *(v140 + 192);
            v156 = *(v140 + 208);
            v157 = *(v140 + 224);
            v158 = *(v140 + 240);
            v349 = *v140;
            v350 = v144;
            v351 = v145;
            v352 = v146;
            v353 = v151;
            v354 = v152;
            v355 = v153;
            v356 = v154;
            v365 = v147;
            v366 = v148;
            v367 = v149;
            v368 = v150;
            v142 = 256;
            v369 = v155;
            v370 = v156;
            v371 = v157;
            v372 = v158;
          }

          else if (v141 == 7)
          {
            v143 = vld1q_dup_f64(v140);
            v349 = v143;
            v350 = v143;
            v351 = v143;
            v352 = v143;
            v353 = v143;
            v354 = v143;
            v355 = v143;
            v356 = v143;
            v365 = v143;
            v366 = v143;
            v367 = v143;
            v368 = v143;
            v369 = v143;
            v370 = v143;
            v142 = 8;
            v371 = v143;
            v372 = v143;
          }

          else if (v77[3])
          {
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v349, 256, v140, v141);
          }

          else
          {
            v142 = 0;
            v355 = 0u;
            v356 = 0u;
            v353 = 0u;
            v354 = 0u;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
          }

          v159 = v140 + v142;
          v160 = v77[4];
          if (v160 == 255)
          {
            v163 = *(v159 + 16);
            v164 = *(v159 + 32);
            v165 = *(v159 + 48);
            v166 = *(v159 + 64);
            v167 = *(v159 + 80);
            v168 = *(v159 + 96);
            v169 = *(v159 + 112);
            v170 = *(v159 + 128);
            v171 = *(v159 + 144);
            v172 = *(v159 + 160);
            v173 = *(v159 + 176);
            v174 = *(v159 + 192);
            v175 = *(v159 + 208);
            v176 = *(v159 + 224);
            v177 = *(v159 + 240);
            v373 = *v159;
            v374 = v163;
            v375 = v164;
            v376 = v165;
            v377 = v170;
            v378 = v171;
            v379 = v172;
            v380 = v173;
            v389 = v166;
            v390 = v167;
            v391 = v168;
            v392 = v169;
            v161 = 256;
            v393 = v174;
            v394 = v175;
            v395 = v176;
            v396 = v177;
          }

          else if (v160 == 7)
          {
            v162 = vld1q_dup_f64(v159);
            v373 = v162;
            v374 = v162;
            v375 = v162;
            v376 = v162;
            v377 = v162;
            v378 = v162;
            v379 = v162;
            v380 = v162;
            v389 = v162;
            v390 = v162;
            v391 = v162;
            v392 = v162;
            v393 = v162;
            v394 = v162;
            v395 = v162;
            v161 = 8;
            v396 = v162;
          }

          else if (v77[4])
          {
            v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v373, 256, v159, v160);
          }

          else
          {
            v161 = 0;
            v379 = 0u;
            v380 = 0u;
            v377 = 0u;
            v378 = 0u;
            v375 = 0u;
            v376 = 0u;
            v373 = 0u;
            v374 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
          }

          v178 = v159 + v161;
          v179 = v77[5];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v405 = *v178;
            v406 = v182;
            v407 = v183;
            v408 = v184;
            v409 = v189;
            v410 = v190;
            v411 = v191;
            v412 = v192;
            v421 = v185;
            v422 = v186;
            v423 = v187;
            v424 = v188;
            v180 = 256;
            v425 = v193;
            v426 = v194;
            v427 = v195;
            v428 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v405 = v181;
            v406 = v181;
            v407 = v181;
            v408 = v181;
            v409 = v181;
            v410 = v181;
            v411 = v181;
            v412 = v181;
            v421 = v181;
            v422 = v181;
            v423 = v181;
            v424 = v181;
            v425 = v181;
            v426 = v181;
            v427 = v181;
            v180 = 8;
            v428 = v181;
          }

          else if (v77[5])
          {
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v405, 256, v178, v179);
          }

          else
          {
            v180 = 0;
            v411 = 0u;
            v412 = 0u;
            v409 = 0u;
            v410 = 0u;
            v407 = 0u;
            v408 = 0u;
            v405 = 0u;
            v406 = 0u;
            v421 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
          }

          v197 = v178 + v180;
          v198 = v77[6];
          if (v198 == 255)
          {
            v201 = *(v197 + 16);
            v202 = *(v197 + 32);
            v203 = *(v197 + 48);
            v204 = *(v197 + 64);
            v205 = *(v197 + 80);
            v206 = *(v197 + 96);
            v207 = *(v197 + 112);
            v208 = *(v197 + 128);
            v209 = *(v197 + 144);
            v210 = *(v197 + 160);
            v211 = *(v197 + 176);
            v212 = *(v197 + 192);
            v213 = *(v197 + 208);
            v214 = *(v197 + 224);
            v215 = *(v197 + 240);
            v381 = *v197;
            v382 = v201;
            v383 = v202;
            v384 = v203;
            v385 = v208;
            v386 = v209;
            v387 = v210;
            v388 = v211;
            v397 = v204;
            v398 = v205;
            v399 = v206;
            v400 = v207;
            v199 = 256;
            v401 = v212;
            v402 = v213;
            v403 = v214;
            v404 = v215;
          }

          else if (v198 == 7)
          {
            v200 = vld1q_dup_f64(v197);
            v381 = v200;
            v382 = v200;
            v383 = v200;
            v384 = v200;
            v385 = v200;
            v386 = v200;
            v387 = v200;
            v388 = v200;
            v397 = v200;
            v398 = v200;
            v399 = v200;
            v400 = v200;
            v401 = v200;
            v402 = v200;
            v403 = v200;
            v199 = 8;
            v404 = v200;
          }

          else if (v77[6])
          {
            v199 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v381, 256, v197, v198);
          }

          else
          {
            v199 = 0;
            v387 = 0u;
            v388 = 0u;
            v385 = 0u;
            v386 = 0u;
            v383 = 0u;
            v384 = 0u;
            v381 = 0u;
            v382 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
            v400 = 0u;
            v401 = 0u;
            v402 = 0u;
            v403 = 0u;
            v404 = 0u;
          }

          v216 = v197 + v199;
          v217 = v77[7];
          if (v217 == 255)
          {
            v221 = *(v216 + 16);
            v222 = *(v216 + 32);
            v223 = *(v216 + 48);
            v224 = *(v216 + 64);
            v225 = *(v216 + 80);
            v226 = *(v216 + 96);
            v227 = *(v216 + 112);
            v228 = *(v216 + 128);
            v229 = *(v216 + 144);
            v230 = *(v216 + 160);
            v231 = *(v216 + 176);
            v232 = *(v216 + 192);
            v233 = *(v216 + 208);
            v234 = *(v216 + 224);
            v235 = *(v216 + 240);
            v413 = *v216;
            v414 = v221;
            v415 = v222;
            v416 = v223;
            v417 = v228;
            v418 = v229;
            v419 = v230;
            v420 = v231;
            v429 = v224;
            v430 = v225;
            v431 = v226;
            v432 = v227;
            v218 = v281;
            v219 = v282;
            v433 = v232;
            v434 = v233;
            v435 = v234;
            v436 = v235;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          else if (v217 == 7)
          {
            v220 = vld1q_dup_f64(v216);
            v413 = v220;
            v414 = v220;
            v415 = v220;
            v416 = v220;
            v417 = v220;
            v418 = v220;
            v419 = v220;
            v420 = v220;
            v429 = v220;
            v430 = v220;
            v431 = v220;
            v432 = v220;
            v433 = v220;
            v434 = v220;
            v435 = v220;
            v218 = v281;
            v219 = v282;
            v436 = v220;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 256, v216, v217);
            v219 = v302;
            v83 = v303;
            v218 = v304;
            if (v304)
            {
LABEL_145:
              if (v305)
              {
                v236 = 0;
                v237 = v219;
                v238 = v219 << 8;
                v239 = 32 * v83;
                v240 = &v309 + v238 + v239;
                v241 = v300;
                v242 = v301;
                v243 = 32 * v305;
                v244 = &__dst[256 * v218 + 1792 + 256 * v237 + v243 + v239];
                if (v243)
                {
                  v245 = (v243 - 1) >> 32 == 0;
                }

                else
                {
                  v245 = 0;
                }

                v246 = !v245;
                v248 = v240 < v300 + v301 * (v218 - 1) + v243 && v300 < v244;
                v249 = v246 | (v301 < 0) | v248;
                v250 = &v310 + v238 + v239;
                v251 = (v300 + 16);
                do
                {
                  v252 = v251;
                  v253 = v250;
                  v254 = v243;
                  if (v249)
                  {
                    v255 = 0;
                    do
                    {
                      v240[v255] = *(v241 + v255);
                      ++v255;
                    }

                    while (v243 > v255);
                  }

                  else
                  {
                    do
                    {
                      v256 = *v252;
                      *(v253 - 1) = *(v252 - 1);
                      *v253 = v256;
                      v253 += 2;
                      v252 += 2;
                      v254 -= 32;
                    }

                    while (v254);
                  }

                  ++v236;
                  v250 += 256;
                  v251 = (v251 + v242);
                  v240 += 256;
                  v241 += v242;
                }

                while (v236 != v218);
              }
            }
          }

          else
          {
            v419 = 0u;
            v420 = 0u;
            v417 = 0u;
            v418 = 0u;
            v415 = 0u;
            v416 = 0u;
            v413 = 0u;
            v414 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
            v218 = v281;
            v219 = v282;
            v435 = 0u;
            v436 = 0u;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v309, 256, v298, v299, v306, v307);
LABEL_167:
          if (v296)
          {
            memcpy(v295, v79, 0x800uLL);
          }

          v29 = v42++ == v284 >> 3;
          result = v293;
        }

        while (!v29);
        v29 = v25++ == v276;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v286 = v21;
  v287 = v22;
  v275 = v23;
  v24 = v12;
  v437 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v292 = v14;
  v25 = v14 >> 3;
  v274 = v14 + a10 - 1;
  v276 = v274 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v293 = v24;
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
  v296 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v285 = result;
  if (v25 <= v276)
  {
    v284 = v16 + a9 - 1;
    v273 = v16 >> 3;
    if (v16 >> 3 <= v284 >> 3)
    {
      result = v24;
      v294 = (v20 - 1) >> 3;
      v270 = v20 - 1;
      v277 = (v20 - 1) & 7;
      v271 = (v18 - 1) & 7;
      v272 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v280 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v279 = v35;
      v269 = 8 * v27 * v26;
      v283 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v292)
        {
          v37 = v292;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v274 < v36)
        {
          v36 = v274;
        }

        v291 = 8 * v25;
        v282 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v271;
        v281 = v39;
        v41 = v39 != 8;
        v42 = v273;
        v43 = v271 + 1;
        if (v25 != v272)
        {
          v43 = 8;
          v40 = v41;
        }

        v278 = v40;
        v289 = v275 + (v37 - v292) * a11;
        v290 = v43;
        v288 = v43;
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

          if (v284 < v45)
          {
            v45 = v284;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v294)
          {
            v49 = v277 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v291 >= v292 && v44 >= v16)
          {
            v51 = v47 != v277;
            if (v42 != v294)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v278;
          }

          if (v285)
          {
            v72 = 0;
            v73 = v269 >> (*(result + 57) != 0);
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

            v257 = (v72 >> 3) - 1;
            if (v74)
            {
              v258 = 0;
            }

            else
            {
              v258 = 32 - __clz(~(-1 << -__clz(v257)));
            }

            v259 = (v76 >> 3) - 1;
            if (v75)
            {
              v260 = 0;
              if (v258)
              {
                goto LABEL_188;
              }
            }

            else
            {
              v260 = 32 - __clz(~(-1 << -__clz(v259)));
              if (v260 | v258)
              {
LABEL_188:
                v261 = 0;
                v262 = 0;
                v263 = v42 & v257;
                v264 = v25 & v259;
                v265 = v258 != 0;
                v266 = v260 != 0;
                v267 = 1;
                do
                {
                  --v258;
                  if (v265)
                  {
                    v262 |= (v267 & v263) << v261++;
                  }

                  else
                  {
                    v258 = 0;
                  }

                  --v260;
                  if (v266)
                  {
                    v262 |= (v267 & v264) << v261++;
                  }

                  else
                  {
                    v260 = 0;
                  }

                  v267 *= 2;
                  --v261;
                  v266 = v260 != 0;
                  v265 = v258 != 0;
                }

                while (v260 | v258);
                v268 = v262 << 11;
                result = v293;
                goto LABEL_200;
              }
            }

            v268 = 0;
LABEL_200:
            v59 = v268 + ((v44 / v72 + v291 / v76 * ((v72 + v270) / v72)) << 14);
            goto LABEL_52;
          }

          if (v280)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v279.i8[4];
            v56 = v279.i8[0];
            v57 = v280.i32[1];
            v58 = v280.i32[0];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
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
          v77 = (v287 + v71);
          v78 = (v289 + 32 * (v46 - v16));
          v295 = (v286 + v59);
          if (v296)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v288 < 8)))
            {
              goto LABEL_84;
            }

            v80 = (v287 + v71);
            v81 = v48;
            v82 = v49;
            memcpy(__dst, (v286 + v59), sizeof(__dst));
            v44 = 8 * v42;
            LOBYTE(v49) = v82;
            v48 = v81;
            v77 = v80;
            result = v293;
          }

          else
          {
            v79 = (v286 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v288 < 8)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v290);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v83 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v298 = v79;
          v306 = v49;
          v307 = v290;
          v302 = v282;
          v303 = v83;
          v299 = v77;
          v300 = v78;
          v301 = a11;
          v304 = v281;
          v305 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v283;
            goto LABEL_167;
          }

          v84 = *v77;
          v16 = v283;
          if (v84 == 255)
          {
            v87 = *(v79 + 1);
            v88 = *(v79 + 2);
            v89 = *(v79 + 3);
            v90 = *(v79 + 4);
            v91 = *(v79 + 5);
            v92 = *(v79 + 6);
            v93 = *(v79 + 7);
            v94 = *(v79 + 8);
            v95 = *(v79 + 9);
            v96 = *(v79 + 10);
            v97 = *(v79 + 11);
            v98 = *(v79 + 12);
            v99 = *(v79 + 13);
            v100 = *(v79 + 14);
            v101 = *(v79 + 15);
            v309 = *v79;
            v310 = v87;
            v311 = v88;
            v312 = v89;
            v313 = v94;
            v314 = v95;
            v315 = v96;
            v316 = v97;
            v325 = v90;
            v326 = v91;
            v327 = v92;
            v328 = v93;
            v85 = 256;
            v329 = v98;
            v330 = v99;
            v331 = v100;
            v332 = v101;
          }

          else if (v84 == 7)
          {
            v86 = vld1q_dup_f64(v79);
            v309 = v86;
            v310 = v86;
            v311 = v86;
            v312 = v86;
            v313 = v86;
            v314 = v86;
            v315 = v86;
            v316 = v86;
            v325 = v86;
            v326 = v86;
            v327 = v86;
            v328 = v86;
            v329 = v86;
            v330 = v86;
            v85 = 8;
            v331 = v86;
            v332 = v86;
          }

          else if (*v77)
          {
            v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 256, v79, v84);
          }

          else
          {
            v85 = 0;
            v316 = 0u;
            v315 = 0u;
            v314 = 0u;
            v313 = 0u;
            v312 = 0u;
            v311 = 0u;
            v310 = 0u;
            v309 = 0u;
            v325 = 0u;
            v326 = 0u;
            v327 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
          }

          v102 = v79 + v85;
          v103 = v77[1];
          if (v103 == 255)
          {
            v106 = *(v102 + 16);
            v107 = *(v102 + 32);
            v108 = *(v102 + 48);
            v109 = *(v102 + 64);
            v110 = *(v102 + 80);
            v111 = *(v102 + 96);
            v112 = *(v102 + 112);
            v113 = *(v102 + 128);
            v114 = *(v102 + 144);
            v115 = *(v102 + 160);
            v116 = *(v102 + 176);
            v117 = *(v102 + 192);
            v118 = *(v102 + 208);
            v119 = *(v102 + 224);
            v120 = *(v102 + 240);
            v341 = *v102;
            v342 = v106;
            v343 = v107;
            v344 = v108;
            v345 = v113;
            v346 = v114;
            v347 = v115;
            v348 = v116;
            v357 = v109;
            v358 = v110;
            v359 = v111;
            v360 = v112;
            v104 = 256;
            v361 = v117;
            v362 = v118;
            v363 = v119;
            v364 = v120;
          }

          else if (v103 == 7)
          {
            v105 = vld1q_dup_f64(v102);
            v341 = v105;
            v342 = v105;
            v343 = v105;
            v344 = v105;
            v345 = v105;
            v346 = v105;
            v347 = v105;
            v348 = v105;
            v357 = v105;
            v358 = v105;
            v359 = v105;
            v360 = v105;
            v361 = v105;
            v362 = v105;
            v104 = 8;
            v363 = v105;
            v364 = v105;
          }

          else if (v77[1])
          {
            v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v341, 256, v102, v103);
          }

          else
          {
            v104 = 0;
            v347 = 0u;
            v348 = 0u;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
          }

          v121 = v102 + v104;
          v122 = v77[2];
          if (v122 == 255)
          {
            v125 = *(v121 + 16);
            v126 = *(v121 + 32);
            v127 = *(v121 + 48);
            v128 = *(v121 + 64);
            v129 = *(v121 + 80);
            v130 = *(v121 + 96);
            v131 = *(v121 + 112);
            v132 = *(v121 + 128);
            v133 = *(v121 + 144);
            v134 = *(v121 + 160);
            v135 = *(v121 + 176);
            v136 = *(v121 + 192);
            v137 = *(v121 + 208);
            v138 = *(v121 + 224);
            v139 = *(v121 + 240);
            v317 = *v121;
            v318 = v125;
            v319 = v126;
            v320 = v127;
            v321 = v132;
            v322 = v133;
            v323 = v134;
            v324 = v135;
            v333 = v128;
            v334 = v129;
            v335 = v130;
            v336 = v131;
            v123 = 256;
            v337 = v136;
            v338 = v137;
            v339 = v138;
            v340 = v139;
          }

          else if (v122 == 7)
          {
            v124 = vld1q_dup_f64(v121);
            v317 = v124;
            v318 = v124;
            v319 = v124;
            v320 = v124;
            v321 = v124;
            v322 = v124;
            v323 = v124;
            v324 = v124;
            v333 = v124;
            v334 = v124;
            v335 = v124;
            v336 = v124;
            v337 = v124;
            v338 = v124;
            v123 = 8;
            v339 = v124;
            v340 = v124;
          }

          else if (v77[2])
          {
            v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 256, v121, v122);
          }

          else
          {
            v123 = 0;
            v323 = 0u;
            v324 = 0u;
            v321 = 0u;
            v322 = 0u;
            v319 = 0u;
            v320 = 0u;
            v317 = 0u;
            v318 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
          }

          v140 = v121 + v123;
          v141 = v77[3];
          if (v141 == 255)
          {
            v144 = *(v140 + 16);
            v145 = *(v140 + 32);
            v146 = *(v140 + 48);
            v147 = *(v140 + 64);
            v148 = *(v140 + 80);
            v149 = *(v140 + 96);
            v150 = *(v140 + 112);
            v151 = *(v140 + 128);
            v152 = *(v140 + 144);
            v153 = *(v140 + 160);
            v154 = *(v140 + 176);
            v155 = *(v140 + 192);
            v156 = *(v140 + 208);
            v157 = *(v140 + 224);
            v158 = *(v140 + 240);
            v349 = *v140;
            v350 = v144;
            v351 = v145;
            v352 = v146;
            v353 = v151;
            v354 = v152;
            v355 = v153;
            v356 = v154;
            v365 = v147;
            v366 = v148;
            v367 = v149;
            v368 = v150;
            v142 = 256;
            v369 = v155;
            v370 = v156;
            v371 = v157;
            v372 = v158;
          }

          else if (v141 == 7)
          {
            v143 = vld1q_dup_f64(v140);
            v349 = v143;
            v350 = v143;
            v351 = v143;
            v352 = v143;
            v353 = v143;
            v354 = v143;
            v355 = v143;
            v356 = v143;
            v365 = v143;
            v366 = v143;
            v367 = v143;
            v368 = v143;
            v369 = v143;
            v370 = v143;
            v142 = 8;
            v371 = v143;
            v372 = v143;
          }

          else if (v77[3])
          {
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v349, 256, v140, v141);
          }

          else
          {
            v142 = 0;
            v355 = 0u;
            v356 = 0u;
            v353 = 0u;
            v354 = 0u;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
          }

          v159 = v140 + v142;
          v160 = v77[4];
          if (v160 == 255)
          {
            v163 = *(v159 + 16);
            v164 = *(v159 + 32);
            v165 = *(v159 + 48);
            v166 = *(v159 + 64);
            v167 = *(v159 + 80);
            v168 = *(v159 + 96);
            v169 = *(v159 + 112);
            v170 = *(v159 + 128);
            v171 = *(v159 + 144);
            v172 = *(v159 + 160);
            v173 = *(v159 + 176);
            v174 = *(v159 + 192);
            v175 = *(v159 + 208);
            v176 = *(v159 + 224);
            v177 = *(v159 + 240);
            v373 = *v159;
            v374 = v163;
            v375 = v164;
            v376 = v165;
            v377 = v170;
            v378 = v171;
            v379 = v172;
            v380 = v173;
            v389 = v166;
            v390 = v167;
            v391 = v168;
            v392 = v169;
            v161 = 256;
            v393 = v174;
            v394 = v175;
            v395 = v176;
            v396 = v177;
          }

          else if (v160 == 7)
          {
            v162 = vld1q_dup_f64(v159);
            v373 = v162;
            v374 = v162;
            v375 = v162;
            v376 = v162;
            v377 = v162;
            v378 = v162;
            v379 = v162;
            v380 = v162;
            v389 = v162;
            v390 = v162;
            v391 = v162;
            v392 = v162;
            v393 = v162;
            v394 = v162;
            v395 = v162;
            v161 = 8;
            v396 = v162;
          }

          else if (v77[4])
          {
            v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v373, 256, v159, v160);
          }

          else
          {
            v161 = 0;
            v379 = 0u;
            v380 = 0u;
            v377 = 0u;
            v378 = 0u;
            v375 = 0u;
            v376 = 0u;
            v373 = 0u;
            v374 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
          }

          v178 = v159 + v161;
          v179 = v77[5];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v405 = *v178;
            v406 = v182;
            v407 = v183;
            v408 = v184;
            v409 = v189;
            v410 = v190;
            v411 = v191;
            v412 = v192;
            v421 = v185;
            v422 = v186;
            v423 = v187;
            v424 = v188;
            v180 = 256;
            v425 = v193;
            v426 = v194;
            v427 = v195;
            v428 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v405 = v181;
            v406 = v181;
            v407 = v181;
            v408 = v181;
            v409 = v181;
            v410 = v181;
            v411 = v181;
            v412 = v181;
            v421 = v181;
            v422 = v181;
            v423 = v181;
            v424 = v181;
            v425 = v181;
            v426 = v181;
            v427 = v181;
            v180 = 8;
            v428 = v181;
          }

          else if (v77[5])
          {
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v405, 256, v178, v179);
          }

          else
          {
            v180 = 0;
            v411 = 0u;
            v412 = 0u;
            v409 = 0u;
            v410 = 0u;
            v407 = 0u;
            v408 = 0u;
            v405 = 0u;
            v406 = 0u;
            v421 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
          }

          v197 = v178 + v180;
          v198 = v77[6];
          if (v198 == 255)
          {
            v201 = *(v197 + 16);
            v202 = *(v197 + 32);
            v203 = *(v197 + 48);
            v204 = *(v197 + 64);
            v205 = *(v197 + 80);
            v206 = *(v197 + 96);
            v207 = *(v197 + 112);
            v208 = *(v197 + 128);
            v209 = *(v197 + 144);
            v210 = *(v197 + 160);
            v211 = *(v197 + 176);
            v212 = *(v197 + 192);
            v213 = *(v197 + 208);
            v214 = *(v197 + 224);
            v215 = *(v197 + 240);
            v381 = *v197;
            v382 = v201;
            v383 = v202;
            v384 = v203;
            v385 = v208;
            v386 = v209;
            v387 = v210;
            v388 = v211;
            v397 = v204;
            v398 = v205;
            v399 = v206;
            v400 = v207;
            v199 = 256;
            v401 = v212;
            v402 = v213;
            v403 = v214;
            v404 = v215;
          }

          else if (v198 == 7)
          {
            v200 = vld1q_dup_f64(v197);
            v381 = v200;
            v382 = v200;
            v383 = v200;
            v384 = v200;
            v385 = v200;
            v386 = v200;
            v387 = v200;
            v388 = v200;
            v397 = v200;
            v398 = v200;
            v399 = v200;
            v400 = v200;
            v401 = v200;
            v402 = v200;
            v403 = v200;
            v199 = 8;
            v404 = v200;
          }

          else if (v77[6])
          {
            v199 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v381, 256, v197, v198);
          }

          else
          {
            v199 = 0;
            v387 = 0u;
            v388 = 0u;
            v385 = 0u;
            v386 = 0u;
            v383 = 0u;
            v384 = 0u;
            v381 = 0u;
            v382 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
            v400 = 0u;
            v401 = 0u;
            v402 = 0u;
            v403 = 0u;
            v404 = 0u;
          }

          v216 = v197 + v199;
          v217 = v77[7];
          if (v217 == 255)
          {
            v221 = *(v216 + 16);
            v222 = *(v216 + 32);
            v223 = *(v216 + 48);
            v224 = *(v216 + 64);
            v225 = *(v216 + 80);
            v226 = *(v216 + 96);
            v227 = *(v216 + 112);
            v228 = *(v216 + 128);
            v229 = *(v216 + 144);
            v230 = *(v216 + 160);
            v231 = *(v216 + 176);
            v232 = *(v216 + 192);
            v233 = *(v216 + 208);
            v234 = *(v216 + 224);
            v235 = *(v216 + 240);
            v413 = *v216;
            v414 = v221;
            v415 = v222;
            v416 = v223;
            v417 = v228;
            v418 = v229;
            v419 = v230;
            v420 = v231;
            v429 = v224;
            v430 = v225;
            v431 = v226;
            v432 = v227;
            v218 = v281;
            v219 = v282;
            v433 = v232;
            v434 = v233;
            v435 = v234;
            v436 = v235;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          else if (v217 == 7)
          {
            v220 = vld1q_dup_f64(v216);
            v413 = v220;
            v414 = v220;
            v415 = v220;
            v416 = v220;
            v417 = v220;
            v418 = v220;
            v419 = v220;
            v420 = v220;
            v429 = v220;
            v430 = v220;
            v431 = v220;
            v432 = v220;
            v433 = v220;
            v434 = v220;
            v435 = v220;
            v218 = v281;
            v219 = v282;
            v436 = v220;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 256, v216, v217);
            v219 = v302;
            v83 = v303;
            v218 = v304;
            if (v304)
            {
LABEL_145:
              if (v305)
              {
                v236 = 0;
                v237 = v219;
                v238 = v219 << 8;
                v239 = 32 * v83;
                v240 = &v309 + v238 + v239;
                v241 = v300;
                v242 = v301;
                v243 = 32 * v305;
                v244 = &__dst[256 * v218 + 1792 + 256 * v237 + v243 + v239];
                if (v243)
                {
                  v245 = (v243 - 1) >> 32 == 0;
                }

                else
                {
                  v245 = 0;
                }

                v246 = !v245;
                v248 = v240 < v300 + v301 * (v218 - 1) + v243 && v300 < v244;
                v249 = v246 | (v301 < 0) | v248;
                v250 = &v310 + v238 + v239;
                v251 = v300 + 1;
                do
                {
                  v252 = v251;
                  v253 = v250;
                  v254 = v243;
                  if (v249)
                  {
                    v255 = 0;
                    do
                    {
                      v240[v255] = *(v241 + v255);
                      ++v255;
                    }

                    while (v243 > v255);
                  }

                  else
                  {
                    do
                    {
                      v256 = *v252;
                      *(v253 - 1) = *(v252 - 1);
                      *v253 = v256;
                      v253 += 2;
                      v252 += 2;
                      v254 -= 32;
                    }

                    while (v254);
                  }

                  ++v236;
                  v250 += 256;
                  v251 = (v251 + v242);
                  v240 += 256;
                  v241 = (v241 + v242);
                }

                while (v236 != v218);
              }
            }
          }

          else
          {
            v419 = 0u;
            v420 = 0u;
            v417 = 0u;
            v418 = 0u;
            v415 = 0u;
            v416 = 0u;
            v413 = 0u;
            v414 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
            v218 = v281;
            v219 = v282;
            v435 = 0u;
            v436 = 0u;
            if (v281)
            {
              goto LABEL_145;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v309, 256, v298, v299, v306, v307);
LABEL_167:
          if (v296)
          {
            memcpy(v295, v79, 0x800uLL);
          }

          v29 = v42++ == v284 >> 3;
          result = v293;
        }

        while (!v29);
        v29 = v25++ == v276;
      }

      while (!v29);
    }
  }

  return result;
}