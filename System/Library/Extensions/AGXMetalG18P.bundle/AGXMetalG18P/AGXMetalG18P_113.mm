uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v228 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v17 = a8 >> 3;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v180 = a1;
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
  v183 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v172 = result;
  if (v17 <= v163)
  {
    v171 = a7 + a9 - 1;
    v160 = a7 >> 3;
    if (a7 >> 3 <= v171 >> 3)
    {
      result = a1;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v31.i8 = vcgt_u32(v30, 0xF0000000FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      v34 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 3uLL))))))), *v31.i8);
      v169 = v34;
      v170 = v34.i32[0] | v34.i32[1];
      v168 = v31.i64[0];
      v156 = 8 * v19 * v18;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v179)
        {
          v36 = v179;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v161 < v35)
        {
          v35 = v161;
        }

        v178 = 8 * v17;
        v167 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v158;
        v166 = v38;
        v40 = v38 != 8;
        v41 = v160;
        v42 = v158 + 1;
        if (v17 != v159)
        {
          v42 = 8;
          v39 = v40;
        }

        v165 = v39;
        v176 = a3 + (v36 - v179) * a11;
        v177 = v42;
        v175 = v42;
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

          if (v171 < v44)
          {
            v44 = v171;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v181)
          {
            v48 = v164 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v178 >= v179 && v43 >= a7)
          {
            v50 = v46 != v164;
            if (v41 != v181)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v165;
          }

          if (v172)
          {
            v71 = 0;
            v72 = v156 >> (*(result + 57) != 0);
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

            v144 = (v71 >> 3) - 1;
            if (v73)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v75 >> 3) - 1;
            if (v74)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_198:
                v148 = 0;
                v149 = 0;
                v150 = v41 & v144;
                v151 = v17 & v146;
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
                result = v180;
                goto LABEL_210;
              }
            }

            v155 = 0;
LABEL_210:
            v58 = v155 + ((v43 / v71 + v178 / v75 * ((v71 + v157) / v71)) << 14);
            goto LABEL_52;
          }

          if (v170)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v54 = v168;
            v55 = BYTE4(v168);
            v57 = v169.i32[0];
            v56 = v169.i32[1];
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
            v58 = v52 << 9;
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
          v77 = a7;
          v78 = v176 + 8 * (v45 - a7);
          v79 = (a2 + v58);
          __src = (a2 + v58);
          if (v183)
          {
            if (!(v49 & 1 | (v48 < 8u) | (v175 < 8)))
            {
              v79 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v76, v48, v177, v34, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
              goto LABEL_86;
            }

            v80 = v47;
            memcpy(__dst, __src, sizeof(__dst));
            v47 = v80;
            v79 = __dst;
            result = v180;
          }

          else if (!(v49 & 1 | (v48 < 8u) | (v175 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v79;
          v193 = v48;
          v194 = v177;
          v189 = v167;
          v190 = v45 - v43;
          v186 = v76;
          v187 = v78;
          v188 = a11;
          v191 = v166;
          v192 = v47;
          if ((v49 & 1) == 0)
          {
            v81 = *v76;
            a7 = v77;
            if (v81 == 63)
            {
              v83 = *v79;
              v31 = v79[1];
              v32 = v79[2];
              v33 = v79[3];
              v196 = *v79;
              v197 = v32;
              v200 = v31;
              v201 = v33;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v79->i16);
              v196 = v83;
              v197 = v83;
              v200 = v83;
              v201 = v83;
              v82 = 2;
            }

            else if (*v76)
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v196, 64, v79, v81, *&v34, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v82 = 0;
              v83.i64[0] = 0;
              v196 = 0u;
              v197 = 0u;
              v200 = 0u;
              v201 = 0u;
            }

            v84 = v79->i64 + v82;
            v85 = v76[1];
            if (v85 == 63)
            {
              v87 = *v84;
              v31 = *(v84 + 16);
              v32 = *(v84 + 32);
              v33 = *(v84 + 48);
              v204 = *v84;
              v205 = v32;
              v208 = v31;
              v209 = v33;
              v86 = 64;
            }

            else if (v85 == 1)
            {
              v87 = vld1q_dup_s16(v84);
              v204 = v87;
              v205 = v87;
              v208 = v87;
              v209 = v87;
              v86 = 2;
            }

            else if (v76[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v204, 64, v84, v85, *v83.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v86 = 0;
              v87.i64[0] = 0;
              v204 = 0u;
              v205 = 0u;
              v208 = 0u;
              v209 = 0u;
            }

            v88 = v84 + v86;
            v89 = v76[2];
            if (v89 == 63)
            {
              v91 = *v88;
              v31 = *(v88 + 16);
              v32 = *(v88 + 32);
              v33 = *(v88 + 48);
              v198 = *v88;
              v199 = v32;
              v202 = v31;
              v203 = v33;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v91 = vld1q_dup_s16(v88);
              v198 = v91;
              v199 = v91;
              v202 = v91;
              v203 = v91;
              v90 = 2;
            }

            else if (v76[2])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 64, v88, v89, *v87.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v90 = 0;
              v91.i64[0] = 0;
              v198 = 0u;
              v199 = 0u;
              v202 = 0u;
              v203 = 0u;
            }

            v92 = v88 + v90;
            v93 = v76[3];
            if (v93 == 63)
            {
              v95 = *v92;
              v31 = *(v92 + 16);
              v32 = *(v92 + 32);
              v33 = *(v92 + 48);
              v206 = *v92;
              v207 = v32;
              v210 = v31;
              v211 = v33;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v95 = vld1q_dup_s16(v92);
              v206 = v95;
              v207 = v95;
              v210 = v95;
              v211 = v95;
              v94 = 2;
            }

            else if (v76[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v206, 64, v92, v93, *v91.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v94 = 0;
              v95.i64[0] = 0;
              v206 = 0u;
              v207 = 0u;
              v210 = 0u;
              v211 = 0u;
            }

            v96 = v92 + v94;
            v97 = v76[4];
            if (v97 == 63)
            {
              v99 = *v96;
              v31 = *(v96 + 16);
              v32 = *(v96 + 32);
              v33 = *(v96 + 48);
              v212 = *v96;
              v213 = v32;
              v216 = v31;
              v217 = v33;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v99 = vld1q_dup_s16(v96);
              v212 = v99;
              v213 = v99;
              v216 = v99;
              v217 = v99;
              v98 = 2;
            }

            else if (v76[4])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 64, v96, v97, *v95.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v98 = 0;
              v99.i64[0] = 0;
              v212 = 0u;
              v213 = 0u;
              v216 = 0u;
              v217 = 0u;
            }

            v100 = v96 + v98;
            v101 = v76[5];
            if (v101 == 63)
            {
              v103 = *v100;
              v31 = *(v100 + 16);
              v32 = *(v100 + 32);
              v33 = *(v100 + 48);
              v220 = *v100;
              v221 = v32;
              v224 = v31;
              v225 = v33;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v103 = vld1q_dup_s16(v100);
              v220 = v103;
              v221 = v103;
              v224 = v103;
              v225 = v103;
              v102 = 2;
            }

            else if (v76[5])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 64, v100, v101, *v99.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v102 = 0;
              v103.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v224 = 0u;
              v225 = 0u;
            }

            v104 = v100 + v102;
            v105 = v76[6];
            if (v105 == 63)
            {
              v107 = *v104;
              v31 = *(v104 + 16);
              v32 = *(v104 + 32);
              v33 = *(v104 + 48);
              v214 = *v104;
              v215 = v32;
              v218 = v31;
              v219 = v33;
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v107 = vld1q_dup_s16(v104);
              v214 = v107;
              v215 = v107;
              v218 = v107;
              v219 = v107;
              v106 = 2;
            }

            else if (v76[6])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 64, v104, v105, *v103.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v106 = 0;
              v107.i64[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v218 = 0u;
              v219 = 0u;
            }

            v108 = v104 + v106;
            v109 = v76[7];
            if (v109 == 63)
            {
              v110 = *v108;
              v31 = *(v108 + 16);
              v32 = *(v108 + 32);
              v33 = *(v108 + 48);
              v222 = *v108;
              v223 = v32;
              v226 = v31;
              v227 = v33;
              v111 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v109 != 1)
              {
                if (v76[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 64, v108, v109, *v107.i64, *v31.i64, *v32.i64, *v33.i8);
                  v111 = v191;
                  if (!v191)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v110.i64[0] = 0;
                  v222 = 0u;
                  v223 = 0u;
                  v226 = 0u;
                  v227 = 0u;
                  v111 = v191;
                  if (!v191)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v112 = v192;
                if (!v192)
                {
                  goto LABEL_177;
                }

                v113 = 0;
                v114 = v189 << 6;
                v115 = 8 * v190;
                v116 = &v196.i8[v114 + v115];
                v117 = v187;
                v118 = v188;
                v119 = 8 * v192;
                if (8 * v192)
                {
                  v120 = (8 * v192 - 1) >> 32 == 0;
                }

                else
                {
                  v120 = 0;
                }

                v121 = !v120;
                v123 = v116 < &v187->i8[8 * v192 + v188 * (v111 - 1)] && v187 < &__dst[64 * v111 + 448 + 64 * v189 + 8 * v192 + v115];
                v124 = v119 & 0x1FFFFFFE0;
                v125 = v121 | (v188 < 0) | v123;
                v126 = &v197.i8[v114 + v115];
                v127 = v187 + 1;
                v128 = v116;
                v129 = v187;
                while (2)
                {
                  v130 = (v117 + v113 * v118);
                  v131 = &v116[64 * v113];
                  if (v125)
                  {
                    v132 = 0;
LABEL_164:
                    v133 = v132 + 1;
                    do
                    {
                      v134 = *v130++;
                      *v131++ = v134;
                    }

                    while (v119 > v133++);
LABEL_161:
                    ++v113;
                    v126 += 64;
                    v127 = (v127 + v118);
                    v129 += v118;
                    v128 += 64;
                    if (v113 == v111)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v112 >= 4)
                {
                  v137 = v127;
                  v138 = v126;
                  v139 = v119 & 0x1FFFFFFE0;
                  do
                  {
                    v110 = v137[-1];
                    v31 = *v137;
                    v138[-1] = v110;
                    *v138 = v31;
                    v138 += 2;
                    v137 += 2;
                    v139 -= 32;
                  }

                  while (v139);
                  if (v119 == v124)
                  {
                    goto LABEL_161;
                  }

                  v136 = v119 & 0x1FFFFFFE0;
                  if ((v112 & 3) == 0)
                  {
                    v130 += v124;
                    v131 += v124;
                    v132 = v119 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v136 = 0;
                }

                v140 = -8 * v112 + v136;
                v141 = (v129 + v136);
                v142 = &v128[v136];
                do
                {
                  v143 = *v141++;
                  v110.i64[0] = v143;
                  *v142++ = v143;
                  v140 += 8;
                }

                while (v140);
                goto LABEL_161;
              }

              v110 = vld1q_dup_s16(v108);
              v222 = v110;
              v223 = v110;
              v226 = v110;
              v227 = v110;
              v111 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v196, 64, v185, v186, v193, v194, *v110.i8, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
            if (!v183)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v77;
          if (!v183)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v79, 0x200uLL);
LABEL_26:
          v21 = v41++ == v171 >> 3;
          result = v180;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

void *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v235 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v186 = a8;
  v17 = a8 >> 3;
  v168 = a8 + a10 - 1;
  v170 = v168 >> 3;
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
  v190 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  v179 = result;
  if (v17 <= v170)
  {
    v178 = a7 + a9 - 1;
    v167 = a7 >> 3;
    if (a7 >> 3 <= v178 >> 3)
    {
      v188 = (a5 - 1) >> 3;
      v164 = a5 - 1;
      v171 = (a5 - 1) & 7;
      v165 = (a6 - 1) & 7;
      v166 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v27.i8 = vcgt_u32(v26, 0xF0000000FLL);
      v28.i64[0] = -1;
      v29.i64[0] = 0x2000000020;
      *v30.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), *v27.i8);
      v176 = v30.i64[0];
      v177 = v30.i32[0] | v30.i32[1];
      v175 = v27.i64[0];
      v163 = 8 * v19 * v18;
      v187 = v16;
      do
      {
        v31 = (8 * v17) | 7;
        if (8 * v17 <= v186)
        {
          v32 = v186;
        }

        else
        {
          v32 = 8 * v17;
        }

        if (v168 < v31)
        {
          v31 = v168;
        }

        v185 = 8 * v17;
        v174 = v32 - 8 * v17;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v165;
        v173 = v34;
        v36 = v34 != 8;
        v37 = v167;
        v38 = v165 + 1;
        if (v17 != v166)
        {
          v38 = 8;
          v35 = v36;
        }

        v172 = v35;
        v183 = a3 + (v32 - v186) * a11;
        v184 = v38;
        v182 = v38;
        do
        {
          v39 = 8 * v37;
          v40 = 8 * (v37 + 1) - 1;
          if (8 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 8 * v37;
          }

          if (v178 < v40)
          {
            v40 = v178;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v37 == v188)
          {
            v44 = v171 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v185 >= v186 && v39 >= a7)
          {
            v46 = v42 != v171;
            if (v37 != v188)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v172;
          }

          if (v179)
          {
            v67 = 0;
            v68 = v163 >> (*(v16 + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 0;
                  v71 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 1;
                  v71 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v70 = 0;
                    v67 = 64;
                    v71 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 0;
                v71 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 1;
                v71 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v70 = 0;
                  v67 = 128;
                  v71 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 0;
                v71 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 1;
                v71 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v70 = 0;
                  v67 = 32;
                  v71 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 0;
              v71 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v69 = 0;
              v70 = 0;
              v67 = 16;
              v71 = 16;
            }

            else
            {
              v70 = 1;
              v71 = 0;
              if (v68 == 1024)
              {
                v69 = 0;
                v71 = 8;
                v67 = 16;
              }
            }

            v151 = (v67 >> 3) - 1;
            if (v69)
            {
              v152 = 0;
            }

            else
            {
              v152 = 32 - __clz(~(-1 << -__clz(v151)));
            }

            v153 = (v71 >> 3) - 1;
            if (v70)
            {
              v154 = 0;
              if (v152)
              {
                goto LABEL_223;
              }
            }

            else
            {
              v154 = 32 - __clz(~(-1 << -__clz(v153)));
              if (v154 | v152)
              {
LABEL_223:
                v155 = 0;
                v156 = 0;
                v157 = v37 & v151;
                v158 = v17 & v153;
                v159 = v152 != 0;
                v160 = v154 != 0;
                v161 = 1;
                do
                {
                  --v152;
                  if (v159)
                  {
                    v156 |= (v161 & v157) << v155++;
                  }

                  else
                  {
                    v152 = 0;
                  }

                  --v154;
                  if (v160)
                  {
                    v156 |= (v161 & v158) << v155++;
                  }

                  else
                  {
                    v154 = 0;
                  }

                  v161 *= 2;
                  --v155;
                  v160 = v154 != 0;
                  v159 = v152 != 0;
                }

                while (v154 | v152);
                v162 = v156 << 9;
                goto LABEL_235;
              }
            }

            v162 = 0;
LABEL_235:
            v54 = v162 + ((v39 / v67 + v185 / v71 * ((v67 + v164) / v67)) << 14);
            goto LABEL_52;
          }

          if (v177)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v175;
            v51 = BYTE4(v175);
            v53 = v176;
            v52 = HIDWORD(v176);
            do
            {
              --v52;
              if (v51)
              {
                v48 |= (v49 & v37) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v50)
              {
                v48 |= (v49 & v17) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v50 = v53 != 0;
              v51 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

LABEL_52:
          v55 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
          }

          v58 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 7;
          if (v59 < 0x10)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_77:
              v66 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_77;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v57 != 0;
          v64 = v60 != 0;
          v65 = 1;
          do
          {
            --v57;
            if (v63)
            {
              v62 |= (v65 & v37) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v17) << v61++;
            }

            else
            {
              v60 = 0;
            }

            v65 *= 2;
            --v61;
            v64 = v60 != 0;
            v63 = v57 != 0;
          }

          while (v60 | v57);
          v66 = 8 * v62;
LABEL_78:
          v72 = (a4 + v66);
          v73 = a7;
          v74 = (v183 + 8 * (v41 - a7));
          v75 = (a2 + v54);
          v189 = (a2 + v54);
          if (v190)
          {
            if (!(v45 & 1 | (v44 < 8u) | (v182 < 8)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, a11, v75, v72, v44, v184);
              a7 = v73;
              v16 = v187;
              goto LABEL_86;
            }

            v76 = v43;
            memcpy(__dst, (a2 + v54), sizeof(__dst));
            v43 = v76;
            v75 = __dst;
          }

          else if (!(v45 & 1 | (v44 < 8u) | (v182 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v187;
          v192 = v75;
          v200 = v44;
          v201 = v184;
          v196 = v174;
          v197 = v41 - v39;
          v193 = v72;
          v194 = v74;
          v195 = a11;
          v198 = v173;
          v199 = v43;
          if (v45)
          {
            dispatch_sync(*(*(v187 + 8) + 16552), block);
            a7 = v73;
            v16 = v187;
LABEL_86:
            v77 = v37 + 1;
            result = v189;
            if (!v190)
            {
              goto LABEL_26;
            }

LABEL_203:
            result = memcpy(result, v75, 0x200uLL);
            goto LABEL_26;
          }

          v78 = *v72;
          a7 = v73;
          if (v78 == 63)
          {
            v80 = *v75;
            v27 = v75[1];
            v28 = v75[2];
            v29 = v75[3];
            v203 = *v75;
            v204 = v28;
            v207 = v27;
            v208 = v29;
            v79 = 64;
            v77 = v37 + 1;
          }

          else
          {
            v77 = v37 + 1;
            if (v78 == 1)
            {
              v80 = vld1q_dup_s16(v75->i16);
              v203 = v80;
              v204 = v80;
              v207 = v80;
              v208 = v80;
              v79 = 2;
            }

            else if (*v72)
            {
              v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v203, 64, v75, v78, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v79 = 0;
              v80.i64[0] = 0;
              v203 = 0u;
              v204 = 0u;
              v207 = 0u;
              v208 = 0u;
            }
          }

          v81 = v75->i64 + v79;
          v82 = v72[1];
          if (v82 == 63)
          {
            v84 = *v81;
            v27 = *(v81 + 16);
            v28 = *(v81 + 32);
            v29 = *(v81 + 48);
            v211 = *v81;
            v212 = v28;
            v215 = v27;
            v216 = v29;
            v83 = 64;
          }

          else if (v82 == 1)
          {
            v84 = vld1q_dup_s16(v81);
            v211 = v84;
            v212 = v84;
            v215 = v84;
            v216 = v84;
            v83 = 2;
          }

          else if (v72[1])
          {
            v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 64, v81, v82, *v80.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v83 = 0;
            v84.i64[0] = 0;
            v211 = 0u;
            v212 = 0u;
            v215 = 0u;
            v216 = 0u;
          }

          v85 = v81 + v83;
          v86 = v72[2];
          if (v86 == 63)
          {
            v88 = *v85;
            v27 = *(v85 + 16);
            v28 = *(v85 + 32);
            v29 = *(v85 + 48);
            v205 = *v85;
            v206 = v28;
            v209 = v27;
            v210 = v29;
            v87 = 64;
          }

          else if (v86 == 1)
          {
            v88 = vld1q_dup_s16(v85);
            v205 = v88;
            v206 = v88;
            v209 = v88;
            v210 = v88;
            v87 = 2;
          }

          else if (v72[2])
          {
            v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v205, 64, v85, v86, *v84.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v87 = 0;
            v88.i64[0] = 0;
            v205 = 0u;
            v206 = 0u;
            v209 = 0u;
            v210 = 0u;
          }

          v89 = v85 + v87;
          v90 = v72[3];
          if (v90 == 63)
          {
            v92 = *v89;
            v27 = *(v89 + 16);
            v28 = *(v89 + 32);
            v29 = *(v89 + 48);
            v213 = *v89;
            v214 = v28;
            v217 = v27;
            v218 = v29;
            v91 = 64;
          }

          else if (v90 == 1)
          {
            v92 = vld1q_dup_s16(v89);
            v213 = v92;
            v214 = v92;
            v217 = v92;
            v218 = v92;
            v91 = 2;
          }

          else if (v72[3])
          {
            v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 64, v89, v90, *v88.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v91 = 0;
            v92.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v217 = 0u;
            v218 = 0u;
          }

          v93 = v89 + v91;
          v94 = v72[4];
          if (v94 == 63)
          {
            v96 = *v93;
            v27 = *(v93 + 16);
            v28 = *(v93 + 32);
            v29 = *(v93 + 48);
            v219 = *v93;
            v220 = v28;
            v223 = v27;
            v224 = v29;
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

          else if (v72[4])
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 64, v93, v94, *v92.i64, *v27.i64, *v28.i64, *v29.i8);
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

          v97 = v93 + v95;
          v98 = v72[5];
          if (v98 == 63)
          {
            v100 = *v97;
            v27 = *(v97 + 16);
            v28 = *(v97 + 32);
            v29 = *(v97 + 48);
            v227 = *v97;
            v228 = v28;
            v231 = v27;
            v232 = v29;
            v99 = 64;
          }

          else if (v98 == 1)
          {
            v100 = vld1q_dup_s16(v97);
            v227 = v100;
            v228 = v100;
            v231 = v100;
            v232 = v100;
            v99 = 2;
          }

          else if (v72[5])
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v97, v98, *v96.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v99 = 0;
            v100.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v231 = 0u;
            v232 = 0u;
          }

          v101 = v97 + v99;
          v102 = v72[6];
          if (v102 == 63)
          {
            v104 = *v101;
            v27 = *(v101 + 16);
            v28 = *(v101 + 32);
            v29 = *(v101 + 48);
            v221 = *v101;
            v222 = v28;
            v225 = v27;
            v226 = v29;
            v103 = 64;
          }

          else if (v102 == 1)
          {
            v104 = vld1q_dup_s16(v101);
            v221 = v104;
            v222 = v104;
            v225 = v104;
            v226 = v104;
            v103 = 2;
          }

          else if (v72[6])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 64, v101, v102, *v100.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v103 = 0;
            v104.i64[0] = 0;
            v221 = 0u;
            v222 = 0u;
            v225 = 0u;
            v226 = 0u;
          }

          v105 = v101 + v103;
          v106 = v72[7];
          if (v106 == 63)
          {
            v30 = *v105;
            v27 = *(v105 + 16);
            v28 = *(v105 + 32);
            v29 = *(v105 + 48);
            v229 = *v105;
            v230 = v28;
            v233 = v27;
            v234 = v29;
            v16 = v187;
            v107 = v198;
            if (v198)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v16 = v187;
            if (v106 == 1)
            {
              v30 = vld1q_dup_s16(v105);
              v229 = v30;
              v230 = v30;
              v233 = v30;
              v234 = v30;
              v107 = v198;
              if (v198)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v106)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v105, v106, *v104.i64, *v27.i64, *v28.i64, *v29.i8);
                v107 = v198;
                if (!v198)
                {
                  goto LABEL_177;
                }

LABEL_147:
                v108 = v199;
                if (!v199)
                {
                  goto LABEL_177;
                }

                v109 = 0;
                v110 = 8 * v197;
                v111 = &v203.i8[64 * v196 + v110];
                v112 = v194;
                v113 = v195;
                v114 = 8 * v199;
                if (8 * v199)
                {
                  v115 = (8 * v199 - 1) >> 32 == 0;
                }

                else
                {
                  v115 = 0;
                }

                v116 = !v115;
                v118 = v111 < v194 + 8 * v199 + v195 * (v107 - 1) && v194 < &__dst[64 * v107 + 448 + 64 * v196 + 8 * v199 + v110];
                v119 = v114 & 0x1FFFFFFE0;
                v120 = v116 | (v195 < 0) | v118;
                v121 = &v204.i8[64 * v196 + v110];
                v122 = (v194 + 1);
                v123 = v111;
                v124 = v194;
                while (2)
                {
                  v125 = v112 + v109 * v113;
                  v126 = &v111[64 * v109];
                  if (v120)
                  {
                    v127 = 0;
LABEL_164:
                    v128 = v127 + 1;
                    do
                    {
                      v129 = *v125++;
                      *v126++ = v129;
                    }

                    while (v114 > v128++);
LABEL_161:
                    ++v109;
                    v121 += 64;
                    v122 = (v122 + v113);
                    v124 = (v124 + v113);
                    v123 += 64;
                    if (v109 == v107)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v108 >= 4)
                {
                  v132 = v122;
                  v133 = v121;
                  v134 = v114 & 0x1FFFFFFE0;
                  do
                  {
                    v30 = v132[-1];
                    v27 = *v132;
                    v133[-1] = v30;
                    *v133 = v27;
                    v133 += 2;
                    v132 += 2;
                    v134 -= 32;
                  }

                  while (v134);
                  if (v114 == v119)
                  {
                    goto LABEL_161;
                  }

                  v131 = v114 & 0x1FFFFFFE0;
                  if ((v108 & 3) == 0)
                  {
                    v125 += v119;
                    v126 += v119;
                    v127 = v114 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v131 = 0;
                }

                v135 = -8 * v108 + v131;
                v136 = (v124 + v131);
                v137 = &v123[v131];
                do
                {
                  v138 = *v136++;
                  v30.i64[0] = v138;
                  *v137++ = v138;
                  v135 += 8;
                }

                while (v135);
                goto LABEL_161;
              }

              v30.i64[0] = 0;
              v229 = 0u;
              v230 = 0u;
              v233 = 0u;
              v234 = 0u;
              v107 = v198;
              if (v198)
              {
                goto LABEL_147;
              }
            }
          }

LABEL_177:
          v139 = 0;
          v141 = v192;
          v140 = v193;
          v142 = v200;
          v143 = v201;
          if (v200)
          {
            result = v189;
            if (v201)
            {
              v30.i64[0] = v203.i64[0];
              v27 = v204;
              v28 = v207;
              v29 = v208;
              *v192 = v203;
              v141[1] = v28;
              v141[2] = v27;
              v141[3] = v29;
              v141 += 4;
              v139 = 63;
            }
          }

          else
          {
            result = v189;
          }

          v144 = 0;
          *v140 = v139;
          if (v142 && v143 >= 3)
          {
            v30.i64[0] = v211.i64[0];
            v27 = v212;
            v28 = v215;
            v29 = v216;
            *v141 = v211;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v144 = 63;
          }

          v145 = 0;
          v140[1] = v144;
          if (v142 >= 5 && v143)
          {
            v30.i64[0] = v205.i64[0];
            v27 = v206;
            v28 = v209;
            v29 = v210;
            *v141 = v205;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v145 = 63;
          }

          v146 = 0;
          v140[2] = v145;
          if (v142 >= 5 && v143 >= 3)
          {
            v30.i64[0] = v213.i64[0];
            v27 = v214;
            v28 = v217;
            v29 = v218;
            *v141 = v213;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v146 = 63;
          }

          v147 = 0;
          v140[3] = v146;
          if (v142 && v143 >= 5)
          {
            v30.i64[0] = v219.i64[0];
            v27 = v220;
            v28 = v223;
            v29 = v224;
            *v141 = v219;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v147 = 63;
          }

          v148 = 0;
          v140[4] = v147;
          if (v142 && v143 >= 7)
          {
            v30.i64[0] = v227.i64[0];
            v27 = v228;
            v28 = v231;
            v29 = v232;
            *v141 = v227;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v148 = 63;
          }

          v149 = 0;
          v140[5] = v148;
          if (v142 >= 5 && v143 >= 5)
          {
            v30.i64[0] = v221.i64[0];
            v27 = v222;
            v28 = v225;
            v29 = v226;
            *v141 = v221;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v141 += 4;
            v149 = 63;
          }

          v150 = 0;
          v140[6] = v149;
          if (v142 >= 5 && v143 >= 7)
          {
            v30.i64[0] = v229.i64[0];
            v27 = v230;
            v28 = v233;
            v29 = v234;
            *v141 = v229;
            v141[1] = v28;
            v141[2] = v27;
            v141[3] = v29;
            v150 = 63;
          }

          v140[7] = v150;
          if (v190)
          {
            goto LABEL_203;
          }

LABEL_26:
          v21 = v37 == v178 >> 3;
          v37 = v77;
        }

        while (!v21);
        v21 = v17++ == v170;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v88 = v87->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v175, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v174, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v105 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v208, 128, v85, *v81)];
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v210, 128, v105, v81[1]);
          v107 = v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v209, 128, v106, v81[2]);
          v108 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v211, 128, v107, v81[3]);
          v109 = v108 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v212, 128, v108, v81[4]);
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v214, 128, v109, v81[5]);
          v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v213, 128, v110, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v215, 128, v110 + v111, v81[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v69);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v169, 128, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v168, 128, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 128, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 128, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 128, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 128, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v69[7]);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v93 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v207, 128, v73, *v68)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v209, 128, v93, v68[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v208, 128, v94, v68[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v210, 128, v95, v68[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v211, 128, v96, v68[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v213, 128, v97, v68[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v212, 128, v98, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v214, 128, v98 + v99, v68[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v317 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v236 = a8;
  v218 = a8 + a10 - 1;
  v237 = a1;
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
  v217 = v218 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v240 = v24;
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
      v230 = 0;
LABEL_32:
      v227 = v27 - 3;
      v221 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v215 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v230 = v32 >= v26;
    goto LABEL_32;
  }

  v230 = 0;
  v215 = 0;
  v221 = 0;
  v227 = 0;
LABEL_33:
  if (v18 <= v217)
  {
    v229 = a7 + a9 - 1;
    v214 = a7 >> 3;
    if (a7 >> 3 <= v229 >> 3)
    {
      v238 = v19 >> 3;
      v223 = v19 & 7;
      v212 = v20 & 7;
      v213 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v220 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v219 = v35;
      v228 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v236)
        {
          v37 = v236;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v218 < v36)
        {
          v36 = v218;
        }

        v226 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v212;
        v225 = v39;
        v41 = v39 != 8;
        v42 = v212 + 1;
        if (v18 != v213)
        {
          v42 = 8;
          v40 = v41;
        }

        v224 = v40;
        v43 = v214;
        v234 = a3 + (v37 - v236) * a11;
        v235 = v42;
        v233 = v42;
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

          if (v229 < v45)
          {
            v45 = v229;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v238)
          {
            v49 = v223 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v236 && v44 >= a7)
          {
            v51 = v47 != v223;
            if (v43 != v238)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v224;
          }

          if (v230)
          {
            if (v227 | v221)
            {
              v52 = 0;
              v53 = 0;
              v54 = 1;
              v55 = v227 != 0;
              v56 = v221 != 0;
              v57 = v227;
              v58 = v221;
              do
              {
                --v57;
                if (v55)
                {
                  v53 |= (v43 & ~(-1 << v227) & v54) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                --v58;
                if (v56)
                {
                  v53 |= (v18 & ~(-1 << v221) & v54) << v52++;
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
              v59 = v53 << 10;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v227) + (v18 >> v221) * v215);
          }

          else if (v220)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v219.i8[4];
            v64 = v219.i8[0];
            v65 = v220.i32[1];
            v66 = v220.i32[0];
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v64 = v66 != 0;
              v63 = v65 != 0;
            }

            while (v66 | v65);
            v67 = v61 << 10;
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
LABEL_103:
              v79 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_103;
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
LABEL_104:
          v80 = (a4 + v79);
          v81 = v234 + 16 * (v46 - a7);
          v239 = (a2 + v67);
          if (v240)
          {
            v82 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v233 < 8)))
            {
              goto LABEL_110;
            }

            v222 = v48;
            v83 = (a4 + v79);
            v84 = v49;
            memcpy(__dst, (a2 + v67), sizeof(__dst));
            v44 = 8 * v43;
            v48 = v222;
            LOBYTE(v49) = v84;
            v80 = v83;
            result = v237;
          }

          else
          {
            v82 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v233 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v82, v80, v49, v235);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v242 = v82;
          v250 = v49;
          v251 = v235;
          v246 = v226;
          v247 = v46 - v44;
          v243 = v80;
          v244 = v81;
          v245 = a11;
          v248 = v225;
          v249 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v228;
            v85 = v43 + 1;
            goto LABEL_202;
          }

          v86 = *v80;
          a7 = v228;
          if (v86 == 127)
          {
            v89 = v82[1];
            v90 = v82[2];
            v91 = v82[3];
            v92 = v82[4];
            v93 = v82[5];
            v94 = v82[6];
            v95 = v82[7];
            v253 = *v82;
            v254 = v89;
            v255 = v92;
            v256 = v93;
            v261 = v90;
            v262 = v91;
            v263 = v94;
            v264 = v95;
            v87 = 128;
          }

          else if (v86 == 3)
          {
            v88 = vld1q_dup_f32(v82->i32);
            v253 = v88;
            v254 = v88;
            v255 = v88;
            v256 = v88;
            v261 = v88;
            v262 = v88;
            v263 = v88;
            v264 = v88;
            v87 = 4;
          }

          else if (*v80)
          {
            v96 = v80;
            v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 128, v82, v86);
            v80 = v96;
          }

          else
          {
            v87 = 0;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v97 = v82->i64 + v87;
          v98 = v80[1];
          if (v98 == 127)
          {
            v101 = *(v97 + 16);
            v102 = *(v97 + 32);
            v103 = *(v97 + 48);
            v104 = *(v97 + 64);
            v105 = *(v97 + 80);
            v106 = *(v97 + 96);
            v107 = *(v97 + 112);
            v269 = *v97;
            v270 = v101;
            v271 = v104;
            v272 = v105;
            v277 = v102;
            v278 = v103;
            v279 = v106;
            v280 = v107;
            v99 = 128;
          }

          else if (v98 == 3)
          {
            v100 = vld1q_dup_f32(v97);
            v269 = v100;
            v270 = v100;
            v271 = v100;
            v272 = v100;
            v277 = v100;
            v278 = v100;
            v279 = v100;
            v280 = v100;
            v99 = 4;
          }

          else if (v80[1])
          {
            v108 = v80;
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 128, v97, v98);
            v80 = v108;
          }

          else
          {
            v99 = 0;
            v271 = 0u;
            v272 = 0u;
            v269 = 0u;
            v270 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
          }

          v109 = v97 + v99;
          v110 = v80[2];
          if (v110 == 127)
          {
            v113 = *(v109 + 16);
            v114 = *(v109 + 32);
            v115 = *(v109 + 48);
            v116 = *(v109 + 64);
            v117 = *(v109 + 80);
            v118 = *(v109 + 96);
            v119 = *(v109 + 112);
            v257 = *v109;
            v258 = v113;
            v259 = v116;
            v260 = v117;
            v265 = v114;
            v266 = v115;
            v267 = v118;
            v268 = v119;
            v111 = 128;
          }

          else if (v110 == 3)
          {
            v112 = vld1q_dup_f32(v109);
            v257 = v112;
            v258 = v112;
            v259 = v112;
            v260 = v112;
            v265 = v112;
            v266 = v112;
            v267 = v112;
            v268 = v112;
            v111 = 4;
          }

          else if (v80[2])
          {
            v120 = v80;
            v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 128, v109, v110);
            v80 = v120;
          }

          else
          {
            v111 = 0;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
          }

          v121 = v109 + v111;
          v122 = v80[3];
          if (v122 == 127)
          {
            v125 = *(v121 + 16);
            v126 = *(v121 + 32);
            v127 = *(v121 + 48);
            v128 = *(v121 + 64);
            v129 = *(v121 + 80);
            v130 = *(v121 + 96);
            v131 = *(v121 + 112);
            v273 = *v121;
            v274 = v125;
            v275 = v128;
            v276 = v129;
            v281 = v126;
            v282 = v127;
            v283 = v130;
            v284 = v131;
            v123 = 128;
          }

          else if (v122 == 3)
          {
            v124 = vld1q_dup_f32(v121);
            v273 = v124;
            v274 = v124;
            v275 = v124;
            v276 = v124;
            v281 = v124;
            v282 = v124;
            v283 = v124;
            v284 = v124;
            v123 = 4;
          }

          else if (v80[3])
          {
            v132 = v80;
            v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 128, v121, v122);
            v80 = v132;
          }

          else
          {
            v123 = 0;
            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v133 = v121 + v123;
          v134 = v80[4];
          if (v134 == 127)
          {
            v137 = *(v133 + 16);
            v138 = *(v133 + 32);
            v139 = *(v133 + 48);
            v140 = *(v133 + 64);
            v141 = *(v133 + 80);
            v142 = *(v133 + 96);
            v143 = *(v133 + 112);
            v285 = *v133;
            v286 = v137;
            v287 = v140;
            v288 = v141;
            v293 = v138;
            v294 = v139;
            v295 = v142;
            v296 = v143;
            v135 = 128;
          }

          else if (v134 == 3)
          {
            v136 = vld1q_dup_f32(v133);
            v285 = v136;
            v286 = v136;
            v287 = v136;
            v288 = v136;
            v293 = v136;
            v294 = v136;
            v295 = v136;
            v296 = v136;
            v135 = 4;
          }

          else if (v80[4])
          {
            v144 = v80;
            v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 128, v133, v134);
            v80 = v144;
          }

          else
          {
            v135 = 0;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            v293 = 0u;
            v294 = 0u;
            v295 = 0u;
            v296 = 0u;
          }

          v145 = v133 + v135;
          v146 = v80[5];
          if (v146 == 127)
          {
            v149 = *(v145 + 16);
            v150 = *(v145 + 32);
            v151 = *(v145 + 48);
            v152 = *(v145 + 64);
            v153 = *(v145 + 80);
            v154 = *(v145 + 96);
            v155 = *(v145 + 112);
            v301 = *v145;
            v302 = v149;
            v303 = v152;
            v304 = v153;
            v309 = v150;
            v310 = v151;
            v311 = v154;
            v312 = v155;
            v147 = 128;
          }

          else if (v146 == 3)
          {
            v148 = vld1q_dup_f32(v145);
            v301 = v148;
            v302 = v148;
            v303 = v148;
            v304 = v148;
            v309 = v148;
            v310 = v148;
            v311 = v148;
            v312 = v148;
            v147 = 4;
          }

          else if (v80[5])
          {
            v156 = v80;
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 128, v145, v146);
            v80 = v156;
          }

          else
          {
            v147 = 0;
            v303 = 0u;
            v304 = 0u;
            v301 = 0u;
            v302 = 0u;
            v309 = 0u;
            v310 = 0u;
            v311 = 0u;
            v312 = 0u;
          }

          v157 = v145 + v147;
          v158 = v80[6];
          if (v158 == 127)
          {
            v161 = *(v157 + 16);
            v162 = *(v157 + 32);
            v163 = *(v157 + 48);
            v164 = *(v157 + 64);
            v165 = *(v157 + 80);
            v166 = *(v157 + 96);
            v167 = *(v157 + 112);
            v289 = *v157;
            v290 = v161;
            v291 = v164;
            v292 = v165;
            v297 = v162;
            v298 = v163;
            v299 = v166;
            v300 = v167;
            v159 = 128;
          }

          else if (v158 == 3)
          {
            v160 = vld1q_dup_f32(v157);
            v289 = v160;
            v290 = v160;
            v291 = v160;
            v292 = v160;
            v297 = v160;
            v298 = v160;
            v299 = v160;
            v300 = v160;
            v159 = 4;
          }

          else if (v80[6])
          {
            v168 = v80;
            v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v289, 128, v157, v158);
            v80 = v168;
          }

          else
          {
            v159 = 0;
            v291 = 0u;
            v292 = 0u;
            v289 = 0u;
            v290 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v169 = v157 + v159;
          v170 = v80[7];
          if (v170 == 127)
          {
            v173 = *(v169 + 16);
            v174 = *(v169 + 32);
            v175 = *(v169 + 48);
            v176 = *(v169 + 64);
            v177 = *(v169 + 80);
            v178 = *(v169 + 96);
            v179 = *(v169 + 112);
            v305 = *v169;
            v306 = v173;
            v307 = v176;
            v308 = v177;
            v313 = v174;
            v314 = v175;
            v315 = v178;
            v316 = v179;
            v85 = v43 + 1;
            v171 = v248;
            if (!v248)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v85 = v43 + 1;
            if (v170 == 3)
            {
              v172 = vld1q_dup_f32(v169);
              v305 = v172;
              v306 = v172;
              v307 = v172;
              v308 = v172;
              v313 = v172;
              v314 = v172;
              v315 = v172;
              v316 = v172;
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }

            else if (v80[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v305, 128, v169, v170);
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v307 = 0u;
              v308 = 0u;
              v305 = 0u;
              v306 = 0u;
              v313 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }
          }

          v180 = v249;
          if (v249)
          {
            v181 = 0;
            v182 = 16 * v247;
            v183 = &v253.i8[128 * v246 + v182];
            v184 = v244;
            v185 = v245;
            v186 = 16 * v249;
            if (16 * v249)
            {
              v187 = (16 * v249 - 1) >> 32 == 0;
            }

            else
            {
              v187 = 0;
            }

            v188 = !v187;
            v190 = v183 < v244 + v245 * (v171 - 1) + 16 * v249 && v244 < &__dst[128 * v171 + 896 + 128 * v246 + 16 * v249 + v182];
            v191 = v186 & 0x1FFFFFFE0;
            v192 = v188 | (v245 < 0) | v190;
            v193 = &v254 + 128 * v246 + v182;
            v194 = (v244 + 16);
            v195 = v183;
            v196 = v244;
            do
            {
              v197 = (v184 + v181 * v185);
              v198 = &v183[128 * v181];
              if (v192)
              {
                v199 = 0;
              }

              else
              {
                if (v180 == 1)
                {
                  v203 = 0;
LABEL_193:
                  v204 = -16 * v180 + v203;
                  v205 = (v196 + v203);
                  v206 = &v195[v203];
                  do
                  {
                    v207 = *v205++;
                    *v206 = v207;
                    v206 += 16;
                    v204 += 16;
                  }

                  while (v204);
                  goto LABEL_185;
                }

                v208 = v194;
                v209 = v193;
                v210 = v186 & 0x1FFFFFFE0;
                do
                {
                  v211 = *v208;
                  *(v209 - 1) = *(v208 - 1);
                  *v209 = v211;
                  v209 += 2;
                  v208 += 2;
                  v210 -= 32;
                }

                while (v210);
                if (v186 == v191)
                {
                  goto LABEL_185;
                }

                v203 = v186 & 0x1FFFFFFE0;
                if (v180)
                {
                  goto LABEL_193;
                }

                v197 += v191;
                v198 += v191;
                v199 = v186 & 0xFFFFFFE0;
              }

              v200 = v199 + 1;
              do
              {
                v201 = *v197++;
                *v198++ = v201;
              }

              while (v186 > v200++);
LABEL_185:
              ++v181;
              v193 += 128;
              v194 = (v194 + v185);
              v196 += v185;
              v195 += 128;
            }

            while (v181 != v171);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v253, 128, v242, v243, v250, v251);
LABEL_202:
          if (v240)
          {
            memcpy(v239, v82, 0x400uLL);
          }

          v21 = v43 == v229 >> 3;
          v43 = v85;
          result = v237;
        }

        while (!v21);
        v21 = v18++ == v217;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v317 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v236 = a8;
  v218 = a8 + a10 - 1;
  v237 = a1;
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
  v217 = v218 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v240 = v24;
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
      v230 = 0;
LABEL_32:
      v227 = v27 - 3;
      v221 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v215 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v230 = v32 >= v26;
    goto LABEL_32;
  }

  v230 = 0;
  v215 = 0;
  v221 = 0;
  v227 = 0;
LABEL_33:
  if (v18 <= v217)
  {
    v229 = a7 + a9 - 1;
    v214 = a7 >> 3;
    if (a7 >> 3 <= v229 >> 3)
    {
      v238 = v19 >> 3;
      v223 = v19 & 7;
      v212 = v20 & 7;
      v213 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v220 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v219 = v35;
      v228 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v236)
        {
          v37 = v236;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v218 < v36)
        {
          v36 = v218;
        }

        v226 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v212;
        v225 = v39;
        v41 = v39 != 8;
        v42 = v212 + 1;
        if (v18 != v213)
        {
          v42 = 8;
          v40 = v41;
        }

        v224 = v40;
        v43 = v214;
        v234 = a3 + (v37 - v236) * a11;
        v235 = v42;
        v233 = v42;
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

          if (v229 < v45)
          {
            v45 = v229;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v238)
          {
            v49 = v223 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v236 && v44 >= a7)
          {
            v51 = v47 != v223;
            if (v43 != v238)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v224;
          }

          if (v230)
          {
            if (v227 | v221)
            {
              v52 = 0;
              v53 = 0;
              v54 = 1;
              v55 = v227 != 0;
              v56 = v221 != 0;
              v57 = v227;
              v58 = v221;
              do
              {
                --v57;
                if (v55)
                {
                  v53 |= (v43 & ~(-1 << v227) & v54) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                --v58;
                if (v56)
                {
                  v53 |= (v18 & ~(-1 << v221) & v54) << v52++;
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
              v59 = v53 << 10;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v227) + (v18 >> v221) * v215);
          }

          else if (v220)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v219.i8[4];
            v64 = v219.i8[0];
            v65 = v220.i32[1];
            v66 = v220.i32[0];
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v64 = v66 != 0;
              v63 = v65 != 0;
            }

            while (v66 | v65);
            v67 = v61 << 10;
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
LABEL_103:
              v79 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_103;
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
LABEL_104:
          v80 = (a4 + v79);
          v81 = (v234 + 16 * (v46 - a7));
          v239 = (a2 + v67);
          if (v240)
          {
            v82 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v233 < 8)))
            {
              goto LABEL_110;
            }

            v222 = v48;
            v83 = (a4 + v79);
            v84 = v49;
            memcpy(__dst, (a2 + v67), sizeof(__dst));
            v44 = 8 * v43;
            v48 = v222;
            LOBYTE(v49) = v84;
            v80 = v83;
            result = v237;
          }

          else
          {
            v82 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v233 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v82, v80, v49, v235);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v242 = v82;
          v250 = v49;
          v251 = v235;
          v246 = v226;
          v247 = v46 - v44;
          v243 = v80;
          v244 = v81;
          v245 = a11;
          v248 = v225;
          v249 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v228;
            v85 = v43 + 1;
            goto LABEL_202;
          }

          v86 = *v80;
          a7 = v228;
          if (v86 == 127)
          {
            v89 = *(v82 + 1);
            v90 = *(v82 + 2);
            v91 = *(v82 + 3);
            v92 = *(v82 + 4);
            v93 = *(v82 + 5);
            v94 = *(v82 + 6);
            v95 = *(v82 + 7);
            v253 = *v82;
            v254 = v89;
            v255 = v92;
            v256 = v93;
            v261 = v90;
            v262 = v91;
            v263 = v94;
            v264 = v95;
            v87 = 128;
          }

          else if (v86 == 3)
          {
            v88 = vld1q_dup_f32(v82);
            v253 = v88;
            v254 = v88;
            v255 = v88;
            v256 = v88;
            v261 = v88;
            v262 = v88;
            v263 = v88;
            v264 = v88;
            v87 = 4;
          }

          else if (*v80)
          {
            v96 = v80;
            v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 128, v82, v86);
            v80 = v96;
          }

          else
          {
            v87 = 0;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v97 = v82 + v87;
          v98 = v80[1];
          if (v98 == 127)
          {
            v101 = *(v97 + 16);
            v102 = *(v97 + 32);
            v103 = *(v97 + 48);
            v104 = *(v97 + 64);
            v105 = *(v97 + 80);
            v106 = *(v97 + 96);
            v107 = *(v97 + 112);
            v269 = *v97;
            v270 = v101;
            v271 = v104;
            v272 = v105;
            v277 = v102;
            v278 = v103;
            v279 = v106;
            v280 = v107;
            v99 = 128;
          }

          else if (v98 == 3)
          {
            v100 = vld1q_dup_f32(v97);
            v269 = v100;
            v270 = v100;
            v271 = v100;
            v272 = v100;
            v277 = v100;
            v278 = v100;
            v279 = v100;
            v280 = v100;
            v99 = 4;
          }

          else if (v80[1])
          {
            v108 = v80;
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 128, v97, v98);
            v80 = v108;
          }

          else
          {
            v99 = 0;
            v271 = 0u;
            v272 = 0u;
            v269 = 0u;
            v270 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
          }

          v109 = v97 + v99;
          v110 = v80[2];
          if (v110 == 127)
          {
            v113 = *(v109 + 16);
            v114 = *(v109 + 32);
            v115 = *(v109 + 48);
            v116 = *(v109 + 64);
            v117 = *(v109 + 80);
            v118 = *(v109 + 96);
            v119 = *(v109 + 112);
            v257 = *v109;
            v258 = v113;
            v259 = v116;
            v260 = v117;
            v265 = v114;
            v266 = v115;
            v267 = v118;
            v268 = v119;
            v111 = 128;
          }

          else if (v110 == 3)
          {
            v112 = vld1q_dup_f32(v109);
            v257 = v112;
            v258 = v112;
            v259 = v112;
            v260 = v112;
            v265 = v112;
            v266 = v112;
            v267 = v112;
            v268 = v112;
            v111 = 4;
          }

          else if (v80[2])
          {
            v120 = v80;
            v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 128, v109, v110);
            v80 = v120;
          }

          else
          {
            v111 = 0;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
          }

          v121 = v109 + v111;
          v122 = v80[3];
          if (v122 == 127)
          {
            v125 = *(v121 + 16);
            v126 = *(v121 + 32);
            v127 = *(v121 + 48);
            v128 = *(v121 + 64);
            v129 = *(v121 + 80);
            v130 = *(v121 + 96);
            v131 = *(v121 + 112);
            v273 = *v121;
            v274 = v125;
            v275 = v128;
            v276 = v129;
            v281 = v126;
            v282 = v127;
            v283 = v130;
            v284 = v131;
            v123 = 128;
          }

          else if (v122 == 3)
          {
            v124 = vld1q_dup_f32(v121);
            v273 = v124;
            v274 = v124;
            v275 = v124;
            v276 = v124;
            v281 = v124;
            v282 = v124;
            v283 = v124;
            v284 = v124;
            v123 = 4;
          }

          else if (v80[3])
          {
            v132 = v80;
            v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 128, v121, v122);
            v80 = v132;
          }

          else
          {
            v123 = 0;
            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v133 = v121 + v123;
          v134 = v80[4];
          if (v134 == 127)
          {
            v137 = *(v133 + 16);
            v138 = *(v133 + 32);
            v139 = *(v133 + 48);
            v140 = *(v133 + 64);
            v141 = *(v133 + 80);
            v142 = *(v133 + 96);
            v143 = *(v133 + 112);
            v285 = *v133;
            v286 = v137;
            v287 = v140;
            v288 = v141;
            v293 = v138;
            v294 = v139;
            v295 = v142;
            v296 = v143;
            v135 = 128;
          }

          else if (v134 == 3)
          {
            v136 = vld1q_dup_f32(v133);
            v285 = v136;
            v286 = v136;
            v287 = v136;
            v288 = v136;
            v293 = v136;
            v294 = v136;
            v295 = v136;
            v296 = v136;
            v135 = 4;
          }

          else if (v80[4])
          {
            v144 = v80;
            v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 128, v133, v134);
            v80 = v144;
          }

          else
          {
            v135 = 0;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            v293 = 0u;
            v294 = 0u;
            v295 = 0u;
            v296 = 0u;
          }

          v145 = v133 + v135;
          v146 = v80[5];
          if (v146 == 127)
          {
            v149 = *(v145 + 16);
            v150 = *(v145 + 32);
            v151 = *(v145 + 48);
            v152 = *(v145 + 64);
            v153 = *(v145 + 80);
            v154 = *(v145 + 96);
            v155 = *(v145 + 112);
            v301 = *v145;
            v302 = v149;
            v303 = v152;
            v304 = v153;
            v309 = v150;
            v310 = v151;
            v311 = v154;
            v312 = v155;
            v147 = 128;
          }

          else if (v146 == 3)
          {
            v148 = vld1q_dup_f32(v145);
            v301 = v148;
            v302 = v148;
            v303 = v148;
            v304 = v148;
            v309 = v148;
            v310 = v148;
            v311 = v148;
            v312 = v148;
            v147 = 4;
          }

          else if (v80[5])
          {
            v156 = v80;
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 128, v145, v146);
            v80 = v156;
          }

          else
          {
            v147 = 0;
            v303 = 0u;
            v304 = 0u;
            v301 = 0u;
            v302 = 0u;
            v309 = 0u;
            v310 = 0u;
            v311 = 0u;
            v312 = 0u;
          }

          v157 = v145 + v147;
          v158 = v80[6];
          if (v158 == 127)
          {
            v161 = *(v157 + 16);
            v162 = *(v157 + 32);
            v163 = *(v157 + 48);
            v164 = *(v157 + 64);
            v165 = *(v157 + 80);
            v166 = *(v157 + 96);
            v167 = *(v157 + 112);
            v289 = *v157;
            v290 = v161;
            v291 = v164;
            v292 = v165;
            v297 = v162;
            v298 = v163;
            v299 = v166;
            v300 = v167;
            v159 = 128;
          }

          else if (v158 == 3)
          {
            v160 = vld1q_dup_f32(v157);
            v289 = v160;
            v290 = v160;
            v291 = v160;
            v292 = v160;
            v297 = v160;
            v298 = v160;
            v299 = v160;
            v300 = v160;
            v159 = 4;
          }

          else if (v80[6])
          {
            v168 = v80;
            v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v289, 128, v157, v158);
            v80 = v168;
          }

          else
          {
            v159 = 0;
            v291 = 0u;
            v292 = 0u;
            v289 = 0u;
            v290 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v169 = v157 + v159;
          v170 = v80[7];
          if (v170 == 127)
          {
            v173 = *(v169 + 16);
            v174 = *(v169 + 32);
            v175 = *(v169 + 48);
            v176 = *(v169 + 64);
            v177 = *(v169 + 80);
            v178 = *(v169 + 96);
            v179 = *(v169 + 112);
            v305 = *v169;
            v306 = v173;
            v307 = v176;
            v308 = v177;
            v313 = v174;
            v314 = v175;
            v315 = v178;
            v316 = v179;
            v85 = v43 + 1;
            v171 = v248;
            if (!v248)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v85 = v43 + 1;
            if (v170 == 3)
            {
              v172 = vld1q_dup_f32(v169);
              v305 = v172;
              v306 = v172;
              v307 = v172;
              v308 = v172;
              v313 = v172;
              v314 = v172;
              v315 = v172;
              v316 = v172;
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }

            else if (v80[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v305, 128, v169, v170);
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v307 = 0u;
              v308 = 0u;
              v305 = 0u;
              v306 = 0u;
              v313 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v171 = v248;
              if (!v248)
              {
                goto LABEL_201;
              }
            }
          }

          v180 = v249;
          if (v249)
          {
            v181 = 0;
            v182 = 16 * v247;
            v183 = &v253.i8[128 * v246 + v182];
            v184 = v244;
            v185 = v245;
            v186 = 16 * v249;
            if (16 * v249)
            {
              v187 = (16 * v249 - 1) >> 32 == 0;
            }

            else
            {
              v187 = 0;
            }

            v188 = !v187;
            v190 = v183 < &v244[v249] + v245 * (v171 - 1) && v244 < &__dst[128 * v171 + 896 + 128 * v246 + 16 * v249 + v182];
            v191 = v186 & 0x1FFFFFFE0;
            v192 = v188 | (v245 < 0) | v190;
            v193 = &v254 + 128 * v246 + v182;
            v194 = v244 + 1;
            v195 = v183;
            v196 = v244;
            do
            {
              v197 = v184 + v181 * v185;
              v198 = &v183[128 * v181];
              if (v192)
              {
                v199 = 0;
              }

              else
              {
                if (v180 == 1)
                {
                  v203 = 0;
LABEL_193:
                  v204 = -16 * v180 + v203;
                  v205 = (v196 + v203);
                  v206 = &v195[v203];
                  do
                  {
                    v207 = *v205++;
                    *v206 = v207;
                    v206 += 16;
                    v204 += 16;
                  }

                  while (v204);
                  goto LABEL_185;
                }

                v208 = v194;
                v209 = v193;
                v210 = v186 & 0x1FFFFFFE0;
                do
                {
                  v211 = *v208;
                  *(v209 - 1) = *(v208 - 1);
                  *v209 = v211;
                  v209 += 2;
                  v208 += 2;
                  v210 -= 32;
                }

                while (v210);
                if (v186 == v191)
                {
                  goto LABEL_185;
                }

                v203 = v186 & 0x1FFFFFFE0;
                if (v180)
                {
                  goto LABEL_193;
                }

                v197 += v191;
                v198 += v191;
                v199 = v186 & 0xFFFFFFE0;
              }

              v200 = v199 + 1;
              do
              {
                v201 = *v197++;
                *v198++ = v201;
              }

              while (v186 > v200++);
LABEL_185:
              ++v181;
              v193 += 128;
              v194 = (v194 + v185);
              v196 = (v196 + v185);
              v195 += 128;
            }

            while (v181 != v171);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v253, 128, v242, v243, v250, v251);
LABEL_202:
          if (v240)
          {
            memcpy(v239, v82, 0x400uLL);
          }

          v21 = v43 == v229 >> 3;
          v43 = v85;
          result = v237;
        }

        while (!v21);
        v21 = v18++ == v217;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v227 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v228 = a1;
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
  v231 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v220 = result;
  if (v17 <= v212)
  {
    v219 = a7 + a9 - 1;
    v209 = a7 >> 3;
    if (a7 >> 3 <= v219 >> 3)
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
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v227)
        {
          v29 = v227;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v226 = 8 * v17;
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
        v224 = a3 + (v29 - v227) * a11;
        v225 = v35;
        v223 = v35;
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

          if (v219 < v37)
          {
            v37 = v219;
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
          if (v226 >= v227 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v214;
          }

          if (v220)
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
                goto LABEL_198;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_198:
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
                v204 = v198 << 10;
                result = v228;
                goto LABEL_210;
              }
            }

            v204 = 0;
LABEL_210:
            v51 = v204 + ((v36 / v64 + v226 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_52;
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
            v51 = v45 << 10;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
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
          v70 = a7;
          v71 = v224 + 16 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v231)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v223 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v228;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v223 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v233 = v72;
          v241 = v41;
          v242 = v225;
          v237 = v216;
          v238 = v38 - v36;
          v234 = v69;
          v235 = v71;
          v236 = a11;
          v239 = v215;
          v240 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 127)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = v72[4];
              v81 = v72[5];
              v82 = v72[6];
              v83 = v72[7];
              v244 = *v72;
              v245 = v77;
              v246 = v80;
              v247 = v81;
              v252 = v78;
              v253 = v79;
              v254 = v82;
              v255 = v83;
              v75 = 128;
            }

            else if (v74 == 3)
            {
              v76 = vld1q_dup_f32(v72->i32);
              v244 = v76;
              v245 = v76;
              v246 = v76;
              v247 = v76;
              v252 = v76;
              v253 = v76;
              v254 = v76;
              v255 = v76;
              v75 = 4;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
            }

            else
            {
              v75 = 0;
              v247 = 0u;
              v246 = 0u;
              v245 = 0u;
              v244 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v84 = v72->i64 + v75;
            v85 = v69[1];
            if (v85 == 127)
            {
              v88 = *(v84 + 16);
              v89 = *(v84 + 32);
              v90 = *(v84 + 48);
              v91 = *(v84 + 64);
              v92 = *(v84 + 80);
              v93 = *(v84 + 96);
              v94 = *(v84 + 112);
              v260 = *v84;
              v261 = v88;
              v262 = v91;
              v263 = v92;
              v268 = v89;
              v269 = v90;
              v270 = v93;
              v271 = v94;
              v86 = 128;
            }

            else if (v85 == 3)
            {
              v87 = vld1q_dup_f32(v84);
              v260 = v87;
              v261 = v87;
              v262 = v87;
              v263 = v87;
              v268 = v87;
              v269 = v87;
              v270 = v87;
              v271 = v87;
              v86 = 4;
            }

            else if (v69[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v84, v85);
            }

            else
            {
              v86 = 0;
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v268 = 0u;
              v269 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v95 = v84 + v86;
            v96 = v69[2];
            if (v96 == 127)
            {
              v99 = *(v95 + 16);
              v100 = *(v95 + 32);
              v101 = *(v95 + 48);
              v102 = *(v95 + 64);
              v103 = *(v95 + 80);
              v104 = *(v95 + 96);
              v105 = *(v95 + 112);
              v248 = *v95;
              v249 = v99;
              v250 = v102;
              v251 = v103;
              v256 = v100;
              v257 = v101;
              v258 = v104;
              v259 = v105;
              v97 = 128;
            }

            else if (v96 == 3)
            {
              v98 = vld1q_dup_f32(v95);
              v248 = v98;
              v249 = v98;
              v250 = v98;
              v251 = v98;
              v256 = v98;
              v257 = v98;
              v258 = v98;
              v259 = v98;
              v97 = 4;
            }

            else if (v69[2])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v95, v96);
            }

            else
            {
              v97 = 0;
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v256 = 0u;
              v257 = 0u;
              v258 = 0u;
              v259 = 0u;
            }

            v106 = v95 + v97;
            v107 = v69[3];
            if (v107 == 127)
            {
              v110 = *(v106 + 16);
              v111 = *(v106 + 32);
              v112 = *(v106 + 48);
              v113 = *(v106 + 64);
              v114 = *(v106 + 80);
              v115 = *(v106 + 96);
              v116 = *(v106 + 112);
              v264 = *v106;
              v265 = v110;
              v266 = v113;
              v267 = v114;
              v272 = v111;
              v273 = v112;
              v274 = v115;
              v275 = v116;
              v108 = 128;
            }

            else if (v107 == 3)
            {
              v109 = vld1q_dup_f32(v106);
              v264 = v109;
              v265 = v109;
              v266 = v109;
              v267 = v109;
              v272 = v109;
              v273 = v109;
              v274 = v109;
              v275 = v109;
              v108 = 4;
            }

            else if (v69[3])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 128, v106, v107);
            }

            else
            {
              v108 = 0;
              v266 = 0u;
              v267 = 0u;
              v264 = 0u;
              v265 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
            }

            v117 = v106 + v108;
            v118 = v69[4];
            if (v118 == 127)
            {
              v121 = *(v117 + 16);
              v122 = *(v117 + 32);
              v123 = *(v117 + 48);
              v124 = *(v117 + 64);
              v125 = *(v117 + 80);
              v126 = *(v117 + 96);
              v127 = *(v117 + 112);
              v276 = *v117;
              v277 = v121;
              v278 = v124;
              v279 = v125;
              v284 = v122;
              v285 = v123;
              v286 = v126;
              v287 = v127;
              v119 = 128;
            }

            else if (v118 == 3)
            {
              v120 = vld1q_dup_f32(v117);
              v276 = v120;
              v277 = v120;
              v278 = v120;
              v279 = v120;
              v284 = v120;
              v285 = v120;
              v286 = v120;
              v287 = v120;
              v119 = 4;
            }

            else if (v69[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v117, v118);
            }

            else
            {
              v119 = 0;
              v278 = 0u;
              v279 = 0u;
              v276 = 0u;
              v277 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
            }

            v128 = v117 + v119;
            v129 = v69[5];
            if (v129 == 127)
            {
              v132 = *(v128 + 16);
              v133 = *(v128 + 32);
              v134 = *(v128 + 48);
              v135 = *(v128 + 64);
              v136 = *(v128 + 80);
              v137 = *(v128 + 96);
              v138 = *(v128 + 112);
              v292 = *v128;
              v293 = v132;
              v294 = v135;
              v295 = v136;
              v300 = v133;
              v301 = v134;
              v302 = v137;
              v303 = v138;
              v130 = 128;
            }

            else if (v129 == 3)
            {
              v131 = vld1q_dup_f32(v128);
              v292 = v131;
              v293 = v131;
              v294 = v131;
              v295 = v131;
              v300 = v131;
              v301 = v131;
              v302 = v131;
              v303 = v131;
              v130 = 4;
            }

            else if (v69[5])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v128, v129);
            }

            else
            {
              v130 = 0;
              v294 = 0u;
              v295 = 0u;
              v292 = 0u;
              v293 = 0u;
              v300 = 0u;
              v301 = 0u;
              v302 = 0u;
              v303 = 0u;
            }

            v139 = v128 + v130;
            v140 = v69[6];
            if (v140 == 127)
            {
              v143 = *(v139 + 16);
              v144 = *(v139 + 32);
              v145 = *(v139 + 48);
              v146 = *(v139 + 64);
              v147 = *(v139 + 80);
              v148 = *(v139 + 96);
              v149 = *(v139 + 112);
              v280 = *v139;
              v281 = v143;
              v282 = v146;
              v283 = v147;
              v288 = v144;
              v289 = v145;
              v290 = v148;
              v291 = v149;
              v141 = 128;
            }

            else if (v140 == 3)
            {
              v142 = vld1q_dup_f32(v139);
              v280 = v142;
              v281 = v142;
              v282 = v142;
              v283 = v142;
              v288 = v142;
              v289 = v142;
              v290 = v142;
              v291 = v142;
              v141 = 4;
            }

            else if (v69[6])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
            }

            else
            {
              v141 = 0;
              v282 = 0u;
              v283 = 0u;
              v280 = 0u;
              v281 = 0u;
              v288 = 0u;
              v289 = 0u;
              v290 = 0u;
              v291 = 0u;
            }

            v150 = v139 + v141;
            v151 = v69[7];
            if (v151 == 127)
            {
              v154 = *(v150 + 16);
              v155 = *(v150 + 32);
              v156 = *(v150 + 48);
              v157 = *(v150 + 64);
              v158 = *(v150 + 80);
              v159 = *(v150 + 96);
              v160 = *(v150 + 112);
              v296 = *v150;
              v297 = v154;
              v298 = v157;
              v299 = v158;
              v304 = v155;
              v305 = v156;
              v306 = v159;
              v307 = v160;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v151 != 3)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 128, v150, v151);
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v298 = 0u;
                  v299 = 0u;
                  v296 = 0u;
                  v297 = 0u;
                  v304 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v161 = v240;
                if (!v240)
                {
                  goto LABEL_177;
                }

                v162 = 0;
                v163 = 16 * v238;
                v164 = &v244.i8[128 * v237 + v163];
                v165 = v235;
                v166 = v236;
                v167 = 16 * v240;
                if (16 * v240)
                {
                  v168 = (16 * v240 - 1) >> 32 == 0;
                }

                else
                {
                  v168 = 0;
                }

                v169 = !v168;
                v171 = v164 < v235 + v236 * (v152 - 1) + 16 * v240 && v235 < &__dst[128 * v152 + 896 + 128 * v237 + 16 * v240 + v163];
                v172 = v167 & 0x1FFFFFFE0;
                v173 = v169 | (v236 < 0) | v171;
                v174 = &v245 + 128 * v237 + v163;
                v175 = (v235 + 16);
                v176 = v164;
                v177 = v235;
                while (2)
                {
                  v178 = (v165 + v162 * v166);
                  v179 = &v164[128 * v162];
                  if (v173)
                  {
                    v180 = 0;
LABEL_164:
                    v181 = v180 + 1;
                    do
                    {
                      v182 = *v178++;
                      *v179++ = v182;
                    }

                    while (v167 > v181++);
LABEL_161:
                    ++v162;
                    v174 += 128;
                    v175 = (v175 + v166);
                    v177 += v166;
                    v176 += 128;
                    if (v162 == v152)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v161 == 1)
                {
                  v184 = 0;
                }

                else
                {
                  v189 = v175;
                  v190 = v174;
                  v191 = v167 & 0x1FFFFFFE0;
                  do
                  {
                    v192 = *v189;
                    *(v190 - 1) = *(v189 - 1);
                    *v190 = v192;
                    v190 += 2;
                    v189 += 2;
                    v191 -= 32;
                  }

                  while (v191);
                  if (v167 == v172)
                  {
                    goto LABEL_161;
                  }

                  v184 = v167 & 0x1FFFFFFE0;
                  if ((v161 & 1) == 0)
                  {
                    v178 += v172;
                    v179 += v172;
                    v180 = v167 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                v185 = -16 * v161 + v184;
                v186 = (v177 + v184);
                v187 = &v176[v184];
                do
                {
                  v188 = *v186++;
                  *v187 = v188;
                  v187 += 16;
                  v185 += 16;
                }

                while (v185);
                goto LABEL_161;
              }

              v153 = vld1q_dup_f32(v150);
              v296 = v153;
              v297 = v153;
              v298 = v153;
              v299 = v153;
              v304 = v153;
              v305 = v153;
              v306 = v153;
              v307 = v153;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
            if (!v231)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v231)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v72, 0x400uLL);
LABEL_26:
          v21 = v34++ == v219 >> 3;
          result = v228;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v227 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v228 = a1;
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
  v231 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v220 = result;
  if (v17 <= v212)
  {
    v219 = a7 + a9 - 1;
    v209 = a7 >> 3;
    if (a7 >> 3 <= v219 >> 3)
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
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v227)
        {
          v29 = v227;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v226 = 8 * v17;
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
        v224 = a3 + (v29 - v227) * a11;
        v225 = v35;
        v223 = v35;
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

          if (v219 < v37)
          {
            v37 = v219;
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
          if (v226 >= v227 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v214;
          }

          if (v220)
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
                goto LABEL_198;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_198:
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
                v204 = v198 << 10;
                result = v228;
                goto LABEL_210;
              }
            }

            v204 = 0;
LABEL_210:
            v51 = v204 + ((v36 / v64 + v226 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_52;
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
            v51 = v45 << 10;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
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
          v70 = a7;
          v71 = (v224 + 16 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v231)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v223 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v228;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v223 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v233 = v72;
          v241 = v41;
          v242 = v225;
          v237 = v216;
          v238 = v38 - v36;
          v234 = v69;
          v235 = v71;
          v236 = a11;
          v239 = v215;
          v240 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 127)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = *(v72 + 4);
              v81 = *(v72 + 5);
              v82 = *(v72 + 6);
              v83 = *(v72 + 7);
              v244 = *v72;
              v245 = v77;
              v246 = v80;
              v247 = v81;
              v252 = v78;
              v253 = v79;
              v254 = v82;
              v255 = v83;
              v75 = 128;
            }

            else if (v74 == 3)
            {
              v76 = vld1q_dup_f32(v72);
              v244 = v76;
              v245 = v76;
              v246 = v76;
              v247 = v76;
              v252 = v76;
              v253 = v76;
              v254 = v76;
              v255 = v76;
              v75 = 4;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
            }

            else
            {
              v75 = 0;
              v247 = 0u;
              v246 = 0u;
              v245 = 0u;
              v244 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v84 = v72 + v75;
            v85 = v69[1];
            if (v85 == 127)
            {
              v88 = *(v84 + 16);
              v89 = *(v84 + 32);
              v90 = *(v84 + 48);
              v91 = *(v84 + 64);
              v92 = *(v84 + 80);
              v93 = *(v84 + 96);
              v94 = *(v84 + 112);
              v260 = *v84;
              v261 = v88;
              v262 = v91;
              v263 = v92;
              v268 = v89;
              v269 = v90;
              v270 = v93;
              v271 = v94;
              v86 = 128;
            }

            else if (v85 == 3)
            {
              v87 = vld1q_dup_f32(v84);
              v260 = v87;
              v261 = v87;
              v262 = v87;
              v263 = v87;
              v268 = v87;
              v269 = v87;
              v270 = v87;
              v271 = v87;
              v86 = 4;
            }

            else if (v69[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v84, v85);
            }

            else
            {
              v86 = 0;
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v268 = 0u;
              v269 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v95 = v84 + v86;
            v96 = v69[2];
            if (v96 == 127)
            {
              v99 = *(v95 + 16);
              v100 = *(v95 + 32);
              v101 = *(v95 + 48);
              v102 = *(v95 + 64);
              v103 = *(v95 + 80);
              v104 = *(v95 + 96);
              v105 = *(v95 + 112);
              v248 = *v95;
              v249 = v99;
              v250 = v102;
              v251 = v103;
              v256 = v100;
              v257 = v101;
              v258 = v104;
              v259 = v105;
              v97 = 128;
            }

            else if (v96 == 3)
            {
              v98 = vld1q_dup_f32(v95);
              v248 = v98;
              v249 = v98;
              v250 = v98;
              v251 = v98;
              v256 = v98;
              v257 = v98;
              v258 = v98;
              v259 = v98;
              v97 = 4;
            }

            else if (v69[2])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v95, v96);
            }

            else
            {
              v97 = 0;
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v256 = 0u;
              v257 = 0u;
              v258 = 0u;
              v259 = 0u;
            }

            v106 = v95 + v97;
            v107 = v69[3];
            if (v107 == 127)
            {
              v110 = *(v106 + 16);
              v111 = *(v106 + 32);
              v112 = *(v106 + 48);
              v113 = *(v106 + 64);
              v114 = *(v106 + 80);
              v115 = *(v106 + 96);
              v116 = *(v106 + 112);
              v264 = *v106;
              v265 = v110;
              v266 = v113;
              v267 = v114;
              v272 = v111;
              v273 = v112;
              v274 = v115;
              v275 = v116;
              v108 = 128;
            }

            else if (v107 == 3)
            {
              v109 = vld1q_dup_f32(v106);
              v264 = v109;
              v265 = v109;
              v266 = v109;
              v267 = v109;
              v272 = v109;
              v273 = v109;
              v274 = v109;
              v275 = v109;
              v108 = 4;
            }

            else if (v69[3])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 128, v106, v107);
            }

            else
            {
              v108 = 0;
              v266 = 0u;
              v267 = 0u;
              v264 = 0u;
              v265 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
            }

            v117 = v106 + v108;
            v118 = v69[4];
            if (v118 == 127)
            {
              v121 = *(v117 + 16);
              v122 = *(v117 + 32);
              v123 = *(v117 + 48);
              v124 = *(v117 + 64);
              v125 = *(v117 + 80);
              v126 = *(v117 + 96);
              v127 = *(v117 + 112);
              v276 = *v117;
              v277 = v121;
              v278 = v124;
              v279 = v125;
              v284 = v122;
              v285 = v123;
              v286 = v126;
              v287 = v127;
              v119 = 128;
            }

            else if (v118 == 3)
            {
              v120 = vld1q_dup_f32(v117);
              v276 = v120;
              v277 = v120;
              v278 = v120;
              v279 = v120;
              v284 = v120;
              v285 = v120;
              v286 = v120;
              v287 = v120;
              v119 = 4;
            }

            else if (v69[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v117, v118);
            }

            else
            {
              v119 = 0;
              v278 = 0u;
              v279 = 0u;
              v276 = 0u;
              v277 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
            }

            v128 = v117 + v119;
            v129 = v69[5];
            if (v129 == 127)
            {
              v132 = *(v128 + 16);
              v133 = *(v128 + 32);
              v134 = *(v128 + 48);
              v135 = *(v128 + 64);
              v136 = *(v128 + 80);
              v137 = *(v128 + 96);
              v138 = *(v128 + 112);
              v292 = *v128;
              v293 = v132;
              v294 = v135;
              v295 = v136;
              v300 = v133;
              v301 = v134;
              v302 = v137;
              v303 = v138;
              v130 = 128;
            }

            else if (v129 == 3)
            {
              v131 = vld1q_dup_f32(v128);
              v292 = v131;
              v293 = v131;
              v294 = v131;
              v295 = v131;
              v300 = v131;
              v301 = v131;
              v302 = v131;
              v303 = v131;
              v130 = 4;
            }

            else if (v69[5])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v128, v129);
            }

            else
            {
              v130 = 0;
              v294 = 0u;
              v295 = 0u;
              v292 = 0u;
              v293 = 0u;
              v300 = 0u;
              v301 = 0u;
              v302 = 0u;
              v303 = 0u;
            }

            v139 = v128 + v130;
            v140 = v69[6];
            if (v140 == 127)
            {
              v143 = *(v139 + 16);
              v144 = *(v139 + 32);
              v145 = *(v139 + 48);
              v146 = *(v139 + 64);
              v147 = *(v139 + 80);
              v148 = *(v139 + 96);
              v149 = *(v139 + 112);
              v280 = *v139;
              v281 = v143;
              v282 = v146;
              v283 = v147;
              v288 = v144;
              v289 = v145;
              v290 = v148;
              v291 = v149;
              v141 = 128;
            }

            else if (v140 == 3)
            {
              v142 = vld1q_dup_f32(v139);
              v280 = v142;
              v281 = v142;
              v282 = v142;
              v283 = v142;
              v288 = v142;
              v289 = v142;
              v290 = v142;
              v291 = v142;
              v141 = 4;
            }

            else if (v69[6])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
            }

            else
            {
              v141 = 0;
              v282 = 0u;
              v283 = 0u;
              v280 = 0u;
              v281 = 0u;
              v288 = 0u;
              v289 = 0u;
              v290 = 0u;
              v291 = 0u;
            }

            v150 = v139 + v141;
            v151 = v69[7];
            if (v151 == 127)
            {
              v154 = *(v150 + 16);
              v155 = *(v150 + 32);
              v156 = *(v150 + 48);
              v157 = *(v150 + 64);
              v158 = *(v150 + 80);
              v159 = *(v150 + 96);
              v160 = *(v150 + 112);
              v296 = *v150;
              v297 = v154;
              v298 = v157;
              v299 = v158;
              v304 = v155;
              v305 = v156;
              v306 = v159;
              v307 = v160;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v151 != 3)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 128, v150, v151);
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v298 = 0u;
                  v299 = 0u;
                  v296 = 0u;
                  v297 = 0u;
                  v304 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v161 = v240;
                if (!v240)
                {
                  goto LABEL_177;
                }

                v162 = 0;
                v163 = 16 * v238;
                v164 = &v244.i8[128 * v237 + v163];
                v165 = v235;
                v166 = v236;
                v167 = 16 * v240;
                if (16 * v240)
                {
                  v168 = (16 * v240 - 1) >> 32 == 0;
                }

                else
                {
                  v168 = 0;
                }

                v169 = !v168;
                v171 = v164 < &v235[v240] + v236 * (v152 - 1) && v235 < &__dst[128 * v152 + 896 + 128 * v237 + 16 * v240 + v163];
                v172 = v167 & 0x1FFFFFFE0;
                v173 = v169 | (v236 < 0) | v171;
                v174 = &v245 + 128 * v237 + v163;
                v175 = v235 + 1;
                v176 = v164;
                v177 = v235;
                while (2)
                {
                  v178 = v165 + v162 * v166;
                  v179 = &v164[128 * v162];
                  if (v173)
                  {
                    v180 = 0;
LABEL_164:
                    v181 = v180 + 1;
                    do
                    {
                      v182 = *v178++;
                      *v179++ = v182;
                    }

                    while (v167 > v181++);
LABEL_161:
                    ++v162;
                    v174 += 128;
                    v175 = (v175 + v166);
                    v177 = (v177 + v166);
                    v176 += 128;
                    if (v162 == v152)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v161 == 1)
                {
                  v184 = 0;
                }

                else
                {
                  v189 = v175;
                  v190 = v174;
                  v191 = v167 & 0x1FFFFFFE0;
                  do
                  {
                    v192 = *v189;
                    *(v190 - 1) = *(v189 - 1);
                    *v190 = v192;
                    v190 += 2;
                    v189 += 2;
                    v191 -= 32;
                  }

                  while (v191);
                  if (v167 == v172)
                  {
                    goto LABEL_161;
                  }

                  v184 = v167 & 0x1FFFFFFE0;
                  if ((v161 & 1) == 0)
                  {
                    v178 += v172;
                    v179 += v172;
                    v180 = v167 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                v185 = -16 * v161 + v184;
                v186 = (v177 + v184);
                v187 = &v176[v184];
                do
                {
                  v188 = *v186++;
                  *v187 = v188;
                  v187 += 16;
                  v185 += 16;
                }

                while (v185);
                goto LABEL_161;
              }

              v153 = vld1q_dup_f32(v150);
              v296 = v153;
              v297 = v153;
              v298 = v153;
              v299 = v153;
              v304 = v153;
              v305 = v153;
              v306 = v153;
              v307 = v153;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
            if (!v231)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v231)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v72, 0x400uLL);
LABEL_26:
          v21 = v34++ == v219 >> 3;
          result = v228;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v144 = v21;
  v145 = v22;
  v129 = v23;
  v24 = v12;
  v173 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v149 = v14;
  v131 = v14 + a10 - 1;
  v150 = v24;
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
  v130 = v131 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v152 = v32;
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
      v143 = 0;
LABEL_32:
      v140 = v35 - 3;
      v134 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v128 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v143 = v40 >= v34;
    goto LABEL_32;
  }

  v143 = 0;
  v128 = 0;
  v134 = 0;
  v140 = 0;
LABEL_33:
  if (v26 <= v130)
  {
    v142 = v16 + a9 - 1;
    v127 = v16 >> 3;
    if (v16 >> 3 <= v142 >> 3)
    {
      v151 = v27 >> 3;
      v136 = v27 & 7;
      v125 = v28 & 7;
      v126 = v28 >> 3;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v132 = v43;
      v141 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v149)
        {
          v45 = v149;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v131 < v44)
        {
          v44 = v131;
        }

        v139 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v125;
        v138 = v47;
        v49 = v47 != 8;
        v50 = v125 + 1;
        if (v26 != v126)
        {
          v50 = 8;
          v48 = v49;
        }

        v137 = v48;
        v51 = v127;
        v52 = v26 & ~(-1 << v134);
        v147 = v129 + (v45 - v149) * a11;
        v148 = v50;
        v146 = v50;
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

          if (v142 < v54)
          {
            v54 = v142;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v151)
          {
            v58 = v136 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (8 * v26 >= v149 && v53 >= v16)
          {
            v60 = v56 != v136;
            if (v51 != v151)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v137;
          }

          if (v143)
          {
            if (v140 | v134)
            {
              v61 = 0;
              v62 = 0;
              v63 = v134 != 0;
              v64 = 1;
              v66 = v140 != 0;
              v65 = v134;
              v67 = v140;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v51 & ~(-1 << v140) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v65 != 0;
                v66 = v67 != 0;
              }

              while (v65 | v67);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v140) + (v26 >> v134) * v128);
          }

          else if (v133)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v132.i8[0];
            v73 = v132.i8[4];
            v75 = v133.i32[0];
            v74 = v133.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v72 = v75 != 0;
              v73 = v74 != 0;
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

          v89 = (v145 + v88);
          v90 = v147 + 32 * (v55 - v16);
          v91 = (v144 + v76);
          if (v152)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              v96 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v96, v89, v58, v148);
              goto LABEL_111;
            }

            v135 = (v144 + v76);
            v92 = v59;
            v93 = v58;
            v94 = v52;
            v95 = v55;
            memcpy(__dst, (v144 + v76), sizeof(__dst));
            v55 = v95;
            v52 = v94;
            v96 = __dst;
            v59 = v92;
            v91 = v135;
            LOBYTE(v58) = v93;
            result = v150;
          }

          else
          {
            v96 = (v144 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v154 = v96;
          v162 = v58;
          v163 = v148;
          v158 = v139;
          v159 = v55 - v53;
          v155 = v89;
          v156 = v90;
          v157 = a11;
          v160 = v138;
          v161 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v141;
            v97 = v51 + 1;
            if (!v152)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v91, v96, 0x800uLL);
            goto LABEL_46;
          }

          v98 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v96, *v89)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 256, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 256, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 8;
            v108 = 32 * v159;
            v109 = v165 + v107 + v108;
            v110 = v156;
            v111 = v157;
            v112 = 32 * v161;
            if (v112)
            {
              v113 = (v112 - 1) >> 32 == 0;
            }

            else
            {
              v113 = 0;
            }

            v114 = !v113;
            v116 = v109 < v156 + v157 * (v160 - 1) + v112 && v156 < &__dst[256 * v160 + 1792 + 256 * v158 + v112 + v108];
            v117 = v114 | (v157 < 0) | v116;
            v118 = &v165[1] + v107 + v108;
            v119 = (v156 + 16);
            do
            {
              v120 = v119;
              v121 = v118;
              v122 = v112;
              if (v117)
              {
                v123 = 0;
                do
                {
                  v109[v123] = *(v110 + v123);
                  ++v123;
                }

                while (v112 > v123);
              }

              else
              {
                do
                {
                  v124 = *v120;
                  *(v121 - 1) = *(v120 - 1);
                  *v121 = v124;
                  v121 += 2;
                  v120 += 2;
                  v122 -= 32;
                }

                while (v122);
              }

              ++v106;
              v118 += 256;
              v119 = (v119 + v111);
              v109 += 256;
              v110 += v111;
            }

            while (v106 != v105);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v165, 256, v154, v155, v162, v163);
          if (v152)
          {
            goto LABEL_136;
          }

LABEL_46:
          v29 = v51 == v142 >> 3;
          v51 = v97;
          result = v150;
        }

        while (!v29);
        v29 = v26++ == v130;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v144 = v21;
  v145 = v22;
  v129 = v23;
  v24 = v12;
  v173 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v149 = v14;
  v131 = v14 + a10 - 1;
  v150 = v24;
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
  v130 = v131 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v152 = v32;
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
      v143 = 0;
LABEL_32:
      v140 = v35 - 3;
      v134 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v128 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v143 = v40 >= v34;
    goto LABEL_32;
  }

  v143 = 0;
  v128 = 0;
  v134 = 0;
  v140 = 0;
LABEL_33:
  if (v26 <= v130)
  {
    v142 = v16 + a9 - 1;
    v127 = v16 >> 3;
    if (v16 >> 3 <= v142 >> 3)
    {
      v151 = v27 >> 3;
      v136 = v27 & 7;
      v125 = v28 & 7;
      v126 = v28 >> 3;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v132 = v43;
      v141 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v149)
        {
          v45 = v149;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v131 < v44)
        {
          v44 = v131;
        }

        v139 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v125;
        v138 = v47;
        v49 = v47 != 8;
        v50 = v125 + 1;
        if (v26 != v126)
        {
          v50 = 8;
          v48 = v49;
        }

        v137 = v48;
        v51 = v127;
        v52 = v26 & ~(-1 << v134);
        v147 = v129 + (v45 - v149) * a11;
        v148 = v50;
        v146 = v50;
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

          if (v142 < v54)
          {
            v54 = v142;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v151)
          {
            v58 = v136 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (8 * v26 >= v149 && v53 >= v16)
          {
            v60 = v56 != v136;
            if (v51 != v151)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v137;
          }

          if (v143)
          {
            if (v140 | v134)
            {
              v61 = 0;
              v62 = 0;
              v63 = v134 != 0;
              v64 = 1;
              v66 = v140 != 0;
              v65 = v134;
              v67 = v140;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v51 & ~(-1 << v140) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v65 != 0;
                v66 = v67 != 0;
              }

              while (v65 | v67);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v140) + (v26 >> v134) * v128);
          }

          else if (v133)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v132.i8[0];
            v73 = v132.i8[4];
            v75 = v133.i32[0];
            v74 = v133.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v72 = v75 != 0;
              v73 = v74 != 0;
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

          v89 = (v145 + v88);
          v90 = v147 + 32 * (v55 - v16);
          v91 = (v144 + v76);
          if (v152)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              v96 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v96, v89, v58, v148);
              goto LABEL_111;
            }

            v135 = (v144 + v76);
            v92 = v59;
            v93 = v58;
            v94 = v52;
            v95 = v55;
            memcpy(__dst, (v144 + v76), sizeof(__dst));
            v55 = v95;
            v52 = v94;
            v96 = __dst;
            v59 = v92;
            v91 = v135;
            LOBYTE(v58) = v93;
            result = v150;
          }

          else
          {
            v96 = (v144 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v154 = v96;
          v162 = v58;
          v163 = v148;
          v158 = v139;
          v159 = v55 - v53;
          v155 = v89;
          v156 = v90;
          v157 = a11;
          v160 = v138;
          v161 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v141;
            v97 = v51 + 1;
            if (!v152)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v91, v96, 0x800uLL);
            goto LABEL_46;
          }

          v98 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v96, *v89);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 256, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 256, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 8;
            v108 = 32 * v159;
            v109 = v165 + v107 + v108;
            v110 = v156;
            v111 = v157;
            v112 = 32 * v161;
            if (v112)
            {
              v113 = (v112 - 1) >> 32 == 0;
            }

            else
            {
              v113 = 0;
            }

            v114 = !v113;
            v116 = v109 < v156 + v157 * (v160 - 1) + v112 && v156 < &__dst[256 * v160 + 1792 + 256 * v158 + v112 + v108];
            v117 = v114 | (v157 < 0) | v116;
            v118 = &v165[1] + v107 + v108;
            v119 = (v156 + 16);
            do
            {
              v120 = v119;
              v121 = v118;
              v122 = v112;
              if (v117)
              {
                v123 = 0;
                do
                {
                  v109[v123] = *(v110 + v123);
                  ++v123;
                }

                while (v112 > v123);
              }

              else
              {
                do
                {
                  v124 = *v120;
                  *(v121 - 1) = *(v120 - 1);
                  *v121 = v124;
                  v121 += 2;
                  v120 += 2;
                  v122 -= 32;
                }

                while (v122);
              }

              ++v106;
              v118 += 256;
              v119 = (v119 + v111);
              v109 += 256;
              v110 += v111;
            }

            while (v106 != v105);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v165, 256, v154, v155, v162, v163);
          if (v152)
          {
            goto LABEL_136;
          }

LABEL_46:
          v29 = v51 == v142 >> 3;
          v51 = v97;
          result = v150;
        }

        while (!v29);
        v29 = v26++ == v130;
      }

      while (!v29);
    }
  }

  return result;
}