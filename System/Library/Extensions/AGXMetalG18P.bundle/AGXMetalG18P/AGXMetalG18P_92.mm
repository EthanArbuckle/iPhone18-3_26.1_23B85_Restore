uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v236 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v187 = a8;
  v17 = a8 >> 4;
  v169 = a8 + a10 - 1;
  v171 = v169 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v188 = a1;
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
  v191 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v180 = result;
  if (v17 <= v171)
  {
    v179 = a7 + a9 - 1;
    v168 = a7 >> 4;
    if (a7 >> 4 <= v179 >> 4)
    {
      result = a1;
      v189 = (a5 - 1) >> 4;
      v165 = a5 - 1;
      v172 = (a5 - 1) & 0xF;
      v166 = (a6 - 1) & 0xF;
      v167 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v27.i8 = vcgt_u32(v26, 0x1F0000001FLL);
      v28.i64[0] = -1;
      v29.i64[0] = 0x2000000020;
      *v30.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *v27.i8);
      v177 = v30.i64[0];
      v178 = v30.i32[0] | v30.i32[1];
      v176 = v27.i64[0];
      v164 = 8 * v19 * v18;
      do
      {
        v31 = (16 * v17) | 0xF;
        if (16 * v17 <= v187)
        {
          v32 = v187;
        }

        else
        {
          v32 = 16 * v17;
        }

        if (v169 < v31)
        {
          v31 = v169;
        }

        v186 = 16 * v17;
        v175 = v32 - 16 * v17;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v166;
        v174 = v34;
        v36 = v34 != 16;
        v37 = v168;
        v38 = v166 + 1;
        if (v17 != v167)
        {
          v38 = 16;
          v35 = v36;
        }

        v173 = v35;
        v184 = a3 + (v32 - v187) * a11;
        v185 = v38;
        v183 = v38;
        do
        {
          v39 = 16 * v37;
          v40 = 16 * (v37 + 1) - 1;
          if (16 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 16 * v37;
          }

          if (v179 < v40)
          {
            v40 = v179;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v37 == v189)
          {
            v44 = v172 + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (v186 >= v187 && v39 >= a7)
          {
            v46 = v42 != v172;
            if (v37 != v189)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v173;
          }

          if (v180)
          {
            v67 = 0;
            v68 = v164 >> (*(result + 57) != 0);
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
              v71 = 16;
              v70 = 1;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v67 = 16;
              v70 = 1;
              v71 = 16;
            }

            else
            {
              v70 = 1;
              v71 = 0;
              if (v68 == 1024)
              {
                v71 = 8;
                v67 = 16;
              }
            }

            v154 = (v67 >> 4) - 1;
            if (v69)
            {
              v155 = 0;
              if (v70)
              {
                goto LABEL_208;
              }

LABEL_197:
              v156 = 32 - __clz(~(-1 << -__clz(((v71 + 15) >> 4) - 1)));
              if (v156 | v155)
              {
                goto LABEL_198;
              }

LABEL_209:
              v163 = 0;
            }

            else
            {
              v155 = 32 - __clz(~(-1 << -__clz(v154)));
              if ((v70 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v156 = 0;
              if (!v155)
              {
                goto LABEL_209;
              }

LABEL_198:
              v157 = 0;
              v158 = 0;
              v159 = v37 & v154;
              v160 = v155 != 0;
              v161 = v156 != 0;
              v162 = 1;
              do
              {
                --v155;
                if (v160)
                {
                  v158 |= (v162 & v159) << v157++;
                }

                else
                {
                  v155 = 0;
                }

                --v156;
                if (v161)
                {
                  v158 |= (v162 & v17 & ((v71 >> 4) - 1)) << v157++;
                }

                else
                {
                  v156 = 0;
                }

                v162 *= 2;
                --v157;
                v161 = v156 != 0;
                v160 = v155 != 0;
              }

              while (v156 | v155);
              v163 = v158 << 9;
              result = v188;
            }

            v54 = v163 + ((v39 / v67 + v186 / v71 * ((v67 + v165) / v67)) << 14);
            goto LABEL_52;
          }

          if (v178)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v176;
            v51 = BYTE4(v176);
            v53 = v177;
            v52 = HIDWORD(v177);
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
          v55 = *(result + 128) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 15;
          if (v56 < 0x20)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
          }

          v58 = *(result + 132) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
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
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
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
          v74 = (v184 + 2 * (v41 - a7));
          v75 = (a2 + v54);
          __src = (a2 + v54);
          if (v191)
          {
            if (!(v45 & 1 | (v44 < 0x10u) | (v183 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, a11, v75, v72, v44, v185);
              goto LABEL_86;
            }

            v76 = v43;
            memcpy(__dst, __src, sizeof(__dst));
            v43 = v76;
            v75 = __dst;
            result = v188;
          }

          else if (!(v45 & 1 | (v44 < 0x10u) | (v183 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v193 = v75;
          v201 = v44;
          v202 = v185;
          v197 = v175;
          v198 = v41 - v39;
          v194 = v72;
          v195 = v74;
          v196 = a11;
          v199 = v174;
          v200 = v43;
          if ((v45 & 1) == 0)
          {
            v77 = *v72;
            a7 = v73;
            if (v77 == 63)
            {
              v79 = v75[1];
              v28 = v75[2];
              v29 = v75[3];
              v80 = vuzp2q_s32(*v75, v28);
              v204 = vuzp1q_s32(*v75, v28);
              v206 = v80;
              v30 = vuzp1q_s32(v79, v29);
              v27 = vuzp2q_s32(v79, v29);
              v208 = v30;
              v210 = v27;
              v78 = 64;
            }

            else if (v77 == 1)
            {
              v30 = vld1q_dup_s16(v75->i16);
              v204 = v30;
              v206 = v30;
              v208 = v30;
              v210 = v30;
              v78 = 2;
            }

            else if (*v72)
            {
              v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v204, 32, v75, v77, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v78 = 0;
              v204 = 0uLL;
              v206 = 0uLL;
              v208 = 0uLL;
              v210 = 0uLL;
            }

            v81 = v75->i64 + v78;
            v82 = v72[1];
            if (v82 == 63)
            {
              v84 = *(v81 + 16);
              v28 = *(v81 + 32);
              v29 = *(v81 + 48);
              v85 = vuzp2q_s32(*v81, v28);
              v212 = vuzp1q_s32(*v81, v28);
              v214 = v85;
              v30 = vuzp1q_s32(v84, v29);
              v27 = vuzp2q_s32(v84, v29);
              v216 = v30;
              v218 = v27;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v30 = vld1q_dup_s16(v81);
              v212 = v30;
              v214 = v30;
              v216 = v30;
              v218 = v30;
              v83 = 2;
            }

            else if (v72[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v81, v82, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v83 = 0;
              v212 = 0uLL;
              v214 = 0uLL;
              v216 = 0uLL;
              v218 = 0uLL;
            }

            v86 = v81 + v83;
            v87 = v72[2];
            if (v87 == 63)
            {
              v89 = *(v86 + 16);
              v28 = *(v86 + 32);
              v29 = *(v86 + 48);
              v90 = vuzp2q_s32(*v86, v28);
              v205 = vuzp1q_s32(*v86, v28);
              v207 = v90;
              v30 = vuzp1q_s32(v89, v29);
              v27 = vuzp2q_s32(v89, v29);
              v209 = v30;
              v211 = v27;
              v88 = 64;
            }

            else if (v87 == 1)
            {
              v30 = vld1q_dup_s16(v86);
              v205 = v30;
              v207 = v30;
              v209 = v30;
              v211 = v30;
              v88 = 2;
            }

            else if (v72[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v205, 32, v86, v87, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v88 = 0;
              v205 = 0uLL;
              v207 = 0uLL;
              v209 = 0uLL;
              v211 = 0uLL;
            }

            v91 = v86 + v88;
            v92 = v72[3];
            if (v92 == 63)
            {
              v94 = *(v91 + 16);
              v28 = *(v91 + 32);
              v29 = *(v91 + 48);
              v95 = vuzp2q_s32(*v91, v28);
              v213 = vuzp1q_s32(*v91, v28);
              v215 = v95;
              v30 = vuzp1q_s32(v94, v29);
              v27 = vuzp2q_s32(v94, v29);
              v217 = v30;
              v219 = v27;
              v93 = 64;
            }

            else if (v92 == 1)
            {
              v30 = vld1q_dup_s16(v91);
              v213 = v30;
              v215 = v30;
              v217 = v30;
              v219 = v30;
              v93 = 2;
            }

            else if (v72[3])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v91, v92, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v93 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
              v217 = 0uLL;
              v219 = 0uLL;
            }

            v96 = v91 + v93;
            v97 = v72[4];
            if (v97 == 63)
            {
              v99 = *(v96 + 16);
              v28 = *(v96 + 32);
              v29 = *(v96 + 48);
              v100 = vuzp2q_s32(*v96, v28);
              v220 = vuzp1q_s32(*v96, v28);
              v222 = v100;
              v30 = vuzp1q_s32(v99, v29);
              v27 = vuzp2q_s32(v99, v29);
              v224 = v30;
              v226 = v27;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v30 = vld1q_dup_s16(v96);
              v220 = v30;
              v222 = v30;
              v224 = v30;
              v226 = v30;
              v98 = 2;
            }

            else if (v72[4])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v96, v97, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v98 = 0;
              v220 = 0uLL;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
            }

            v101 = v96 + v98;
            v102 = v72[5];
            if (v102 == 63)
            {
              v104 = *(v101 + 16);
              v28 = *(v101 + 32);
              v29 = *(v101 + 48);
              v105 = vuzp2q_s32(*v101, v28);
              v228 = vuzp1q_s32(*v101, v28);
              v230 = v105;
              v30 = vuzp1q_s32(v104, v29);
              v27 = vuzp2q_s32(v104, v29);
              v232 = v30;
              v234 = v27;
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v30 = vld1q_dup_s16(v101);
              v228 = v30;
              v230 = v30;
              v232 = v30;
              v234 = v30;
              v103 = 2;
            }

            else if (v72[5])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v101, v102, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v103 = 0;
              v228 = 0uLL;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
            }

            v106 = v101 + v103;
            v107 = v72[6];
            if (v107 == 63)
            {
              v109 = *(v106 + 16);
              v28 = *(v106 + 32);
              v29 = *(v106 + 48);
              v110 = vuzp2q_s32(*v106, v28);
              v221 = vuzp1q_s32(*v106, v28);
              v223 = v110;
              v30 = vuzp1q_s32(v109, v29);
              v27 = vuzp2q_s32(v109, v29);
              v225 = v30;
              v227 = v27;
              v108 = 64;
            }

            else if (v107 == 1)
            {
              v30 = vld1q_dup_s16(v106);
              v221 = v30;
              v223 = v30;
              v225 = v30;
              v227 = v30;
              v108 = 2;
            }

            else if (v72[6])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v106, v107, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v108 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v111 = v106 + v108;
            v112 = v72[7];
            if (v112 == 63)
            {
              v115 = *(v111 + 16);
              v116 = *(v111 + 32);
              v117 = *(v111 + 48);
              v118 = vuzp2q_s32(*v111, v116);
              v229 = vuzp1q_s32(*v111, v116);
              v231 = v118;
              v233 = vuzp1q_s32(v115, v117);
              v235 = vuzp2q_s32(v115, v117);
              v113 = v199;
              if (v199)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v112 != 1)
              {
                if (v72[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v111, v112, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
                  v113 = v199;
                  if (!v199)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v229 = 0uLL;
                  v231 = 0uLL;
                  v233 = 0uLL;
                  v235 = 0uLL;
                  v113 = v199;
                  if (!v199)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v119 = v200;
                if (!v200)
                {
                  goto LABEL_178;
                }

                v120 = 0;
                v121 = 32 * v197;
                v122 = 2 * v198;
                v123 = &v204 + v121 + v122;
                v124 = v195;
                v125 = v196;
                v126 = 2 * v200;
                if (2 * v200)
                {
                  v127 = (2 * v200 - 1) >> 32 == 0;
                }

                else
                {
                  v127 = 0;
                }

                v128 = !v127;
                v130 = v123 < v195 + 2 * v200 + v196 * (v113 - 1) && v195 < (&__dst[2 * v113 + 30 + 2 * v197] + 2 * v200 + v122);
                v131 = v130 || v196 < 0;
                v132 = v126 & 0x1FFFFFFE0;
                v133 = v126 & 0x1FFFFFFF8;
                v134 = (v200 < 4) | v128 | v131;
                v135 = &v205.i8[v121 + v122];
                v136 = v195 + 1;
                v137 = v123;
                v138 = v195;
                while (2)
                {
                  v139 = v124 + v120 * v125;
                  v140 = &v123[32 * v120];
                  if (v134)
                  {
                    v141 = 0;
LABEL_175:
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
                    if (v119 >= 0x10)
                    {
                      v143 = v136;
                      v144 = v135;
                      v145 = v126 & 0x1FFFFFFE0;
                      do
                      {
                        v146 = *v143;
                        *(v144 - 1) = v143[-1];
                        *v144 = v146;
                        v144 += 32;
                        v143 += 2;
                        v145 -= 32;
                      }

                      while (v145);
                      if (v126 == v132)
                      {
                        goto LABEL_161;
                      }

                      v142 = v126 & 0x1FFFFFFE0;
                      if ((v119 & 0xC) == 0)
                      {
                        v139 += v132;
                        v140 += v132;
                        v141 = v126 & 0xFFFFFFE0;
                        goto LABEL_175;
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
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v120;
                  v135 += 32;
                  v136 = (v136 + v125);
                  v138 = (v138 + v125);
                  v137 += 32;
                  if (v120 == v113)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v114 = vld1q_dup_s16(v111);
              v229 = v114;
              v231 = v114;
              v233 = v114;
              v235 = v114;
              v113 = v199;
              if (v199)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v204, 32, v193, v194, v201, v202);
            if (!v191)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v73;
          if (!v191)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v75, 0x200uLL);
LABEL_26:
          v21 = v37++ == v179 >> 4;
          result = v188;
        }

        while (!v21);
        v21 = v17++ == v171;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v134 = a8 + a10 - 1;
  v152 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v133 = v134 >> 4;
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
      v145 = 0;
LABEL_32:
      v142 = v27 - 4;
      v137 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v131 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v145 = v32 >= v26;
    goto LABEL_32;
  }

  v145 = 0;
  v131 = 0;
  v137 = 0;
  v142 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v144 = a7 + a9 - 1;
    v130 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      v154 = v19 >> 4;
      v138 = v19 & 0xF;
      v128 = v20 & 0xF;
      v129 = v20 >> 4;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v135 = v35;
      v143 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v151)
        {
          v37 = v151;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v141 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v140 = v39;
        v41 = v39 != 16;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 16;
          v40 = v41;
        }

        v139 = v40;
        v43 = v130;
        v149 = a3 + (v37 - v151) * a11;
        v150 = v42;
        v148 = v42;
        do
        {
          v44 = 16 * v43;
          v45 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 16 * v43;
          }

          if (v144 < v45)
          {
            v45 = v144;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v138 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (16 * v18 >= v151 && v44 >= a7)
          {
            v51 = v47 != v138;
            if (v43 != v154)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v139;
          }

          if (v145)
          {
            if (v142 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v142 != 0;
              v56 = v137;
              v58 = v142;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v142) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v56;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v137) & v55) << v52++;
                }

                else
                {
                  v56 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v56 != 0;
                v57 = v58 != 0;
              }

              while (v56 | v58);
              v59 = v53 << 10;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v142) + (v18 >> v137) * v131);
          }

          else if (v136)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v135.i8[0];
            v64 = v135.i8[4];
            v66 = v136.i32[0];
            v65 = v136.i32[1];
            do
            {
              --v65;
              if (v64)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v63)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v63 = v66 != 0;
              v64 = v65 != 0;
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

          v69 = v68 + 15;
          if (v69 < 0x20)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 4) - 1)));
          }

          v71 = *(result + 132) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          if (v73 | v70)
          {
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
          }

          else
          {
            v79 = 0;
          }

          v80 = (a4 + v79);
          v81 = v149 + 4 * (v46 - a7);
          v155 = (a2 + v67);
          if (v156)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              v83 = __dst;
LABEL_110:
              __src = v83;
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v83, v80, v49, v150);
LABEL_111:
              a7 = v143;
              v84 = v43 + 1;
              goto LABEL_145;
            }

            v82 = v49;
            memcpy(__dst, (a2 + v67), sizeof(__dst));
            LOBYTE(v49) = v82;
            v83 = __dst;
            result = v152;
          }

          else
          {
            v83 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v83;
          v166 = v49;
          v167 = v150;
          v162 = v141;
          v163 = v46 - v44;
          v159 = v80;
          v160 = v81;
          v161 = a11;
          v164 = v140;
          v165 = v48;
          __src = v83;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_111;
          }

          v85 = &v83->i8[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v83, *v80)];
          v86 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v85, v80[1]));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v86, v80[2]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v87, v80[3]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v88, v80[4]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v89, v80[5]));
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v90, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 64, (v90 + v91), v80[7]);
          v92 = v164;
          a7 = v143;
          v84 = v43 + 1;
          if (v164)
          {
            v93 = v165;
            if (v165)
            {
              v94 = 0;
              v95 = v162 << 6;
              v96 = 4 * v163;
              v97 = &v169[0].i8[v95 + v96];
              v98 = v160;
              v99 = v161;
              v100 = 4 * v165;
              if (4 * v165)
              {
                v101 = (4 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v160 + v161 * (v164 - 1) + 4 * v165 && v160 < &__dst[64 * v164 + 960 + 64 * v162 + 4 * v165 + v96];
              v105 = v104 || v161 < 0;
              v106 = v100 & 0x1FFFFFFE0;
              v107 = v100 & 0x1FFFFFFF8;
              v108 = (v165 == 1) | v102 | v105;
              v109 = &v169[1].i8[v95 + v96];
              v110 = (v160 + 16);
              v111 = v97;
              v112 = v160;
              do
              {
                v113 = (v98 + v94 * v99);
                v114 = &v97[64 * v94];
                if (v108)
                {
                  v115 = 0;
                  goto LABEL_141;
                }

                if (v93 >= 8)
                {
                  v117 = v110;
                  v118 = v109;
                  v119 = v100 & 0x1FFFFFFE0;
                  do
                  {
                    v120 = *v117;
                    *(v118 - 1) = *(v117 - 1);
                    *v118 = v120;
                    v118 += 32;
                    v117 += 2;
                    v119 -= 32;
                  }

                  while (v119);
                  if (v100 == v106)
                  {
                    goto LABEL_127;
                  }

                  v116 = v100 & 0x1FFFFFFE0;
                  if ((v93 & 6) == 0)
                  {
                    v113 += v106;
                    v114 += v106;
                    v115 = v100 & 0xFFFFFFE0;
                    goto LABEL_141;
                  }
                }

                else
                {
                  v116 = 0;
                }

                v114 += v107;
                v121 = -8 * ((v93 >> 1) & 0x3FFFFFFF) + v116;
                v122 = (v112 + v116);
                v123 = &v111[v116];
                do
                {
                  v124 = *v122++;
                  *v123 = v124;
                  v123 += 8;
                  v121 += 8;
                }

                while (v121);
                if (v100 == v107)
                {
                  goto LABEL_127;
                }

                v113 += v107;
                v115 = v100 & 0xFFFFFFF8;
LABEL_141:
                v125 = v115 + 1;
                do
                {
                  v126 = *v113++;
                  *v114++ = v126;
                }

                while (v100 > v125++);
LABEL_127:
                ++v94;
                v109 += 64;
                v110 = (v110 + v99);
                v112 += v99;
                v111 += 64;
              }

              while (v94 != v92);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 64, v158, v159, v166, v167);
LABEL_145:
          if (v156)
          {
            memcpy(v155, __src, 0x400uLL);
          }

          v21 = v43 == v144 >> 4;
          v43 = v84;
          result = v152;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v232 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v208 = a8;
  v189 = a8 + a10 - 1;
  v209 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v188 = v189 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v211 = v24;
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
      v203 = 0;
LABEL_32:
      v199 = v27 - 4;
      v193 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v186 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v186 = 0;
  v193 = 0;
  v199 = 0;
LABEL_33:
  if (v18 <= v188)
  {
    v202 = a7 + a9 - 1;
    v185 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v34 = a11;
      v210 = v19 >> 4;
      v195 = v19 & 0xF;
      v183 = v20 & 0xF;
      v184 = v20 >> 4;
      v182 = ~(-1 << v193);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v36 = vcgt_u32(v35, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 4uLL))))))), v36);
      v191 = v36;
      v37 = 4 * a11;
      v38 = 2 * a11;
      v201 = a7;
      do
      {
        v39 = (16 * v18) | 0xF;
        if (16 * v18 <= v208)
        {
          v40 = v208;
        }

        else
        {
          v40 = 16 * v18;
        }

        if (v189 < v39)
        {
          v39 = v189;
        }

        v198 = v40 - 16 * v18;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v183;
        v197 = v42;
        v44 = v185;
        if (v18 == v184)
        {
          v45 = v183 + 1;
        }

        else
        {
          v45 = 16;
        }

        if (v18 != v184)
        {
          v43 = v42 != 16;
        }

        v196 = v43;
        v46 = v18 & v182;
        v207 = a3 + (v40 - v208) * v34;
        v206 = v45;
        v190 = v45;
        do
        {
          v47 = 16 * v44;
          v48 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 16 * v44;
          }

          if (v202 < v48)
          {
            v48 = v202;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v44 == v210)
          {
            v52 = v195 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (16 * v18 >= v208 && v47 >= a7)
          {
            v54 = v50 != v195;
            if (v44 != v210)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v196;
          }

          if (v203)
          {
            if (v199 | v193)
            {
              v55 = 0;
              v56 = 0;
              v57 = v193 != 0;
              v58 = 1;
              v60 = v199 != 0;
              v59 = v193;
              v61 = v199;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v44 & ~(-1 << v199) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v46 & v58) << v55++;
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
              v62 = v56 << 10;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(result + 336) * ((v44 >> v199) + (v18 >> v193) * v186);
          }

          else if (v192)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v191.i8[0];
            v67 = v191.i8[4];
            v69 = v192.i32[0];
            v68 = v192.i32[1];
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
                v64 |= (v65 & v18) << v63++;
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
            v70 = v64 << 10;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(result + 128) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          v74 = *(result + 132) >> (*(result + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_107:
              v82 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_107;
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
              v78 |= (v81 & v18) << v77++;
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
LABEL_108:
          v83 = (a4 + v82);
          v84 = v207 + 4 * (v49 - a7);
          v85 = (a2 + v70);
          if (v211)
          {
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              v86 = (a2 + v70);
              v87 = v51;
              v88 = v53;
              memcpy(v223, v85, sizeof(v223));
              v47 = 16 * v44;
              v53 = v88;
              v34 = a11;
              v51 = v87;
              v46 = v18 & v182;
              v45 = v190;
              v89 = v223;
              v85 = v86;
              result = v209;
LABEL_112:
              __dst = v85;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v213 = v89;
              v221 = v52;
              v222 = v45;
              v217 = v198;
              v218 = v49 - v47;
              v214 = v83;
              v215 = v84;
              v216 = v34;
              v219 = v197;
              v220 = v51;
              if (v53)
              {
                v90 = v89;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v89 = v90;
                result = v209;
                a7 = v201;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                goto LABEL_114;
              }

              v194 = v89;
              v115 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, v89, *v83));
              v116 = (v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v226, 64, v115, v83[1]));
              v117 = (v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v225, 64, v116, v83[2]));
              v118 = (v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v227, 64, v117, v83[3]));
              v119 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v228, 64, v118, v83[4]));
              v120 = (v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v230, 64, v119, v83[5]));
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v229, 64, v120, v83[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v231, 64, (v120 + v121), v83[7]);
              v122 = v219;
              if (!v219 || (v123 = v220) == 0)
              {
LABEL_159:
                v159 = v213;
                v160 = v214;
                v161 = v221;
                v162 = &byte_29D2F2FD5;
                v163 = 16;
                v164 = v222;
                a7 = v201;
                result = v209;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                v89 = v194;
                do
                {
                  v179 = *v162;
                  v180 = *(v162 - 1);
                  if (v161 <= 8 * v180 || 4 * v179 >= v164)
                  {
                    v178 = 0;
                  }

                  else
                  {
                    v165 = &v224[16 * v179 + 2 * v180];
                    v166 = v165[1];
                    v167 = v165[4];
                    v168 = v165[5];
                    v169 = vzip1q_s64(*v165, v167);
                    v170 = vzip2q_s64(*v165, v167);
                    v171 = vzip1q_s64(v166, v168);
                    v172 = vzip2q_s64(v166, v168);
                    v173 = v165[8];
                    v174 = v165[9];
                    v165 += 12;
                    v175 = v165[1];
                    v176 = vzip1q_s64(v173, *v165);
                    v177 = vzip2q_s64(v173, *v165);
                    *v159 = v169;
                    v159[1] = v170;
                    v159[2] = v176;
                    v159[3] = v177;
                    v159[4] = v171;
                    v159[5] = v172;
                    v159[6] = vzip1q_s64(v174, v175);
                    v159[7] = vzip2q_s64(v174, v175);
                    v159 += 8;
                    v178 = 127;
                  }

                  *v160++ = v178;
                  v162 += 2;
                  v163 -= 2;
                }

                while (v163);
LABEL_114:
                v85 = __dst;
                if (v211)
                {
                  goto LABEL_49;
                }

                goto LABEL_50;
              }

              v124 = 0;
              v125 = v217 << 6;
              v126 = 4 * v218;
              v127 = &v224[0].i8[v125 + v126];
              v128 = v215;
              v129 = v216;
              v130 = 4 * v220;
              if (4 * v220)
              {
                v131 = (4 * v220 - 1) >> 32 == 0;
              }

              else
              {
                v131 = 0;
              }

              v132 = !v131;
              v134 = v127 < v215 + v216 * (v219 - 1) + 4 * v220 && v215 < &v223[64 * v219 + 960 + 64 * v217 + 4 * v220 + v126];
              v135 = v134 || v216 < 0;
              v136 = v130 & 0x1FFFFFFE0;
              v137 = v130 & 0x1FFFFFFF8;
              v138 = (v220 == 1) | v132 | v135;
              v139 = &v224[1].i8[v125 + v126];
              v140 = (v215 + 16);
              v141 = -8 * ((v220 >> 1) & 0x3FFFFFFF);
              v142 = v127;
              v143 = v215;
              while (2)
              {
                v144 = (v128 + v124 * v129);
                v145 = &v127[64 * v124];
                if (v138)
                {
                  v146 = 0;
LABEL_156:
                  v156 = v146 + 1;
                  do
                  {
                    v157 = *v144++;
                    *v145++ = v157;
                  }

                  while (v130 > v156++);
                }

                else
                {
                  if (v123 >= 8)
                  {
                    v148 = v140;
                    v149 = v139;
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
                    if (v130 == v136)
                    {
                      goto LABEL_142;
                    }

                    v147 = v130 & 0x1FFFFFFE0;
                    if ((v123 & 6) == 0)
                    {
                      v144 += v136;
                      v145 += v136;
                      v146 = v130 & 0xFFFFFFE0;
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v145 += v137;
                  v152 = v141 + v147;
                  v153 = (v143 + v147);
                  v154 = &v142[v147];
                  do
                  {
                    v155 = *v153++;
                    *v154 = v155;
                    v154 += 8;
                    v152 += 8;
                  }

                  while (v152);
                  if (v130 != v137)
                  {
                    v144 += v137;
                    v146 = v130 & 0xFFFFFFF8;
                    goto LABEL_156;
                  }
                }

LABEL_142:
                ++v124;
                v139 += 64;
                v140 = (v140 + v129);
                v143 += v129;
                v142 += 64;
                if (v124 == v122)
                {
                  goto LABEL_159;
                }

                continue;
              }
            }

            v89 = v223;
          }

          else
          {
            v89 = (a2 + v70);
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              goto LABEL_112;
            }
          }

          v92 = &byte_29D2F2FD5;
          v93 = 16;
          v94 = v89;
          do
          {
            v112 = *v92;
            v113 = *(v92 - 1);
            if (v52 <= 8 * v113 || 4 * v112 >= v45)
            {
              v111 = 0;
            }

            else
            {
              v95 = (v84 + v37 * v112 + 32 * v113);
              v96 = (v95 + v34);
              v98 = *v95;
              v99 = v95[1];
              v97 = (v95 + v38);
              v100 = v96[1];
              v101 = vzip1q_s64(v98, *v96);
              v102 = vzip2q_s64(v98, *v96);
              v103 = vzip1q_s64(v99, v100);
              v104 = vzip2q_s64(v99, v100);
              v106 = *v97;
              v107 = v97[1];
              v105 = (v97 + v34);
              v108 = v105[1];
              v109 = vzip1q_s64(v106, *v105);
              v110 = vzip2q_s64(v106, *v105);
              *v94 = v101;
              v94[1] = v102;
              v94[2] = v109;
              v94[3] = v110;
              v94[4] = v103;
              v94[5] = v104;
              v94[6] = vzip1q_s64(v107, v108);
              v94[7] = vzip2q_s64(v107, v108);
              v94 += 8;
              v111 = 127;
            }

            *v83++ = v111;
            v92 += 2;
            v93 -= 2;
          }

          while (v93);
          a7 = v201;
          v91 = v44 + 1;
          if (v211)
          {
LABEL_49:
            memcpy(v85, v89, 0x400uLL);
            v38 = 2 * a11;
            v37 = 4 * a11;
            result = v209;
          }

LABEL_50:
          v21 = v44 == v202 >> 4;
          v44 = v91;
        }

        while (!v21);
        v21 = v18++ == v188;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v17 = a8 >> 4;
  v134 = a8 + a10 - 1;
  v136 = v134 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v153 = a1;
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
      v154 = (a5 - 1) >> 4;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 0xF;
      v131 = (a6 - 1) & 0xF;
      v132 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v141 = v27;
      v129 = 8 * v19 * v18;
      v143 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v152)
        {
          v29 = v152;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v134 < v28)
        {
          v28 = v134;
        }

        v151 = 16 * v17;
        v140 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v131;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v133;
        v35 = v131 + 1;
        if (v17 != v132)
        {
          v35 = 16;
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
          if (v34 == v154)
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
            if (v34 != v154)
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v119 = (v64 >> 4) - 1;
            if (v66)
            {
              v120 = 0;
              if (v67)
              {
                goto LABEL_150;
              }

LABEL_139:
              v121 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v121 | v120)
              {
                goto LABEL_140;
              }

LABEL_151:
              v128 = 0;
            }

            else
            {
              v120 = 32 - __clz(~(-1 << -__clz(v119)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v121 = 0;
              if (!v120)
              {
                goto LABEL_151;
              }

LABEL_140:
              v122 = 0;
              v123 = 0;
              v124 = v34 & v119;
              v125 = v120 != 0;
              v126 = v121 != 0;
              v127 = 1;
              do
              {
                --v120;
                if (v125)
                {
                  v123 |= (v127 & v124) << v122++;
                }

                else
                {
                  v120 = 0;
                }

                --v121;
                if (v126)
                {
                  v123 |= (v127 & v17 & ((v68 >> 4) - 1)) << v122++;
                }

                else
                {
                  v121 = 0;
                }

                v127 *= 2;
                --v122;
                v126 = v121 != 0;
                v125 = v120 != 0;
              }

              while (v121 | v120);
              v128 = v123 << 10;
              result = v153;
            }

            v51 = v128 + ((v36 / v64 + v151 / v68 * ((v64 + v130) / v64)) << 14);
            goto LABEL_52;
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v70 = v149 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v75, v69, v41, v150);
              goto LABEL_86;
            }

            v72 = v41;
            v73 = (a2 + v51);
            v74 = v40;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            v75 = __dst;
            v40 = v74;
            v71 = v73;
            LOBYTE(v41) = v72;
            result = v153;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v75;
          v165 = v41;
          v166 = v150;
          v161 = v140;
          v162 = v38 - v36;
          v158 = v69;
          v159 = v70;
          v160 = a11;
          v163 = v139;
          v164 = v40;
          if ((v42 & 1) == 0)
          {
            v76 = &v75->i8[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v75, *v69)];
            v77 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v76, v69[1]));
            v78 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v77, v69[2]));
            v79 = (v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[3]));
            v80 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v79, v69[4]));
            v81 = (v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80, v69[5]));
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v81, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, (v81 + v82), v69[7]);
            v83 = v163;
            a7 = v143;
            if (!v163 || (v84 = v164) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
              if (!v155)
              {
                goto LABEL_26;
              }

              goto LABEL_121;
            }

            v85 = 0;
            v86 = v161 << 6;
            v87 = 4 * v162;
            v88 = &v168[0].i8[v86 + v87];
            v89 = v159;
            v90 = v160;
            v91 = 4 * v164;
            if (4 * v164)
            {
              v92 = (4 * v164 - 1) >> 32 == 0;
            }

            else
            {
              v92 = 0;
            }

            v93 = !v92;
            v95 = v88 < v159 + v160 * (v163 - 1) + 4 * v164 && v159 < &__dst[64 * v163 + 960 + 64 * v161 + 4 * v164 + v87];
            v96 = v95 || v160 < 0;
            v97 = v91 & 0x1FFFFFFE0;
            v98 = v91 & 0x1FFFFFFF8;
            v99 = (v164 == 1) | v93 | v96;
            v100 = &v168[1].i8[v86 + v87];
            v101 = (v159 + 16);
            v102 = v88;
            v103 = v159;
            while (2)
            {
              v104 = (v89 + v85 * v90);
              v105 = &v88[64 * v85];
              if (v99)
              {
                v106 = 0;
LABEL_117:
                v116 = v106 + 1;
                do
                {
                  v117 = *v104++;
                  *v105++ = v117;
                }

                while (v91 > v116++);
              }

              else
              {
                if (v84 >= 8)
                {
                  v108 = v101;
                  v109 = v100;
                  v110 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 32;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v91 == v97)
                  {
                    goto LABEL_103;
                  }

                  v107 = v91 & 0x1FFFFFFE0;
                  if ((v84 & 6) == 0)
                  {
                    v104 += v97;
                    v105 += v97;
                    v106 = v91 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v107 = 0;
                }

                v105 += v98;
                v112 = -8 * ((v84 >> 1) & 0x3FFFFFFF) + v107;
                v113 = (v103 + v107);
                v114 = &v102[v107];
                do
                {
                  v115 = *v113++;
                  *v114 = v115;
                  v114 += 8;
                  v112 += 8;
                }

                while (v112);
                if (v91 != v98)
                {
                  v104 += v98;
                  v106 = v91 & 0xFFFFFFF8;
                  goto LABEL_117;
                }
              }

LABEL_103:
              ++v85;
              v100 += 64;
              v101 = (v101 + v90);
              v103 += v90;
              v102 += 64;
              if (v85 == v83)
              {
                goto LABEL_120;
              }

              continue;
            }
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v143;
          if (!v155)
          {
            goto LABEL_26;
          }

LABEL_121:
          memcpy(v71, v75, 0x400uLL);
LABEL_26:
          v21 = v34++ == v144 >> 4;
          result = v153;
        }

        while (!v21);
        v21 = v17++ == v136;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v225 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8;
  v16 = a8 >> 4;
  v182 = a8 + a10 - 1;
  v184 = v182 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v202 = a1;
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
  v204 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v194 = isLevelTiled;
  v26 = a7;
  if (v16 <= v184)
  {
    v193 = a7 + a9 - 1;
    if (a7 >> 4 <= v193 >> 4)
    {
      v27 = a11;
      v203 = (a5 - 1) >> 4;
      v179 = a5 - 1;
      v187 = (a5 - 1) & 0xF;
      v180 = (a6 - 1) & 0xF;
      v181 = (a6 - 1) >> 4;
      v28 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v29 = vcgt_u32(v28, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v28, 4uLL))))))), v29);
      v191 = v29;
      v178 = 8 * v18 * v17;
      v30 = 2 * a11;
      do
      {
        v31 = (16 * v16) | 0xF;
        if (16 * v16 <= v201)
        {
          v32 = v201;
        }

        else
        {
          v32 = 16 * v16;
        }

        if (v182 < v31)
        {
          v31 = v182;
        }

        v200 = 16 * v16;
        v190 = v32 - 16 * v16;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v180;
        v189 = v34;
        v36 = a7 >> 4;
        if (v16 == v181)
        {
          v37 = v180 + 1;
        }

        else
        {
          v37 = 16;
        }

        if (v16 != v181)
        {
          v35 = v34 != 16;
        }

        v188 = v35;
        v199 = a3 + (v32 - v201) * v27;
        v198 = v37;
        v185 = v37;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v26)
          {
            v40 = v26;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v193 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v36 == v203)
          {
            v43 = v187 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v200 >= v201 && v38 >= v26)
          {
            v45 = v41 != v187;
            if (v36 != v203)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v188;
          }

          if (v194)
          {
            v66 = 0;
            v67 = v178 >> (*(v25 + 57) != 0);
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
              v70 = 16;
              v69 = 1;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v66 = 16;
              v69 = 1;
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

            v168 = (v66 >> 4) - 1;
            if (v68)
            {
              v169 = 0;
              if (v69)
              {
                goto LABEL_168;
              }

LABEL_157:
              v170 = 32 - __clz(~(-1 << -__clz(((v70 + 15) >> 4) - 1)));
              if (v170 | v169)
              {
                goto LABEL_158;
              }

LABEL_169:
              v177 = 0;
            }

            else
            {
              v169 = 32 - __clz(~(-1 << -__clz(v168)));
              if ((v69 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_168:
              v170 = 0;
              if (!v169)
              {
                goto LABEL_169;
              }

LABEL_158:
              v171 = 0;
              v172 = 0;
              v173 = v36 & v168;
              v174 = v169 != 0;
              v175 = v170 != 0;
              v176 = 1;
              do
              {
                --v169;
                if (v174)
                {
                  v172 |= (v176 & v173) << v171++;
                }

                else
                {
                  v169 = 0;
                }

                --v170;
                if (v175)
                {
                  v172 |= (v176 & v16 & ((v70 >> 4) - 1)) << v171++;
                }

                else
                {
                  v170 = 0;
                }

                v176 *= 2;
                --v171;
                v175 = v170 != 0;
                v174 = v169 != 0;
              }

              while (v170 | v169);
              v177 = v172 << 10;
            }

            v53 = v177 + ((v38 / v66 + v200 / v70 * ((v66 + v179) / v66)) << 14);
            goto LABEL_55;
          }

          if (v192)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v191.i8[0];
            v50 = v191.i8[4];
            v52 = v192.i32[0];
            v51 = v192.i32[1];
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v36) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v52 = 0;
              }

              v48 *= 2;
              --v46;
              v49 = v52 != 0;
              v50 = v51 != 0;
            }

            while (v52 | v51);
            v53 = v47 << 10;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(v25 + 128) >> (*(v25 + 144) + a12);
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

          v57 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 15;
          if (v58 < 0x20)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_80:
              v65 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_80;
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
              v61 |= (v64 & v36) << v60++;
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
LABEL_81:
          v71 = (a4 + v65);
          v72 = v199 + 4 * (v40 - v26);
          v73 = (a2 + v53);
          if (v204)
          {
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              v77 = __dst;
LABEL_90:
              v79 = &byte_29D2F2FD5;
              v80 = 16;
              v81 = v77;
              do
              {
                v99 = *v79;
                v100 = *(v79 - 1);
                if (v43 <= 8 * v100 || 4 * v99 >= v37)
                {
                  v98 = 0;
                }

                else
                {
                  v82 = (v72 + 4 * a11 * v99 + 32 * v100);
                  v83 = (v82 + v27);
                  v85 = *v82;
                  v86 = v82[1];
                  v84 = (v82 + v30);
                  v87 = v83[1];
                  v88 = vzip1q_s64(v85, *v83);
                  v89 = vzip2q_s64(v85, *v83);
                  v90 = vzip1q_s64(v86, v87);
                  v91 = vzip2q_s64(v86, v87);
                  v93 = *v84;
                  v94 = v84[1];
                  v92 = (v84 + v27);
                  v95 = v92[1];
                  v96 = vzip1q_s64(v93, *v92);
                  v97 = vzip2q_s64(v93, *v92);
                  *v81 = v88;
                  v81[1] = v89;
                  v81[2] = v96;
                  v81[3] = v97;
                  v81[4] = v90;
                  v81[5] = v91;
                  v81[6] = vzip1q_s64(v94, v95);
                  v81[7] = vzip2q_s64(v94, v95);
                  v81 += 8;
                  v98 = 127;
                }

                *v71++ = v98;
                v79 += 2;
                v80 -= 2;
              }

              while (v80);
              goto LABEL_87;
            }

            v74 = v42;
            v75 = v44;
            v76 = v40;
            memcpy(__dst, v73, sizeof(__dst));
            v77 = __dst;
            v40 = v76;
            v44 = v75;
            v37 = v185;
            v42 = v74;
            v27 = a11;
            v30 = 2 * a11;
            v25 = v202;
          }

          else
          {
            v77 = (a2 + v53);
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v206 = v77;
          v214 = v43;
          v215 = v37;
          v210 = v190;
          v211 = v40 - v38;
          v207 = v71;
          v208 = v72;
          v209 = v27;
          v212 = v189;
          v213 = v42;
          if (v44)
          {
            v78 = v77;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v77 = v78;
            v25 = v202;
            v26 = a7;
LABEL_87:
            if (!v204)
            {
              goto LABEL_29;
            }

LABEL_139:
            memcpy(v73, v77, 0x400uLL);
            v25 = v202;
            v26 = a7;
            goto LABEL_29;
          }

          v186 = v77;
          v102 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v217, 64, v77, *v71));
          v103 = (v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v219, 64, v102, v71[1]));
          v104 = (v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v218, 64, v103, v71[2]));
          v105 = (v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v220, 64, v104, v71[3]));
          v106 = (v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v221, 64, v105, v71[4]));
          v107 = (v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v223, 64, v106, v71[5]));
          v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v222, 64, v107, v71[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, (v107 + v108), v71[7]);
          v109 = v212;
          if (v212)
          {
            v110 = v213;
            if (v213)
            {
              v111 = 0;
              v112 = v210 << 6;
              v113 = 4 * v211;
              v114 = &v217[0].i8[v112 + v113];
              v115 = v208;
              v116 = v209;
              v117 = 4 * v213;
              if (4 * v213)
              {
                v118 = (4 * v213 - 1) >> 32 == 0;
              }

              else
              {
                v118 = 0;
              }

              v119 = !v118;
              v121 = v114 < v208 + v209 * (v212 - 1) + 4 * v213 && v208 < &__dst[64 * v212 + 960 + 64 * v210 + 4 * v213 + v113];
              v122 = v121 || v209 < 0;
              v123 = v117 & 0x1FFFFFFE0;
              v124 = v117 & 0x1FFFFFFF8;
              v125 = (v213 == 1) | v119 | v122;
              v126 = &v217[1].i8[v112 + v113];
              v127 = (v208 + 16);
              v128 = v114;
              v129 = v208;
              do
              {
                v130 = (v115 + v111 * v116);
                v131 = &v114[64 * v111];
                if (v125)
                {
                  v132 = 0;
                  goto LABEL_127;
                }

                if (v110 >= 8)
                {
                  v134 = v127;
                  v135 = v126;
                  v136 = v117 & 0x1FFFFFFE0;
                  do
                  {
                    v137 = *v134;
                    *(v135 - 1) = *(v134 - 1);
                    *v135 = v137;
                    v135 += 32;
                    v134 += 2;
                    v136 -= 32;
                  }

                  while (v136);
                  if (v117 == v123)
                  {
                    goto LABEL_113;
                  }

                  v133 = v117 & 0x1FFFFFFE0;
                  if ((v110 & 6) == 0)
                  {
                    v130 += v123;
                    v131 += v123;
                    v132 = v117 & 0xFFFFFFE0;
                    goto LABEL_127;
                  }
                }

                else
                {
                  v133 = 0;
                }

                v131 += v124;
                v138 = -8 * ((v110 >> 1) & 0x3FFFFFFF) + v133;
                v139 = (v129 + v133);
                v140 = &v128[v133];
                do
                {
                  v141 = *v139++;
                  *v140 = v141;
                  v140 += 8;
                  v138 += 8;
                }

                while (v138);
                if (v117 == v124)
                {
                  goto LABEL_113;
                }

                v130 += v124;
                v132 = v117 & 0xFFFFFFF8;
LABEL_127:
                v142 = v132 + 1;
                do
                {
                  v143 = *v130++;
                  *v131++ = v143;
                }

                while (v117 > v142++);
LABEL_113:
                ++v111;
                v126 += 64;
                v127 = (v127 + v116);
                v129 += v116;
                v128 += 64;
              }

              while (v111 != v109);
            }
          }

          v145 = v206;
          v146 = v207;
          v147 = v214;
          v148 = &byte_29D2F2FD5;
          v149 = 16;
          v150 = v215;
          v26 = a7;
          v25 = v202;
          do
          {
            v165 = *v148;
            v166 = *(v148 - 1);
            if (v147 <= 8 * v166 || 4 * v165 >= v150)
            {
              v164 = 0;
            }

            else
            {
              v151 = &v217[16 * v165 + 2 * v166];
              v152 = v151[1];
              v153 = v151[4];
              v154 = v151[5];
              v155 = vzip1q_s64(*v151, v153);
              v156 = vzip2q_s64(*v151, v153);
              v157 = vzip1q_s64(v152, v154);
              v158 = vzip2q_s64(v152, v154);
              v159 = v151[8];
              v160 = v151[9];
              v151 += 12;
              v161 = v151[1];
              v162 = vzip1q_s64(v159, *v151);
              v163 = vzip2q_s64(v159, *v151);
              *v145 = v155;
              v145[1] = v156;
              v145[2] = v162;
              v145[3] = v163;
              v145[4] = v157;
              v145[5] = v158;
              v145[6] = vzip1q_s64(v160, v161);
              v145[7] = vzip2q_s64(v160, v161);
              v145 += 8;
              v164 = 127;
            }

            *v146++ = v164;
            v148 += 2;
            v149 -= 2;
          }

          while (v149);
          v77 = v186;
          if (v204)
          {
            goto LABEL_139;
          }

LABEL_29:
          v20 = v36++ == v193 >> 4;
        }

        while (!v20);
        v20 = v16++ == v184;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v333 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v252 = a8;
  v232 = a8 + a10 - 1;
  v253 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v231 = v232 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v256 = v24;
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
      v244 = 0;
LABEL_32:
      v241 = v27 - 4;
      v235 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v229 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v244 = v32 >= v26;
    goto LABEL_32;
  }

  v244 = 0;
  v229 = 0;
  v235 = 0;
  v241 = 0;
LABEL_33:
  if (v18 <= v231)
  {
    v243 = a7 + a9 - 1;
    v228 = a7 >> 4;
    if (a7 >> 4 <= v243 >> 4)
    {
      v254 = v19 >> 4;
      v236 = v19 & 0xF;
      v226 = v20 & 0xF;
      v227 = v20 >> 4;
      v225 = ~(-1 << v235);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v234 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v233 = v35;
      v242 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v252)
        {
          v37 = v252;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v232 < v36)
        {
          v36 = v232;
        }

        v251 = 16 * v18;
        v240 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v226;
        v239 = v39;
        v41 = v39 != 16;
        v42 = v226 + 1;
        if (v18 != v227)
        {
          v42 = 16;
          v40 = v41;
        }

        v238 = v40;
        v43 = v228;
        v237 = (v18 >> v235) * v229;
        v44 = v18 & v225;
        v249 = a3 + (v37 - v252) * a11;
        v250 = v42;
        v248 = v42;
        v247 = v18 & v225;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v243 < v46)
          {
            v46 = v243;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v254)
          {
            v50 = v236 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v251 >= v252 && v45 >= a7)
          {
            v52 = v48 != v236;
            if (v43 != v254)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v238;
          }

          if (v244)
          {
            if (v241 | v235)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v241 != 0;
              v57 = v235 != 0;
              v58 = v241;
              v59 = v235;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v43 & ~(-1 << v241) & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v44 & v55) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v55 *= 2;
                --v53;
                v57 = v59 != 0;
                v56 = v58 != 0;
              }

              while (v59 | v58);
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v241) + v237);
          }

          else if (v234)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v233.i8[4];
            v65 = v233.i8[0];
            v66 = v234.i32[1];
            v67 = v234.i32[0];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
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

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = v249 + 4 * (v47 - a7);
          v255 = (a2 + v68);
          if (v256)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = (a4 + v80);
            v85 = v50;
            v86 = v18;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v18 = v86;
            LOBYTE(v50) = v85;
            v81 = v84;
            result = v253;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v250);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v258 = v83;
          v266 = v50;
          v267 = v250;
          v262 = v240;
          v263 = v47 - v45;
          v259 = v81;
          v260 = v82;
          v261 = a11;
          v264 = v239;
          v265 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v242;
            v88 = v43 + 1;
            v44 = v247;
            goto LABEL_202;
          }

          v89 = *v81;
          a7 = v242;
          if (v89 == 127)
          {
            v92 = *v83;
            v93 = v83[1];
            v94 = v83[2];
            v95 = v83[3];
            v96 = v83[4];
            v97 = v83[5];
            v98 = v83[6];
            v99 = v83[7];
            v269 = vzip1q_s64(*v83, v93);
            v270 = vzip1q_s64(v96, v97);
            v273 = vzip2q_s64(v92, v93);
            v274 = vzip2q_s64(v96, v97);
            v277 = vzip1q_s64(v94, v95);
            v278 = vzip1q_s64(v98, v99);
            v281 = vzip2q_s64(v94, v95);
            v282 = vzip2q_s64(v98, v99);
            v90 = 128;
            v88 = v43 + 1;
            v44 = v247;
          }

          else
          {
            v88 = v43 + 1;
            v44 = v247;
            if (v89 == 3)
            {
              v91 = vld1q_dup_f32(v83->i32);
              v269 = v91;
              v270 = v91;
              v273 = v91;
              v274 = v91;
              v277 = v91;
              v278 = v91;
              v281 = v91;
              v282 = v91;
              v90 = 4;
            }

            else if (*v81)
            {
              v100 = v81;
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v83, v89);
              v81 = v100;
            }

            else
            {
              v90 = 0;
              v270 = 0u;
              v269 = 0u;
              v273 = 0u;
              v274 = 0u;
              v277 = 0u;
              v278 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v101 = v83->i64 + v90;
          v102 = v81[1];
          if (v102 == 127)
          {
            v105 = *v101;
            v106 = *(v101 + 16);
            v107 = *(v101 + 32);
            v108 = *(v101 + 48);
            v109 = *(v101 + 64);
            v110 = *(v101 + 80);
            v111 = *(v101 + 96);
            v112 = *(v101 + 112);
            v285 = vzip1q_s64(*v101, v106);
            v286 = vzip1q_s64(v109, v110);
            v289 = vzip2q_s64(v105, v106);
            v290 = vzip2q_s64(v109, v110);
            v293 = vzip1q_s64(v107, v108);
            v294 = vzip1q_s64(v111, v112);
            v297 = vzip2q_s64(v107, v108);
            v298 = vzip2q_s64(v111, v112);
            v103 = 128;
          }

          else if (v102 == 3)
          {
            v104 = vld1q_dup_f32(v101);
            v285 = v104;
            v286 = v104;
            v289 = v104;
            v290 = v104;
            v293 = v104;
            v294 = v104;
            v297 = v104;
            v298 = v104;
            v103 = 4;
          }

          else if (v81[1])
          {
            v113 = v81;
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 64, v101, v102);
            v81 = v113;
          }

          else
          {
            v103 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v114 = v101 + v103;
          v115 = v81[2];
          if (v115 == 127)
          {
            v118 = *v114;
            v119 = *(v114 + 16);
            v120 = *(v114 + 32);
            v121 = *(v114 + 48);
            v122 = *(v114 + 64);
            v123 = *(v114 + 80);
            v124 = *(v114 + 96);
            v125 = *(v114 + 112);
            v271 = vzip1q_s64(*v114, v119);
            v272 = vzip1q_s64(v122, v123);
            v275 = vzip2q_s64(v118, v119);
            v276 = vzip2q_s64(v122, v123);
            v279 = vzip1q_s64(v120, v121);
            v280 = vzip1q_s64(v124, v125);
            v283 = vzip2q_s64(v120, v121);
            v284 = vzip2q_s64(v124, v125);
            v116 = 128;
          }

          else if (v115 == 3)
          {
            v117 = vld1q_dup_f32(v114);
            v271 = v117;
            v272 = v117;
            v275 = v117;
            v276 = v117;
            v279 = v117;
            v280 = v117;
            v283 = v117;
            v284 = v117;
            v116 = 4;
          }

          else if (v81[2])
          {
            v126 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 64, v114, v115);
            v81 = v126;
          }

          else
          {
            v116 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v127 = v114 + v116;
          v128 = v81[3];
          if (v128 == 127)
          {
            v131 = *v127;
            v132 = *(v127 + 16);
            v133 = *(v127 + 32);
            v134 = *(v127 + 48);
            v135 = *(v127 + 64);
            v136 = *(v127 + 80);
            v137 = *(v127 + 96);
            v138 = *(v127 + 112);
            v287 = vzip1q_s64(*v127, v132);
            v288 = vzip1q_s64(v135, v136);
            v291 = vzip2q_s64(v131, v132);
            v292 = vzip2q_s64(v135, v136);
            v295 = vzip1q_s64(v133, v134);
            v296 = vzip1q_s64(v137, v138);
            v299 = vzip2q_s64(v133, v134);
            v300 = vzip2q_s64(v137, v138);
            v129 = 128;
          }

          else if (v128 == 3)
          {
            v130 = vld1q_dup_f32(v127);
            v287 = v130;
            v288 = v130;
            v291 = v130;
            v292 = v130;
            v295 = v130;
            v296 = v130;
            v299 = v130;
            v300 = v130;
            v129 = 4;
          }

          else if (v81[3])
          {
            v139 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 64, v127, v128);
            v81 = v139;
          }

          else
          {
            v129 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v140 = v127 + v129;
          v141 = v81[4];
          if (v141 == 127)
          {
            v144 = *v140;
            v145 = *(v140 + 16);
            v146 = *(v140 + 32);
            v147 = *(v140 + 48);
            v148 = *(v140 + 64);
            v149 = *(v140 + 80);
            v150 = *(v140 + 96);
            v151 = *(v140 + 112);
            v301 = vzip1q_s64(*v140, v145);
            v302 = vzip1q_s64(v148, v149);
            v305 = vzip2q_s64(v144, v145);
            v306 = vzip2q_s64(v148, v149);
            v309 = vzip1q_s64(v146, v147);
            v310 = vzip1q_s64(v150, v151);
            v313 = vzip2q_s64(v146, v147);
            v314 = vzip2q_s64(v150, v151);
            v142 = 128;
          }

          else if (v141 == 3)
          {
            v143 = vld1q_dup_f32(v140);
            v301 = v143;
            v302 = v143;
            v305 = v143;
            v306 = v143;
            v309 = v143;
            v310 = v143;
            v313 = v143;
            v314 = v143;
            v142 = 4;
          }

          else if (v81[4])
          {
            v152 = v81;
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 64, v140, v141);
            v81 = v152;
          }

          else
          {
            v142 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v153 = v140 + v142;
          v154 = v81[5];
          if (v154 == 127)
          {
            v157 = *v153;
            v158 = *(v153 + 16);
            v159 = *(v153 + 32);
            v160 = *(v153 + 48);
            v161 = *(v153 + 64);
            v162 = *(v153 + 80);
            v163 = *(v153 + 96);
            v164 = *(v153 + 112);
            v317 = vzip1q_s64(*v153, v158);
            v318 = vzip1q_s64(v161, v162);
            v321 = vzip2q_s64(v157, v158);
            v322 = vzip2q_s64(v161, v162);
            v325 = vzip1q_s64(v159, v160);
            v326 = vzip1q_s64(v163, v164);
            v329 = vzip2q_s64(v159, v160);
            v330 = vzip2q_s64(v163, v164);
            v155 = 128;
          }

          else if (v154 == 3)
          {
            v156 = vld1q_dup_f32(v153);
            v317 = v156;
            v318 = v156;
            v321 = v156;
            v322 = v156;
            v325 = v156;
            v326 = v156;
            v329 = v156;
            v330 = v156;
            v155 = 4;
          }

          else if (v81[5])
          {
            v165 = v81;
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 64, v153, v154);
            v81 = v165;
          }

          else
          {
            v155 = 0;
            v317 = 0u;
            v318 = 0u;
            v321 = 0u;
            v322 = 0u;
            v325 = 0u;
            v326 = 0u;
            v329 = 0u;
            v330 = 0u;
          }

          v166 = v153 + v155;
          v167 = v81[6];
          if (v167 == 127)
          {
            v170 = *v166;
            v171 = *(v166 + 16);
            v172 = *(v166 + 32);
            v173 = *(v166 + 48);
            v174 = *(v166 + 64);
            v175 = *(v166 + 80);
            v176 = *(v166 + 96);
            v177 = *(v166 + 112);
            v303 = vzip1q_s64(*v166, v171);
            v304 = vzip1q_s64(v174, v175);
            v307 = vzip2q_s64(v170, v171);
            v308 = vzip2q_s64(v174, v175);
            v311 = vzip1q_s64(v172, v173);
            v312 = vzip1q_s64(v176, v177);
            v315 = vzip2q_s64(v172, v173);
            v316 = vzip2q_s64(v176, v177);
            v168 = 128;
          }

          else if (v167 == 3)
          {
            v169 = vld1q_dup_f32(v166);
            v303 = v169;
            v304 = v169;
            v307 = v169;
            v308 = v169;
            v311 = v169;
            v312 = v169;
            v315 = v169;
            v316 = v169;
            v168 = 4;
          }

          else if (v81[6])
          {
            v178 = v81;
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v303, 64, v166, v167);
            v81 = v178;
          }

          else
          {
            v168 = 0;
            v303 = 0u;
            v304 = 0u;
            v307 = 0u;
            v308 = 0u;
            v311 = 0u;
            v312 = 0u;
            v315 = 0u;
            v316 = 0u;
          }

          v179 = v166 + v168;
          v180 = v81[7];
          if (v180 == 127)
          {
            v183 = *v179;
            v184 = *(v179 + 16);
            v185 = *(v179 + 32);
            v186 = *(v179 + 48);
            v187 = *(v179 + 64);
            v188 = *(v179 + 80);
            v189 = *(v179 + 96);
            v190 = *(v179 + 112);
            v319 = vzip1q_s64(*v179, v184);
            v320 = vzip1q_s64(v187, v188);
            v323 = vzip2q_s64(v183, v184);
            v324 = vzip2q_s64(v187, v188);
            v327 = vzip1q_s64(v185, v186);
            v328 = vzip1q_s64(v189, v190);
            v331 = vzip2q_s64(v185, v186);
            v332 = vzip2q_s64(v189, v190);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v180 == 3)
          {
            v182 = vld1q_dup_f32(v179);
            v319 = v182;
            v320 = v182;
            v323 = v182;
            v324 = v182;
            v327 = v182;
            v328 = v182;
            v331 = v182;
            v332 = v182;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v319, 64, v179, v180);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v319 = 0u;
            v320 = 0u;
            v323 = 0u;
            v324 = 0u;
            v327 = 0u;
            v328 = 0u;
            v331 = 0u;
            v332 = 0u;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          v191 = v265;
          if (v265)
          {
            v192 = 0;
            v193 = 4 * v263;
            v194 = &v269.i8[64 * v262 + v193];
            v195 = v260;
            v196 = v261;
            v197 = 4 * v265;
            if (4 * v265)
            {
              v198 = (4 * v265 - 1) >> 32 == 0;
            }

            else
            {
              v198 = 0;
            }

            v199 = !v198;
            v201 = v194 < v260 + v261 * (v181 - 1) + 4 * v265 && v260 < &__dst[64 * v181 + 960 + 64 * v262 + 4 * v265 + v193];
            v202 = v201 || v261 < 0;
            v203 = v197 & 0x1FFFFFFE0;
            v204 = v197 & 0x1FFFFFFF8;
            v205 = (v265 == 1) | v199 | v202;
            v206 = &v270.i8[64 * v262 + v193];
            v207 = (v260 + 16);
            v208 = v194;
            v209 = v260;
            do
            {
              v210 = (v195 + v192 * v196);
              v211 = &v194[64 * v192];
              if (v205)
              {
                v212 = 0;
                goto LABEL_198;
              }

              if (v191 >= 8)
              {
                v214 = v207;
                v215 = v206;
                v216 = v197 & 0x1FFFFFFE0;
                do
                {
                  v217 = *v214;
                  *(v215 - 1) = *(v214 - 1);
                  *v215 = v217;
                  v215 += 32;
                  v214 += 2;
                  v216 -= 32;
                }

                while (v216);
                if (v197 == v203)
                {
                  goto LABEL_184;
                }

                v213 = v197 & 0x1FFFFFFE0;
                if ((v191 & 6) == 0)
                {
                  v210 += v203;
                  v211 += v203;
                  v212 = v197 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v213 = 0;
              }

              v211 += v204;
              v218 = -8 * ((v191 >> 1) & 0x3FFFFFFF) + v213;
              v219 = (v209 + v213);
              v220 = &v208[v213];
              do
              {
                v221 = *v219++;
                *v220 = v221;
                v220 += 8;
                v218 += 8;
              }

              while (v218);
              if (v197 == v204)
              {
                goto LABEL_184;
              }

              v210 += v204;
              v212 = v197 & 0xFFFFFFF8;
LABEL_198:
              v222 = v212 + 1;
              do
              {
                v223 = *v210++;
                *v211++ = v223;
              }

              while (v197 > v222++);
LABEL_184:
              ++v192;
              v206 += 64;
              v207 = (v207 + v196);
              v209 += v196;
              v208 += 64;
            }

            while (v192 != v181);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v269, 64, v258, v259, v266, v267);
LABEL_202:
          if (v256)
          {
            memcpy(v255, v83, 0x400uLL);
          }

          v21 = v43 == v243 >> 4;
          v43 = v88;
          result = v253;
        }

        while (!v21);
        v21 = v18 == v231;
        v18 = (v18 + 1);
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v333 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v252 = a8;
  v232 = a8 + a10 - 1;
  v253 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v231 = v232 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v256 = v24;
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
      v244 = 0;
LABEL_32:
      v241 = v27 - 4;
      v235 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v229 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v244 = v32 >= v26;
    goto LABEL_32;
  }

  v244 = 0;
  v229 = 0;
  v235 = 0;
  v241 = 0;
LABEL_33:
  if (v18 <= v231)
  {
    v243 = a7 + a9 - 1;
    v228 = a7 >> 4;
    if (a7 >> 4 <= v243 >> 4)
    {
      v254 = v19 >> 4;
      v236 = v19 & 0xF;
      v226 = v20 & 0xF;
      v227 = v20 >> 4;
      v225 = ~(-1 << v235);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v234 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v233 = v35;
      v242 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v252)
        {
          v37 = v252;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v232 < v36)
        {
          v36 = v232;
        }

        v251 = 16 * v18;
        v240 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v226;
        v239 = v39;
        v41 = v39 != 16;
        v42 = v226 + 1;
        if (v18 != v227)
        {
          v42 = 16;
          v40 = v41;
        }

        v238 = v40;
        v43 = v228;
        v237 = (v18 >> v235) * v229;
        v44 = v18 & v225;
        v249 = a3 + (v37 - v252) * a11;
        v250 = v42;
        v248 = v42;
        v247 = v18 & v225;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v243 < v46)
          {
            v46 = v243;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v254)
          {
            v50 = v236 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v251 >= v252 && v45 >= a7)
          {
            v52 = v48 != v236;
            if (v43 != v254)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v238;
          }

          if (v244)
          {
            if (v241 | v235)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v241 != 0;
              v57 = v235 != 0;
              v58 = v241;
              v59 = v235;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v43 & ~(-1 << v241) & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v44 & v55) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v55 *= 2;
                --v53;
                v57 = v59 != 0;
                v56 = v58 != 0;
              }

              while (v59 | v58);
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v241) + v237);
          }

          else if (v234)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v233.i8[4];
            v65 = v233.i8[0];
            v66 = v234.i32[1];
            v67 = v234.i32[0];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
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

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = (v249 + 4 * (v47 - a7));
          v255 = (a2 + v68);
          if (v256)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = (a4 + v80);
            v85 = v50;
            v86 = v18;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v18 = v86;
            LOBYTE(v50) = v85;
            v81 = v84;
            result = v253;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v250);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v258 = v83;
          v266 = v50;
          v267 = v250;
          v262 = v240;
          v263 = v47 - v45;
          v259 = v81;
          v260 = v82;
          v261 = a11;
          v264 = v239;
          v265 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v242;
            v88 = v43 + 1;
            v44 = v247;
            goto LABEL_202;
          }

          v89 = *v81;
          a7 = v242;
          if (v89 == 127)
          {
            v92 = *v83;
            v93 = v83[1];
            v94 = v83[2];
            v95 = v83[3];
            v96 = v83[4];
            v97 = v83[5];
            v98 = v83[6];
            v99 = v83[7];
            v269 = vzip1q_s64(*v83, v93);
            v270 = vzip1q_s64(v96, v97);
            v273 = vzip2q_s64(v92, v93);
            v274 = vzip2q_s64(v96, v97);
            v277 = vzip1q_s64(v94, v95);
            v278 = vzip1q_s64(v98, v99);
            v281 = vzip2q_s64(v94, v95);
            v282 = vzip2q_s64(v98, v99);
            v90 = 128;
            v88 = v43 + 1;
            v44 = v247;
          }

          else
          {
            v88 = v43 + 1;
            v44 = v247;
            if (v89 == 3)
            {
              v91 = vld1q_dup_f32(v83->i32);
              v269 = v91;
              v270 = v91;
              v273 = v91;
              v274 = v91;
              v277 = v91;
              v278 = v91;
              v281 = v91;
              v282 = v91;
              v90 = 4;
            }

            else if (*v81)
            {
              v100 = v81;
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v83, v89);
              v81 = v100;
            }

            else
            {
              v90 = 0;
              v270 = 0u;
              v269 = 0u;
              v273 = 0u;
              v274 = 0u;
              v277 = 0u;
              v278 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v101 = v83->i64 + v90;
          v102 = v81[1];
          if (v102 == 127)
          {
            v105 = *v101;
            v106 = *(v101 + 16);
            v107 = *(v101 + 32);
            v108 = *(v101 + 48);
            v109 = *(v101 + 64);
            v110 = *(v101 + 80);
            v111 = *(v101 + 96);
            v112 = *(v101 + 112);
            v285 = vzip1q_s64(*v101, v106);
            v286 = vzip1q_s64(v109, v110);
            v289 = vzip2q_s64(v105, v106);
            v290 = vzip2q_s64(v109, v110);
            v293 = vzip1q_s64(v107, v108);
            v294 = vzip1q_s64(v111, v112);
            v297 = vzip2q_s64(v107, v108);
            v298 = vzip2q_s64(v111, v112);
            v103 = 128;
          }

          else if (v102 == 3)
          {
            v104 = vld1q_dup_f32(v101);
            v285 = v104;
            v286 = v104;
            v289 = v104;
            v290 = v104;
            v293 = v104;
            v294 = v104;
            v297 = v104;
            v298 = v104;
            v103 = 4;
          }

          else if (v81[1])
          {
            v113 = v81;
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 64, v101, v102);
            v81 = v113;
          }

          else
          {
            v103 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v114 = v101 + v103;
          v115 = v81[2];
          if (v115 == 127)
          {
            v118 = *v114;
            v119 = *(v114 + 16);
            v120 = *(v114 + 32);
            v121 = *(v114 + 48);
            v122 = *(v114 + 64);
            v123 = *(v114 + 80);
            v124 = *(v114 + 96);
            v125 = *(v114 + 112);
            v271 = vzip1q_s64(*v114, v119);
            v272 = vzip1q_s64(v122, v123);
            v275 = vzip2q_s64(v118, v119);
            v276 = vzip2q_s64(v122, v123);
            v279 = vzip1q_s64(v120, v121);
            v280 = vzip1q_s64(v124, v125);
            v283 = vzip2q_s64(v120, v121);
            v284 = vzip2q_s64(v124, v125);
            v116 = 128;
          }

          else if (v115 == 3)
          {
            v117 = vld1q_dup_f32(v114);
            v271 = v117;
            v272 = v117;
            v275 = v117;
            v276 = v117;
            v279 = v117;
            v280 = v117;
            v283 = v117;
            v284 = v117;
            v116 = 4;
          }

          else if (v81[2])
          {
            v126 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 64, v114, v115);
            v81 = v126;
          }

          else
          {
            v116 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v127 = v114 + v116;
          v128 = v81[3];
          if (v128 == 127)
          {
            v131 = *v127;
            v132 = *(v127 + 16);
            v133 = *(v127 + 32);
            v134 = *(v127 + 48);
            v135 = *(v127 + 64);
            v136 = *(v127 + 80);
            v137 = *(v127 + 96);
            v138 = *(v127 + 112);
            v287 = vzip1q_s64(*v127, v132);
            v288 = vzip1q_s64(v135, v136);
            v291 = vzip2q_s64(v131, v132);
            v292 = vzip2q_s64(v135, v136);
            v295 = vzip1q_s64(v133, v134);
            v296 = vzip1q_s64(v137, v138);
            v299 = vzip2q_s64(v133, v134);
            v300 = vzip2q_s64(v137, v138);
            v129 = 128;
          }

          else if (v128 == 3)
          {
            v130 = vld1q_dup_f32(v127);
            v287 = v130;
            v288 = v130;
            v291 = v130;
            v292 = v130;
            v295 = v130;
            v296 = v130;
            v299 = v130;
            v300 = v130;
            v129 = 4;
          }

          else if (v81[3])
          {
            v139 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 64, v127, v128);
            v81 = v139;
          }

          else
          {
            v129 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v140 = v127 + v129;
          v141 = v81[4];
          if (v141 == 127)
          {
            v144 = *v140;
            v145 = *(v140 + 16);
            v146 = *(v140 + 32);
            v147 = *(v140 + 48);
            v148 = *(v140 + 64);
            v149 = *(v140 + 80);
            v150 = *(v140 + 96);
            v151 = *(v140 + 112);
            v301 = vzip1q_s64(*v140, v145);
            v302 = vzip1q_s64(v148, v149);
            v305 = vzip2q_s64(v144, v145);
            v306 = vzip2q_s64(v148, v149);
            v309 = vzip1q_s64(v146, v147);
            v310 = vzip1q_s64(v150, v151);
            v313 = vzip2q_s64(v146, v147);
            v314 = vzip2q_s64(v150, v151);
            v142 = 128;
          }

          else if (v141 == 3)
          {
            v143 = vld1q_dup_f32(v140);
            v301 = v143;
            v302 = v143;
            v305 = v143;
            v306 = v143;
            v309 = v143;
            v310 = v143;
            v313 = v143;
            v314 = v143;
            v142 = 4;
          }

          else if (v81[4])
          {
            v152 = v81;
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 64, v140, v141);
            v81 = v152;
          }

          else
          {
            v142 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v153 = v140 + v142;
          v154 = v81[5];
          if (v154 == 127)
          {
            v157 = *v153;
            v158 = *(v153 + 16);
            v159 = *(v153 + 32);
            v160 = *(v153 + 48);
            v161 = *(v153 + 64);
            v162 = *(v153 + 80);
            v163 = *(v153 + 96);
            v164 = *(v153 + 112);
            v317 = vzip1q_s64(*v153, v158);
            v318 = vzip1q_s64(v161, v162);
            v321 = vzip2q_s64(v157, v158);
            v322 = vzip2q_s64(v161, v162);
            v325 = vzip1q_s64(v159, v160);
            v326 = vzip1q_s64(v163, v164);
            v329 = vzip2q_s64(v159, v160);
            v330 = vzip2q_s64(v163, v164);
            v155 = 128;
          }

          else if (v154 == 3)
          {
            v156 = vld1q_dup_f32(v153);
            v317 = v156;
            v318 = v156;
            v321 = v156;
            v322 = v156;
            v325 = v156;
            v326 = v156;
            v329 = v156;
            v330 = v156;
            v155 = 4;
          }

          else if (v81[5])
          {
            v165 = v81;
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 64, v153, v154);
            v81 = v165;
          }

          else
          {
            v155 = 0;
            v317 = 0u;
            v318 = 0u;
            v321 = 0u;
            v322 = 0u;
            v325 = 0u;
            v326 = 0u;
            v329 = 0u;
            v330 = 0u;
          }

          v166 = v153 + v155;
          v167 = v81[6];
          if (v167 == 127)
          {
            v170 = *v166;
            v171 = *(v166 + 16);
            v172 = *(v166 + 32);
            v173 = *(v166 + 48);
            v174 = *(v166 + 64);
            v175 = *(v166 + 80);
            v176 = *(v166 + 96);
            v177 = *(v166 + 112);
            v303 = vzip1q_s64(*v166, v171);
            v304 = vzip1q_s64(v174, v175);
            v307 = vzip2q_s64(v170, v171);
            v308 = vzip2q_s64(v174, v175);
            v311 = vzip1q_s64(v172, v173);
            v312 = vzip1q_s64(v176, v177);
            v315 = vzip2q_s64(v172, v173);
            v316 = vzip2q_s64(v176, v177);
            v168 = 128;
          }

          else if (v167 == 3)
          {
            v169 = vld1q_dup_f32(v166);
            v303 = v169;
            v304 = v169;
            v307 = v169;
            v308 = v169;
            v311 = v169;
            v312 = v169;
            v315 = v169;
            v316 = v169;
            v168 = 4;
          }

          else if (v81[6])
          {
            v178 = v81;
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v303, 64, v166, v167);
            v81 = v178;
          }

          else
          {
            v168 = 0;
            v303 = 0u;
            v304 = 0u;
            v307 = 0u;
            v308 = 0u;
            v311 = 0u;
            v312 = 0u;
            v315 = 0u;
            v316 = 0u;
          }

          v179 = v166 + v168;
          v180 = v81[7];
          if (v180 == 127)
          {
            v183 = *v179;
            v184 = *(v179 + 16);
            v185 = *(v179 + 32);
            v186 = *(v179 + 48);
            v187 = *(v179 + 64);
            v188 = *(v179 + 80);
            v189 = *(v179 + 96);
            v190 = *(v179 + 112);
            v319 = vzip1q_s64(*v179, v184);
            v320 = vzip1q_s64(v187, v188);
            v323 = vzip2q_s64(v183, v184);
            v324 = vzip2q_s64(v187, v188);
            v327 = vzip1q_s64(v185, v186);
            v328 = vzip1q_s64(v189, v190);
            v331 = vzip2q_s64(v185, v186);
            v332 = vzip2q_s64(v189, v190);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v180 == 3)
          {
            v182 = vld1q_dup_f32(v179);
            v319 = v182;
            v320 = v182;
            v323 = v182;
            v324 = v182;
            v327 = v182;
            v328 = v182;
            v331 = v182;
            v332 = v182;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v319, 64, v179, v180);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v319 = 0u;
            v320 = 0u;
            v323 = 0u;
            v324 = 0u;
            v327 = 0u;
            v328 = 0u;
            v331 = 0u;
            v332 = 0u;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          v191 = v265;
          if (v265)
          {
            v192 = 0;
            v193 = 4 * v263;
            v194 = &v269.i8[64 * v262 + v193];
            v195 = v260;
            v196 = v261;
            v197 = 4 * v265;
            if (4 * v265)
            {
              v198 = (4 * v265 - 1) >> 32 == 0;
            }

            else
            {
              v198 = 0;
            }

            v199 = !v198;
            v201 = v194 < &v260->i8[4 * v265 + v261 * (v181 - 1)] && v260 < &__dst[64 * v181 + 960 + 64 * v262 + 4 * v265 + v193];
            v202 = v201 || v261 < 0;
            v203 = v197 & 0x1FFFFFFE0;
            v204 = v197 & 0x1FFFFFFF8;
            v205 = (v265 == 1) | v199 | v202;
            v206 = &v270.i8[64 * v262 + v193];
            v207 = v260 + 1;
            v208 = v194;
            v209 = v260;
            do
            {
              v210 = &v195->i8[v192 * v196];
              v211 = &v194[64 * v192];
              if (v205)
              {
                v212 = 0;
                goto LABEL_198;
              }

              if (v191 >= 8)
              {
                v214 = v207;
                v215 = v206;
                v216 = v197 & 0x1FFFFFFE0;
                do
                {
                  v217 = *v214;
                  *(v215 - 1) = v214[-1];
                  *v215 = v217;
                  v215 += 32;
                  v214 += 2;
                  v216 -= 32;
                }

                while (v216);
                if (v197 == v203)
                {
                  goto LABEL_184;
                }

                v213 = v197 & 0x1FFFFFFE0;
                if ((v191 & 6) == 0)
                {
                  v210 += v203;
                  v211 += v203;
                  v212 = v197 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v213 = 0;
              }

              v211 += v204;
              v218 = -8 * ((v191 >> 1) & 0x3FFFFFFF) + v213;
              v219 = (v209->i64 + v213);
              v220 = &v208[v213];
              do
              {
                v221 = *v219++;
                *v220 = v221;
                v220 += 8;
                v218 += 8;
              }

              while (v218);
              if (v197 == v204)
              {
                goto LABEL_184;
              }

              v210 += v204;
              v212 = v197 & 0xFFFFFFF8;
LABEL_198:
              v222 = v212 + 1;
              do
              {
                v223 = *v210++;
                *v211++ = v223;
              }

              while (v197 > v222++);
LABEL_184:
              ++v192;
              v206 += 64;
              v207 = (v207 + v196);
              v209 = (v209 + v196);
              v208 += 64;
            }

            while (v192 != v181);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v269, 64, v258, v259, v266, v267);
LABEL_202:
          if (v256)
          {
            memcpy(v255, v83, 0x400uLL);
          }

          v21 = v43 == v243 >> 4;
          v43 = v88;
          result = v253;
        }

        while (!v21);
        v21 = v18 == v231;
        v18 = (v18 + 1);
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v316 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v17 = a8 >> 4;
  v217 = a8 + a10 - 1;
  v219 = v217 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v236 = a1;
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
  v239 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v228 = result;
  if (v17 <= v219)
  {
    v227 = a7 + a9 - 1;
    v216 = a7 >> 4;
    if (a7 >> 4 <= v227 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v213 = a5 - 1;
      v220 = (a5 - 1) & 0xF;
      v214 = (a6 - 1) & 0xF;
      v215 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v225 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v224 = v27;
      v212 = 8 * v19 * v18;
      v226 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v217 < v28)
        {
          v28 = v217;
        }

        v234 = 16 * v17;
        v223 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v222 = v31;
        v33 = v31 != 16;
        v34 = v216;
        v35 = v214 + 1;
        if (v17 != v215)
        {
          v35 = 16;
          v32 = v33;
        }

        v221 = v32;
        v232 = a3 + (v29 - v235) * a11;
        v233 = v35;
        v231 = v35;
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

          if (v227 < v37)
          {
            v37 = v227;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v220 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v234 >= v235 && v36 >= a7)
          {
            v43 = v39 != v220;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v221;
          }

          if (v228)
          {
            v64 = 0;
            v65 = v212 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v202 = (v64 >> 4) - 1;
            if (v66)
            {
              v203 = 0;
              if (v67)
              {
                goto LABEL_207;
              }

LABEL_196:
              v204 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v204 | v203)
              {
                goto LABEL_197;
              }

LABEL_208:
              v211 = 0;
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_196;
              }

LABEL_207:
              v204 = 0;
              if (!v203)
              {
                goto LABEL_208;
              }

LABEL_197:
              v205 = 0;
              v206 = 0;
              v207 = v34 & v202;
              v208 = v203 != 0;
              v209 = v204 != 0;
              v210 = 1;
              do
              {
                --v203;
                if (v208)
                {
                  v206 |= (v210 & v207) << v205++;
                }

                else
                {
                  v203 = 0;
                }

                --v204;
                if (v209)
                {
                  v206 |= (v210 & v17 & ((v68 >> 4) - 1)) << v205++;
                }

                else
                {
                  v204 = 0;
                }

                v210 *= 2;
                --v205;
                v209 = v204 != 0;
                v208 = v203 != 0;
              }

              while (v204 | v203);
              v211 = v206 << 10;
              result = v236;
            }

            v51 = v211 + ((v36 / v64 + v234 / v68 * ((v64 + v213) / v64)) << 14);
            goto LABEL_52;
          }

          if (v225)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v224.i8[4];
            v48 = v224.i8[0];
            v49 = v225.i32[1];
            v50 = v225.i32[0];
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v70 = v232 + 4 * (v38 - a7);
          v238 = (a2 + v51);
          if (v239)
          {
            v71 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
              goto LABEL_84;
            }

            v72 = v41;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            LOBYTE(v41) = v72;
            result = v236;
          }

          else
          {
            v71 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v69, v41, v233);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v241 = v71;
          v249 = v41;
          v250 = v233;
          v245 = v223;
          v246 = v38 - v36;
          v242 = v69;
          v243 = v70;
          v244 = a11;
          v247 = v222;
          v248 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            a7 = v226;
            goto LABEL_177;
          }

          v73 = *v69;
          a7 = v226;
          if (v73 == 127)
          {
            v76 = *v71;
            v77 = v71[1];
            v78 = v71[2];
            v79 = v71[3];
            v80 = v71[4];
            v81 = v71[5];
            v82 = v71[6];
            v83 = v71[7];
            v252 = vzip1q_s64(*v71, v77);
            v253 = vzip1q_s64(v80, v81);
            v256 = vzip2q_s64(v76, v77);
            v257 = vzip2q_s64(v80, v81);
            v260 = vzip1q_s64(v78, v79);
            v261 = vzip1q_s64(v82, v83);
            v264 = vzip2q_s64(v78, v79);
            v265 = vzip2q_s64(v82, v83);
            v74 = 128;
          }

          else if (v73 == 3)
          {
            v75 = vld1q_dup_f32(v71->i32);
            v252 = v75;
            v253 = v75;
            v256 = v75;
            v257 = v75;
            v260 = v75;
            v261 = v75;
            v264 = v75;
            v265 = v75;
            v74 = 4;
          }

          else if (*v69)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v71, v73);
          }

          else
          {
            v74 = 0;
            v253 = 0u;
            v252 = 0u;
            v256 = 0u;
            v257 = 0u;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v84 = v71->i64 + v74;
          v85 = v69[1];
          if (v85 == 127)
          {
            v88 = *v84;
            v89 = *(v84 + 16);
            v90 = *(v84 + 32);
            v91 = *(v84 + 48);
            v92 = *(v84 + 64);
            v93 = *(v84 + 80);
            v94 = *(v84 + 96);
            v95 = *(v84 + 112);
            v268 = vzip1q_s64(*v84, v89);
            v269 = vzip1q_s64(v92, v93);
            v272 = vzip2q_s64(v88, v89);
            v273 = vzip2q_s64(v92, v93);
            v276 = vzip1q_s64(v90, v91);
            v277 = vzip1q_s64(v94, v95);
            v280 = vzip2q_s64(v90, v91);
            v281 = vzip2q_s64(v94, v95);
            v86 = 128;
          }

          else if (v85 == 3)
          {
            v87 = vld1q_dup_f32(v84);
            v268 = v87;
            v269 = v87;
            v272 = v87;
            v273 = v87;
            v276 = v87;
            v277 = v87;
            v280 = v87;
            v281 = v87;
            v86 = 4;
          }

          else if (v69[1])
          {
            v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v84, v85);
          }

          else
          {
            v86 = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v96 = v84 + v86;
          v97 = v69[2];
          if (v97 == 127)
          {
            v100 = *v96;
            v101 = *(v96 + 16);
            v102 = *(v96 + 32);
            v103 = *(v96 + 48);
            v104 = *(v96 + 64);
            v105 = *(v96 + 80);
            v106 = *(v96 + 96);
            v107 = *(v96 + 112);
            v254 = vzip1q_s64(*v96, v101);
            v255 = vzip1q_s64(v104, v105);
            v258 = vzip2q_s64(v100, v101);
            v259 = vzip2q_s64(v104, v105);
            v262 = vzip1q_s64(v102, v103);
            v263 = vzip1q_s64(v106, v107);
            v266 = vzip2q_s64(v102, v103);
            v267 = vzip2q_s64(v106, v107);
            v98 = 128;
          }

          else if (v97 == 3)
          {
            v99 = vld1q_dup_f32(v96);
            v254 = v99;
            v255 = v99;
            v258 = v99;
            v259 = v99;
            v262 = v99;
            v263 = v99;
            v266 = v99;
            v267 = v99;
            v98 = 4;
          }

          else if (v69[2])
          {
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v96, v97);
          }

          else
          {
            v98 = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v108 = v96 + v98;
          v109 = v69[3];
          if (v109 == 127)
          {
            v112 = *v108;
            v113 = *(v108 + 16);
            v114 = *(v108 + 32);
            v115 = *(v108 + 48);
            v116 = *(v108 + 64);
            v117 = *(v108 + 80);
            v118 = *(v108 + 96);
            v119 = *(v108 + 112);
            v270 = vzip1q_s64(*v108, v113);
            v271 = vzip1q_s64(v116, v117);
            v274 = vzip2q_s64(v112, v113);
            v275 = vzip2q_s64(v116, v117);
            v278 = vzip1q_s64(v114, v115);
            v279 = vzip1q_s64(v118, v119);
            v282 = vzip2q_s64(v114, v115);
            v283 = vzip2q_s64(v118, v119);
            v110 = 128;
          }

          else if (v109 == 3)
          {
            v111 = vld1q_dup_f32(v108);
            v270 = v111;
            v271 = v111;
            v274 = v111;
            v275 = v111;
            v278 = v111;
            v279 = v111;
            v282 = v111;
            v283 = v111;
            v110 = 4;
          }

          else if (v69[3])
          {
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v108, v109);
          }

          else
          {
            v110 = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
            v278 = 0u;
            v279 = 0u;
            v282 = 0u;
            v283 = 0u;
          }

          v120 = v108 + v110;
          v121 = v69[4];
          if (v121 == 127)
          {
            v124 = *v120;
            v125 = *(v120 + 16);
            v126 = *(v120 + 32);
            v127 = *(v120 + 48);
            v128 = *(v120 + 64);
            v129 = *(v120 + 80);
            v130 = *(v120 + 96);
            v131 = *(v120 + 112);
            v284 = vzip1q_s64(*v120, v125);
            v285 = vzip1q_s64(v128, v129);
            v288 = vzip2q_s64(v124, v125);
            v289 = vzip2q_s64(v128, v129);
            v292 = vzip1q_s64(v126, v127);
            v293 = vzip1q_s64(v130, v131);
            v296 = vzip2q_s64(v126, v127);
            v297 = vzip2q_s64(v130, v131);
            v122 = 128;
          }

          else if (v121 == 3)
          {
            v123 = vld1q_dup_f32(v120);
            v284 = v123;
            v285 = v123;
            v288 = v123;
            v289 = v123;
            v292 = v123;
            v293 = v123;
            v296 = v123;
            v297 = v123;
            v122 = 4;
          }

          else if (v69[4])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v120, v121);
          }

          else
          {
            v122 = 0;
            v284 = 0u;
            v285 = 0u;
            v288 = 0u;
            v289 = 0u;
            v292 = 0u;
            v293 = 0u;
            v296 = 0u;
            v297 = 0u;
          }

          v132 = v120 + v122;
          v133 = v69[5];
          if (v133 == 127)
          {
            v136 = *v132;
            v137 = *(v132 + 16);
            v138 = *(v132 + 32);
            v139 = *(v132 + 48);
            v140 = *(v132 + 64);
            v141 = *(v132 + 80);
            v142 = *(v132 + 96);
            v143 = *(v132 + 112);
            v300 = vzip1q_s64(*v132, v137);
            v301 = vzip1q_s64(v140, v141);
            v304 = vzip2q_s64(v136, v137);
            v305 = vzip2q_s64(v140, v141);
            v308 = vzip1q_s64(v138, v139);
            v309 = vzip1q_s64(v142, v143);
            v312 = vzip2q_s64(v138, v139);
            v313 = vzip2q_s64(v142, v143);
            v134 = 128;
          }

          else if (v133 == 3)
          {
            v135 = vld1q_dup_f32(v132);
            v300 = v135;
            v301 = v135;
            v304 = v135;
            v305 = v135;
            v308 = v135;
            v309 = v135;
            v312 = v135;
            v313 = v135;
            v134 = 4;
          }

          else if (v69[5])
          {
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v132, v133);
          }

          else
          {
            v134 = 0;
            v300 = 0u;
            v301 = 0u;
            v304 = 0u;
            v305 = 0u;
            v308 = 0u;
            v309 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v144 = v132 + v134;
          v145 = v69[6];
          if (v145 == 127)
          {
            v148 = *v144;
            v149 = *(v144 + 16);
            v150 = *(v144 + 32);
            v151 = *(v144 + 48);
            v152 = *(v144 + 64);
            v153 = *(v144 + 80);
            v154 = *(v144 + 96);
            v155 = *(v144 + 112);
            v286 = vzip1q_s64(*v144, v149);
            v287 = vzip1q_s64(v152, v153);
            v290 = vzip2q_s64(v148, v149);
            v291 = vzip2q_s64(v152, v153);
            v294 = vzip1q_s64(v150, v151);
            v295 = vzip1q_s64(v154, v155);
            v298 = vzip2q_s64(v150, v151);
            v299 = vzip2q_s64(v154, v155);
            v146 = 128;
          }

          else if (v145 == 3)
          {
            v147 = vld1q_dup_f32(v144);
            v286 = v147;
            v287 = v147;
            v290 = v147;
            v291 = v147;
            v294 = v147;
            v295 = v147;
            v298 = v147;
            v299 = v147;
            v146 = 4;
          }

          else if (v69[6])
          {
            v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 64, v144, v145);
          }

          else
          {
            v146 = 0;
            v286 = 0u;
            v287 = 0u;
            v290 = 0u;
            v291 = 0u;
            v294 = 0u;
            v295 = 0u;
            v298 = 0u;
            v299 = 0u;
          }

          v156 = v144 + v146;
          v157 = v69[7];
          if (v157 == 127)
          {
            v160 = *v156;
            v161 = *(v156 + 16);
            v162 = *(v156 + 32);
            v163 = *(v156 + 48);
            v164 = *(v156 + 64);
            v165 = *(v156 + 80);
            v166 = *(v156 + 96);
            v167 = *(v156 + 112);
            v302 = vzip1q_s64(*v156, v161);
            v303 = vzip1q_s64(v164, v165);
            v306 = vzip2q_s64(v160, v161);
            v307 = vzip2q_s64(v164, v165);
            v310 = vzip1q_s64(v162, v163);
            v311 = vzip1q_s64(v166, v167);
            v314 = vzip2q_s64(v162, v163);
            v315 = vzip2q_s64(v166, v167);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v157 == 3)
          {
            v159 = vld1q_dup_f32(v156);
            v302 = v159;
            v303 = v159;
            v306 = v159;
            v307 = v159;
            v310 = v159;
            v311 = v159;
            v314 = v159;
            v315 = v159;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v69[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v302, 64, v156, v157);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v302 = 0u;
            v303 = 0u;
            v306 = 0u;
            v307 = 0u;
            v310 = 0u;
            v311 = 0u;
            v314 = 0u;
            v315 = 0u;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          v168 = v248;
          if (v248)
          {
            v169 = 0;
            v170 = 4 * v246;
            v171 = &v252.i8[64 * v245 + v170];
            v172 = v243;
            v173 = v244;
            v174 = 4 * v248;
            if (4 * v248)
            {
              v175 = (4 * v248 - 1) >> 32 == 0;
            }

            else
            {
              v175 = 0;
            }

            v176 = !v175;
            v178 = v171 < v243 + v244 * (v158 - 1) + 4 * v248 && v243 < &__dst[64 * v158 + 960 + 64 * v245 + 4 * v248 + v170];
            v179 = v178 || v244 < 0;
            v180 = v174 & 0x1FFFFFFE0;
            v181 = v174 & 0x1FFFFFFF8;
            v182 = (v248 == 1) | v176 | v179;
            v183 = &v253.i8[64 * v245 + v170];
            v184 = (v243 + 16);
            v185 = v171;
            v186 = v243;
            do
            {
              v187 = (v172 + v169 * v173);
              v188 = &v171[64 * v169];
              if (v182)
              {
                v189 = 0;
                goto LABEL_173;
              }

              if (v168 >= 8)
              {
                v191 = v184;
                v192 = v183;
                v193 = v174 & 0x1FFFFFFE0;
                do
                {
                  v194 = *v191;
                  *(v192 - 1) = *(v191 - 1);
                  *v192 = v194;
                  v192 += 32;
                  v191 += 2;
                  v193 -= 32;
                }

                while (v193);
                if (v174 == v180)
                {
                  goto LABEL_159;
                }

                v190 = v174 & 0x1FFFFFFE0;
                if ((v168 & 6) == 0)
                {
                  v187 += v180;
                  v188 += v180;
                  v189 = v174 & 0xFFFFFFE0;
                  goto LABEL_173;
                }
              }

              else
              {
                v190 = 0;
              }

              v188 += v181;
              v195 = -8 * ((v168 >> 1) & 0x3FFFFFFF) + v190;
              v196 = (v186 + v190);
              v197 = &v185[v190];
              do
              {
                v198 = *v196++;
                *v197 = v198;
                v197 += 8;
                v195 += 8;
              }

              while (v195);
              if (v174 == v181)
              {
                goto LABEL_159;
              }

              v187 += v181;
              v189 = v174 & 0xFFFFFFF8;
LABEL_173:
              v199 = v189 + 1;
              do
              {
                v200 = *v187++;
                *v188++ = v200;
              }

              while (v174 > v199++);
LABEL_159:
              ++v169;
              v183 += 64;
              v184 = (v184 + v173);
              v186 += v173;
              v185 += 64;
            }

            while (v169 != v158);
          }

LABEL_176:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v252, 64, v241, v242, v249, v250);
LABEL_177:
          if (v239)
          {
            memcpy(v238, v71, 0x400uLL);
          }

          v21 = v34++ == v227 >> 4;
          result = v236;
        }

        while (!v21);
        v21 = v17++ == v219;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v316 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v17 = a8 >> 4;
  v217 = a8 + a10 - 1;
  v219 = v217 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v236 = a1;
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
  v239 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v228 = result;
  if (v17 <= v219)
  {
    v227 = a7 + a9 - 1;
    v216 = a7 >> 4;
    if (a7 >> 4 <= v227 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v213 = a5 - 1;
      v220 = (a5 - 1) & 0xF;
      v214 = (a6 - 1) & 0xF;
      v215 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v225 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v224 = v27;
      v212 = 8 * v19 * v18;
      v226 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v217 < v28)
        {
          v28 = v217;
        }

        v234 = 16 * v17;
        v223 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v222 = v31;
        v33 = v31 != 16;
        v34 = v216;
        v35 = v214 + 1;
        if (v17 != v215)
        {
          v35 = 16;
          v32 = v33;
        }

        v221 = v32;
        v232 = a3 + (v29 - v235) * a11;
        v233 = v35;
        v231 = v35;
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

          if (v227 < v37)
          {
            v37 = v227;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v220 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v234 >= v235 && v36 >= a7)
          {
            v43 = v39 != v220;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v221;
          }

          if (v228)
          {
            v64 = 0;
            v65 = v212 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v202 = (v64 >> 4) - 1;
            if (v66)
            {
              v203 = 0;
              if (v67)
              {
                goto LABEL_207;
              }

LABEL_196:
              v204 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v204 | v203)
              {
                goto LABEL_197;
              }

LABEL_208:
              v211 = 0;
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_196;
              }

LABEL_207:
              v204 = 0;
              if (!v203)
              {
                goto LABEL_208;
              }

LABEL_197:
              v205 = 0;
              v206 = 0;
              v207 = v34 & v202;
              v208 = v203 != 0;
              v209 = v204 != 0;
              v210 = 1;
              do
              {
                --v203;
                if (v208)
                {
                  v206 |= (v210 & v207) << v205++;
                }

                else
                {
                  v203 = 0;
                }

                --v204;
                if (v209)
                {
                  v206 |= (v210 & v17 & ((v68 >> 4) - 1)) << v205++;
                }

                else
                {
                  v204 = 0;
                }

                v210 *= 2;
                --v205;
                v209 = v204 != 0;
                v208 = v203 != 0;
              }

              while (v204 | v203);
              v211 = v206 << 10;
              result = v236;
            }

            v51 = v211 + ((v36 / v64 + v234 / v68 * ((v64 + v213) / v64)) << 14);
            goto LABEL_52;
          }

          if (v225)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v224.i8[4];
            v48 = v224.i8[0];
            v49 = v225.i32[1];
            v50 = v225.i32[0];
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v70 = (v232 + 4 * (v38 - a7));
          v238 = (a2 + v51);
          if (v239)
          {
            v71 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
              goto LABEL_84;
            }

            v72 = v41;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            LOBYTE(v41) = v72;
            result = v236;
          }

          else
          {
            v71 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v69, v41, v233);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v241 = v71;
          v249 = v41;
          v250 = v233;
          v245 = v223;
          v246 = v38 - v36;
          v242 = v69;
          v243 = v70;
          v244 = a11;
          v247 = v222;
          v248 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            a7 = v226;
            goto LABEL_177;
          }

          v73 = *v69;
          a7 = v226;
          if (v73 == 127)
          {
            v76 = *v71;
            v77 = v71[1];
            v78 = v71[2];
            v79 = v71[3];
            v80 = v71[4];
            v81 = v71[5];
            v82 = v71[6];
            v83 = v71[7];
            v252 = vzip1q_s64(*v71, v77);
            v253 = vzip1q_s64(v80, v81);
            v256 = vzip2q_s64(v76, v77);
            v257 = vzip2q_s64(v80, v81);
            v260 = vzip1q_s64(v78, v79);
            v261 = vzip1q_s64(v82, v83);
            v264 = vzip2q_s64(v78, v79);
            v265 = vzip2q_s64(v82, v83);
            v74 = 128;
          }

          else if (v73 == 3)
          {
            v75 = vld1q_dup_f32(v71->i32);
            v252 = v75;
            v253 = v75;
            v256 = v75;
            v257 = v75;
            v260 = v75;
            v261 = v75;
            v264 = v75;
            v265 = v75;
            v74 = 4;
          }

          else if (*v69)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v71, v73);
          }

          else
          {
            v74 = 0;
            v253 = 0u;
            v252 = 0u;
            v256 = 0u;
            v257 = 0u;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v84 = v71->i64 + v74;
          v85 = v69[1];
          if (v85 == 127)
          {
            v88 = *v84;
            v89 = *(v84 + 16);
            v90 = *(v84 + 32);
            v91 = *(v84 + 48);
            v92 = *(v84 + 64);
            v93 = *(v84 + 80);
            v94 = *(v84 + 96);
            v95 = *(v84 + 112);
            v268 = vzip1q_s64(*v84, v89);
            v269 = vzip1q_s64(v92, v93);
            v272 = vzip2q_s64(v88, v89);
            v273 = vzip2q_s64(v92, v93);
            v276 = vzip1q_s64(v90, v91);
            v277 = vzip1q_s64(v94, v95);
            v280 = vzip2q_s64(v90, v91);
            v281 = vzip2q_s64(v94, v95);
            v86 = 128;
          }

          else if (v85 == 3)
          {
            v87 = vld1q_dup_f32(v84);
            v268 = v87;
            v269 = v87;
            v272 = v87;
            v273 = v87;
            v276 = v87;
            v277 = v87;
            v280 = v87;
            v281 = v87;
            v86 = 4;
          }

          else if (v69[1])
          {
            v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v84, v85);
          }

          else
          {
            v86 = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v96 = v84 + v86;
          v97 = v69[2];
          if (v97 == 127)
          {
            v100 = *v96;
            v101 = *(v96 + 16);
            v102 = *(v96 + 32);
            v103 = *(v96 + 48);
            v104 = *(v96 + 64);
            v105 = *(v96 + 80);
            v106 = *(v96 + 96);
            v107 = *(v96 + 112);
            v254 = vzip1q_s64(*v96, v101);
            v255 = vzip1q_s64(v104, v105);
            v258 = vzip2q_s64(v100, v101);
            v259 = vzip2q_s64(v104, v105);
            v262 = vzip1q_s64(v102, v103);
            v263 = vzip1q_s64(v106, v107);
            v266 = vzip2q_s64(v102, v103);
            v267 = vzip2q_s64(v106, v107);
            v98 = 128;
          }

          else if (v97 == 3)
          {
            v99 = vld1q_dup_f32(v96);
            v254 = v99;
            v255 = v99;
            v258 = v99;
            v259 = v99;
            v262 = v99;
            v263 = v99;
            v266 = v99;
            v267 = v99;
            v98 = 4;
          }

          else if (v69[2])
          {
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v96, v97);
          }

          else
          {
            v98 = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v108 = v96 + v98;
          v109 = v69[3];
          if (v109 == 127)
          {
            v112 = *v108;
            v113 = *(v108 + 16);
            v114 = *(v108 + 32);
            v115 = *(v108 + 48);
            v116 = *(v108 + 64);
            v117 = *(v108 + 80);
            v118 = *(v108 + 96);
            v119 = *(v108 + 112);
            v270 = vzip1q_s64(*v108, v113);
            v271 = vzip1q_s64(v116, v117);
            v274 = vzip2q_s64(v112, v113);
            v275 = vzip2q_s64(v116, v117);
            v278 = vzip1q_s64(v114, v115);
            v279 = vzip1q_s64(v118, v119);
            v282 = vzip2q_s64(v114, v115);
            v283 = vzip2q_s64(v118, v119);
            v110 = 128;
          }

          else if (v109 == 3)
          {
            v111 = vld1q_dup_f32(v108);
            v270 = v111;
            v271 = v111;
            v274 = v111;
            v275 = v111;
            v278 = v111;
            v279 = v111;
            v282 = v111;
            v283 = v111;
            v110 = 4;
          }

          else if (v69[3])
          {
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v108, v109);
          }

          else
          {
            v110 = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
            v278 = 0u;
            v279 = 0u;
            v282 = 0u;
            v283 = 0u;
          }

          v120 = v108 + v110;
          v121 = v69[4];
          if (v121 == 127)
          {
            v124 = *v120;
            v125 = *(v120 + 16);
            v126 = *(v120 + 32);
            v127 = *(v120 + 48);
            v128 = *(v120 + 64);
            v129 = *(v120 + 80);
            v130 = *(v120 + 96);
            v131 = *(v120 + 112);
            v284 = vzip1q_s64(*v120, v125);
            v285 = vzip1q_s64(v128, v129);
            v288 = vzip2q_s64(v124, v125);
            v289 = vzip2q_s64(v128, v129);
            v292 = vzip1q_s64(v126, v127);
            v293 = vzip1q_s64(v130, v131);
            v296 = vzip2q_s64(v126, v127);
            v297 = vzip2q_s64(v130, v131);
            v122 = 128;
          }

          else if (v121 == 3)
          {
            v123 = vld1q_dup_f32(v120);
            v284 = v123;
            v285 = v123;
            v288 = v123;
            v289 = v123;
            v292 = v123;
            v293 = v123;
            v296 = v123;
            v297 = v123;
            v122 = 4;
          }

          else if (v69[4])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v120, v121);
          }

          else
          {
            v122 = 0;
            v284 = 0u;
            v285 = 0u;
            v288 = 0u;
            v289 = 0u;
            v292 = 0u;
            v293 = 0u;
            v296 = 0u;
            v297 = 0u;
          }

          v132 = v120 + v122;
          v133 = v69[5];
          if (v133 == 127)
          {
            v136 = *v132;
            v137 = *(v132 + 16);
            v138 = *(v132 + 32);
            v139 = *(v132 + 48);
            v140 = *(v132 + 64);
            v141 = *(v132 + 80);
            v142 = *(v132 + 96);
            v143 = *(v132 + 112);
            v300 = vzip1q_s64(*v132, v137);
            v301 = vzip1q_s64(v140, v141);
            v304 = vzip2q_s64(v136, v137);
            v305 = vzip2q_s64(v140, v141);
            v308 = vzip1q_s64(v138, v139);
            v309 = vzip1q_s64(v142, v143);
            v312 = vzip2q_s64(v138, v139);
            v313 = vzip2q_s64(v142, v143);
            v134 = 128;
          }

          else if (v133 == 3)
          {
            v135 = vld1q_dup_f32(v132);
            v300 = v135;
            v301 = v135;
            v304 = v135;
            v305 = v135;
            v308 = v135;
            v309 = v135;
            v312 = v135;
            v313 = v135;
            v134 = 4;
          }

          else if (v69[5])
          {
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v132, v133);
          }

          else
          {
            v134 = 0;
            v300 = 0u;
            v301 = 0u;
            v304 = 0u;
            v305 = 0u;
            v308 = 0u;
            v309 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v144 = v132 + v134;
          v145 = v69[6];
          if (v145 == 127)
          {
            v148 = *v144;
            v149 = *(v144 + 16);
            v150 = *(v144 + 32);
            v151 = *(v144 + 48);
            v152 = *(v144 + 64);
            v153 = *(v144 + 80);
            v154 = *(v144 + 96);
            v155 = *(v144 + 112);
            v286 = vzip1q_s64(*v144, v149);
            v287 = vzip1q_s64(v152, v153);
            v290 = vzip2q_s64(v148, v149);
            v291 = vzip2q_s64(v152, v153);
            v294 = vzip1q_s64(v150, v151);
            v295 = vzip1q_s64(v154, v155);
            v298 = vzip2q_s64(v150, v151);
            v299 = vzip2q_s64(v154, v155);
            v146 = 128;
          }

          else if (v145 == 3)
          {
            v147 = vld1q_dup_f32(v144);
            v286 = v147;
            v287 = v147;
            v290 = v147;
            v291 = v147;
            v294 = v147;
            v295 = v147;
            v298 = v147;
            v299 = v147;
            v146 = 4;
          }

          else if (v69[6])
          {
            v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 64, v144, v145);
          }

          else
          {
            v146 = 0;
            v286 = 0u;
            v287 = 0u;
            v290 = 0u;
            v291 = 0u;
            v294 = 0u;
            v295 = 0u;
            v298 = 0u;
            v299 = 0u;
          }

          v156 = v144 + v146;
          v157 = v69[7];
          if (v157 == 127)
          {
            v160 = *v156;
            v161 = *(v156 + 16);
            v162 = *(v156 + 32);
            v163 = *(v156 + 48);
            v164 = *(v156 + 64);
            v165 = *(v156 + 80);
            v166 = *(v156 + 96);
            v167 = *(v156 + 112);
            v302 = vzip1q_s64(*v156, v161);
            v303 = vzip1q_s64(v164, v165);
            v306 = vzip2q_s64(v160, v161);
            v307 = vzip2q_s64(v164, v165);
            v310 = vzip1q_s64(v162, v163);
            v311 = vzip1q_s64(v166, v167);
            v314 = vzip2q_s64(v162, v163);
            v315 = vzip2q_s64(v166, v167);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v157 == 3)
          {
            v159 = vld1q_dup_f32(v156);
            v302 = v159;
            v303 = v159;
            v306 = v159;
            v307 = v159;
            v310 = v159;
            v311 = v159;
            v314 = v159;
            v315 = v159;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v69[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v302, 64, v156, v157);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v302 = 0u;
            v303 = 0u;
            v306 = 0u;
            v307 = 0u;
            v310 = 0u;
            v311 = 0u;
            v314 = 0u;
            v315 = 0u;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          v168 = v248;
          if (v248)
          {
            v169 = 0;
            v170 = 4 * v246;
            v171 = &v252.i8[64 * v245 + v170];
            v172 = v243;
            v173 = v244;
            v174 = 4 * v248;
            if (4 * v248)
            {
              v175 = (4 * v248 - 1) >> 32 == 0;
            }

            else
            {
              v175 = 0;
            }

            v176 = !v175;
            v178 = v171 < &v243->i8[4 * v248 + v244 * (v158 - 1)] && v243 < &__dst[64 * v158 + 960 + 64 * v245 + 4 * v248 + v170];
            v179 = v178 || v244 < 0;
            v180 = v174 & 0x1FFFFFFE0;
            v181 = v174 & 0x1FFFFFFF8;
            v182 = (v248 == 1) | v176 | v179;
            v183 = &v253.i8[64 * v245 + v170];
            v184 = v243 + 1;
            v185 = v171;
            v186 = v243;
            do
            {
              v187 = &v172->i8[v169 * v173];
              v188 = &v171[64 * v169];
              if (v182)
              {
                v189 = 0;
                goto LABEL_173;
              }

              if (v168 >= 8)
              {
                v191 = v184;
                v192 = v183;
                v193 = v174 & 0x1FFFFFFE0;
                do
                {
                  v194 = *v191;
                  *(v192 - 1) = v191[-1];
                  *v192 = v194;
                  v192 += 32;
                  v191 += 2;
                  v193 -= 32;
                }

                while (v193);
                if (v174 == v180)
                {
                  goto LABEL_159;
                }

                v190 = v174 & 0x1FFFFFFE0;
                if ((v168 & 6) == 0)
                {
                  v187 += v180;
                  v188 += v180;
                  v189 = v174 & 0xFFFFFFE0;
                  goto LABEL_173;
                }
              }

              else
              {
                v190 = 0;
              }

              v188 += v181;
              v195 = -8 * ((v168 >> 1) & 0x3FFFFFFF) + v190;
              v196 = (v186->i64 + v190);
              v197 = &v185[v190];
              do
              {
                v198 = *v196++;
                *v197 = v198;
                v197 += 8;
                v195 += 8;
              }

              while (v195);
              if (v174 == v181)
              {
                goto LABEL_159;
              }

              v187 += v181;
              v189 = v174 & 0xFFFFFFF8;
LABEL_173:
              v199 = v189 + 1;
              do
              {
                v200 = *v187++;
                *v188++ = v200;
              }

              while (v174 > v199++);
LABEL_159:
              ++v169;
              v183 += 64;
              v184 = (v184 + v173);
              v186 = (v186 + v173);
              v185 += 64;
            }

            while (v169 != v158);
          }

LABEL_176:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v252, 64, v241, v242, v249, v250);
LABEL_177:
          if (v239)
          {
            memcpy(v238, v71, 0x400uLL);
          }

          v21 = v34++ == v227 >> 4;
          result = v236;
        }

        while (!v21);
        v21 = v17++ == v219;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v155 = v21;
  v156 = v22;
  v140 = v23;
  v24 = v12;
  v184 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v160 = v14;
  v142 = v14 + a10 - 1;
  v161 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 4;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v141 = v142 >> 4;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v163 = v32;
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
      v154 = 0;
LABEL_32:
      v151 = v35 - 4;
      v145 = v34 - 4;
      v41 = -1 << *(*(v24 + 208) + 48);
      v139 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v154 = v40 >= v34;
    goto LABEL_32;
  }

  v154 = 0;
  v139 = 0;
  v145 = 0;
  v151 = 0;
LABEL_33:
  if (v26 <= v141)
  {
    v153 = v16 + a9 - 1;
    v138 = v16 >> 4;
    if (v16 >> 4 <= v153 >> 4)
    {
      v162 = v27 >> 4;
      v147 = v27 & 0xF;
      v136 = v28 & 0xF;
      v137 = v28 >> 4;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v43 = vcgt_u32(v42, 0x1F0000001FLL);
      v144 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 4uLL))))))), v43);
      v143 = v43;
      v152 = v16;
      do
      {
        v44 = (16 * v26) | 0xF;
        if (16 * v26 <= v160)
        {
          v45 = v160;
        }

        else
        {
          v45 = 16 * v26;
        }

        if (v142 < v44)
        {
          v44 = v142;
        }

        v150 = v45 - 16 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v136;
        v149 = v47;
        v49 = v47 != 16;
        v50 = v136 + 1;
        if (v26 != v137)
        {
          v50 = 16;
          v48 = v49;
        }

        v148 = v48;
        v51 = v138;
        v158 = v140 + (v45 - v160) * a11;
        v159 = v50;
        v157 = v50;
        do
        {
          v52 = 16 * v51;
          v53 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 16 * v51;
          }

          if (v153 < v53)
          {
            v53 = v153;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v51 == v162)
          {
            v57 = v147 + 1;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (16 * v26 >= v160 && v52 >= v16)
          {
            v59 = v55 != v147;
            if (v51 != v162)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v148;
          }

          if (v154)
          {
            if (v151 | v145)
            {
              v60 = 0;
              v61 = 0;
              v62 = v145 != 0;
              v63 = 1;
              v65 = v151 != 0;
              v64 = v145;
              v66 = v151;
              do
              {
                --v66;
                if (v65)
                {
                  v61 |= (v51 & ~(-1 << v151) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                --v64;
                if (v62)
                {
                  v61 |= (v26 & ~(-1 << v145) & v63) << v60++;
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

            v75 = v67 + *(result + 336) * ((v51 >> v151) + (v26 >> v145) * v139);
          }

          else if (v144)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v143.i8[0];
            v72 = v143.i8[4];
            v74 = v144.i32[0];
            v73 = v144.i32[1];
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
                v69 |= (v70 & v26) << v68++;
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

          v76 = *(result + 128) >> (*(result + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 15;
          if (v77 < 0x20)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 4) - 1)));
          }

          v79 = *(result + 132) >> (*(result + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 15;
          if (v80 < 0x20)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_104:
              v87 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 4) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_104;
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
              v83 |= (v86 & v26) << v82++;
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
LABEL_105:
          v88 = (v156 + v87);
          v89 = v158 + 8 * (v54 - v16);
          v90 = (v155 + v75);
          if (v163)
          {
            if (!(v58 & 1 | (v57 < 0x10u) | (v157 < 0x10)))
            {
              v94 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v89, a11, v94, v88, v57, v159);
LABEL_113:
              v16 = v152;
              if (v163)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v146 = v56;
            v91 = v58;
            v92 = v57;
            v93 = v54;
            memcpy(__dst, v90, sizeof(__dst));
            v54 = v93;
            v58 = v91;
            v94 = __dst;
            v56 = v146;
            LOBYTE(v57) = v92;
            result = v161;
          }

          else
          {
            v94 = (v155 + v75);
            if (!(v58 & 1 | (v57 < 0x10u) | (v157 < 0x10)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v165 = v94;
          v173 = v57;
          v174 = v159;
          v169 = v150;
          v170 = v54 - v52;
          v166 = v88;
          v167 = v89;
          v168 = a11;
          v171 = v149;
          v172 = v56;
          if (v58)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v95 = v94->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v94, *v88);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 128, v95, v88[1]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 128, v96, v88[2]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 128, v97, v88[3]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 128, v98, v88[4]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v182, 128, v99, v88[5]);
          v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v181, 128, v100, v88[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v183, 128, v100 + v101, v88[7]);
          v102 = v171;
          v16 = v152;
          if (v171)
          {
            v103 = v172;
            if (v172)
            {
              v104 = 0;
              v105 = v169 << 7;
              v106 = 8 * v170;
              v107 = v176 + v105 + v106;
              v108 = v167;
              v109 = v168;
              v110 = 8 * v172;
              if (8 * v172)
              {
                v111 = (8 * v172 - 1) >> 32 == 0;
              }

              else
              {
                v111 = 0;
              }

              v112 = !v111;
              v114 = v107 < v167 + v168 * (v171 - 1) + 8 * v172 && v167 < &__dst[128 * v171 + 1920 + 128 * v169 + 8 * v172 + v106];
              v115 = v110 & 0x1FFFFFFE0;
              v116 = v112 | (v168 < 0) | v114;
              v117 = &v176[1] + v105 + v106;
              v118 = (v167 + 16);
              v119 = v107;
              v120 = v167;
              do
              {
                v121 = (v108 + v104 * v109);
                v122 = &v107[128 * v104];
                if (v116)
                {
                  v123 = 0;
                }

                else
                {
                  if (v103 < 4)
                  {
                    v127 = 0;
LABEL_142:
                    v132 = -8 * v103 + v127;
                    v133 = (v120 + v127);
                    v134 = &v119[v127];
                    do
                    {
                      v135 = *v133++;
                      *v134 = v135;
                      v134 += 8;
                      v132 += 8;
                    }

                    while (v132);
                    goto LABEL_130;
                  }

                  v128 = v118;
                  v129 = v117;
                  v130 = v110 & 0x1FFFFFFE0;
                  do
                  {
                    v131 = *v128;
                    *(v129 - 1) = *(v128 - 1);
                    *v129 = v131;
                    v129 += 2;
                    v128 += 2;
                    v130 -= 32;
                  }

                  while (v130);
                  if (v110 == v115)
                  {
                    goto LABEL_130;
                  }

                  v127 = v110 & 0x1FFFFFFE0;
                  if ((v103 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v121 += v115;
                  v122 += v115;
                  v123 = v110 & 0xFFFFFFE0;
                }

                v124 = v123 + 1;
                do
                {
                  v125 = *v121++;
                  *v122++ = v125;
                }

                while (v110 > v124++);
LABEL_130:
                ++v104;
                v117 += 128;
                v118 = (v118 + v109);
                v120 += v109;
                v119 += 128;
              }

              while (v104 != v102);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v176, 128, v165, v166, v173, v174);
          if (v163)
          {
LABEL_46:
            memcpy(v90, v94, 0x800uLL);
          }

LABEL_47:
          v29 = v51++ == v153 >> 4;
          result = v161;
        }

        while (!v29);
        v29 = v26++ == v141;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v217 = v21;
  v218 = v22;
  v199 = v23;
  v24 = v12;
  v245 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v221 = v14;
  v201 = v14 + a10 - 1;
  v222 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 4;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v200 = v201 >> 4;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v224 = v32;
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
      v216 = 0;
LABEL_32:
      v212 = v35 - 4;
      v205 = v34 - 4;
      v41 = -1 << *(*(v24 + 208) + 48);
      v198 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v216 = v40 >= v34;
    goto LABEL_32;
  }

  v216 = 0;
  v198 = 0;
  v205 = 0;
  v212 = 0;
LABEL_33:
  if (v26 <= v200)
  {
    v215 = v16 + a9 - 1;
    v197 = v16 >> 4;
    if (v16 >> 4 <= v215 >> 4)
    {
      v42 = a11;
      v223 = v27 >> 4;
      v208 = v27 & 0xF;
      v195 = v28 & 0xF;
      v196 = v28 >> 4;
      v194 = ~(-1 << v205);
      v43 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v44 = vcgt_u32(v43, 0x1F0000001FLL);
      v204 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v43, 4uLL))))))), v44);
      v203 = v44;
      v214 = v16;
      do
      {
        v45 = (16 * v26) | 0xF;
        if (16 * v26 <= v221)
        {
          v46 = v221;
        }

        else
        {
          v46 = 16 * v26;
        }

        if (v201 < v45)
        {
          v45 = v201;
        }

        v211 = v46 - 16 * v26;
        v47 = v45 - v46;
        v48 = v47 + 1;
        v49 = v47 != v195;
        v210 = v48;
        v50 = v197;
        if (v26 == v196)
        {
          v51 = v195 + 1;
        }

        else
        {
          v51 = 16;
        }

        if (v26 != v196)
        {
          v49 = v48 != 16;
        }

        v209 = v49;
        v52 = v26 & v194;
        v220 = v199 + (v46 - v221) * v42;
        v219 = v51;
        v202 = v51;
        do
        {
          v53 = 16 * v50;
          v54 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v50;
          }

          if (v215 < v54)
          {
            v54 = v215;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v50 == v223)
          {
            v58 = v208 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (16 * v26 >= v221 && v53 >= v16)
          {
            v60 = v56 != v208;
            if (v50 != v223)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v209;
          }

          if (v216)
          {
            if (v212 | v205)
            {
              v61 = 0;
              v62 = 0;
              v63 = v205 != 0;
              v64 = 1;
              v66 = v212 != 0;
              v65 = v205;
              v67 = v212;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v50 & ~(-1 << v212) & v64) << v61++;
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

            v76 = v68 + *(result + 336) * ((v50 >> v212) + (v26 >> v205) * v198);
          }

          else if (v204)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v203.i8[0];
            v73 = v203.i8[4];
            v75 = v204.i32[0];
            v74 = v204.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v50) << v69++;
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

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 15;
          if (v81 < 0x20)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_106:
              v88 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_106;
            }
          }

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
              v84 |= (v87 & v50) << v83++;
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
LABEL_107:
          v89 = (v218 + v88);
          v90 = v220 + 8 * (v55 - v16);
          v91 = (v217 + v76);
          if (v224)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v219 < 0x10)))
            {
              v95 = __dst;
LABEL_114:
              v97 = &byte_29D2F2FD5;
              v98 = 16;
              v99 = v95;
              do
              {
                v122 = *v97;
                v123 = *(v97 - 1);
                if (v58 <= 8 * v123 || 4 * v122 >= v51)
                {
                  v121 = 0;
                }

                else
                {
                  v100 = (v90 + 4 * a11 * v122 + (v123 << 6));
                  v101 = (v100 + v42);
                  v103 = *v100;
                  v104 = v100[1];
                  v105 = v100[2];
                  v106 = v100[3];
                  v102 = (v100 + 2 * a11);
                  v107 = v101[2];
                  v108 = v101[3];
                  v109 = *v101;
                  v111 = *v102;
                  v112 = v102[1];
                  v113 = v102[2];
                  v114 = v102[3];
                  v110 = (v102 + v42);
                  v115 = v104;
                  v116 = v101[1];
                  v117 = v110[1];
                  v118 = v110[2];
                  v119 = v110[3];
                  v120 = *v110;
                  *v99 = v103;
                  v99[1] = v109;
                  v99[2] = v115;
                  v99[3] = v116;
                  v99[4] = v111;
                  v99[5] = v120;
                  v99[6] = v112;
                  v99[7] = v117;
                  v99[8] = v105;
                  v99[9] = v107;
                  v99[10] = v106;
                  v99[11] = v108;
                  v99[12] = v113;
                  v99[13] = v118;
                  v99[14] = v114;
                  v99[15] = v119;
                  v99 += 16;
                  v121 = -1;
                }

                *v89++ = v121;
                v97 += 2;
                v98 -= 2;
              }

              while (v98);
              v16 = v214;
              goto LABEL_123;
            }

            v92 = (v217 + v76);
            v206 = v57;
            v93 = v42;
            v94 = v59;
            memcpy(__dst, v91, sizeof(__dst));
            v53 = 16 * v50;
            v59 = v94;
            v42 = v93;
            v51 = v202;
            v52 = v26 & v194;
            v57 = v206;
            v95 = __dst;
            v91 = v92;
            result = v222;
          }

          else
          {
            v95 = (v217 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v219 < 0x10)))
            {
              goto LABEL_114;
            }
          }

          v213 = v91;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v226 = v95;
          v234 = v58;
          v235 = v51;
          v230 = v211;
          v231 = v55 - v53;
          v227 = v89;
          v228 = v90;
          v229 = v42;
          v232 = v210;
          v233 = v57;
          if (v59)
          {
            v96 = v95;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v95 = v96;
            result = v222;
            v16 = v214;
            v91 = v213;
            goto LABEL_123;
          }

          v207 = v95;
          v125 = &v95[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v237, 128, v95, *v89)];
          v126 = v125 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 128, v125, v89[1]);
          v127 = v126 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 128, v126, v89[2]);
          v128 = v127 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 128, v127, v89[3]);
          v129 = v128 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 128, v128, v89[4]);
          v130 = v129 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 128, v129, v89[5]);
          v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 128, v130, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 128, v130 + v131, v89[7]);
          v132 = v232;
          if (v232)
          {
            v133 = v233;
            if (v233)
            {
              v134 = 0;
              v135 = v230 << 7;
              v136 = 8 * v231;
              v137 = v237 + v135 + v136;
              v138 = v228;
              v139 = v229;
              v140 = 8 * v233;
              if (8 * v233)
              {
                v141 = (8 * v233 - 1) >> 32 == 0;
              }

              else
              {
                v141 = 0;
              }

              v142 = !v141;
              v144 = v137 < v228 + v229 * (v232 - 1) + 8 * v233 && v228 < &__dst[128 * v232 + 1920 + 128 * v230 + 8 * v233 + v136];
              v145 = v140 & 0x1FFFFFFE0;
              v146 = v142 | (v229 < 0) | v144;
              v147 = &v237[1] + v135 + v136;
              v148 = (v228 + 16);
              v149 = v137;
              v150 = v228;
              do
              {
                v151 = (v138 + v134 * v139);
                v152 = &v137[128 * v134];
                if (v146)
                {
                  v153 = 0;
                }

                else
                {
                  if (v133 < 4)
                  {
                    v157 = 0;
LABEL_152:
                    v162 = -8 * v133 + v157;
                    v163 = (v150 + v157);
                    v164 = &v149[v157];
                    do
                    {
                      v165 = *v163++;
                      *v164 = v165;
                      v164 += 8;
                      v162 += 8;
                    }

                    while (v162);
                    goto LABEL_140;
                  }

                  v158 = v148;
                  v159 = v147;
                  v160 = v140 & 0x1FFFFFFE0;
                  do
                  {
                    v161 = *v158;
                    *(v159 - 1) = *(v158 - 1);
                    *v159 = v161;
                    v159 += 2;
                    v158 += 2;
                    v160 -= 32;
                  }

                  while (v160);
                  if (v140 == v145)
                  {
                    goto LABEL_140;
                  }

                  v157 = v140 & 0x1FFFFFFE0;
                  if ((v133 & 3) != 0)
                  {
                    goto LABEL_152;
                  }

                  v151 += v145;
                  v152 += v145;
                  v153 = v140 & 0xFFFFFFE0;
                }

                v154 = v153 + 1;
                do
                {
                  v155 = *v151++;
                  *v152++ = v155;
                }

                while (v140 > v154++);
LABEL_140:
                ++v134;
                v147 += 128;
                v148 = (v148 + v139);
                v150 += v139;
                v149 += 128;
              }

              while (v134 != v132);
            }
          }

          v166 = v226;
          v167 = v227;
          v168 = v234;
          v169 = &byte_29D2F2FD5;
          v170 = 16;
          v171 = v235;
          v16 = v214;
          result = v222;
          v91 = v213;
          v95 = v207;
          do
          {
            v191 = *v169;
            v192 = *(v169 - 1);
            if (v168 <= 8 * v192 || 4 * v191 >= v171)
            {
              v190 = 0;
            }

            else
            {
              v172 = &v237[32 * v191 + 4 * v192];
              v173 = v172[2];
              v174 = v172[10];
              v175 = v172[3];
              v176 = v172[11];
              v177 = *v172;
              v178 = v172[8];
              v179 = v172[1];
              v180 = v172[16];
              v181 = v172[17];
              v182 = v172[18];
              v183 = v172[19];
              v184 = v172[9];
              v172 += 24;
              v185 = v172[1];
              v186 = v172[2];
              v187 = v172[3];
              v188 = *v172;
              *v166 = v177;
              v166[1] = v178;
              v166[2] = v179;
              v166[3] = v184;
              v166[4] = v180;
              v166[5] = v188;
              v166[6] = v181;
              v166[7] = v185;
              v166[8] = v173;
              v166[9] = v174;
              v166[10] = v175;
              v166[11] = v176;
              v189 = v166 + 12;
              v166 += 16;
              v190 = -1;
              *v189 = v182;
              v189[1] = v186;
              v189[2] = v183;
              v189[3] = v187;
            }

            *v167++ = v190;
            v169 += 2;
            v170 -= 2;
          }

          while (v170);
LABEL_123:
          if (v224)
          {
            memcpy(v91, v95, 0x800uLL);
            result = v222;
          }

          v29 = v50++ == v215 >> 4;
        }

        while (!v29);
        v29 = v26++ == v200;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v151 = v21;
  v152 = v22;
  v140 = v23;
  v24 = v12;
  v181 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v157 = v14;
  v25 = v14 >> 4;
  v139 = v14 + a10 - 1;
  v141 = v139 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v158 = v24;
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
  v160 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v150 = result;
  if (v25 <= v141)
  {
    v149 = v16 + a9 - 1;
    v138 = v16 >> 4;
    if (v16 >> 4 <= v149 >> 4)
    {
      result = v24;
      v159 = (v20 - 1) >> 4;
      v135 = v20 - 1;
      v142 = (v20 - 1) & 0xF;
      v136 = (v18 - 1) & 0xF;
      v137 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v147 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v146 = v35;
      v134 = 8 * v27 * v26;
      v148 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v157)
        {
          v37 = v157;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v139 < v36)
        {
          v36 = v139;
        }

        v156 = 16 * v25;
        v145 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v136;
        v144 = v39;
        v41 = v39 != 16;
        v42 = v138;
        v43 = v136 + 1;
        if (v25 != v137)
        {
          v43 = 16;
          v40 = v41;
        }

        v143 = v40;
        v154 = v140 + (v37 - v157) * a11;
        v155 = v43;
        v153 = v43;
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

          if (v149 < v45)
          {
            v45 = v149;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v159)
          {
            v49 = v142 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v156 >= v157 && v44 >= v16)
          {
            v51 = v47 != v142;
            if (v42 != v159)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v143;
          }

          if (v150)
          {
            v72 = 0;
            v73 = v134 >> (*(result + 57) != 0);
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
              v76 = 16;
              v75 = 1;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v72 = 16;
              v75 = 1;
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

            v124 = (v72 >> 4) - 1;
            if (v74)
            {
              v125 = 0;
              if (v75)
              {
                goto LABEL_150;
              }

LABEL_139:
              v126 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v126 | v125)
              {
                goto LABEL_140;
              }

LABEL_151:
              v133 = 0;
            }

            else
            {
              v125 = 32 - __clz(~(-1 << -__clz(v124)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v126 = 0;
              if (!v125)
              {
                goto LABEL_151;
              }

LABEL_140:
              v127 = 0;
              v128 = 0;
              v129 = v42 & v124;
              v130 = v125 != 0;
              v131 = v126 != 0;
              v132 = 1;
              do
              {
                --v125;
                if (v130)
                {
                  v128 |= (v132 & v129) << v127++;
                }

                else
                {
                  v125 = 0;
                }

                --v126;
                if (v131)
                {
                  v128 |= (v132 & v25 & ((v76 >> 4) - 1)) << v127++;
                }

                else
                {
                  v126 = 0;
                }

                v132 *= 2;
                --v127;
                v131 = v126 != 0;
                v130 = v125 != 0;
              }

              while (v126 | v125);
              v133 = v128 << 11;
              result = v158;
            }

            v59 = v133 + ((v44 / v72 + v156 / v76 * ((v72 + v135) / v72)) << 14);
            goto LABEL_53;
          }

          if (v147)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v146.i8[0];
            v56 = v146.i8[4];
            v58 = v147.i32[0];
            v57 = v147.i32[1];
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

          v64 = v63 + 15;
          if (v64 < 0x20)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
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
          v77 = (v152 + v71);
          v78 = v154 + 8 * (v46 - v16);
          v79 = (v151 + v59);
          if (v160)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v153 < 0x10)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v155);
LABEL_87:
              v16 = v148;
              if (v160)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v80 = v50;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v44 = 16 * v42;
            v82 = __dst;
            v50 = v80;
            result = v158;
          }

          else
          {
            v82 = (v151 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v153 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v162 = v82;
          v170 = v49;
          v171 = v155;
          v166 = v145;
          v167 = v46 - v44;
          v163 = v77;
          v164 = v78;
          v165 = a11;
          v168 = v144;
          v169 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = v82->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v82, *v77);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 128, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 128, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 128, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 128, v88 + v89, v77[7]);
          v90 = v168;
          v16 = v148;
          if (v168)
          {
            v91 = v169;
            if (v169)
            {
              v92 = 0;
              v93 = v166 << 7;
              v94 = 8 * v167;
              v95 = v173 + v93 + v94;
              v96 = v164;
              v97 = v165;
              v98 = 8 * v169;
              if (8 * v169)
              {
                v99 = (8 * v169 - 1) >> 32 == 0;
              }

              else
              {
                v99 = 0;
              }

              v100 = !v99;
              v102 = v95 < v164 + v165 * (v168 - 1) + 8 * v169 && v164 < &__dst[128 * v168 + 1920 + 128 * v166 + 8 * v169 + v94];
              v103 = v98 & 0x1FFFFFFE0;
              v104 = v100 | (v165 < 0) | v102;
              v105 = &v173[1] + v93 + v94;
              v106 = (v164 + 16);
              v107 = v95;
              v108 = v164;
              do
              {
                v109 = (v96 + v92 * v97);
                v110 = &v95[128 * v92];
                if (v104)
                {
                  v111 = 0;
                }

                else
                {
                  if (v91 < 4)
                  {
                    v115 = 0;
LABEL_116:
                    v120 = -8 * v91 + v115;
                    v121 = (v108 + v115);
                    v122 = &v107[v115];
                    do
                    {
                      v123 = *v121++;
                      *v122 = v123;
                      v122 += 8;
                      v120 += 8;
                    }

                    while (v120);
                    goto LABEL_104;
                  }

                  v116 = v106;
                  v117 = v105;
                  v118 = v98 & 0x1FFFFFFE0;
                  do
                  {
                    v119 = *v116;
                    *(v117 - 1) = *(v116 - 1);
                    *v117 = v119;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                  if (v98 == v103)
                  {
                    goto LABEL_104;
                  }

                  v115 = v98 & 0x1FFFFFFE0;
                  if ((v91 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v109 += v103;
                  v110 += v103;
                  v111 = v98 & 0xFFFFFFE0;
                }

                v112 = v111 + 1;
                do
                {
                  v113 = *v109++;
                  *v110++ = v113;
                }

                while (v98 > v112++);
LABEL_104:
                ++v92;
                v105 += 128;
                v106 = (v106 + v97);
                v108 += v97;
                v107 += 128;
              }

              while (v92 != v90);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v173, 128, v162, v163, v170, v171);
          if (v160)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v149 >> 4;
          result = v158;
        }

        while (!v29);
        v29 = v25++ == v141;
      }

      while (!v29);
    }
  }

  return result;
}