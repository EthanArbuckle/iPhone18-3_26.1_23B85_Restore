void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v203 = a8;
  v16 = a8 >> 2;
  v185 = a8 + a10 - 1;
  v187 = v185 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v198 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v187)
  {
    v196 = a7 + a9 - 1;
    if (a7 >> 3 <= v196 >> 3)
    {
      v24 = a11;
      v207 = (a5 - 1) >> 3;
      v182 = a5 - 1;
      v189 = (a5 - 1) & 7;
      v183 = (a6 - 1) & 3;
      v184 = (a6 - 1) >> 2;
      v188 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v194 = v29.i64[0];
      v195 = v29.i32[0] | v29.i32[1];
      v193 = v26.i64[0];
      v181 = 8 * v18 * v17;
      v205 = v15;
      do
      {
        v30 = (4 * v16) | 3;
        if (4 * v16 <= v203)
        {
          v31 = v203;
        }

        else
        {
          v31 = 4 * v16;
        }

        if (v185 < v30)
        {
          v30 = v185;
        }

        v202 = 4 * v16;
        v192 = v31 - 4 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v183;
        v191 = v33;
        v35 = v33 != 4;
        v36 = a7 >> 3;
        v37 = v183 + 1;
        if (v16 != v184)
        {
          v37 = 4;
        }

        v206 = v37;
        if (v16 != v184)
        {
          v34 = v35;
        }

        v190 = v34;
        v201 = a2 + (v31 - v203) * v24;
        v38 = a7;
        do
        {
          v40 = 8 * v36;
          v41 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = 8 * v36;
          }

          if (v196 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v36 == v207)
          {
            v45 = v189 + 1;
          }

          else
          {
            v45 = 8;
          }

          v46 = 1;
          if (v202 >= v203 && v40 >= v38)
          {
            v47 = v43 != v189;
            if (v36 != v207)
            {
              v47 = v44 != 8;
            }

            v46 = v47 || v190;
          }

          if (isLevelTiled)
          {
            v165 = 0;
            v166 = v181 >> (*(v15 + 57) != 0);
            v167 = 1;
            if (v166 <= 63)
            {
              if (v166 > 15)
              {
                if (v166 == 16)
                {
                  v167 = 0;
                  v168 = 64;
                  v165 = 128;
                }

                else
                {
                  v168 = 0;
                  if (v166 == 32)
                  {
                    v167 = 0;
                    v165 = 64;
                    v168 = 64;
                  }
                }
              }

              else if (v166 == 4)
              {
                v167 = 0;
                v168 = 128;
                v165 = 256;
              }

              else
              {
                v168 = 0;
                if (v166 == 8)
                {
                  v167 = 0;
                  v165 = 128;
                  v168 = 128;
                }
              }
            }

            else if (v166 <= 255)
            {
              if (v166 == 64)
              {
                v167 = 0;
                v168 = 32;
                v165 = 64;
              }

              else
              {
                v168 = 0;
                if (v166 == 128)
                {
                  v167 = 0;
                  v165 = 32;
                  v168 = 32;
                }
              }
            }

            else if (v166 == 256)
            {
              v167 = 0;
              v168 = 16;
              v165 = 32;
            }

            else if (v166 == 512)
            {
              v167 = 0;
              v165 = 16;
              v168 = 16;
            }

            else
            {
              v168 = 0;
              if (v166 == 1024)
              {
                v167 = 0;
                v168 = 8;
                v165 = 16;
              }
            }

            v169 = (v165 >> 3) - 1;
            v170 = (v168 >> 2) - 1;
            if ((v167 & 1) != 0 || (v171 = 32 - __clz(~(-1 << -__clz(v169))), v172 = 32 - __clz(~(-1 << -__clz(v170))), !(v172 | v171)))
            {
              v180 = 0;
            }

            else
            {
              v173 = 0;
              v174 = 0;
              v175 = v36 & v169;
              v176 = v16 & v170;
              v177 = v172 != 0;
              v178 = v171 != 0;
              v179 = 1;
              do
              {
                --v172;
                if (v177)
                {
                  v174 |= (v179 & v176) << v173++;
                }

                else
                {
                  v172 = 0;
                }

                --v171;
                if (v178)
                {
                  v174 |= (v179 & v175) << v173++;
                }

                else
                {
                  v171 = 0;
                }

                v179 *= 2;
                --v173;
                v178 = v171 != 0;
                v177 = v172 != 0;
              }

              while (v171 | v172);
              v180 = v174 << 9;
            }

            v55 = v180 + ((v40 / v165 + v202 / v168 * ((v165 + v182) / v165)) << 14);
          }

          else if (v195)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v52 = v193;
            v51 = BYTE4(v193);
            v53 = v194;
            v54 = HIDWORD(v194);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v16) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v36) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v51 = v54 != 0;
              v52 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 9;
          }

          else
          {
            v55 = 0;
          }

          v56 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          v59 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 3;
          if (v60 < 8)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 2) - 1)));
          }

          if (v61 | v58)
          {
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
                v63 |= (v66 & v36) << v62++;
              }

              else
              {
                v58 = 0;
              }

              --v61;
              if (v65)
              {
                v63 |= (v66 & v16) << v62++;
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
          }

          else
          {
            v67 = 0;
          }

          v68 = (a3 + v55);
          if (v198)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (a4 + v67);
          v70 = (v201 + 16 * (v42 - v38));
          if (!(v46 & 1 | (v45 < 8u)) && v206 > 3)
          {
            v71 = *v69;
            if (v71 == 63)
            {
              v73 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              *v70 = *v68;
              v70[1] = v26;
              v24 = a11;
              v79 = (v70 + a11);
              *v79 = v27;
              v79[1] = v28;
              v72 = 64;
            }

            else
            {
              v24 = a11;
              if (v71 == 1)
              {
                v73 = vld1q_dup_s16(v68->i16);
                *v70 = v73;
                v70[1] = v73;
                v78 = (v70 + a11);
                *v78 = v73;
                v78[1] = v73;
                v72 = 2;
              }

              else if (*v69)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v70, a11, v68, v71, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v72 = 0;
                v73.i64[0] = 0;
                *v70 = 0u;
                v70[1] = 0u;
                v74 = &v70->i8[a11];
                *v74 = 0u;
                *(v74 + 1) = 0u;
              }
            }

            v80 = v68->i64 + v72;
            v81 = v70 + 2;
            v82 = v69[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v27 = *(v80 + 32);
              v28 = *(v80 + 48);
              v70[2] = *v80;
              v70[3] = v26;
              v87 = &v81->i8[v24];
              *v87 = v27;
              *(v87 + 1) = v28;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              v70[2] = v84;
              v70[3] = v84;
              v86 = (v81 + v24);
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v81, v24, v80, v82, *v73.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v70[3] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v88 = v80 + v83;
            v89 = (v70 + v188);
            v90 = v69[2];
            if (v90 == 63)
            {
              v92 = *v88;
              v26 = *(v88 + 16);
              v27 = *(v88 + 32);
              v28 = *(v88 + 48);
              *v89 = *v88;
              v89[1] = v26;
              v95 = (v89 + v24);
              *v95 = v27;
              v95[1] = v28;
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v88);
              *v89 = v92;
              v89[1] = v92;
              v94 = (v89 + v24);
              *v94 = v92;
              v94[1] = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v188), v24, v88, v90, *v84.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v91 = 0;
              v92.i64[0] = 0;
              *v89 = 0u;
              v89[1] = 0u;
              v93 = &v89->i8[v24];
              *v93 = 0u;
              *(v93 + 1) = 0u;
            }

            v96 = v88 + v91;
            v97 = v89 + 2;
            v98 = v69[3];
            if (v98 == 63)
            {
              v100 = *v96;
              v26 = *(v96 + 16);
              v27 = *(v96 + 32);
              v28 = *(v96 + 48);
              v89[2] = *v96;
              v89[3] = v26;
              v103 = &v97->i8[v24];
              *v103 = v27;
              *(v103 + 1) = v28;
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v96);
              v89[2] = v100;
              v89[3] = v100;
              v102 = (v97 + v24);
              *v102 = v100;
              v102[1] = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v97, v24, v96, v98, *v92.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v99 = 0;
              v100.i64[0] = 0;
              *v97 = 0u;
              v89[3] = 0u;
              v101 = &v97->i8[v24];
              *v101 = 0u;
              *(v101 + 1) = 0u;
            }

            v104 = v96 + v99;
            v105 = v70 + 4;
            v106 = v69[4];
            if (v106 == 63)
            {
              v108 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              v70[4] = *v104;
              v70[5] = v26;
              v111 = &v105->i8[v24];
              *v111 = v27;
              *(v111 + 1) = v28;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v104);
              v70[4] = v108;
              v70[5] = v108;
              v110 = (v105 + v24);
              *v110 = v108;
              v110[1] = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v24, v104, v106, *v100.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v108.i64[0] = 0;
              *v105 = 0u;
              v70[5] = 0u;
              v109 = &v105->i8[v24];
              *v109 = 0u;
              *(v109 + 1) = 0u;
            }

            v112 = v104 + v107;
            v113 = v70 + 6;
            v114 = v69[5];
            if (v114 == 63)
            {
              v116 = *v112;
              v26 = *(v112 + 16);
              v27 = *(v112 + 32);
              v28 = *(v112 + 48);
              v70[6] = *v112;
              v70[7] = v26;
              v119 = &v113->i8[v24];
              *v119 = v27;
              *(v119 + 1) = v28;
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v112);
              v70[6] = v116;
              v70[7] = v116;
              v118 = (v113 + v24);
              *v118 = v116;
              v118[1] = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, v24, v112, v114, *v108.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v115 = 0;
              v116.i64[0] = 0;
              *v113 = 0u;
              v70[7] = 0u;
              v117 = &v113->i8[v24];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v38 = a7;
            v120 = v112 + v115;
            v121 = v89 + 4;
            v122 = v69[6];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v27 = *(v120 + 32);
              v28 = *(v120 + 48);
              v89[4] = *v120;
              v89[5] = v26;
              v127 = &v121->i8[v24];
              *v127 = v27;
              *(v127 + 1) = v28;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v89[4] = v124;
              v89[5] = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v116.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v89[5] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v128 = v120 + v123;
            v129 = v89 + 6;
            v130 = v69[7];
            if (v130 == 63)
            {
              v29 = *v128;
              v26 = *(v128 + 16);
              v27 = *(v128 + 32);
              v28 = *(v128 + 48);
              v89[6] = *v128;
              v89[7] = v26;
              v132 = &v129->i8[v24];
              *v132 = v27;
              *(v132 + 1) = v28;
              v15 = v205;
            }

            else
            {
              v15 = v205;
              if (v130 == 1)
              {
                v29 = vld1q_dup_s16(v128);
                v89[6] = v29;
                v89[7] = v29;
LABEL_138:
                v131 = (v129 + v24);
                *v131 = v29;
                v131[1] = v29;
              }

              else
              {
                if (!v130)
                {
                  v29 = 0uLL;
                  *v129 = 0u;
                  v89[7] = 0u;
                  goto LABEL_138;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v129, v24, v128, v130, *v124.i64, *v26.i64, *v27.i64, *v28.i8);
              }
            }

LABEL_29:
            v39 = v36 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v205;
          block[5] = v68;
          v215 = v45;
          v216 = v206;
          v211 = v192;
          v212 = v42 - v40;
          block[6] = v69;
          v209 = v70;
          v24 = a11;
          v210 = a11;
          v213 = v191;
          v214 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v205 + 8) + 16552), block);
            v38 = a7;
            v15 = v205;
            goto LABEL_29;
          }

          v75 = *v69;
          v38 = a7;
          if (v75 == 63)
          {
            v77 = *v68;
            v26 = v68[1];
            v27 = v68[2];
            v28 = v68[3];
            v218 = *v68;
            v219 = v26;
            v226 = v27;
            v227 = v28;
            v76 = 64;
          }

          else if (v75 == 1)
          {
            v77 = vld1q_dup_s16(v68->i16);
            v218 = v77;
            v219 = v77;
            v226 = v77;
            v227 = v77;
            v76 = 2;
          }

          else if (*v69)
          {
            v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 128, v68, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v76 = 0;
            v77.i64[0] = 0;
            v218 = 0u;
            v219 = 0u;
            v226 = 0u;
            v227 = 0u;
          }

          v133 = v68->i64 + v76;
          v134 = v69[1];
          if (v134 == 63)
          {
            v136 = *v133;
            v26 = *(v133 + 16);
            v27 = *(v133 + 32);
            v28 = *(v133 + 48);
            v220 = *v133;
            v221 = v26;
            v228 = v27;
            v229 = v28;
            v135 = 64;
            v39 = v36 + 1;
          }

          else
          {
            v39 = v36 + 1;
            if (v134 == 1)
            {
              v136 = vld1q_dup_s16(v133);
              v220 = v136;
              v221 = v136;
              v228 = v136;
              v229 = v136;
              v135 = 2;
            }

            else if (v69[1])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 128, v133, v134, *v77.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v135 = 0;
              v136.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v228 = 0u;
              v229 = 0u;
            }
          }

          v137 = v133 + v135;
          v138 = v69[2];
          if (v138 == 63)
          {
            v140 = *v137;
            v26 = *(v137 + 16);
            v27 = *(v137 + 32);
            v28 = *(v137 + 48);
            v234 = *v137;
            v235 = v26;
            v242 = v27;
            v243 = v28;
            v139 = 64;
          }

          else if (v138 == 1)
          {
            v140 = vld1q_dup_s16(v137);
            v234 = v140;
            v235 = v140;
            v242 = v140;
            v243 = v140;
            v139 = 2;
          }

          else if (v69[2])
          {
            v139 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 128, v137, v138, *v136.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v139 = 0;
            v140.i64[0] = 0;
            v234 = 0u;
            v235 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v141 = v137 + v139;
          v142 = v69[3];
          if (v142 == 63)
          {
            v144 = *v141;
            v26 = *(v141 + 16);
            v27 = *(v141 + 32);
            v28 = *(v141 + 48);
            v236 = *v141;
            v237 = v26;
            v244 = v27;
            v245 = v28;
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v236 = v144;
            v237 = v144;
            v244 = v144;
            v245 = v144;
            v143 = 2;
          }

          else if (v69[3])
          {
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 128, v141, v142, *v140.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v143 = 0;
            v144.i64[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v244 = 0u;
            v245 = 0u;
          }

          v145 = v141 + v143;
          v146 = v69[4];
          if (v146 == 63)
          {
            v148 = *v145;
            v26 = *(v145 + 16);
            v27 = *(v145 + 32);
            v28 = *(v145 + 48);
            v222 = *v145;
            v223 = v26;
            v230 = v27;
            v231 = v28;
            v147 = 64;
          }

          else if (v146 == 1)
          {
            v148 = vld1q_dup_s16(v145);
            v222 = v148;
            v223 = v148;
            v230 = v148;
            v231 = v148;
            v147 = 2;
          }

          else if (v69[4])
          {
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 128, v145, v146, *v144.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v147 = 0;
            v148.i64[0] = 0;
            v222 = 0u;
            v223 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v149 = v145 + v147;
          v150 = v69[5];
          if (v150 == 63)
          {
            v152 = *v149;
            v26 = *(v149 + 16);
            v27 = *(v149 + 32);
            v28 = *(v149 + 48);
            v224 = *v149;
            v225 = v26;
            v232 = v27;
            v233 = v28;
            v151 = 64;
          }

          else if (v150 == 1)
          {
            v152 = vld1q_dup_s16(v149);
            v224 = v152;
            v225 = v152;
            v232 = v152;
            v233 = v152;
            v151 = 2;
          }

          else if (v69[5])
          {
            v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 128, v149, v150, *v148.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v151 = 0;
            v152.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v232 = 0u;
            v233 = 0u;
          }

          v153 = v149 + v151;
          v154 = v69[6];
          if (v154 == 63)
          {
            v156 = *v153;
            v26 = *(v153 + 16);
            v27 = *(v153 + 32);
            v28 = *(v153 + 48);
            v238 = *v153;
            v239 = v26;
            v246 = v27;
            v247 = v28;
            v155 = 64;
          }

          else if (v154 == 1)
          {
            v156 = vld1q_dup_s16(v153);
            v238 = v156;
            v239 = v156;
            v246 = v156;
            v247 = v156;
            v155 = 2;
          }

          else if (v69[6])
          {
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 128, v153, v154, *v152.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v155 = 0;
            v156.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v157 = v153 + v155;
          v158 = v69[7];
          if (v158 == 63)
          {
            v29 = *v157;
            v26 = *(v157 + 16);
            v27 = *(v157 + 32);
            v28 = *(v157 + 48);
            v240 = *v157;
            v241 = v26;
            v248 = v27;
            v249 = v28;
            v15 = v205;
          }

          else
          {
            v15 = v205;
            if (v158 == 1)
            {
              v29 = vld1q_dup_s16(v157);
              v240 = v29;
              v241 = v29;
              v248 = v29;
              v249 = v29;
            }

            else if (v158)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 128, v157, v158, *v156.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v29.i64[0] = 0;
              v240 = 0u;
              v241 = 0u;
              v248 = 0u;
              v249 = 0u;
            }
          }

          v159 = v213;
          if (v213)
          {
            v160 = 0;
            v161 = &v218 + 8 * v211 + v212;
            v162 = v214;
            do
            {
              if (v162)
              {
                v163 = 0;
                v164 = v209->i64 + v210 * v160;
                do
                {
                  *(v164 + v163) = v161->i8[v163];
                  ++v163;
                  v162 = v214;
                }

                while (16 * v214 > v163);
                v159 = v213;
              }

              ++v160;
              v161 += 8;
            }

            while (v160 < v159);
          }

LABEL_30:
          v20 = v36 == v196 >> 3;
          v36 = v39;
        }

        while (!v20);
        v20 = v16++ == v187;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v203 = a8;
  v16 = a8 >> 2;
  v185 = a8 + a10 - 1;
  v187 = v185 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v198 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v187)
  {
    v196 = a7 + a9 - 1;
    if (a7 >> 3 <= v196 >> 3)
    {
      v24 = a11;
      v207 = (a5 - 1) >> 3;
      v182 = a5 - 1;
      v189 = (a5 - 1) & 7;
      v183 = (a6 - 1) & 3;
      v184 = (a6 - 1) >> 2;
      v188 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v194 = v29.i64[0];
      v195 = v29.i32[0] | v29.i32[1];
      v193 = v26.i64[0];
      v181 = 8 * v18 * v17;
      v205 = v15;
      do
      {
        v30 = (4 * v16) | 3;
        if (4 * v16 <= v203)
        {
          v31 = v203;
        }

        else
        {
          v31 = 4 * v16;
        }

        if (v185 < v30)
        {
          v30 = v185;
        }

        v202 = 4 * v16;
        v192 = v31 - 4 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v183;
        v191 = v33;
        v35 = v33 != 4;
        v36 = a7 >> 3;
        v37 = v183 + 1;
        if (v16 != v184)
        {
          v37 = 4;
        }

        v206 = v37;
        if (v16 != v184)
        {
          v34 = v35;
        }

        v190 = v34;
        v201 = a2 + (v31 - v203) * v24;
        v38 = a7;
        do
        {
          v40 = 8 * v36;
          v41 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = 8 * v36;
          }

          if (v196 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v36 == v207)
          {
            v45 = v189 + 1;
          }

          else
          {
            v45 = 8;
          }

          v46 = 1;
          if (v202 >= v203 && v40 >= v38)
          {
            v47 = v43 != v189;
            if (v36 != v207)
            {
              v47 = v44 != 8;
            }

            v46 = v47 || v190;
          }

          if (isLevelTiled)
          {
            v165 = 0;
            v166 = v181 >> (*(v15 + 57) != 0);
            v167 = 1;
            if (v166 <= 63)
            {
              if (v166 > 15)
              {
                if (v166 == 16)
                {
                  v167 = 0;
                  v168 = 64;
                  v165 = 128;
                }

                else
                {
                  v168 = 0;
                  if (v166 == 32)
                  {
                    v167 = 0;
                    v165 = 64;
                    v168 = 64;
                  }
                }
              }

              else if (v166 == 4)
              {
                v167 = 0;
                v168 = 128;
                v165 = 256;
              }

              else
              {
                v168 = 0;
                if (v166 == 8)
                {
                  v167 = 0;
                  v165 = 128;
                  v168 = 128;
                }
              }
            }

            else if (v166 <= 255)
            {
              if (v166 == 64)
              {
                v167 = 0;
                v168 = 32;
                v165 = 64;
              }

              else
              {
                v168 = 0;
                if (v166 == 128)
                {
                  v167 = 0;
                  v165 = 32;
                  v168 = 32;
                }
              }
            }

            else if (v166 == 256)
            {
              v167 = 0;
              v168 = 16;
              v165 = 32;
            }

            else if (v166 == 512)
            {
              v167 = 0;
              v165 = 16;
              v168 = 16;
            }

            else
            {
              v168 = 0;
              if (v166 == 1024)
              {
                v167 = 0;
                v168 = 8;
                v165 = 16;
              }
            }

            v169 = (v165 >> 3) - 1;
            v170 = (v168 >> 2) - 1;
            if ((v167 & 1) != 0 || (v171 = 32 - __clz(~(-1 << -__clz(v169))), v172 = 32 - __clz(~(-1 << -__clz(v170))), !(v172 | v171)))
            {
              v180 = 0;
            }

            else
            {
              v173 = 0;
              v174 = 0;
              v175 = v36 & v169;
              v176 = v16 & v170;
              v177 = v172 != 0;
              v178 = v171 != 0;
              v179 = 1;
              do
              {
                --v172;
                if (v177)
                {
                  v174 |= (v179 & v176) << v173++;
                }

                else
                {
                  v172 = 0;
                }

                --v171;
                if (v178)
                {
                  v174 |= (v179 & v175) << v173++;
                }

                else
                {
                  v171 = 0;
                }

                v179 *= 2;
                --v173;
                v178 = v171 != 0;
                v177 = v172 != 0;
              }

              while (v171 | v172);
              v180 = v174 << 9;
            }

            v55 = v180 + ((v40 / v165 + v202 / v168 * ((v165 + v182) / v165)) << 14);
          }

          else if (v195)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v52 = v193;
            v51 = BYTE4(v193);
            v53 = v194;
            v54 = HIDWORD(v194);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v16) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v36) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v51 = v54 != 0;
              v52 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 9;
          }

          else
          {
            v55 = 0;
          }

          v56 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          v59 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 3;
          if (v60 < 8)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 2) - 1)));
          }

          if (v61 | v58)
          {
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
                v63 |= (v66 & v36) << v62++;
              }

              else
              {
                v58 = 0;
              }

              --v61;
              if (v65)
              {
                v63 |= (v66 & v16) << v62++;
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
          }

          else
          {
            v67 = 0;
          }

          v68 = (a3 + v55);
          if (v198)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (a4 + v67);
          v70 = (v201 + 16 * (v42 - v38));
          if (!(v46 & 1 | (v45 < 8u)) && v206 > 3)
          {
            v71 = *v69;
            if (v71 == 63)
            {
              v73 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              *v70 = *v68;
              v70[1] = v26;
              v24 = a11;
              v79 = (v70 + a11);
              *v79 = v27;
              v79[1] = v28;
              v72 = 64;
            }

            else
            {
              v24 = a11;
              if (v71 == 1)
              {
                v73 = vld1q_dup_s16(v68->i16);
                *v70 = v73;
                v70[1] = v73;
                v78 = (v70 + a11);
                *v78 = v73;
                v78[1] = v73;
                v72 = 2;
              }

              else if (*v69)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v70, a11, v68, v71, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v72 = 0;
                v73.i64[0] = 0;
                *v70 = 0u;
                v70[1] = 0u;
                v74 = &v70->i8[a11];
                *v74 = 0u;
                *(v74 + 1) = 0u;
              }
            }

            v80 = v68->i64 + v72;
            v81 = v70 + 2;
            v82 = v69[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v27 = *(v80 + 32);
              v28 = *(v80 + 48);
              v70[2] = *v80;
              v70[3] = v26;
              v87 = &v81->i8[v24];
              *v87 = v27;
              *(v87 + 1) = v28;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              v70[2] = v84;
              v70[3] = v84;
              v86 = (v81 + v24);
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v81, v24, v80, v82, *v73.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v70[3] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v88 = v80 + v83;
            v89 = (v70 + v188);
            v90 = v69[2];
            if (v90 == 63)
            {
              v92 = *v88;
              v26 = *(v88 + 16);
              v27 = *(v88 + 32);
              v28 = *(v88 + 48);
              *v89 = *v88;
              v89[1] = v26;
              v95 = (v89 + v24);
              *v95 = v27;
              v95[1] = v28;
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v88);
              *v89 = v92;
              v89[1] = v92;
              v94 = (v89 + v24);
              *v94 = v92;
              v94[1] = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v188), v24, v88, v90, *v84.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v91 = 0;
              v92.i64[0] = 0;
              *v89 = 0u;
              v89[1] = 0u;
              v93 = &v89->i8[v24];
              *v93 = 0u;
              *(v93 + 1) = 0u;
            }

            v96 = v88 + v91;
            v97 = v89 + 2;
            v98 = v69[3];
            if (v98 == 63)
            {
              v100 = *v96;
              v26 = *(v96 + 16);
              v27 = *(v96 + 32);
              v28 = *(v96 + 48);
              v89[2] = *v96;
              v89[3] = v26;
              v103 = &v97->i8[v24];
              *v103 = v27;
              *(v103 + 1) = v28;
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v96);
              v89[2] = v100;
              v89[3] = v100;
              v102 = (v97 + v24);
              *v102 = v100;
              v102[1] = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v97, v24, v96, v98, *v92.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v99 = 0;
              v100.i64[0] = 0;
              *v97 = 0u;
              v89[3] = 0u;
              v101 = &v97->i8[v24];
              *v101 = 0u;
              *(v101 + 1) = 0u;
            }

            v104 = v96 + v99;
            v105 = v70 + 4;
            v106 = v69[4];
            if (v106 == 63)
            {
              v108 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              v70[4] = *v104;
              v70[5] = v26;
              v111 = &v105->i8[v24];
              *v111 = v27;
              *(v111 + 1) = v28;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v104);
              v70[4] = v108;
              v70[5] = v108;
              v110 = (v105 + v24);
              *v110 = v108;
              v110[1] = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v24, v104, v106, *v100.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v108.i64[0] = 0;
              *v105 = 0u;
              v70[5] = 0u;
              v109 = &v105->i8[v24];
              *v109 = 0u;
              *(v109 + 1) = 0u;
            }

            v112 = v104 + v107;
            v113 = v70 + 6;
            v114 = v69[5];
            if (v114 == 63)
            {
              v116 = *v112;
              v26 = *(v112 + 16);
              v27 = *(v112 + 32);
              v28 = *(v112 + 48);
              v70[6] = *v112;
              v70[7] = v26;
              v119 = &v113->i8[v24];
              *v119 = v27;
              *(v119 + 1) = v28;
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v112);
              v70[6] = v116;
              v70[7] = v116;
              v118 = (v113 + v24);
              *v118 = v116;
              v118[1] = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, v24, v112, v114, *v108.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v115 = 0;
              v116.i64[0] = 0;
              *v113 = 0u;
              v70[7] = 0u;
              v117 = &v113->i8[v24];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v38 = a7;
            v120 = v112 + v115;
            v121 = v89 + 4;
            v122 = v69[6];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v27 = *(v120 + 32);
              v28 = *(v120 + 48);
              v89[4] = *v120;
              v89[5] = v26;
              v127 = &v121->i8[v24];
              *v127 = v27;
              *(v127 + 1) = v28;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v89[4] = v124;
              v89[5] = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v116.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v89[5] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v128 = v120 + v123;
            v129 = v89 + 6;
            v130 = v69[7];
            if (v130 == 63)
            {
              v29 = *v128;
              v26 = *(v128 + 16);
              v27 = *(v128 + 32);
              v28 = *(v128 + 48);
              v89[6] = *v128;
              v89[7] = v26;
              v132 = &v129->i8[v24];
              *v132 = v27;
              *(v132 + 1) = v28;
              v15 = v205;
            }

            else
            {
              v15 = v205;
              if (v130 == 1)
              {
                v29 = vld1q_dup_s16(v128);
                v89[6] = v29;
                v89[7] = v29;
LABEL_138:
                v131 = (v129 + v24);
                *v131 = v29;
                v131[1] = v29;
              }

              else
              {
                if (!v130)
                {
                  v29 = 0uLL;
                  *v129 = 0u;
                  v89[7] = 0u;
                  goto LABEL_138;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v129, v24, v128, v130, *v124.i64, *v26.i64, *v27.i64, *v28.i8);
              }
            }

LABEL_29:
            v39 = v36 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v205;
          block[5] = v68;
          v215 = v45;
          v216 = v206;
          v211 = v192;
          v212 = v42 - v40;
          block[6] = v69;
          v209 = v70;
          v24 = a11;
          v210 = a11;
          v213 = v191;
          v214 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v205 + 8) + 16552), block);
            v38 = a7;
            v15 = v205;
            goto LABEL_29;
          }

          v75 = *v69;
          v38 = a7;
          if (v75 == 63)
          {
            v77 = *v68;
            v26 = v68[1];
            v27 = v68[2];
            v28 = v68[3];
            v218 = *v68;
            v219 = v26;
            v226 = v27;
            v227 = v28;
            v76 = 64;
          }

          else if (v75 == 1)
          {
            v77 = vld1q_dup_s16(v68->i16);
            v218 = v77;
            v219 = v77;
            v226 = v77;
            v227 = v77;
            v76 = 2;
          }

          else if (*v69)
          {
            v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 128, v68, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v76 = 0;
            v77.i64[0] = 0;
            v218 = 0u;
            v219 = 0u;
            v226 = 0u;
            v227 = 0u;
          }

          v133 = v68->i64 + v76;
          v134 = v69[1];
          if (v134 == 63)
          {
            v136 = *v133;
            v26 = *(v133 + 16);
            v27 = *(v133 + 32);
            v28 = *(v133 + 48);
            v220 = *v133;
            v221 = v26;
            v228 = v27;
            v229 = v28;
            v135 = 64;
            v39 = v36 + 1;
          }

          else
          {
            v39 = v36 + 1;
            if (v134 == 1)
            {
              v136 = vld1q_dup_s16(v133);
              v220 = v136;
              v221 = v136;
              v228 = v136;
              v229 = v136;
              v135 = 2;
            }

            else if (v69[1])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 128, v133, v134, *v77.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v135 = 0;
              v136.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v228 = 0u;
              v229 = 0u;
            }
          }

          v137 = v133 + v135;
          v138 = v69[2];
          if (v138 == 63)
          {
            v140 = *v137;
            v26 = *(v137 + 16);
            v27 = *(v137 + 32);
            v28 = *(v137 + 48);
            v234 = *v137;
            v235 = v26;
            v242 = v27;
            v243 = v28;
            v139 = 64;
          }

          else if (v138 == 1)
          {
            v140 = vld1q_dup_s16(v137);
            v234 = v140;
            v235 = v140;
            v242 = v140;
            v243 = v140;
            v139 = 2;
          }

          else if (v69[2])
          {
            v139 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 128, v137, v138, *v136.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v139 = 0;
            v140.i64[0] = 0;
            v234 = 0u;
            v235 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v141 = v137 + v139;
          v142 = v69[3];
          if (v142 == 63)
          {
            v144 = *v141;
            v26 = *(v141 + 16);
            v27 = *(v141 + 32);
            v28 = *(v141 + 48);
            v236 = *v141;
            v237 = v26;
            v244 = v27;
            v245 = v28;
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v236 = v144;
            v237 = v144;
            v244 = v144;
            v245 = v144;
            v143 = 2;
          }

          else if (v69[3])
          {
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 128, v141, v142, *v140.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v143 = 0;
            v144.i64[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v244 = 0u;
            v245 = 0u;
          }

          v145 = v141 + v143;
          v146 = v69[4];
          if (v146 == 63)
          {
            v148 = *v145;
            v26 = *(v145 + 16);
            v27 = *(v145 + 32);
            v28 = *(v145 + 48);
            v222 = *v145;
            v223 = v26;
            v230 = v27;
            v231 = v28;
            v147 = 64;
          }

          else if (v146 == 1)
          {
            v148 = vld1q_dup_s16(v145);
            v222 = v148;
            v223 = v148;
            v230 = v148;
            v231 = v148;
            v147 = 2;
          }

          else if (v69[4])
          {
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 128, v145, v146, *v144.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v147 = 0;
            v148.i64[0] = 0;
            v222 = 0u;
            v223 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v149 = v145 + v147;
          v150 = v69[5];
          if (v150 == 63)
          {
            v152 = *v149;
            v26 = *(v149 + 16);
            v27 = *(v149 + 32);
            v28 = *(v149 + 48);
            v224 = *v149;
            v225 = v26;
            v232 = v27;
            v233 = v28;
            v151 = 64;
          }

          else if (v150 == 1)
          {
            v152 = vld1q_dup_s16(v149);
            v224 = v152;
            v225 = v152;
            v232 = v152;
            v233 = v152;
            v151 = 2;
          }

          else if (v69[5])
          {
            v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 128, v149, v150, *v148.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v151 = 0;
            v152.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v232 = 0u;
            v233 = 0u;
          }

          v153 = v149 + v151;
          v154 = v69[6];
          if (v154 == 63)
          {
            v156 = *v153;
            v26 = *(v153 + 16);
            v27 = *(v153 + 32);
            v28 = *(v153 + 48);
            v238 = *v153;
            v239 = v26;
            v246 = v27;
            v247 = v28;
            v155 = 64;
          }

          else if (v154 == 1)
          {
            v156 = vld1q_dup_s16(v153);
            v238 = v156;
            v239 = v156;
            v246 = v156;
            v247 = v156;
            v155 = 2;
          }

          else if (v69[6])
          {
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 128, v153, v154, *v152.i64, *v26.i64, *v27.i64, *v28.i8);
          }

          else
          {
            v155 = 0;
            v156.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v157 = v153 + v155;
          v158 = v69[7];
          if (v158 == 63)
          {
            v29 = *v157;
            v26 = *(v157 + 16);
            v27 = *(v157 + 32);
            v28 = *(v157 + 48);
            v240 = *v157;
            v241 = v26;
            v248 = v27;
            v249 = v28;
            v15 = v205;
          }

          else
          {
            v15 = v205;
            if (v158 == 1)
            {
              v29 = vld1q_dup_s16(v157);
              v240 = v29;
              v241 = v29;
              v248 = v29;
              v249 = v29;
            }

            else if (v158)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 128, v157, v158, *v156.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v29.i64[0] = 0;
              v240 = 0u;
              v241 = 0u;
              v248 = 0u;
              v249 = 0u;
            }
          }

          v159 = v213;
          if (v213)
          {
            v160 = 0;
            v161 = &v218 + 8 * v211 + v212;
            v162 = v214;
            do
            {
              if (v162)
              {
                v163 = 0;
                v164 = v209->i64 + v210 * v160;
                do
                {
                  *(v164 + v163) = v161->i8[v163];
                  ++v163;
                  v162 = v214;
                }

                while (16 * v214 > v163);
                v159 = v213;
              }

              ++v160;
              v161 += 8;
            }

            while (v160 < v159);
          }

LABEL_30:
          v20 = v36 == v196 >> 3;
          v36 = v39;
        }

        while (!v20);
        v20 = v16++ == v187;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 32 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 64), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 12, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 8, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 12, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[16 * v135 + 2 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 16;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 32 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 64), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 12, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 8, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 12, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[16 * v135 + 2 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 16;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 32 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 32 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 64), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 12, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 8, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 12, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[16 * v138 + 2 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 16;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 32 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 32 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 64), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 12, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 8, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 12, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[16 * v138 + 2 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 16;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v322 = a8;
  v304 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v303 = v304 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v317 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v316 = 0;
LABEL_32:
      v313 = v25 - 3;
      v307 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v301 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v316 = v30 >= v24;
    goto LABEL_32;
  }

  v316 = 0;
  v301 = 0;
  v307 = 0;
  v313 = 0;
LABEL_33:
  if (v17 <= v303)
  {
    v315 = a7 + a9 - 1;
    if (a7 >> 3 <= v315 >> 3)
    {
      v32 = a11;
      v325 = v18 >> 3;
      v309 = v18 & 7;
      v314 = (v18 & 7) + 1;
      v299 = v19 & 3;
      v300 = v19 >> 2;
      v308 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v306 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v305 = v34;
      v323 = v15;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= v322)
        {
          v36 = v322;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v304 < v35)
        {
          v35 = v304;
        }

        v312 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v299;
        v311 = v38;
        v40 = v38 != 4;
        v41 = a7 >> 3;
        v42 = v299 + 1;
        if (v17 != v300)
        {
          v42 = 4;
        }

        v324 = v42;
        if (v17 != v300)
        {
          v39 = v40;
        }

        v310 = v39;
        v43 = v17 & ~(-1 << v307);
        v320 = a2 + (v36 - v322) * v32;
        v44 = a7;
        do
        {
          v46 = 8 * v41;
          v47 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 8 * v41;
          }

          if (v315 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v325)
          {
            v51 = v314;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= v322 && v46 >= v44)
          {
            v53 = v49 != v309;
            if (v41 != v325)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v310;
          }

          if (v316)
          {
            if (v313 | v307)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v307 != 0;
              v58 = v313 != 0;
              v59 = v307;
              v60 = v313;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v43 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v41 & ~(-1 << v313) & v56) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v56 *= 2;
                --v54;
                v58 = v60 != 0;
                v57 = v59 != 0;
              }

              while (v60 | v59);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v15 + 336) * ((v41 >> v313) + (v17 >> v307) * v301);
          }

          else if (v306)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v305.i8[0];
            v66 = v305.i8[4];
            v67 = v306.i32[0];
            v68 = v306.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v66 = v68 != 0;
              v65 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v81 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_107;
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
              v77 |= (v80 & v41) << v76++;
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
LABEL_108:
          v82 = (a3 + v69);
          if (v317)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v320 + 32 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 8u)) && v324 > 3)
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v95 = *(v82 + 1);
              v96 = *(v82 + 2);
              v97 = *(v82 + 3);
              v98 = *(v82 + 4);
              v99 = *(v82 + 5);
              v100 = *(v82 + 6);
              v101 = *(v82 + 7);
              v32 = a11;
              *v87 = *v82;
              *(v87 + 16) = v95;
              v102 = (v87 + a11);
              *(v87 + 32) = v96;
              *(v87 + 48) = v97;
              *v102 = v98;
              v102[1] = v99;
              v103 = (v87 + a11 + 32);
              *v103 = v100;
              v103[1] = v101;
              v89 = 128;
            }

            else
            {
              v32 = a11;
              if (v88 == 3)
              {
                v93 = vld1q_dup_f32(v82);
                *v87 = v93;
                *(v87 + 16) = v93;
                *(v87 + 32) = v93;
                *(v87 + 48) = v93;
                v94 = (v87 + a11);
                *v94 = v93;
                v94[1] = v93;
                v94[2] = v93;
                v94[3] = v93;
                v89 = 4;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v89 = 0;
                *(v87 + 32) = 0u;
                *(v87 + 48) = 0u;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v90 = (v87 + a11);
                v90[2] = 0u;
                v90[3] = 0u;
                *v90 = 0u;
                v90[1] = 0u;
              }
            }

            v104 = &v82[v89];
            v105 = (v87 + 64);
            v106 = v86[1];
            if (v106 == 127)
            {
              v111 = *(v104 + 16);
              v112 = *(v104 + 32);
              v113 = *(v104 + 48);
              v114 = *(v104 + 64);
              v115 = *(v104 + 80);
              v116 = *(v104 + 96);
              v117 = *(v104 + 112);
              *v105 = *v104;
              *(v87 + 80) = v111;
              v118 = &v105->i8[v32];
              *(v87 + 96) = v112;
              *(v87 + 112) = v113;
              *v118 = v114;
              *(v118 + 1) = v115;
              v118 += 32;
              *v118 = v116;
              *(v118 + 1) = v117;
              v107 = 128;
            }

            else if (v106 == 3)
            {
              v109 = vld1q_dup_f32(v104);
              *(v87 + 64) = v109;
              *(v87 + 80) = v109;
              *(v87 + 96) = v109;
              *(v87 + 112) = v109;
              v110 = &v105->i8[v32];
              *v110 = v109;
              v110[1] = v109;
              v110[2] = v109;
              v110[3] = v109;
              v107 = 4;
            }

            else if (v86[1])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v32, v104, v106);
            }

            else
            {
              v107 = 0;
              *(v87 + 96) = 0u;
              *(v87 + 112) = 0u;
              *v105 = 0u;
              *(v87 + 80) = 0u;
              v108 = &v105->i8[v32];
              *(v108 + 2) = 0u;
              *(v108 + 3) = 0u;
              *v108 = 0u;
              *(v108 + 1) = 0u;
            }

            v119 = v104 + v107;
            v120 = (v87 + v308);
            v121 = v86[2];
            if (v121 == 127)
            {
              v126 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              v129 = *(v119 + 64);
              v130 = *(v119 + 80);
              v131 = *(v119 + 96);
              v132 = *(v119 + 112);
              *v120 = *v119;
              v120[1] = v126;
              v133 = &v120->i8[v32];
              v120[2] = v127;
              v120[3] = v128;
              *v133 = v129;
              *(v133 + 1) = v130;
              v134 = &v120[2].i8[v32];
              *v134 = v131;
              *(v134 + 1) = v132;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v124 = vld1q_dup_f32(v119);
              *v120 = v124;
              v120[1] = v124;
              v120[2] = v124;
              v120[3] = v124;
              v125 = &v120->i8[v32];
              *v125 = v124;
              v125[1] = v124;
              v125[2] = v124;
              v125[3] = v124;
              v122 = 4;
            }

            else if (v86[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v308), v32, v119, v121);
            }

            else
            {
              v122 = 0;
              v120[2] = 0u;
              v120[3] = 0u;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v32];
              *(v123 + 2) = 0u;
              *(v123 + 3) = 0u;
              *v123 = 0u;
              *(v123 + 1) = 0u;
            }

            v135 = v119 + v122;
            v136 = v120 + 4;
            v137 = v86[3];
            if (v137 == 127)
            {
              v142 = *(v135 + 16);
              v143 = *(v135 + 32);
              v144 = *(v135 + 48);
              v145 = *(v135 + 64);
              v146 = *(v135 + 80);
              v147 = *(v135 + 96);
              v148 = *(v135 + 112);
              *v136 = *v135;
              v120[5] = v142;
              v149 = &v136->i8[v32];
              v120[6] = v143;
              v120[7] = v144;
              *v149 = v145;
              *(v149 + 1) = v146;
              v149 += 32;
              *v149 = v147;
              *(v149 + 1) = v148;
              v138 = 128;
            }

            else if (v137 == 3)
            {
              v140 = vld1q_dup_f32(v135);
              v120[4] = v140;
              v120[5] = v140;
              v120[6] = v140;
              v120[7] = v140;
              v141 = &v136->i8[v32];
              *v141 = v140;
              v141[1] = v140;
              v141[2] = v140;
              v141[3] = v140;
              v138 = 4;
            }

            else if (v86[3])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137);
            }

            else
            {
              v138 = 0;
              v120[6] = 0u;
              v120[7] = 0u;
              *v136 = 0u;
              v120[5] = 0u;
              v139 = &v136->i8[v32];
              *(v139 + 2) = 0u;
              *(v139 + 3) = 0u;
              *v139 = 0u;
              *(v139 + 1) = 0u;
            }

            v150 = v135 + v138;
            v151 = (v87 + 128);
            v152 = v86[4];
            if (v152 == 127)
            {
              v157 = *(v150 + 16);
              v158 = *(v150 + 32);
              v159 = *(v150 + 48);
              v160 = *(v150 + 64);
              v161 = *(v150 + 80);
              v162 = *(v150 + 96);
              v163 = *(v150 + 112);
              *v151 = *v150;
              *(v87 + 144) = v157;
              v164 = &v151->i8[v32];
              *(v87 + 160) = v158;
              *(v87 + 176) = v159;
              *v164 = v160;
              *(v164 + 1) = v161;
              v164 += 32;
              *v164 = v162;
              *(v164 + 1) = v163;
              v153 = 128;
            }

            else if (v152 == 3)
            {
              v155 = vld1q_dup_f32(v150);
              *(v87 + 128) = v155;
              *(v87 + 144) = v155;
              *(v87 + 160) = v155;
              *(v87 + 176) = v155;
              v156 = &v151->i8[v32];
              *v156 = v155;
              v156[1] = v155;
              v156[2] = v155;
              v156[3] = v155;
              v153 = 4;
            }

            else if (v86[4])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, v32, v150, v152);
            }

            else
            {
              v153 = 0;
              *(v87 + 160) = 0u;
              *(v87 + 176) = 0u;
              *v151 = 0u;
              *(v87 + 144) = 0u;
              v154 = &v151->i8[v32];
              *(v154 + 2) = 0u;
              *(v154 + 3) = 0u;
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v165 = v150 + v153;
            v166 = (v87 + 192);
            v167 = v86[5];
            if (v167 == 127)
            {
              v172 = *(v165 + 16);
              v173 = *(v165 + 32);
              v174 = *(v165 + 48);
              v175 = *(v165 + 64);
              v176 = *(v165 + 80);
              v177 = *(v165 + 96);
              v178 = *(v165 + 112);
              *v166 = *v165;
              *(v87 + 208) = v172;
              v179 = &v166->i8[v32];
              *(v87 + 224) = v173;
              *(v87 + 240) = v174;
              *v179 = v175;
              *(v179 + 1) = v176;
              v179 += 32;
              *v179 = v177;
              *(v179 + 1) = v178;
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v170 = vld1q_dup_f32(v165);
              *(v87 + 192) = v170;
              *(v87 + 208) = v170;
              *(v87 + 224) = v170;
              *(v87 + 240) = v170;
              v171 = &v166->i8[v32];
              *v171 = v170;
              v171[1] = v170;
              v171[2] = v170;
              v171[3] = v170;
              v168 = 4;
            }

            else if (v86[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v166, v32, v165, v167);
            }

            else
            {
              v168 = 0;
              *(v87 + 224) = 0u;
              *(v87 + 240) = 0u;
              *v166 = 0u;
              *(v87 + 208) = 0u;
              v169 = &v166->i8[v32];
              *(v169 + 2) = 0u;
              *(v169 + 3) = 0u;
              *v169 = 0u;
              *(v169 + 1) = 0u;
            }

            v180 = v165 + v168;
            v181 = v120 + 8;
            v182 = v86[6];
            if (v182 == 127)
            {
              v187 = *(v180 + 16);
              v188 = *(v180 + 32);
              v189 = *(v180 + 48);
              v190 = *(v180 + 64);
              v191 = *(v180 + 80);
              v192 = *(v180 + 96);
              v193 = *(v180 + 112);
              *v181 = *v180;
              v120[9] = v187;
              v194 = &v181->i8[v32];
              v120[10] = v188;
              v120[11] = v189;
              *v194 = v190;
              *(v194 + 1) = v191;
              v194 += 32;
              *v194 = v192;
              *(v194 + 1) = v193;
              v183 = 128;
            }

            else if (v182 == 3)
            {
              v185 = vld1q_dup_f32(v180);
              v120[8] = v185;
              v120[9] = v185;
              v120[10] = v185;
              v120[11] = v185;
              v186 = &v181->i8[v32];
              *v186 = v185;
              v186[1] = v185;
              v186[2] = v185;
              v186[3] = v185;
              v183 = 4;
            }

            else if (v86[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v181, v32, v165 + v168, v182);
            }

            else
            {
              v183 = 0;
              v120[10] = 0u;
              v120[11] = 0u;
              *v181 = 0u;
              v120[9] = 0u;
              v184 = &v181->i8[v32];
              *(v184 + 2) = 0u;
              *(v184 + 3) = 0u;
              *v184 = 0u;
              *(v184 + 1) = 0u;
            }

            v195 = v180 + v183;
            v196 = v120 + 12;
            v197 = v86[7];
            if (v197 == 127)
            {
              v201 = *(v195 + 16);
              v202 = *(v195 + 32);
              v203 = *(v195 + 48);
              v204 = *(v195 + 64);
              v205 = *(v195 + 80);
              v206 = *(v195 + 96);
              v207 = *(v195 + 112);
              *v196 = *v195;
              v120[13] = v201;
              v208 = &v196->i8[v32];
              v120[14] = v202;
              v120[15] = v203;
              *v208 = v204;
              *(v208 + 1) = v205;
              v208 += 32;
              *v208 = v206;
              *(v208 + 1) = v207;
              v44 = a7;
              v15 = v323;
            }

            else
            {
              v44 = a7;
              v15 = v323;
              if (v197 == 3)
              {
                v199 = vld1q_dup_f32(v195);
                v120[12] = v199;
                v120[13] = v199;
                v120[14] = v199;
                v120[15] = v199;
                v200 = &v196->i8[v32];
                *v200 = v199;
                v200[1] = v199;
                v200[2] = v199;
                v200[3] = v199;
              }

              else if (v197)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v32, v195, v197);
              }

              else
              {
                v120[14] = 0u;
                v120[15] = 0u;
                *v196 = 0u;
                v120[13] = 0u;
                v198 = &v196->i8[v32];
                *(v198 + 2) = 0u;
                *(v198 + 3) = 0u;
                *v198 = 0u;
                *(v198 + 1) = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v323;
          block[5] = v82;
          v333 = v51;
          v334 = v324;
          v329 = v312;
          v330 = v48 - v46;
          block[6] = v86;
          v327 = v87;
          v32 = a11;
          v328 = a11;
          v331 = v311;
          v332 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v323 + 8) + 16552), block);
            v44 = a7;
            v15 = v323;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v91 = *v86;
          if (v91 == 127)
          {
            v210 = *(v82 + 1);
            v211 = *(v82 + 2);
            v212 = *(v82 + 3);
            v213 = *(v82 + 4);
            v214 = *(v82 + 5);
            v215 = *(v82 + 6);
            v216 = *(v82 + 7);
            v336 = *v82;
            v337 = v210;
            v338 = v211;
            v339 = v212;
            v352 = v213;
            v353 = v214;
            v354 = v215;
            v355 = v216;
            v92 = 128;
          }

          else if (v91 == 3)
          {
            v209 = vld1q_dup_f32(v82);
            v336 = v209;
            v337 = v209;
            v338 = v209;
            v339 = v209;
            v352 = v209;
            v353 = v209;
            v354 = v209;
            v355 = v209;
            v92 = 4;
          }

          else if (*v86)
          {
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 256, v82, v91);
          }

          else
          {
            v92 = 0;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v217 = &v82[v92];
          v218 = v86[1];
          if (v218 == 127)
          {
            v221 = *(v217 + 16);
            v222 = *(v217 + 32);
            v223 = *(v217 + 48);
            v224 = *(v217 + 64);
            v225 = *(v217 + 80);
            v226 = *(v217 + 96);
            v227 = *(v217 + 112);
            v340 = *v217;
            v341 = v221;
            v342 = v222;
            v343 = v223;
            v356 = v224;
            v357 = v225;
            v358 = v226;
            v359 = v227;
            v219 = 128;
          }

          else if (v218 == 3)
          {
            v220 = vld1q_dup_f32(v217);
            v340 = v220;
            v341 = v220;
            v342 = v220;
            v343 = v220;
            v356 = v220;
            v357 = v220;
            v358 = v220;
            v359 = v220;
            v219 = 4;
          }

          else if (v86[1])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 256, v217, v218);
          }

          else
          {
            v219 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v228 = v217 + v219;
          v229 = v86[2];
          if (v229 == 127)
          {
            v232 = *(v228 + 16);
            v233 = *(v228 + 32);
            v234 = *(v228 + 48);
            v235 = *(v228 + 64);
            v236 = *(v228 + 80);
            v237 = *(v228 + 96);
            v238 = *(v228 + 112);
            v368 = *v228;
            v369 = v232;
            v370 = v233;
            v371 = v234;
            v384 = v235;
            v385 = v236;
            v386 = v237;
            v387 = v238;
            v230 = 128;
          }

          else if (v229 == 3)
          {
            v231 = vld1q_dup_f32(v228);
            v368 = v231;
            v369 = v231;
            v370 = v231;
            v371 = v231;
            v384 = v231;
            v385 = v231;
            v386 = v231;
            v387 = v231;
            v230 = 4;
          }

          else if (v86[2])
          {
            v230 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 256, v228, v229);
          }

          else
          {
            v230 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v239 = v228 + v230;
          v240 = v86[3];
          if (v240 == 127)
          {
            v243 = *(v239 + 16);
            v244 = *(v239 + 32);
            v245 = *(v239 + 48);
            v246 = *(v239 + 64);
            v247 = *(v239 + 80);
            v248 = *(v239 + 96);
            v249 = *(v239 + 112);
            v372 = *v239;
            v373 = v243;
            v374 = v244;
            v375 = v245;
            v388 = v246;
            v389 = v247;
            v390 = v248;
            v391 = v249;
            v241 = 128;
          }

          else if (v240 == 3)
          {
            v242 = vld1q_dup_f32(v239);
            v372 = v242;
            v373 = v242;
            v374 = v242;
            v375 = v242;
            v388 = v242;
            v389 = v242;
            v390 = v242;
            v391 = v242;
            v241 = 4;
          }

          else if (v86[3])
          {
            v241 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 256, v239, v240);
          }

          else
          {
            v241 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v250 = v239 + v241;
          v251 = v86[4];
          if (v251 == 127)
          {
            v254 = *(v250 + 16);
            v255 = *(v250 + 32);
            v256 = *(v250 + 48);
            v257 = *(v250 + 64);
            v258 = *(v250 + 80);
            v259 = *(v250 + 96);
            v260 = *(v250 + 112);
            v344 = *v250;
            v345 = v254;
            v346 = v255;
            v347 = v256;
            v360 = v257;
            v361 = v258;
            v362 = v259;
            v363 = v260;
            v252 = 128;
          }

          else if (v251 == 3)
          {
            v253 = vld1q_dup_f32(v250);
            v344 = v253;
            v345 = v253;
            v346 = v253;
            v347 = v253;
            v360 = v253;
            v361 = v253;
            v362 = v253;
            v363 = v253;
            v252 = 4;
          }

          else if (v86[4])
          {
            v252 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v344, 256, v250, v251);
          }

          else
          {
            v252 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v261 = v250 + v252;
          v262 = v86[5];
          if (v262 == 127)
          {
            v265 = *(v261 + 16);
            v266 = *(v261 + 32);
            v267 = *(v261 + 48);
            v268 = *(v261 + 64);
            v269 = *(v261 + 80);
            v270 = *(v261 + 96);
            v271 = *(v261 + 112);
            v348 = *v261;
            v349 = v265;
            v350 = v266;
            v351 = v267;
            v364 = v268;
            v365 = v269;
            v366 = v270;
            v367 = v271;
            v263 = 128;
          }

          else if (v262 == 3)
          {
            v264 = vld1q_dup_f32(v261);
            v348 = v264;
            v349 = v264;
            v350 = v264;
            v351 = v264;
            v364 = v264;
            v365 = v264;
            v366 = v264;
            v367 = v264;
            v263 = 4;
          }

          else if (v86[5])
          {
            v263 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v348, 256, v261, v262);
          }

          else
          {
            v263 = 0;
            v350 = 0u;
            v351 = 0u;
            v348 = 0u;
            v349 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v272 = v261 + v263;
          v273 = v86[6];
          if (v273 == 127)
          {
            v276 = *(v272 + 16);
            v277 = *(v272 + 32);
            v278 = *(v272 + 48);
            v279 = *(v272 + 64);
            v280 = *(v272 + 80);
            v281 = *(v272 + 96);
            v282 = *(v272 + 112);
            v376 = *v272;
            v377 = v276;
            v378 = v277;
            v379 = v278;
            v392 = v279;
            v393 = v280;
            v394 = v281;
            v395 = v282;
            v274 = 128;
          }

          else if (v273 == 3)
          {
            v275 = vld1q_dup_f32(v272);
            v376 = v275;
            v377 = v275;
            v378 = v275;
            v379 = v275;
            v392 = v275;
            v393 = v275;
            v394 = v275;
            v395 = v275;
            v274 = 4;
          }

          else if (v86[6])
          {
            v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v376, 256, v272, v273);
          }

          else
          {
            v274 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
          }

          v283 = v272 + v274;
          v284 = v86[7];
          if (v284 == 127)
          {
            v286 = *(v283 + 16);
            v287 = *(v283 + 32);
            v288 = *(v283 + 48);
            v289 = *(v283 + 64);
            v290 = *(v283 + 80);
            v291 = *(v283 + 96);
            v292 = *(v283 + 112);
            v380 = *v283;
            v381 = v286;
            v382 = v287;
            v383 = v288;
            v396 = v289;
            v397 = v290;
            v398 = v291;
            v399 = v292;
            v44 = a7;
            v15 = v323;
          }

          else
          {
            v44 = a7;
            v15 = v323;
            if (v284 == 3)
            {
              v285 = vld1q_dup_f32(v283);
              v380 = v285;
              v381 = v285;
              v382 = v285;
              v383 = v285;
              v396 = v285;
              v397 = v285;
              v398 = v285;
              v399 = v285;
            }

            else if (v284)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v380, 256, v283, v284);
            }

            else
            {
              v382 = 0u;
              v383 = 0u;
              v380 = 0u;
              v381 = 0u;
              v396 = 0u;
              v397 = 0u;
              v398 = 0u;
              v399 = 0u;
            }
          }

          v293 = v331;
          v45 = v41 + 1;
          if (v331)
          {
            v294 = 0;
            v295 = &v336 + 16 * v329 + 2 * v330;
            v296 = v332;
            do
            {
              if (v296)
              {
                v297 = 0;
                v298 = v327 + v328 * v294;
                do
                {
                  *(v298 + v297) = v295->i8[v297];
                  ++v297;
                  v296 = v332;
                }

                while (32 * v332 > v297);
                v293 = v331;
              }

              ++v294;
              v295 += 16;
            }

            while (v294 < v293);
          }

LABEL_50:
          v20 = v41 == v315 >> 3;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v303;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v322 = a8;
  v304 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v303 = v304 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v317 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v316 = 0;
LABEL_32:
      v313 = v25 - 3;
      v307 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v301 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v316 = v30 >= v24;
    goto LABEL_32;
  }

  v316 = 0;
  v301 = 0;
  v307 = 0;
  v313 = 0;
LABEL_33:
  if (v17 <= v303)
  {
    v315 = a7 + a9 - 1;
    if (a7 >> 3 <= v315 >> 3)
    {
      v32 = a11;
      v325 = v18 >> 3;
      v309 = v18 & 7;
      v314 = (v18 & 7) + 1;
      v299 = v19 & 3;
      v300 = v19 >> 2;
      v308 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v306 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v305 = v34;
      v323 = v15;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= v322)
        {
          v36 = v322;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v304 < v35)
        {
          v35 = v304;
        }

        v312 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v299;
        v311 = v38;
        v40 = v38 != 4;
        v41 = a7 >> 3;
        v42 = v299 + 1;
        if (v17 != v300)
        {
          v42 = 4;
        }

        v324 = v42;
        if (v17 != v300)
        {
          v39 = v40;
        }

        v310 = v39;
        v43 = v17 & ~(-1 << v307);
        v320 = a2 + (v36 - v322) * v32;
        v44 = a7;
        do
        {
          v46 = 8 * v41;
          v47 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 8 * v41;
          }

          if (v315 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v325)
          {
            v51 = v314;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= v322 && v46 >= v44)
          {
            v53 = v49 != v309;
            if (v41 != v325)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v310;
          }

          if (v316)
          {
            if (v313 | v307)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v307 != 0;
              v58 = v313 != 0;
              v59 = v307;
              v60 = v313;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v43 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v41 & ~(-1 << v313) & v56) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v56 *= 2;
                --v54;
                v58 = v60 != 0;
                v57 = v59 != 0;
              }

              while (v60 | v59);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v15 + 336) * ((v41 >> v313) + (v17 >> v307) * v301);
          }

          else if (v306)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v305.i8[0];
            v66 = v305.i8[4];
            v67 = v306.i32[0];
            v68 = v306.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v66 = v68 != 0;
              v65 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v81 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_107;
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
              v77 |= (v80 & v41) << v76++;
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
LABEL_108:
          v82 = (a3 + v69);
          if (v317)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v320 + 32 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 8u)) && v324 > 3)
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v95 = *(v82 + 1);
              v96 = *(v82 + 2);
              v97 = *(v82 + 3);
              v98 = *(v82 + 4);
              v99 = *(v82 + 5);
              v100 = *(v82 + 6);
              v101 = *(v82 + 7);
              v32 = a11;
              *v87 = *v82;
              *(v87 + 16) = v95;
              v102 = (v87 + a11);
              *(v87 + 32) = v96;
              *(v87 + 48) = v97;
              *v102 = v98;
              v102[1] = v99;
              v103 = (v87 + a11 + 32);
              *v103 = v100;
              v103[1] = v101;
              v89 = 128;
            }

            else
            {
              v32 = a11;
              if (v88 == 3)
              {
                v93 = vld1q_dup_f32(v82);
                *v87 = v93;
                *(v87 + 16) = v93;
                *(v87 + 32) = v93;
                *(v87 + 48) = v93;
                v94 = (v87 + a11);
                *v94 = v93;
                v94[1] = v93;
                v94[2] = v93;
                v94[3] = v93;
                v89 = 4;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v89 = 0;
                *(v87 + 32) = 0u;
                *(v87 + 48) = 0u;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v90 = (v87 + a11);
                v90[2] = 0u;
                v90[3] = 0u;
                *v90 = 0u;
                v90[1] = 0u;
              }
            }

            v104 = &v82[v89];
            v105 = (v87 + 64);
            v106 = v86[1];
            if (v106 == 127)
            {
              v111 = *(v104 + 16);
              v112 = *(v104 + 32);
              v113 = *(v104 + 48);
              v114 = *(v104 + 64);
              v115 = *(v104 + 80);
              v116 = *(v104 + 96);
              v117 = *(v104 + 112);
              *v105 = *v104;
              *(v87 + 80) = v111;
              v118 = &v105->i8[v32];
              *(v87 + 96) = v112;
              *(v87 + 112) = v113;
              *v118 = v114;
              *(v118 + 1) = v115;
              v118 += 32;
              *v118 = v116;
              *(v118 + 1) = v117;
              v107 = 128;
            }

            else if (v106 == 3)
            {
              v109 = vld1q_dup_f32(v104);
              *(v87 + 64) = v109;
              *(v87 + 80) = v109;
              *(v87 + 96) = v109;
              *(v87 + 112) = v109;
              v110 = &v105->i8[v32];
              *v110 = v109;
              v110[1] = v109;
              v110[2] = v109;
              v110[3] = v109;
              v107 = 4;
            }

            else if (v86[1])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v32, v104, v106);
            }

            else
            {
              v107 = 0;
              *(v87 + 96) = 0u;
              *(v87 + 112) = 0u;
              *v105 = 0u;
              *(v87 + 80) = 0u;
              v108 = &v105->i8[v32];
              *(v108 + 2) = 0u;
              *(v108 + 3) = 0u;
              *v108 = 0u;
              *(v108 + 1) = 0u;
            }

            v119 = v104 + v107;
            v120 = (v87 + v308);
            v121 = v86[2];
            if (v121 == 127)
            {
              v126 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              v129 = *(v119 + 64);
              v130 = *(v119 + 80);
              v131 = *(v119 + 96);
              v132 = *(v119 + 112);
              *v120 = *v119;
              v120[1] = v126;
              v133 = &v120->i8[v32];
              v120[2] = v127;
              v120[3] = v128;
              *v133 = v129;
              *(v133 + 1) = v130;
              v134 = &v120[2].i8[v32];
              *v134 = v131;
              *(v134 + 1) = v132;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v124 = vld1q_dup_f32(v119);
              *v120 = v124;
              v120[1] = v124;
              v120[2] = v124;
              v120[3] = v124;
              v125 = &v120->i8[v32];
              *v125 = v124;
              v125[1] = v124;
              v125[2] = v124;
              v125[3] = v124;
              v122 = 4;
            }

            else if (v86[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v308), v32, v119, v121);
            }

            else
            {
              v122 = 0;
              v120[2] = 0u;
              v120[3] = 0u;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v32];
              *(v123 + 2) = 0u;
              *(v123 + 3) = 0u;
              *v123 = 0u;
              *(v123 + 1) = 0u;
            }

            v135 = v119 + v122;
            v136 = v120 + 4;
            v137 = v86[3];
            if (v137 == 127)
            {
              v142 = *(v135 + 16);
              v143 = *(v135 + 32);
              v144 = *(v135 + 48);
              v145 = *(v135 + 64);
              v146 = *(v135 + 80);
              v147 = *(v135 + 96);
              v148 = *(v135 + 112);
              *v136 = *v135;
              v120[5] = v142;
              v149 = &v136->i8[v32];
              v120[6] = v143;
              v120[7] = v144;
              *v149 = v145;
              *(v149 + 1) = v146;
              v149 += 32;
              *v149 = v147;
              *(v149 + 1) = v148;
              v138 = 128;
            }

            else if (v137 == 3)
            {
              v140 = vld1q_dup_f32(v135);
              v120[4] = v140;
              v120[5] = v140;
              v120[6] = v140;
              v120[7] = v140;
              v141 = &v136->i8[v32];
              *v141 = v140;
              v141[1] = v140;
              v141[2] = v140;
              v141[3] = v140;
              v138 = 4;
            }

            else if (v86[3])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137);
            }

            else
            {
              v138 = 0;
              v120[6] = 0u;
              v120[7] = 0u;
              *v136 = 0u;
              v120[5] = 0u;
              v139 = &v136->i8[v32];
              *(v139 + 2) = 0u;
              *(v139 + 3) = 0u;
              *v139 = 0u;
              *(v139 + 1) = 0u;
            }

            v150 = v135 + v138;
            v151 = (v87 + 128);
            v152 = v86[4];
            if (v152 == 127)
            {
              v157 = *(v150 + 16);
              v158 = *(v150 + 32);
              v159 = *(v150 + 48);
              v160 = *(v150 + 64);
              v161 = *(v150 + 80);
              v162 = *(v150 + 96);
              v163 = *(v150 + 112);
              *v151 = *v150;
              *(v87 + 144) = v157;
              v164 = &v151->i8[v32];
              *(v87 + 160) = v158;
              *(v87 + 176) = v159;
              *v164 = v160;
              *(v164 + 1) = v161;
              v164 += 32;
              *v164 = v162;
              *(v164 + 1) = v163;
              v153 = 128;
            }

            else if (v152 == 3)
            {
              v155 = vld1q_dup_f32(v150);
              *(v87 + 128) = v155;
              *(v87 + 144) = v155;
              *(v87 + 160) = v155;
              *(v87 + 176) = v155;
              v156 = &v151->i8[v32];
              *v156 = v155;
              v156[1] = v155;
              v156[2] = v155;
              v156[3] = v155;
              v153 = 4;
            }

            else if (v86[4])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, v32, v150, v152);
            }

            else
            {
              v153 = 0;
              *(v87 + 160) = 0u;
              *(v87 + 176) = 0u;
              *v151 = 0u;
              *(v87 + 144) = 0u;
              v154 = &v151->i8[v32];
              *(v154 + 2) = 0u;
              *(v154 + 3) = 0u;
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v165 = v150 + v153;
            v166 = (v87 + 192);
            v167 = v86[5];
            if (v167 == 127)
            {
              v172 = *(v165 + 16);
              v173 = *(v165 + 32);
              v174 = *(v165 + 48);
              v175 = *(v165 + 64);
              v176 = *(v165 + 80);
              v177 = *(v165 + 96);
              v178 = *(v165 + 112);
              *v166 = *v165;
              *(v87 + 208) = v172;
              v179 = &v166->i8[v32];
              *(v87 + 224) = v173;
              *(v87 + 240) = v174;
              *v179 = v175;
              *(v179 + 1) = v176;
              v179 += 32;
              *v179 = v177;
              *(v179 + 1) = v178;
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v170 = vld1q_dup_f32(v165);
              *(v87 + 192) = v170;
              *(v87 + 208) = v170;
              *(v87 + 224) = v170;
              *(v87 + 240) = v170;
              v171 = &v166->i8[v32];
              *v171 = v170;
              v171[1] = v170;
              v171[2] = v170;
              v171[3] = v170;
              v168 = 4;
            }

            else if (v86[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v166, v32, v165, v167);
            }

            else
            {
              v168 = 0;
              *(v87 + 224) = 0u;
              *(v87 + 240) = 0u;
              *v166 = 0u;
              *(v87 + 208) = 0u;
              v169 = &v166->i8[v32];
              *(v169 + 2) = 0u;
              *(v169 + 3) = 0u;
              *v169 = 0u;
              *(v169 + 1) = 0u;
            }

            v180 = v165 + v168;
            v181 = v120 + 8;
            v182 = v86[6];
            if (v182 == 127)
            {
              v187 = *(v180 + 16);
              v188 = *(v180 + 32);
              v189 = *(v180 + 48);
              v190 = *(v180 + 64);
              v191 = *(v180 + 80);
              v192 = *(v180 + 96);
              v193 = *(v180 + 112);
              *v181 = *v180;
              v120[9] = v187;
              v194 = &v181->i8[v32];
              v120[10] = v188;
              v120[11] = v189;
              *v194 = v190;
              *(v194 + 1) = v191;
              v194 += 32;
              *v194 = v192;
              *(v194 + 1) = v193;
              v183 = 128;
            }

            else if (v182 == 3)
            {
              v185 = vld1q_dup_f32(v180);
              v120[8] = v185;
              v120[9] = v185;
              v120[10] = v185;
              v120[11] = v185;
              v186 = &v181->i8[v32];
              *v186 = v185;
              v186[1] = v185;
              v186[2] = v185;
              v186[3] = v185;
              v183 = 4;
            }

            else if (v86[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v181, v32, v165 + v168, v182);
            }

            else
            {
              v183 = 0;
              v120[10] = 0u;
              v120[11] = 0u;
              *v181 = 0u;
              v120[9] = 0u;
              v184 = &v181->i8[v32];
              *(v184 + 2) = 0u;
              *(v184 + 3) = 0u;
              *v184 = 0u;
              *(v184 + 1) = 0u;
            }

            v195 = v180 + v183;
            v196 = v120 + 12;
            v197 = v86[7];
            if (v197 == 127)
            {
              v201 = *(v195 + 16);
              v202 = *(v195 + 32);
              v203 = *(v195 + 48);
              v204 = *(v195 + 64);
              v205 = *(v195 + 80);
              v206 = *(v195 + 96);
              v207 = *(v195 + 112);
              *v196 = *v195;
              v120[13] = v201;
              v208 = &v196->i8[v32];
              v120[14] = v202;
              v120[15] = v203;
              *v208 = v204;
              *(v208 + 1) = v205;
              v208 += 32;
              *v208 = v206;
              *(v208 + 1) = v207;
              v44 = a7;
              v15 = v323;
            }

            else
            {
              v44 = a7;
              v15 = v323;
              if (v197 == 3)
              {
                v199 = vld1q_dup_f32(v195);
                v120[12] = v199;
                v120[13] = v199;
                v120[14] = v199;
                v120[15] = v199;
                v200 = &v196->i8[v32];
                *v200 = v199;
                v200[1] = v199;
                v200[2] = v199;
                v200[3] = v199;
              }

              else if (v197)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v32, v195, v197);
              }

              else
              {
                v120[14] = 0u;
                v120[15] = 0u;
                *v196 = 0u;
                v120[13] = 0u;
                v198 = &v196->i8[v32];
                *(v198 + 2) = 0u;
                *(v198 + 3) = 0u;
                *v198 = 0u;
                *(v198 + 1) = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v323;
          block[5] = v82;
          v333 = v51;
          v334 = v324;
          v329 = v312;
          v330 = v48 - v46;
          block[6] = v86;
          v327 = v87;
          v32 = a11;
          v328 = a11;
          v331 = v311;
          v332 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v323 + 8) + 16552), block);
            v44 = a7;
            v15 = v323;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v91 = *v86;
          if (v91 == 127)
          {
            v210 = *(v82 + 1);
            v211 = *(v82 + 2);
            v212 = *(v82 + 3);
            v213 = *(v82 + 4);
            v214 = *(v82 + 5);
            v215 = *(v82 + 6);
            v216 = *(v82 + 7);
            v336 = *v82;
            v337 = v210;
            v338 = v211;
            v339 = v212;
            v352 = v213;
            v353 = v214;
            v354 = v215;
            v355 = v216;
            v92 = 128;
          }

          else if (v91 == 3)
          {
            v209 = vld1q_dup_f32(v82);
            v336 = v209;
            v337 = v209;
            v338 = v209;
            v339 = v209;
            v352 = v209;
            v353 = v209;
            v354 = v209;
            v355 = v209;
            v92 = 4;
          }

          else if (*v86)
          {
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 256, v82, v91);
          }

          else
          {
            v92 = 0;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v217 = &v82[v92];
          v218 = v86[1];
          if (v218 == 127)
          {
            v221 = *(v217 + 16);
            v222 = *(v217 + 32);
            v223 = *(v217 + 48);
            v224 = *(v217 + 64);
            v225 = *(v217 + 80);
            v226 = *(v217 + 96);
            v227 = *(v217 + 112);
            v340 = *v217;
            v341 = v221;
            v342 = v222;
            v343 = v223;
            v356 = v224;
            v357 = v225;
            v358 = v226;
            v359 = v227;
            v219 = 128;
          }

          else if (v218 == 3)
          {
            v220 = vld1q_dup_f32(v217);
            v340 = v220;
            v341 = v220;
            v342 = v220;
            v343 = v220;
            v356 = v220;
            v357 = v220;
            v358 = v220;
            v359 = v220;
            v219 = 4;
          }

          else if (v86[1])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 256, v217, v218);
          }

          else
          {
            v219 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v228 = v217 + v219;
          v229 = v86[2];
          if (v229 == 127)
          {
            v232 = *(v228 + 16);
            v233 = *(v228 + 32);
            v234 = *(v228 + 48);
            v235 = *(v228 + 64);
            v236 = *(v228 + 80);
            v237 = *(v228 + 96);
            v238 = *(v228 + 112);
            v368 = *v228;
            v369 = v232;
            v370 = v233;
            v371 = v234;
            v384 = v235;
            v385 = v236;
            v386 = v237;
            v387 = v238;
            v230 = 128;
          }

          else if (v229 == 3)
          {
            v231 = vld1q_dup_f32(v228);
            v368 = v231;
            v369 = v231;
            v370 = v231;
            v371 = v231;
            v384 = v231;
            v385 = v231;
            v386 = v231;
            v387 = v231;
            v230 = 4;
          }

          else if (v86[2])
          {
            v230 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 256, v228, v229);
          }

          else
          {
            v230 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v239 = v228 + v230;
          v240 = v86[3];
          if (v240 == 127)
          {
            v243 = *(v239 + 16);
            v244 = *(v239 + 32);
            v245 = *(v239 + 48);
            v246 = *(v239 + 64);
            v247 = *(v239 + 80);
            v248 = *(v239 + 96);
            v249 = *(v239 + 112);
            v372 = *v239;
            v373 = v243;
            v374 = v244;
            v375 = v245;
            v388 = v246;
            v389 = v247;
            v390 = v248;
            v391 = v249;
            v241 = 128;
          }

          else if (v240 == 3)
          {
            v242 = vld1q_dup_f32(v239);
            v372 = v242;
            v373 = v242;
            v374 = v242;
            v375 = v242;
            v388 = v242;
            v389 = v242;
            v390 = v242;
            v391 = v242;
            v241 = 4;
          }

          else if (v86[3])
          {
            v241 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 256, v239, v240);
          }

          else
          {
            v241 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v250 = v239 + v241;
          v251 = v86[4];
          if (v251 == 127)
          {
            v254 = *(v250 + 16);
            v255 = *(v250 + 32);
            v256 = *(v250 + 48);
            v257 = *(v250 + 64);
            v258 = *(v250 + 80);
            v259 = *(v250 + 96);
            v260 = *(v250 + 112);
            v344 = *v250;
            v345 = v254;
            v346 = v255;
            v347 = v256;
            v360 = v257;
            v361 = v258;
            v362 = v259;
            v363 = v260;
            v252 = 128;
          }

          else if (v251 == 3)
          {
            v253 = vld1q_dup_f32(v250);
            v344 = v253;
            v345 = v253;
            v346 = v253;
            v347 = v253;
            v360 = v253;
            v361 = v253;
            v362 = v253;
            v363 = v253;
            v252 = 4;
          }

          else if (v86[4])
          {
            v252 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v344, 256, v250, v251);
          }

          else
          {
            v252 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v261 = v250 + v252;
          v262 = v86[5];
          if (v262 == 127)
          {
            v265 = *(v261 + 16);
            v266 = *(v261 + 32);
            v267 = *(v261 + 48);
            v268 = *(v261 + 64);
            v269 = *(v261 + 80);
            v270 = *(v261 + 96);
            v271 = *(v261 + 112);
            v348 = *v261;
            v349 = v265;
            v350 = v266;
            v351 = v267;
            v364 = v268;
            v365 = v269;
            v366 = v270;
            v367 = v271;
            v263 = 128;
          }

          else if (v262 == 3)
          {
            v264 = vld1q_dup_f32(v261);
            v348 = v264;
            v349 = v264;
            v350 = v264;
            v351 = v264;
            v364 = v264;
            v365 = v264;
            v366 = v264;
            v367 = v264;
            v263 = 4;
          }

          else if (v86[5])
          {
            v263 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v348, 256, v261, v262);
          }

          else
          {
            v263 = 0;
            v350 = 0u;
            v351 = 0u;
            v348 = 0u;
            v349 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v272 = v261 + v263;
          v273 = v86[6];
          if (v273 == 127)
          {
            v276 = *(v272 + 16);
            v277 = *(v272 + 32);
            v278 = *(v272 + 48);
            v279 = *(v272 + 64);
            v280 = *(v272 + 80);
            v281 = *(v272 + 96);
            v282 = *(v272 + 112);
            v376 = *v272;
            v377 = v276;
            v378 = v277;
            v379 = v278;
            v392 = v279;
            v393 = v280;
            v394 = v281;
            v395 = v282;
            v274 = 128;
          }

          else if (v273 == 3)
          {
            v275 = vld1q_dup_f32(v272);
            v376 = v275;
            v377 = v275;
            v378 = v275;
            v379 = v275;
            v392 = v275;
            v393 = v275;
            v394 = v275;
            v395 = v275;
            v274 = 4;
          }

          else if (v86[6])
          {
            v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v376, 256, v272, v273);
          }

          else
          {
            v274 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
          }

          v283 = v272 + v274;
          v284 = v86[7];
          if (v284 == 127)
          {
            v286 = *(v283 + 16);
            v287 = *(v283 + 32);
            v288 = *(v283 + 48);
            v289 = *(v283 + 64);
            v290 = *(v283 + 80);
            v291 = *(v283 + 96);
            v292 = *(v283 + 112);
            v380 = *v283;
            v381 = v286;
            v382 = v287;
            v383 = v288;
            v396 = v289;
            v397 = v290;
            v398 = v291;
            v399 = v292;
            v44 = a7;
            v15 = v323;
          }

          else
          {
            v44 = a7;
            v15 = v323;
            if (v284 == 3)
            {
              v285 = vld1q_dup_f32(v283);
              v380 = v285;
              v381 = v285;
              v382 = v285;
              v383 = v285;
              v396 = v285;
              v397 = v285;
              v398 = v285;
              v399 = v285;
            }

            else if (v284)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v380, 256, v283, v284);
            }

            else
            {
              v382 = 0u;
              v383 = 0u;
              v380 = 0u;
              v381 = 0u;
              v396 = 0u;
              v397 = 0u;
              v398 = 0u;
              v399 = 0u;
            }
          }

          v293 = v331;
          v45 = v41 + 1;
          if (v331)
          {
            v294 = 0;
            v295 = &v336 + 16 * v329 + 2 * v330;
            v296 = v332;
            do
            {
              if (v296)
              {
                v297 = 0;
                v298 = v327 + v328 * v294;
                do
                {
                  *(v298 + v297) = v295->i8[v297];
                  ++v297;
                  v296 = v332;
                }

                while (32 * v332 > v297);
                v293 = v331;
              }

              ++v294;
              v295 += 16;
            }

            while (v294 < v293);
          }

LABEL_50:
          v20 = v41 == v315 >> 3;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v303;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v396 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v318 = a8;
  v17 = a8 >> 2;
  v300 = a8 + a10 - 1;
  v302 = v300 >> 2;
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
  v313 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v302)
  {
    v311 = a7 + a9 - 1;
    v299 = a7 >> 3;
    if (a7 >> 3 <= v311 >> 3)
    {
      v25 = a11;
      v321 = (a5 - 1) >> 3;
      v296 = a5 - 1;
      v304 = (a5 - 1) & 7;
      v297 = (a6 - 1) & 3;
      v298 = (a6 - 1) >> 2;
      v303 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v309 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v308 = v27;
      v295 = 8 * v19 * v18;
      v319 = v16;
      v310 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v318)
        {
          v29 = v318;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v300 < v28)
        {
          v28 = v300;
        }

        v317 = 4 * v17;
        v307 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v297;
        v306 = v31;
        v33 = v31 != 4;
        v34 = v299;
        v35 = v297 + 1;
        if (v17 != v298)
        {
          v35 = 4;
        }

        v320 = v35;
        if (v17 != v298)
        {
          v32 = v33;
        }

        v305 = v32;
        v316 = a2 + (v29 - v318) * v25;
        do
        {
          v37 = 8 * v34;
          v38 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v34;
          }

          if (v311 < v38)
          {
            v38 = v311;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v321)
          {
            v42 = v304 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v317 >= v318 && v37 >= a7)
          {
            v44 = v40 != v304;
            if (v34 != v321)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v305;
          }

          if (isLevelTiled)
          {
            v279 = 0;
            v280 = v295 >> (*(v16 + 57) != 0);
            v281 = 1;
            if (v280 <= 63)
            {
              if (v280 > 15)
              {
                if (v280 == 16)
                {
                  v281 = 0;
                  v282 = 64;
                  v279 = 128;
                }

                else
                {
                  v282 = 0;
                  if (v280 == 32)
                  {
                    v281 = 0;
                    v279 = 64;
                    v282 = 64;
                  }
                }
              }

              else if (v280 == 4)
              {
                v281 = 0;
                v282 = 128;
                v279 = 256;
              }

              else
              {
                v282 = 0;
                if (v280 == 8)
                {
                  v281 = 0;
                  v279 = 128;
                  v282 = 128;
                }
              }
            }

            else if (v280 <= 255)
            {
              if (v280 == 64)
              {
                v281 = 0;
                v282 = 32;
                v279 = 64;
              }

              else
              {
                v282 = 0;
                if (v280 == 128)
                {
                  v281 = 0;
                  v279 = 32;
                  v282 = 32;
                }
              }
            }

            else if (v280 == 256)
            {
              v281 = 0;
              v282 = 16;
              v279 = 32;
            }

            else if (v280 == 512)
            {
              v281 = 0;
              v279 = 16;
              v282 = 16;
            }

            else
            {
              v282 = 0;
              if (v280 == 1024)
              {
                v281 = 0;
                v282 = 8;
                v279 = 16;
              }
            }

            v283 = (v279 >> 3) - 1;
            v284 = (v282 >> 2) - 1;
            if ((v281 & 1) != 0 || (v285 = 32 - __clz(~(-1 << -__clz(v283))), v286 = 32 - __clz(~(-1 << -__clz(v284))), !(v286 | v285)))
            {
              v294 = 0;
            }

            else
            {
              v287 = 0;
              v288 = 0;
              v289 = v34 & v283;
              v290 = v17 & v284;
              v291 = v286 != 0;
              v292 = v285 != 0;
              v293 = 1;
              do
              {
                --v286;
                if (v291)
                {
                  v288 |= (v293 & v290) << v287++;
                }

                else
                {
                  v286 = 0;
                }

                --v285;
                if (v292)
                {
                  v288 |= (v293 & v289) << v287++;
                }

                else
                {
                  v285 = 0;
                }

                v293 *= 2;
                --v287;
                v292 = v285 != 0;
                v291 = v286 != 0;
              }

              while (v285 | v286);
              v294 = v288 << 10;
            }

            v52 = v294 + ((v37 / v279 + v317 / v282 * ((v279 + v296) / v279)) << 14);
          }

          else if (v309)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v308.i8[0];
            v49 = v308.i8[4];
            v50 = v309.i32[0];
            v51 = v309.i32[1];
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
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
            v52 = v46 << 10;
          }

          else
          {
            v52 = 0;
          }

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

          v57 = v56 + 3;
          if (v57 < 8)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
          }

          if (v58 | v55)
          {
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
          }

          else
          {
            v64 = 0;
          }

          v65 = (a3 + v52);
          if (v313)
          {
            memcpy(__dst, v65, sizeof(__dst));
            v65 = __dst;
          }

          v66 = (a4 + v64);
          v67 = v316 + 32 * (v39 - a7);
          if (!(v43 & 1 | (v42 < 8u)) && v320 > 3)
          {
            v68 = *v66;
            if (v68 == 127)
            {
              v75 = v65[1];
              v76 = v65[2];
              v77 = v65[3];
              v78 = v65[4];
              v79 = v65[5];
              v80 = v65[6];
              v81 = v65[7];
              v25 = a11;
              *v67 = *v65;
              *(v67 + 16) = v75;
              v82 = (v67 + a11);
              *(v67 + 32) = v76;
              *(v67 + 48) = v77;
              *v82 = v78;
              v82[1] = v79;
              v83 = (v67 + a11 + 32);
              *v83 = v80;
              v83[1] = v81;
              v69 = 128;
            }

            else
            {
              v25 = a11;
              if (v68 == 3)
              {
                v73 = vld1q_dup_f32(v65->f32);
                *v67 = v73;
                *(v67 + 16) = v73;
                *(v67 + 32) = v73;
                *(v67 + 48) = v73;
                v74 = (v67 + a11);
                *v74 = v73;
                v74[1] = v73;
                v74[2] = v73;
                v74[3] = v73;
                v69 = 4;
              }

              else if (*v66)
              {
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
              }

              else
              {
                v69 = 0;
                *(v67 + 32) = 0u;
                *(v67 + 48) = 0u;
                *v67 = 0u;
                *(v67 + 16) = 0u;
                v70 = (v67 + a11);
                v70[2] = 0u;
                v70[3] = 0u;
                *v70 = 0u;
                v70[1] = 0u;
              }
            }

            v84 = v65 + v69;
            v85 = (v67 + 64);
            v86 = v66[1];
            if (v86 == 127)
            {
              v91 = *(v84 + 16);
              v92 = *(v84 + 32);
              v93 = *(v84 + 48);
              v94 = *(v84 + 64);
              v95 = *(v84 + 80);
              v96 = *(v84 + 96);
              v97 = *(v84 + 112);
              *v85 = *v84;
              *(v67 + 80) = v91;
              v98 = &v85->i8[v25];
              *(v67 + 96) = v92;
              *(v67 + 112) = v93;
              *v98 = v94;
              *(v98 + 1) = v95;
              v98 += 32;
              *v98 = v96;
              *(v98 + 1) = v97;
              v87 = 128;
            }

            else if (v86 == 3)
            {
              v89 = vld1q_dup_f32(v84);
              *(v67 + 64) = v89;
              *(v67 + 80) = v89;
              *(v67 + 96) = v89;
              *(v67 + 112) = v89;
              v90 = &v85->i8[v25];
              *v90 = v89;
              v90[1] = v89;
              v90[2] = v89;
              v90[3] = v89;
              v87 = 4;
            }

            else if (v66[1])
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v85, v25, v84, v86);
            }

            else
            {
              v87 = 0;
              *(v67 + 96) = 0u;
              *(v67 + 112) = 0u;
              *v85 = 0u;
              *(v67 + 80) = 0u;
              v88 = &v85->i8[v25];
              *(v88 + 2) = 0u;
              *(v88 + 3) = 0u;
              *v88 = 0u;
              *(v88 + 1) = 0u;
            }

            v99 = v84 + v87;
            v100 = (v67 + v303);
            v101 = v66[2];
            if (v101 == 127)
            {
              v106 = *(v99 + 16);
              v107 = *(v99 + 32);
              v108 = *(v99 + 48);
              v109 = *(v99 + 64);
              v110 = *(v99 + 80);
              v111 = *(v99 + 96);
              v112 = *(v99 + 112);
              *v100 = *v99;
              v100[1] = v106;
              v113 = &v100->i8[v25];
              v100[2] = v107;
              v100[3] = v108;
              *v113 = v109;
              *(v113 + 1) = v110;
              v114 = &v100[2].i8[v25];
              *v114 = v111;
              *(v114 + 1) = v112;
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v104 = vld1q_dup_f32(v99);
              *v100 = v104;
              v100[1] = v104;
              v100[2] = v104;
              v100[3] = v104;
              v105 = &v100->i8[v25];
              *v105 = v104;
              v105[1] = v104;
              v105[2] = v104;
              v105[3] = v104;
              v102 = 4;
            }

            else if (v66[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v303), v25, v99, v101);
            }

            else
            {
              v102 = 0;
              v100[2] = 0u;
              v100[3] = 0u;
              *v100 = 0u;
              v100[1] = 0u;
              v103 = &v100->i8[v25];
              *(v103 + 2) = 0u;
              *(v103 + 3) = 0u;
              *v103 = 0u;
              *(v103 + 1) = 0u;
            }

            v115 = v99 + v102;
            v116 = v100 + 4;
            v117 = v66[3];
            if (v117 == 127)
            {
              v122 = *(v115 + 16);
              v123 = *(v115 + 32);
              v124 = *(v115 + 48);
              v125 = *(v115 + 64);
              v126 = *(v115 + 80);
              v127 = *(v115 + 96);
              v128 = *(v115 + 112);
              *v116 = *v115;
              v100[5] = v122;
              v129 = &v116->i8[v25];
              v100[6] = v123;
              v100[7] = v124;
              *v129 = v125;
              *(v129 + 1) = v126;
              v129 += 32;
              *v129 = v127;
              *(v129 + 1) = v128;
              v118 = 128;
            }

            else if (v117 == 3)
            {
              v120 = vld1q_dup_f32(v115);
              v100[4] = v120;
              v100[5] = v120;
              v100[6] = v120;
              v100[7] = v120;
              v121 = &v116->i8[v25];
              *v121 = v120;
              v121[1] = v120;
              v121[2] = v120;
              v121[3] = v120;
              v118 = 4;
            }

            else if (v66[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
            }

            else
            {
              v118 = 0;
              v100[6] = 0u;
              v100[7] = 0u;
              *v116 = 0u;
              v100[5] = 0u;
              v119 = &v116->i8[v25];
              *(v119 + 2) = 0u;
              *(v119 + 3) = 0u;
              *v119 = 0u;
              *(v119 + 1) = 0u;
            }

            v130 = v115 + v118;
            v131 = (v67 + 128);
            v132 = v66[4];
            if (v132 == 127)
            {
              v137 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              v140 = *(v130 + 64);
              v141 = *(v130 + 80);
              v142 = *(v130 + 96);
              v143 = *(v130 + 112);
              *v131 = *v130;
              *(v67 + 144) = v137;
              v144 = &v131->i8[v25];
              *(v67 + 160) = v138;
              *(v67 + 176) = v139;
              *v144 = v140;
              *(v144 + 1) = v141;
              v144 += 32;
              *v144 = v142;
              *(v144 + 1) = v143;
              v133 = 128;
            }

            else if (v132 == 3)
            {
              v135 = vld1q_dup_f32(v130);
              *(v67 + 128) = v135;
              *(v67 + 144) = v135;
              *(v67 + 160) = v135;
              *(v67 + 176) = v135;
              v136 = &v131->i8[v25];
              *v136 = v135;
              v136[1] = v135;
              v136[2] = v135;
              v136[3] = v135;
              v133 = 4;
            }

            else if (v66[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v25, v130, v132);
            }

            else
            {
              v133 = 0;
              *(v67 + 160) = 0u;
              *(v67 + 176) = 0u;
              *v131 = 0u;
              *(v67 + 144) = 0u;
              v134 = &v131->i8[v25];
              *(v134 + 2) = 0u;
              *(v134 + 3) = 0u;
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v145 = v130 + v133;
            v146 = (v67 + 192);
            v147 = v66[5];
            if (v147 == 127)
            {
              v152 = *(v145 + 16);
              v153 = *(v145 + 32);
              v154 = *(v145 + 48);
              v155 = *(v145 + 64);
              v156 = *(v145 + 80);
              v157 = *(v145 + 96);
              v158 = *(v145 + 112);
              *v146 = *v145;
              *(v67 + 208) = v152;
              v159 = &v146->i8[v25];
              *(v67 + 224) = v153;
              *(v67 + 240) = v154;
              *v159 = v155;
              *(v159 + 1) = v156;
              v159 += 32;
              *v159 = v157;
              *(v159 + 1) = v158;
              v148 = 128;
            }

            else if (v147 == 3)
            {
              v150 = vld1q_dup_f32(v145);
              *(v67 + 192) = v150;
              *(v67 + 208) = v150;
              *(v67 + 224) = v150;
              *(v67 + 240) = v150;
              v151 = &v146->i8[v25];
              *v151 = v150;
              v151[1] = v150;
              v151[2] = v150;
              v151[3] = v150;
              v148 = 4;
            }

            else if (v66[5])
            {
              v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v146, v25, v145, v147);
            }

            else
            {
              v148 = 0;
              *(v67 + 224) = 0u;
              *(v67 + 240) = 0u;
              *v146 = 0u;
              *(v67 + 208) = 0u;
              v149 = &v146->i8[v25];
              *(v149 + 2) = 0u;
              *(v149 + 3) = 0u;
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            a7 = v310;
            v160 = v145 + v148;
            v161 = v100 + 8;
            v162 = v66[6];
            if (v162 == 127)
            {
              v167 = *(v160 + 16);
              v168 = *(v160 + 32);
              v169 = *(v160 + 48);
              v170 = *(v160 + 64);
              v171 = *(v160 + 80);
              v172 = *(v160 + 96);
              v173 = *(v160 + 112);
              *v161 = *v160;
              v100[9] = v167;
              v174 = &v161->i8[v25];
              v100[10] = v168;
              v100[11] = v169;
              *v174 = v170;
              *(v174 + 1) = v171;
              v174 += 32;
              *v174 = v172;
              *(v174 + 1) = v173;
              v163 = 128;
            }

            else if (v162 == 3)
            {
              v165 = vld1q_dup_f32(v160);
              v100[8] = v165;
              v100[9] = v165;
              v100[10] = v165;
              v100[11] = v165;
              v166 = &v161->i8[v25];
              *v166 = v165;
              v166[1] = v165;
              v166[2] = v165;
              v166[3] = v165;
              v163 = 4;
            }

            else if (v66[6])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v161, v25, v160, v162);
            }

            else
            {
              v163 = 0;
              v100[10] = 0u;
              v100[11] = 0u;
              *v161 = 0u;
              v100[9] = 0u;
              v164 = &v161->i8[v25];
              *(v164 + 2) = 0u;
              *(v164 + 3) = 0u;
              *v164 = 0u;
              *(v164 + 1) = 0u;
            }

            v175 = v160 + v163;
            v176 = v100 + 12;
            v177 = v66[7];
            if (v177 == 127)
            {
              v181 = *(v175 + 16);
              v182 = *(v175 + 32);
              v183 = *(v175 + 48);
              v184 = *(v175 + 64);
              v185 = *(v175 + 80);
              v186 = *(v175 + 96);
              v187 = *(v175 + 112);
              *v176 = *v175;
              v100[13] = v181;
              v188 = &v176->i8[v25];
              v100[14] = v182;
              v100[15] = v183;
              *v188 = v184;
              *(v188 + 1) = v185;
              v188 += 32;
              *v188 = v186;
              *(v188 + 1) = v187;
              v16 = v319;
            }

            else
            {
              v16 = v319;
              if (v177 == 3)
              {
                v179 = vld1q_dup_f32(v175);
                v100[12] = v179;
                v100[13] = v179;
                v100[14] = v179;
                v100[15] = v179;
                v180 = &v176->i8[v25];
                *v180 = v179;
                v180[1] = v179;
                v180[2] = v179;
                v180[3] = v179;
              }

              else if (v177)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v176, v25, v175, v177);
              }

              else
              {
                v100[14] = 0u;
                v100[15] = 0u;
                *v176 = 0u;
                v100[13] = 0u;
                v178 = &v176->i8[v25];
                *(v178 + 2) = 0u;
                *(v178 + 3) = 0u;
                *v178 = 0u;
                *(v178 + 1) = 0u;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v319;
          block[5] = v65;
          v329 = v42;
          v330 = v320;
          v325 = v307;
          v326 = v39 - v37;
          block[6] = v66;
          v323 = v67;
          v25 = a11;
          v324 = a11;
          v327 = v306;
          v328 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v319 + 8) + 16552), block);
            a7 = v310;
            v16 = v319;
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v71 = *v66;
          a7 = v310;
          if (v71 == 127)
          {
            v190 = v65[1];
            v191 = v65[2];
            v192 = v65[3];
            v193 = v65[4];
            v194 = v65[5];
            v195 = v65[6];
            v196 = v65[7];
            v332 = *v65;
            v333 = v190;
            v334 = v191;
            v335 = v192;
            v348 = v193;
            v349 = v194;
            v350 = v195;
            v351 = v196;
            v72 = 128;
          }

          else if (v71 == 3)
          {
            v189 = vld1q_dup_f32(v65->f32);
            v332 = v189;
            v333 = v189;
            v334 = v189;
            v335 = v189;
            v348 = v189;
            v349 = v189;
            v350 = v189;
            v351 = v189;
            v72 = 4;
          }

          else if (*v66)
          {
            v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v332, 256, v65, v71);
          }

          else
          {
            v72 = 0;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v197 = v65 + v72;
          v198 = v66[1];
          if (v198 == 127)
          {
            v201 = *(v197 + 16);
            v202 = *(v197 + 32);
            v203 = *(v197 + 48);
            v204 = *(v197 + 64);
            v205 = *(v197 + 80);
            v206 = *(v197 + 96);
            v207 = *(v197 + 112);
            v336 = *v197;
            v337 = v201;
            v338 = v202;
            v339 = v203;
            v352 = v204;
            v353 = v205;
            v354 = v206;
            v355 = v207;
            v199 = 128;
          }

          else if (v198 == 3)
          {
            v200 = vld1q_dup_f32(v197);
            v336 = v200;
            v337 = v200;
            v338 = v200;
            v339 = v200;
            v352 = v200;
            v353 = v200;
            v354 = v200;
            v355 = v200;
            v199 = 4;
          }

          else if (v66[1])
          {
            v199 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 256, v197, v198);
          }

          else
          {
            v199 = 0;
            v338 = 0u;
            v339 = 0u;
            v336 = 0u;
            v337 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v208 = v197 + v199;
          v209 = v66[2];
          if (v209 == 127)
          {
            v212 = *(v208 + 16);
            v213 = *(v208 + 32);
            v214 = *(v208 + 48);
            v215 = *(v208 + 64);
            v216 = *(v208 + 80);
            v217 = *(v208 + 96);
            v218 = *(v208 + 112);
            v364 = *v208;
            v365 = v212;
            v366 = v213;
            v367 = v214;
            v380 = v215;
            v381 = v216;
            v382 = v217;
            v383 = v218;
            v210 = 128;
          }

          else if (v209 == 3)
          {
            v211 = vld1q_dup_f32(v208);
            v364 = v211;
            v365 = v211;
            v366 = v211;
            v367 = v211;
            v380 = v211;
            v381 = v211;
            v382 = v211;
            v383 = v211;
            v210 = 4;
          }

          else if (v66[2])
          {
            v210 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v364, 256, v208, v209);
          }

          else
          {
            v210 = 0;
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v219 = v208 + v210;
          v220 = v66[3];
          if (v220 == 127)
          {
            v223 = *(v219 + 16);
            v224 = *(v219 + 32);
            v225 = *(v219 + 48);
            v226 = *(v219 + 64);
            v227 = *(v219 + 80);
            v228 = *(v219 + 96);
            v229 = *(v219 + 112);
            v368 = *v219;
            v369 = v223;
            v370 = v224;
            v371 = v225;
            v384 = v226;
            v385 = v227;
            v386 = v228;
            v387 = v229;
            v221 = 128;
          }

          else if (v220 == 3)
          {
            v222 = vld1q_dup_f32(v219);
            v368 = v222;
            v369 = v222;
            v370 = v222;
            v371 = v222;
            v384 = v222;
            v385 = v222;
            v386 = v222;
            v387 = v222;
            v221 = 4;
          }

          else if (v66[3])
          {
            v221 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 256, v219, v220);
          }

          else
          {
            v221 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v230 = v219 + v221;
          v231 = v66[4];
          if (v231 == 127)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = *(v230 + 64);
            v238 = *(v230 + 80);
            v239 = *(v230 + 96);
            v240 = *(v230 + 112);
            v340 = *v230;
            v341 = v234;
            v342 = v235;
            v343 = v236;
            v356 = v237;
            v357 = v238;
            v358 = v239;
            v359 = v240;
            v232 = 128;
          }

          else if (v231 == 3)
          {
            v233 = vld1q_dup_f32(v230);
            v340 = v233;
            v341 = v233;
            v342 = v233;
            v343 = v233;
            v356 = v233;
            v357 = v233;
            v358 = v233;
            v359 = v233;
            v232 = 4;
          }

          else if (v66[4])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 256, v230, v231);
          }

          else
          {
            v232 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v241 = v230 + v232;
          v242 = v66[5];
          if (v242 == 127)
          {
            v245 = *(v241 + 16);
            v246 = *(v241 + 32);
            v247 = *(v241 + 48);
            v248 = *(v241 + 64);
            v249 = *(v241 + 80);
            v250 = *(v241 + 96);
            v251 = *(v241 + 112);
            v344 = *v241;
            v345 = v245;
            v346 = v246;
            v347 = v247;
            v360 = v248;
            v361 = v249;
            v362 = v250;
            v363 = v251;
            v243 = 128;
          }

          else if (v242 == 3)
          {
            v244 = vld1q_dup_f32(v241);
            v344 = v244;
            v345 = v244;
            v346 = v244;
            v347 = v244;
            v360 = v244;
            v361 = v244;
            v362 = v244;
            v363 = v244;
            v243 = 4;
          }

          else if (v66[5])
          {
            v243 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v344, 256, v241, v242);
          }

          else
          {
            v243 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v252 = v241 + v243;
          v253 = v66[6];
          if (v253 == 127)
          {
            v256 = *(v252 + 16);
            v257 = *(v252 + 32);
            v258 = *(v252 + 48);
            v259 = *(v252 + 64);
            v260 = *(v252 + 80);
            v261 = *(v252 + 96);
            v262 = *(v252 + 112);
            v372 = *v252;
            v373 = v256;
            v374 = v257;
            v375 = v258;
            v388 = v259;
            v389 = v260;
            v390 = v261;
            v391 = v262;
            v254 = 128;
          }

          else if (v253 == 3)
          {
            v255 = vld1q_dup_f32(v252);
            v372 = v255;
            v373 = v255;
            v374 = v255;
            v375 = v255;
            v388 = v255;
            v389 = v255;
            v390 = v255;
            v391 = v255;
            v254 = 4;
          }

          else if (v66[6])
          {
            v254 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 256, v252, v253);
          }

          else
          {
            v254 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v263 = v252 + v254;
          v264 = v66[7];
          if (v264 == 127)
          {
            v266 = *(v263 + 16);
            v267 = *(v263 + 32);
            v268 = *(v263 + 48);
            v269 = *(v263 + 64);
            v270 = *(v263 + 80);
            v271 = *(v263 + 96);
            v272 = *(v263 + 112);
            v376 = *v263;
            v377 = v266;
            v378 = v267;
            v379 = v268;
            v392 = v269;
            v393 = v270;
            v394 = v271;
            v395 = v272;
            v16 = v319;
            v36 = v34 + 1;
          }

          else
          {
            v16 = v319;
            v36 = v34 + 1;
            if (v264 == 3)
            {
              v265 = vld1q_dup_f32(v263);
              v376 = v265;
              v377 = v265;
              v378 = v265;
              v379 = v265;
              v392 = v265;
              v393 = v265;
              v394 = v265;
              v395 = v265;
            }

            else if (v264)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v376, 256, v263, v264);
            }

            else
            {
              v378 = 0u;
              v379 = 0u;
              v376 = 0u;
              v377 = 0u;
              v392 = 0u;
              v393 = 0u;
              v394 = 0u;
              v395 = 0u;
            }
          }

          v273 = v327;
          if (v327)
          {
            v274 = 0;
            v275 = &v332 + 16 * v325 + 2 * v326;
            v276 = v328;
            do
            {
              if (v276)
              {
                v277 = 0;
                v278 = v323 + v324 * v274;
                do
                {
                  *(v278 + v277) = v275->i8[v277];
                  ++v277;
                  v276 = v328;
                }

                while (32 * v328 > v277);
                v273 = v327;
              }

              ++v274;
              v275 += 16;
            }

            while (v274 < v273);
          }

LABEL_30:
          v21 = v34 == v311 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v302;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v396 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v318 = a8;
  v17 = a8 >> 2;
  v300 = a8 + a10 - 1;
  v302 = v300 >> 2;
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
  v313 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v302)
  {
    v311 = a7 + a9 - 1;
    v299 = a7 >> 3;
    if (a7 >> 3 <= v311 >> 3)
    {
      v25 = a11;
      v321 = (a5 - 1) >> 3;
      v296 = a5 - 1;
      v304 = (a5 - 1) & 7;
      v297 = (a6 - 1) & 3;
      v298 = (a6 - 1) >> 2;
      v303 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v309 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v308 = v27;
      v295 = 8 * v19 * v18;
      v319 = v16;
      v310 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v318)
        {
          v29 = v318;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v300 < v28)
        {
          v28 = v300;
        }

        v317 = 4 * v17;
        v307 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v297;
        v306 = v31;
        v33 = v31 != 4;
        v34 = v299;
        v35 = v297 + 1;
        if (v17 != v298)
        {
          v35 = 4;
        }

        v320 = v35;
        if (v17 != v298)
        {
          v32 = v33;
        }

        v305 = v32;
        v316 = a2 + (v29 - v318) * v25;
        do
        {
          v37 = 8 * v34;
          v38 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v34;
          }

          if (v311 < v38)
          {
            v38 = v311;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v321)
          {
            v42 = v304 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v317 >= v318 && v37 >= a7)
          {
            v44 = v40 != v304;
            if (v34 != v321)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v305;
          }

          if (isLevelTiled)
          {
            v279 = 0;
            v280 = v295 >> (*(v16 + 57) != 0);
            v281 = 1;
            if (v280 <= 63)
            {
              if (v280 > 15)
              {
                if (v280 == 16)
                {
                  v281 = 0;
                  v282 = 64;
                  v279 = 128;
                }

                else
                {
                  v282 = 0;
                  if (v280 == 32)
                  {
                    v281 = 0;
                    v279 = 64;
                    v282 = 64;
                  }
                }
              }

              else if (v280 == 4)
              {
                v281 = 0;
                v282 = 128;
                v279 = 256;
              }

              else
              {
                v282 = 0;
                if (v280 == 8)
                {
                  v281 = 0;
                  v279 = 128;
                  v282 = 128;
                }
              }
            }

            else if (v280 <= 255)
            {
              if (v280 == 64)
              {
                v281 = 0;
                v282 = 32;
                v279 = 64;
              }

              else
              {
                v282 = 0;
                if (v280 == 128)
                {
                  v281 = 0;
                  v279 = 32;
                  v282 = 32;
                }
              }
            }

            else if (v280 == 256)
            {
              v281 = 0;
              v282 = 16;
              v279 = 32;
            }

            else if (v280 == 512)
            {
              v281 = 0;
              v279 = 16;
              v282 = 16;
            }

            else
            {
              v282 = 0;
              if (v280 == 1024)
              {
                v281 = 0;
                v282 = 8;
                v279 = 16;
              }
            }

            v283 = (v279 >> 3) - 1;
            v284 = (v282 >> 2) - 1;
            if ((v281 & 1) != 0 || (v285 = 32 - __clz(~(-1 << -__clz(v283))), v286 = 32 - __clz(~(-1 << -__clz(v284))), !(v286 | v285)))
            {
              v294 = 0;
            }

            else
            {
              v287 = 0;
              v288 = 0;
              v289 = v34 & v283;
              v290 = v17 & v284;
              v291 = v286 != 0;
              v292 = v285 != 0;
              v293 = 1;
              do
              {
                --v286;
                if (v291)
                {
                  v288 |= (v293 & v290) << v287++;
                }

                else
                {
                  v286 = 0;
                }

                --v285;
                if (v292)
                {
                  v288 |= (v293 & v289) << v287++;
                }

                else
                {
                  v285 = 0;
                }

                v293 *= 2;
                --v287;
                v292 = v285 != 0;
                v291 = v286 != 0;
              }

              while (v285 | v286);
              v294 = v288 << 10;
            }

            v52 = v294 + ((v37 / v279 + v317 / v282 * ((v279 + v296) / v279)) << 14);
          }

          else if (v309)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v308.i8[0];
            v49 = v308.i8[4];
            v50 = v309.i32[0];
            v51 = v309.i32[1];
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
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
            v52 = v46 << 10;
          }

          else
          {
            v52 = 0;
          }

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

          v57 = v56 + 3;
          if (v57 < 8)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
          }

          if (v58 | v55)
          {
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
          }

          else
          {
            v64 = 0;
          }

          v65 = (a3 + v52);
          if (v313)
          {
            memcpy(__dst, v65, sizeof(__dst));
            v65 = __dst;
          }

          v66 = (a4 + v64);
          v67 = v316 + 32 * (v39 - a7);
          if (!(v43 & 1 | (v42 < 8u)) && v320 > 3)
          {
            v68 = *v66;
            if (v68 == 127)
            {
              v75 = v65[1];
              v76 = v65[2];
              v77 = v65[3];
              v78 = v65[4];
              v79 = v65[5];
              v80 = v65[6];
              v81 = v65[7];
              v25 = a11;
              *v67 = *v65;
              *(v67 + 16) = v75;
              v82 = (v67 + a11);
              *(v67 + 32) = v76;
              *(v67 + 48) = v77;
              *v82 = v78;
              v82[1] = v79;
              v83 = (v67 + a11 + 32);
              *v83 = v80;
              v83[1] = v81;
              v69 = 128;
            }

            else
            {
              v25 = a11;
              if (v68 == 3)
              {
                v73 = vld1q_dup_f32(v65->f32);
                *v67 = v73;
                *(v67 + 16) = v73;
                *(v67 + 32) = v73;
                *(v67 + 48) = v73;
                v74 = (v67 + a11);
                *v74 = v73;
                v74[1] = v73;
                v74[2] = v73;
                v74[3] = v73;
                v69 = 4;
              }

              else if (*v66)
              {
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
              }

              else
              {
                v69 = 0;
                *(v67 + 32) = 0u;
                *(v67 + 48) = 0u;
                *v67 = 0u;
                *(v67 + 16) = 0u;
                v70 = (v67 + a11);
                v70[2] = 0u;
                v70[3] = 0u;
                *v70 = 0u;
                v70[1] = 0u;
              }
            }

            v84 = v65 + v69;
            v85 = (v67 + 64);
            v86 = v66[1];
            if (v86 == 127)
            {
              v91 = *(v84 + 16);
              v92 = *(v84 + 32);
              v93 = *(v84 + 48);
              v94 = *(v84 + 64);
              v95 = *(v84 + 80);
              v96 = *(v84 + 96);
              v97 = *(v84 + 112);
              *v85 = *v84;
              *(v67 + 80) = v91;
              v98 = &v85->i8[v25];
              *(v67 + 96) = v92;
              *(v67 + 112) = v93;
              *v98 = v94;
              *(v98 + 1) = v95;
              v98 += 32;
              *v98 = v96;
              *(v98 + 1) = v97;
              v87 = 128;
            }

            else if (v86 == 3)
            {
              v89 = vld1q_dup_f32(v84);
              *(v67 + 64) = v89;
              *(v67 + 80) = v89;
              *(v67 + 96) = v89;
              *(v67 + 112) = v89;
              v90 = &v85->i8[v25];
              *v90 = v89;
              v90[1] = v89;
              v90[2] = v89;
              v90[3] = v89;
              v87 = 4;
            }

            else if (v66[1])
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v85, v25, v84, v86);
            }

            else
            {
              v87 = 0;
              *(v67 + 96) = 0u;
              *(v67 + 112) = 0u;
              *v85 = 0u;
              *(v67 + 80) = 0u;
              v88 = &v85->i8[v25];
              *(v88 + 2) = 0u;
              *(v88 + 3) = 0u;
              *v88 = 0u;
              *(v88 + 1) = 0u;
            }

            v99 = v84 + v87;
            v100 = (v67 + v303);
            v101 = v66[2];
            if (v101 == 127)
            {
              v106 = *(v99 + 16);
              v107 = *(v99 + 32);
              v108 = *(v99 + 48);
              v109 = *(v99 + 64);
              v110 = *(v99 + 80);
              v111 = *(v99 + 96);
              v112 = *(v99 + 112);
              *v100 = *v99;
              v100[1] = v106;
              v113 = &v100->i8[v25];
              v100[2] = v107;
              v100[3] = v108;
              *v113 = v109;
              *(v113 + 1) = v110;
              v114 = &v100[2].i8[v25];
              *v114 = v111;
              *(v114 + 1) = v112;
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v104 = vld1q_dup_f32(v99);
              *v100 = v104;
              v100[1] = v104;
              v100[2] = v104;
              v100[3] = v104;
              v105 = &v100->i8[v25];
              *v105 = v104;
              v105[1] = v104;
              v105[2] = v104;
              v105[3] = v104;
              v102 = 4;
            }

            else if (v66[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v303), v25, v99, v101);
            }

            else
            {
              v102 = 0;
              v100[2] = 0u;
              v100[3] = 0u;
              *v100 = 0u;
              v100[1] = 0u;
              v103 = &v100->i8[v25];
              *(v103 + 2) = 0u;
              *(v103 + 3) = 0u;
              *v103 = 0u;
              *(v103 + 1) = 0u;
            }

            v115 = v99 + v102;
            v116 = v100 + 4;
            v117 = v66[3];
            if (v117 == 127)
            {
              v122 = *(v115 + 16);
              v123 = *(v115 + 32);
              v124 = *(v115 + 48);
              v125 = *(v115 + 64);
              v126 = *(v115 + 80);
              v127 = *(v115 + 96);
              v128 = *(v115 + 112);
              *v116 = *v115;
              v100[5] = v122;
              v129 = &v116->i8[v25];
              v100[6] = v123;
              v100[7] = v124;
              *v129 = v125;
              *(v129 + 1) = v126;
              v129 += 32;
              *v129 = v127;
              *(v129 + 1) = v128;
              v118 = 128;
            }

            else if (v117 == 3)
            {
              v120 = vld1q_dup_f32(v115);
              v100[4] = v120;
              v100[5] = v120;
              v100[6] = v120;
              v100[7] = v120;
              v121 = &v116->i8[v25];
              *v121 = v120;
              v121[1] = v120;
              v121[2] = v120;
              v121[3] = v120;
              v118 = 4;
            }

            else if (v66[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
            }

            else
            {
              v118 = 0;
              v100[6] = 0u;
              v100[7] = 0u;
              *v116 = 0u;
              v100[5] = 0u;
              v119 = &v116->i8[v25];
              *(v119 + 2) = 0u;
              *(v119 + 3) = 0u;
              *v119 = 0u;
              *(v119 + 1) = 0u;
            }

            v130 = v115 + v118;
            v131 = (v67 + 128);
            v132 = v66[4];
            if (v132 == 127)
            {
              v137 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              v140 = *(v130 + 64);
              v141 = *(v130 + 80);
              v142 = *(v130 + 96);
              v143 = *(v130 + 112);
              *v131 = *v130;
              *(v67 + 144) = v137;
              v144 = &v131->i8[v25];
              *(v67 + 160) = v138;
              *(v67 + 176) = v139;
              *v144 = v140;
              *(v144 + 1) = v141;
              v144 += 32;
              *v144 = v142;
              *(v144 + 1) = v143;
              v133 = 128;
            }

            else if (v132 == 3)
            {
              v135 = vld1q_dup_f32(v130);
              *(v67 + 128) = v135;
              *(v67 + 144) = v135;
              *(v67 + 160) = v135;
              *(v67 + 176) = v135;
              v136 = &v131->i8[v25];
              *v136 = v135;
              v136[1] = v135;
              v136[2] = v135;
              v136[3] = v135;
              v133 = 4;
            }

            else if (v66[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v25, v130, v132);
            }

            else
            {
              v133 = 0;
              *(v67 + 160) = 0u;
              *(v67 + 176) = 0u;
              *v131 = 0u;
              *(v67 + 144) = 0u;
              v134 = &v131->i8[v25];
              *(v134 + 2) = 0u;
              *(v134 + 3) = 0u;
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v145 = v130 + v133;
            v146 = (v67 + 192);
            v147 = v66[5];
            if (v147 == 127)
            {
              v152 = *(v145 + 16);
              v153 = *(v145 + 32);
              v154 = *(v145 + 48);
              v155 = *(v145 + 64);
              v156 = *(v145 + 80);
              v157 = *(v145 + 96);
              v158 = *(v145 + 112);
              *v146 = *v145;
              *(v67 + 208) = v152;
              v159 = &v146->i8[v25];
              *(v67 + 224) = v153;
              *(v67 + 240) = v154;
              *v159 = v155;
              *(v159 + 1) = v156;
              v159 += 32;
              *v159 = v157;
              *(v159 + 1) = v158;
              v148 = 128;
            }

            else if (v147 == 3)
            {
              v150 = vld1q_dup_f32(v145);
              *(v67 + 192) = v150;
              *(v67 + 208) = v150;
              *(v67 + 224) = v150;
              *(v67 + 240) = v150;
              v151 = &v146->i8[v25];
              *v151 = v150;
              v151[1] = v150;
              v151[2] = v150;
              v151[3] = v150;
              v148 = 4;
            }

            else if (v66[5])
            {
              v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v146, v25, v145, v147);
            }

            else
            {
              v148 = 0;
              *(v67 + 224) = 0u;
              *(v67 + 240) = 0u;
              *v146 = 0u;
              *(v67 + 208) = 0u;
              v149 = &v146->i8[v25];
              *(v149 + 2) = 0u;
              *(v149 + 3) = 0u;
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            a7 = v310;
            v160 = v145 + v148;
            v161 = v100 + 8;
            v162 = v66[6];
            if (v162 == 127)
            {
              v167 = *(v160 + 16);
              v168 = *(v160 + 32);
              v169 = *(v160 + 48);
              v170 = *(v160 + 64);
              v171 = *(v160 + 80);
              v172 = *(v160 + 96);
              v173 = *(v160 + 112);
              *v161 = *v160;
              v100[9] = v167;
              v174 = &v161->i8[v25];
              v100[10] = v168;
              v100[11] = v169;
              *v174 = v170;
              *(v174 + 1) = v171;
              v174 += 32;
              *v174 = v172;
              *(v174 + 1) = v173;
              v163 = 128;
            }

            else if (v162 == 3)
            {
              v165 = vld1q_dup_f32(v160);
              v100[8] = v165;
              v100[9] = v165;
              v100[10] = v165;
              v100[11] = v165;
              v166 = &v161->i8[v25];
              *v166 = v165;
              v166[1] = v165;
              v166[2] = v165;
              v166[3] = v165;
              v163 = 4;
            }

            else if (v66[6])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v161, v25, v160, v162);
            }

            else
            {
              v163 = 0;
              v100[10] = 0u;
              v100[11] = 0u;
              *v161 = 0u;
              v100[9] = 0u;
              v164 = &v161->i8[v25];
              *(v164 + 2) = 0u;
              *(v164 + 3) = 0u;
              *v164 = 0u;
              *(v164 + 1) = 0u;
            }

            v175 = v160 + v163;
            v176 = v100 + 12;
            v177 = v66[7];
            if (v177 == 127)
            {
              v181 = *(v175 + 16);
              v182 = *(v175 + 32);
              v183 = *(v175 + 48);
              v184 = *(v175 + 64);
              v185 = *(v175 + 80);
              v186 = *(v175 + 96);
              v187 = *(v175 + 112);
              *v176 = *v175;
              v100[13] = v181;
              v188 = &v176->i8[v25];
              v100[14] = v182;
              v100[15] = v183;
              *v188 = v184;
              *(v188 + 1) = v185;
              v188 += 32;
              *v188 = v186;
              *(v188 + 1) = v187;
              v16 = v319;
            }

            else
            {
              v16 = v319;
              if (v177 == 3)
              {
                v179 = vld1q_dup_f32(v175);
                v100[12] = v179;
                v100[13] = v179;
                v100[14] = v179;
                v100[15] = v179;
                v180 = &v176->i8[v25];
                *v180 = v179;
                v180[1] = v179;
                v180[2] = v179;
                v180[3] = v179;
              }

              else if (v177)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v176, v25, v175, v177);
              }

              else
              {
                v100[14] = 0u;
                v100[15] = 0u;
                *v176 = 0u;
                v100[13] = 0u;
                v178 = &v176->i8[v25];
                *(v178 + 2) = 0u;
                *(v178 + 3) = 0u;
                *v178 = 0u;
                *(v178 + 1) = 0u;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v319;
          block[5] = v65;
          v329 = v42;
          v330 = v320;
          v325 = v307;
          v326 = v39 - v37;
          block[6] = v66;
          v323 = v67;
          v25 = a11;
          v324 = a11;
          v327 = v306;
          v328 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v319 + 8) + 16552), block);
            a7 = v310;
            v16 = v319;
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v71 = *v66;
          a7 = v310;
          if (v71 == 127)
          {
            v190 = v65[1];
            v191 = v65[2];
            v192 = v65[3];
            v193 = v65[4];
            v194 = v65[5];
            v195 = v65[6];
            v196 = v65[7];
            v332 = *v65;
            v333 = v190;
            v334 = v191;
            v335 = v192;
            v348 = v193;
            v349 = v194;
            v350 = v195;
            v351 = v196;
            v72 = 128;
          }

          else if (v71 == 3)
          {
            v189 = vld1q_dup_f32(v65->f32);
            v332 = v189;
            v333 = v189;
            v334 = v189;
            v335 = v189;
            v348 = v189;
            v349 = v189;
            v350 = v189;
            v351 = v189;
            v72 = 4;
          }

          else if (*v66)
          {
            v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v332, 256, v65, v71);
          }

          else
          {
            v72 = 0;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v197 = v65 + v72;
          v198 = v66[1];
          if (v198 == 127)
          {
            v201 = *(v197 + 16);
            v202 = *(v197 + 32);
            v203 = *(v197 + 48);
            v204 = *(v197 + 64);
            v205 = *(v197 + 80);
            v206 = *(v197 + 96);
            v207 = *(v197 + 112);
            v336 = *v197;
            v337 = v201;
            v338 = v202;
            v339 = v203;
            v352 = v204;
            v353 = v205;
            v354 = v206;
            v355 = v207;
            v199 = 128;
          }

          else if (v198 == 3)
          {
            v200 = vld1q_dup_f32(v197);
            v336 = v200;
            v337 = v200;
            v338 = v200;
            v339 = v200;
            v352 = v200;
            v353 = v200;
            v354 = v200;
            v355 = v200;
            v199 = 4;
          }

          else if (v66[1])
          {
            v199 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 256, v197, v198);
          }

          else
          {
            v199 = 0;
            v338 = 0u;
            v339 = 0u;
            v336 = 0u;
            v337 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v208 = v197 + v199;
          v209 = v66[2];
          if (v209 == 127)
          {
            v212 = *(v208 + 16);
            v213 = *(v208 + 32);
            v214 = *(v208 + 48);
            v215 = *(v208 + 64);
            v216 = *(v208 + 80);
            v217 = *(v208 + 96);
            v218 = *(v208 + 112);
            v364 = *v208;
            v365 = v212;
            v366 = v213;
            v367 = v214;
            v380 = v215;
            v381 = v216;
            v382 = v217;
            v383 = v218;
            v210 = 128;
          }

          else if (v209 == 3)
          {
            v211 = vld1q_dup_f32(v208);
            v364 = v211;
            v365 = v211;
            v366 = v211;
            v367 = v211;
            v380 = v211;
            v381 = v211;
            v382 = v211;
            v383 = v211;
            v210 = 4;
          }

          else if (v66[2])
          {
            v210 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v364, 256, v208, v209);
          }

          else
          {
            v210 = 0;
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v219 = v208 + v210;
          v220 = v66[3];
          if (v220 == 127)
          {
            v223 = *(v219 + 16);
            v224 = *(v219 + 32);
            v225 = *(v219 + 48);
            v226 = *(v219 + 64);
            v227 = *(v219 + 80);
            v228 = *(v219 + 96);
            v229 = *(v219 + 112);
            v368 = *v219;
            v369 = v223;
            v370 = v224;
            v371 = v225;
            v384 = v226;
            v385 = v227;
            v386 = v228;
            v387 = v229;
            v221 = 128;
          }

          else if (v220 == 3)
          {
            v222 = vld1q_dup_f32(v219);
            v368 = v222;
            v369 = v222;
            v370 = v222;
            v371 = v222;
            v384 = v222;
            v385 = v222;
            v386 = v222;
            v387 = v222;
            v221 = 4;
          }

          else if (v66[3])
          {
            v221 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 256, v219, v220);
          }

          else
          {
            v221 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v230 = v219 + v221;
          v231 = v66[4];
          if (v231 == 127)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = *(v230 + 64);
            v238 = *(v230 + 80);
            v239 = *(v230 + 96);
            v240 = *(v230 + 112);
            v340 = *v230;
            v341 = v234;
            v342 = v235;
            v343 = v236;
            v356 = v237;
            v357 = v238;
            v358 = v239;
            v359 = v240;
            v232 = 128;
          }

          else if (v231 == 3)
          {
            v233 = vld1q_dup_f32(v230);
            v340 = v233;
            v341 = v233;
            v342 = v233;
            v343 = v233;
            v356 = v233;
            v357 = v233;
            v358 = v233;
            v359 = v233;
            v232 = 4;
          }

          else if (v66[4])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 256, v230, v231);
          }

          else
          {
            v232 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v241 = v230 + v232;
          v242 = v66[5];
          if (v242 == 127)
          {
            v245 = *(v241 + 16);
            v246 = *(v241 + 32);
            v247 = *(v241 + 48);
            v248 = *(v241 + 64);
            v249 = *(v241 + 80);
            v250 = *(v241 + 96);
            v251 = *(v241 + 112);
            v344 = *v241;
            v345 = v245;
            v346 = v246;
            v347 = v247;
            v360 = v248;
            v361 = v249;
            v362 = v250;
            v363 = v251;
            v243 = 128;
          }

          else if (v242 == 3)
          {
            v244 = vld1q_dup_f32(v241);
            v344 = v244;
            v345 = v244;
            v346 = v244;
            v347 = v244;
            v360 = v244;
            v361 = v244;
            v362 = v244;
            v363 = v244;
            v243 = 4;
          }

          else if (v66[5])
          {
            v243 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v344, 256, v241, v242);
          }

          else
          {
            v243 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v252 = v241 + v243;
          v253 = v66[6];
          if (v253 == 127)
          {
            v256 = *(v252 + 16);
            v257 = *(v252 + 32);
            v258 = *(v252 + 48);
            v259 = *(v252 + 64);
            v260 = *(v252 + 80);
            v261 = *(v252 + 96);
            v262 = *(v252 + 112);
            v372 = *v252;
            v373 = v256;
            v374 = v257;
            v375 = v258;
            v388 = v259;
            v389 = v260;
            v390 = v261;
            v391 = v262;
            v254 = 128;
          }

          else if (v253 == 3)
          {
            v255 = vld1q_dup_f32(v252);
            v372 = v255;
            v373 = v255;
            v374 = v255;
            v375 = v255;
            v388 = v255;
            v389 = v255;
            v390 = v255;
            v391 = v255;
            v254 = 4;
          }

          else if (v66[6])
          {
            v254 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 256, v252, v253);
          }

          else
          {
            v254 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v263 = v252 + v254;
          v264 = v66[7];
          if (v264 == 127)
          {
            v266 = *(v263 + 16);
            v267 = *(v263 + 32);
            v268 = *(v263 + 48);
            v269 = *(v263 + 64);
            v270 = *(v263 + 80);
            v271 = *(v263 + 96);
            v272 = *(v263 + 112);
            v376 = *v263;
            v377 = v266;
            v378 = v267;
            v379 = v268;
            v392 = v269;
            v393 = v270;
            v394 = v271;
            v395 = v272;
            v16 = v319;
            v36 = v34 + 1;
          }

          else
          {
            v16 = v319;
            v36 = v34 + 1;
            if (v264 == 3)
            {
              v265 = vld1q_dup_f32(v263);
              v376 = v265;
              v377 = v265;
              v378 = v265;
              v379 = v265;
              v392 = v265;
              v393 = v265;
              v394 = v265;
              v395 = v265;
            }

            else if (v264)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v376, 256, v263, v264);
            }

            else
            {
              v378 = 0u;
              v379 = 0u;
              v376 = 0u;
              v377 = 0u;
              v392 = 0u;
              v393 = 0u;
              v394 = 0u;
              v395 = 0u;
            }
          }

          v273 = v327;
          if (v327)
          {
            v274 = 0;
            v275 = &v332 + 16 * v325 + 2 * v326;
            v276 = v328;
            do
            {
              if (v276)
              {
                v277 = 0;
                v278 = v323 + v324 * v274;
                do
                {
                  *(v278 + v277) = v275->i8[v277];
                  ++v277;
                  v276 = v328;
                }

                while (32 * v328 > v277);
                v273 = v327;
              }

              ++v274;
              v275 += 16;
            }

            while (v274 < v273);
          }

LABEL_30:
          v21 = v34 == v311 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v302;
      }

      while (!v21);
    }
  }
}