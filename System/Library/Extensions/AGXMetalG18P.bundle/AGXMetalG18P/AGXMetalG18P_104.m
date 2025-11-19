uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v242 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v193 = a8;
  v17 = a8 >> 3;
  v174 = a8 + a10 - 1;
  v176 = v174 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v195 = a1;
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
  v197 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v186 = result;
  if (v17 <= v176)
  {
    v185 = a7 + a9 - 1;
    v173 = a7 >> 3;
    if (a7 >> 3 <= v185 >> 3)
    {
      result = a1;
      v194 = (a5 - 1) >> 3;
      v170 = a5 - 1;
      v177 = (a5 - 1) & 7;
      v171 = (a6 - 1) & 7;
      v172 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v27.i8 = vcgt_u32(v26, 0xF0000000FLL);
      v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), *v27.i8);
      v182 = v28;
      v183 = v28.i32[0] | v28.i32[1];
      v181 = v27.i64[0];
      v169 = 8 * v19 * v18;
      v184 = a7;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v193)
        {
          v30 = v193;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v174 < v29)
        {
          v29 = v174;
        }

        v192 = 8 * v17;
        v180 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v171;
        v179 = v32;
        v34 = v32 != 8;
        v35 = v173;
        v36 = v171 + 1;
        if (v17 != v172)
        {
          v36 = 8;
          v33 = v34;
        }

        v178 = v33;
        v190 = a3 + (v30 - v193) * a11;
        v191 = v36;
        v189 = v36;
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

          if (v185 < v38)
          {
            v38 = v185;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v194)
          {
            v42 = v177 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v192 >= v193 && v37 >= a7)
          {
            v44 = v40 != v177;
            if (v35 != v194)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v178;
          }

          if (v186)
          {
            v65 = 0;
            v66 = v169 >> (*(result + 57) != 0);
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

            v157 = (v65 >> 3) - 1;
            if (v67)
            {
              v158 = 0;
            }

            else
            {
              v158 = 32 - __clz(~(-1 << -__clz(v157)));
            }

            v159 = (v69 >> 3) - 1;
            if (v68)
            {
              v160 = 0;
              if (v158)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v160 = 32 - __clz(~(-1 << -__clz(v159)));
              if (v160 | v158)
              {
LABEL_215:
                v161 = 0;
                v162 = 0;
                v163 = v35 & v157;
                v164 = v17 & v159;
                v165 = v158 != 0;
                v166 = v160 != 0;
                v167 = 1;
                do
                {
                  --v158;
                  if (v165)
                  {
                    v162 |= (v167 & v163) << v161++;
                  }

                  else
                  {
                    v158 = 0;
                  }

                  --v160;
                  if (v166)
                  {
                    v162 |= (v167 & v164) << v161++;
                  }

                  else
                  {
                    v160 = 0;
                  }

                  v167 *= 2;
                  --v161;
                  v166 = v160 != 0;
                  v165 = v158 != 0;
                }

                while (v160 | v158);
                v168 = v162 << 8;
                result = v195;
                goto LABEL_227;
              }
            }

            v168 = 0;
LABEL_227:
            v52 = v168 + ((v37 / v65 + v192 / v69 * ((v65 + v170) / v65)) << 14);
            goto LABEL_52;
          }

          if (v183)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v181;
            v49 = BYTE4(v181);
            v51 = v182.i32[0];
            v50 = v182.i32[1];
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
          v71 = v190 + 8 * (v39 - a7);
          v72 = (a2 + v52);
          __src = (a2 + v52);
          if (v197)
          {
            v72 = __dst;
            if (!(v43 & 1 | (v42 < 8u) | (v189 < 8)))
            {
              goto LABEL_84;
            }

            v73 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v73;
            result = v195;
          }

          else if (!(v43 & 1 | (v42 < 8u) | (v189 < 8)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v71, a11, v72, v70, v42, v191, *(*(result + 208) + 52));
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v199 = v72;
          v207 = v42;
          v208 = v191;
          v203 = v180;
          v204 = v39 - v37;
          v200 = v70;
          v201 = v71;
          v202 = a11;
          v205 = v179;
          v206 = v41;
          if ((v43 & 1) == 0)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v70;
            if (*v70)
            {
              if (v76 < 0xF0)
              {
                if (v76 == 63)
                {
                  v77 = *v72;
                  v27 = v72[1];
                  v79 = v72[2];
                  v80 = v72[3];
                  v210 = *v72;
                  v211 = v79;
                  v214 = v27;
                  v215 = v80;
                  v78 = 64;
                }

                else if (v76 == 1)
                {
                  v77 = vld1q_dup_s16(v72->i16);
                  v210 = v77;
                  v211 = v77;
                  v214 = v77;
                  v215 = v77;
                  v78 = 2;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v210, 64, v72, v76, v28, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v210, 64, v72, v76, *(v74 + 52));
                v78 = 32;
              }
            }

            else
            {
              v78 = 0;
              v77.i64[0] = 0;
              v210 = 0u;
              v211 = 0u;
              v214 = 0u;
              v215 = 0u;
            }

            v81 = v72->i64 + v78;
            v82 = v70[1];
            if (v70[1])
            {
              if (v82 < 0xF0)
              {
                if (v82 == 63)
                {
                  v83 = *v81;
                  v27 = *(v81 + 16);
                  v85 = *(v81 + 32);
                  v86 = *(v81 + 48);
                  v218 = *v81;
                  v219 = v85;
                  v222 = v27;
                  v223 = v86;
                  v84 = 64;
                }

                else if (v82 == 1)
                {
                  v83 = vld1q_dup_s16(v81);
                  v218 = v83;
                  v219 = v83;
                  v222 = v83;
                  v223 = v83;
                  v84 = 2;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v218, 64, v81, v82, *v77.i8, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v218, 64, v81, v82, v75);
                v84 = 32;
              }
            }

            else
            {
              v84 = 0;
              v83.i64[0] = 0;
              v218 = 0u;
              v219 = 0u;
              v222 = 0u;
              v223 = 0u;
            }

            v87 = v81 + v84;
            v88 = v70[2];
            if (v70[2])
            {
              if (v88 < 0xF0)
              {
                if (v88 == 63)
                {
                  v89 = *v87;
                  v27 = *(v87 + 16);
                  v91 = *(v87 + 32);
                  v92 = *(v87 + 48);
                  v212 = *v87;
                  v213 = v91;
                  v216 = v27;
                  v217 = v92;
                  v90 = 64;
                }

                else if (v88 == 1)
                {
                  v89 = vld1q_dup_s16(v87);
                  v212 = v89;
                  v213 = v89;
                  v216 = v89;
                  v217 = v89;
                  v90 = 2;
                }

                else
                {
                  v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v212, 64, v87, v88, *v83.i8, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v212, 64, v87, v88, v75);
                v90 = 32;
              }
            }

            else
            {
              v90 = 0;
              v89.i64[0] = 0;
              v212 = 0u;
              v213 = 0u;
              v216 = 0u;
              v217 = 0u;
            }

            v93 = v87 + v90;
            v94 = v70[3];
            if (v70[3])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 63)
                {
                  v95 = *v93;
                  v27 = *(v93 + 16);
                  v97 = *(v93 + 32);
                  v98 = *(v93 + 48);
                  v220 = *v93;
                  v221 = v97;
                  v224 = v27;
                  v225 = v98;
                  v96 = 64;
                }

                else if (v94 == 1)
                {
                  v95 = vld1q_dup_s16(v93);
                  v220 = v95;
                  v221 = v95;
                  v224 = v95;
                  v225 = v95;
                  v96 = 2;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v220, 64, v93, v94, *v89.i8, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v220, 64, v93, v94, v75);
                v96 = 32;
              }
            }

            else
            {
              v96 = 0;
              v95.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v224 = 0u;
              v225 = 0u;
            }

            v99 = v93 + v96;
            v100 = v70[4];
            if (v70[4])
            {
              if (v100 < 0xF0)
              {
                if (v100 == 63)
                {
                  v101 = *v99;
                  v27 = *(v99 + 16);
                  v103 = *(v99 + 32);
                  v104 = *(v99 + 48);
                  v226 = *v99;
                  v227 = v103;
                  v230 = v27;
                  v231 = v104;
                  v102 = 64;
                }

                else if (v100 == 1)
                {
                  v101 = vld1q_dup_s16(v99);
                  v226 = v101;
                  v227 = v101;
                  v230 = v101;
                  v231 = v101;
                  v102 = 2;
                }

                else
                {
                  v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v226, 64, v99, v100, *v95.i8, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v226, 64, v99, v100, v75);
                v102 = 32;
              }
            }

            else
            {
              v102 = 0;
              v101.i64[0] = 0;
              v226 = 0u;
              v227 = 0u;
              v230 = 0u;
              v231 = 0u;
            }

            v105 = v99 + v102;
            v106 = v70[5];
            if (v70[5])
            {
              if (v106 < 0xF0)
              {
                if (v106 == 63)
                {
                  v107 = *v105;
                  v27 = *(v105 + 16);
                  v109 = *(v105 + 32);
                  v110 = *(v105 + 48);
                  v234 = *v105;
                  v235 = v109;
                  v238 = v27;
                  v239 = v110;
                  v108 = 64;
                }

                else if (v106 == 1)
                {
                  v107 = vld1q_dup_s16(v105);
                  v234 = v107;
                  v235 = v107;
                  v238 = v107;
                  v239 = v107;
                  v108 = 2;
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v234, 64, v105, v106, *v101.i8, *v27.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v234, 64, v105, v106, v75);
                v108 = 32;
              }
            }

            else
            {
              v108 = 0;
              v107.i64[0] = 0;
              v234 = 0u;
              v235 = 0u;
              v238 = 0u;
              v239 = 0u;
            }

            v111 = v105 + v108;
            v112 = v70[6];
            if (v70[6])
            {
              if (v112 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v228, 64, v111, v112, v75);
                v114 = 32;
                v115 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_160;
                }

LABEL_152:
                v118 = v111 + v114;
                if (v115 >= 0xF0)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v236, 64, v118, v115, v75);
                  goto LABEL_161;
                }

                a7 = v184;
                if (v115 != 63)
                {
                  if (v115 == 1)
                  {
                    v119 = vld1q_dup_s16(v118);
                    v236 = v119;
                    v237 = v119;
                    v240 = v119;
                    v241 = v119;
                    v120 = v205;
                    if (!v205)
                    {
LABEL_194:
                      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v210, 64, v199, v200, v207, v208, *(*(v195 + 208) + 52));
                      if (!v197)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_195;
                    }
                  }

                  else
                  {
                    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v236, 64, v118, v115, *v113.i8, *v27.i8);
                    v120 = v205;
                    if (!v205)
                    {
                      goto LABEL_194;
                    }
                  }

LABEL_163:
                  v124 = v206;
                  if (!v206)
                  {
                    goto LABEL_194;
                  }

                  v125 = 0;
                  v126 = v203 << 6;
                  v127 = 8 * v204;
                  v128 = &v210.i8[v126 + v127];
                  v129 = v201;
                  v130 = v202;
                  v131 = 8 * v206;
                  if (8 * v206)
                  {
                    v132 = (8 * v206 - 1) >> 32 == 0;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v133 = !v132;
                  v135 = v128 < v201 + v202 * (v120 - 1) + 8 * v206 && v201 < &__dst[64 * v120 + 448 + 64 * v203 + 8 * v206 + v127];
                  v136 = v131 & 0x1FFFFFFE0;
                  v137 = v133 | (v202 < 0) | v135;
                  v138 = &v211.i8[v126 + v127];
                  v139 = (v201 + 16);
                  v140 = v128;
                  v141 = v201;
                  while (2)
                  {
                    v142 = (v129 + v125 * v130);
                    v143 = &v128[64 * v125];
                    if (v137)
                    {
                      v144 = 0;
LABEL_180:
                      v145 = v144 + 1;
                      do
                      {
                        v146 = *v142++;
                        *v143++ = v146;
                      }

                      while (v131 > v145++);
LABEL_177:
                      ++v125;
                      v138 += 64;
                      v139 = (v139 + v130);
                      v141 += v130;
                      v140 += 64;
                      if (v125 == v120)
                      {
                        goto LABEL_194;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v124 >= 4)
                  {
                    v149 = v139;
                    v150 = v138;
                    v151 = v131 & 0x1FFFFFFE0;
                    do
                    {
                      v152 = *v149;
                      *(v150 - 1) = *(v149 - 1);
                      *v150 = v152;
                      v150 += 32;
                      v149 += 2;
                      v151 -= 32;
                    }

                    while (v151);
                    if (v131 == v136)
                    {
                      goto LABEL_177;
                    }

                    v148 = v131 & 0x1FFFFFFE0;
                    if ((v124 & 3) == 0)
                    {
                      v142 += v136;
                      v143 += v136;
                      v144 = v131 & 0xFFFFFFE0;
                      goto LABEL_180;
                    }
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v153 = -8 * v124 + v148;
                  v154 = (v141 + v148);
                  v155 = &v140[v148];
                  do
                  {
                    v156 = *v154++;
                    *v155 = v156;
                    v155 += 8;
                    v153 += 8;
                  }

                  while (v153);
                  goto LABEL_177;
                }

                v121 = *(v118 + 16);
                v122 = *(v118 + 32);
                v123 = *(v118 + 48);
                v236 = *v118;
                v237 = v122;
                v240 = v121;
                v241 = v123;
LABEL_162:
                v120 = v205;
                if (!v205)
                {
                  goto LABEL_194;
                }

                goto LABEL_163;
              }

              if (v112 == 63)
              {
                v113 = *v111;
                v27 = *(v111 + 16);
                v116 = *(v111 + 32);
                v117 = *(v111 + 48);
                v228 = *v111;
                v229 = v116;
                v232 = v27;
                v233 = v117;
                v114 = 64;
                v115 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_160;
                }

                goto LABEL_152;
              }

              if (v112 != 1)
              {
                v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v228, 64, v111, v112, *v107.i8, *v27.i8);
                v115 = v70[7];
                if (!v70[7])
                {
                  goto LABEL_160;
                }

                goto LABEL_152;
              }

              v113 = vld1q_dup_s16(v111);
              v228 = v113;
              v229 = v113;
              v232 = v113;
              v233 = v113;
              v114 = 2;
              v115 = v70[7];
              if (v70[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v114 = 0;
              v113.i64[0] = 0;
              v228 = 0u;
              v229 = 0u;
              v232 = 0u;
              v233 = 0u;
              v115 = v70[7];
              if (v70[7])
              {
                goto LABEL_152;
              }
            }

LABEL_160:
            v236 = 0u;
            v237 = 0u;
            v240 = 0u;
            v241 = 0u;
LABEL_161:
            a7 = v184;
            goto LABEL_162;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
          a7 = v184;
          if (!v197)
          {
            goto LABEL_26;
          }

LABEL_195:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v35++ == v185 >> 3;
          result = v195;
        }

        while (!v21);
        v21 = v17++ == v176;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v162 = v21;
  v163 = v22;
  v151 = v23;
  v24 = v12;
  v313 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v168 = v14;
  v25 = v14 >> 3;
  v150 = v14 + a10 - 1;
  v152 = v150 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v170 = v24;
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
  v172 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v161 = result;
  if (v25 <= v152)
  {
    v160 = v16 + a9 - 1;
    v149 = v16 >> 3;
    if (v16 >> 3 <= v160 >> 3)
    {
      result = v24;
      v169 = (v20 - 1) >> 3;
      v146 = v20 - 1;
      v153 = (v20 - 1) & 7;
      v147 = (v18 - 1) & 7;
      v148 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v158 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v157 = v35;
      v145 = 8 * v27 * v26;
      v159 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v168)
        {
          v37 = v168;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v150 < v36)
        {
          v36 = v150;
        }

        v167 = 8 * v25;
        v156 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v147;
        v155 = v39;
        v41 = v39 != 8;
        v42 = v149;
        v43 = v147 + 1;
        if (v25 != v148)
        {
          v43 = 8;
          v40 = v41;
        }

        v154 = v40;
        v165 = v151 + (v37 - v168) * a11;
        v166 = v43;
        v164 = v43;
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

          if (v160 < v45)
          {
            v45 = v160;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v169)
          {
            v49 = v153 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v167 >= v168 && v44 >= v16)
          {
            v51 = v47 != v153;
            if (v42 != v169)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v154;
          }

          if (v161)
          {
            v72 = 0;
            v73 = v145 >> (*(result + 57) != 0);
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

            v133 = (v72 >> 3) - 1;
            if (v74)
            {
              v134 = 0;
            }

            else
            {
              v134 = 32 - __clz(~(-1 << -__clz(v133)));
            }

            v135 = (v76 >> 3) - 1;
            if (v75)
            {
              v136 = 0;
              if (v134)
              {
                goto LABEL_187;
              }
            }

            else
            {
              v136 = 32 - __clz(~(-1 << -__clz(v135)));
              if (v136 | v134)
              {
LABEL_187:
                v137 = 0;
                v138 = 0;
                v139 = v42 & v133;
                v140 = v25 & v135;
                v141 = v134 != 0;
                v142 = v136 != 0;
                v143 = 1;
                do
                {
                  --v134;
                  if (v141)
                  {
                    v138 |= (v143 & v139) << v137++;
                  }

                  else
                  {
                    v134 = 0;
                  }

                  --v136;
                  if (v142)
                  {
                    v138 |= (v143 & v140) << v137++;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v143 *= 2;
                  --v137;
                  v142 = v136 != 0;
                  v141 = v134 != 0;
                }

                while (v136 | v134);
                v144 = v138 << 10;
                result = v170;
                goto LABEL_199;
              }
            }

            v144 = 0;
LABEL_199:
            v59 = v144 + ((v44 / v72 + v167 / v76 * ((v72 + v146) / v72)) << 14);
            goto LABEL_52;
          }

          if (v158)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v157.i8[0];
            v56 = v157.i8[4];
            v58 = v158.i32[0];
            v57 = v158.i32[1];
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
          v77 = (v163 + v71);
          v78 = v165 + 32 * (v46 - v16);
          v79 = (v162 + v59);
          __src = (v162 + v59);
          if (v172)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v164 < 8)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v170;
          }

          else if (!(v50 & 1 | (v49 < 8u) | (v164 < 8)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v78, a11, v79, v77, v49, v166, *(*(result + 208) + 52));
LABEL_85:
            v16 = v159;
            v80 = v42 + 1;
            if (!v172)
            {
              goto LABEL_26;
            }

LABEL_167:
            memcpy(__src, v79, 0x800uLL);
            goto LABEL_26;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v174 = v79;
          v182 = v49;
          v183 = v166;
          v178 = v156;
          v179 = v46 - v44;
          v175 = v77;
          v176 = v78;
          v177 = a11;
          v180 = v155;
          v181 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_85;
          }

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
                v185 = v85;
                v186 = v85;
                v187 = v85;
                v188 = v85;
                v189 = v85;
                v190 = v85;
                v191 = v85;
                v192 = v85;
                v201 = v85;
                v202 = v85;
                v203 = v85;
                v204 = v85;
                v205 = v85;
                v206 = v85;
                v84 = 8;
                v207 = v85;
                v208 = v85;
              }

              else
              {
                v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v185, 256, v79, v83);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v185, 256, v79, v83, *(v81 + 52));
              v84 = 128;
            }
          }

          else
          {
            v84 = 0;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
          }

          v86 = &v79[v84];
          v87 = v77[1];
          if (v77[1])
          {
            if (v87 < 0xF0)
            {
              if (v87 == 7)
              {
                v89 = vld1q_dup_f64(v86);
                v217 = v89;
                v218 = v89;
                v219 = v89;
                v220 = v89;
                v221 = v89;
                v222 = v89;
                v223 = v89;
                v224 = v89;
                v233 = v89;
                v234 = v89;
                v235 = v89;
                v236 = v89;
                v237 = v89;
                v238 = v89;
                v88 = 8;
                v239 = v89;
                v240 = v89;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 256, v86, v87);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 256, v86, v87, v82);
              v88 = 128;
            }
          }

          else
          {
            v88 = 0;
            v223 = 0u;
            v224 = 0u;
            v221 = 0u;
            v222 = 0u;
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v233 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
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
                v193 = v93;
                v194 = v93;
                v195 = v93;
                v196 = v93;
                v197 = v93;
                v198 = v93;
                v199 = v93;
                v200 = v93;
                v209 = v93;
                v210 = v93;
                v211 = v93;
                v212 = v93;
                v213 = v93;
                v214 = v93;
                v92 = 8;
                v215 = v93;
                v216 = v93;
              }

              else
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v193, 256, v90, v91);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v193, 256, v90, v91, v82);
              v92 = 128;
            }
          }

          else
          {
            v92 = 0;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v195 = 0u;
            v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            v209 = 0u;
            v210 = 0u;
            v211 = 0u;
            v212 = 0u;
            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
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
                v225 = v97;
                v226 = v97;
                v227 = v97;
                v228 = v97;
                v229 = v97;
                v230 = v97;
                v231 = v97;
                v232 = v97;
                v241 = v97;
                v242 = v97;
                v243 = v97;
                v244 = v97;
                v245 = v97;
                v246 = v97;
                v96 = 8;
                v247 = v97;
                v248 = v97;
              }

              else
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 256, v94, v95);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 256, v94, v95, v82);
              v96 = 128;
            }
          }

          else
          {
            v96 = 0;
            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v227 = 0u;
            v228 = 0u;
            v225 = 0u;
            v226 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v246 = 0u;
            v247 = 0u;
            v248 = 0u;
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
                v249 = v101;
                v250 = v101;
                v251 = v101;
                v252 = v101;
                v253 = v101;
                v254 = v101;
                v255 = v101;
                v256 = v101;
                v265 = v101;
                v266 = v101;
                v267 = v101;
                v268 = v101;
                v269 = v101;
                v270 = v101;
                v271 = v101;
                v100 = 8;
                v272 = v101;
              }

              else
              {
                v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 256, v98, v99);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v249, 256, v98, v99, v82);
              v100 = 128;
            }
          }

          else
          {
            v100 = 0;
            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
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
                v281 = v105;
                v282 = v105;
                v283 = v105;
                v284 = v105;
                v285 = v105;
                v286 = v105;
                v287 = v105;
                v288 = v105;
                v297 = v105;
                v298 = v105;
                v299 = v105;
                v300 = v105;
                v301 = v105;
                v302 = v105;
                v303 = v105;
                v104 = 8;
                v304 = v105;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v281, 256, v102, v103);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v281, 256, v102, v103, v82);
              v104 = 128;
            }
          }

          else
          {
            v104 = 0;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
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
                v257 = v110;
                v258 = v110;
                v259 = v110;
                v260 = v110;
                v261 = v110;
                v262 = v110;
                v263 = v110;
                v264 = v110;
                v273 = v110;
                v274 = v110;
                v275 = v110;
                v276 = v110;
                v277 = v110;
                v278 = v110;
                v279 = v110;
                v108 = 8;
                v280 = v110;
                v109 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v257, 256, v106, v107);
                v109 = v77[7];
                if (!v77[7])
                {
LABEL_142:
                  v295 = 0u;
                  v296 = 0u;
                  v293 = 0u;
                  v294 = 0u;
                  v291 = 0u;
                  v292 = 0u;
                  v289 = 0u;
                  v290 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v312 = 0u;
                  v16 = v159;
                  goto LABEL_144;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v257, 256, v106, v107, v82);
              v108 = 128;
              v109 = v77[7];
              if (!v77[7])
              {
                goto LABEL_142;
              }
            }
          }

          else
          {
            v108 = 0;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v109 = v77[7];
            if (!v77[7])
            {
              goto LABEL_142;
            }
          }

          v111 = (v106 + v108);
          if (v109 < 0xF0)
          {
            v16 = v159;
            if (v109 == 7)
            {
              v112 = vld1q_dup_f64(v111);
              v289 = v112;
              v290 = v112;
              v291 = v112;
              v292 = v112;
              v293 = v112;
              v294 = v112;
              v295 = v112;
              v296 = v112;
              v305 = v112;
              v306 = v112;
              v307 = v112;
              v308 = v112;
              v309 = v112;
              v310 = v112;
              v311 = v112;
              v312 = v112;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v289, 256, v111, v109);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v289, 256, v111, v109, v82);
            v16 = v159;
          }

LABEL_144:
          v80 = v42 + 1;
          v113 = v180;
          if (v180 && v181)
          {
            v114 = 0;
            v115 = v178 << 8;
            v116 = 32 * v179;
            v117 = &v185 + v115 + v116;
            v118 = v176;
            v119 = v177;
            v120 = 32 * v181;
            if (v120)
            {
              v121 = (v120 - 1) >> 32 == 0;
            }

            else
            {
              v121 = 0;
            }

            v122 = !v121;
            v124 = v117 < v176 + v177 * (v180 - 1) + v120 && v176 < &__dst[256 * v180 + 1792 + 256 * v178 + v120 + v116];
            v125 = v122 | (v177 < 0) | v124;
            v126 = &v186 + v115 + v116;
            v127 = (v176 + 16);
            do
            {
              v128 = v127;
              v129 = v126;
              v130 = v120;
              if (v125)
              {
                v131 = 0;
                do
                {
                  v117[v131] = *(v118 + v131);
                  ++v131;
                }

                while (v120 > v131);
              }

              else
              {
                do
                {
                  v132 = *v128;
                  *(v129 - 1) = *(v128 - 1);
                  *v129 = v132;
                  v129 += 2;
                  v128 += 2;
                  v130 -= 32;
                }

                while (v130);
              }

              ++v114;
              v126 += 256;
              v127 = (v127 + v119);
              v117 += 256;
              v118 += v119;
            }

            while (v114 != v113);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v185, 256, v174, v175, v182, v183, *(*(v170 + 208) + 52));
          if (v172)
          {
            goto LABEL_167;
          }

LABEL_26:
          v29 = v42 == v160 >> 3;
          v42 = v80;
          result = v170;
        }

        while (!v29);
        v29 = v25++ == v152;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v158 = v21;
  v159 = v22;
  v144 = v23;
  v24 = v12;
  v182[96] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v14 >> 2;
  v143 = v14 + a10 - 1;
  v145 = v143 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v165 = v24;
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
  v164 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v145)
  {
    v156 = v16 + a9 - 1;
    v142 = v16 >> 3;
    if (v16 >> 3 <= v156 >> 3)
    {
      v163 = (v20 - 1) >> 3;
      v141 = (v18 - 1) >> 2;
      v138 = v20 - 1;
      v148 = (v20 - 1) & 7;
      v139 = ((v18 - 1) & 3) + 1;
      v140 = (v18 - 1) & 3;
      v147 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v154 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v153 = v34;
      v137 = 8 * v27 * v26;
      v146 = v14;
      v155 = v16;
      do
      {
        v35 = (4 * v25) | 3;
        if (4 * v25 <= v14)
        {
          v36 = v14;
        }

        else
        {
          v36 = 4 * v25;
        }

        if (v143 < v35)
        {
          v35 = v143;
        }

        v162 = 4 * v25;
        v152 = v36 - 4 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v140;
        v151 = v38;
        v40 = v38 != 4;
        v41 = v142;
        v42 = v139;
        if (v25 != v141)
        {
          v42 = 4;
          v39 = v40;
        }

        v149 = v39;
        v150 = v42;
        v161 = v144 + (v36 - v14) * a11;
        v160 = v42;
        do
        {
          v43 = 8 * v41;
          v44 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v16)
          {
            v45 = v16;
          }

          else
          {
            v45 = 8 * v41;
          }

          if (v156 < v44)
          {
            v44 = v156;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v163)
          {
            v48 = v148 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v162 >= v14 && v43 >= v16)
          {
            v50 = v46 != v148;
            if (v41 != v163)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v149;
          }

          if (isLevelTiled)
          {
            v71 = 0;
            v72 = v137 >> (*(v24 + 57) != 0);
            v73 = 1;
            if (v72 <= 63)
            {
              if (v72 > 15)
              {
                if (v72 == 16)
                {
                  v73 = 0;
                  v74 = 64;
                  v71 = 128;
                }

                else
                {
                  v74 = 0;
                  if (v72 == 32)
                  {
                    v73 = 0;
                    v71 = 64;
                    v74 = 64;
                  }
                }
              }

              else if (v72 == 4)
              {
                v73 = 0;
                v74 = 128;
                v71 = 256;
              }

              else
              {
                v74 = 0;
                if (v72 == 8)
                {
                  v73 = 0;
                  v71 = 128;
                  v74 = 128;
                }
              }
            }

            else if (v72 <= 255)
            {
              if (v72 == 64)
              {
                v73 = 0;
                v74 = 32;
                v71 = 64;
              }

              else
              {
                v74 = 0;
                if (v72 == 128)
                {
                  v73 = 0;
                  v71 = 32;
                  v74 = 32;
                }
              }
            }

            else if (v72 == 256)
            {
              v73 = 0;
              v74 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v73 = 0;
              v71 = 16;
              v74 = 16;
            }

            else
            {
              v74 = 0;
              if (v72 == 1024)
              {
                v73 = 0;
                v74 = 8;
                v71 = 16;
              }
            }

            v125 = (v71 >> 3) - 1;
            v126 = (v74 >> 2) - 1;
            if ((v73 & 1) != 0 || (v127 = 32 - __clz(~(-1 << -__clz(v125))), v128 = 32 - __clz(~(-1 << -__clz(v126))), !(v128 | v127)))
            {
              v136 = 0;
            }

            else
            {
              v129 = 0;
              v130 = 0;
              v131 = v41 & v125;
              v132 = v25 & v126;
              v133 = v128 != 0;
              v134 = v127 != 0;
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

                --v127;
                if (v134)
                {
                  v130 |= (v135 & v131) << v129++;
                }

                else
                {
                  v127 = 0;
                }

                v135 *= 2;
                --v129;
                v134 = v127 != 0;
                v133 = v128 != 0;
              }

              while (v127 | v128);
              v136 = v130 << 10;
              v24 = v165;
            }

            v58 = v136 + ((v43 / v71 + v162 / v74 * ((v71 + v138) / v71)) << 14);
          }

          else if (v154)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v153.i8[0];
            v54 = v153.i8[4];
            v56 = v154.i32[0];
            v57 = v154.i32[1];
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

          v59 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v62 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 3;
          if (v63 < 8)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 2) - 1)));
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
          v75 = (v159 + v70);
          v76 = v161 + ((v45 - v16) << 6);
          __src = (v158 + v58);
          if (v164)
          {
            if (!(v49 & 1 | (v48 < 8u) | (v160 < 4)))
            {
              v81 = __dst;
LABEL_85:
              v83 = *(*(v24 + 208) + 52);
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v81, v75, v161 + ((v45 - v16) << 6), a11, 4u, 2u, v83);
              v82 = v81;
              v85 = &v81[v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(&v81[v84], v75 + 1, v76 + v147, a11, 4u, 2u, v83)];
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v85, v75 + 2, v76 + 256, a11, 4u, 2u, v83);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v85 + v86, v75 + 3, v76 + v147 + 256, a11, 4u, 2u, v83);
              goto LABEL_148;
            }

            v77 = v14;
            v78 = v47;
            v79 = v48;
            v80 = v45;
            memcpy(__dst, __src, sizeof(__dst));
            v45 = v80;
            v81 = __dst;
            v48 = v79;
            v47 = v78;
            v14 = v77;
            v43 = 8 * v41;
            v24 = v165;
          }

          else
          {
            v81 = (v158 + v58);
            if (!(v49 & 1 | (v48 < 8u) | (v160 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v24;
          v168 = v81;
          v176 = v48;
          v177 = v150;
          v172 = v152;
          v173 = v45 - v43;
          v169 = v75;
          v170 = v76;
          v171 = a11;
          v174 = v151;
          v175 = v47;
          if (v49)
          {
            v82 = v81;
            dispatch_sync(*(*(v24 + 8) + 16552), block);
            goto LABEL_148;
          }

          v87 = *(*(v24 + 208) + 52);
          v88 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v179, 512, v81, *v75, v87)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v181, 512, v88, v75[1], v87);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v180, 512, v89, v75[2], v87);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v182, 512, v89 + v90, v75[3], v87);
          v91 = v174;
          if (v174 && v175)
          {
            v92 = 0;
            v93 = v173 << 6;
            v94 = &v179[512 * v172 + v93];
            v95 = v170;
            v96 = v171;
            v97 = v175 << 6;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v170 + v171 * (v174 - 1) + v97 && v170 < &__dst[512 * v174 + 1536 + 512 * v172 + v97 + v93];
            v102 = v99 | (v171 < 0) | v101;
            v103 = &v179[512 * v172 + 16 + v93];
            v104 = (v170 + 16);
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

              ++v92;
              v103 += 512;
              v104 = (v104 + v96);
              v94 += 512;
              v95 += v96;
            }

            while (v92 != v91);
          }

          v111 = v168;
          v110 = v169;
          v112 = v176;
          v113 = v177;
          v114 = *(*(v165 + 208) + 52);
          if (v176 && v177)
          {
            v82 = v81;
            if (v177 >= 2u)
            {
              v115 = 2;
            }

            else
            {
              v115 = v177;
            }

            if (v176 >= 4u)
            {
              v116 = 4;
            }

            else
            {
              v116 = v176;
            }

            v111 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v168, v169, v179, 512, v116, v115, v114);
            v117 = v113 - 2;
            if (!v112)
            {
LABEL_127:
              v110[1] = 0;
              goto LABEL_128;
            }
          }

          else
          {
            v82 = v81;
            *v169 = 0;
            v117 = v113 - 2;
            if (!v112)
            {
              goto LABEL_127;
            }
          }

          if (v113 < 3)
          {
            goto LABEL_127;
          }

          if (v117 >= 2)
          {
            v118 = 2;
          }

          else
          {
            v118 = v117;
          }

          if (v112 >= 4)
          {
            v119 = 4;
          }

          else
          {
            v119 = v112;
          }

          v111 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v111, v110 + 1, v181, 512, v119, v118, v114);
LABEL_128:
          v120 = v112 - 4;
          if (v112 >= 5 && v113)
          {
            if (v113 >= 2)
            {
              v121 = 2;
            }

            else
            {
              v121 = v113;
            }

            if (v120 >= 4)
            {
              v122 = 4;
            }

            else
            {
              v122 = v112 - 4;
            }

            v111 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v111, v110 + 2, v180, 512, v122, v121, v114);
          }

          else
          {
            v110[2] = 0;
            if (v112 < 5)
            {
              goto LABEL_146;
            }
          }

          if (v113 >= 3)
          {
            if (v117 >= 2)
            {
              v123 = 2;
            }

            else
            {
              v123 = v117;
            }

            if (v120 >= 4)
            {
              v124 = 4;
            }

            else
            {
              v124 = v112 - 4;
            }

            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v111, v110 + 3, v182, 512, v124, v123, v114);
            goto LABEL_147;
          }

LABEL_146:
          v110[3] = 0;
LABEL_147:
          v14 = v146;
LABEL_148:
          v24 = v165;
          if (v164)
          {
            memcpy(__src, v82, 0x800uLL);
            v24 = v165;
          }

          v16 = v155;
          v29 = v41++ == v156 >> 3;
        }

        while (!v29);
        v29 = v25++ == v145;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v219 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v187 = a8;
  v17 = a8 >> 2;
  v169 = a8 + a10 - 1;
  v171 = v169 >> 2;
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
  v189 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v171)
  {
    v179 = a7 + a9 - 1;
    if (a7 >> 3 <= v179 >> 3)
    {
      v188 = (a5 - 1) >> 3;
      v166 = a5 - 1;
      v172 = (a5 - 1) & 7;
      v167 = (a6 - 1) & 3;
      v168 = (a6 - 1) >> 2;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      v27.i64[0] = -1;
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v177 = v28.i64[0];
      v178 = v28.i32[0] | v28.i32[1];
      v176 = v26.i64[0];
      v165 = 8 * v19 * v18;
      do
      {
        v29 = (4 * v17) | 3;
        if (4 * v17 <= v187)
        {
          v30 = v187;
        }

        else
        {
          v30 = 4 * v17;
        }

        if (v169 < v29)
        {
          v29 = v169;
        }

        v186 = 4 * v17;
        v175 = v30 - 4 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v167;
        v174 = v32;
        v34 = v32 != 4;
        v35 = a7 >> 3;
        v36 = v167 + 1;
        if (v17 != v168)
        {
          v36 = 4;
          v33 = v34;
        }

        v173 = v33;
        v184 = a3 + (v30 - v187) * a11;
        v185 = v36;
        v183 = v36;
        do
        {
          v47 = 8 * v35;
          v48 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 8 * v35;
          }

          if (v179 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v48 - v49 + 1;
          if (v35 == v188)
          {
            v52 = v172 + 1;
          }

          else
          {
            v52 = 8;
          }

          v53 = 1;
          if (v186 >= v187 && v47 >= a7)
          {
            v54 = v50 != v172;
            if (v35 != v188)
            {
              v54 = v51 != 8;
            }

            v53 = v54 || v173;
          }

          if (isLevelTiled)
          {
            v75 = 0;
            v76 = v165 >> (*(a1 + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v75 = 64;
                    v78 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v75 = 128;
                  v78 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v75 = 32;
                  v78 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v77 = 0;
              v75 = 16;
              v78 = 16;
            }

            else
            {
              v78 = 0;
              if (v76 == 1024)
              {
                v77 = 0;
                v78 = 8;
                v75 = 16;
              }
            }

            v153 = (v75 >> 3) - 1;
            v154 = (v78 >> 2) - 1;
            if ((v77 & 1) != 0 || (v155 = 32 - __clz(~(-1 << -__clz(v153))), v156 = 32 - __clz(~(-1 << -__clz(v154))), !(v156 | v155)))
            {
              v164 = 0;
            }

            else
            {
              v157 = 0;
              v158 = 0;
              v159 = v35 & v153;
              v160 = v17 & v154;
              v161 = v156 != 0;
              v162 = v155 != 0;
              v163 = 1;
              do
              {
                --v156;
                if (v161)
                {
                  v158 |= (v163 & v160) << v157++;
                }

                else
                {
                  v156 = 0;
                }

                --v155;
                if (v162)
                {
                  v158 |= (v163 & v159) << v157++;
                }

                else
                {
                  v155 = 0;
                }

                v163 *= 2;
                --v157;
                v162 = v155 != 0;
                v161 = v156 != 0;
              }

              while (v155 | v156);
              v164 = v158 << 7;
            }

            v62 = v164 + ((v47 / v75 + v186 / v78 * ((v75 + v166) / v75)) << 14);
          }

          else if (v178)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v58 = v176;
            v59 = BYTE4(v176);
            v60 = v177;
            v61 = HIDWORD(v177);
            do
            {
              --v60;
              if (v58)
              {
                v56 |= (v57 & v17) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v59)
              {
                v56 |= (v57 & v35) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v59 = v61 != 0;
              v58 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 7;
          }

          else
          {
            v62 = 0;
          }

          v63 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 7;
          if (v64 < 0x10)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
          }

          v66 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 3;
          if (v67 < 8)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_78:
              v74 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 2) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_78;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v35) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v17) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_79:
          v79 = (a4 + v74);
          v80 = (a2 + v62);
          if (v189)
          {
            if (!(v53 & 1 | (v52 < 8u) | (v183 < 4)))
            {
              v88 = v201;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v184 + 8 * (v49 - a7), a11, v88, v79, v52, v185, *(*(a1 + 208) + 52), *v28.i8, *v26.i64, *v27.i8);
LABEL_87:
              if (v189)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v81 = v80[13];
            v202[0] = v80[12];
            v202[1] = v81;
            v82 = v80[15];
            v202[2] = v80[14];
            v202[3] = v82;
            v83 = v80[9];
            v201[8] = v80[8];
            v201[9] = v83;
            v84 = v80[11];
            v201[10] = v80[10];
            v201[11] = v84;
            v85 = v80[5];
            v201[4] = v80[4];
            v201[5] = v85;
            v86 = v80[7];
            v201[6] = v80[6];
            v201[7] = v86;
            v87 = v80[1];
            v201[0] = *v80;
            v201[1] = v87;
            v28 = v80[2];
            v26 = v80[3];
            v88 = v201;
            v201[2] = v28;
            v201[3] = v26;
          }

          else
          {
            v88 = (a2 + v62);
            if (!(v53 & 1 | (v52 < 8u) | (v183 < 4)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v191 = v88;
          v199 = v52;
          v200 = v185;
          v195 = v175;
          v196 = v49 - v47;
          v192 = (a4 + v74);
          v193 = (v184 + 8 * (v49 - a7));
          v194 = a11;
          v197 = v174;
          v198 = v51;
          if (v53)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
            goto LABEL_87;
          }

          v89 = *(a1 + 208);
          v90 = *(v89 + 52);
          v91 = *v79;
          if (*v79)
          {
            if (v91 < 0xF0)
            {
              if (v91 == 31)
              {
                v28.i64[0] = v88->i64[0];
                v26.i64[0] = v88->i64[1];
                v27.i64[0] = v88[1].i64[0];
                v93 = v88[1].i64[1];
                v203.i64[0] = v88->i64[0];
                v203.i64[1] = v26.i64[0];
                v207.i64[0] = v27.i64[0];
                v207.i64[1] = v93;
                v92 = 32;
              }

              else if (v91 == 96)
              {
                v28 = vld1q_dup_s8(v88->i8);
                v203 = v28;
                v207 = v28;
                v92 = 1;
              }

              else
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v203, 64, v88, v91, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v203, 64, v88, v91, *(v89 + 52)).n128_u64[0];
              v92 = 16;
            }
          }

          else
          {
            v92 = 0;
            v203 = 0uLL;
            v207 = 0uLL;
          }

          v94 = v88->u64 + v92;
          v95 = v79[1];
          if (v79[1])
          {
            if (v95 < 0xF0)
            {
              if (v95 == 31)
              {
                v28.i64[0] = *v94;
                v26.i64[0] = *(v94 + 8);
                v27.i64[0] = *(v94 + 16);
                v97 = *(v94 + 24);
                v204.i64[0] = *v94;
                v204.i64[1] = v26.i64[0];
                v208.i64[0] = v27.i64[0];
                v208.i64[1] = v97;
                v96 = 32;
              }

              else if (v95 == 96)
              {
                v28 = vld1q_dup_s8(v94);
                v204 = v28;
                v208 = v28;
                v96 = 1;
              }

              else
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v204, 64, v94, v95, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v204, 64, v94, v95, v90).n128_u64[0];
              v96 = 16;
            }
          }

          else
          {
            v96 = 0;
            v204 = 0uLL;
            v208 = 0uLL;
          }

          v98 = v94 + v96;
          v99 = v79[2];
          if (v79[2])
          {
            if (v99 < 0xF0)
            {
              if (v99 == 31)
              {
                v28.i64[0] = *v98;
                v26.i64[0] = *(v98 + 8);
                v27.i64[0] = *(v98 + 16);
                v101 = *(v98 + 24);
                v211.i64[0] = *v98;
                v211.i64[1] = v26.i64[0];
                v215.i64[0] = v27.i64[0];
                v215.i64[1] = v101;
                v100 = 32;
              }

              else if (v99 == 96)
              {
                v28 = vld1q_dup_s8(v98);
                v211 = v28;
                v215 = v28;
                v100 = 1;
              }

              else
              {
                v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v211, 64, v98, v99, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v211, 64, v98, v99, v90).n128_u64[0];
              v100 = 16;
            }
          }

          else
          {
            v100 = 0;
            v211 = 0uLL;
            v215 = 0uLL;
          }

          v102 = v98 + v100;
          v103 = v79[3];
          if (v79[3])
          {
            if (v103 < 0xF0)
            {
              if (v103 == 31)
              {
                v28.i64[0] = *v102;
                v26.i64[0] = *(v102 + 8);
                v27.i64[0] = *(v102 + 16);
                v105 = *(v102 + 24);
                v212.i64[0] = *v102;
                v212.i64[1] = v26.i64[0];
                v216.i64[0] = v27.i64[0];
                v216.i64[1] = v105;
                v104 = 32;
              }

              else if (v103 == 96)
              {
                v28 = vld1q_dup_s8(v102);
                v212 = v28;
                v216 = v28;
                v104 = 1;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v212, 64, v102, v103, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v212, 64, v102, v103, v90).n128_u64[0];
              v104 = 16;
            }
          }

          else
          {
            v104 = 0;
            v212 = 0uLL;
            v216 = 0uLL;
          }

          v106 = v102 + v104;
          v107 = v79[4];
          if (v79[4])
          {
            if (v107 < 0xF0)
            {
              if (v107 == 31)
              {
                v28.i64[0] = *v106;
                v26.i64[0] = *(v106 + 8);
                v27.i64[0] = *(v106 + 16);
                v109 = *(v106 + 24);
                v205.i64[0] = *v106;
                v205.i64[1] = v26.i64[0];
                v209.i64[0] = v27.i64[0];
                v209.i64[1] = v109;
                v108 = 32;
              }

              else if (v107 == 96)
              {
                v28 = vld1q_dup_s8(v106);
                v205 = v28;
                v209 = v28;
                v108 = 1;
              }

              else
              {
                v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v205, 64, v106, v107, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v205, 64, v106, v107, v90).n128_u64[0];
              v108 = 16;
            }
          }

          else
          {
            v108 = 0;
            v205 = 0uLL;
            v209 = 0uLL;
          }

          v110 = v106 + v108;
          v111 = v79[5];
          if (v79[5])
          {
            if (v111 < 0xF0)
            {
              if (v111 == 31)
              {
                v28.i64[0] = *v110;
                v26.i64[0] = *(v110 + 8);
                v27.i64[0] = *(v110 + 16);
                v113 = *(v110 + 24);
                v206.i64[0] = *v110;
                v206.i64[1] = v26.i64[0];
                v210.i64[0] = v27.i64[0];
                v210.i64[1] = v113;
                v112 = 32;
              }

              else if (v111 == 96)
              {
                v28 = vld1q_dup_s8(v110);
                v206 = v28;
                v210 = v28;
                v112 = 1;
              }

              else
              {
                v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v206, 64, v110, v111, *v28.i64, *v26.i8);
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v206, 64, v110, v111, v90).n128_u64[0];
              v112 = 16;
            }
          }

          else
          {
            v112 = 0;
            v206 = 0uLL;
            v210 = 0uLL;
          }

          v114 = v110 + v112;
          v115 = v79[6];
          if (v79[6])
          {
            if (v115 < 0xF0)
            {
              if (v115 == 31)
              {
                v28.i64[0] = *v114;
                v26.i64[0] = *(v114 + 8);
                v27.i64[0] = *(v114 + 16);
                v120 = *(v114 + 24);
                v213.i64[0] = *v114;
                v213.i64[1] = v26.i64[0];
                v217.i64[0] = v27.i64[0];
                v217.i64[1] = v120;
                v116 = 32;
                v117 = v79[7];
                if (!v79[7])
                {
                  goto LABEL_146;
                }
              }

              else if (v115 == 96)
              {
                v28 = vld1q_dup_s8(v114);
                v213 = v28;
                v217 = v28;
                v116 = 1;
                v117 = v79[7];
                if (!v79[7])
                {
                  goto LABEL_146;
                }
              }

              else
              {
                v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 64, v114, v115, *v28.i64, *v26.i8);
                v117 = v79[7];
                if (!v79[7])
                {
LABEL_146:
                  v214 = 0uLL;
                  v218 = 0uLL;
                  v118 = v197;
                  if (v197)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_197;
                }
              }
            }

            else
            {
              v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v213, 64, v114, v115, v90).n128_u64[0];
              v116 = 16;
              v117 = v79[7];
              if (!v79[7])
              {
                goto LABEL_146;
              }
            }
          }

          else
          {
            v116 = 0;
            v213 = 0uLL;
            v217 = 0uLL;
            v117 = v79[7];
            if (!v79[7])
            {
              goto LABEL_146;
            }
          }

          v119 = v114 + v116;
          if (v117 < 0xF0)
          {
            if (v117 == 31)
            {
              v28.i64[0] = *v119;
              v26.i64[0] = *(v119 + 8);
              v27.i64[0] = *(v119 + 16);
              v121 = *(v119 + 24);
              v214.i64[0] = *v119;
              v214.i64[1] = v26.i64[0];
              v218.i64[0] = v27.i64[0];
              v218.i64[1] = v121;
              v118 = v197;
              if (v197)
              {
                goto LABEL_167;
              }
            }

            else
            {
              if (v117 != 96)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v214, 64, v119, v117, *v28.i64, *v26.i8);
                v118 = v197;
                if (!v197)
                {
                  goto LABEL_197;
                }

LABEL_167:
                v122 = v198;
                if (!v198)
                {
                  goto LABEL_197;
                }

                v123 = 0;
                v124 = 8 * v196;
                v125 = &v203.i8[64 * v195 + v124];
                v126 = v193;
                v127 = v194;
                v128 = 8 * v198;
                if (8 * v198)
                {
                  v129 = (8 * v198 - 1) >> 32 == 0;
                }

                else
                {
                  v129 = 0;
                }

                v130 = !v129;
                v132 = v125 < &v193->i8[8 * v198 + v194 * (v118 - 1)] && v193 < (&v202[4 * v118 + 4 * v195] + 8 * v198 + v124);
                v133 = v128 & 0x1FFFFFFE0;
                v134 = v130 | (v194 < 0) | v132;
                v135 = &v204.i8[64 * v195 + v124];
                v136 = v193 + 1;
                v137 = v125;
                v138 = v193;
                while (2)
                {
                  v139 = &v126->i8[v123 * v127];
                  v140 = &v125[64 * v123];
                  if (v134)
                  {
                    v141 = 0;
LABEL_184:
                    v142 = v141 + 1;
                    do
                    {
                      v143 = *v139++;
                      *v140++ = v143;
                    }

                    while (v128 > v142++);
LABEL_181:
                    ++v123;
                    v135 += 64;
                    v136 = (v136 + v127);
                    v138 = (v138 + v127);
                    v137 += 64;
                    if (v123 == v118)
                    {
                      goto LABEL_197;
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
                    v26 = *v146;
                    v147[-1] = v28;
                    *v147 = v26;
                    v147 += 2;
                    v146 += 2;
                    v148 -= 32;
                  }

                  while (v148);
                  if (v128 == v133)
                  {
                    goto LABEL_181;
                  }

                  v145 = v128 & 0x1FFFFFFE0;
                  if ((v122 & 3) == 0)
                  {
                    v139 += v133;
                    v140 += v133;
                    v141 = v128 & 0xFFFFFFE0;
                    goto LABEL_184;
                  }
                }

                else
                {
                  v145 = 0;
                }

                v149 = -8 * v122 + v145;
                v150 = (v138->i64 + v145);
                v151 = &v137[v145];
                do
                {
                  v152 = *v150++;
                  v28.i64[0] = v152;
                  *v151++ = v152;
                  v149 += 8;
                }

                while (v149);
                goto LABEL_181;
              }

              v28 = vld1q_dup_s8(v119);
              v214 = v28;
              v218 = v28;
              v118 = v197;
              if (v197)
              {
                goto LABEL_167;
              }
            }
          }

          else
          {
            v28.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v214, 64, v119, v117, v90).n128_u64[0];
            v118 = v197;
            if (v197)
            {
              goto LABEL_167;
            }
          }

LABEL_197:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v203, 64, v191, v192, v199, v200, *(*(a1 + 208) + 52), *v28.i8, *v26.i64, *v27.i8);
          if (v189)
          {
LABEL_26:
            v37 = *v88;
            v38 = v88[1];
            v39 = v88[3];
            v80[2] = v88[2];
            v80[3] = v39;
            *v80 = v37;
            v80[1] = v38;
            v40 = v88[4];
            v41 = v88[5];
            v42 = v88[7];
            v80[6] = v88[6];
            v80[7] = v42;
            v80[4] = v40;
            v80[5] = v41;
            v43 = v88[8];
            v44 = v88[9];
            v45 = v88[11];
            v80[10] = v88[10];
            v80[11] = v45;
            v80[8] = v43;
            v80[9] = v44;
            v28 = v88[12];
            v26 = v88[13];
            v27 = v88[14];
            v46 = v88[15];
            v80[14] = v27;
            v80[15] = v46;
            v80[12] = v28;
            v80[13] = v26;
          }

LABEL_27:
          v21 = v35++ == v179 >> 3;
        }

        while (!v21);
        v21 = v17++ == v171;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v162[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v139 = a8;
  v17 = a8 >> 2;
  v121 = a8 + a10 - 1;
  v123 = v121 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v141 = a1;
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
  v142 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v132 = result;
  if (v17 <= v123)
  {
    v131 = a7 + a9 - 1;
    v120 = a7 >> 3;
    if (a7 >> 3 <= v131 >> 3)
    {
      result = a1;
      v140 = (a5 - 1) >> 3;
      v117 = a5 - 1;
      v124 = (a5 - 1) & 7;
      v118 = (a6 - 1) & 3;
      v119 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v129 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v128 = v27;
      v116 = 8 * v19 * v18;
      v130 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v139)
        {
          v29 = v139;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v121 < v28)
        {
          v28 = v121;
        }

        v138 = 4 * v17;
        v127 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v118;
        v126 = v31;
        v33 = v31 != 4;
        v34 = v120;
        v35 = v118 + 1;
        if (v17 != v119)
        {
          v35 = 4;
          v32 = v33;
        }

        v125 = v32;
        v136 = a3 + (v29 - v139) * a11;
        v137 = v35;
        v135 = v35;
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

          if (v131 < v37)
          {
            v37 = v131;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v140)
          {
            v41 = v124 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v138 >= v139 && v36 >= a7)
          {
            v43 = v39 != v124;
            if (v34 != v140)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v125;
          }

          if (v132)
          {
            v64 = 0;
            v65 = v116 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v64 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v64 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v64 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v64 = 16;
              v67 = 16;
            }

            else
            {
              v67 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v67 = 8;
                v64 = 16;
              }
            }

            v104 = (v64 >> 3) - 1;
            v105 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v106 = 32 - __clz(~(-1 << -__clz(v104))), v107 = 32 - __clz(~(-1 << -__clz(v105))), !(v107 | v106)))
            {
              v115 = 0;
            }

            else
            {
              v108 = 0;
              v109 = 0;
              v110 = v34 & v104;
              v111 = v17 & v105;
              v112 = v107 != 0;
              v113 = v106 != 0;
              v114 = 1;
              do
              {
                --v107;
                if (v112)
                {
                  v109 |= (v114 & v111) << v108++;
                }

                else
                {
                  v107 = 0;
                }

                --v106;
                if (v113)
                {
                  v109 |= (v114 & v110) << v108++;
                }

                else
                {
                  v106 = 0;
                }

                v114 *= 2;
                --v108;
                v113 = v106 != 0;
                v112 = v107 != 0;
              }

              while (v106 | v107);
              v115 = v109 << 9;
              result = v141;
            }

            v51 = v115 + ((v36 / v64 + v138 / v67 * ((v64 + v117) / v64)) << 14);
          }

          else if (v129)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v128.i8[0];
            v47 = v128.i8[4];
            v49 = v129.i32[0];
            v50 = v129.i32[1];
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

          v56 = v55 + 3;
          if (v56 < 8)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
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
          v68 = (a4 + v63);
          v69 = v136 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          if (v142)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v135 < 4)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v69, a11, v75, v68, v41, v137, *(*(result + 208) + 52));
              goto LABEL_86;
            }

            v71 = v41;
            v72 = v40;
            v73 = (a2 + v51);
            v74 = v42;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 8 * v34;
            v75 = __dst;
            v42 = v74;
            v70 = v73;
            v40 = v72;
            LOBYTE(v41) = v71;
            result = v141;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v135 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v144 = v75;
          v152 = v41;
          v153 = v137;
          v148 = v127;
          v149 = v38 - v36;
          v145 = v68;
          v146 = v69;
          v147 = a11;
          v150 = v126;
          v151 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            a7 = v130;
            if (!v142)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v70, v75, 0x400uLL);
            goto LABEL_26;
          }

          v76 = *(*(result + 208) + 52);
          v77 = &v75[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v155, 256, v75, *v68, v76)];
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v156, 256, v77, v68[1], v76);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v159, 256, v78, v68[2], v76);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v160, 256, v79, v68[3], v76);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v157, 256, v80, v68[4], v76);
          v82 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v158, 256, v81, v68[5], v76);
          v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v161, 256, v82, v68[6], v76);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v162, 256, v82 + v83, v68[7], v76);
          v84 = v150;
          a7 = v130;
          if (v150 && v151)
          {
            v85 = 0;
            v86 = v148 << 8;
            v87 = 32 * v149;
            v88 = &v155[v86 + v87];
            v89 = v146;
            v90 = v147;
            v91 = 32 * v151;
            if (v91)
            {
              v92 = (v91 - 1) >> 32 == 0;
            }

            else
            {
              v92 = 0;
            }

            v93 = !v92;
            v95 = v88 < v146 + v147 * (v150 - 1) + v91 && v146 < &__dst[256 * v150 + 768 + 256 * v148 + v91 + v87];
            v96 = v93 | (v147 < 0) | v95;
            v97 = &v155[v86 + 16 + v87];
            v98 = (v146 + 16);
            do
            {
              v99 = v98;
              v100 = v97;
              v101 = v91;
              if (v96)
              {
                v102 = 0;
                do
                {
                  v88[v102] = *(v89 + v102);
                  ++v102;
                }

                while (v91 > v102);
              }

              else
              {
                do
                {
                  v103 = *v99;
                  *(v100 - 1) = *(v99 - 1);
                  *v100 = v103;
                  v100 += 2;
                  v99 += 2;
                  v101 -= 32;
                }

                while (v101);
              }

              ++v85;
              v97 += 256;
              v98 = (v98 + v90);
              v88 += 256;
              v89 += v90;
            }

            while (v85 != v84);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v155, 256, v144, v145, v152, v153, *(*(v141 + 208) + 52));
          if (v142)
          {
            goto LABEL_111;
          }

LABEL_26:
          v21 = v34++ == v131 >> 3;
          result = v141;
        }

        while (!v21);
        v21 = v17++ == v123;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v295 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v214 = a8;
  v17 = a8 >> 2;
  v196 = a8 + a10 - 1;
  v198 = v196 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v216 = a1;
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
  v218 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v207 = result;
  if (v17 <= v198)
  {
    v206 = a7 + a9 - 1;
    v195 = a7 >> 3;
    if (a7 >> 3 <= v206 >> 3)
    {
      result = a1;
      v215 = (a5 - 1) >> 3;
      v192 = a5 - 1;
      v199 = (a5 - 1) & 7;
      v193 = (a6 - 1) & 3;
      v194 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v204 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v203 = v27;
      v191 = 8 * v19 * v18;
      v205 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v214)
        {
          v29 = v214;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v196 < v28)
        {
          v28 = v196;
        }

        v213 = 4 * v17;
        v202 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v193;
        v201 = v31;
        v33 = v31 != 4;
        v34 = v195;
        v35 = v193 + 1;
        if (v17 != v194)
        {
          v35 = 4;
          v32 = v33;
        }

        v200 = v32;
        v211 = a3 + (v29 - v214) * a11;
        v212 = v35;
        v210 = v35;
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

          if (v206 < v37)
          {
            v37 = v206;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v215)
          {
            v41 = v199 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v213 >= v214 && v36 >= a7)
          {
            v43 = v39 != v199;
            if (v34 != v215)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v200;
          }

          if (v207)
          {
            v64 = 0;
            v65 = v191 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v64 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v64 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v64 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v64 = 16;
              v67 = 16;
            }

            else
            {
              v67 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v67 = 8;
                v64 = 16;
              }
            }

            v179 = (v64 >> 3) - 1;
            v180 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v181 = 32 - __clz(~(-1 << -__clz(v179))), v182 = 32 - __clz(~(-1 << -__clz(v180))), !(v182 | v181)))
            {
              v190 = 0;
            }

            else
            {
              v183 = 0;
              v184 = 0;
              v185 = v34 & v179;
              v186 = v17 & v180;
              v187 = v182 != 0;
              v188 = v181 != 0;
              v189 = 1;
              do
              {
                --v182;
                if (v187)
                {
                  v184 |= (v189 & v186) << v183++;
                }

                else
                {
                  v182 = 0;
                }

                --v181;
                if (v188)
                {
                  v184 |= (v189 & v185) << v183++;
                }

                else
                {
                  v181 = 0;
                }

                v189 *= 2;
                --v183;
                v188 = v181 != 0;
                v187 = v182 != 0;
              }

              while (v181 | v182);
              v190 = v184 << 9;
              result = v216;
            }

            v51 = v190 + ((v36 / v64 + v213 / v67 * ((v64 + v192) / v64)) << 14);
          }

          else if (v204)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v203.i8[0];
            v48 = v203.i8[4];
            v49 = v204.i32[0];
            v50 = v204.i32[1];
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

          v56 = v55 + 3;
          if (v56 < 8)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
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
          v68 = (a4 + v63);
          v69 = v211 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          __src = (a2 + v51);
          if (v218)
          {
            v70 = __dst;
            if (!(v42 & 1 | (v41 < 8u) | (v210 < 4)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v216;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v210 < 4)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v69, a11, v70, v68, v41, v212, *(*(result + 208) + 52));
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v220 = v70;
          v228 = v41;
          v229 = v212;
          v224 = v202;
          v225 = v38 - v36;
          v221 = v68;
          v222 = v69;
          v223 = a11;
          v226 = v201;
          v227 = v40;
          if ((v42 & 1) == 0)
          {
            v72 = *(result + 208);
            v73 = *(v72 + 52);
            v74 = *v68;
            if (*v68)
            {
              if (v74 < 0xF0)
              {
                if (v74 == 127)
                {
                  v77 = v70[1];
                  v78 = v70[2];
                  v79 = v70[3];
                  v80 = v70[4];
                  v81 = v70[5];
                  v82 = v70[6];
                  v83 = v70[7];
                  v231 = *v70;
                  v232 = v77;
                  v233 = v78;
                  v234 = v79;
                  v247 = v80;
                  v248 = v81;
                  v249 = v82;
                  v250 = v83;
                  v75 = 128;
                  v71 = v34 + 1;
                }

                else
                {
                  v71 = v34 + 1;
                  if (v74 == 3)
                  {
                    v76 = vld1q_dup_f32(v70->f32);
                    v231 = v76;
                    v232 = v76;
                    v233 = v76;
                    v234 = v76;
                    v247 = v76;
                    v248 = v76;
                    v249 = v76;
                    v250 = v76;
                    v75 = 4;
                  }

                  else
                  {
                    v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 256, v70, v74);
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 256, v70, v74, *(v72 + 52));
                v75 = 64;
                v71 = v34 + 1;
              }
            }

            else
            {
              v75 = 0;
              v234 = 0u;
              v233 = 0u;
              v232 = 0u;
              v231 = 0u;
              v247 = 0u;
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v71 = v34 + 1;
            }

            v84 = v70 + v75;
            v85 = v68[1];
            if (v68[1])
            {
              if (v85 < 0xF0)
              {
                if (v85 == 127)
                {
                  v88 = *(v84 + 16);
                  v89 = *(v84 + 32);
                  v90 = *(v84 + 48);
                  v91 = *(v84 + 64);
                  v92 = *(v84 + 80);
                  v93 = *(v84 + 96);
                  v94 = *(v84 + 112);
                  v235 = *v84;
                  v236 = v88;
                  v237 = v89;
                  v238 = v90;
                  v251 = v91;
                  v252 = v92;
                  v253 = v93;
                  v254 = v94;
                  v86 = 128;
                }

                else if (v85 == 3)
                {
                  v87 = vld1q_dup_f32(v84);
                  v235 = v87;
                  v236 = v87;
                  v237 = v87;
                  v238 = v87;
                  v251 = v87;
                  v252 = v87;
                  v253 = v87;
                  v254 = v87;
                  v86 = 4;
                }

                else
                {
                  v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v235, 256, v84, v85);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v235, 256, v84, v85, v73);
                v86 = 64;
              }
            }

            else
            {
              v86 = 0;
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v251 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
            }

            v95 = v84 + v86;
            v96 = v68[2];
            if (v68[2])
            {
              if (v96 < 0xF0)
              {
                if (v96 == 127)
                {
                  v99 = *(v95 + 16);
                  v100 = *(v95 + 32);
                  v101 = *(v95 + 48);
                  v102 = *(v95 + 64);
                  v103 = *(v95 + 80);
                  v104 = *(v95 + 96);
                  v105 = *(v95 + 112);
                  v263 = *v95;
                  v264 = v99;
                  v265 = v100;
                  v266 = v101;
                  v279 = v102;
                  v280 = v103;
                  v281 = v104;
                  v282 = v105;
                  v97 = 128;
                }

                else if (v96 == 3)
                {
                  v98 = vld1q_dup_f32(v95);
                  v263 = v98;
                  v264 = v98;
                  v265 = v98;
                  v266 = v98;
                  v279 = v98;
                  v280 = v98;
                  v281 = v98;
                  v282 = v98;
                  v97 = 4;
                }

                else
                {
                  v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v263, 256, v95, v96);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v263, 256, v95, v96, v73);
                v97 = 64;
              }
            }

            else
            {
              v97 = 0;
              v265 = 0u;
              v266 = 0u;
              v263 = 0u;
              v264 = 0u;
              v279 = 0u;
              v280 = 0u;
              v281 = 0u;
              v282 = 0u;
            }

            v106 = v95 + v97;
            v107 = v68[3];
            if (v68[3])
            {
              if (v107 < 0xF0)
              {
                if (v107 == 127)
                {
                  v110 = *(v106 + 16);
                  v111 = *(v106 + 32);
                  v112 = *(v106 + 48);
                  v113 = *(v106 + 64);
                  v114 = *(v106 + 80);
                  v115 = *(v106 + 96);
                  v116 = *(v106 + 112);
                  v267 = *v106;
                  v268 = v110;
                  v269 = v111;
                  v270 = v112;
                  v283 = v113;
                  v284 = v114;
                  v285 = v115;
                  v286 = v116;
                  v108 = 128;
                }

                else if (v107 == 3)
                {
                  v109 = vld1q_dup_f32(v106);
                  v267 = v109;
                  v268 = v109;
                  v269 = v109;
                  v270 = v109;
                  v283 = v109;
                  v284 = v109;
                  v285 = v109;
                  v286 = v109;
                  v108 = 4;
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v267, 256, v106, v107);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v267, 256, v106, v107, v73);
                v108 = 64;
              }
            }

            else
            {
              v108 = 0;
              v269 = 0u;
              v270 = 0u;
              v267 = 0u;
              v268 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
            }

            v117 = v106 + v108;
            v118 = v68[4];
            if (v68[4])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 127)
                {
                  v121 = *(v117 + 16);
                  v122 = *(v117 + 32);
                  v123 = *(v117 + 48);
                  v124 = *(v117 + 64);
                  v125 = *(v117 + 80);
                  v126 = *(v117 + 96);
                  v127 = *(v117 + 112);
                  v239 = *v117;
                  v240 = v121;
                  v241 = v122;
                  v242 = v123;
                  v255 = v124;
                  v256 = v125;
                  v257 = v126;
                  v258 = v127;
                  v119 = 128;
                }

                else if (v118 == 3)
                {
                  v120 = vld1q_dup_f32(v117);
                  v239 = v120;
                  v240 = v120;
                  v241 = v120;
                  v242 = v120;
                  v255 = v120;
                  v256 = v120;
                  v257 = v120;
                  v258 = v120;
                  v119 = 4;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v239, 256, v117, v118);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v239, 256, v117, v118, v73);
                v119 = 64;
              }
            }

            else
            {
              v119 = 0;
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v255 = 0u;
              v256 = 0u;
              v257 = 0u;
              v258 = 0u;
            }

            v128 = v117 + v119;
            v129 = v68[5];
            if (v68[5])
            {
              if (v129 < 0xF0)
              {
                if (v129 == 127)
                {
                  v132 = *(v128 + 16);
                  v133 = *(v128 + 32);
                  v134 = *(v128 + 48);
                  v135 = *(v128 + 64);
                  v136 = *(v128 + 80);
                  v137 = *(v128 + 96);
                  v138 = *(v128 + 112);
                  v243 = *v128;
                  v244 = v132;
                  v245 = v133;
                  v246 = v134;
                  v259 = v135;
                  v260 = v136;
                  v261 = v137;
                  v262 = v138;
                  v130 = 128;
                }

                else if (v129 == 3)
                {
                  v131 = vld1q_dup_f32(v128);
                  v243 = v131;
                  v244 = v131;
                  v245 = v131;
                  v246 = v131;
                  v259 = v131;
                  v260 = v131;
                  v261 = v131;
                  v262 = v131;
                  v130 = 4;
                }

                else
                {
                  v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v243, 256, v128, v129);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v243, 256, v128, v129, v73);
                v130 = 64;
              }
            }

            else
            {
              v130 = 0;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v259 = 0u;
              v260 = 0u;
              v261 = 0u;
              v262 = 0u;
            }

            v139 = v128 + v130;
            v140 = v68[6];
            if (v68[6])
            {
              if (v140 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v271, 256, v139, v140, v73);
                v141 = 64;
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

LABEL_152:
                v151 = v139 + v141;
                if (v142 < 0xF0)
                {
                  a7 = v205;
                  if (v142 == 127)
                  {
                    v154 = *(v151 + 16);
                    v155 = *(v151 + 32);
                    v156 = *(v151 + 48);
                    v157 = *(v151 + 64);
                    v158 = *(v151 + 80);
                    v159 = *(v151 + 96);
                    v160 = *(v151 + 112);
                    v275 = *v151;
                    v276 = v154;
                    v277 = v155;
                    v278 = v156;
                    v291 = v157;
                    v292 = v158;
                    v293 = v159;
                    v294 = v160;
                    v152 = v226;
                    if (v226)
                    {
                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    if (v142 != 3)
                    {
                      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v275, 256, v151, v142);
                      v152 = v226;
                      if (!v226)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_165;
                    }

                    v153 = vld1q_dup_f32(v151);
                    v275 = v153;
                    v276 = v153;
                    v277 = v153;
                    v278 = v153;
                    v291 = v153;
                    v292 = v153;
                    v293 = v153;
                    v294 = v153;
                    v152 = v226;
                    if (v226)
                    {
                      goto LABEL_165;
                    }
                  }
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v275, 256, v151, v142, v73);
                  a7 = v205;
                  v152 = v226;
                  if (!v226)
                  {
                    goto LABEL_186;
                  }

LABEL_165:
                  if (v227)
                  {
                    v161 = 0;
                    v162 = 32 * v225;
                    v163 = &v231.i8[256 * v224 + v162];
                    v164 = v222;
                    v165 = v223;
                    v166 = 32 * v227;
                    if (v166)
                    {
                      v167 = (v166 - 1) >> 32 == 0;
                    }

                    else
                    {
                      v167 = 0;
                    }

                    v168 = !v167;
                    v170 = v163 < v222 + v223 * (v152 - 1) + v166 && v222 < &__dst[256 * v152 + 768 + 256 * v224 + v166 + v162];
                    v171 = v168 | (v223 < 0) | v170;
                    v172 = &v232 + 256 * v224 + v162;
                    v173 = (v222 + 16);
                    do
                    {
                      v174 = v173;
                      v175 = v172;
                      v176 = v166;
                      if (v171)
                      {
                        v177 = 0;
                        do
                        {
                          v163[v177] = *(v164 + v177);
                          ++v177;
                        }

                        while (v166 > v177);
                      }

                      else
                      {
                        do
                        {
                          v178 = *v174;
                          *(v175 - 1) = *(v174 - 1);
                          *v175 = v178;
                          v175 += 2;
                          v174 += 2;
                          v176 -= 32;
                        }

                        while (v176);
                      }

                      ++v161;
                      v172 += 256;
                      v173 = (v173 + v165);
                      v163 += 256;
                      v164 += v165;
                    }

                    while (v161 != v152);
                  }
                }

LABEL_186:
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v231, 256, v220, v221, v228, v229, *(*(v216 + 208) + 52));
                if (!v218)
                {
                  goto LABEL_26;
                }

                goto LABEL_187;
              }

              if (v140 == 127)
              {
                v144 = *(v139 + 16);
                v145 = *(v139 + 32);
                v146 = *(v139 + 48);
                v147 = *(v139 + 64);
                v148 = *(v139 + 80);
                v149 = *(v139 + 96);
                v150 = *(v139 + 112);
                v271 = *v139;
                v272 = v144;
                v273 = v145;
                v274 = v146;
                v287 = v147;
                v288 = v148;
                v289 = v149;
                v290 = v150;
                v141 = 128;
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              if (v140 != 3)
              {
                v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 256, v139, v140);
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              v143 = vld1q_dup_f32(v139);
              v271 = v143;
              v272 = v143;
              v273 = v143;
              v274 = v143;
              v287 = v143;
              v288 = v143;
              v289 = v143;
              v290 = v143;
              v141 = 4;
              v142 = v68[7];
              if (v68[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v141 = 0;
              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v287 = 0u;
              v288 = 0u;
              v289 = 0u;
              v290 = 0u;
              v142 = v68[7];
              if (v68[7])
              {
                goto LABEL_152;
              }
            }

LABEL_162:
            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
            a7 = v205;
            v152 = v226;
            if (v226)
            {
              goto LABEL_165;
            }

            goto LABEL_186;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
          a7 = v205;
          v71 = v34 + 1;
          if (!v218)
          {
            goto LABEL_26;
          }

LABEL_187:
          memcpy(__src, v70, 0x400uLL);
LABEL_26:
          v21 = v34 == v206 >> 3;
          v34 = v71;
          result = v216;
        }

        while (!v21);
        v21 = v17++ == v198;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v229 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v17 = a8 >> 2;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v182 = a1;
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
  v184 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v173 = result;
  if (v17 <= v163)
  {
    v172 = a7 + a9 - 1;
    v160 = a7 >> 3;
    if (a7 >> 3 <= v172 >> 3)
    {
      result = a1;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 3;
      v159 = (a6 - 1) >> 2;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v31.i8 = vcgt_u32(v30, 0xF00000007);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      v34 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v31.i8);
      v169 = v34;
      v170 = v34.i32[0] | v34.i32[1];
      v168 = v31.i64[0];
      v156 = 8 * v19 * v18;
      v171 = a7;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= v180)
        {
          v36 = v180;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v161 < v35)
        {
          v35 = v161;
        }

        v179 = 4 * v17;
        v167 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v158;
        v166 = v38;
        v40 = v38 != 4;
        v41 = v160;
        v42 = v158 + 1;
        if (v17 != v159)
        {
          v42 = 4;
          v39 = v40;
        }

        v165 = v39;
        v177 = a3 + (v36 - v180) * a11;
        v178 = v42;
        v176 = v42;
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

          if (v172 < v44)
          {
            v44 = v172;
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
          if (v179 >= v180 && v43 >= a7)
          {
            v50 = v46 != v164;
            if (v41 != v181)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v165;
          }

          if (v173)
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
                  v74 = 64;
                  v71 = 128;
                }

                else
                {
                  v74 = 0;
                  if (v72 == 32)
                  {
                    v73 = 0;
                    v71 = 64;
                    v74 = 64;
                  }
                }
              }

              else if (v72 == 4)
              {
                v73 = 0;
                v74 = 128;
                v71 = 256;
              }

              else
              {
                v74 = 0;
                if (v72 == 8)
                {
                  v73 = 0;
                  v71 = 128;
                  v74 = 128;
                }
              }
            }

            else if (v72 <= 255)
            {
              if (v72 == 64)
              {
                v73 = 0;
                v74 = 32;
                v71 = 64;
              }

              else
              {
                v74 = 0;
                if (v72 == 128)
                {
                  v73 = 0;
                  v71 = 32;
                  v74 = 32;
                }
              }
            }

            else if (v72 == 256)
            {
              v73 = 0;
              v74 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v73 = 0;
              v71 = 16;
              v74 = 16;
            }

            else
            {
              v74 = 0;
              if (v72 == 1024)
              {
                v73 = 0;
                v74 = 8;
                v71 = 16;
              }
            }

            v144 = (v71 >> 3) - 1;
            v145 = (v74 >> 2) - 1;
            if ((v73 & 1) != 0 || (v146 = 32 - __clz(~(-1 << -__clz(v144))), v147 = 32 - __clz(~(-1 << -__clz(v145))), !(v147 | v146)))
            {
              v155 = 0;
            }

            else
            {
              v148 = 0;
              v149 = 0;
              v150 = v41 & v144;
              v151 = v17 & v145;
              v152 = v147 != 0;
              v153 = v146 != 0;
              v154 = 1;
              do
              {
                --v147;
                if (v152)
                {
                  v149 |= (v154 & v151) << v148++;
                }

                else
                {
                  v147 = 0;
                }

                --v146;
                if (v153)
                {
                  v149 |= (v154 & v150) << v148++;
                }

                else
                {
                  v146 = 0;
                }

                v154 *= 2;
                --v148;
                v153 = v146 != 0;
                v152 = v147 != 0;
              }

              while (v146 | v147);
              v155 = v149 << 8;
              result = v182;
            }

            v58 = v155 + ((v43 / v71 + v179 / v74 * ((v71 + v157) / v71)) << 14);
          }

          else if (v170)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v168;
            v54 = BYTE4(v168);
            v56 = v169.i32[0];
            v57 = v169.i32[1];
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

          v63 = v62 + 3;
          if (v63 < 8)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 2) - 1)));
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
          v75 = (a4 + v70);
          v76 = v177 + 16 * (v45 - a7);
          v77 = (a2 + v58);
          __dst = (a2 + v58);
          if (v184)
          {
            v77 = v196;
            if (!(v49 & 1 | (v48 < 8u) | (v176 < 4)))
            {
              goto LABEL_85;
            }

            memcpy(v196, __dst, sizeof(v196));
            result = v182;
          }

          else if (!(v49 & 1 | (v48 < 8u) | (v176 < 4)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v76, a11, v77, v75, v48, v178, *(*(result + 208) + 52), v34, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
LABEL_86:
            a7 = v171;
            v78 = v41 + 1;
            if (v184)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v77;
          v194 = v48;
          v195 = v178;
          v190 = v167;
          v191 = v45 - v43;
          v187 = v75;
          v188 = v76;
          v189 = a11;
          v192 = v166;
          v193 = v47;
          if (v49)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v75;
          if (*v75)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 63)
              {
                v82 = *v77;
                v31 = v77[1];
                v32 = v77[2];
                v33 = v77[3];
                v197 = *v77;
                v198 = v31;
                v205 = v32;
                v206 = v33;
                v83 = 64;
              }

              else if (v81 == 1)
              {
                v82 = vld1q_dup_s16(v77->i16);
                v197 = v82;
                v198 = v82;
                v205 = v82;
                v206 = v82;
                v83 = 2;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v197, 128, v77, v81, *&v34, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v82.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v197, 128, v77, v81, *(v79 + 52)).u64[0];
              v83 = 32;
            }
          }

          else
          {
            v83 = 0;
            v82.i64[0] = 0;
            v197 = 0u;
            v198 = 0u;
            v205 = 0u;
            v206 = 0u;
          }

          v84 = v77->u64 + v83;
          v85 = v75[1];
          if (v75[1])
          {
            if (v85 < 0xF0)
            {
              if (v85 == 63)
              {
                v86 = *v84;
                v31 = *(v84 + 16);
                v32 = *(v84 + 32);
                v33 = *(v84 + 48);
                v199 = *v84;
                v200 = v31;
                v207 = v32;
                v208 = v33;
                v87 = 64;
              }

              else if (v85 == 1)
              {
                v86 = vld1q_dup_s16(v84);
                v199 = v86;
                v200 = v86;
                v207 = v86;
                v208 = v86;
                v87 = 2;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v199, 128, v84, v85, *v82.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v86.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v199, 128, v84, v85, v80).u64[0];
              v87 = 32;
            }
          }

          else
          {
            v87 = 0;
            v86.i64[0] = 0;
            v199 = 0u;
            v200 = 0u;
            v207 = 0u;
            v208 = 0u;
          }

          v88 = v84 + v87;
          v89 = v75[2];
          if (v75[2])
          {
            if (v89 < 0xF0)
            {
              if (v89 == 63)
              {
                v90 = *v88;
                v31 = *(v88 + 16);
                v32 = *(v88 + 32);
                v33 = *(v88 + 48);
                v213 = *v88;
                v214 = v31;
                v221 = v32;
                v222 = v33;
                v91 = 64;
              }

              else if (v89 == 1)
              {
                v90 = vld1q_dup_s16(v88);
                v213 = v90;
                v214 = v90;
                v221 = v90;
                v222 = v90;
                v91 = 2;
              }

              else
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 128, v88, v89, *v86.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v90.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v213, 128, v88, v89, v80).u64[0];
              v91 = 32;
            }
          }

          else
          {
            v91 = 0;
            v90.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v221 = 0u;
            v222 = 0u;
          }

          v92 = v88 + v91;
          v93 = v75[3];
          if (v75[3])
          {
            if (v93 < 0xF0)
            {
              if (v93 == 63)
              {
                v94 = *v92;
                v31 = *(v92 + 16);
                v32 = *(v92 + 32);
                v33 = *(v92 + 48);
                v215 = *v92;
                v216 = v31;
                v223 = v32;
                v224 = v33;
                v95 = 64;
              }

              else if (v93 == 1)
              {
                v94 = vld1q_dup_s16(v92);
                v215 = v94;
                v216 = v94;
                v223 = v94;
                v224 = v94;
                v95 = 2;
              }

              else
              {
                v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v215, 128, v92, v93, *v90.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v94.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v215, 128, v92, v93, v80).u64[0];
              v95 = 32;
            }
          }

          else
          {
            v95 = 0;
            v94.i64[0] = 0;
            v215 = 0u;
            v216 = 0u;
            v223 = 0u;
            v224 = 0u;
          }

          v96 = v92 + v95;
          v97 = v75[4];
          if (v75[4])
          {
            if (v97 < 0xF0)
            {
              if (v97 == 63)
              {
                v98 = *v96;
                v31 = *(v96 + 16);
                v32 = *(v96 + 32);
                v33 = *(v96 + 48);
                v201 = *v96;
                v202 = v31;
                v209 = v32;
                v210 = v33;
                v99 = 64;
              }

              else if (v97 == 1)
              {
                v98 = vld1q_dup_s16(v96);
                v201 = v98;
                v202 = v98;
                v209 = v98;
                v210 = v98;
                v99 = 2;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v201, 128, v96, v97, *v94.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v98.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v201, 128, v96, v97, v80).u64[0];
              v99 = 32;
            }
          }

          else
          {
            v99 = 0;
            v98.i64[0] = 0;
            v201 = 0u;
            v202 = 0u;
            v209 = 0u;
            v210 = 0u;
          }

          v100 = v96 + v99;
          v101 = v75[5];
          if (v75[5])
          {
            if (v101 < 0xF0)
            {
              if (v101 == 63)
              {
                v102 = *v100;
                v31 = *(v100 + 16);
                v32 = *(v100 + 32);
                v33 = *(v100 + 48);
                v203 = *v100;
                v204 = v31;
                v211 = v32;
                v212 = v33;
                v103 = 64;
              }

              else if (v101 == 1)
              {
                v102 = vld1q_dup_s16(v100);
                v203 = v102;
                v204 = v102;
                v211 = v102;
                v212 = v102;
                v103 = 2;
              }

              else
              {
                v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v203, 128, v100, v101, *v98.i64, *v31.i64, *v32.i64, *v33.i8);
              }
            }

            else
            {
              v102.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v203, 128, v100, v101, v80).u64[0];
              v103 = 32;
            }
          }

          else
          {
            v103 = 0;
            v102.i64[0] = 0;
            v203 = 0u;
            v204 = 0u;
            v211 = 0u;
            v212 = 0u;
          }

          v104 = v100 + v103;
          v105 = v75[6];
          if (v75[6])
          {
            if (v105 < 0xF0)
            {
              if (v105 == 63)
              {
                v106 = *v104;
                v31 = *(v104 + 16);
                v32 = *(v104 + 32);
                v33 = *(v104 + 48);
                v217 = *v104;
                v218 = v31;
                v225 = v32;
                v226 = v33;
                v107 = 64;
                v108 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v105 == 1)
              {
                v106 = vld1q_dup_s16(v104);
                v217 = v106;
                v218 = v106;
                v225 = v106;
                v226 = v106;
                v107 = 2;
                v108 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v217, 128, v104, v105, *v102.i64, *v31.i64, *v32.i64, *v33.i8);
                v108 = v75[7];
                if (!v75[7])
                {
LABEL_145:
                  v109.i64[0] = 0;
                  v219 = 0u;
                  v220 = 0u;
                  v227 = 0u;
                  v228 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              v106.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v217, 128, v104, v105, v80).u64[0];
              v107 = 32;
              v108 = v75[7];
              if (!v75[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v107 = 0;
            v106.i64[0] = 0;
            v217 = 0u;
            v218 = 0u;
            v225 = 0u;
            v226 = 0u;
            v108 = v75[7];
            if (!v75[7])
            {
              goto LABEL_145;
            }
          }

          v110 = v104 + v107;
          if (v108 >= 0xF0)
          {
            v109.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v219, 128, v110, v108, v80).u64[0];
LABEL_149:
            a7 = v171;
LABEL_150:
            v78 = v41 + 1;
            v111 = v192;
            if (!v192)
            {
              goto LABEL_195;
            }

            goto LABEL_151;
          }

          a7 = v171;
          if (v108 == 63)
          {
            v109 = *v110;
            v31 = *(v110 + 16);
            v32 = *(v110 + 32);
            v33 = *(v110 + 48);
            v219 = *v110;
            v220 = v31;
            v227 = v32;
            v228 = v33;
            goto LABEL_150;
          }

          v78 = v41 + 1;
          if (v108 == 1)
          {
            v109 = vld1q_dup_s16(v110);
            v219 = v109;
            v220 = v109;
            v227 = v109;
            v228 = v109;
            v111 = v192;
            if (!v192)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v219, 128, v110, v108, *v106.i64, *v31.i64, *v32.i64, *v33.i8);
            v111 = v192;
            if (!v192)
            {
              goto LABEL_195;
            }
          }

LABEL_151:
          v112 = v193;
          if (v193)
          {
            v113 = 0;
            v114 = v190 << 7;
            v115 = 16 * v191;
            v116 = &v197.i8[v114 + v115];
            v117 = v188;
            v118 = v189;
            v119 = 16 * v193;
            if (16 * v193)
            {
              v120 = (16 * v193 - 1) >> 32 == 0;
            }

            else
            {
              v120 = 0;
            }

            v121 = !v120;
            v123 = v116 < &v188[v193].i8[v189 * (v111 - 1)] && v188 < &v196[128 * v111 + 384 + 128 * v190 + 16 * v193 + v115];
            v124 = v119 & 0x1FFFFFFE0;
            v125 = v121 | (v189 < 0) | v123;
            v126 = &v198.i8[v114 + v115];
            v127 = v188 + 1;
            v128 = v116;
            v129 = v188;
            do
            {
              v130 = (v117 + v113 * v118);
              v131 = &v116[128 * v113];
              if (v125)
              {
                v132 = 0;
              }

              else
              {
                if (v112 == 1)
                {
                  v136 = 0;
LABEL_173:
                  v137 = -16 * v112 + v136;
                  v138 = (v129 + v136);
                  v139 = &v128[v136];
                  do
                  {
                    v140 = *v138++;
                    v109.i64[0] = v140;
                    *v139 = v140;
                    v139 += 16;
                    v137 += 16;
                  }

                  while (v137);
                  goto LABEL_165;
                }

                v141 = v127;
                v142 = v126;
                v143 = v119 & 0x1FFFFFFE0;
                do
                {
                  v109 = v141[-1];
                  v31 = *v141;
                  v142[-1] = v109;
                  *v142 = v31;
                  v142 += 2;
                  v141 += 2;
                  v143 -= 32;
                }

                while (v143);
                if (v119 == v124)
                {
                  goto LABEL_165;
                }

                v136 = v119 & 0x1FFFFFFE0;
                if (v112)
                {
                  goto LABEL_173;
                }

                v130 += v124;
                v131 += v124;
                v132 = v119 & 0xFFFFFFE0;
              }

              v133 = v132 + 1;
              do
              {
                v134 = *v130++;
                *v131++ = v134;
              }

              while (v119 > v133++);
LABEL_165:
              ++v113;
              v126 += 128;
              v127 = (v127 + v118);
              v129 += v118;
              v128 += 128;
            }

            while (v113 != v111);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v197, 128, v186, v187, v194, v195, *(*(v182 + 208) + 52), *v109.i8, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
          if (v184)
          {
LABEL_26:
            memcpy(__dst, v77, 0x200uLL);
          }

LABEL_27:
          v21 = v41 == v172 >> 3;
          v41 = v78;
          result = v182;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v163 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v139 = a8;
  v17 = a8 >> 2;
  v121 = a8 + a10 - 1;
  v123 = v121 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v141 = a1;
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
  v142 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v132 = result;
  if (v17 <= v123)
  {
    v131 = a7 + a9 - 1;
    v120 = a7 >> 3;
    if (a7 >> 3 <= v131 >> 3)
    {
      result = a1;
      v140 = (a5 - 1) >> 3;
      v117 = a5 - 1;
      v124 = (a5 - 1) & 7;
      v118 = (a6 - 1) & 3;
      v119 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v129 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v128 = v27;
      v116 = 8 * v19 * v18;
      v130 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v139)
        {
          v29 = v139;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v121 < v28)
        {
          v28 = v121;
        }

        v138 = 4 * v17;
        v127 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v118;
        v126 = v31;
        v33 = v31 != 4;
        v34 = v120;
        v35 = v118 + 1;
        if (v17 != v119)
        {
          v35 = 4;
          v32 = v33;
        }

        v125 = v32;
        v136 = a3 + (v29 - v139) * a11;
        v137 = v35;
        v135 = v35;
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

          if (v131 < v37)
          {
            v37 = v131;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v140)
          {
            v41 = v124 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v138 >= v139 && v36 >= a7)
          {
            v43 = v39 != v124;
            if (v34 != v140)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v125;
          }

          if (v132)
          {
            v64 = 0;
            v65 = v116 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v64 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v64 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v64 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v64 = 16;
              v67 = 16;
            }

            else
            {
              v67 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v67 = 8;
                v64 = 16;
              }
            }

            v104 = (v64 >> 3) - 1;
            v105 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v106 = 32 - __clz(~(-1 << -__clz(v104))), v107 = 32 - __clz(~(-1 << -__clz(v105))), !(v107 | v106)))
            {
              v115 = 0;
            }

            else
            {
              v108 = 0;
              v109 = 0;
              v110 = v34 & v104;
              v111 = v17 & v105;
              v112 = v107 != 0;
              v113 = v106 != 0;
              v114 = 1;
              do
              {
                --v107;
                if (v112)
                {
                  v109 |= (v114 & v111) << v108++;
                }

                else
                {
                  v107 = 0;
                }

                --v106;
                if (v113)
                {
                  v109 |= (v114 & v110) << v108++;
                }

                else
                {
                  v106 = 0;
                }

                v114 *= 2;
                --v108;
                v113 = v106 != 0;
                v112 = v107 != 0;
              }

              while (v106 | v107);
              v115 = v109 << 9;
              result = v141;
            }

            v51 = v115 + ((v36 / v64 + v138 / v67 * ((v64 + v117) / v64)) << 14);
          }

          else if (v129)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v128.i8[0];
            v47 = v128.i8[4];
            v49 = v129.i32[0];
            v50 = v129.i32[1];
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

          v56 = v55 + 3;
          if (v56 < 8)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
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
          v68 = (a4 + v63);
          v69 = v136 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          if (v142)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v135 < 4)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v69, a11, v75, v68, v41, v137, *(*(result + 208) + 52));
              goto LABEL_86;
            }

            v71 = v41;
            v72 = v40;
            v73 = (a2 + v51);
            v74 = v42;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 8 * v34;
            v75 = __dst;
            v42 = v74;
            v70 = v73;
            v40 = v72;
            LOBYTE(v41) = v71;
            result = v141;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v135 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v144 = v75;
          v152 = v41;
          v153 = v137;
          v148 = v127;
          v149 = v38 - v36;
          v145 = v68;
          v146 = v69;
          v147 = a11;
          v150 = v126;
          v151 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            a7 = v130;
            if (!v142)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v70, v75, 0x400uLL);
            goto LABEL_26;
          }

          v76 = *(*(result + 208) + 52);
          v77 = &v75[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v155, 256, v75, *v68, v76)];
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v156, 256, v77, v68[1], v76);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v159, 256, v78, v68[2], v76);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v160, 256, v79, v68[3], v76);
          v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v157, 256, v80, v68[4], v76);
          v82 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v158, 256, v81, v68[5], v76);
          v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v161, 256, v82, v68[6], v76);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v162, 256, v82 + v83, v68[7], v76);
          v84 = v150;
          a7 = v130;
          if (v150 && v151)
          {
            v85 = 0;
            v86 = v148 << 8;
            v87 = 32 * v149;
            v88 = v155 + v86 + v87;
            v89 = v146;
            v90 = v147;
            v91 = 32 * v151;
            if (v91)
            {
              v92 = (v91 - 1) >> 32 == 0;
            }

            else
            {
              v92 = 0;
            }

            v93 = !v92;
            v95 = v88 < v146 + v147 * (v150 - 1) + v91 && v146 < &__dst[256 * v150 + 768 + 256 * v148 + v91 + v87];
            v96 = v93 | (v147 < 0) | v95;
            v97 = &v155[1] + v86 + v87;
            v98 = (v146 + 16);
            do
            {
              v99 = v98;
              v100 = v97;
              v101 = v91;
              if (v96)
              {
                v102 = 0;
                do
                {
                  v88[v102] = *(v89 + v102);
                  ++v102;
                }

                while (v91 > v102);
              }

              else
              {
                do
                {
                  v103 = *v99;
                  *(v100 - 1) = *(v99 - 1);
                  *v100 = v103;
                  v100 += 2;
                  v99 += 2;
                  v101 -= 32;
                }

                while (v101);
              }

              ++v85;
              v97 += 256;
              v98 = (v98 + v90);
              v88 += 256;
              v89 += v90;
            }

            while (v85 != v84);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v155, 256, v144, v145, v152, v153, *(*(v141 + 208) + 52));
          if (v142)
          {
            goto LABEL_111;
          }

LABEL_26:
          v21 = v34++ == v131 >> 3;
          result = v141;
        }

        while (!v21);
        v21 = v17++ == v123;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v295 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v214 = a8;
  v17 = a8 >> 2;
  v196 = a8 + a10 - 1;
  v198 = v196 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v216 = a1;
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
  v218 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v207 = result;
  if (v17 <= v198)
  {
    v206 = a7 + a9 - 1;
    v195 = a7 >> 3;
    if (a7 >> 3 <= v206 >> 3)
    {
      result = a1;
      v215 = (a5 - 1) >> 3;
      v192 = a5 - 1;
      v199 = (a5 - 1) & 7;
      v193 = (a6 - 1) & 3;
      v194 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v204 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v203 = v27;
      v191 = 8 * v19 * v18;
      v205 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v214)
        {
          v29 = v214;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v196 < v28)
        {
          v28 = v196;
        }

        v213 = 4 * v17;
        v202 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v193;
        v201 = v31;
        v33 = v31 != 4;
        v34 = v195;
        v35 = v193 + 1;
        if (v17 != v194)
        {
          v35 = 4;
          v32 = v33;
        }

        v200 = v32;
        v211 = a3 + (v29 - v214) * a11;
        v212 = v35;
        v210 = v35;
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

          if (v206 < v37)
          {
            v37 = v206;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v215)
          {
            v41 = v199 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v213 >= v214 && v36 >= a7)
          {
            v43 = v39 != v199;
            if (v34 != v215)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v200;
          }

          if (v207)
          {
            v64 = 0;
            v65 = v191 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v64 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v64 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v64 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v64 = 16;
              v67 = 16;
            }

            else
            {
              v67 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v67 = 8;
                v64 = 16;
              }
            }

            v179 = (v64 >> 3) - 1;
            v180 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v181 = 32 - __clz(~(-1 << -__clz(v179))), v182 = 32 - __clz(~(-1 << -__clz(v180))), !(v182 | v181)))
            {
              v190 = 0;
            }

            else
            {
              v183 = 0;
              v184 = 0;
              v185 = v34 & v179;
              v186 = v17 & v180;
              v187 = v182 != 0;
              v188 = v181 != 0;
              v189 = 1;
              do
              {
                --v182;
                if (v187)
                {
                  v184 |= (v189 & v186) << v183++;
                }

                else
                {
                  v182 = 0;
                }

                --v181;
                if (v188)
                {
                  v184 |= (v189 & v185) << v183++;
                }

                else
                {
                  v181 = 0;
                }

                v189 *= 2;
                --v183;
                v188 = v181 != 0;
                v187 = v182 != 0;
              }

              while (v181 | v182);
              v190 = v184 << 9;
              result = v216;
            }

            v51 = v190 + ((v36 / v64 + v213 / v67 * ((v64 + v192) / v64)) << 14);
          }

          else if (v204)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v203.i8[0];
            v48 = v203.i8[4];
            v49 = v204.i32[0];
            v50 = v204.i32[1];
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

          v56 = v55 + 3;
          if (v56 < 8)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
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
          v68 = (a4 + v63);
          v69 = v211 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          __src = (a2 + v51);
          if (v218)
          {
            v70 = __dst;
            if (!(v42 & 1 | (v41 < 8u) | (v210 < 4)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v216;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v210 < 4)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v69, a11, v70, v68, v41, v212, *(*(result + 208) + 52));
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v220 = v70;
          v228 = v41;
          v229 = v212;
          v224 = v202;
          v225 = v38 - v36;
          v221 = v68;
          v222 = v69;
          v223 = a11;
          v226 = v201;
          v227 = v40;
          if ((v42 & 1) == 0)
          {
            v72 = *(result + 208);
            v73 = *(v72 + 52);
            v74 = *v68;
            if (*v68)
            {
              if (v74 < 0xF0)
              {
                if (v74 == 127)
                {
                  v77 = v70[1];
                  v78 = v70[2];
                  v79 = v70[3];
                  v80 = v70[4];
                  v81 = v70[5];
                  v82 = v70[6];
                  v83 = v70[7];
                  v231 = *v70;
                  v232 = v77;
                  v233 = v78;
                  v234 = v79;
                  v247 = v80;
                  v248 = v81;
                  v249 = v82;
                  v250 = v83;
                  v75 = 128;
                  v71 = v34 + 1;
                }

                else
                {
                  v71 = v34 + 1;
                  if (v74 == 3)
                  {
                    v76 = vld1q_dup_f32(v70->f32);
                    v231 = v76;
                    v232 = v76;
                    v233 = v76;
                    v234 = v76;
                    v247 = v76;
                    v248 = v76;
                    v249 = v76;
                    v250 = v76;
                    v75 = 4;
                  }

                  else
                  {
                    v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 256, v70, v74);
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v231.i32, 256, v70, v74, *(v72 + 52));
                v75 = 64;
                v71 = v34 + 1;
              }
            }

            else
            {
              v75 = 0;
              v234 = 0u;
              v233 = 0u;
              v232 = 0u;
              v231 = 0u;
              v247 = 0u;
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v71 = v34 + 1;
            }

            v84 = v70 + v75;
            v85 = v68[1];
            if (v68[1])
            {
              if (v85 < 0xF0)
              {
                if (v85 == 127)
                {
                  v88 = *(v84 + 16);
                  v89 = *(v84 + 32);
                  v90 = *(v84 + 48);
                  v91 = *(v84 + 64);
                  v92 = *(v84 + 80);
                  v93 = *(v84 + 96);
                  v94 = *(v84 + 112);
                  v235 = *v84;
                  v236 = v88;
                  v237 = v89;
                  v238 = v90;
                  v251 = v91;
                  v252 = v92;
                  v253 = v93;
                  v254 = v94;
                  v86 = 128;
                }

                else if (v85 == 3)
                {
                  v87 = vld1q_dup_f32(v84);
                  v235 = v87;
                  v236 = v87;
                  v237 = v87;
                  v238 = v87;
                  v251 = v87;
                  v252 = v87;
                  v253 = v87;
                  v254 = v87;
                  v86 = 4;
                }

                else
                {
                  v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v235, 256, v84, v85);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v235.i32, 256, v84, v85, v73);
                v86 = 64;
              }
            }

            else
            {
              v86 = 0;
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v251 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
            }

            v95 = v84 + v86;
            v96 = v68[2];
            if (v68[2])
            {
              if (v96 < 0xF0)
              {
                if (v96 == 127)
                {
                  v99 = *(v95 + 16);
                  v100 = *(v95 + 32);
                  v101 = *(v95 + 48);
                  v102 = *(v95 + 64);
                  v103 = *(v95 + 80);
                  v104 = *(v95 + 96);
                  v105 = *(v95 + 112);
                  v263 = *v95;
                  v264 = v99;
                  v265 = v100;
                  v266 = v101;
                  v279 = v102;
                  v280 = v103;
                  v281 = v104;
                  v282 = v105;
                  v97 = 128;
                }

                else if (v96 == 3)
                {
                  v98 = vld1q_dup_f32(v95);
                  v263 = v98;
                  v264 = v98;
                  v265 = v98;
                  v266 = v98;
                  v279 = v98;
                  v280 = v98;
                  v281 = v98;
                  v282 = v98;
                  v97 = 4;
                }

                else
                {
                  v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v263, 256, v95, v96);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v263.i32, 256, v95, v96, v73);
                v97 = 64;
              }
            }

            else
            {
              v97 = 0;
              v265 = 0u;
              v266 = 0u;
              v263 = 0u;
              v264 = 0u;
              v279 = 0u;
              v280 = 0u;
              v281 = 0u;
              v282 = 0u;
            }

            v106 = v95 + v97;
            v107 = v68[3];
            if (v68[3])
            {
              if (v107 < 0xF0)
              {
                if (v107 == 127)
                {
                  v110 = *(v106 + 16);
                  v111 = *(v106 + 32);
                  v112 = *(v106 + 48);
                  v113 = *(v106 + 64);
                  v114 = *(v106 + 80);
                  v115 = *(v106 + 96);
                  v116 = *(v106 + 112);
                  v267 = *v106;
                  v268 = v110;
                  v269 = v111;
                  v270 = v112;
                  v283 = v113;
                  v284 = v114;
                  v285 = v115;
                  v286 = v116;
                  v108 = 128;
                }

                else if (v107 == 3)
                {
                  v109 = vld1q_dup_f32(v106);
                  v267 = v109;
                  v268 = v109;
                  v269 = v109;
                  v270 = v109;
                  v283 = v109;
                  v284 = v109;
                  v285 = v109;
                  v286 = v109;
                  v108 = 4;
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v267, 256, v106, v107);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v267.i32, 256, v106, v107, v73);
                v108 = 64;
              }
            }

            else
            {
              v108 = 0;
              v269 = 0u;
              v270 = 0u;
              v267 = 0u;
              v268 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
            }

            v117 = v106 + v108;
            v118 = v68[4];
            if (v68[4])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 127)
                {
                  v121 = *(v117 + 16);
                  v122 = *(v117 + 32);
                  v123 = *(v117 + 48);
                  v124 = *(v117 + 64);
                  v125 = *(v117 + 80);
                  v126 = *(v117 + 96);
                  v127 = *(v117 + 112);
                  v239 = *v117;
                  v240 = v121;
                  v241 = v122;
                  v242 = v123;
                  v255 = v124;
                  v256 = v125;
                  v257 = v126;
                  v258 = v127;
                  v119 = 128;
                }

                else if (v118 == 3)
                {
                  v120 = vld1q_dup_f32(v117);
                  v239 = v120;
                  v240 = v120;
                  v241 = v120;
                  v242 = v120;
                  v255 = v120;
                  v256 = v120;
                  v257 = v120;
                  v258 = v120;
                  v119 = 4;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v239, 256, v117, v118);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v239.i32, 256, v117, v118, v73);
                v119 = 64;
              }
            }

            else
            {
              v119 = 0;
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v255 = 0u;
              v256 = 0u;
              v257 = 0u;
              v258 = 0u;
            }

            v128 = v117 + v119;
            v129 = v68[5];
            if (v68[5])
            {
              if (v129 < 0xF0)
              {
                if (v129 == 127)
                {
                  v132 = *(v128 + 16);
                  v133 = *(v128 + 32);
                  v134 = *(v128 + 48);
                  v135 = *(v128 + 64);
                  v136 = *(v128 + 80);
                  v137 = *(v128 + 96);
                  v138 = *(v128 + 112);
                  v243 = *v128;
                  v244 = v132;
                  v245 = v133;
                  v246 = v134;
                  v259 = v135;
                  v260 = v136;
                  v261 = v137;
                  v262 = v138;
                  v130 = 128;
                }

                else if (v129 == 3)
                {
                  v131 = vld1q_dup_f32(v128);
                  v243 = v131;
                  v244 = v131;
                  v245 = v131;
                  v246 = v131;
                  v259 = v131;
                  v260 = v131;
                  v261 = v131;
                  v262 = v131;
                  v130 = 4;
                }

                else
                {
                  v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v243, 256, v128, v129);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v243.i32, 256, v128, v129, v73);
                v130 = 64;
              }
            }

            else
            {
              v130 = 0;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v259 = 0u;
              v260 = 0u;
              v261 = 0u;
              v262 = 0u;
            }

            v139 = v128 + v130;
            v140 = v68[6];
            if (v68[6])
            {
              if (v140 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v271.i32, 256, v139, v140, v73);
                v141 = 64;
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

LABEL_152:
                v151 = v139 + v141;
                if (v142 < 0xF0)
                {
                  a7 = v205;
                  if (v142 == 127)
                  {
                    v154 = *(v151 + 16);
                    v155 = *(v151 + 32);
                    v156 = *(v151 + 48);
                    v157 = *(v151 + 64);
                    v158 = *(v151 + 80);
                    v159 = *(v151 + 96);
                    v160 = *(v151 + 112);
                    v275 = *v151;
                    v276 = v154;
                    v277 = v155;
                    v278 = v156;
                    v291 = v157;
                    v292 = v158;
                    v293 = v159;
                    v294 = v160;
                    v152 = v226;
                    if (v226)
                    {
                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    if (v142 != 3)
                    {
                      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v275, 256, v151, v142);
                      v152 = v226;
                      if (!v226)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_165;
                    }

                    v153 = vld1q_dup_f32(v151);
                    v275 = v153;
                    v276 = v153;
                    v277 = v153;
                    v278 = v153;
                    v291 = v153;
                    v292 = v153;
                    v293 = v153;
                    v294 = v153;
                    v152 = v226;
                    if (v226)
                    {
                      goto LABEL_165;
                    }
                  }
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v275.i32, 256, v151, v142, v73);
                  a7 = v205;
                  v152 = v226;
                  if (!v226)
                  {
                    goto LABEL_186;
                  }

LABEL_165:
                  if (v227)
                  {
                    v161 = 0;
                    v162 = 32 * v225;
                    v163 = &v231.i8[256 * v224 + v162];
                    v164 = v222;
                    v165 = v223;
                    v166 = 32 * v227;
                    if (v166)
                    {
                      v167 = (v166 - 1) >> 32 == 0;
                    }

                    else
                    {
                      v167 = 0;
                    }

                    v168 = !v167;
                    v170 = v163 < v222 + v223 * (v152 - 1) + v166 && v222 < &__dst[256 * v152 + 768 + 256 * v224 + v166 + v162];
                    v171 = v168 | (v223 < 0) | v170;
                    v172 = &v232 + 256 * v224 + v162;
                    v173 = (v222 + 16);
                    do
                    {
                      v174 = v173;
                      v175 = v172;
                      v176 = v166;
                      if (v171)
                      {
                        v177 = 0;
                        do
                        {
                          v163[v177] = *(v164 + v177);
                          ++v177;
                        }

                        while (v166 > v177);
                      }

                      else
                      {
                        do
                        {
                          v178 = *v174;
                          *(v175 - 1) = *(v174 - 1);
                          *v175 = v178;
                          v175 += 2;
                          v174 += 2;
                          v176 -= 32;
                        }

                        while (v176);
                      }

                      ++v161;
                      v172 += 256;
                      v173 = (v173 + v165);
                      v163 += 256;
                      v164 += v165;
                    }

                    while (v161 != v152);
                  }
                }

LABEL_186:
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v231, 256, v220, v221, v228, v229, *(*(v216 + 208) + 52));
                if (!v218)
                {
                  goto LABEL_26;
                }

                goto LABEL_187;
              }

              if (v140 == 127)
              {
                v144 = *(v139 + 16);
                v145 = *(v139 + 32);
                v146 = *(v139 + 48);
                v147 = *(v139 + 64);
                v148 = *(v139 + 80);
                v149 = *(v139 + 96);
                v150 = *(v139 + 112);
                v271 = *v139;
                v272 = v144;
                v273 = v145;
                v274 = v146;
                v287 = v147;
                v288 = v148;
                v289 = v149;
                v290 = v150;
                v141 = 128;
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              if (v140 != 3)
              {
                v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 256, v139, v140);
                v142 = v68[7];
                if (!v68[7])
                {
                  goto LABEL_162;
                }

                goto LABEL_152;
              }

              v143 = vld1q_dup_f32(v139);
              v271 = v143;
              v272 = v143;
              v273 = v143;
              v274 = v143;
              v287 = v143;
              v288 = v143;
              v289 = v143;
              v290 = v143;
              v141 = 4;
              v142 = v68[7];
              if (v68[7])
              {
                goto LABEL_152;
              }
            }

            else
            {
              v141 = 0;
              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v287 = 0u;
              v288 = 0u;
              v289 = 0u;
              v290 = 0u;
              v142 = v68[7];
              if (v68[7])
              {
                goto LABEL_152;
              }
            }

LABEL_162:
            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
            a7 = v205;
            v152 = v226;
            if (v226)
            {
              goto LABEL_165;
            }

            goto LABEL_186;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
          a7 = v205;
          v71 = v34 + 1;
          if (!v218)
          {
            goto LABEL_26;
          }

LABEL_187:
          memcpy(__src, v70, 0x400uLL);
LABEL_26:
          v21 = v34 == v206 >> 3;
          v34 = v71;
          result = v216;
        }

        while (!v21);
        v21 = v17++ == v198;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v161 = v21;
  v162 = v22;
  v150 = v23;
  v24 = v12;
  v312 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v167 = v14;
  v25 = v14 >> 2;
  v149 = v14 + a10 - 1;
  v151 = v149 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v169 = v24;
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
  v171 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v160 = result;
  if (v25 <= v151)
  {
    v159 = v16 + a9 - 1;
    v148 = v16 >> 3;
    if (v16 >> 3 <= v159 >> 3)
    {
      result = v24;
      v168 = (v20 - 1) >> 3;
      v145 = v20 - 1;
      v152 = (v20 - 1) & 7;
      v146 = (v18 - 1) & 3;
      v147 = (v18 - 1) >> 2;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v157 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v156 = v35;
      v144 = 8 * v27 * v26;
      v158 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v167)
        {
          v37 = v167;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v149 < v36)
        {
          v36 = v149;
        }

        v166 = 4 * v25;
        v155 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v146;
        v154 = v39;
        v41 = v39 != 4;
        v42 = v148;
        v43 = v146 + 1;
        if (v25 != v147)
        {
          v43 = 4;
          v40 = v41;
        }

        v153 = v40;
        v164 = v150 + (v37 - v167) * a11;
        v165 = v43;
        v163 = v43;
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

          if (v159 < v45)
          {
            v45 = v159;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v168)
          {
            v49 = v152 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v166 >= v167 && v44 >= v16)
          {
            v51 = v47 != v152;
            if (v42 != v168)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v153;
          }

          if (v160)
          {
            v72 = 0;
            v73 = v144 >> (*(result + 57) != 0);
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

            v132 = (v72 >> 3) - 1;
            v133 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v134 = 32 - __clz(~(-1 << -__clz(v132))), v135 = 32 - __clz(~(-1 << -__clz(v133))), !(v135 | v134)))
            {
              v143 = 0;
            }

            else
            {
              v136 = 0;
              v137 = 0;
              v138 = v42 & v132;
              v139 = v25 & v133;
              v140 = v135 != 0;
              v141 = v134 != 0;
              v142 = 1;
              do
              {
                --v135;
                if (v140)
                {
                  v137 |= (v142 & v139) << v136++;
                }

                else
                {
                  v135 = 0;
                }

                --v134;
                if (v141)
                {
                  v137 |= (v142 & v138) << v136++;
                }

                else
                {
                  v134 = 0;
                }

                v142 *= 2;
                --v136;
                v141 = v134 != 0;
                v140 = v135 != 0;
              }

              while (v134 | v135);
              v143 = v137 << 10;
              result = v169;
            }

            v59 = v143 + ((v44 / v72 + v166 / v75 * ((v72 + v145) / v72)) << 14);
          }

          else if (v157)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v156.i8[0];
            v55 = v156.i8[4];
            v57 = v157.i32[0];
            v58 = v157.i32[1];
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
          v76 = (v162 + v71);
          v77 = v164 + ((v46 - v16) << 6);
          v78 = (v161 + v59);
          __src = (v161 + v59);
          if (v171)
          {
            v78 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v163 < 4)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v169;
          }

          else if (!(v50 & 1 | (v49 < 8u) | (v163 < 4)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v77, a11, v78, v76, v49, v165, *(*(result + 208) + 52));
LABEL_85:
            v16 = v158;
            v79 = v42 + 1;
            if (!v171)
            {
              goto LABEL_26;
            }

LABEL_167:
            memcpy(__src, v78, 0x800uLL);
            goto LABEL_26;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v173 = v78;
          v181 = v49;
          v182 = v165;
          v177 = v155;
          v178 = v46 - v44;
          v174 = v76;
          v175 = v77;
          v176 = a11;
          v179 = v154;
          v180 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_85;
          }

          v80 = *(result + 208);
          v81 = *(v80 + 52);
          v82 = *v76;
          if (*v76)
          {
            if (v82 < 0xF0)
            {
              if (v82 == 7)
              {
                v84 = vld1q_dup_f64(v78);
                v184 = v84;
                v185 = v84;
                v186 = v84;
                v187 = v84;
                v188 = v84;
                v189 = v84;
                v190 = v84;
                v191 = v84;
                v216 = v84;
                v217 = v84;
                v218 = v84;
                v219 = v84;
                v220 = v84;
                v221 = v84;
                v83 = 8;
                v222 = v84;
                v223 = v84;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v184, 512, v78, v82);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v184, 512, v78, v82, *(v80 + 52));
              v83 = 128;
            }
          }

          else
          {
            v83 = 0;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v223 = 0u;
          }

          v85 = &v78[v83];
          v86 = v76[1];
          if (v76[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 7)
              {
                v88 = vld1q_dup_f64(v85);
                v192 = v88;
                v193 = v88;
                v194 = v88;
                v195 = v88;
                v196 = v88;
                v197 = v88;
                v198 = v88;
                v199 = v88;
                v224 = v88;
                v225 = v88;
                v226 = v88;
                v227 = v88;
                v228 = v88;
                v229 = v88;
                v87 = 8;
                v230 = v88;
                v231 = v88;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v192, 512, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v192, 512, v85, v86, v81);
              v87 = 128;
            }
          }

          else
          {
            v87 = 0;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v227 = 0u;
            v228 = 0u;
            v229 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v89 = (v85 + v87);
          v90 = v76[2];
          if (v76[2])
          {
            if (v90 < 0xF0)
            {
              if (v90 == 7)
              {
                v92 = vld1q_dup_f64(v89);
                v248 = v92;
                v249 = v92;
                v250 = v92;
                v251 = v92;
                v252 = v92;
                v253 = v92;
                v254 = v92;
                v255 = v92;
                v280 = v92;
                v281 = v92;
                v282 = v92;
                v283 = v92;
                v284 = v92;
                v285 = v92;
                v286 = v92;
                v91 = 8;
                v287 = v92;
              }

              else
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 512, v89, v90);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v248, 512, v89, v90, v81);
              v91 = 128;
            }
          }

          else
          {
            v91 = 0;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
          }

          v93 = (v89 + v91);
          v94 = v76[3];
          if (v76[3])
          {
            if (v94 < 0xF0)
            {
              if (v94 == 7)
              {
                v96 = vld1q_dup_f64(v93);
                v256 = v96;
                v257 = v96;
                v258 = v96;
                v259 = v96;
                v260 = v96;
                v261 = v96;
                v262 = v96;
                v263 = v96;
                v288 = v96;
                v289 = v96;
                v290 = v96;
                v291 = v96;
                v292 = v96;
                v293 = v96;
                v294 = v96;
                v95 = 8;
                v295 = v96;
              }

              else
              {
                v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 512, v93, v94);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 512, v93, v94, v81);
              v95 = 128;
            }
          }

          else
          {
            v95 = 0;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v288 = 0u;
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
            v295 = 0u;
          }

          v97 = (v93 + v95);
          v98 = v76[4];
          if (v76[4])
          {
            if (v98 < 0xF0)
            {
              if (v98 == 7)
              {
                v100 = vld1q_dup_f64(v97);
                v200 = v100;
                v201 = v100;
                v202 = v100;
                v203 = v100;
                v204 = v100;
                v205 = v100;
                v206 = v100;
                v207 = v100;
                v232 = v100;
                v233 = v100;
                v234 = v100;
                v235 = v100;
                v236 = v100;
                v237 = v100;
                v99 = 8;
                v238 = v100;
                v239 = v100;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v200, 512, v97, v98);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v200, 512, v97, v98, v81);
              v99 = 128;
            }
          }

          else
          {
            v99 = 0;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v238 = 0u;
            v239 = 0u;
          }

          v101 = (v97 + v99);
          v102 = v76[5];
          if (v76[5])
          {
            if (v102 < 0xF0)
            {
              if (v102 == 7)
              {
                v104 = vld1q_dup_f64(v101);
                v208 = v104;
                v209 = v104;
                v210 = v104;
                v211 = v104;
                v212 = v104;
                v213 = v104;
                v214 = v104;
                v215 = v104;
                v240 = v104;
                v241 = v104;
                v242 = v104;
                v243 = v104;
                v244 = v104;
                v245 = v104;
                v103 = 8;
                v246 = v104;
                v247 = v104;
              }

              else
              {
                v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v208, 512, v101, v102);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v208, 512, v101, v102, v81);
              v103 = 128;
            }
          }

          else
          {
            v103 = 0;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v240 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v105 = (v101 + v103);
          v106 = v76[6];
          if (v76[6])
          {
            if (v106 < 0xF0)
            {
              if (v106 == 7)
              {
                v109 = vld1q_dup_f64(v105);
                v264 = v109;
                v265 = v109;
                v266 = v109;
                v267 = v109;
                v268 = v109;
                v269 = v109;
                v270 = v109;
                v271 = v109;
                v296 = v109;
                v297 = v109;
                v298 = v109;
                v299 = v109;
                v300 = v109;
                v301 = v109;
                v302 = v109;
                v107 = 8;
                v303 = v109;
                v108 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 512, v105, v106);
                v108 = v76[7];
                if (!v76[7])
                {
LABEL_142:
                  v278 = 0u;
                  v279 = 0u;
                  v276 = 0u;
                  v277 = 0u;
                  v274 = 0u;
                  v275 = 0u;
                  v272 = 0u;
                  v273 = 0u;
                  v304 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v16 = v158;
                  goto LABEL_144;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v264, 512, v105, v106, v81);
              v107 = 128;
              v108 = v76[7];
              if (!v76[7])
              {
                goto LABEL_142;
              }
            }
          }

          else
          {
            v107 = 0;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v296 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v108 = v76[7];
            if (!v76[7])
            {
              goto LABEL_142;
            }
          }

          v110 = (v105 + v107);
          if (v108 < 0xF0)
          {
            v16 = v158;
            if (v108 == 7)
            {
              v111 = vld1q_dup_f64(v110);
              v272 = v111;
              v273 = v111;
              v274 = v111;
              v275 = v111;
              v276 = v111;
              v277 = v111;
              v278 = v111;
              v279 = v111;
              v304 = v111;
              v305 = v111;
              v306 = v111;
              v307 = v111;
              v308 = v111;
              v309 = v111;
              v310 = v111;
              v311 = v111;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v272, 512, v110, v108);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v272, 512, v110, v108, v81);
            v16 = v158;
          }

LABEL_144:
          v79 = v42 + 1;
          v112 = v179;
          if (v179 && v180)
          {
            v113 = 0;
            v114 = v177 << 9;
            v115 = v178 << 6;
            v116 = &v184 + v114 + v115;
            v117 = v175;
            v118 = v176;
            v119 = v180 << 6;
            if (v119)
            {
              v120 = (v119 - 1) >> 32 == 0;
            }

            else
            {
              v120 = 0;
            }

            v121 = !v120;
            v123 = v116 < v175 + v176 * (v179 - 1) + v119 && v175 < &__dst[512 * v179 + 1536 + 512 * v177 + v119 + v115];
            v124 = v121 | (v176 < 0) | v123;
            v125 = &v185 + v114 + v115;
            v126 = (v175 + 16);
            do
            {
              v127 = v126;
              v128 = v125;
              v129 = v119;
              if (v124)
              {
                v130 = 0;
                do
                {
                  v116[v130] = *(v117 + v130);
                  ++v130;
                }

                while (v119 > v130);
              }

              else
              {
                do
                {
                  v131 = *v127;
                  *(v128 - 1) = *(v127 - 1);
                  *v128 = v131;
                  v128 += 2;
                  v127 += 2;
                  v129 -= 32;
                }

                while (v129);
              }

              ++v113;
              v125 += 512;
              v126 = (v126 + v118);
              v116 += 512;
              v117 += v118;
            }

            while (v113 != v112);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v184, 512, v173, v174, v181, v182, *(*(v169 + 208) + 52));
          if (v171)
          {
            goto LABEL_167;
          }

LABEL_26:
          v29 = v42 == v159 >> 3;
          v42 = v79;
          result = v169;
        }

        while (!v29);
        v29 = v25++ == v151;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v241 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v17 = a8 >> 2;
  v173 = a8 + a10 - 1;
  v175 = v173 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v194 = a1;
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
  v196 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v185 = result;
  if (v17 <= v175)
  {
    v184 = a7 + a9 - 1;
    v172 = a7 >> 3;
    if (a7 >> 3 <= v184 >> 3)
    {
      result = a1;
      v193 = (a5 - 1) >> 3;
      v169 = a5 - 1;
      v176 = (a5 - 1) & 7;
      v170 = (a6 - 1) & 3;
      v171 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v27.i8 = vcgt_u32(v26, 0xF00000007);
      v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v27.i8);
      v181 = v28;
      v182 = v28.i32[0] | v28.i32[1];
      v180 = v27.i64[0];
      v168 = 8 * v19 * v18;
      v183 = a7;
      do
      {
        v29 = (4 * v17) | 3;
        if (4 * v17 <= v192)
        {
          v30 = v192;
        }

        else
        {
          v30 = 4 * v17;
        }

        if (v173 < v29)
        {
          v29 = v173;
        }

        v191 = 4 * v17;
        v179 = v30 - 4 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v170;
        v178 = v32;
        v34 = v32 != 4;
        v35 = v172;
        v36 = v170 + 1;
        if (v17 != v171)
        {
          v36 = 4;
          v33 = v34;
        }

        v177 = v33;
        v189 = a3 + (v30 - v192) * a11;
        v190 = v36;
        v188 = v36;
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

          if (v184 < v38)
          {
            v38 = v184;
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
          if (v191 >= v192 && v37 >= a7)
          {
            v44 = v40 != v176;
            if (v35 != v193)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v177;
          }

          if (v185)
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
                  v68 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v65 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v65 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v65 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v68 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v67 = 0;
              v65 = 16;
              v68 = 16;
            }

            else
            {
              v68 = 0;
              if (v66 == 1024)
              {
                v67 = 0;
                v68 = 8;
                v65 = 16;
              }
            }

            v156 = (v65 >> 3) - 1;
            v157 = (v68 >> 2) - 1;
            if ((v67 & 1) != 0 || (v158 = 32 - __clz(~(-1 << -__clz(v156))), v159 = 32 - __clz(~(-1 << -__clz(v157))), !(v159 | v158)))
            {
              v167 = 0;
            }

            else
            {
              v160 = 0;
              v161 = 0;
              v162 = v35 & v156;
              v163 = v17 & v157;
              v164 = v159 != 0;
              v165 = v158 != 0;
              v166 = 1;
              do
              {
                --v159;
                if (v164)
                {
                  v161 |= (v166 & v163) << v160++;
                }

                else
                {
                  v159 = 0;
                }

                --v158;
                if (v165)
                {
                  v161 |= (v166 & v162) << v160++;
                }

                else
                {
                  v158 = 0;
                }

                v166 *= 2;
                --v160;
                v165 = v158 != 0;
                v164 = v159 != 0;
              }

              while (v158 | v159);
              v167 = v161 << 8;
              result = v194;
            }

            v52 = v167 + ((v37 / v65 + v191 / v68 * ((v65 + v169) / v65)) << 14);
          }

          else if (v182)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v180;
            v48 = BYTE4(v180);
            v50 = v181.i32[0];
            v51 = v181.i32[1];
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
                v46 |= (v47 & v35) << v45++;
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

          v57 = v56 + 3;
          if (v57 < 8)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
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
          v69 = (a4 + v64);
          v70 = v189 + 16 * (v39 - a7);
          v71 = (a2 + v52);
          __dst = (a2 + v52);
          if (v196)
          {
            v71 = v208;
            if (!(v43 & 1 | (v42 < 8u) | (v188 < 4)))
            {
              goto LABEL_85;
            }

            memcpy(v208, __dst, sizeof(v208));
            result = v194;
          }

          else if (!(v43 & 1 | (v42 < 8u) | (v188 < 4)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v42, v190, *(*(result + 208) + 52));
LABEL_86:
            a7 = v183;
            v72 = v35 + 1;
            if (v196)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v198 = v71;
          v206 = v42;
          v207 = v190;
          v202 = v179;
          v203 = v39 - v37;
          v199 = v69;
          v200 = v70;
          v201 = a11;
          v204 = v178;
          v205 = v41;
          if (v43)
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
              if (v75 == 63)
              {
                v76 = *v71;
                v27 = v71[1];
                v78 = v71[2];
                v79 = v71[3];
                v209 = *v71;
                v210 = v27;
                v217 = v78;
                v218 = v79;
                v77 = 64;
              }

              else if (v75 == 1)
              {
                v76 = vld1q_dup_s16(v71->i16);
                v209 = v76;
                v210 = v76;
                v217 = v76;
                v218 = v76;
                v77 = 2;
              }

              else
              {
                v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v209, 128, v71, v75, v28, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v209, 128, v71, v75, *(v73 + 52));
              v77 = 32;
            }
          }

          else
          {
            v77 = 0;
            v76.i64[0] = 0;
            v209 = 0u;
            v210 = 0u;
            v217 = 0u;
            v218 = 0u;
          }

          v80 = v71->i64 + v77;
          v81 = v69[1];
          if (v69[1])
          {
            if (v81 < 0xF0)
            {
              if (v81 == 63)
              {
                v82 = *v80;
                v27 = *(v80 + 16);
                v84 = *(v80 + 32);
                v85 = *(v80 + 48);
                v211 = *v80;
                v212 = v27;
                v219 = v84;
                v220 = v85;
                v83 = 64;
              }

              else if (v81 == 1)
              {
                v82 = vld1q_dup_s16(v80);
                v211 = v82;
                v212 = v82;
                v219 = v82;
                v220 = v82;
                v83 = 2;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v211, 128, v80, v81, *v76.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v211, 128, v80, v81, v74);
              v83 = 32;
            }
          }

          else
          {
            v83 = 0;
            v82.i64[0] = 0;
            v211 = 0u;
            v212 = 0u;
            v219 = 0u;
            v220 = 0u;
          }

          v86 = v80 + v83;
          v87 = v69[2];
          if (v69[2])
          {
            if (v87 < 0xF0)
            {
              if (v87 == 63)
              {
                v88 = *v86;
                v27 = *(v86 + 16);
                v90 = *(v86 + 32);
                v91 = *(v86 + 48);
                v225 = *v86;
                v226 = v27;
                v233 = v90;
                v234 = v91;
                v89 = 64;
              }

              else if (v87 == 1)
              {
                v88 = vld1q_dup_s16(v86);
                v225 = v88;
                v226 = v88;
                v233 = v88;
                v234 = v88;
                v89 = 2;
              }

              else
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 128, v86, v87, *v82.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 128, v86, v87, v74);
              v89 = 32;
            }
          }

          else
          {
            v89 = 0;
            v88.i64[0] = 0;
            v225 = 0u;
            v226 = 0u;
            v233 = 0u;
            v234 = 0u;
          }

          v92 = v86 + v89;
          v93 = v69[3];
          if (v69[3])
          {
            if (v93 < 0xF0)
            {
              if (v93 == 63)
              {
                v94 = *v92;
                v27 = *(v92 + 16);
                v96 = *(v92 + 32);
                v97 = *(v92 + 48);
                v227 = *v92;
                v228 = v27;
                v235 = v96;
                v236 = v97;
                v95 = 64;
              }

              else if (v93 == 1)
              {
                v94 = vld1q_dup_s16(v92);
                v227 = v94;
                v228 = v94;
                v235 = v94;
                v236 = v94;
                v95 = 2;
              }

              else
              {
                v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v227, 128, v92, v93, *v88.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v227, 128, v92, v93, v74);
              v95 = 32;
            }
          }

          else
          {
            v95 = 0;
            v94.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v235 = 0u;
            v236 = 0u;
          }

          v98 = v92 + v95;
          v99 = v69[4];
          if (v69[4])
          {
            if (v99 < 0xF0)
            {
              if (v99 == 63)
              {
                v100 = *v98;
                v27 = *(v98 + 16);
                v102 = *(v98 + 32);
                v103 = *(v98 + 48);
                v213 = *v98;
                v214 = v27;
                v221 = v102;
                v222 = v103;
                v101 = 64;
              }

              else if (v99 == 1)
              {
                v100 = vld1q_dup_s16(v98);
                v213 = v100;
                v214 = v100;
                v221 = v100;
                v222 = v100;
                v101 = 2;
              }

              else
              {
                v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v213, 128, v98, v99, *v94.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v213, 128, v98, v99, v74);
              v101 = 32;
            }
          }

          else
          {
            v101 = 0;
            v100.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v221 = 0u;
            v222 = 0u;
          }

          v104 = v98 + v101;
          v105 = v69[5];
          if (v69[5])
          {
            if (v105 < 0xF0)
            {
              if (v105 == 63)
              {
                v106 = *v104;
                v27 = *(v104 + 16);
                v108 = *(v104 + 32);
                v109 = *(v104 + 48);
                v215 = *v104;
                v216 = v27;
                v223 = v108;
                v224 = v109;
                v107 = 64;
              }

              else if (v105 == 1)
              {
                v106 = vld1q_dup_s16(v104);
                v215 = v106;
                v216 = v106;
                v223 = v106;
                v224 = v106;
                v107 = 2;
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v215, 128, v104, v105, *v100.i8, *v27.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v215, 128, v104, v105, v74);
              v107 = 32;
            }
          }

          else
          {
            v107 = 0;
            v106.i64[0] = 0;
            v215 = 0u;
            v216 = 0u;
            v223 = 0u;
            v224 = 0u;
          }

          v110 = v104 + v107;
          v111 = v69[6];
          if (v69[6])
          {
            if (v111 < 0xF0)
            {
              if (v111 == 63)
              {
                v112 = *v110;
                v27 = *(v110 + 16);
                v151 = *(v110 + 32);
                v152 = *(v110 + 48);
                v229 = *v110;
                v230 = v27;
                v237 = v151;
                v238 = v152;
                v113 = 64;
                v114 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v111 == 1)
              {
                v112 = vld1q_dup_s16(v110);
                v229 = v112;
                v230 = v112;
                v237 = v112;
                v238 = v112;
                v113 = 2;
                v114 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v229, 128, v110, v111, *v106.i8, *v27.i8);
                v114 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v231 = 0u;
                  v232 = 0u;
                  v239 = 0u;
                  v240 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v229, 128, v110, v111, v74);
              v113 = 32;
              v114 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v113 = 0;
            v112.i64[0] = 0;
            v229 = 0u;
            v230 = 0u;
            v237 = 0u;
            v238 = 0u;
            v114 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v115 = v110 + v113;
          if (v114 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 128, v115, v114, v74);
LABEL_149:
            a7 = v183;
LABEL_150:
            v72 = v35 + 1;
            v116 = v204;
            if (!v204)
            {
              goto LABEL_195;
            }

            goto LABEL_151;
          }

          a7 = v183;
          if (v114 == 63)
          {
            v153 = *(v115 + 16);
            v154 = *(v115 + 32);
            v155 = *(v115 + 48);
            v231 = *v115;
            v232 = v153;
            v239 = v154;
            v240 = v155;
            goto LABEL_150;
          }

          v72 = v35 + 1;
          if (v114 == 1)
          {
            v150 = vld1q_dup_s16(v115);
            v231 = v150;
            v232 = v150;
            v239 = v150;
            v240 = v150;
            v116 = v204;
            if (!v204)
            {
              goto LABEL_195;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 128, v115, v114, *v112.i8, *v27.i8);
            v116 = v204;
            if (!v204)
            {
              goto LABEL_195;
            }
          }

LABEL_151:
          v117 = v205;
          if (v205)
          {
            v118 = 0;
            v119 = v202 << 7;
            v120 = 16 * v203;
            v121 = &v209.i8[v119 + v120];
            v122 = v200;
            v123 = v201;
            v124 = 16 * v205;
            if (16 * v205)
            {
              v125 = (16 * v205 - 1) >> 32 == 0;
            }

            else
            {
              v125 = 0;
            }

            v126 = !v125;
            v128 = v121 < v200 + v201 * (v116 - 1) + 16 * v205 && v200 < &v208[128 * v116 + 384 + 128 * v202 + 16 * v205 + v120];
            v129 = v124 & 0x1FFFFFFE0;
            v130 = v126 | (v201 < 0) | v128;
            v131 = &v210.i8[v119 + v120];
            v132 = (v200 + 16);
            v133 = v121;
            v134 = v200;
            do
            {
              v135 = (v122 + v118 * v123);
              v136 = &v121[128 * v118];
              if (v130)
              {
                v137 = 0;
              }

              else
              {
                if (v117 == 1)
                {
                  v141 = 0;
LABEL_173:
                  v142 = -16 * v117 + v141;
                  v143 = (v134 + v141);
                  v144 = &v133[v141];
                  do
                  {
                    v145 = *v143++;
                    *v144 = v145;
                    v144 += 16;
                    v142 += 16;
                  }

                  while (v142);
                  goto LABEL_165;
                }

                v146 = v132;
                v147 = v131;
                v148 = v124 & 0x1FFFFFFE0;
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
                if (v124 == v129)
                {
                  goto LABEL_165;
                }

                v141 = v124 & 0x1FFFFFFE0;
                if (v117)
                {
                  goto LABEL_173;
                }

                v135 += v129;
                v136 += v129;
                v137 = v124 & 0xFFFFFFE0;
              }

              v138 = v137 + 1;
              do
              {
                v139 = *v135++;
                *v136++ = v139;
              }

              while (v124 > v138++);
LABEL_165:
              ++v118;
              v131 += 128;
              v132 = (v132 + v123);
              v134 += v123;
              v133 += 128;
            }

            while (v118 != v116);
          }

LABEL_195:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v209, 128, v198, v199, v206, v207, *(*(v194 + 208) + 52));
          if (v196)
          {
LABEL_26:
            memcpy(__dst, v71, 0x200uLL);
          }

LABEL_27:
          v21 = v35 == v184 >> 3;
          v35 = v72;
          result = v194;
        }

        while (!v21);
        v21 = v17++ == v175;
      }

      while (!v21);
    }
  }

  return result;
}