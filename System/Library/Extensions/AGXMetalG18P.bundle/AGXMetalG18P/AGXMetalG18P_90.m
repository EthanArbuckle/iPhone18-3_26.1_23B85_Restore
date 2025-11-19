uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v237 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v188 = a8;
  v17 = a8 >> 4;
  v169 = a8 + a10 - 1;
  v171 = v169 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v190 = a1;
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
  v192 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v181 = result;
  if (v17 <= v171)
  {
    v180 = a7 + a9 - 1;
    v168 = a7 >> 4;
    if (a7 >> 4 <= v180 >> 4)
    {
      result = a1;
      v189 = (a5 - 1) >> 4;
      v165 = a5 - 1;
      v172 = (a5 - 1) & 0xF;
      v166 = (a6 - 1) & 0xF;
      v167 = (a6 - 1) >> 4;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v31.i8 = vcgt_u32(v30, 0x1F0000001FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), *v31.i8);
      v177 = v34.i64[0];
      v178 = v34.i32[0] | v34.i32[1];
      v176 = v31.i64[0];
      v164 = 8 * v19 * v18;
      v179 = a7;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v188)
        {
          v36 = v188;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v169 < v35)
        {
          v35 = v169;
        }

        v187 = 16 * v17;
        v175 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v166;
        v174 = v38;
        v40 = v38 != 16;
        v41 = v168;
        v42 = v166 + 1;
        if (v17 != v167)
        {
          v42 = 16;
          v39 = v40;
        }

        v173 = v39;
        v185 = a3 + (v36 - v188) * a11;
        v186 = v42;
        v184 = v42;
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

          if (v180 < v44)
          {
            v44 = v180;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v189)
          {
            v48 = v172 + 1;
          }

          else
          {
            v48 = 16;
          }

          v49 = 1;
          if (v187 >= v188 && v43 >= a7)
          {
            v50 = v46 != v172;
            if (v41 != v189)
            {
              v50 = v47 != 16;
            }

            v49 = v50 || v173;
          }

          if (v181)
          {
            v71 = 0;
            v72 = v164 >> (*(result + 57) != 0);
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
              v75 = 16;
              v74 = 1;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v71 = 16;
              v74 = 1;
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

            v154 = (v71 >> 4) - 1;
            if (v73)
            {
              v155 = 0;
              if (v74)
              {
                goto LABEL_226;
              }

LABEL_215:
              v156 = 32 - __clz(~(-1 << -__clz(((v75 + 15) >> 4) - 1)));
              if (v156 | v155)
              {
                goto LABEL_216;
              }

LABEL_227:
              v163 = 0;
            }

            else
            {
              v155 = 32 - __clz(~(-1 << -__clz(v154)));
              if ((v74 & 1) == 0)
              {
                goto LABEL_215;
              }

LABEL_226:
              v156 = 0;
              if (!v155)
              {
                goto LABEL_227;
              }

LABEL_216:
              v157 = 0;
              v158 = 0;
              v159 = v41 & v154;
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
                  v158 |= (v162 & v17 & ((v75 >> 4) - 1)) << v157++;
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
              v163 = v158 << 8;
              result = v190;
            }

            v58 = v163 + ((v43 / v71 + v187 / v75 * ((v71 + v165) / v71)) << 14);
            goto LABEL_53;
          }

          if (v178)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v54 = v176;
            v55 = BYTE4(v176);
            v57 = v177;
            v56 = HIDWORD(v177);
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

          v63 = v62 + 15;
          if (v63 < 0x20)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 4) - 1)));
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
          v77 = v185 + 2 * (v45 - a7);
          v78 = (a2 + v58);
          __dst = (a2 + v58);
          if (v192)
          {
            v78 = v204;
            if (!(v49 & 1 | (v48 < 0x10u) | (v184 < 0x10)))
            {
              goto LABEL_85;
            }

            memcpy(v204, __dst, sizeof(v204));
            result = v190;
          }

          else if (!(v49 & 1 | (v48 < 0x10u) | (v184 < 0x10)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v77, a11, v78, v76, v48, v186, *(*(result + 208) + 52), *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i8, v27, v28, v29);
LABEL_86:
            a7 = v179;
            if (v192)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v194 = v78;
          v202 = v48;
          v203 = v186;
          v198 = v175;
          v199 = v45 - v43;
          v195 = v76;
          v196 = v77;
          v197 = a11;
          v200 = v174;
          v201 = v47;
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
                v83 = v78[1];
                v32 = v78[2];
                v33 = v78[3];
                v26 = vuzp1q_s32(*v78, v32);
                v84 = vuzp2q_s32(*v78, v32);
                v205 = v26;
                v207 = v84;
                v34 = vuzp1q_s32(v83, v33);
                v31 = vuzp2q_s32(v83, v33);
                v209 = v34;
                v211 = v31;
                v82 = 64;
              }

              else if (v81 == 1)
              {
                v34 = vld1q_dup_s16(v78->i16);
                v205 = v34;
                v207 = v34;
                v209 = v34;
                v211 = v34;
                v82 = 2;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v205, 32, v78, v81, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v205, 32, v78, v81, *(v79 + 52)).u64[0];
              v82 = 32;
            }
          }

          else
          {
            v82 = 0;
            v205 = 0uLL;
            v207 = 0uLL;
            v209 = 0uLL;
            v211 = 0uLL;
          }

          v85 = v78->u64 + v82;
          v86 = v76[1];
          if (v76[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 63)
              {
                v88 = *(v85 + 16);
                v32 = *(v85 + 32);
                v33 = *(v85 + 48);
                v26 = vuzp1q_s32(*v85, v32);
                v89 = vuzp2q_s32(*v85, v32);
                v213 = v26;
                v215 = v89;
                v34 = vuzp1q_s32(v88, v33);
                v31 = vuzp2q_s32(v88, v33);
                v217 = v34;
                v219 = v31;
                v87 = 64;
              }

              else if (v86 == 1)
              {
                v34 = vld1q_dup_s16(v85);
                v213 = v34;
                v215 = v34;
                v217 = v34;
                v219 = v34;
                v87 = 2;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 32, v85, v86, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v213, 32, v85, v86, v80).u64[0];
              v87 = 32;
            }
          }

          else
          {
            v87 = 0;
            v213 = 0uLL;
            v215 = 0uLL;
            v217 = 0uLL;
            v219 = 0uLL;
          }

          v90 = v85 + v87;
          v91 = v76[2];
          if (v76[2])
          {
            if (v91 < 0xF0)
            {
              if (v91 == 63)
              {
                v93 = *(v90 + 16);
                v32 = *(v90 + 32);
                v33 = *(v90 + 48);
                v26 = vuzp1q_s32(*v90, v32);
                v94 = vuzp2q_s32(*v90, v32);
                v206 = v26;
                v208 = v94;
                v34 = vuzp1q_s32(v93, v33);
                v31 = vuzp2q_s32(v93, v33);
                v210 = v34;
                v212 = v31;
                v92 = 64;
              }

              else if (v91 == 1)
              {
                v34 = vld1q_dup_s16(v90);
                v206 = v34;
                v208 = v34;
                v210 = v34;
                v212 = v34;
                v92 = 2;
              }

              else
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v206, 32, v90, v91, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v206, 32, v90, v91, v80).u64[0];
              v92 = 32;
            }
          }

          else
          {
            v92 = 0;
            v206 = 0uLL;
            v208 = 0uLL;
            v210 = 0uLL;
            v212 = 0uLL;
          }

          v95 = v90 + v92;
          v96 = v76[3];
          if (v76[3])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 63)
              {
                v98 = *(v95 + 16);
                v32 = *(v95 + 32);
                v33 = *(v95 + 48);
                v26 = vuzp1q_s32(*v95, v32);
                v99 = vuzp2q_s32(*v95, v32);
                v214 = v26;
                v216 = v99;
                v34 = vuzp1q_s32(v98, v33);
                v31 = vuzp2q_s32(v98, v33);
                v218 = v34;
                v220 = v31;
                v97 = 64;
              }

              else if (v96 == 1)
              {
                v34 = vld1q_dup_s16(v95);
                v214 = v34;
                v216 = v34;
                v218 = v34;
                v220 = v34;
                v97 = 2;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v214, 32, v95, v96, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v214, 32, v95, v96, v80).u64[0];
              v97 = 32;
            }
          }

          else
          {
            v97 = 0;
            v214 = 0uLL;
            v216 = 0uLL;
            v218 = 0uLL;
            v220 = 0uLL;
          }

          v100 = v95 + v97;
          v101 = v76[4];
          if (v76[4])
          {
            if (v101 < 0xF0)
            {
              if (v101 == 63)
              {
                v103 = *(v100 + 16);
                v32 = *(v100 + 32);
                v33 = *(v100 + 48);
                v26 = vuzp1q_s32(*v100, v32);
                v104 = vuzp2q_s32(*v100, v32);
                v221 = v26;
                v223 = v104;
                v34 = vuzp1q_s32(v103, v33);
                v31 = vuzp2q_s32(v103, v33);
                v225 = v34;
                v227 = v31;
                v102 = 64;
              }

              else if (v101 == 1)
              {
                v34 = vld1q_dup_s16(v100);
                v221 = v34;
                v223 = v34;
                v225 = v34;
                v227 = v34;
                v102 = 2;
              }

              else
              {
                v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v221, 32, v100, v101, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v221, 32, v100, v101, v80).u64[0];
              v102 = 32;
            }
          }

          else
          {
            v102 = 0;
            v221 = 0uLL;
            v223 = 0uLL;
            v225 = 0uLL;
            v227 = 0uLL;
          }

          v105 = v100 + v102;
          v106 = v76[5];
          if (v76[5])
          {
            if (v106 < 0xF0)
            {
              if (v106 == 63)
              {
                v108 = *(v105 + 16);
                v32 = *(v105 + 32);
                v33 = *(v105 + 48);
                v26 = vuzp1q_s32(*v105, v32);
                v109 = vuzp2q_s32(*v105, v32);
                v229 = v26;
                v231 = v109;
                v34 = vuzp1q_s32(v108, v33);
                v31 = vuzp2q_s32(v108, v33);
                v233 = v34;
                v235 = v31;
                v107 = 64;
              }

              else if (v106 == 1)
              {
                v34 = vld1q_dup_s16(v105);
                v229 = v34;
                v231 = v34;
                v233 = v34;
                v235 = v34;
                v107 = 2;
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v229, 32, v105, v106, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v229, 32, v105, v106, v80).u64[0];
              v107 = 32;
            }
          }

          else
          {
            v107 = 0;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
            v235 = 0uLL;
          }

          v110 = v105 + v107;
          v111 = v76[6];
          if (v76[6])
          {
            if (v111 < 0xF0)
            {
              if (v111 == 63)
              {
                v150 = *(v110 + 16);
                v32 = *(v110 + 32);
                v33 = *(v110 + 48);
                v26 = vuzp1q_s32(*v110, v32);
                v151 = vuzp2q_s32(*v110, v32);
                v222 = v26;
                v224 = v151;
                v34 = vuzp1q_s32(v150, v33);
                v31 = vuzp2q_s32(v150, v33);
                v226 = v34;
                v228 = v31;
                v112 = 64;
                v113 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v111 == 1)
              {
                v34 = vld1q_dup_s16(v110);
                v222 = v34;
                v224 = v34;
                v226 = v34;
                v228 = v34;
                v112 = 2;
                v113 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v222, 32, v110, v111, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
                v113 = v76[7];
                if (!v76[7])
                {
LABEL_145:
                  v230 = 0uLL;
                  v232 = 0uLL;
                  v234 = 0uLL;
                  v236 = 0uLL;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v222, 32, v110, v111, v80).u64[0];
              v112 = 32;
              v113 = v76[7];
              if (!v76[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v112 = 0;
            v222 = 0uLL;
            v224 = 0uLL;
            v226 = 0uLL;
            v228 = 0uLL;
            v113 = v76[7];
            if (!v76[7])
            {
              goto LABEL_145;
            }
          }

          v114 = v110 + v112;
          if (v113 >= 0xF0)
          {
            v34.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v230, 32, v114, v113, v80).u64[0];
LABEL_149:
            a7 = v179;
            v115 = v200;
            if (!v200)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v179;
          if (v113 == 63)
          {
            v152 = *(v114 + 16);
            v32 = *(v114 + 32);
            v33 = *(v114 + 48);
            v26 = vuzp1q_s32(*v114, v32);
            v153 = vuzp2q_s32(*v114, v32);
            v230 = v26;
            v232 = v153;
            v34 = vuzp1q_s32(v152, v33);
            v31 = vuzp2q_s32(v152, v33);
            v234 = v34;
            v236 = v31;
            v115 = v200;
            if (!v200)
            {
              goto LABEL_196;
            }
          }

          else if (v113 == 1)
          {
            v34 = vld1q_dup_s16(v114);
            v230 = v34;
            v232 = v34;
            v234 = v34;
            v236 = v34;
            v115 = v200;
            if (!v200)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v230, 32, v114, v113, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            v115 = v200;
            if (!v200)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v116 = v201;
          if (v201)
          {
            v117 = 0;
            v118 = 32 * v198;
            v119 = 2 * v199;
            v120 = &v205.i8[v118 + v119];
            v121 = v196;
            v122 = v197;
            v123 = 2 * v201;
            if (2 * v201)
            {
              v124 = (2 * v201 - 1) >> 32 == 0;
            }

            else
            {
              v124 = 0;
            }

            v125 = !v124;
            v127 = v120 < v196 + v197 * (v115 - 1) + 2 * v201 && v196 < &v204[2 * v115 + 30 + 2 * v198] + 2 * v201 + v119;
            v128 = v127 || v197 < 0;
            v129 = v123 & 0x1FFFFFFE0;
            v130 = v123 & 0x1FFFFFFF8;
            v131 = (v201 < 4) | v125 | v128;
            v132 = &v206.i8[v118 + v119];
            v133 = (v196 + 16);
            v134 = v120;
            v135 = v196;
            do
            {
              v136 = (v121 + v117 * v122);
              v137 = &v120[32 * v117];
              if (v131)
              {
                v138 = 0;
                goto LABEL_178;
              }

              if (v116 >= 0x10)
              {
                v140 = v133;
                v141 = v132;
                v142 = v123 & 0x1FFFFFFE0;
                do
                {
                  v34 = v140[-1];
                  v31 = *v140;
                  v141[-1] = v34;
                  *v141 = v31;
                  v141 += 2;
                  v140 += 2;
                  v142 -= 32;
                }

                while (v142);
                if (v123 == v129)
                {
                  goto LABEL_164;
                }

                v139 = v123 & 0x1FFFFFFE0;
                if ((v116 & 0xC) == 0)
                {
                  v136 += v129;
                  v137 += v129;
                  v138 = v123 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v139 = 0;
              }

              v137 += v130;
              v143 = v139 - (v123 & 0x1FFFFFFF8);
              v144 = (v135 + v139);
              v145 = &v134[v139];
              do
              {
                v146 = *v144++;
                v34.i64[0] = v146;
                *v145++ = v146;
                v143 += 8;
              }

              while (v143);
              if (v123 == v130)
              {
                goto LABEL_164;
              }

              v136 += v130;
              v138 = v123 & 0xFFFFFFF8;
LABEL_178:
              v147 = v138 + 1;
              do
              {
                v148 = *v136++;
                *v137++ = v148;
              }

              while (v123 > v147++);
LABEL_164:
              ++v117;
              v132 += 32;
              v133 = (v133 + v122);
              v135 += v122;
              v134 += 32;
            }

            while (v117 != v115);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v205, 32, v194, v195, v202, v203, *(*(v190 + 208) + 52), *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i8, v27, v28, v29);
          if (v192)
          {
LABEL_26:
            memcpy(__dst, v78, 0x200uLL);
          }

LABEL_27:
          v21 = v41++ == v180 >> 4;
          result = v190;
        }

        while (!v21);
        v21 = v17++ == v171;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v153 = a8;
  v17 = a8 >> 4;
  v135 = a8 + a10 - 1;
  v137 = v135 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v155 = a1;
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
  v156 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v146 = result;
  if (v17 <= v137)
  {
    v145 = a7 + a9 - 1;
    v134 = a7 >> 4;
    if (a7 >> 4 <= v145 >> 4)
    {
      result = a1;
      v154 = (a5 - 1) >> 4;
      v131 = a5 - 1;
      v138 = (a5 - 1) & 0xF;
      v132 = (a6 - 1) & 0xF;
      v133 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v143 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v142 = v27;
      v130 = 8 * v19 * v18;
      v144 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v153)
        {
          v29 = v153;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v135 < v28)
        {
          v28 = v135;
        }

        v152 = 16 * v17;
        v141 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v132;
        v140 = v31;
        v33 = v31 != 16;
        v34 = v134;
        v35 = v132 + 1;
        if (v17 != v133)
        {
          v35 = 16;
          v32 = v33;
        }

        v139 = v32;
        v150 = a3 + (v29 - v153) * a11;
        v151 = v35;
        v149 = v35;
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

          if (v145 < v37)
          {
            v37 = v145;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v154)
          {
            v41 = v138 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v152 >= v153 && v36 >= a7)
          {
            v43 = v39 != v138;
            if (v34 != v154)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v139;
          }

          if (v146)
          {
            v64 = 0;
            v65 = v130 >> (*(result + 57) != 0);
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

            v120 = (v64 >> 4) - 1;
            if (v66)
            {
              v121 = 0;
              if (v67)
              {
                goto LABEL_150;
              }

LABEL_139:
              v122 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v122 | v121)
              {
                goto LABEL_140;
              }

LABEL_151:
              v129 = 0;
            }

            else
            {
              v121 = 32 - __clz(~(-1 << -__clz(v120)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v122 = 0;
              if (!v121)
              {
                goto LABEL_151;
              }

LABEL_140:
              v123 = 0;
              v124 = 0;
              v125 = v34 & v120;
              v126 = v121 != 0;
              v127 = v122 != 0;
              v128 = 1;
              do
              {
                --v121;
                if (v126)
                {
                  v124 |= (v128 & v125) << v123++;
                }

                else
                {
                  v121 = 0;
                }

                --v122;
                if (v127)
                {
                  v124 |= (v128 & v17 & ((v68 >> 4) - 1)) << v123++;
                }

                else
                {
                  v122 = 0;
                }

                v128 *= 2;
                --v123;
                v127 = v122 != 0;
                v126 = v121 != 0;
              }

              while (v122 | v121);
              v129 = v124 << 9;
              result = v155;
            }

            v51 = v129 + ((v36 / v64 + v152 / v68 * ((v64 + v131) / v64)) << 14);
            goto LABEL_52;
          }

          if (v143)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v142.i8[0];
            v48 = v142.i8[4];
            v50 = v143.i32[0];
            v49 = v143.i32[1];
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
          v70 = v150 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          if (v156)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v149 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v75, v69, v41, v151, *(*(result + 208) + 52));
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
            result = v155;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v149 < 0x10)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v75;
          v166 = v41;
          v167 = v151;
          v162 = v141;
          v163 = v38 - v36;
          v159 = v69;
          v160 = v70;
          v161 = a11;
          v164 = v140;
          v165 = v40;
          if ((v42 & 1) == 0)
          {
            v76 = *(*(result + 208) + 52);
            v77 = &v75[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v169, 64, v75, *v69, v76)];
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 64, v77, v69[1], v76);
            v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v170, 64, v78, v69[2], v76);
            v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v172, 64, v79, v69[3], v76);
            v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 64, v80, v69[4], v76);
            v82 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v175, 64, v81, v69[5], v76);
            v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v174, 64, v82, v69[6], v76);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v176, 64, v82 + v83, v69[7], v76);
            v84 = v164;
            a7 = v144;
            if (!v164 || (v85 = v165) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v169, 64, v158, v159, v166, v167, *(*(v155 + 208) + 52));
              if (!v156)
              {
                goto LABEL_26;
              }

              goto LABEL_121;
            }

            v86 = 0;
            v87 = v162 << 6;
            v88 = 4 * v163;
            v89 = v169 + v87 + v88;
            v90 = v160;
            v91 = v161;
            v92 = 4 * v165;
            if (4 * v165)
            {
              v93 = (4 * v165 - 1) >> 32 == 0;
            }

            else
            {
              v93 = 0;
            }

            v94 = !v93;
            v96 = v89 < v160 + v161 * (v164 - 1) + 4 * v165 && v160 < &__dst[64 * v164 + 960 + 64 * v162 + 4 * v165 + v88];
            v97 = v96 || v161 < 0;
            v98 = v92 & 0x1FFFFFFE0;
            v99 = v92 & 0x1FFFFFFF8;
            v100 = (v165 == 1) | v94 | v97;
            v101 = &v169[1] + v87 + v88;
            v102 = (v160 + 16);
            v103 = v89;
            v104 = v160;
            while (2)
            {
              v105 = (v90 + v86 * v91);
              v106 = &v89[64 * v86];
              if (v100)
              {
                v107 = 0;
LABEL_117:
                v117 = v107 + 1;
                do
                {
                  v118 = *v105++;
                  *v106++ = v118;
                }

                while (v92 > v117++);
              }

              else
              {
                if (v85 >= 8)
                {
                  v109 = v102;
                  v110 = v101;
                  v111 = v92 & 0x1FFFFFFE0;
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
                  if (v92 == v98)
                  {
                    goto LABEL_103;
                  }

                  v108 = v92 & 0x1FFFFFFE0;
                  if ((v85 & 6) == 0)
                  {
                    v105 += v98;
                    v106 += v98;
                    v107 = v92 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v108 = 0;
                }

                v106 += v99;
                v113 = -8 * ((v85 >> 1) & 0x3FFFFFFF) + v108;
                v114 = (v104 + v108);
                v115 = &v103[v108];
                do
                {
                  v116 = *v114++;
                  *v115 = v116;
                  v115 += 8;
                  v113 += 8;
                }

                while (v113);
                if (v92 != v99)
                {
                  v105 += v99;
                  v107 = v92 & 0xFFFFFFF8;
                  goto LABEL_117;
                }
              }

LABEL_103:
              ++v86;
              v101 += 64;
              v102 = (v102 + v91);
              v104 += v91;
              v103 += 64;
              if (v86 == v84)
              {
                goto LABEL_120;
              }

              continue;
            }
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v144;
          if (!v156)
          {
            goto LABEL_26;
          }

LABEL_121:
          memcpy(v71, v75, 0x400uLL);
LABEL_26:
          v21 = v34++ == v145 >> 4;
          result = v155;
        }

        while (!v21);
        v21 = v17++ == v137;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v317 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v236 = a8;
  v17 = a8 >> 4;
  v218 = a8 + a10 - 1;
  v220 = v218 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v238 = a1;
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
  v240 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v229 = result;
  if (v17 <= v220)
  {
    v228 = a7 + a9 - 1;
    v217 = a7 >> 4;
    if (a7 >> 4 <= v228 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v214 = a5 - 1;
      v221 = (a5 - 1) & 0xF;
      v215 = (a6 - 1) & 0xF;
      v216 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v226 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v225 = v27;
      v213 = 8 * v19 * v18;
      v227 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v236)
        {
          v29 = v236;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v218 < v28)
        {
          v28 = v218;
        }

        v235 = 16 * v17;
        v224 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v215;
        v223 = v31;
        v33 = v31 != 16;
        v34 = v217;
        v35 = v215 + 1;
        if (v17 != v216)
        {
          v35 = 16;
          v32 = v33;
        }

        v222 = v32;
        v233 = a3 + (v29 - v236) * a11;
        v234 = v35;
        v232 = v35;
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

          if (v228 < v37)
          {
            v37 = v228;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v221 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v235 >= v236 && v36 >= a7)
          {
            v43 = v39 != v221;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v222;
          }

          if (v229)
          {
            v64 = 0;
            v65 = v213 >> (*(result + 57) != 0);
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

            v203 = (v64 >> 4) - 1;
            if (v66)
            {
              v204 = 0;
              if (v67)
              {
                goto LABEL_226;
              }

LABEL_215:
              v205 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v205 | v204)
              {
                goto LABEL_216;
              }

LABEL_227:
              v212 = 0;
            }

            else
            {
              v204 = 32 - __clz(~(-1 << -__clz(v203)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_215;
              }

LABEL_226:
              v205 = 0;
              if (!v204)
              {
                goto LABEL_227;
              }

LABEL_216:
              v206 = 0;
              v207 = 0;
              v208 = v34 & v203;
              v209 = v204 != 0;
              v210 = v205 != 0;
              v211 = 1;
              do
              {
                --v204;
                if (v209)
                {
                  v207 |= (v211 & v208) << v206++;
                }

                else
                {
                  v204 = 0;
                }

                --v205;
                if (v210)
                {
                  v207 |= (v211 & v17 & ((v68 >> 4) - 1)) << v206++;
                }

                else
                {
                  v205 = 0;
                }

                v211 *= 2;
                --v206;
                v210 = v205 != 0;
                v209 = v204 != 0;
              }

              while (v205 | v204);
              v212 = v207 << 9;
              result = v238;
            }

            v51 = v212 + ((v36 / v64 + v235 / v68 * ((v64 + v214) / v64)) << 14);
            goto LABEL_53;
          }

          if (v226)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v225.i8[4];
            v48 = v225.i8[0];
            v49 = v226.i32[1];
            v50 = v226.i32[0];
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
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v70 = v233 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v240)
          {
            v71 = v252;
            if (!(v42 & 1 | (v41 < 0x10u) | (v232 < 0x10)))
            {
              goto LABEL_85;
            }

            memcpy(v252, __dst, sizeof(v252));
            result = v238;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v232 < 0x10)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v234, *(*(result + 208) + 52));
LABEL_86:
            a7 = v227;
            if (v240)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v242 = v71;
          v250 = v41;
          v251 = v234;
          v246 = v224;
          v247 = v38 - v36;
          v243 = v69;
          v244 = v70;
          v245 = a11;
          v248 = v223;
          v249 = v40;
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
                v77 = *v71;
                v78 = v71[1];
                v79 = v71[2];
                v80 = v71[3];
                v81 = v71[4];
                v82 = v71[5];
                v83 = v71[6];
                v84 = v71[7];
                v253 = vzip1q_s64(*v71, v78);
                v254 = vzip1q_s64(v81, v82);
                v257 = vzip2q_s64(v77, v78);
                v258 = vzip2q_s64(v81, v82);
                v261 = vzip1q_s64(v79, v80);
                v262 = vzip1q_s64(v83, v84);
                v265 = vzip2q_s64(v79, v80);
                v266 = vzip2q_s64(v83, v84);
                v75 = 128;
              }

              else if (v74 == 3)
              {
                v76 = vld1q_dup_f32(v71->i32);
                v253 = v76;
                v254 = v76;
                v257 = v76;
                v258 = v76;
                v261 = v76;
                v262 = v76;
                v265 = v76;
                v266 = v76;
                v75 = 4;
              }

              else
              {
                v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v253, 64, v71, v74);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v253.i32, 64, v71, v74, *(v72 + 52));
              v75 = 64;
            }
          }

          else
          {
            v75 = 0;
            v254 = 0u;
            v253 = 0u;
            v257 = 0u;
            v258 = 0u;
            v261 = 0u;
            v262 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v85 = v71->i64 + v75;
          v86 = v69[1];
          if (v69[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 127)
              {
                v89 = *v85;
                v90 = *(v85 + 16);
                v91 = *(v85 + 32);
                v92 = *(v85 + 48);
                v93 = *(v85 + 64);
                v94 = *(v85 + 80);
                v95 = *(v85 + 96);
                v96 = *(v85 + 112);
                v269 = vzip1q_s64(*v85, v90);
                v270 = vzip1q_s64(v93, v94);
                v273 = vzip2q_s64(v89, v90);
                v274 = vzip2q_s64(v93, v94);
                v277 = vzip1q_s64(v91, v92);
                v278 = vzip1q_s64(v95, v96);
                v281 = vzip2q_s64(v91, v92);
                v282 = vzip2q_s64(v95, v96);
                v87 = 128;
              }

              else if (v86 == 3)
              {
                v88 = vld1q_dup_f32(v85);
                v269 = v88;
                v270 = v88;
                v273 = v88;
                v274 = v88;
                v277 = v88;
                v278 = v88;
                v281 = v88;
                v282 = v88;
                v87 = 4;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v269, 64, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v269.i32, 64, v85, v86, v73);
              v87 = 64;
            }
          }

          else
          {
            v87 = 0;
            v269 = 0u;
            v270 = 0u;
            v273 = 0u;
            v274 = 0u;
            v277 = 0u;
            v278 = 0u;
            v281 = 0u;
            v282 = 0u;
          }

          v97 = v85 + v87;
          v98 = v69[2];
          if (v69[2])
          {
            if (v98 < 0xF0)
            {
              if (v98 == 127)
              {
                v101 = *v97;
                v102 = *(v97 + 16);
                v103 = *(v97 + 32);
                v104 = *(v97 + 48);
                v105 = *(v97 + 64);
                v106 = *(v97 + 80);
                v107 = *(v97 + 96);
                v108 = *(v97 + 112);
                v255 = vzip1q_s64(*v97, v102);
                v256 = vzip1q_s64(v105, v106);
                v259 = vzip2q_s64(v101, v102);
                v260 = vzip2q_s64(v105, v106);
                v263 = vzip1q_s64(v103, v104);
                v264 = vzip1q_s64(v107, v108);
                v267 = vzip2q_s64(v103, v104);
                v268 = vzip2q_s64(v107, v108);
                v99 = 128;
              }

              else if (v98 == 3)
              {
                v100 = vld1q_dup_f32(v97);
                v255 = v100;
                v256 = v100;
                v259 = v100;
                v260 = v100;
                v263 = v100;
                v264 = v100;
                v267 = v100;
                v268 = v100;
                v99 = 4;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 64, v97, v98);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v255.i32, 64, v97, v98, v73);
              v99 = 64;
            }
          }

          else
          {
            v99 = 0;
            v255 = 0u;
            v256 = 0u;
            v259 = 0u;
            v260 = 0u;
            v263 = 0u;
            v264 = 0u;
            v267 = 0u;
            v268 = 0u;
          }

          v109 = v97 + v99;
          v110 = v69[3];
          if (v69[3])
          {
            if (v110 < 0xF0)
            {
              if (v110 == 127)
              {
                v113 = *v109;
                v114 = *(v109 + 16);
                v115 = *(v109 + 32);
                v116 = *(v109 + 48);
                v117 = *(v109 + 64);
                v118 = *(v109 + 80);
                v119 = *(v109 + 96);
                v120 = *(v109 + 112);
                v271 = vzip1q_s64(*v109, v114);
                v272 = vzip1q_s64(v117, v118);
                v275 = vzip2q_s64(v113, v114);
                v276 = vzip2q_s64(v117, v118);
                v279 = vzip1q_s64(v115, v116);
                v280 = vzip1q_s64(v119, v120);
                v283 = vzip2q_s64(v115, v116);
                v284 = vzip2q_s64(v119, v120);
                v111 = 128;
              }

              else if (v110 == 3)
              {
                v112 = vld1q_dup_f32(v109);
                v271 = v112;
                v272 = v112;
                v275 = v112;
                v276 = v112;
                v279 = v112;
                v280 = v112;
                v283 = v112;
                v284 = v112;
                v111 = 4;
              }

              else
              {
                v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 64, v109, v110);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v271.i32, 64, v109, v110, v73);
              v111 = 64;
            }
          }

          else
          {
            v111 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v121 = v109 + v111;
          v122 = v69[4];
          if (v69[4])
          {
            if (v122 < 0xF0)
            {
              if (v122 == 127)
              {
                v125 = *v121;
                v126 = *(v121 + 16);
                v127 = *(v121 + 32);
                v128 = *(v121 + 48);
                v129 = *(v121 + 64);
                v130 = *(v121 + 80);
                v131 = *(v121 + 96);
                v132 = *(v121 + 112);
                v285 = vzip1q_s64(*v121, v126);
                v286 = vzip1q_s64(v129, v130);
                v289 = vzip2q_s64(v125, v126);
                v290 = vzip2q_s64(v129, v130);
                v293 = vzip1q_s64(v127, v128);
                v294 = vzip1q_s64(v131, v132);
                v297 = vzip2q_s64(v127, v128);
                v298 = vzip2q_s64(v131, v132);
                v123 = 128;
              }

              else if (v122 == 3)
              {
                v124 = vld1q_dup_f32(v121);
                v285 = v124;
                v286 = v124;
                v289 = v124;
                v290 = v124;
                v293 = v124;
                v294 = v124;
                v297 = v124;
                v298 = v124;
                v123 = 4;
              }

              else
              {
                v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v285, 64, v121, v122);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v285.i32, 64, v121, v122, v73);
              v123 = 64;
            }
          }

          else
          {
            v123 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v133 = v121 + v123;
          v134 = v69[5];
          if (v69[5])
          {
            if (v134 < 0xF0)
            {
              if (v134 == 127)
              {
                v137 = *v133;
                v138 = *(v133 + 16);
                v139 = *(v133 + 32);
                v140 = *(v133 + 48);
                v141 = *(v133 + 64);
                v142 = *(v133 + 80);
                v143 = *(v133 + 96);
                v144 = *(v133 + 112);
                v301 = vzip1q_s64(*v133, v138);
                v302 = vzip1q_s64(v141, v142);
                v305 = vzip2q_s64(v137, v138);
                v306 = vzip2q_s64(v141, v142);
                v309 = vzip1q_s64(v139, v140);
                v310 = vzip1q_s64(v143, v144);
                v313 = vzip2q_s64(v139, v140);
                v314 = vzip2q_s64(v143, v144);
                v135 = 128;
              }

              else if (v134 == 3)
              {
                v136 = vld1q_dup_f32(v133);
                v301 = v136;
                v302 = v136;
                v305 = v136;
                v306 = v136;
                v309 = v136;
                v310 = v136;
                v313 = v136;
                v314 = v136;
                v135 = 4;
              }

              else
              {
                v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v301, 64, v133, v134);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v301.i32, 64, v133, v134, v73);
              v135 = 64;
            }
          }

          else
          {
            v135 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v145 = v133 + v135;
          v146 = v69[6];
          if (v69[6])
          {
            if (v146 < 0xF0)
            {
              if (v146 == 127)
              {
                v187 = *v145;
                v188 = *(v145 + 16);
                v189 = *(v145 + 32);
                v190 = *(v145 + 48);
                v191 = *(v145 + 64);
                v192 = *(v145 + 80);
                v193 = *(v145 + 96);
                v194 = *(v145 + 112);
                v287 = vzip1q_s64(*v145, v188);
                v288 = vzip1q_s64(v191, v192);
                v291 = vzip2q_s64(v187, v188);
                v292 = vzip2q_s64(v191, v192);
                v295 = vzip1q_s64(v189, v190);
                v296 = vzip1q_s64(v193, v194);
                v299 = vzip2q_s64(v189, v190);
                v300 = vzip2q_s64(v193, v194);
                v147 = 128;
                v148 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v146 == 3)
              {
                v185 = vld1q_dup_f32(v145);
                v287 = v185;
                v288 = v185;
                v291 = v185;
                v292 = v185;
                v295 = v185;
                v296 = v185;
                v299 = v185;
                v300 = v185;
                v147 = 4;
                v148 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v287, 64, v145, v146);
                v148 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v303 = 0u;
                  v304 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v311 = 0u;
                  v312 = 0u;
                  v315 = 0u;
                  v316 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v287.i32, 64, v145, v146, v73);
              v147 = 64;
              v148 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v147 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
            v148 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v149 = v145 + v147;
          if (v148 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v303.i32, 64, v149, v148, v73);
LABEL_149:
            a7 = v227;
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v227;
          if (v148 == 127)
          {
            v195 = *v149;
            v196 = *(v149 + 16);
            v197 = *(v149 + 32);
            v198 = *(v149 + 48);
            v199 = *(v149 + 64);
            v200 = *(v149 + 80);
            v201 = *(v149 + 96);
            v202 = *(v149 + 112);
            v303 = vzip1q_s64(*v149, v196);
            v304 = vzip1q_s64(v199, v200);
            v307 = vzip2q_s64(v195, v196);
            v308 = vzip2q_s64(v199, v200);
            v311 = vzip1q_s64(v197, v198);
            v312 = vzip1q_s64(v201, v202);
            v315 = vzip2q_s64(v197, v198);
            v316 = vzip2q_s64(v201, v202);
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

          else if (v148 == 3)
          {
            v186 = vld1q_dup_f32(v149);
            v303 = v186;
            v304 = v186;
            v307 = v186;
            v308 = v186;
            v311 = v186;
            v312 = v186;
            v315 = v186;
            v316 = v186;
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v303, 64, v149, v148);
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v151 = v249;
          if (v249)
          {
            v152 = 0;
            v153 = 4 * v247;
            v154 = &v253.i8[64 * v246 + v153];
            v155 = v244;
            v156 = v245;
            v157 = 4 * v249;
            if (4 * v249)
            {
              v158 = (4 * v249 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < v244 + v245 * (v150 - 1) + 4 * v249 && v244 < &v252[64 * v150 + 960 + 64 * v246 + 4 * v249 + v153];
            v162 = v161 || v245 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v249 == 1) | v159 | v162;
            v166 = &v254.i8[64 * v246 + v153];
            v167 = (v244 + 16);
            v168 = v154;
            v169 = v244;
            do
            {
              v170 = (v155 + v152 * v156);
              v171 = &v154[64 * v152];
              if (v165)
              {
                v172 = 0;
                goto LABEL_178;
              }

              if (v151 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = *(v174 - 1);
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_164;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v151 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v151 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_164;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_178:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_164:
              ++v152;
              v166 += 64;
              v167 = (v167 + v156);
              v169 += v156;
              v168 += 64;
            }

            while (v152 != v150);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v253, 64, v242, v243, v250, v251, *(*(v238 + 208) + 52));
          if (v240)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v228 >> 4;
          result = v238;
        }

        while (!v21);
        v21 = v17++ == v220;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v153 = v22;
  v141 = v23;
  v24 = v12;
  v182 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v158 = v14;
  v25 = v14 >> 4;
  v140 = v14 + a10 - 1;
  v142 = v140 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v160 = v24;
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
  v161 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v151 = result;
  if (v25 <= v142)
  {
    v150 = v16 + a9 - 1;
    v139 = v16 >> 4;
    if (v16 >> 4 <= v150 >> 4)
    {
      result = v24;
      v159 = (v20 - 1) >> 4;
      v136 = v20 - 1;
      v143 = (v20 - 1) & 0xF;
      v137 = (v18 - 1) & 0xF;
      v138 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v148 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v147 = v35;
      v135 = 8 * v27 * v26;
      v149 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v158)
        {
          v37 = v158;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v140 < v36)
        {
          v36 = v140;
        }

        v157 = 16 * v25;
        v146 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v137;
        v145 = v39;
        v41 = v39 != 16;
        v42 = v139;
        v43 = v137 + 1;
        if (v25 != v138)
        {
          v43 = 16;
          v40 = v41;
        }

        v144 = v40;
        v155 = v141 + (v37 - v158) * a11;
        v156 = v43;
        v154 = v43;
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

          if (v150 < v45)
          {
            v45 = v150;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v159)
          {
            v49 = v143 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v157 >= v158 && v44 >= v16)
          {
            v51 = v47 != v143;
            if (v42 != v159)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v144;
          }

          if (v151)
          {
            v72 = 0;
            v73 = v135 >> (*(result + 57) != 0);
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

            v125 = (v72 >> 4) - 1;
            if (v74)
            {
              v126 = 0;
              if (v75)
              {
                goto LABEL_150;
              }

LABEL_139:
              v127 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v127 | v126)
              {
                goto LABEL_140;
              }

LABEL_151:
              v134 = 0;
            }

            else
            {
              v126 = 32 - __clz(~(-1 << -__clz(v125)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v127 = 0;
              if (!v126)
              {
                goto LABEL_151;
              }

LABEL_140:
              v128 = 0;
              v129 = 0;
              v130 = v42 & v125;
              v131 = v126 != 0;
              v132 = v127 != 0;
              v133 = 1;
              do
              {
                --v126;
                if (v131)
                {
                  v129 |= (v133 & v130) << v128++;
                }

                else
                {
                  v126 = 0;
                }

                --v127;
                if (v132)
                {
                  v129 |= (v133 & v25 & ((v76 >> 4) - 1)) << v128++;
                }

                else
                {
                  v127 = 0;
                }

                v133 *= 2;
                --v128;
                v132 = v127 != 0;
                v131 = v126 != 0;
              }

              while (v127 | v126);
              v134 = v129 << 10;
              result = v160;
            }

            v59 = v134 + ((v44 / v72 + v157 / v76 * ((v72 + v136) / v72)) << 14);
            goto LABEL_53;
          }

          if (v148)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v147.i8[0];
            v56 = v147.i8[4];
            v58 = v148.i32[0];
            v57 = v148.i32[1];
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
          v77 = (v153 + v71);
          v78 = v155 + 8 * (v46 - v16);
          v79 = (v152 + v59);
          if (v161)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v154 < 0x10)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v82, v77, v49, v156, *(*(result + 208) + 52));
LABEL_87:
              v16 = v149;
              if (v161)
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
            result = v160;
          }

          else
          {
            v82 = (v152 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v154 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v163 = v82;
          v171 = v49;
          v172 = v156;
          v167 = v146;
          v168 = v46 - v44;
          v164 = v77;
          v165 = v78;
          v166 = a11;
          v169 = v145;
          v170 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = *(*(result + 208) + 52);
          v84 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v174, 128, v82, *v77, v83)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v176, 128, v84, v77[1], v83);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v175, 128, v85, v77[2], v83);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v177, 128, v86, v77[3], v83);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v178, 128, v87, v77[4], v83);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v180, 128, v88, v77[5], v83);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v179, 128, v89, v77[6], v83);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v181, 128, v89 + v90, v77[7], v83);
          v91 = v169;
          v16 = v149;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 7;
              v95 = 8 * v168;
              v96 = v174 + v94 + v95;
              v97 = v165;
              v98 = v166;
              v99 = 8 * v170;
              if (8 * v170)
              {
                v100 = (8 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 8 * v170 && v165 < &__dst[128 * v169 + 1920 + 128 * v167 + 8 * v170 + v95];
              v104 = v99 & 0x1FFFFFFE0;
              v105 = v101 | (v166 < 0) | v103;
              v106 = &v174[1] + v94 + v95;
              v107 = (v165 + 16);
              v108 = v96;
              v109 = v165;
              do
              {
                v110 = (v97 + v93 * v98);
                v111 = &v96[128 * v93];
                if (v105)
                {
                  v112 = 0;
                }

                else
                {
                  if (v92 < 4)
                  {
                    v116 = 0;
LABEL_116:
                    v121 = -8 * v92 + v116;
                    v122 = (v109 + v116);
                    v123 = &v108[v116];
                    do
                    {
                      v124 = *v122++;
                      *v123 = v124;
                      v123 += 8;
                      v121 += 8;
                    }

                    while (v121);
                    goto LABEL_104;
                  }

                  v117 = v107;
                  v118 = v106;
                  v119 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v120 = *v117;
                    *(v118 - 1) = *(v117 - 1);
                    *v118 = v120;
                    v118 += 2;
                    v117 += 2;
                    v119 -= 32;
                  }

                  while (v119);
                  if (v99 == v104)
                  {
                    goto LABEL_104;
                  }

                  v116 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 3) != 0)
                  {
                    goto LABEL_116;
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
                v106 += 128;
                v107 = (v107 + v98);
                v109 += v98;
                v108 += 128;
              }

              while (v93 != v91);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v174, 128, v163, v164, v171, v172, *(*(v160 + 208) + 52));
          if (v161)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v150 >> 4;
          result = v160;
        }

        while (!v29);
        v29 = v25++ == v142;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v200 = a8;
  v17 = a8 >> 4;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v202 = a1;
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
  v204 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v193 = result;
  if (v17 <= v183)
  {
    v192 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v192 >> 4)
    {
      result = a1;
      v201 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 0xF;
      v179 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v27.i8 = vcgt_u32(v26, 0x1F0000001FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *v27.i8);
      v189 = v28.i64[0];
      v190 = v28.i32[0] | v28.i32[1];
      v188 = v27.i64[0];
      v176 = 8 * v19 * v18;
      v191 = a7;
      do
      {
        v29 = (16 * v17) | 0xF;
        if (16 * v17 <= v200)
        {
          v30 = v200;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v181 < v29)
        {
          v29 = v181;
        }

        v199 = 16 * v17;
        v187 = v30 - 16 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v178;
        v186 = v32;
        v34 = v32 != 16;
        v35 = v180;
        v36 = v178 + 1;
        if (v17 != v179)
        {
          v36 = 16;
          v33 = v34;
        }

        v185 = v33;
        v197 = a3 + (v30 - v200) * a11;
        v198 = v36;
        v196 = v36;
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

          if (v192 < v38)
          {
            v38 = v192;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v201)
          {
            v42 = v184 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v199 >= v200 && v37 >= a7)
          {
            v44 = v40 != v184;
            if (v35 != v201)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v185;
          }

          if (v193)
          {
            v65 = 0;
            v66 = v176 >> (*(result + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v166 = (v65 >> 4) - 1;
            if (v67)
            {
              v167 = 0;
              if (v68)
              {
                goto LABEL_226;
              }

LABEL_215:
              v168 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v168 | v167)
              {
                goto LABEL_216;
              }

LABEL_227:
              v175 = 0;
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_215;
              }

LABEL_226:
              v168 = 0;
              if (!v167)
              {
                goto LABEL_227;
              }

LABEL_216:
              v169 = 0;
              v170 = 0;
              v171 = v35 & v166;
              v172 = v167 != 0;
              v173 = v168 != 0;
              v174 = 1;
              do
              {
                --v167;
                if (v172)
                {
                  v170 |= (v174 & v171) << v169++;
                }

                else
                {
                  v167 = 0;
                }

                --v168;
                if (v173)
                {
                  v170 |= (v174 & v17 & ((v69 >> 4) - 1)) << v169++;
                }

                else
                {
                  v168 = 0;
                }

                v174 *= 2;
                --v169;
                v173 = v168 != 0;
                v172 = v167 != 0;
              }

              while (v168 | v167);
              v175 = v170 << 8;
              result = v202;
            }

            v52 = v175 + ((v37 / v65 + v199 / v69 * ((v65 + v177) / v65)) << 14);
            goto LABEL_53;
          }

          if (v190)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v188;
            v49 = BYTE4(v188);
            v51 = v189;
            v50 = HIDWORD(v189);
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

          v57 = v56 + 15;
          if (v57 < 0x20)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
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
          v71 = v197 + 2 * (v39 - a7);
          v72 = (a2 + v52);
          __dst = (a2 + v52);
          if (v204)
          {
            v72 = v216;
            if (!(v43 & 1 | (v42 < 0x10u) | (v196 < 0x10)))
            {
              goto LABEL_85;
            }

            memcpy(v216, __dst, sizeof(v216));
            result = v202;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v196 < 0x10)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v71, a11, v72, v70, v42, v198, *(*(result + 208) + 52));
LABEL_86:
            a7 = v191;
            if (v204)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v206 = v72;
          v214 = v42;
          v215 = v198;
          v210 = v187;
          v211 = v39 - v37;
          v207 = v70;
          v208 = v71;
          v209 = a11;
          v212 = v186;
          v213 = v41;
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
                v77 = v72[1];
                v78 = v72[2];
                v79 = v72[3];
                v80 = vuzp2q_s32(*v72, v78);
                v217 = vuzp1q_s32(*v72, v78);
                v219 = v80;
                v28 = vuzp1q_s32(v77, v79);
                v27 = vuzp2q_s32(v77, v79);
                v221 = v28;
                v223 = v27;
                v76 = 64;
              }

              else if (v75 == 1)
              {
                v28 = vld1q_dup_s16(v72->i16);
                v217 = v28;
                v219 = v28;
                v221 = v28;
                v223 = v28;
                v76 = 2;
              }

              else
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 32, v72, v75, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 32, v72, v75, *(v73 + 52));
              v76 = 32;
            }
          }

          else
          {
            v76 = 0;
            v217 = 0uLL;
            v219 = 0uLL;
            v221 = 0uLL;
            v223 = 0uLL;
          }

          v81 = v72->i64 + v76;
          v82 = v70[1];
          if (v70[1])
          {
            if (v82 < 0xF0)
            {
              if (v82 == 63)
              {
                v84 = *(v81 + 16);
                v85 = *(v81 + 32);
                v86 = *(v81 + 48);
                v87 = vuzp2q_s32(*v81, v85);
                v225 = vuzp1q_s32(*v81, v85);
                v227 = v87;
                v28 = vuzp1q_s32(v84, v86);
                v27 = vuzp2q_s32(v84, v86);
                v229 = v28;
                v231 = v27;
                v83 = 64;
              }

              else if (v82 == 1)
              {
                v28 = vld1q_dup_s16(v81);
                v225 = v28;
                v227 = v28;
                v229 = v28;
                v231 = v28;
                v83 = 2;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 32, v81, v82, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 32, v81, v82, v74);
              v83 = 32;
            }
          }

          else
          {
            v83 = 0;
            v225 = 0uLL;
            v227 = 0uLL;
            v229 = 0uLL;
            v231 = 0uLL;
          }

          v88 = v81 + v83;
          v89 = v70[2];
          if (v70[2])
          {
            if (v89 < 0xF0)
            {
              if (v89 == 63)
              {
                v91 = *(v88 + 16);
                v92 = *(v88 + 32);
                v93 = *(v88 + 48);
                v94 = vuzp2q_s32(*v88, v92);
                v218 = vuzp1q_s32(*v88, v92);
                v220 = v94;
                v28 = vuzp1q_s32(v91, v93);
                v27 = vuzp2q_s32(v91, v93);
                v222 = v28;
                v224 = v27;
                v90 = 64;
              }

              else if (v89 == 1)
              {
                v28 = vld1q_dup_s16(v88);
                v218 = v28;
                v220 = v28;
                v222 = v28;
                v224 = v28;
                v90 = 2;
              }

              else
              {
                v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v218, 32, v88, v89, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v218, 32, v88, v89, v74);
              v90 = 32;
            }
          }

          else
          {
            v90 = 0;
            v218 = 0uLL;
            v220 = 0uLL;
            v222 = 0uLL;
            v224 = 0uLL;
          }

          v95 = v88 + v90;
          v96 = v70[3];
          if (v70[3])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 63)
              {
                v98 = *(v95 + 16);
                v99 = *(v95 + 32);
                v100 = *(v95 + 48);
                v101 = vuzp2q_s32(*v95, v99);
                v226 = vuzp1q_s32(*v95, v99);
                v228 = v101;
                v28 = vuzp1q_s32(v98, v100);
                v27 = vuzp2q_s32(v98, v100);
                v230 = v28;
                v232 = v27;
                v97 = 64;
              }

              else if (v96 == 1)
              {
                v28 = vld1q_dup_s16(v95);
                v226 = v28;
                v228 = v28;
                v230 = v28;
                v232 = v28;
                v97 = 2;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v226, 32, v95, v96, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v226, 32, v95, v96, v74);
              v97 = 32;
            }
          }

          else
          {
            v97 = 0;
            v226 = 0uLL;
            v228 = 0uLL;
            v230 = 0uLL;
            v232 = 0uLL;
          }

          v102 = v95 + v97;
          v103 = v70[4];
          if (v70[4])
          {
            if (v103 < 0xF0)
            {
              if (v103 == 63)
              {
                v105 = *(v102 + 16);
                v106 = *(v102 + 32);
                v107 = *(v102 + 48);
                v108 = vuzp2q_s32(*v102, v106);
                v233 = vuzp1q_s32(*v102, v106);
                v235 = v108;
                v28 = vuzp1q_s32(v105, v107);
                v27 = vuzp2q_s32(v105, v107);
                v237 = v28;
                v239 = v27;
                v104 = 64;
              }

              else if (v103 == 1)
              {
                v28 = vld1q_dup_s16(v102);
                v233 = v28;
                v235 = v28;
                v237 = v28;
                v239 = v28;
                v104 = 2;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v233, 32, v102, v103, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v233, 32, v102, v103, v74);
              v104 = 32;
            }
          }

          else
          {
            v104 = 0;
            v233 = 0uLL;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
          }

          v109 = v102 + v104;
          v110 = v70[5];
          if (v70[5])
          {
            if (v110 < 0xF0)
            {
              if (v110 == 63)
              {
                v112 = *(v109 + 16);
                v113 = *(v109 + 32);
                v114 = *(v109 + 48);
                v115 = vuzp2q_s32(*v109, v113);
                v241 = vuzp1q_s32(*v109, v113);
                v243 = v115;
                v28 = vuzp1q_s32(v112, v114);
                v27 = vuzp2q_s32(v112, v114);
                v245 = v28;
                v247 = v27;
                v111 = 64;
              }

              else if (v110 == 1)
              {
                v28 = vld1q_dup_s16(v109);
                v241 = v28;
                v243 = v28;
                v245 = v28;
                v247 = v28;
                v111 = 2;
              }

              else
              {
                v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v241, 32, v109, v110, *v28.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v241, 32, v109, v110, v74);
              v111 = 32;
            }
          }

          else
          {
            v111 = 0;
            v241 = 0uLL;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
          }

          v116 = v109 + v111;
          v117 = v70[6];
          if (v70[6])
          {
            if (v117 < 0xF0)
            {
              if (v117 == 63)
              {
                v158 = *(v116 + 16);
                v159 = *(v116 + 32);
                v160 = *(v116 + 48);
                v161 = vuzp2q_s32(*v116, v159);
                v234 = vuzp1q_s32(*v116, v159);
                v236 = v161;
                v28 = vuzp1q_s32(v158, v160);
                v27 = vuzp2q_s32(v158, v160);
                v238 = v28;
                v240 = v27;
                v118 = 64;
                v119 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v117 == 1)
              {
                v28 = vld1q_dup_s16(v116);
                v234 = v28;
                v236 = v28;
                v238 = v28;
                v240 = v28;
                v118 = 2;
                v119 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v234, 32, v116, v117, *v28.i8, *v27.i8);
                v119 = v70[7];
                if (!v70[7])
                {
LABEL_145:
                  v242 = 0uLL;
                  v244 = 0uLL;
                  v246 = 0uLL;
                  v248 = 0uLL;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v234, 32, v116, v117, v74);
              v118 = 32;
              v119 = v70[7];
              if (!v70[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v118 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
            v119 = v70[7];
            if (!v70[7])
            {
              goto LABEL_145;
            }
          }

          v120 = v116 + v118;
          if (v119 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v242, 32, v120, v119, v74);
LABEL_149:
            a7 = v191;
            v121 = v212;
            if (!v212)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v191;
          if (v119 == 63)
          {
            v162 = *(v120 + 16);
            v163 = *(v120 + 32);
            v164 = *(v120 + 48);
            v165 = vuzp2q_s32(*v120, v163);
            v242 = vuzp1q_s32(*v120, v163);
            v244 = v165;
            v246 = vuzp1q_s32(v162, v164);
            v248 = vuzp2q_s32(v162, v164);
            v121 = v212;
            if (!v212)
            {
              goto LABEL_196;
            }
          }

          else if (v119 == 1)
          {
            v157 = vld1q_dup_s16(v120);
            v242 = v157;
            v244 = v157;
            v246 = v157;
            v248 = v157;
            v121 = v212;
            if (!v212)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v242, 32, v120, v119, *v28.i8, *v27.i8);
            v121 = v212;
            if (!v212)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v122 = v213;
          if (v213)
          {
            v123 = 0;
            v124 = 32 * v210;
            v125 = 2 * v211;
            v126 = &v217.i8[v124 + v125];
            v127 = v208;
            v128 = v209;
            v129 = 2 * v213;
            if (2 * v213)
            {
              v130 = (2 * v213 - 1) >> 32 == 0;
            }

            else
            {
              v130 = 0;
            }

            v131 = !v130;
            v133 = v126 < v208 + v209 * (v121 - 1) + 2 * v213 && v208 < &v216[2 * v121 + 30 + 2 * v210] + 2 * v213 + v125;
            v134 = v133 || v209 < 0;
            v135 = v129 & 0x1FFFFFFE0;
            v136 = v129 & 0x1FFFFFFF8;
            v137 = (v213 < 4) | v131 | v134;
            v138 = &v218.i8[v124 + v125];
            v139 = (v208 + 16);
            v140 = v126;
            v141 = v208;
            do
            {
              v142 = (v127 + v123 * v128);
              v143 = &v126[32 * v123];
              if (v137)
              {
                v144 = 0;
                goto LABEL_178;
              }

              if (v122 >= 0x10)
              {
                v146 = v139;
                v147 = v138;
                v148 = v129 & 0x1FFFFFFE0;
                do
                {
                  v149 = *v146;
                  *(v147 - 1) = *(v146 - 1);
                  *v147 = v149;
                  v147 += 32;
                  v146 += 2;
                  v148 -= 32;
                }

                while (v148);
                if (v129 == v135)
                {
                  goto LABEL_164;
                }

                v145 = v129 & 0x1FFFFFFE0;
                if ((v122 & 0xC) == 0)
                {
                  v142 += v135;
                  v143 += v135;
                  v144 = v129 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v145 = 0;
              }

              v143 += v136;
              v150 = v145 - (v129 & 0x1FFFFFFF8);
              v151 = (v141 + v145);
              v152 = &v140[v145];
              do
              {
                v153 = *v151++;
                *v152 = v153;
                v152 += 8;
                v150 += 8;
              }

              while (v150);
              if (v129 == v136)
              {
                goto LABEL_164;
              }

              v142 += v136;
              v144 = v129 & 0xFFFFFFF8;
LABEL_178:
              v154 = v144 + 1;
              do
              {
                v155 = *v142++;
                *v143++ = v155;
              }

              while (v129 > v154++);
LABEL_164:
              ++v123;
              v138 += 32;
              v139 = (v139 + v128);
              v141 += v128;
              v140 += 32;
            }

            while (v123 != v121);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v217, 32, v206, v207, v214, v215, *(*(v202 + 208) + 52));
          if (v204)
          {
LABEL_26:
            memcpy(__dst, v72, 0x200uLL);
          }

LABEL_27:
          v21 = v35++ == v192 >> 4;
          result = v202;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v174 = v21;
  v175 = v22;
  v163 = v23;
  v24 = v12;
  v325 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v180 = v14;
  v25 = v14 >> 4;
  v162 = v14 + a10 - 1;
  v164 = v162 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v182 = v24;
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
  v184 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v173 = result;
  if (v25 <= v164)
  {
    v172 = v16 + a9 - 1;
    v161 = v16 >> 4;
    if (v16 >> 4 <= v172 >> 4)
    {
      result = v24;
      v181 = (v20 - 1) >> 4;
      v158 = v20 - 1;
      v165 = (v20 - 1) & 0xF;
      v159 = (v18 - 1) & 0xF;
      v160 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v170 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v169 = v35;
      v157 = 8 * v27 * v26;
      v171 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v180)
        {
          v37 = v180;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v162 < v36)
        {
          v36 = v162;
        }

        v179 = 16 * v25;
        v168 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v159;
        v167 = v39;
        v41 = v39 != 16;
        v42 = v161;
        v43 = v159 + 1;
        if (v25 != v160)
        {
          v43 = 16;
          v40 = v41;
        }

        v166 = v40;
        v177 = v163 + (v37 - v180) * a11;
        v178 = v43;
        v176 = v43;
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

          if (v172 < v45)
          {
            v45 = v172;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v181)
          {
            v49 = v165 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v179 >= v180 && v44 >= v16)
          {
            v51 = v47 != v165;
            if (v42 != v181)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v166;
          }

          if (v173)
          {
            v72 = 0;
            v73 = v157 >> (*(result + 57) != 0);
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

            v147 = (v72 >> 4) - 1;
            if (v74)
            {
              v148 = 0;
              if (v75)
              {
                goto LABEL_205;
              }

LABEL_194:
              v149 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v149 | v148)
              {
                goto LABEL_195;
              }

LABEL_206:
              v156 = 0;
            }

            else
            {
              v148 = 32 - __clz(~(-1 << -__clz(v147)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_194;
              }

LABEL_205:
              v149 = 0;
              if (!v148)
              {
                goto LABEL_206;
              }

LABEL_195:
              v150 = 0;
              v151 = 0;
              v152 = v42 & v147;
              v153 = v148 != 0;
              v154 = v149 != 0;
              v155 = 1;
              do
              {
                --v148;
                if (v153)
                {
                  v151 |= (v155 & v152) << v150++;
                }

                else
                {
                  v148 = 0;
                }

                --v149;
                if (v154)
                {
                  v151 |= (v155 & v25 & ((v76 >> 4) - 1)) << v150++;
                }

                else
                {
                  v149 = 0;
                }

                v155 *= 2;
                --v150;
                v154 = v149 != 0;
                v153 = v148 != 0;
              }

              while (v149 | v148);
              v156 = v151 << 10;
              result = v182;
            }

            v59 = v156 + ((v44 / v72 + v179 / v76 * ((v72 + v158) / v72)) << 14);
            goto LABEL_52;
          }

          if (v170)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v169.i8[0];
            v56 = v169.i8[4];
            v58 = v170.i32[0];
            v57 = v170.i32[1];
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
LABEL_77:
              v71 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
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
          v77 = (v175 + v71);
          v78 = v177 + 8 * (v46 - v16);
          v79 = (v174 + v59);
          __src = (v174 + v59);
          if (v184)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 0x10u) | (v176 < 0x10)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v182;
          }

          else if (!(v50 & 1 | (v49 < 0x10u) | (v176 < 0x10)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v79, v77, v49, v178, *(*(result + 208) + 52));
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v79;
          v194 = v49;
          v195 = v178;
          v190 = v168;
          v191 = v46 - v44;
          v187 = v77;
          v188 = v78;
          v189 = a11;
          v192 = v167;
          v193 = v48;
          if ((v50 & 1) == 0)
          {
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
                  v197 = v85;
                  v198 = v85;
                  v199 = v85;
                  v200 = v85;
                  v205 = v85;
                  v206 = v85;
                  v207 = v85;
                  v208 = v85;
                  v213 = v85;
                  v214 = v85;
                  v215 = v85;
                  v216 = v85;
                  v221 = v85;
                  v222 = v85;
                  v84 = 8;
                  v223 = v85;
                  v224 = v85;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v197, 128, v79, v83);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v197, 128, v79, v83, *(v81 + 52));
                v84 = 128;
              }
            }

            else
            {
              v84 = 0;
              v200 = 0u;
              v199 = 0u;
              v198 = 0u;
              v197 = 0u;
              v205 = 0u;
              v206 = 0u;
              v207 = 0u;
              v208 = 0u;
              v213 = 0u;
              v214 = 0u;
              v215 = 0u;
              v216 = 0u;
              v221 = 0u;
              v222 = 0u;
              v223 = 0u;
              v224 = 0u;
            }

            v86 = (v79 + v84);
            v87 = v77[1];
            if (v77[1])
            {
              if (v87 < 0xF0)
              {
                if (v87 == 7)
                {
                  v89 = vld1q_dup_f64(v86);
                  v229 = v89;
                  v230 = v89;
                  v231 = v89;
                  v232 = v89;
                  v237 = v89;
                  v238 = v89;
                  v239 = v89;
                  v240 = v89;
                  v245 = v89;
                  v246 = v89;
                  v247 = v89;
                  v248 = v89;
                  v253 = v89;
                  v254 = v89;
                  v88 = 8;
                  v255 = v89;
                  v256 = v89;
                }

                else
                {
                  v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v229, 128, v86, v87);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v229, 128, v86, v87, v82);
                v88 = 128;
              }
            }

            else
            {
              v88 = 0;
              v231 = 0u;
              v232 = 0u;
              v229 = 0u;
              v230 = 0u;
              v237 = 0u;
              v238 = 0u;
              v239 = 0u;
              v240 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
              v256 = 0u;
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
                  v201 = v93;
                  v202 = v93;
                  v203 = v93;
                  v204 = v93;
                  v209 = v93;
                  v210 = v93;
                  v211 = v93;
                  v212 = v93;
                  v217 = v93;
                  v218 = v93;
                  v219 = v93;
                  v220 = v93;
                  v225 = v93;
                  v226 = v93;
                  v92 = 8;
                  v227 = v93;
                  v228 = v93;
                }

                else
                {
                  v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v201, 128, v90, v91);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v201, 128, v90, v91, v82);
                v92 = 128;
              }
            }

            else
            {
              v92 = 0;
              v203 = 0u;
              v204 = 0u;
              v201 = 0u;
              v202 = 0u;
              v209 = 0u;
              v210 = 0u;
              v211 = 0u;
              v212 = 0u;
              v217 = 0u;
              v218 = 0u;
              v219 = 0u;
              v220 = 0u;
              v225 = 0u;
              v226 = 0u;
              v227 = 0u;
              v228 = 0u;
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
                  v233 = v97;
                  v234 = v97;
                  v235 = v97;
                  v236 = v97;
                  v241 = v97;
                  v242 = v97;
                  v243 = v97;
                  v244 = v97;
                  v249 = v97;
                  v250 = v97;
                  v251 = v97;
                  v252 = v97;
                  v257 = v97;
                  v258 = v97;
                  v96 = 8;
                  v259 = v97;
                  v260 = v97;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v233, 128, v94, v95);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v233, 128, v94, v95, v82);
                v96 = 128;
              }
            }

            else
            {
              v96 = 0;
              v235 = 0u;
              v236 = 0u;
              v233 = 0u;
              v234 = 0u;
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v252 = 0u;
              v257 = 0u;
              v258 = 0u;
              v259 = 0u;
              v260 = 0u;
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
                  v261 = v101;
                  v262 = v101;
                  v263 = v101;
                  v264 = v101;
                  v269 = v101;
                  v270 = v101;
                  v271 = v101;
                  v272 = v101;
                  v277 = v101;
                  v278 = v101;
                  v279 = v101;
                  v280 = v101;
                  v285 = v101;
                  v286 = v101;
                  v287 = v101;
                  v100 = 8;
                  v288 = v101;
                }

                else
                {
                  v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v261, 128, v98, v99);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v261, 128, v98, v99, v82);
                v100 = 128;
              }
            }

            else
            {
              v100 = 0;
              v263 = 0u;
              v264 = 0u;
              v261 = 0u;
              v262 = 0u;
              v269 = 0u;
              v270 = 0u;
              v271 = 0u;
              v272 = 0u;
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
              v288 = 0u;
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
                  v293 = v105;
                  v294 = v105;
                  v295 = v105;
                  v296 = v105;
                  v301 = v105;
                  v302 = v105;
                  v303 = v105;
                  v304 = v105;
                  v309 = v105;
                  v310 = v105;
                  v311 = v105;
                  v312 = v105;
                  v317 = v105;
                  v318 = v105;
                  v319 = v105;
                  v104 = 8;
                  v320 = v105;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v293, 128, v102, v103);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v293, 128, v102, v103, v82);
                v104 = 128;
              }
            }

            else
            {
              v104 = 0;
              v295 = 0u;
              v296 = 0u;
              v293 = 0u;
              v294 = 0u;
              v301 = 0u;
              v302 = 0u;
              v303 = 0u;
              v304 = 0u;
              v309 = 0u;
              v310 = 0u;
              v311 = 0u;
              v312 = 0u;
              v317 = 0u;
              v318 = 0u;
              v319 = 0u;
              v320 = 0u;
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
                  v265 = v110;
                  v266 = v110;
                  v267 = v110;
                  v268 = v110;
                  v273 = v110;
                  v274 = v110;
                  v275 = v110;
                  v276 = v110;
                  v281 = v110;
                  v282 = v110;
                  v283 = v110;
                  v284 = v110;
                  v289 = v110;
                  v290 = v110;
                  v291 = v110;
                  v108 = 8;
                  v292 = v110;
                  v109 = v77[7];
                  if (!v77[7])
                  {
                    goto LABEL_142;
                  }
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v265, 128, v106, v107);
                  v109 = v77[7];
                  if (!v77[7])
                  {
                    goto LABEL_142;
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v265, 128, v106, v107, v82);
                v108 = 128;
                v109 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_142;
                }
              }

LABEL_137:
              v111 = (v106 + v108);
              if (v109 < 0xF0)
              {
                v16 = v171;
                if (v109 == 7)
                {
                  v112 = vld1q_dup_f64(v111);
                  v297 = v112;
                  v298 = v112;
                  v299 = v112;
                  v300 = v112;
                  v305 = v112;
                  v306 = v112;
                  v307 = v112;
                  v308 = v112;
                  v313 = v112;
                  v314 = v112;
                  v315 = v112;
                  v316 = v112;
                  v321 = v112;
                  v322 = v112;
                  v323 = v112;
                  v324 = v112;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v297, 128, v111, v109);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v297, 128, v111, v109, v82);
                v16 = v171;
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
              v281 = 0u;
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
              v289 = 0u;
              v290 = 0u;
              v291 = 0u;
              v292 = 0u;
              v109 = v77[7];
              if (v77[7])
              {
                goto LABEL_137;
              }

LABEL_142:
              v299 = 0u;
              v300 = 0u;
              v297 = 0u;
              v298 = 0u;
              v305 = 0u;
              v306 = 0u;
              v307 = 0u;
              v308 = 0u;
              v313 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v321 = 0u;
              v322 = 0u;
              v323 = 0u;
              v324 = 0u;
              v16 = v171;
            }

            v80 = v42 + 1;
            v113 = v192;
            if (!v192 || (v114 = v193) == 0)
            {
LABEL_175:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v197, 128, v186, v187, v194, v195, *(*(v182 + 208) + 52));
              if (!v184)
              {
                goto LABEL_26;
              }

              goto LABEL_176;
            }

            v115 = 0;
            v116 = v190 << 7;
            v117 = 8 * v191;
            v118 = &v197 + v116 + v117;
            v119 = v188;
            v120 = v189;
            v121 = 8 * v193;
            if (8 * v193)
            {
              v122 = (8 * v193 - 1) >> 32 == 0;
            }

            else
            {
              v122 = 0;
            }

            v123 = !v122;
            v125 = v118 < v188 + v189 * (v192 - 1) + 8 * v193 && v188 < &__dst[128 * v192 + 1920 + 128 * v190 + 8 * v193 + v117];
            v126 = v121 & 0x1FFFFFFE0;
            v127 = v123 | (v189 < 0) | v125;
            v128 = &v198 + v116 + v117;
            v129 = (v188 + 16);
            v130 = v118;
            v131 = v188;
            while (2)
            {
              v132 = (v119 + v115 * v120);
              v133 = &v118[128 * v115];
              if (v127)
              {
                v134 = 0;
LABEL_162:
                v135 = v134 + 1;
                do
                {
                  v136 = *v132++;
                  *v133++ = v136;
                }

                while (v121 > v135++);
LABEL_159:
                ++v115;
                v128 += 128;
                v129 = (v129 + v120);
                v131 += v120;
                v130 += 128;
                if (v115 == v113)
                {
                  goto LABEL_175;
                }

                continue;
              }

              break;
            }

            if (v114 >= 4)
            {
              v139 = v129;
              v140 = v128;
              v141 = v121 & 0x1FFFFFFE0;
              do
              {
                v142 = *v139;
                *(v140 - 1) = *(v139 - 1);
                *v140 = v142;
                v140 += 2;
                v139 += 2;
                v141 -= 32;
              }

              while (v141);
              if (v121 == v126)
              {
                goto LABEL_159;
              }

              v138 = v121 & 0x1FFFFFFE0;
              if ((v114 & 3) == 0)
              {
                v132 += v126;
                v133 += v126;
                v134 = v121 & 0xFFFFFFE0;
                goto LABEL_162;
              }
            }

            else
            {
              v138 = 0;
            }

            v143 = -8 * v114 + v138;
            v144 = (v131 + v138);
            v145 = &v130[v138];
            do
            {
              v146 = *v144++;
              *v145 = v146;
              v145 += 8;
              v143 += 8;
            }

            while (v143);
            goto LABEL_159;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
          v16 = v171;
          v80 = v42 + 1;
          if (!v184)
          {
            goto LABEL_26;
          }

LABEL_176:
          memcpy(__src, v79, 0x800uLL);
LABEL_26:
          v29 = v42 == v172 >> 4;
          v42 = v80;
          result = v182;
        }

        while (!v29);
        v29 = v25++ == v164;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v173 = v21;
  v174 = v22;
  v159 = v23;
  v24 = v12;
  v198 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v14 >> 3;
  v158 = v14 + a10 - 1;
  v160 = v158 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v180 = v24;
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
  v179 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v160)
  {
    v171 = v16 + a9 - 1;
    v157 = v16 >> 4;
    if (v16 >> 4 <= v171 >> 4)
    {
      v178 = (v20 - 1) >> 4;
      v156 = (v18 - 1) >> 3;
      v153 = v20 - 1;
      v163 = (v20 - 1) & 0xF;
      v154 = ((v18 - 1) & 7) + 1;
      v155 = (v18 - 1) & 7;
      v162 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v169 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v168 = v34;
      v152 = 8 * v27 * v26;
      v161 = v14;
      v170 = v16;
      do
      {
        v35 = (8 * v25) | 7;
        if (8 * v25 <= v14)
        {
          v36 = v14;
        }

        else
        {
          v36 = 8 * v25;
        }

        if (v158 < v35)
        {
          v35 = v158;
        }

        v177 = 8 * v25;
        v167 = v36 - 8 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v155;
        v166 = v38;
        v40 = v38 != 8;
        v41 = v157;
        v42 = v154;
        if (v25 != v156)
        {
          v42 = 8;
          v39 = v40;
        }

        v164 = v39;
        v165 = v42;
        v176 = v159 + (v36 - v14) * a11;
        v175 = v42;
        do
        {
          v43 = 16 * v41;
          v44 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v16)
          {
            v45 = v16;
          }

          else
          {
            v45 = 16 * v41;
          }

          if (v171 < v44)
          {
            v44 = v171;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v178)
          {
            v48 = v163 + 1;
          }

          else
          {
            v48 = 16;
          }

          v49 = 1;
          if (v177 >= v14 && v43 >= v16)
          {
            v50 = v46 != v163;
            if (v41 != v178)
            {
              v50 = v47 != 16;
            }

            v49 = v50 || v164;
          }

          if (isLevelTiled)
          {
            v71 = 0;
            v72 = v152 >> (*(v24 + 57) != 0);
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

            v140 = (v71 >> 4) - 1;
            if (v73)
            {
              v141 = 0;
            }

            else
            {
              v141 = 32 - __clz(~(-1 << -__clz(v140)));
            }

            v142 = (v75 >> 3) - 1;
            if (v74)
            {
              v143 = 0;
              if (v141)
              {
                goto LABEL_178;
              }
            }

            else
            {
              v143 = 32 - __clz(~(-1 << -__clz(v142)));
              if (v143 | v141)
              {
LABEL_178:
                v144 = 0;
                v145 = 0;
                v146 = v41 & v140;
                v147 = v25 & v142;
                v148 = v143 != 0;
                v149 = v141 != 0;
                v150 = 1;
                do
                {
                  --v143;
                  if (v148)
                  {
                    v145 |= (v150 & v147) << v144++;
                  }

                  else
                  {
                    v143 = 0;
                  }

                  --v141;
                  if (v149)
                  {
                    v145 |= (v150 & v146) << v144++;
                  }

                  else
                  {
                    v141 = 0;
                  }

                  v150 *= 2;
                  --v144;
                  v149 = v141 != 0;
                  v148 = v143 != 0;
                }

                while (v141 | v143);
                v151 = v145 << 10;
                v24 = v180;
                goto LABEL_190;
              }
            }

            v151 = 0;
LABEL_190:
            v58 = v151 + ((v43 / v71 + v177 / v75 * ((v71 + v153) / v71)) << 14);
            goto LABEL_52;
          }

          if (v169)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v168.i8[0];
            v54 = v168.i8[4];
            v56 = v169.i32[0];
            v57 = v169.i32[1];
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v25) << v51++;
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
            v58 = v52 << 10;
          }

          else
          {
            v58 = 0;
          }

LABEL_52:
          v59 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v62 = *(v24 + 132) >> (*(v24 + 144) + a12);
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
              v66 |= (v69 & v25) << v65++;
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
          v76 = (v174 + v70);
          v77 = (v176 + 16 * (v45 - v16));
          __src = (v173 + v58);
          if (v179)
          {
            if (!(v49 & 1 | (v48 < 0x10u) | (v175 < 8)))
            {
              v82 = __dst;
LABEL_85:
              v84 = *(*(v24 + 208) + 52);
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v82, v76, (v176 + 16 * (v45 - v16)), a11, 8u, 4u, v84);
              v83 = v82;
              v86 = &v82[v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(&v82[v85], v76 + 1, (v77 + v162), a11, 8u, 4u, v84)];
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v86, v76 + 2, v77 + 8, a11, 8u, 4u, v84);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v86 + v87, v76 + 3, (v77 + v162 + 128), a11, 8u, 4u, v84);
              goto LABEL_157;
            }

            v78 = v14;
            v79 = v47;
            v80 = v48;
            v81 = v45;
            memcpy(__dst, __src, sizeof(__dst));
            v45 = v81;
            v82 = __dst;
            v48 = v80;
            v47 = v79;
            v14 = v78;
            v43 = 16 * v41;
            v24 = v180;
          }

          else
          {
            v82 = (v173 + v58);
            if (!(v49 & 1 | (v48 < 0x10u) | (v175 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v24;
          v183 = v82;
          v191 = v48;
          v192 = v165;
          v187 = v167;
          v188 = v45 - v43;
          v184 = v76;
          v185 = v77;
          v186 = a11;
          v189 = v166;
          v190 = v47;
          if (v49)
          {
            v83 = v82;
            dispatch_sync(*(*(v24 + 8) + 16552), block);
            goto LABEL_157;
          }

          v88 = *(*(v24 + 208) + 52);
          v89 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v194, 256, v82, *v76, v88)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v196, 256, v89, v76[1], v88);
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v195, 256, v90, v76[2], v88);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v197, 256, v90 + v91, v76[3], v88);
          v92 = v189;
          if (v189)
          {
            v93 = v190;
            if (v190)
            {
              v94 = 0;
              v95 = v188;
              v96 = &v194[16 * v187 + v95];
              v97 = v185;
              v98 = v186;
              v99 = 16 * v190;
              if (16 * v190)
              {
                v100 = (16 * v190 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < &v185[v190].i8[v186 * (v189 - 1)] && v185 < &__dst[256 * v189 + 1792 + 256 * v187 + 16 * v190 + v95 * 16];
              v104 = v99 & 0x1FFFFFFE0;
              v105 = v101 | (v186 < 0) | v103;
              v106 = &v194[16 * v187 + 1 + v95];
              v107 = v185 + 1;
              v108 = v96;
              v109 = v185;
              do
              {
                v110 = &v97->i8[v94 * v98];
                v111 = &v96[16 * v94];
                if (v105)
                {
                  v112 = 0;
                }

                else
                {
                  if (v93 == 1)
                  {
                    v116 = 0;
LABEL_109:
                    v117 = -16 * v93 + v116;
                    v118 = &v109->i8[v116];
                    v119 = &v108->i8[v116];
                    do
                    {
                      v120 = *v118;
                      v118 += 16;
                      *v119 = v120;
                      v119 += 16;
                      v117 += 16;
                    }

                    while (v117);
                    goto LABEL_101;
                  }

                  v121 = v107;
                  v122 = v106;
                  v123 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v124 = *v121;
                    v122[-1] = v121[-1];
                    *v122 = v124;
                    v122 += 2;
                    v121 += 2;
                    v123 -= 32;
                  }

                  while (v123);
                  if (v99 == v104)
                  {
                    goto LABEL_101;
                  }

                  v116 = v99 & 0x1FFFFFFE0;
                  if (v93)
                  {
                    goto LABEL_109;
                  }

                  v110 += v104;
                  v111 = (v111 + v104);
                  v112 = v99 & 0xFFFFFFE0;
                }

                v113 = v112 + 1;
                do
                {
                  v114 = *v110++;
                  v111->i8[0] = v114;
                  v111 = (v111 + 1);
                }

                while (v99 > v113++);
LABEL_101:
                ++v94;
                v106 += 16;
                v107 = (v107 + v98);
                v109 = (v109 + v98);
                v108 += 16;
              }

              while (v94 != v92);
            }
          }

          v126 = v183;
          v125 = v184;
          v127 = v191;
          v128 = v192;
          v129 = *(*(v180 + 208) + 52);
          if (v191 && v192)
          {
            v83 = v82;
            if (v192 >= 4u)
            {
              v130 = 4;
            }

            else
            {
              v130 = v192;
            }

            if (v191 >= 8u)
            {
              v131 = 8;
            }

            else
            {
              v131 = v191;
            }

            v126 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v183, v184, v194, 256, v131, v130, v129);
            v132 = v128 - 4;
            if (!v127)
            {
LABEL_136:
              v125[1] = 0;
              goto LABEL_137;
            }
          }

          else
          {
            v83 = v82;
            *v184 = 0;
            v132 = v128 - 4;
            if (!v127)
            {
              goto LABEL_136;
            }
          }

          if (v128 < 5)
          {
            goto LABEL_136;
          }

          if (v132 >= 4)
          {
            v133 = 4;
          }

          else
          {
            v133 = v132;
          }

          if (v127 >= 8)
          {
            v134 = 8;
          }

          else
          {
            v134 = v127;
          }

          v126 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v126, v125 + 1, v196, 256, v134, v133, v129);
LABEL_137:
          v135 = v127 - 8;
          if (v127 >= 9 && v128)
          {
            if (v128 >= 4)
            {
              v136 = 4;
            }

            else
            {
              v136 = v128;
            }

            if (v135 >= 8)
            {
              v137 = 8;
            }

            else
            {
              v137 = v127 - 8;
            }

            v126 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v126, v125 + 2, v195, 256, v137, v136, v129);
          }

          else
          {
            v125[2] = 0;
            if (v127 < 9)
            {
              goto LABEL_155;
            }
          }

          if (v128 >= 5)
          {
            if (v132 >= 4)
            {
              v138 = 4;
            }

            else
            {
              v138 = v132;
            }

            if (v135 >= 8)
            {
              v139 = 8;
            }

            else
            {
              v139 = v127 - 8;
            }

            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v126, v125 + 3, v197, 256, v139, v138, v129);
            goto LABEL_156;
          }

LABEL_155:
          v125[3] = 0;
LABEL_156:
          v14 = v161;
LABEL_157:
          v24 = v180;
          if (v179)
          {
            memcpy(__src, v83, 0x800uLL);
            v24 = v180;
          }

          v16 = v170;
          v29 = v41++ == v171 >> 4;
        }

        while (!v29);
        v29 = v25++ == v160;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v260 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v213 = a8;
  v195 = a8 + a10 - 1;
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
  v194 = v195 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v207 = 0;
LABEL_32:
      v204 = v26 - 4;
      v198 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v192 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v207 = v31 >= v25;
    goto LABEL_32;
  }

  v207 = 0;
  v192 = 0;
  v198 = 0;
  v204 = 0;
LABEL_33:
  if (v18 <= v194)
  {
    v206 = a7 + a9 - 1;
    if (a7 >> 4 <= v206 >> 4)
    {
      v214 = v19 >> 4;
      v200 = v19 & 0xF;
      v190 = v20 & 0xF;
      v191 = v20 >> 4;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v34 = vcgt_u32(v33, 0x1F0000001FLL);
      *&v35 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *&v34);
      v197 = v35;
      v199 = v35 | DWORD1(v35);
      v196 = v34;
      v205 = v24;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v213)
        {
          v37 = v213;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v195 < v36)
        {
          v36 = v195;
        }

        v203 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v190;
        v202 = v39;
        v41 = v39 != 16;
        v42 = v190 + 1;
        if (v18 != v191)
        {
          v42 = 16;
          v40 = v41;
        }

        v201 = v40;
        v43 = a7 >> 4;
        v211 = a3 + (v37 - v213) * a11;
        v212 = v42;
        v210 = v42;
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

          if (v206 < v45)
          {
            v45 = a7 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v45 - v46 + 1;
          if (v43 == v214)
          {
            v49 = v200 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (16 * v18 >= v213 && v44 >= a7)
          {
            v51 = v47 != v200;
            if (v43 != v214)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v201;
          }

          if (v207)
          {
            if (v204 | v198)
            {
              v52 = 0;
              v53 = 0;
              v54 = v198 != 0;
              v55 = 1;
              v56 = v204 != 0;
              v57 = v198;
              v58 = v204;
              do
              {
                --v58;
                if (v56)
                {
                  v53 |= (v43 & ~(-1 << v204) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v57;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v198) & v55) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v57 != 0;
                v56 = v58 != 0;
              }

              while (v57 | v58);
              v59 = v53 << 8;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(a1 + 336) * ((v43 >> v204) + (v18 >> v198) * v192);
          }

          else if (v199)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v64 = v196;
            v63 = BYTE4(v196);
            v66 = v197;
            v65 = HIDWORD(v197);
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
            v67 = v61 << 8;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v71 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
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
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
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
          v81 = (v211 + v46 - a7);
          v82 = (a2 + v67);
          if (v24)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v210 < 0x10)))
            {
              v90 = v226;
LABEL_112:
              v91 = a11;
              v92 = v90;
              v93 = (a4 + v79);
              v94 = v212;
              goto LABEL_198;
            }

            v83 = v82[13];
            v226[12] = v82[12];
            v226[13] = v83;
            v84 = v82[15];
            v226[14] = v82[14];
            v227 = v84;
            v85 = v82[9];
            v226[8] = v82[8];
            v226[9] = v85;
            v86 = v82[11];
            v226[10] = v82[10];
            v226[11] = v86;
            v87 = v82[5];
            v226[4] = v82[4];
            v226[5] = v87;
            v88 = v82[7];
            v226[6] = v82[6];
            v226[7] = v88;
            v89 = v82[1];
            v226[0] = *v82;
            v226[1] = v89;
            v35 = v82[2];
            v34 = v82[3];
            v90 = v226;
            v226[2] = v35;
            v226[3] = v34;
          }

          else
          {
            v90 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v210 < 0x10)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v216 = v90;
          v224 = v49;
          v225 = v212;
          v220 = v203;
          v221 = v46 - v44;
          v217 = (a4 + v79);
          v218 = v211 + v46 - a7;
          v219 = a11;
          v222 = v202;
          v223 = v48;
          if ((v50 & 1) == 0)
          {
            v95 = *v80;
            if (v95 == 96)
            {
              *&v35 = vdup_lane_s8(*v90, 0);
              v228 = v35;
              v230 = v35;
              v232 = v35;
              v234 = v35;
              v96 = 1;
            }

            else if (v95 == 31)
            {
              v97 = v90[1];
              v98 = v90[2];
              v99 = v90[3];
              v100 = vuzp2_s16(*v90, v98);
              v228 = vuzp1_s16(*v90, v98);
              v230 = v100;
              *&v35 = vuzp1_s16(v97, v99);
              *&v34 = vuzp2_s16(v97, v99);
              v232 = v35;
              v234 = v34;
              v96 = 32;
            }

            else if (*v80)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v90, v95, *&v35, *&v34);
            }

            else
            {
              v96 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v101 = (v90 + v96);
            v102 = v80[1];
            if (v102 == 96)
            {
              *&v35 = vdup_lane_s8(*v101, 0);
              v236 = v35;
              v238 = v35;
              v240 = v35;
              v242 = v35;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v104 = v101[1];
              v105 = v101[2];
              v106 = v101[3];
              v107 = vuzp2_s16(*v101, v105);
              v236 = vuzp1_s16(*v101, v105);
              v238 = v107;
              *&v35 = vuzp1_s16(v104, v106);
              *&v34 = vuzp2_s16(v104, v106);
              v240 = v35;
              v242 = v34;
              v103 = 32;
            }

            else if (v80[1])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v101, v102, *&v35, *&v34);
            }

            else
            {
              v103 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v108 = (v101 + v103);
            v109 = v80[2];
            if (v109 == 96)
            {
              *&v35 = vdup_lane_s8(*v108, 0);
              v229 = v35;
              v231 = v35;
              v233 = v35;
              v235 = v35;
              v110 = 1;
            }

            else if (v109 == 31)
            {
              v111 = v108[1];
              v112 = v108[2];
              v113 = v108[3];
              v114 = vuzp2_s16(*v108, v112);
              v229 = vuzp1_s16(*v108, v112);
              v231 = v114;
              *&v35 = vuzp1_s16(v111, v113);
              *&v34 = vuzp2_s16(v111, v113);
              v233 = v35;
              v235 = v34;
              v110 = 32;
            }

            else if (v80[2])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 16, v108, v109, *&v35, *&v34);
            }

            else
            {
              v110 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
              v235 = 0;
            }

            v115 = (v108 + v110);
            v116 = v80[3];
            if (v116 == 96)
            {
              *&v35 = vdup_lane_s8(*v115, 0);
              v237 = v35;
              v239 = v35;
              v241 = v35;
              v243 = v35;
              v117 = 1;
            }

            else if (v116 == 31)
            {
              v118 = v115[1];
              v119 = v115[2];
              v120 = v115[3];
              v121 = vuzp2_s16(*v115, v119);
              v237 = vuzp1_s16(*v115, v119);
              v239 = v121;
              *&v35 = vuzp1_s16(v118, v120);
              *&v34 = vuzp2_s16(v118, v120);
              v241 = v35;
              v243 = v34;
              v117 = 32;
            }

            else if (v80[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 16, v115, v116, *&v35, *&v34);
            }

            else
            {
              v117 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
              v243 = 0;
            }

            v122 = (v115 + v117);
            v123 = v80[4];
            if (v123 == 96)
            {
              *&v35 = vdup_lane_s8(*v122, 0);
              v244 = v35;
              v246 = v35;
              v248 = v35;
              v250 = v35;
              v124 = 1;
            }

            else if (v123 == 31)
            {
              v125 = v122[1];
              v126 = v122[2];
              v127 = v122[3];
              v128 = vuzp2_s16(*v122, v126);
              v244 = vuzp1_s16(*v122, v126);
              v246 = v128;
              *&v35 = vuzp1_s16(v125, v127);
              *&v34 = vuzp2_s16(v125, v127);
              v248 = v35;
              v250 = v34;
              v124 = 32;
            }

            else if (v80[4])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v122, v123, *&v35, *&v34);
            }

            else
            {
              v124 = 0;
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
            }

            v129 = (v122 + v124);
            v130 = v80[5];
            if (v130 == 96)
            {
              *&v35 = vdup_lane_s8(*v129, 0);
              v252 = v35;
              v254 = v35;
              v256 = v35;
              v258 = v35;
              v131 = 1;
            }

            else if (v130 == 31)
            {
              v132 = v129[1];
              v133 = v129[2];
              v134 = v129[3];
              v135 = vuzp2_s16(*v129, v133);
              v252 = vuzp1_s16(*v129, v133);
              v254 = v135;
              *&v35 = vuzp1_s16(v132, v134);
              *&v34 = vuzp2_s16(v132, v134);
              v256 = v35;
              v258 = v34;
              v131 = 32;
            }

            else if (v80[5])
            {
              v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 16, v129, v130, *&v35, *&v34);
            }

            else
            {
              v131 = 0;
              v252 = 0;
              v254 = 0;
              v256 = 0;
              v258 = 0;
            }

            v136 = (v129 + v131);
            v137 = v80[6];
            if (v137 == 96)
            {
              *&v35 = vdup_lane_s8(*v136, 0);
              v245 = v35;
              v247 = v35;
              v249 = v35;
              v251 = v35;
              v138 = 1;
            }

            else if (v137 == 31)
            {
              v139 = v136[1];
              v140 = v136[2];
              v141 = v136[3];
              v142 = vuzp2_s16(*v136, v140);
              v245 = vuzp1_s16(*v136, v140);
              v247 = v142;
              *&v35 = vuzp1_s16(v139, v141);
              *&v34 = vuzp2_s16(v139, v141);
              v249 = v35;
              v251 = v34;
              v138 = 32;
            }

            else if (v80[6])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 16, v136, v137, *&v35, *&v34);
            }

            else
            {
              v138 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
              v251 = 0;
            }

            v143 = (v136 + v138);
            v144 = v80[7];
            if (v144 == 96)
            {
              v253 = vdup_lane_s8(*v143, 0);
              v255 = v253;
              v257 = v253;
              v259 = v253;
              v145 = v222;
              if (v222)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v144 != 31)
              {
                if (v80[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 16, v143, v144, *&v35, *&v34);
                  v145 = v222;
                  if (!v222)
                  {
                    goto LABEL_197;
                  }
                }

                else
                {
                  v253 = 0;
                  v255 = 0;
                  v257 = 0;
                  v259 = 0;
                  v145 = v222;
                  if (!v222)
                  {
                    goto LABEL_197;
                  }
                }

LABEL_172:
                v150 = v223;
                if (!v223)
                {
                  goto LABEL_197;
                }

                v151 = 0;
                v152 = 16 * v220;
                v153 = &v228 + v221 + v152;
                v154 = v218;
                v155 = v219;
                v156 = v223 - 1;
                v158 = v153 < v218 + v219 * (v145 - 1) + v156 + 1 && v218 < &v227 + 16 * v145 + 16 * v220 + v221 + v156 + 1;
                v159 = v223 & 0xFFFFFFE0;
                v160 = v223 & 0xFFFFFFF8;
                v161 = v223 < 8 || v219 < 0 || v158;
                v162 = &v230 + v152 + v221;
                v163 = (v218 + 16);
                v164 = v153;
                v165 = v218;
                while (2)
                {
                  v166 = (v154 + v151 * v155);
                  v167 = &v153[16 * v151];
                  if (v161)
                  {
                    v168 = 0;
LABEL_194:
                    v178 = v150 - v168;
                    do
                    {
                      v179 = *v166++;
                      *v167++ = v179;
                      --v178;
                    }

                    while (v178);
                  }

                  else
                  {
                    if (v150 >= 0x20)
                    {
                      v170 = v163;
                      v171 = v162;
                      v172 = v150 & 0xFFFFFFE0;
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
                      if (v159 == v150)
                      {
                        goto LABEL_180;
                      }

                      v169 = v150 & 0xFFFFFFE0;
                      if ((v150 & 0x18) == 0)
                      {
                        v166 += v159;
                        v167 += v159;
                        v168 = v150 & 0xFFFFFFE0;
                        goto LABEL_194;
                      }
                    }

                    else
                    {
                      v169 = 0;
                    }

                    v167 += v160;
                    v174 = v169 - (v150 & 0xFFFFFFF8);
                    v175 = (v165 + v169);
                    v176 = &v164[v169];
                    do
                    {
                      v177 = *v175++;
                      *v176 = v177;
                      v176 += 8;
                      v174 += 8;
                    }

                    while (v174);
                    if (v160 != v150)
                    {
                      v166 += v160;
                      v168 = v150 & 0xFFFFFFF8;
                      goto LABEL_194;
                    }
                  }

LABEL_180:
                  ++v151;
                  v162 += 16;
                  v163 = (v163 + v155);
                  v165 += v155;
                  v164 += 16;
                  if (v151 == v145)
                  {
                    goto LABEL_197;
                  }

                  continue;
                }
              }

              v146 = v143[1];
              v147 = v143[2];
              v148 = v143[3];
              v149 = vuzp2_s16(*v143, v147);
              v253 = vuzp1_s16(*v143, v147);
              v255 = v149;
              v257 = vuzp1_s16(v146, v148);
              v259 = vuzp2_s16(v146, v148);
              v145 = v222;
              if (v222)
              {
                goto LABEL_172;
              }
            }

LABEL_197:
            v92 = v216;
            v93 = v217;
            v49 = v224;
            v94 = v225;
            v81 = &v228;
            v91 = 16;
LABEL_198:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, v91, v92, v93, v49, v94);
            v24 = v205;
            if (!v205)
            {
              goto LABEL_46;
            }

            goto LABEL_199;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          v24 = v205;
          if (!v205)
          {
            goto LABEL_46;
          }

LABEL_199:
          v180 = *v90->i8;
          v181 = *v90[2].i8;
          v182 = *v90[6].i8;
          v82[2] = *v90[4].i8;
          v82[3] = v182;
          *v82 = v180;
          v82[1] = v181;
          v183 = *v90[8].i8;
          v184 = *v90[10].i8;
          v185 = *v90[14].i8;
          v82[6] = *v90[12].i8;
          v82[7] = v185;
          v82[4] = v183;
          v82[5] = v184;
          v186 = *v90[16].i8;
          v187 = *v90[18].i8;
          v188 = *v90[22].i8;
          v82[10] = *v90[20].i8;
          v82[11] = v188;
          v82[8] = v186;
          v82[9] = v187;
          v35 = *v90[24].i8;
          v34 = *v90[26].i8;
          v189 = *v90[30].i8;
          v82[14] = *v90[28].i8;
          v82[15] = v189;
          v82[12] = v35;
          v82[13] = v34;
LABEL_46:
          v21 = v43++ == v206 >> 4;
        }

        while (!v21);
        v21 = v18++ == v194;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v260 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v213 = a8;
  v195 = a8 + a10 - 1;
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
  v194 = v195 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v207 = 0;
LABEL_32:
      v204 = v26 - 4;
      v198 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v192 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v207 = v31 >= v25;
    goto LABEL_32;
  }

  v207 = 0;
  v192 = 0;
  v198 = 0;
  v204 = 0;
LABEL_33:
  if (v18 <= v194)
  {
    v206 = a7 + a9 - 1;
    if (a7 >> 4 <= v206 >> 4)
    {
      v214 = v19 >> 4;
      v200 = v19 & 0xF;
      v190 = v20 & 0xF;
      v191 = v20 >> 4;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v34 = vcgt_u32(v33, 0x1F0000001FLL);
      *&v35 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *&v34);
      v197 = v35;
      v199 = v35 | DWORD1(v35);
      v196 = v34;
      v205 = v24;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v213)
        {
          v37 = v213;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v195 < v36)
        {
          v36 = v195;
        }

        v203 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v190;
        v202 = v39;
        v41 = v39 != 16;
        v42 = v190 + 1;
        if (v18 != v191)
        {
          v42 = 16;
          v40 = v41;
        }

        v201 = v40;
        v43 = a7 >> 4;
        v211 = a3 + (v37 - v213) * a11;
        v212 = v42;
        v210 = v42;
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

          if (v206 < v45)
          {
            v45 = a7 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v45 - v46 + 1;
          if (v43 == v214)
          {
            v49 = v200 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (16 * v18 >= v213 && v44 >= a7)
          {
            v51 = v47 != v200;
            if (v43 != v214)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v201;
          }

          if (v207)
          {
            if (v204 | v198)
            {
              v52 = 0;
              v53 = 0;
              v54 = v198 != 0;
              v55 = 1;
              v56 = v204 != 0;
              v57 = v198;
              v58 = v204;
              do
              {
                --v58;
                if (v56)
                {
                  v53 |= (v43 & ~(-1 << v204) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v57;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v198) & v55) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v57 != 0;
                v56 = v58 != 0;
              }

              while (v57 | v58);
              v59 = v53 << 8;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(a1 + 336) * ((v43 >> v204) + (v18 >> v198) * v192);
          }

          else if (v199)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v64 = v196;
            v63 = BYTE4(v196);
            v66 = v197;
            v65 = HIDWORD(v197);
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
            v67 = v61 << 8;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v71 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
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
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
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
          v81 = (v211 + v46 - a7);
          v82 = (a2 + v67);
          if (v24)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v210 < 0x10)))
            {
              v90 = v226;
LABEL_112:
              v91 = a11;
              v92 = v90;
              v93 = (a4 + v79);
              v94 = v212;
              goto LABEL_198;
            }

            v83 = v82[13];
            v226[12] = v82[12];
            v226[13] = v83;
            v84 = v82[15];
            v226[14] = v82[14];
            v227 = v84;
            v85 = v82[9];
            v226[8] = v82[8];
            v226[9] = v85;
            v86 = v82[11];
            v226[10] = v82[10];
            v226[11] = v86;
            v87 = v82[5];
            v226[4] = v82[4];
            v226[5] = v87;
            v88 = v82[7];
            v226[6] = v82[6];
            v226[7] = v88;
            v89 = v82[1];
            v226[0] = *v82;
            v226[1] = v89;
            v35 = v82[2];
            v34 = v82[3];
            v90 = v226;
            v226[2] = v35;
            v226[3] = v34;
          }

          else
          {
            v90 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v210 < 0x10)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v216 = v90;
          v224 = v49;
          v225 = v212;
          v220 = v203;
          v221 = v46 - v44;
          v217 = (a4 + v79);
          v218 = v211 + v46 - a7;
          v219 = a11;
          v222 = v202;
          v223 = v48;
          if ((v50 & 1) == 0)
          {
            v95 = *v80;
            if (v95 == 96)
            {
              *&v35 = vdup_lane_s8(*v90, 0);
              v228 = v35;
              v230 = v35;
              v232 = v35;
              v234 = v35;
              v96 = 1;
            }

            else if (v95 == 31)
            {
              v97 = v90[1];
              v98 = v90[2];
              v99 = v90[3];
              v100 = vuzp2_s16(*v90, v98);
              v228 = vuzp1_s16(*v90, v98);
              v230 = v100;
              *&v35 = vuzp1_s16(v97, v99);
              *&v34 = vuzp2_s16(v97, v99);
              v232 = v35;
              v234 = v34;
              v96 = 32;
            }

            else if (*v80)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v90, v95, *&v35, *&v34);
            }

            else
            {
              v96 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v101 = (v90 + v96);
            v102 = v80[1];
            if (v102 == 96)
            {
              *&v35 = vdup_lane_s8(*v101, 0);
              v236 = v35;
              v238 = v35;
              v240 = v35;
              v242 = v35;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v104 = v101[1];
              v105 = v101[2];
              v106 = v101[3];
              v107 = vuzp2_s16(*v101, v105);
              v236 = vuzp1_s16(*v101, v105);
              v238 = v107;
              *&v35 = vuzp1_s16(v104, v106);
              *&v34 = vuzp2_s16(v104, v106);
              v240 = v35;
              v242 = v34;
              v103 = 32;
            }

            else if (v80[1])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v101, v102, *&v35, *&v34);
            }

            else
            {
              v103 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v108 = (v101 + v103);
            v109 = v80[2];
            if (v109 == 96)
            {
              *&v35 = vdup_lane_s8(*v108, 0);
              v229 = v35;
              v231 = v35;
              v233 = v35;
              v235 = v35;
              v110 = 1;
            }

            else if (v109 == 31)
            {
              v111 = v108[1];
              v112 = v108[2];
              v113 = v108[3];
              v114 = vuzp2_s16(*v108, v112);
              v229 = vuzp1_s16(*v108, v112);
              v231 = v114;
              *&v35 = vuzp1_s16(v111, v113);
              *&v34 = vuzp2_s16(v111, v113);
              v233 = v35;
              v235 = v34;
              v110 = 32;
            }

            else if (v80[2])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 16, v108, v109, *&v35, *&v34);
            }

            else
            {
              v110 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
              v235 = 0;
            }

            v115 = (v108 + v110);
            v116 = v80[3];
            if (v116 == 96)
            {
              *&v35 = vdup_lane_s8(*v115, 0);
              v237 = v35;
              v239 = v35;
              v241 = v35;
              v243 = v35;
              v117 = 1;
            }

            else if (v116 == 31)
            {
              v118 = v115[1];
              v119 = v115[2];
              v120 = v115[3];
              v121 = vuzp2_s16(*v115, v119);
              v237 = vuzp1_s16(*v115, v119);
              v239 = v121;
              *&v35 = vuzp1_s16(v118, v120);
              *&v34 = vuzp2_s16(v118, v120);
              v241 = v35;
              v243 = v34;
              v117 = 32;
            }

            else if (v80[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 16, v115, v116, *&v35, *&v34);
            }

            else
            {
              v117 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
              v243 = 0;
            }

            v122 = (v115 + v117);
            v123 = v80[4];
            if (v123 == 96)
            {
              *&v35 = vdup_lane_s8(*v122, 0);
              v244 = v35;
              v246 = v35;
              v248 = v35;
              v250 = v35;
              v124 = 1;
            }

            else if (v123 == 31)
            {
              v125 = v122[1];
              v126 = v122[2];
              v127 = v122[3];
              v128 = vuzp2_s16(*v122, v126);
              v244 = vuzp1_s16(*v122, v126);
              v246 = v128;
              *&v35 = vuzp1_s16(v125, v127);
              *&v34 = vuzp2_s16(v125, v127);
              v248 = v35;
              v250 = v34;
              v124 = 32;
            }

            else if (v80[4])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v122, v123, *&v35, *&v34);
            }

            else
            {
              v124 = 0;
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
            }

            v129 = (v122 + v124);
            v130 = v80[5];
            if (v130 == 96)
            {
              *&v35 = vdup_lane_s8(*v129, 0);
              v252 = v35;
              v254 = v35;
              v256 = v35;
              v258 = v35;
              v131 = 1;
            }

            else if (v130 == 31)
            {
              v132 = v129[1];
              v133 = v129[2];
              v134 = v129[3];
              v135 = vuzp2_s16(*v129, v133);
              v252 = vuzp1_s16(*v129, v133);
              v254 = v135;
              *&v35 = vuzp1_s16(v132, v134);
              *&v34 = vuzp2_s16(v132, v134);
              v256 = v35;
              v258 = v34;
              v131 = 32;
            }

            else if (v80[5])
            {
              v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 16, v129, v130, *&v35, *&v34);
            }

            else
            {
              v131 = 0;
              v252 = 0;
              v254 = 0;
              v256 = 0;
              v258 = 0;
            }

            v136 = (v129 + v131);
            v137 = v80[6];
            if (v137 == 96)
            {
              *&v35 = vdup_lane_s8(*v136, 0);
              v245 = v35;
              v247 = v35;
              v249 = v35;
              v251 = v35;
              v138 = 1;
            }

            else if (v137 == 31)
            {
              v139 = v136[1];
              v140 = v136[2];
              v141 = v136[3];
              v142 = vuzp2_s16(*v136, v140);
              v245 = vuzp1_s16(*v136, v140);
              v247 = v142;
              *&v35 = vuzp1_s16(v139, v141);
              *&v34 = vuzp2_s16(v139, v141);
              v249 = v35;
              v251 = v34;
              v138 = 32;
            }

            else if (v80[6])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 16, v136, v137, *&v35, *&v34);
            }

            else
            {
              v138 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
              v251 = 0;
            }

            v143 = (v136 + v138);
            v144 = v80[7];
            if (v144 == 96)
            {
              v253 = vdup_lane_s8(*v143, 0);
              v255 = v253;
              v257 = v253;
              v259 = v253;
              v145 = v222;
              if (v222)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v144 != 31)
              {
                if (v80[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 16, v143, v144, *&v35, *&v34);
                  v145 = v222;
                  if (!v222)
                  {
                    goto LABEL_197;
                  }
                }

                else
                {
                  v253 = 0;
                  v255 = 0;
                  v257 = 0;
                  v259 = 0;
                  v145 = v222;
                  if (!v222)
                  {
                    goto LABEL_197;
                  }
                }

LABEL_172:
                v150 = v223;
                if (!v223)
                {
                  goto LABEL_197;
                }

                v151 = 0;
                v152 = 16 * v220;
                v153 = &v228 + v221 + v152;
                v154 = v218;
                v155 = v219;
                v156 = v223 - 1;
                v158 = v153 < v218 + v219 * (v145 - 1) + v156 + 1 && v218 < &v227 + 16 * v145 + 16 * v220 + v221 + v156 + 1;
                v159 = v223 & 0xFFFFFFE0;
                v160 = v223 & 0xFFFFFFF8;
                v161 = v223 < 8 || v219 < 0 || v158;
                v162 = &v230 + v152 + v221;
                v163 = (v218 + 16);
                v164 = v153;
                v165 = v218;
                while (2)
                {
                  v166 = (v154 + v151 * v155);
                  v167 = &v153[16 * v151];
                  if (v161)
                  {
                    v168 = 0;
LABEL_194:
                    v178 = v150 - v168;
                    do
                    {
                      v179 = *v166++;
                      *v167++ = v179;
                      --v178;
                    }

                    while (v178);
                  }

                  else
                  {
                    if (v150 >= 0x20)
                    {
                      v170 = v163;
                      v171 = v162;
                      v172 = v150 & 0xFFFFFFE0;
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
                      if (v159 == v150)
                      {
                        goto LABEL_180;
                      }

                      v169 = v150 & 0xFFFFFFE0;
                      if ((v150 & 0x18) == 0)
                      {
                        v166 += v159;
                        v167 += v159;
                        v168 = v150 & 0xFFFFFFE0;
                        goto LABEL_194;
                      }
                    }

                    else
                    {
                      v169 = 0;
                    }

                    v167 += v160;
                    v174 = v169 - (v150 & 0xFFFFFFF8);
                    v175 = (v165 + v169);
                    v176 = &v164[v169];
                    do
                    {
                      v177 = *v175++;
                      *v176 = v177;
                      v176 += 8;
                      v174 += 8;
                    }

                    while (v174);
                    if (v160 != v150)
                    {
                      v166 += v160;
                      v168 = v150 & 0xFFFFFFF8;
                      goto LABEL_194;
                    }
                  }

LABEL_180:
                  ++v151;
                  v162 += 16;
                  v163 = (v163 + v155);
                  v165 += v155;
                  v164 += 16;
                  if (v151 == v145)
                  {
                    goto LABEL_197;
                  }

                  continue;
                }
              }

              v146 = v143[1];
              v147 = v143[2];
              v148 = v143[3];
              v149 = vuzp2_s16(*v143, v147);
              v253 = vuzp1_s16(*v143, v147);
              v255 = v149;
              v257 = vuzp1_s16(v146, v148);
              v259 = vuzp2_s16(v146, v148);
              v145 = v222;
              if (v222)
              {
                goto LABEL_172;
              }
            }

LABEL_197:
            v92 = v216;
            v93 = v217;
            v49 = v224;
            v94 = v225;
            v81 = &v228;
            v91 = 16;
LABEL_198:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, v91, v92, v93, v49, v94);
            v24 = v205;
            if (!v205)
            {
              goto LABEL_46;
            }

            goto LABEL_199;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          v24 = v205;
          if (!v205)
          {
            goto LABEL_46;
          }

LABEL_199:
          v180 = *v90->i8;
          v181 = *v90[2].i8;
          v182 = *v90[6].i8;
          v82[2] = *v90[4].i8;
          v82[3] = v182;
          *v82 = v180;
          v82[1] = v181;
          v183 = *v90[8].i8;
          v184 = *v90[10].i8;
          v185 = *v90[14].i8;
          v82[6] = *v90[12].i8;
          v82[7] = v185;
          v82[4] = v183;
          v82[5] = v184;
          v186 = *v90[16].i8;
          v187 = *v90[18].i8;
          v188 = *v90[22].i8;
          v82[10] = *v90[20].i8;
          v82[11] = v188;
          v82[8] = v186;
          v82[9] = v187;
          v35 = *v90[24].i8;
          v34 = *v90[26].i8;
          v189 = *v90[30].i8;
          v82[14] = *v90[28].i8;
          v82[15] = v189;
          v82[12] = v35;
          v82[13] = v34;
LABEL_46:
          v21 = v43++ == v206 >> 4;
        }

        while (!v21);
        v21 = v18++ == v194;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v259 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v211 = a8;
  v17 = a8 >> 4;
  v194 = a8 + a10 - 1;
  v196 = v194 >> 4;
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
  v213 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v196)
  {
    v25 = a7 + a9 - 1;
    if (a7 >> 4 <= v25 >> 4)
    {
      v212 = (a5 - 1) >> 4;
      v191 = a5 - 1;
      v197 = (a5 - 1) & 0xF;
      v192 = (a6 - 1) & 0xF;
      v193 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v27 = vcgt_u32(v26, 0x1F0000001FLL);
      *&v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *&v27);
      v202 = v28;
      v203 = v28 | DWORD1(v28);
      v201 = v27;
      v190 = 8 * v19 * v18;
      do
      {
        v29 = (16 * v17) | 0xF;
        if (16 * v17 <= v211)
        {
          v30 = v211;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v194 < v29)
        {
          v29 = v194;
        }

        v210 = 16 * v17;
        v200 = v30 - 16 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v192;
        v199 = v32;
        v34 = v32 != 16;
        v35 = a7 >> 4;
        v36 = v192 + 1;
        if (v17 != v193)
        {
          v36 = 16;
          v33 = v34;
        }

        v198 = v33;
        v208 = a3 + (v30 - v211) * a11;
        v209 = v36;
        v207 = v36;
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

          if (v25 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v35 == v212)
          {
            v42 = v197 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v210 >= v211 && v37 >= a7)
          {
            v44 = v40 != v197;
            if (v35 != v212)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v198;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v190 >> (*(a1 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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
              if (v68)
              {
                goto LABEL_202;
              }

LABEL_191:
              v182 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v182 | v181)
              {
                goto LABEL_192;
              }

LABEL_203:
              v189 = 0;
            }

            else
            {
              v181 = 32 - __clz(~(-1 << -__clz(v180)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_191;
              }

LABEL_202:
              v182 = 0;
              if (!v181)
              {
                goto LABEL_203;
              }

LABEL_192:
              v183 = 0;
              v184 = 0;
              v185 = v35 & v180;
              v186 = v181 != 0;
              v187 = v182 != 0;
              v188 = 1;
              do
              {
                --v181;
                if (v186)
                {
                  v184 |= (v188 & v185) << v183++;
                }

                else
                {
                  v181 = 0;
                }

                --v182;
                if (v187)
                {
                  v184 |= (v188 & v17 & ((v69 >> 4) - 1)) << v183++;
                }

                else
                {
                  v182 = 0;
                }

                v188 *= 2;
                --v183;
                v187 = v182 != 0;
                v186 = v181 != 0;
              }

              while (v182 | v181);
              v189 = v184 << 8;
            }

            v52 = v189 + ((v37 / v65 + v210 / v69 * ((v65 + v191) / v65)) << 14);
            goto LABEL_52;
          }

          if (v203)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v201;
            v48 = BYTE4(v201);
            v51 = v202;
            v50 = HIDWORD(v202);
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
            v52 = v46 << 8;
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

          v57 = v56 + 15;
          if (v57 < 0x20)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
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
          v71 = (v208 + v39 - a7);
          v72 = (a2 + v52);
          if (v213)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v207 < 0x10)))
            {
              v80 = v225;
LABEL_86:
              v81 = a11;
              v82 = v80;
              v83 = (a4 + v64);
              v84 = v209;
              goto LABEL_172;
            }

            v73 = v72[13];
            v225[12] = v72[12];
            v225[13] = v73;
            v74 = v72[15];
            v225[14] = v72[14];
            v226 = v74;
            v75 = v72[9];
            v225[8] = v72[8];
            v225[9] = v75;
            v76 = v72[11];
            v225[10] = v72[10];
            v225[11] = v76;
            v77 = v72[5];
            v225[4] = v72[4];
            v225[5] = v77;
            v78 = v72[7];
            v225[6] = v72[6];
            v225[7] = v78;
            v79 = v72[1];
            v225[0] = *v72;
            v225[1] = v79;
            v28 = v72[2];
            v27 = v72[3];
            v80 = v225;
            v225[2] = v28;
            v225[3] = v27;
          }

          else
          {
            v80 = (a2 + v52);
            if (!(v43 & 1 | (v42 < 0x10u) | (v207 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v215 = v80;
          v223 = v42;
          v224 = v209;
          v219 = v200;
          v220 = v39 - v37;
          v216 = (a4 + v64);
          v217 = v208 + v39 - a7;
          v218 = a11;
          v221 = v199;
          v222 = v41;
          if ((v43 & 1) == 0)
          {
            v85 = *v70;
            if (v85 == 96)
            {
              *&v28 = vdup_lane_s8(*v80, 0);
              v227 = v28;
              v229 = v28;
              v231 = v28;
              v233 = v28;
              v86 = 1;
            }

            else if (v85 == 31)
            {
              v87 = v80[1];
              v88 = v80[2];
              v89 = v80[3];
              v90 = vuzp2_s16(*v80, v88);
              v227 = vuzp1_s16(*v80, v88);
              v229 = v90;
              *&v28 = vuzp1_s16(v87, v89);
              *&v27 = vuzp2_s16(v87, v89);
              v231 = v28;
              v233 = v27;
              v86 = 32;
            }

            else if (*v70)
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 16, v80, v85, *&v28, *&v27);
            }

            else
            {
              v86 = 0;
              v227 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
            }

            v91 = (v80 + v86);
            v92 = v70[1];
            if (v92 == 96)
            {
              *&v28 = vdup_lane_s8(*v91, 0);
              v235 = v28;
              v237 = v28;
              v239 = v28;
              v241 = v28;
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v94 = v91[1];
              v95 = v91[2];
              v96 = v91[3];
              v97 = vuzp2_s16(*v91, v95);
              v235 = vuzp1_s16(*v91, v95);
              v237 = v97;
              *&v28 = vuzp1_s16(v94, v96);
              *&v27 = vuzp2_s16(v94, v96);
              v239 = v28;
              v241 = v27;
              v93 = 32;
            }

            else if (v70[1])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 16, v91, v92, *&v28, *&v27);
            }

            else
            {
              v93 = 0;
              v235 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
            }

            v98 = (v91 + v93);
            v99 = v70[2];
            if (v99 == 96)
            {
              *&v28 = vdup_lane_s8(*v98, 0);
              v228 = v28;
              v230 = v28;
              v232 = v28;
              v234 = v28;
              v100 = 1;
            }

            else if (v99 == 31)
            {
              v101 = v98[1];
              v102 = v98[2];
              v103 = v98[3];
              v104 = vuzp2_s16(*v98, v102);
              v228 = vuzp1_s16(*v98, v102);
              v230 = v104;
              *&v28 = vuzp1_s16(v101, v103);
              *&v27 = vuzp2_s16(v101, v103);
              v232 = v28;
              v234 = v27;
              v100 = 32;
            }

            else if (v70[2])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v98, v99, *&v28, *&v27);
            }

            else
            {
              v100 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v105 = (v98 + v100);
            v106 = v70[3];
            if (v106 == 96)
            {
              *&v28 = vdup_lane_s8(*v105, 0);
              v236 = v28;
              v238 = v28;
              v240 = v28;
              v242 = v28;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v108 = v105[1];
              v109 = v105[2];
              v110 = v105[3];
              v111 = vuzp2_s16(*v105, v109);
              v236 = vuzp1_s16(*v105, v109);
              v238 = v111;
              *&v28 = vuzp1_s16(v108, v110);
              *&v27 = vuzp2_s16(v108, v110);
              v240 = v28;
              v242 = v27;
              v107 = 32;
            }

            else if (v70[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v105, v106, *&v28, *&v27);
            }

            else
            {
              v107 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v112 = (v105 + v107);
            v113 = v70[4];
            if (v113 == 96)
            {
              *&v28 = vdup_lane_s8(*v112, 0);
              v243 = v28;
              v245 = v28;
              v247 = v28;
              v249 = v28;
              v114 = 1;
            }

            else if (v113 == 31)
            {
              v115 = v112[1];
              v116 = v112[2];
              v117 = v112[3];
              v118 = vuzp2_s16(*v112, v116);
              v243 = vuzp1_s16(*v112, v116);
              v245 = v118;
              *&v28 = vuzp1_s16(v115, v117);
              *&v27 = vuzp2_s16(v115, v117);
              v247 = v28;
              v249 = v27;
              v114 = 32;
            }

            else if (v70[4])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 16, v112, v113, *&v28, *&v27);
            }

            else
            {
              v114 = 0;
              v243 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
            }

            v119 = (v112 + v114);
            v120 = v70[5];
            if (v120 == 96)
            {
              *&v28 = vdup_lane_s8(*v119, 0);
              v251 = v28;
              v253 = v28;
              v255 = v28;
              v257 = v28;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v122 = v119[1];
              v123 = v119[2];
              v124 = v119[3];
              v125 = vuzp2_s16(*v119, v123);
              v251 = vuzp1_s16(*v119, v123);
              v253 = v125;
              *&v28 = vuzp1_s16(v122, v124);
              *&v27 = vuzp2_s16(v122, v124);
              v255 = v28;
              v257 = v27;
              v121 = 32;
            }

            else if (v70[5])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 16, v119, v120, *&v28, *&v27);
            }

            else
            {
              v121 = 0;
              v251 = 0;
              v253 = 0;
              v255 = 0;
              v257 = 0;
            }

            v126 = (v119 + v121);
            v127 = v70[6];
            if (v127 == 96)
            {
              *&v28 = vdup_lane_s8(*v126, 0);
              v244 = v28;
              v246 = v28;
              v248 = v28;
              v250 = v28;
              v128 = 1;
            }

            else if (v127 == 31)
            {
              v129 = v126[1];
              v130 = v126[2];
              v131 = v126[3];
              v132 = vuzp2_s16(*v126, v130);
              v244 = vuzp1_s16(*v126, v130);
              v246 = v132;
              *&v28 = vuzp1_s16(v129, v131);
              *&v27 = vuzp2_s16(v129, v131);
              v248 = v28;
              v250 = v27;
              v128 = 32;
            }

            else if (v70[6])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v126, v127, *&v28, *&v27);
            }

            else
            {
              v128 = 0;
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
            }

            v133 = (v126 + v128);
            v134 = v70[7];
            if (v134 == 96)
            {
              v252 = vdup_lane_s8(*v133, 0);
              v254 = v252;
              v256 = v252;
              v258 = v252;
              v135 = v221;
              if (v221)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v134 != 31)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 16, v133, v134, *&v28, *&v27);
                  v135 = v221;
                  if (!v221)
                  {
                    goto LABEL_171;
                  }
                }

                else
                {
                  v252 = 0;
                  v254 = 0;
                  v256 = 0;
                  v258 = 0;
                  v135 = v221;
                  if (!v221)
                  {
                    goto LABEL_171;
                  }
                }

LABEL_146:
                v140 = v222;
                if (!v222)
                {
                  goto LABEL_171;
                }

                v141 = 0;
                v142 = 16 * v219;
                v143 = &v227 + v220 + v142;
                v144 = v217;
                v145 = v218;
                v146 = v222 - 1;
                v148 = v143 < v217 + v218 * (v135 - 1) + v146 + 1 && v217 < &v226 + 16 * v135 + 16 * v219 + v220 + v146 + 1;
                v149 = v222 & 0xFFFFFFE0;
                v150 = v222 & 0xFFFFFFF8;
                v151 = v222 < 8 || v218 < 0 || v148;
                v152 = &v229 + v142 + v220;
                v153 = (v217 + 16);
                v154 = v143;
                v155 = v217;
                while (2)
                {
                  v156 = (v144 + v141 * v145);
                  v157 = &v143[16 * v141];
                  if (v151)
                  {
                    v158 = 0;
LABEL_168:
                    v168 = v140 - v158;
                    do
                    {
                      v169 = *v156++;
                      *v157++ = v169;
                      --v168;
                    }

                    while (v168);
                  }

                  else
                  {
                    if (v140 >= 0x20)
                    {
                      v160 = v153;
                      v161 = v152;
                      v162 = v140 & 0xFFFFFFE0;
                      do
                      {
                        v163 = *v160;
                        *(v161 - 1) = *(v160 - 1);
                        *v161 = v163;
                        v161 += 2;
                        v160 += 2;
                        v162 -= 32;
                      }

                      while (v162);
                      if (v149 == v140)
                      {
                        goto LABEL_154;
                      }

                      v159 = v140 & 0xFFFFFFE0;
                      if ((v140 & 0x18) == 0)
                      {
                        v156 += v149;
                        v157 += v149;
                        v158 = v140 & 0xFFFFFFE0;
                        goto LABEL_168;
                      }
                    }

                    else
                    {
                      v159 = 0;
                    }

                    v157 += v150;
                    v164 = v159 - (v140 & 0xFFFFFFF8);
                    v165 = (v155 + v159);
                    v166 = &v154[v159];
                    do
                    {
                      v167 = *v165++;
                      *v166 = v167;
                      v166 += 8;
                      v164 += 8;
                    }

                    while (v164);
                    if (v150 != v140)
                    {
                      v156 += v150;
                      v158 = v140 & 0xFFFFFFF8;
                      goto LABEL_168;
                    }
                  }

LABEL_154:
                  ++v141;
                  v152 += 16;
                  v153 = (v153 + v145);
                  v155 += v145;
                  v154 += 16;
                  if (v141 == v135)
                  {
                    goto LABEL_171;
                  }

                  continue;
                }
              }

              v136 = v133[1];
              v137 = v133[2];
              v138 = v133[3];
              v139 = vuzp2_s16(*v133, v137);
              v252 = vuzp1_s16(*v133, v137);
              v254 = v139;
              v256 = vuzp1_s16(v136, v138);
              v258 = vuzp2_s16(v136, v138);
              v135 = v221;
              if (v221)
              {
                goto LABEL_146;
              }
            }

LABEL_171:
            v82 = v215;
            v83 = v216;
            v42 = v223;
            v84 = v224;
            v71 = &v227;
            v81 = 16;
LABEL_172:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, v81, v82, v83, v42, v84);
            if (!v213)
            {
              goto LABEL_26;
            }

            goto LABEL_173;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v213)
          {
            goto LABEL_26;
          }

LABEL_173:
          v170 = *v80->i8;
          v171 = *v80[2].i8;
          v172 = *v80[6].i8;
          v72[2] = *v80[4].i8;
          v72[3] = v172;
          *v72 = v170;
          v72[1] = v171;
          v173 = *v80[8].i8;
          v174 = *v80[10].i8;
          v175 = *v80[14].i8;
          v72[6] = *v80[12].i8;
          v72[7] = v175;
          v72[4] = v173;
          v72[5] = v174;
          v176 = *v80[16].i8;
          v177 = *v80[18].i8;
          v178 = *v80[22].i8;
          v72[10] = *v80[20].i8;
          v72[11] = v178;
          v72[8] = v176;
          v72[9] = v177;
          v28 = *v80[24].i8;
          v27 = *v80[26].i8;
          v179 = *v80[30].i8;
          v72[14] = *v80[28].i8;
          v72[15] = v179;
          v72[12] = v28;
          v72[13] = v27;
LABEL_26:
          v21 = v35++ == v25 >> 4;
        }

        while (!v21);
        v21 = v17++ == v196;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v259 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v211 = a8;
  v17 = a8 >> 4;
  v194 = a8 + a10 - 1;
  v196 = v194 >> 4;
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
  v213 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v196)
  {
    v25 = a7 + a9 - 1;
    if (a7 >> 4 <= v25 >> 4)
    {
      v212 = (a5 - 1) >> 4;
      v191 = a5 - 1;
      v197 = (a5 - 1) & 0xF;
      v192 = (a6 - 1) & 0xF;
      v193 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v27 = vcgt_u32(v26, 0x1F0000001FLL);
      *&v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *&v27);
      v202 = v28;
      v203 = v28 | DWORD1(v28);
      v201 = v27;
      v190 = 8 * v19 * v18;
      do
      {
        v29 = (16 * v17) | 0xF;
        if (16 * v17 <= v211)
        {
          v30 = v211;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v194 < v29)
        {
          v29 = v194;
        }

        v210 = 16 * v17;
        v200 = v30 - 16 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v192;
        v199 = v32;
        v34 = v32 != 16;
        v35 = a7 >> 4;
        v36 = v192 + 1;
        if (v17 != v193)
        {
          v36 = 16;
          v33 = v34;
        }

        v198 = v33;
        v208 = a3 + (v30 - v211) * a11;
        v209 = v36;
        v207 = v36;
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

          if (v25 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v35 == v212)
          {
            v42 = v197 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v210 >= v211 && v37 >= a7)
          {
            v44 = v40 != v197;
            if (v35 != v212)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v198;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v190 >> (*(a1 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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
              if (v68)
              {
                goto LABEL_202;
              }

LABEL_191:
              v182 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v182 | v181)
              {
                goto LABEL_192;
              }

LABEL_203:
              v189 = 0;
            }

            else
            {
              v181 = 32 - __clz(~(-1 << -__clz(v180)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_191;
              }

LABEL_202:
              v182 = 0;
              if (!v181)
              {
                goto LABEL_203;
              }

LABEL_192:
              v183 = 0;
              v184 = 0;
              v185 = v35 & v180;
              v186 = v181 != 0;
              v187 = v182 != 0;
              v188 = 1;
              do
              {
                --v181;
                if (v186)
                {
                  v184 |= (v188 & v185) << v183++;
                }

                else
                {
                  v181 = 0;
                }

                --v182;
                if (v187)
                {
                  v184 |= (v188 & v17 & ((v69 >> 4) - 1)) << v183++;
                }

                else
                {
                  v182 = 0;
                }

                v188 *= 2;
                --v183;
                v187 = v182 != 0;
                v186 = v181 != 0;
              }

              while (v182 | v181);
              v189 = v184 << 8;
            }

            v52 = v189 + ((v37 / v65 + v210 / v69 * ((v65 + v191) / v65)) << 14);
            goto LABEL_52;
          }

          if (v203)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v201;
            v48 = BYTE4(v201);
            v51 = v202;
            v50 = HIDWORD(v202);
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
            v52 = v46 << 8;
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

          v57 = v56 + 15;
          if (v57 < 0x20)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
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
          v71 = (v208 + v39 - a7);
          v72 = (a2 + v52);
          if (v213)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v207 < 0x10)))
            {
              v80 = v225;
LABEL_86:
              v81 = a11;
              v82 = v80;
              v83 = (a4 + v64);
              v84 = v209;
              goto LABEL_172;
            }

            v73 = v72[13];
            v225[12] = v72[12];
            v225[13] = v73;
            v74 = v72[15];
            v225[14] = v72[14];
            v226 = v74;
            v75 = v72[9];
            v225[8] = v72[8];
            v225[9] = v75;
            v76 = v72[11];
            v225[10] = v72[10];
            v225[11] = v76;
            v77 = v72[5];
            v225[4] = v72[4];
            v225[5] = v77;
            v78 = v72[7];
            v225[6] = v72[6];
            v225[7] = v78;
            v79 = v72[1];
            v225[0] = *v72;
            v225[1] = v79;
            v28 = v72[2];
            v27 = v72[3];
            v80 = v225;
            v225[2] = v28;
            v225[3] = v27;
          }

          else
          {
            v80 = (a2 + v52);
            if (!(v43 & 1 | (v42 < 0x10u) | (v207 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v215 = v80;
          v223 = v42;
          v224 = v209;
          v219 = v200;
          v220 = v39 - v37;
          v216 = (a4 + v64);
          v217 = v208 + v39 - a7;
          v218 = a11;
          v221 = v199;
          v222 = v41;
          if ((v43 & 1) == 0)
          {
            v85 = *v70;
            if (v85 == 96)
            {
              *&v28 = vdup_lane_s8(*v80, 0);
              v227 = v28;
              v229 = v28;
              v231 = v28;
              v233 = v28;
              v86 = 1;
            }

            else if (v85 == 31)
            {
              v87 = v80[1];
              v88 = v80[2];
              v89 = v80[3];
              v90 = vuzp2_s16(*v80, v88);
              v227 = vuzp1_s16(*v80, v88);
              v229 = v90;
              *&v28 = vuzp1_s16(v87, v89);
              *&v27 = vuzp2_s16(v87, v89);
              v231 = v28;
              v233 = v27;
              v86 = 32;
            }

            else if (*v70)
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 16, v80, v85, *&v28, *&v27);
            }

            else
            {
              v86 = 0;
              v227 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
            }

            v91 = (v80 + v86);
            v92 = v70[1];
            if (v92 == 96)
            {
              *&v28 = vdup_lane_s8(*v91, 0);
              v235 = v28;
              v237 = v28;
              v239 = v28;
              v241 = v28;
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v94 = v91[1];
              v95 = v91[2];
              v96 = v91[3];
              v97 = vuzp2_s16(*v91, v95);
              v235 = vuzp1_s16(*v91, v95);
              v237 = v97;
              *&v28 = vuzp1_s16(v94, v96);
              *&v27 = vuzp2_s16(v94, v96);
              v239 = v28;
              v241 = v27;
              v93 = 32;
            }

            else if (v70[1])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 16, v91, v92, *&v28, *&v27);
            }

            else
            {
              v93 = 0;
              v235 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
            }

            v98 = (v91 + v93);
            v99 = v70[2];
            if (v99 == 96)
            {
              *&v28 = vdup_lane_s8(*v98, 0);
              v228 = v28;
              v230 = v28;
              v232 = v28;
              v234 = v28;
              v100 = 1;
            }

            else if (v99 == 31)
            {
              v101 = v98[1];
              v102 = v98[2];
              v103 = v98[3];
              v104 = vuzp2_s16(*v98, v102);
              v228 = vuzp1_s16(*v98, v102);
              v230 = v104;
              *&v28 = vuzp1_s16(v101, v103);
              *&v27 = vuzp2_s16(v101, v103);
              v232 = v28;
              v234 = v27;
              v100 = 32;
            }

            else if (v70[2])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v98, v99, *&v28, *&v27);
            }

            else
            {
              v100 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v105 = (v98 + v100);
            v106 = v70[3];
            if (v106 == 96)
            {
              *&v28 = vdup_lane_s8(*v105, 0);
              v236 = v28;
              v238 = v28;
              v240 = v28;
              v242 = v28;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v108 = v105[1];
              v109 = v105[2];
              v110 = v105[3];
              v111 = vuzp2_s16(*v105, v109);
              v236 = vuzp1_s16(*v105, v109);
              v238 = v111;
              *&v28 = vuzp1_s16(v108, v110);
              *&v27 = vuzp2_s16(v108, v110);
              v240 = v28;
              v242 = v27;
              v107 = 32;
            }

            else if (v70[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v105, v106, *&v28, *&v27);
            }

            else
            {
              v107 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v112 = (v105 + v107);
            v113 = v70[4];
            if (v113 == 96)
            {
              *&v28 = vdup_lane_s8(*v112, 0);
              v243 = v28;
              v245 = v28;
              v247 = v28;
              v249 = v28;
              v114 = 1;
            }

            else if (v113 == 31)
            {
              v115 = v112[1];
              v116 = v112[2];
              v117 = v112[3];
              v118 = vuzp2_s16(*v112, v116);
              v243 = vuzp1_s16(*v112, v116);
              v245 = v118;
              *&v28 = vuzp1_s16(v115, v117);
              *&v27 = vuzp2_s16(v115, v117);
              v247 = v28;
              v249 = v27;
              v114 = 32;
            }

            else if (v70[4])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 16, v112, v113, *&v28, *&v27);
            }

            else
            {
              v114 = 0;
              v243 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
            }

            v119 = (v112 + v114);
            v120 = v70[5];
            if (v120 == 96)
            {
              *&v28 = vdup_lane_s8(*v119, 0);
              v251 = v28;
              v253 = v28;
              v255 = v28;
              v257 = v28;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v122 = v119[1];
              v123 = v119[2];
              v124 = v119[3];
              v125 = vuzp2_s16(*v119, v123);
              v251 = vuzp1_s16(*v119, v123);
              v253 = v125;
              *&v28 = vuzp1_s16(v122, v124);
              *&v27 = vuzp2_s16(v122, v124);
              v255 = v28;
              v257 = v27;
              v121 = 32;
            }

            else if (v70[5])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 16, v119, v120, *&v28, *&v27);
            }

            else
            {
              v121 = 0;
              v251 = 0;
              v253 = 0;
              v255 = 0;
              v257 = 0;
            }

            v126 = (v119 + v121);
            v127 = v70[6];
            if (v127 == 96)
            {
              *&v28 = vdup_lane_s8(*v126, 0);
              v244 = v28;
              v246 = v28;
              v248 = v28;
              v250 = v28;
              v128 = 1;
            }

            else if (v127 == 31)
            {
              v129 = v126[1];
              v130 = v126[2];
              v131 = v126[3];
              v132 = vuzp2_s16(*v126, v130);
              v244 = vuzp1_s16(*v126, v130);
              v246 = v132;
              *&v28 = vuzp1_s16(v129, v131);
              *&v27 = vuzp2_s16(v129, v131);
              v248 = v28;
              v250 = v27;
              v128 = 32;
            }

            else if (v70[6])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v126, v127, *&v28, *&v27);
            }

            else
            {
              v128 = 0;
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
            }

            v133 = (v126 + v128);
            v134 = v70[7];
            if (v134 == 96)
            {
              v252 = vdup_lane_s8(*v133, 0);
              v254 = v252;
              v256 = v252;
              v258 = v252;
              v135 = v221;
              if (v221)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v134 != 31)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 16, v133, v134, *&v28, *&v27);
                  v135 = v221;
                  if (!v221)
                  {
                    goto LABEL_171;
                  }
                }

                else
                {
                  v252 = 0;
                  v254 = 0;
                  v256 = 0;
                  v258 = 0;
                  v135 = v221;
                  if (!v221)
                  {
                    goto LABEL_171;
                  }
                }

LABEL_146:
                v140 = v222;
                if (!v222)
                {
                  goto LABEL_171;
                }

                v141 = 0;
                v142 = 16 * v219;
                v143 = &v227 + v220 + v142;
                v144 = v217;
                v145 = v218;
                v146 = v222 - 1;
                v148 = v143 < v217 + v218 * (v135 - 1) + v146 + 1 && v217 < &v226 + 16 * v135 + 16 * v219 + v220 + v146 + 1;
                v149 = v222 & 0xFFFFFFE0;
                v150 = v222 & 0xFFFFFFF8;
                v151 = v222 < 8 || v218 < 0 || v148;
                v152 = &v229 + v142 + v220;
                v153 = (v217 + 16);
                v154 = v143;
                v155 = v217;
                while (2)
                {
                  v156 = (v144 + v141 * v145);
                  v157 = &v143[16 * v141];
                  if (v151)
                  {
                    v158 = 0;
LABEL_168:
                    v168 = v140 - v158;
                    do
                    {
                      v169 = *v156++;
                      *v157++ = v169;
                      --v168;
                    }

                    while (v168);
                  }

                  else
                  {
                    if (v140 >= 0x20)
                    {
                      v160 = v153;
                      v161 = v152;
                      v162 = v140 & 0xFFFFFFE0;
                      do
                      {
                        v163 = *v160;
                        *(v161 - 1) = *(v160 - 1);
                        *v161 = v163;
                        v161 += 2;
                        v160 += 2;
                        v162 -= 32;
                      }

                      while (v162);
                      if (v149 == v140)
                      {
                        goto LABEL_154;
                      }

                      v159 = v140 & 0xFFFFFFE0;
                      if ((v140 & 0x18) == 0)
                      {
                        v156 += v149;
                        v157 += v149;
                        v158 = v140 & 0xFFFFFFE0;
                        goto LABEL_168;
                      }
                    }

                    else
                    {
                      v159 = 0;
                    }

                    v157 += v150;
                    v164 = v159 - (v140 & 0xFFFFFFF8);
                    v165 = (v155 + v159);
                    v166 = &v154[v159];
                    do
                    {
                      v167 = *v165++;
                      *v166 = v167;
                      v166 += 8;
                      v164 += 8;
                    }

                    while (v164);
                    if (v150 != v140)
                    {
                      v156 += v150;
                      v158 = v140 & 0xFFFFFFF8;
                      goto LABEL_168;
                    }
                  }

LABEL_154:
                  ++v141;
                  v152 += 16;
                  v153 = (v153 + v145);
                  v155 += v145;
                  v154 += 16;
                  if (v141 == v135)
                  {
                    goto LABEL_171;
                  }

                  continue;
                }
              }

              v136 = v133[1];
              v137 = v133[2];
              v138 = v133[3];
              v139 = vuzp2_s16(*v133, v137);
              v252 = vuzp1_s16(*v133, v137);
              v254 = v139;
              v256 = vuzp1_s16(v136, v138);
              v258 = vuzp2_s16(v136, v138);
              v135 = v221;
              if (v221)
              {
                goto LABEL_146;
              }
            }

LABEL_171:
            v82 = v215;
            v83 = v216;
            v42 = v223;
            v84 = v224;
            v71 = &v227;
            v81 = 16;
LABEL_172:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, v81, v82, v83, v42, v84);
            if (!v213)
            {
              goto LABEL_26;
            }

            goto LABEL_173;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v213)
          {
            goto LABEL_26;
          }

LABEL_173:
          v170 = *v80->i8;
          v171 = *v80[2].i8;
          v172 = *v80[6].i8;
          v72[2] = *v80[4].i8;
          v72[3] = v172;
          *v72 = v170;
          v72[1] = v171;
          v173 = *v80[8].i8;
          v174 = *v80[10].i8;
          v175 = *v80[14].i8;
          v72[6] = *v80[12].i8;
          v72[7] = v175;
          v72[4] = v173;
          v72[5] = v174;
          v176 = *v80[16].i8;
          v177 = *v80[18].i8;
          v178 = *v80[22].i8;
          v72[10] = *v80[20].i8;
          v72[11] = v178;
          v72[8] = v176;
          v72[9] = v177;
          v28 = *v80[24].i8;
          v27 = *v80[26].i8;
          v179 = *v80[30].i8;
          v72[14] = *v80[28].i8;
          v72[15] = v179;
          v72[12] = v28;
          v72[13] = v27;
LABEL_26:
          v21 = v35++ == v25 >> 4;
        }

        while (!v21);
        v21 = v17++ == v196;
      }

      while (!v21);
    }
  }
}