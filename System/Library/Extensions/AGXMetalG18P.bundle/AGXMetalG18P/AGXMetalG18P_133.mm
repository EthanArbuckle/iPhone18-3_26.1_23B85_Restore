void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v282 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 >> 4;
  v218 = a8 + a10 - 1;
  v220 = v218 >> 4;
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
  v233 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v220)
  {
    v231 = a7 + a9 - 1;
    if (a7 >> 4 <= v231 >> 4)
    {
      v239 = (a5 - 1) >> 4;
      v215 = a5 - 1;
      v223 = (a5 - 1) & 0xF;
      v216 = (a6 - 1) & 0xF;
      v217 = (a6 - 1) >> 4;
      v221 = a11;
      v222 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v26 = vcgt_u32(v25, 0x1F0000001FLL);
      *&v27 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *&v26);
      v229 = v27;
      v230 = v27 | DWORD1(v27);
      v228 = v26;
      v214 = 8 * v19 * v18;
      v224 = a8;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= a8)
        {
          v29 = a8;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v218 < v28)
        {
          v28 = v218;
        }

        v237 = 16 * v17;
        v227 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v216;
        v226 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v216 + 1;
        if (v17 != v217)
        {
          v35 = 16;
        }

        v238 = v35;
        if (v17 != v217)
        {
          v32 = v33;
        }

        v225 = v32;
        v236 = a2 + (v29 - a8) * a11;
        do
        {
          v40 = 16 * v34;
          v41 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v34;
          }

          if (v231 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v41 - v42 + 1;
          if (v34 == v239)
          {
            v45 = v223 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v237 >= a8 && v40 >= a7)
          {
            v47 = v43 != v223;
            if (v34 != v239)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v225;
          }

          if (isLevelTiled)
          {
            v68 = 0;
            v69 = v214 >> (*(a1 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v204 = (v68 >> 4) - 1;
            if (v70)
            {
              v205 = 0;
              if (v71)
              {
                goto LABEL_236;
              }

LABEL_225:
              v206 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v206 | v205)
              {
                goto LABEL_226;
              }

LABEL_237:
              v213 = 0;
            }

            else
            {
              v205 = 32 - __clz(~(-1 << -__clz(v204)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_225;
              }

LABEL_236:
              v206 = 0;
              if (!v205)
              {
                goto LABEL_237;
              }

LABEL_226:
              v207 = 0;
              v208 = 0;
              v209 = v34 & v204;
              v210 = v205 != 0;
              v211 = v206 != 0;
              v212 = 1;
              do
              {
                --v205;
                if (v210)
                {
                  v208 |= (v212 & v209) << v207++;
                }

                else
                {
                  v205 = 0;
                }

                --v206;
                if (v211)
                {
                  v208 |= (v212 & v17 & ((v72 >> 4) - 1)) << v207++;
                }

                else
                {
                  v206 = 0;
                }

                v212 *= 2;
                --v207;
                v211 = v206 != 0;
                v210 = v205 != 0;
              }

              while (v206 | v205);
              v213 = v208 << 8;
            }

            v55 = v213 + ((v40 / v68 + v237 / v72 * ((v68 + v215) / v68)) << 14);
            goto LABEL_55;
          }

          if (v230)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v228;
            v52 = BYTE4(v228);
            v54 = v229;
            v53 = HIDWORD(v229);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v34) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v17) << v48++;
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
            v55 = v49 << 8;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v59 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
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
              v63 |= (v66 & v34) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v17) << v62++;
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
LABEL_81:
          v73 = (a3 + v55);
          if (v233)
          {
            v74 = v73[13];
            v249[12] = v73[12];
            v249[13] = v74;
            v75 = v73[15];
            v249[14] = v73[14];
            v249[15] = v75;
            v76 = v73[9];
            v249[8] = v73[8];
            v249[9] = v76;
            v77 = v73[11];
            v249[10] = v73[10];
            v249[11] = v77;
            v78 = v73[5];
            v249[4] = v73[4];
            v249[5] = v78;
            v79 = v73[7];
            v249[6] = v73[6];
            v249[7] = v79;
            v80 = v73[1];
            v249[0] = *v73;
            v249[1] = v80;
            v27 = v73[2];
            v26 = v73[3];
            v73 = v249;
            v249[2] = v27;
            v249[3] = v26;
          }

          v81 = (a4 + v67);
          v82 = (v236 + v42 - a7);
          if (v46 & 1 | (v45 < 0x10u) || v238 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v73;
            v247 = v45;
            v248 = v238;
            v243 = v227;
            v244 = v42 - v40;
            block[6] = a4 + v67;
            v241 = v236 + v42 - a7;
            v242 = a11;
            v245 = v226;
            v246 = v44;
            if (v46)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v86 = *v81;
            if (v86 == 96)
            {
              *&v27 = vdup_lane_s8(*v73, 0);
              v250 = v27;
              v252 = v27;
              v254 = v27;
              v256 = v27;
              v87 = 1;
            }

            else if (v86 == 31)
            {
              v146 = *(v73 + 8);
              v147 = v73[1];
              v148 = *(v73 + 24);
              v149 = vuzp2_s16(*v73, v147);
              v250 = vuzp1_s16(*v73, v147);
              v252 = v149;
              *&v27 = vuzp1_s16(v146, v148);
              *&v26 = vuzp2_s16(v146, v148);
              v254 = v27;
              v256 = v26;
              v87 = 32;
            }

            else if (*v81)
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 16, v73, v86, *&v27, *&v26);
            }

            else
            {
              v87 = 0;
              v250 = 0;
              v252 = 0;
              v254 = 0;
              v256 = 0;
            }

            v150 = (v73 + v87);
            v151 = v81[1];
            if (v151 == 96)
            {
              *&v27 = vdup_lane_s8(*v150, 0);
              v258 = v27;
              v260 = v27;
              v262 = v27;
              v264 = v27;
              v152 = 1;
            }

            else if (v151 == 31)
            {
              v153 = v150[1];
              v154 = v150[2];
              v155 = v150[3];
              v156 = vuzp2_s16(*v150, v154);
              v258 = vuzp1_s16(*v150, v154);
              v260 = v156;
              *&v27 = vuzp1_s16(v153, v155);
              *&v26 = vuzp2_s16(v153, v155);
              v262 = v27;
              v264 = v26;
              v152 = 32;
            }

            else if (v81[1])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 16, v150, v151, *&v27, *&v26);
            }

            else
            {
              v152 = 0;
              v258 = 0;
              v260 = 0;
              v262 = 0;
              v264 = 0;
            }

            v157 = (v150 + v152);
            v158 = v81[2];
            if (v158 == 96)
            {
              *&v27 = vdup_lane_s8(*v157, 0);
              v251 = v27;
              v253 = v27;
              v255 = v27;
              v257 = v27;
              v159 = 1;
            }

            else if (v158 == 31)
            {
              v160 = v157[1];
              v161 = v157[2];
              v162 = v157[3];
              v163 = vuzp2_s16(*v157, v161);
              v251 = vuzp1_s16(*v157, v161);
              v253 = v163;
              *&v27 = vuzp1_s16(v160, v162);
              *&v26 = vuzp2_s16(v160, v162);
              v255 = v27;
              v257 = v26;
              v159 = 32;
            }

            else if (v81[2])
            {
              v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 16, v157, v158, *&v27, *&v26);
            }

            else
            {
              v159 = 0;
              v251 = 0;
              v253 = 0;
              v255 = 0;
              v257 = 0;
            }

            v164 = (v157 + v159);
            v165 = v81[3];
            if (v165 == 96)
            {
              *&v27 = vdup_lane_s8(*v164, 0);
              v259 = v27;
              v261 = v27;
              v263 = v27;
              v265 = v27;
              v166 = 1;
            }

            else if (v165 == 31)
            {
              v167 = v164[1];
              v168 = v164[2];
              v169 = v164[3];
              v170 = vuzp2_s16(*v164, v168);
              v259 = vuzp1_s16(*v164, v168);
              v261 = v170;
              *&v27 = vuzp1_s16(v167, v169);
              *&v26 = vuzp2_s16(v167, v169);
              v263 = v27;
              v265 = v26;
              v166 = 32;
            }

            else if (v81[3])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 16, v164, v165, *&v27, *&v26);
            }

            else
            {
              v166 = 0;
              v259 = 0;
              v261 = 0;
              v263 = 0;
              v265 = 0;
            }

            v171 = (v164 + v166);
            v172 = v81[4];
            if (v172 == 96)
            {
              *&v27 = vdup_lane_s8(*v171, 0);
              v266 = v27;
              v268 = v27;
              v270 = v27;
              v272 = v27;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v174 = v171[1];
              v175 = v171[2];
              v176 = v171[3];
              v177 = vuzp2_s16(*v171, v175);
              v266 = vuzp1_s16(*v171, v175);
              v268 = v177;
              *&v27 = vuzp1_s16(v174, v176);
              *&v26 = vuzp2_s16(v174, v176);
              v270 = v27;
              v272 = v26;
              v173 = 32;
            }

            else if (v81[4])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 16, v171, v172, *&v27, *&v26);
            }

            else
            {
              v173 = 0;
              v266 = 0;
              v268 = 0;
              v270 = 0;
              v272 = 0;
            }

            v178 = (v171 + v173);
            v179 = v81[5];
            if (v179 == 96)
            {
              *&v27 = vdup_lane_s8(*v178, 0);
              v274 = v27;
              v276 = v27;
              v278 = v27;
              v280 = v27;
              v180 = 1;
            }

            else if (v179 == 31)
            {
              v181 = v178[1];
              v182 = v178[2];
              v183 = v178[3];
              v184 = vuzp2_s16(*v178, v182);
              v274 = vuzp1_s16(*v178, v182);
              v276 = v184;
              *&v27 = vuzp1_s16(v181, v183);
              *&v26 = vuzp2_s16(v181, v183);
              v278 = v27;
              v280 = v26;
              v180 = 32;
            }

            else if (v81[5])
            {
              v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v274, 16, v178, v179, *&v27, *&v26);
            }

            else
            {
              v180 = 0;
              v274 = 0;
              v276 = 0;
              v278 = 0;
              v280 = 0;
            }

            v185 = (v178 + v180);
            v186 = v81[6];
            if (v186 == 96)
            {
              *&v27 = vdup_lane_s8(*v185, 0);
              v267 = v27;
              v269 = v27;
              v271 = v27;
              v273 = v27;
              v187 = 1;
            }

            else if (v186 == 31)
            {
              v188 = v185[1];
              v189 = v185[2];
              v190 = v185[3];
              v191 = vuzp2_s16(*v185, v189);
              v267 = vuzp1_s16(*v185, v189);
              v269 = v191;
              *&v27 = vuzp1_s16(v188, v190);
              *&v26 = vuzp2_s16(v188, v190);
              v271 = v27;
              v273 = v26;
              v187 = 32;
            }

            else if (v81[6])
            {
              v187 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 16, v185, v186, *&v27, *&v26);
            }

            else
            {
              v187 = 0;
              v267 = 0;
              v269 = 0;
              v271 = 0;
              v273 = 0;
            }

            v192 = (v185 + v187);
            v193 = v81[7];
            if (v193 == 96)
            {
              *&v27 = vdup_lane_s8(*v192, 0);
              v275 = v27;
              v277 = v27;
              v279 = v27;
              v281 = v27;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else if (v193 == 31)
            {
              v195 = v192[1];
              v196 = v192[2];
              v197 = v192[3];
              v198 = vuzp2_s16(*v192, v196);
              v275 = vuzp1_s16(*v192, v196);
              v277 = v198;
              *&v27 = vuzp1_s16(v195, v197);
              *&v26 = vuzp2_s16(v195, v197);
              v279 = v27;
              v281 = v26;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v275, 16, v192, v193, *&v27, *&v26);
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v275 = 0;
              v277 = 0;
              v279 = 0;
              v281 = 0;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            if (v246)
            {
              v199 = 0;
              v200 = &v250 + 16 * v243 + v244;
              v201 = 1;
              do
              {
                if (v201)
                {
                  v202 = 0;
                  v203 = v241 + v242 * v199;
                  do
                  {
                    *(v203 + v202) = v200[v202];
                    v201 = v246;
                    ++v202;
                  }

                  while (v246 > v202);
                  v194 = v245;
                }

                ++v199;
                v200 += 16;
              }

              while (v199 < v194);
            }
          }

          else
          {
            v83 = *v81;
            if (v83 == 96)
            {
              *&v27 = vdup_lane_s8(*v73, 0);
              *v82 = v27;
              *(v82 + a11) = v27;
              v84 = 2 * a11;
              *(v82 + 2 * a11) = v27;
              *(v82 + 3 * a11) = v27;
              v85 = 1;
            }

            else
            {
              v84 = 2 * a11;
              if (v83 == 31)
              {
                v88 = *v73;
                *&v26 = *(v73 + 1);
                v89 = v73[1];
                v90 = *(v73 + 24);
                *v82 = vuzp1_s16(*v73, v89);
                *(v82 + a11) = vuzp2_s16(v88, v89);
                v91 = (v82 + 2 * a11);
                *v91 = vuzp1_s16(*&v26, v90);
                *&v27 = vuzp2_s16(*&v26, v90);
                *(v91 + a11) = v27;
                v85 = 32;
              }

              else if (*v81)
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v236 + v42 - a7), a11, v73, v83, *&v27, *&v26);
                v84 = 2 * a11;
              }

              else
              {
                v85 = 0;
                *v82 = 0;
                *(v82 + a11) = 0;
                *(v82 + 2 * a11) = 0;
                *(v82 + 3 * a11) = 0;
              }
            }

            v92 = (v73 + v85);
            v93 = (v82 + v222);
            v94 = v81[1];
            if (v94 == 96)
            {
              *&v27 = vdup_lane_s8(*v92, 0);
              *v93 = v27;
              *(v93 + a11) = v27;
              *(v93 + v84) = v27;
              *(v93 + 3 * a11) = v27;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v96 = *v92;
              *&v26 = v92[1];
              v97 = v92[2];
              v98 = v92[3];
              *v93 = vuzp1_s16(*v92, v97);
              *(v93 + a11) = vuzp2_s16(v96, v97);
              v99 = (v93 + v84);
              *v99 = vuzp1_s16(*&v26, v98);
              *&v27 = vuzp2_s16(*&v26, v98);
              *(v99 + a11) = v27;
              v95 = 32;
            }

            else if (v81[1])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v82 + v222), a11, v92, v94, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v95 = 0;
              *v93 = 0;
              *(v93 + a11) = 0;
              *(v93 + v84) = 0;
              *(v93 + 3 * a11) = 0;
            }

            v100 = (v92 + v95);
            v101 = v82 + 1;
            v102 = v81[2];
            if (v102 == 96)
            {
              *&v27 = vdup_lane_s8(*v100, 0);
              *v101 = v27;
              *(v101 + a11) = v27;
              *(v101 + v84) = v27;
              *(v101 + 3 * a11) = v27;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v104 = *v100;
              *&v26 = v100[1];
              v105 = v100[2];
              v106 = v100[3];
              *v101 = vuzp1_s16(*v100, v105);
              *(v101 + a11) = vuzp2_s16(v104, v105);
              v107 = (v101 + v84);
              *v107 = vuzp1_s16(*&v26, v106);
              *&v27 = vuzp2_s16(*&v26, v106);
              *(v107 + a11) = v27;
              v103 = 32;
            }

            else if (v81[2])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *&v27, *&v26);
              v84 = 2 * a11;
              v103 = v108;
            }

            else
            {
              v103 = 0;
              *v101 = 0;
              *(v101 + a11) = 0;
              *(v101 + v84) = 0;
              *(v101 + 3 * a11) = 0;
            }

            v109 = (v100 + v103);
            v110 = v93 + 1;
            v111 = v81[3];
            if (v111 == 96)
            {
              *&v27 = vdup_lane_s8(*v109, 0);
              *v110 = v27;
              *(v110 + a11) = v27;
              *(v110 + v84) = v27;
              *(v110 + 3 * a11) = v27;
              v112 = 1;
            }

            else if (v111 == 31)
            {
              v113 = *v109;
              *&v26 = v109[1];
              v114 = v109[2];
              v115 = v109[3];
              *v110 = vuzp1_s16(*v109, v114);
              *(v110 + a11) = vuzp2_s16(v113, v114);
              v116 = (v110 + v84);
              *v116 = vuzp1_s16(*&v26, v115);
              *&v27 = vuzp2_s16(*&v26, v115);
              *(v116 + a11) = v27;
              v112 = 32;
            }

            else if (v81[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, a11, v109, v111, *&v27, *&v26);
              v84 = 2 * a11;
              v112 = v117;
            }

            else
            {
              v112 = 0;
              *v110 = 0;
              *(v110 + a11) = 0;
              *(v110 + v84) = 0;
              *(v110 + 3 * a11) = 0;
            }

            v118 = (v109 + v112);
            v119 = &v82[v221];
            v120 = v81[4];
            if (v120 == 96)
            {
              *&v27 = vdup_lane_s8(*v118, 0);
              *v119 = v27;
              *(v119 + a11) = v27;
              *(v119 + v84) = v27;
              *(v119 + 3 * a11) = v27;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v122 = *v118;
              *&v26 = v118[1];
              v123 = v118[2];
              v124 = v118[3];
              *v119 = vuzp1_s16(*v118, v123);
              *(v119 + a11) = vuzp2_s16(v122, v123);
              v125 = (v119 + v84);
              *v125 = vuzp1_s16(*&v26, v124);
              *&v27 = vuzp2_s16(*&v26, v124);
              *(v125 + a11) = v27;
              v121 = 32;
            }

            else if (v81[4])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v82[v221], a11, v118, v120, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v121 = 0;
              *v119 = 0;
              *(v119 + a11) = 0;
              *(v119 + v84) = 0;
              *(v119 + 3 * a11) = 0;
            }

            v126 = (v118 + v121);
            v127 = (v82 + 12 * a11);
            v128 = v81[5];
            if (v128 == 96)
            {
              *&v27 = vdup_lane_s8(*v126, 0);
              *v127 = v27;
              *(v127 + a11) = v27;
              *(v127 + v84) = v27;
              *(v127 + 3 * a11) = v27;
              v129 = 1;
            }

            else if (v128 == 31)
            {
              v130 = *v126;
              *&v26 = v126[1];
              v131 = v126[2];
              v132 = v126[3];
              *v127 = vuzp1_s16(*v126, v131);
              *(v127 + a11) = vuzp2_s16(v130, v131);
              v133 = (v127 + v84);
              *v133 = vuzp1_s16(*&v26, v132);
              *&v27 = vuzp2_s16(*&v26, v132);
              *(v133 + a11) = v27;
              v129 = 32;
            }

            else if (v81[5])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, a11, v126, v128, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v129 = 0;
              *v127 = 0;
              *(v127 + a11) = 0;
              *(v127 + v84) = 0;
              *(v127 + 3 * a11) = 0;
            }

            v134 = (v126 + v129);
            v135 = v119 + 1;
            v136 = v81[6];
            if (v136 == 96)
            {
              *&v27 = vdup_lane_s8(*v134, 0);
              *v135 = v27;
              *(v135 + a11) = v27;
              *(v135 + v84) = v27;
              *(v135 + 3 * a11) = v27;
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v138 = *v134;
              *&v26 = v134[1];
              v139 = v134[2];
              v140 = v134[3];
              *v135 = vuzp1_s16(*v134, v139);
              *(v135 + a11) = vuzp2_s16(v138, v139);
              v141 = (v135 + v84);
              *v141 = vuzp1_s16(*&v26, v140);
              *&v27 = vuzp2_s16(*&v26, v140);
              *(v141 + a11) = v27;
              v137 = 32;
            }

            else if (v81[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *&v27, *&v26);
              v84 = 2 * a11;
              v137 = v142;
            }

            else
            {
              v137 = 0;
              *v135 = 0;
              *(v135 + a11) = 0;
              *(v135 + v84) = 0;
              *(v135 + 3 * a11) = 0;
            }

            v143 = (v134 + v137);
            v144 = v127 + 1;
            v145 = v81[7];
            if (v145 == 96)
            {
              *&v27 = vdup_lane_s8(*v143, 0);
              *v144 = v27;
              *(v144 + a11) = v27;
              *(v144 + v84) = v27;
              *(v144 + 3 * a11) = v27;
              a8 = v224;
            }

            else
            {
              a8 = v224;
              if (v145 == 31)
              {
                v36 = *v143;
                *&v26 = v143[1];
                v37 = v143[2];
                v38 = v143[3];
                *v144 = vuzp1_s16(*v143, v37);
                *(v144 + a11) = vuzp2_s16(v36, v37);
                v39 = (v144 + v84);
                *v39 = vuzp1_s16(*&v26, v38);
                *&v27 = vuzp2_s16(*&v26, v38);
                *(v39 + a11) = v27;
              }

              else if (v81[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, a11, v143, v145, *&v27, *&v26);
              }

              else
              {
                *v144 = 0;
                *(v144 + a11) = 0;
                *(v144 + v84) = 0;
                *(v144 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v21 = v34++ == v231 >> 4;
        }

        while (!v21);
        v21 = v17++ == v220;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v282 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 >> 4;
  v218 = a8 + a10 - 1;
  v220 = v218 >> 4;
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
  v233 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v220)
  {
    v231 = a7 + a9 - 1;
    if (a7 >> 4 <= v231 >> 4)
    {
      v239 = (a5 - 1) >> 4;
      v215 = a5 - 1;
      v223 = (a5 - 1) & 0xF;
      v216 = (a6 - 1) & 0xF;
      v217 = (a6 - 1) >> 4;
      v221 = a11;
      v222 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v26 = vcgt_u32(v25, 0x1F0000001FLL);
      *&v27 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *&v26);
      v229 = v27;
      v230 = v27 | DWORD1(v27);
      v228 = v26;
      v214 = 8 * v19 * v18;
      v224 = a8;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= a8)
        {
          v29 = a8;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v218 < v28)
        {
          v28 = v218;
        }

        v237 = 16 * v17;
        v227 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v216;
        v226 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v216 + 1;
        if (v17 != v217)
        {
          v35 = 16;
        }

        v238 = v35;
        if (v17 != v217)
        {
          v32 = v33;
        }

        v225 = v32;
        v236 = a2 + (v29 - a8) * a11;
        do
        {
          v40 = 16 * v34;
          v41 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v34;
          }

          if (v231 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v41 - v42 + 1;
          if (v34 == v239)
          {
            v45 = v223 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v237 >= a8 && v40 >= a7)
          {
            v47 = v43 != v223;
            if (v34 != v239)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v225;
          }

          if (isLevelTiled)
          {
            v68 = 0;
            v69 = v214 >> (*(a1 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v204 = (v68 >> 4) - 1;
            if (v70)
            {
              v205 = 0;
              if (v71)
              {
                goto LABEL_236;
              }

LABEL_225:
              v206 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v206 | v205)
              {
                goto LABEL_226;
              }

LABEL_237:
              v213 = 0;
            }

            else
            {
              v205 = 32 - __clz(~(-1 << -__clz(v204)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_225;
              }

LABEL_236:
              v206 = 0;
              if (!v205)
              {
                goto LABEL_237;
              }

LABEL_226:
              v207 = 0;
              v208 = 0;
              v209 = v34 & v204;
              v210 = v205 != 0;
              v211 = v206 != 0;
              v212 = 1;
              do
              {
                --v205;
                if (v210)
                {
                  v208 |= (v212 & v209) << v207++;
                }

                else
                {
                  v205 = 0;
                }

                --v206;
                if (v211)
                {
                  v208 |= (v212 & v17 & ((v72 >> 4) - 1)) << v207++;
                }

                else
                {
                  v206 = 0;
                }

                v212 *= 2;
                --v207;
                v211 = v206 != 0;
                v210 = v205 != 0;
              }

              while (v206 | v205);
              v213 = v208 << 8;
            }

            v55 = v213 + ((v40 / v68 + v237 / v72 * ((v68 + v215) / v68)) << 14);
            goto LABEL_55;
          }

          if (v230)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v228;
            v52 = BYTE4(v228);
            v54 = v229;
            v53 = HIDWORD(v229);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v34) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v17) << v48++;
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
            v55 = v49 << 8;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v59 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
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
              v63 |= (v66 & v34) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v17) << v62++;
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
LABEL_81:
          v73 = (a3 + v55);
          if (v233)
          {
            v74 = v73[13];
            v249[12] = v73[12];
            v249[13] = v74;
            v75 = v73[15];
            v249[14] = v73[14];
            v249[15] = v75;
            v76 = v73[9];
            v249[8] = v73[8];
            v249[9] = v76;
            v77 = v73[11];
            v249[10] = v73[10];
            v249[11] = v77;
            v78 = v73[5];
            v249[4] = v73[4];
            v249[5] = v78;
            v79 = v73[7];
            v249[6] = v73[6];
            v249[7] = v79;
            v80 = v73[1];
            v249[0] = *v73;
            v249[1] = v80;
            v27 = v73[2];
            v26 = v73[3];
            v73 = v249;
            v249[2] = v27;
            v249[3] = v26;
          }

          v81 = (a4 + v67);
          v82 = (v236 + v42 - a7);
          if (v46 & 1 | (v45 < 0x10u) || v238 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v73;
            v247 = v45;
            v248 = v238;
            v243 = v227;
            v244 = v42 - v40;
            block[6] = a4 + v67;
            v241 = v236 + v42 - a7;
            v242 = a11;
            v245 = v226;
            v246 = v44;
            if (v46)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v86 = *v81;
            if (v86 == 96)
            {
              *&v27 = vdup_lane_s8(*v73, 0);
              v250 = v27;
              v252 = v27;
              v254 = v27;
              v256 = v27;
              v87 = 1;
            }

            else if (v86 == 31)
            {
              v146 = *(v73 + 8);
              v147 = v73[1];
              v148 = *(v73 + 24);
              v149 = vuzp2_s16(*v73, v147);
              v250 = vuzp1_s16(*v73, v147);
              v252 = v149;
              *&v27 = vuzp1_s16(v146, v148);
              *&v26 = vuzp2_s16(v146, v148);
              v254 = v27;
              v256 = v26;
              v87 = 32;
            }

            else if (*v81)
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 16, v73, v86, *&v27, *&v26);
            }

            else
            {
              v87 = 0;
              v250 = 0;
              v252 = 0;
              v254 = 0;
              v256 = 0;
            }

            v150 = (v73 + v87);
            v151 = v81[1];
            if (v151 == 96)
            {
              *&v27 = vdup_lane_s8(*v150, 0);
              v258 = v27;
              v260 = v27;
              v262 = v27;
              v264 = v27;
              v152 = 1;
            }

            else if (v151 == 31)
            {
              v153 = v150[1];
              v154 = v150[2];
              v155 = v150[3];
              v156 = vuzp2_s16(*v150, v154);
              v258 = vuzp1_s16(*v150, v154);
              v260 = v156;
              *&v27 = vuzp1_s16(v153, v155);
              *&v26 = vuzp2_s16(v153, v155);
              v262 = v27;
              v264 = v26;
              v152 = 32;
            }

            else if (v81[1])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 16, v150, v151, *&v27, *&v26);
            }

            else
            {
              v152 = 0;
              v258 = 0;
              v260 = 0;
              v262 = 0;
              v264 = 0;
            }

            v157 = (v150 + v152);
            v158 = v81[2];
            if (v158 == 96)
            {
              *&v27 = vdup_lane_s8(*v157, 0);
              v251 = v27;
              v253 = v27;
              v255 = v27;
              v257 = v27;
              v159 = 1;
            }

            else if (v158 == 31)
            {
              v160 = v157[1];
              v161 = v157[2];
              v162 = v157[3];
              v163 = vuzp2_s16(*v157, v161);
              v251 = vuzp1_s16(*v157, v161);
              v253 = v163;
              *&v27 = vuzp1_s16(v160, v162);
              *&v26 = vuzp2_s16(v160, v162);
              v255 = v27;
              v257 = v26;
              v159 = 32;
            }

            else if (v81[2])
            {
              v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 16, v157, v158, *&v27, *&v26);
            }

            else
            {
              v159 = 0;
              v251 = 0;
              v253 = 0;
              v255 = 0;
              v257 = 0;
            }

            v164 = (v157 + v159);
            v165 = v81[3];
            if (v165 == 96)
            {
              *&v27 = vdup_lane_s8(*v164, 0);
              v259 = v27;
              v261 = v27;
              v263 = v27;
              v265 = v27;
              v166 = 1;
            }

            else if (v165 == 31)
            {
              v167 = v164[1];
              v168 = v164[2];
              v169 = v164[3];
              v170 = vuzp2_s16(*v164, v168);
              v259 = vuzp1_s16(*v164, v168);
              v261 = v170;
              *&v27 = vuzp1_s16(v167, v169);
              *&v26 = vuzp2_s16(v167, v169);
              v263 = v27;
              v265 = v26;
              v166 = 32;
            }

            else if (v81[3])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 16, v164, v165, *&v27, *&v26);
            }

            else
            {
              v166 = 0;
              v259 = 0;
              v261 = 0;
              v263 = 0;
              v265 = 0;
            }

            v171 = (v164 + v166);
            v172 = v81[4];
            if (v172 == 96)
            {
              *&v27 = vdup_lane_s8(*v171, 0);
              v266 = v27;
              v268 = v27;
              v270 = v27;
              v272 = v27;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v174 = v171[1];
              v175 = v171[2];
              v176 = v171[3];
              v177 = vuzp2_s16(*v171, v175);
              v266 = vuzp1_s16(*v171, v175);
              v268 = v177;
              *&v27 = vuzp1_s16(v174, v176);
              *&v26 = vuzp2_s16(v174, v176);
              v270 = v27;
              v272 = v26;
              v173 = 32;
            }

            else if (v81[4])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 16, v171, v172, *&v27, *&v26);
            }

            else
            {
              v173 = 0;
              v266 = 0;
              v268 = 0;
              v270 = 0;
              v272 = 0;
            }

            v178 = (v171 + v173);
            v179 = v81[5];
            if (v179 == 96)
            {
              *&v27 = vdup_lane_s8(*v178, 0);
              v274 = v27;
              v276 = v27;
              v278 = v27;
              v280 = v27;
              v180 = 1;
            }

            else if (v179 == 31)
            {
              v181 = v178[1];
              v182 = v178[2];
              v183 = v178[3];
              v184 = vuzp2_s16(*v178, v182);
              v274 = vuzp1_s16(*v178, v182);
              v276 = v184;
              *&v27 = vuzp1_s16(v181, v183);
              *&v26 = vuzp2_s16(v181, v183);
              v278 = v27;
              v280 = v26;
              v180 = 32;
            }

            else if (v81[5])
            {
              v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v274, 16, v178, v179, *&v27, *&v26);
            }

            else
            {
              v180 = 0;
              v274 = 0;
              v276 = 0;
              v278 = 0;
              v280 = 0;
            }

            v185 = (v178 + v180);
            v186 = v81[6];
            if (v186 == 96)
            {
              *&v27 = vdup_lane_s8(*v185, 0);
              v267 = v27;
              v269 = v27;
              v271 = v27;
              v273 = v27;
              v187 = 1;
            }

            else if (v186 == 31)
            {
              v188 = v185[1];
              v189 = v185[2];
              v190 = v185[3];
              v191 = vuzp2_s16(*v185, v189);
              v267 = vuzp1_s16(*v185, v189);
              v269 = v191;
              *&v27 = vuzp1_s16(v188, v190);
              *&v26 = vuzp2_s16(v188, v190);
              v271 = v27;
              v273 = v26;
              v187 = 32;
            }

            else if (v81[6])
            {
              v187 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 16, v185, v186, *&v27, *&v26);
            }

            else
            {
              v187 = 0;
              v267 = 0;
              v269 = 0;
              v271 = 0;
              v273 = 0;
            }

            v192 = (v185 + v187);
            v193 = v81[7];
            if (v193 == 96)
            {
              *&v27 = vdup_lane_s8(*v192, 0);
              v275 = v27;
              v277 = v27;
              v279 = v27;
              v281 = v27;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else if (v193 == 31)
            {
              v195 = v192[1];
              v196 = v192[2];
              v197 = v192[3];
              v198 = vuzp2_s16(*v192, v196);
              v275 = vuzp1_s16(*v192, v196);
              v277 = v198;
              *&v27 = vuzp1_s16(v195, v197);
              *&v26 = vuzp2_s16(v195, v197);
              v279 = v27;
              v281 = v26;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v275, 16, v192, v193, *&v27, *&v26);
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v275 = 0;
              v277 = 0;
              v279 = 0;
              v281 = 0;
              v194 = v245;
              if (!v245)
              {
                goto LABEL_29;
              }
            }

            if (v246)
            {
              v199 = 0;
              v200 = &v250 + 16 * v243 + v244;
              v201 = 1;
              do
              {
                if (v201)
                {
                  v202 = 0;
                  v203 = v241 + v242 * v199;
                  do
                  {
                    *(v203 + v202) = v200[v202];
                    v201 = v246;
                    ++v202;
                  }

                  while (v246 > v202);
                  v194 = v245;
                }

                ++v199;
                v200 += 16;
              }

              while (v199 < v194);
            }
          }

          else
          {
            v83 = *v81;
            if (v83 == 96)
            {
              *&v27 = vdup_lane_s8(*v73, 0);
              *v82 = v27;
              *(v82 + a11) = v27;
              v84 = 2 * a11;
              *(v82 + 2 * a11) = v27;
              *(v82 + 3 * a11) = v27;
              v85 = 1;
            }

            else
            {
              v84 = 2 * a11;
              if (v83 == 31)
              {
                v88 = *v73;
                *&v26 = *(v73 + 1);
                v89 = v73[1];
                v90 = *(v73 + 24);
                *v82 = vuzp1_s16(*v73, v89);
                *(v82 + a11) = vuzp2_s16(v88, v89);
                v91 = (v82 + 2 * a11);
                *v91 = vuzp1_s16(*&v26, v90);
                *&v27 = vuzp2_s16(*&v26, v90);
                *(v91 + a11) = v27;
                v85 = 32;
              }

              else if (*v81)
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v236 + v42 - a7), a11, v73, v83, *&v27, *&v26);
                v84 = 2 * a11;
              }

              else
              {
                v85 = 0;
                *v82 = 0;
                *(v82 + a11) = 0;
                *(v82 + 2 * a11) = 0;
                *(v82 + 3 * a11) = 0;
              }
            }

            v92 = (v73 + v85);
            v93 = (v82 + v222);
            v94 = v81[1];
            if (v94 == 96)
            {
              *&v27 = vdup_lane_s8(*v92, 0);
              *v93 = v27;
              *(v93 + a11) = v27;
              *(v93 + v84) = v27;
              *(v93 + 3 * a11) = v27;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v96 = *v92;
              *&v26 = v92[1];
              v97 = v92[2];
              v98 = v92[3];
              *v93 = vuzp1_s16(*v92, v97);
              *(v93 + a11) = vuzp2_s16(v96, v97);
              v99 = (v93 + v84);
              *v99 = vuzp1_s16(*&v26, v98);
              *&v27 = vuzp2_s16(*&v26, v98);
              *(v99 + a11) = v27;
              v95 = 32;
            }

            else if (v81[1])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v82 + v222), a11, v92, v94, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v95 = 0;
              *v93 = 0;
              *(v93 + a11) = 0;
              *(v93 + v84) = 0;
              *(v93 + 3 * a11) = 0;
            }

            v100 = (v92 + v95);
            v101 = v82 + 1;
            v102 = v81[2];
            if (v102 == 96)
            {
              *&v27 = vdup_lane_s8(*v100, 0);
              *v101 = v27;
              *(v101 + a11) = v27;
              *(v101 + v84) = v27;
              *(v101 + 3 * a11) = v27;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v104 = *v100;
              *&v26 = v100[1];
              v105 = v100[2];
              v106 = v100[3];
              *v101 = vuzp1_s16(*v100, v105);
              *(v101 + a11) = vuzp2_s16(v104, v105);
              v107 = (v101 + v84);
              *v107 = vuzp1_s16(*&v26, v106);
              *&v27 = vuzp2_s16(*&v26, v106);
              *(v107 + a11) = v27;
              v103 = 32;
            }

            else if (v81[2])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *&v27, *&v26);
              v84 = 2 * a11;
              v103 = v108;
            }

            else
            {
              v103 = 0;
              *v101 = 0;
              *(v101 + a11) = 0;
              *(v101 + v84) = 0;
              *(v101 + 3 * a11) = 0;
            }

            v109 = (v100 + v103);
            v110 = v93 + 1;
            v111 = v81[3];
            if (v111 == 96)
            {
              *&v27 = vdup_lane_s8(*v109, 0);
              *v110 = v27;
              *(v110 + a11) = v27;
              *(v110 + v84) = v27;
              *(v110 + 3 * a11) = v27;
              v112 = 1;
            }

            else if (v111 == 31)
            {
              v113 = *v109;
              *&v26 = v109[1];
              v114 = v109[2];
              v115 = v109[3];
              *v110 = vuzp1_s16(*v109, v114);
              *(v110 + a11) = vuzp2_s16(v113, v114);
              v116 = (v110 + v84);
              *v116 = vuzp1_s16(*&v26, v115);
              *&v27 = vuzp2_s16(*&v26, v115);
              *(v116 + a11) = v27;
              v112 = 32;
            }

            else if (v81[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, a11, v109, v111, *&v27, *&v26);
              v84 = 2 * a11;
              v112 = v117;
            }

            else
            {
              v112 = 0;
              *v110 = 0;
              *(v110 + a11) = 0;
              *(v110 + v84) = 0;
              *(v110 + 3 * a11) = 0;
            }

            v118 = (v109 + v112);
            v119 = &v82[v221];
            v120 = v81[4];
            if (v120 == 96)
            {
              *&v27 = vdup_lane_s8(*v118, 0);
              *v119 = v27;
              *(v119 + a11) = v27;
              *(v119 + v84) = v27;
              *(v119 + 3 * a11) = v27;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v122 = *v118;
              *&v26 = v118[1];
              v123 = v118[2];
              v124 = v118[3];
              *v119 = vuzp1_s16(*v118, v123);
              *(v119 + a11) = vuzp2_s16(v122, v123);
              v125 = (v119 + v84);
              *v125 = vuzp1_s16(*&v26, v124);
              *&v27 = vuzp2_s16(*&v26, v124);
              *(v125 + a11) = v27;
              v121 = 32;
            }

            else if (v81[4])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v82[v221], a11, v118, v120, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v121 = 0;
              *v119 = 0;
              *(v119 + a11) = 0;
              *(v119 + v84) = 0;
              *(v119 + 3 * a11) = 0;
            }

            v126 = (v118 + v121);
            v127 = (v82 + 12 * a11);
            v128 = v81[5];
            if (v128 == 96)
            {
              *&v27 = vdup_lane_s8(*v126, 0);
              *v127 = v27;
              *(v127 + a11) = v27;
              *(v127 + v84) = v27;
              *(v127 + 3 * a11) = v27;
              v129 = 1;
            }

            else if (v128 == 31)
            {
              v130 = *v126;
              *&v26 = v126[1];
              v131 = v126[2];
              v132 = v126[3];
              *v127 = vuzp1_s16(*v126, v131);
              *(v127 + a11) = vuzp2_s16(v130, v131);
              v133 = (v127 + v84);
              *v133 = vuzp1_s16(*&v26, v132);
              *&v27 = vuzp2_s16(*&v26, v132);
              *(v133 + a11) = v27;
              v129 = 32;
            }

            else if (v81[5])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, a11, v126, v128, *&v27, *&v26);
              v84 = 2 * a11;
            }

            else
            {
              v129 = 0;
              *v127 = 0;
              *(v127 + a11) = 0;
              *(v127 + v84) = 0;
              *(v127 + 3 * a11) = 0;
            }

            v134 = (v126 + v129);
            v135 = v119 + 1;
            v136 = v81[6];
            if (v136 == 96)
            {
              *&v27 = vdup_lane_s8(*v134, 0);
              *v135 = v27;
              *(v135 + a11) = v27;
              *(v135 + v84) = v27;
              *(v135 + 3 * a11) = v27;
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v138 = *v134;
              *&v26 = v134[1];
              v139 = v134[2];
              v140 = v134[3];
              *v135 = vuzp1_s16(*v134, v139);
              *(v135 + a11) = vuzp2_s16(v138, v139);
              v141 = (v135 + v84);
              *v141 = vuzp1_s16(*&v26, v140);
              *&v27 = vuzp2_s16(*&v26, v140);
              *(v141 + a11) = v27;
              v137 = 32;
            }

            else if (v81[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *&v27, *&v26);
              v84 = 2 * a11;
              v137 = v142;
            }

            else
            {
              v137 = 0;
              *v135 = 0;
              *(v135 + a11) = 0;
              *(v135 + v84) = 0;
              *(v135 + 3 * a11) = 0;
            }

            v143 = (v134 + v137);
            v144 = v127 + 1;
            v145 = v81[7];
            if (v145 == 96)
            {
              *&v27 = vdup_lane_s8(*v143, 0);
              *v144 = v27;
              *(v144 + a11) = v27;
              *(v144 + v84) = v27;
              *(v144 + 3 * a11) = v27;
              a8 = v224;
            }

            else
            {
              a8 = v224;
              if (v145 == 31)
              {
                v36 = *v143;
                *&v26 = v143[1];
                v37 = v143[2];
                v38 = v143[3];
                *v144 = vuzp1_s16(*v143, v37);
                *(v144 + a11) = vuzp2_s16(v36, v37);
                v39 = (v144 + v84);
                *v39 = vuzp1_s16(*&v26, v38);
                *&v27 = vuzp2_s16(*&v26, v38);
                *(v39 + a11) = v27;
              }

              else if (v81[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, a11, v143, v145, *&v27, *&v26);
              }

              else
              {
                *v144 = 0;
                *(v144 + a11) = 0;
                *(v144 + v84) = 0;
                *(v144 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v21 = v34++ == v231 >> 4;
        }

        while (!v21);
        v21 = v17++ == v220;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v152 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v111 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 4;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v110 = v111 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v126 = v23;
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
      v125 = 0;
LABEL_32:
      v121 = v25 - 4;
      v114 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v108 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v125 = v30 >= v24;
    goto LABEL_32;
  }

  v125 = 0;
  v108 = 0;
  v114 = 0;
  v121 = 0;
LABEL_33:
  if (v17 <= v110)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 4 <= v124 >> 4)
    {
      v133 = v18 >> 4;
      v117 = v18 & 0xF;
      v122 = (v18 & 0xF) + 1;
      v106 = v19 & 0xF;
      v107 = v19 >> 4;
      v115 = 8 * a11;
      v116 = 4 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v33 = vcgt_u32(v32, 0x1F0000001FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v32, 4uLL))))))), v33);
      v112 = v33;
      v123 = v15;
      do
      {
        v34 = (16 * v17) | 0xF;
        if (16 * v17 <= v131)
        {
          v35 = v131;
        }

        else
        {
          v35 = 16 * v17;
        }

        if (v111 < v34)
        {
          v34 = v111;
        }

        v120 = v35 - 16 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v106;
        v119 = v37;
        v39 = v37 != 16;
        v40 = a7 >> 4;
        v41 = v106 + 1;
        if (v17 != v107)
        {
          v41 = 16;
        }

        v132 = v41;
        if (v17 != v107)
        {
          v38 = v39;
        }

        v118 = v38;
        v129 = a2 + (v35 - v131) * a11;
        v42 = a7;
        do
        {
          v53 = 16 * v40;
          v54 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = 16 * v40;
          }

          if (v124 < v54)
          {
            v54 = a7 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v40 == v133)
          {
            v58 = v122;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (16 * v17 >= v131 && v53 >= v42)
          {
            v60 = v56 != v117;
            if (v40 != v133)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v118;
          }

          if (v125)
          {
            if (v121 | v114)
            {
              v61 = 0;
              v62 = 0;
              v63 = v114 != 0;
              v64 = 1;
              v66 = v121 != 0;
              v65 = v114;
              v67 = v121;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v40 & ~(-1 << v121) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v17 & ~(-1 << v114) & v64) << v61++;
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
              v68 = v62 << 10;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(v15 + 336) * ((v40 >> v121) + (v17 >> v114) * v108);
          }

          else if (v113)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v112.i8[0];
            v73 = v112.i8[4];
            v75 = v113.i32[0];
            v74 = v113.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v40) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v17) << v69++;
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
            v76 = v70 << 10;
          }

          else
          {
            v76 = 0;
          }

          v77 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v80 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v88 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_107;
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
              v84 |= (v87 & v40) << v83++;
            }

            else
            {
              v79 = 0;
            }

            --v82;
            if (v86)
            {
              v84 |= (v87 & v17) << v83++;
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
LABEL_108:
          v89 = (a3 + v76);
          if (v126)
          {
            v90 = v58;
            memcpy(__dst, (a3 + v76), sizeof(__dst));
            v58 = v90;
            v89 = __dst;
          }

          v91 = (a4 + v88);
          v92 = (v129 + 4 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 0x10u)) && v132 > 0xF)
          {
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v89;
          v141 = v58;
          v142 = v132;
          v137 = v120;
          v138 = v55 - v53;
          block[6] = v91;
          v135 = v92;
          v136 = a11;
          v139 = v119;
          v140 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v42 = a7;
            v15 = v123;
            goto LABEL_49;
          }

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[4 * v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = &v135->i8[v136 * v101];
                do
                {
                  v105[v104] = v102[v104];
                  ++v104;
                  v103 = v140;
                }

                while (4 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
            }

            while (v101 < v100);
          }

LABEL_50:
          v20 = v40 == v124 >> 4;
          v40 = v52;
        }

        while (!v20);
        v20 = v17++ == v110;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v152 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v111 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 4;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v110 = v111 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v126 = v23;
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
      v125 = 0;
LABEL_32:
      v121 = v25 - 4;
      v114 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v108 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v125 = v30 >= v24;
    goto LABEL_32;
  }

  v125 = 0;
  v108 = 0;
  v114 = 0;
  v121 = 0;
LABEL_33:
  if (v17 <= v110)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 4 <= v124 >> 4)
    {
      v133 = v18 >> 4;
      v117 = v18 & 0xF;
      v122 = (v18 & 0xF) + 1;
      v106 = v19 & 0xF;
      v107 = v19 >> 4;
      v115 = 8 * a11;
      v116 = 4 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v33 = vcgt_u32(v32, 0x1F0000001FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v32, 4uLL))))))), v33);
      v112 = v33;
      v123 = v15;
      do
      {
        v34 = (16 * v17) | 0xF;
        if (16 * v17 <= v131)
        {
          v35 = v131;
        }

        else
        {
          v35 = 16 * v17;
        }

        if (v111 < v34)
        {
          v34 = v111;
        }

        v120 = v35 - 16 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v106;
        v119 = v37;
        v39 = v37 != 16;
        v40 = a7 >> 4;
        v41 = v106 + 1;
        if (v17 != v107)
        {
          v41 = 16;
        }

        v132 = v41;
        if (v17 != v107)
        {
          v38 = v39;
        }

        v118 = v38;
        v129 = a2 + (v35 - v131) * a11;
        v42 = a7;
        do
        {
          v53 = 16 * v40;
          v54 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = 16 * v40;
          }

          if (v124 < v54)
          {
            v54 = a7 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v40 == v133)
          {
            v58 = v122;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (16 * v17 >= v131 && v53 >= v42)
          {
            v60 = v56 != v117;
            if (v40 != v133)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v118;
          }

          if (v125)
          {
            if (v121 | v114)
            {
              v61 = 0;
              v62 = 0;
              v63 = v114 != 0;
              v64 = 1;
              v66 = v121 != 0;
              v65 = v114;
              v67 = v121;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v40 & ~(-1 << v121) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v17 & ~(-1 << v114) & v64) << v61++;
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
              v68 = v62 << 10;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(v15 + 336) * ((v40 >> v121) + (v17 >> v114) * v108);
          }

          else if (v113)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v112.i8[0];
            v73 = v112.i8[4];
            v75 = v113.i32[0];
            v74 = v113.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v40) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v17) << v69++;
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
            v76 = v70 << 10;
          }

          else
          {
            v76 = 0;
          }

          v77 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v80 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v88 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_107;
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
              v84 |= (v87 & v40) << v83++;
            }

            else
            {
              v79 = 0;
            }

            --v82;
            if (v86)
            {
              v84 |= (v87 & v17) << v83++;
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
LABEL_108:
          v89 = (a3 + v76);
          if (v126)
          {
            v90 = v58;
            memcpy(__dst, (a3 + v76), sizeof(__dst));
            v58 = v90;
            v89 = __dst;
          }

          v91 = (a4 + v88);
          v92 = (v129 + 4 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 0x10u)) && v132 > 0xF)
          {
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v89;
          v141 = v58;
          v142 = v132;
          v137 = v120;
          v138 = v55 - v53;
          block[6] = v91;
          v135 = v92;
          v136 = a11;
          v139 = v119;
          v140 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v42 = a7;
            v15 = v123;
            goto LABEL_49;
          }

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[4 * v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = &v135->i8[v136 * v101];
                do
                {
                  v105[v104] = v102[v104];
                  ++v104;
                  v103 = v140;
                }

                while (4 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
            }

            while (v101 < v100);
          }

LABEL_50:
          v20 = v40 == v124 >> 4;
          v40 = v52;
        }

        while (!v20);
        v20 = v17++ == v110;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v154 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v16 = a8 >> 4;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 4;
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
  v127 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v125 = a7 + a9 - 1;
    if (a7 >> 4 <= v125 >> 4)
    {
      v24 = a11;
      v135 = (a5 - 1) >> 4;
      v110 = a5 - 1;
      v118 = (a5 - 1) & 0xF;
      v111 = (a6 - 1) & 0xF;
      v112 = (a6 - 1) >> 4;
      v116 = 8 * a11;
      v117 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v123 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v122 = v26;
      v109 = 8 * v18 * v17;
      v124 = v15;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v132)
        {
          v28 = v132;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v131 = 16 * v16;
        v121 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v120 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 16;
        }

        v134 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v119 = v31;
        v130 = a2 + (v28 - v132) * v24;
        v35 = a7;
        do
        {
          v46 = 16 * v33;
          v47 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 16 * v33;
          }

          if (v125 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v135)
          {
            v51 = v118 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v131 >= v132 && v46 >= v35)
          {
            v53 = v49 != v118;
            if (v33 != v135)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v119;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v109 >> (*(v15 + 57) != 0);
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
              v78 = 16;
              v77 = 1;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v74 = 16;
              v77 = 1;
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

            v99 = (v74 >> 4) - 1;
            if (v76)
            {
              v100 = 0;
              if (v77)
              {
                goto LABEL_123;
              }

LABEL_112:
              v101 = 32 - __clz(~(-1 << -__clz(((v78 + 15) >> 4) - 1)));
              if (v101 | v100)
              {
                goto LABEL_113;
              }

LABEL_124:
              v108 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
              if ((v77 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v101 = 0;
              if (!v100)
              {
                goto LABEL_124;
              }

LABEL_113:
              v102 = 0;
              v103 = 0;
              v104 = v33 & v99;
              v105 = v100 != 0;
              v106 = v101 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v103 |= (v107 & v104) << v102++;
                }

                else
                {
                  v100 = 0;
                }

                --v101;
                if (v106)
                {
                  v103 |= (v107 & v16 & ((v78 >> 4) - 1)) << v102++;
                }

                else
                {
                  v101 = 0;
                }

                v107 *= 2;
                --v102;
                v106 = v101 != 0;
                v105 = v100 != 0;
              }

              while (v101 | v100);
              v108 = v103 << 10;
            }

            v61 = v108 + ((v46 / v74 + v131 / v78 * ((v74 + v110) / v74)) << 14);
            goto LABEL_56;
          }

          if (v123)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v122.i8[0];
            v58 = v122.i8[4];
            v60 = v123.i32[0];
            v59 = v123.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v33) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v16) << v54++;
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
            v61 = v55 << 10;
          }

          else
          {
            v61 = 0;
          }

LABEL_56:
          v62 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 15;
          if (v66 < 0x20)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 4) - 1)));
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
              v69 |= (v72 & v33) << v68++;
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
          if (v127)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 16 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v130 + 4 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 0x10u)) && v134 > 0xF)
          {
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v124;
          block[5] = v79;
          v143 = v51;
          v144 = v134;
          v139 = v121;
          v140 = v48 - v46;
          block[6] = v84;
          v137 = v130 + 4 * (v48 - v35);
          v138 = v24;
          v141 = v120;
          v142 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v124 + 8) + 16552), block);
            v35 = a7;
            v15 = v124;
            goto LABEL_29;
          }

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
          v93 = v141;
          v35 = a7;
          v15 = v124;
          v45 = v33 + 1;
          if (v141)
          {
            v94 = 0;
            v95 = &v146[4 * v139].i8[4 * v140];
            v96 = v142;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v137 + v138 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v142;
                }

                while (4 * v142 > v97);
                v93 = v141;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v125 >> 4;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v154 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v132 = a8;
  v16 = a8 >> 4;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 4;
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
  v127 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v125 = a7 + a9 - 1;
    if (a7 >> 4 <= v125 >> 4)
    {
      v24 = a11;
      v135 = (a5 - 1) >> 4;
      v110 = a5 - 1;
      v118 = (a5 - 1) & 0xF;
      v111 = (a6 - 1) & 0xF;
      v112 = (a6 - 1) >> 4;
      v116 = 8 * a11;
      v117 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v123 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v122 = v26;
      v109 = 8 * v18 * v17;
      v124 = v15;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v132)
        {
          v28 = v132;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v131 = 16 * v16;
        v121 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v120 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 16;
        }

        v134 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v119 = v31;
        v130 = a2 + (v28 - v132) * v24;
        v35 = a7;
        do
        {
          v46 = 16 * v33;
          v47 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 16 * v33;
          }

          if (v125 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v135)
          {
            v51 = v118 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v131 >= v132 && v46 >= v35)
          {
            v53 = v49 != v118;
            if (v33 != v135)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v119;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v109 >> (*(v15 + 57) != 0);
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
              v78 = 16;
              v77 = 1;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v74 = 16;
              v77 = 1;
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

            v99 = (v74 >> 4) - 1;
            if (v76)
            {
              v100 = 0;
              if (v77)
              {
                goto LABEL_123;
              }

LABEL_112:
              v101 = 32 - __clz(~(-1 << -__clz(((v78 + 15) >> 4) - 1)));
              if (v101 | v100)
              {
                goto LABEL_113;
              }

LABEL_124:
              v108 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
              if ((v77 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v101 = 0;
              if (!v100)
              {
                goto LABEL_124;
              }

LABEL_113:
              v102 = 0;
              v103 = 0;
              v104 = v33 & v99;
              v105 = v100 != 0;
              v106 = v101 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v103 |= (v107 & v104) << v102++;
                }

                else
                {
                  v100 = 0;
                }

                --v101;
                if (v106)
                {
                  v103 |= (v107 & v16 & ((v78 >> 4) - 1)) << v102++;
                }

                else
                {
                  v101 = 0;
                }

                v107 *= 2;
                --v102;
                v106 = v101 != 0;
                v105 = v100 != 0;
              }

              while (v101 | v100);
              v108 = v103 << 10;
            }

            v61 = v108 + ((v46 / v74 + v131 / v78 * ((v74 + v110) / v74)) << 14);
            goto LABEL_56;
          }

          if (v123)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v122.i8[0];
            v58 = v122.i8[4];
            v60 = v123.i32[0];
            v59 = v123.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v33) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v16) << v54++;
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
            v61 = v55 << 10;
          }

          else
          {
            v61 = 0;
          }

LABEL_56:
          v62 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 15;
          if (v66 < 0x20)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 4) - 1)));
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
              v69 |= (v72 & v33) << v68++;
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
          if (v127)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 16 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v130 + 4 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 0x10u)) && v134 > 0xF)
          {
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v124;
          block[5] = v79;
          v143 = v51;
          v144 = v134;
          v139 = v121;
          v140 = v48 - v46;
          block[6] = v84;
          v137 = v130 + 4 * (v48 - v35);
          v138 = v24;
          v141 = v120;
          v142 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v124 + 8) + 16552), block);
            v35 = a7;
            v15 = v124;
            goto LABEL_29;
          }

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
          v93 = v141;
          v35 = a7;
          v15 = v124;
          v45 = v33 + 1;
          if (v141)
          {
            v94 = 0;
            v95 = &v146[4 * v139].i8[4 * v140];
            v96 = v142;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v137 + v138 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v142;
                }

                while (4 * v142 > v97);
                v93 = v141;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v125 >> 4;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v384 = a8;
  v16 = a1;
  v363 = a8 + a10 - 1;
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
  v362 = v363 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v379 = v24;
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
      v378 = 0;
LABEL_32:
      v375 = v26 - 4;
      v366 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v360 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v378 = v31 >= v25;
    goto LABEL_32;
  }

  v378 = 0;
  v360 = 0;
  v366 = 0;
  v375 = 0;
LABEL_33:
  if (v18 <= v362)
  {
    v377 = a7 + a9 - 1;
    if (a7 >> 4 <= v377 >> 4)
    {
      v33 = a11;
      v387 = v19 >> 4;
      v371 = v19 & 0xF;
      v376 = (v19 & 0xF) + 1;
      v358 = v20 & 0xF;
      v359 = v20 >> 4;
      v357 = ~(-1 << v366);
      v369 = 8 * a11;
      v370 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v365 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v364 = v35;
      v385 = a1;
      v367 = 3 * a11;
      v368 = 2 * a11;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v384)
        {
          v37 = v384;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v363 < v36)
        {
          v36 = v363;
        }

        v374 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v358;
        v373 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v358 + 1;
        if (v18 != v359)
        {
          v43 = 16;
        }

        v386 = v43;
        if (v18 != v359)
        {
          v40 = v41;
        }

        v372 = v40;
        v44 = v18 & v357;
        v382 = a2 + (v37 - v384) * v33;
        v45 = a7;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v377 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v387)
          {
            v51 = v376;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v18 >= v384 && v46 >= v45)
          {
            v53 = v49 != v371;
            if (v42 != v387)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v372;
          }

          if (v378)
          {
            if (v375 | v366)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v375 != 0;
              v58 = v366 != 0;
              v59 = v375;
              v60 = v366;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v42 & ~(-1 << v375) & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v44 & v56) << v54++;
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

            v69 = v61 + *(v16 + 336) * ((v42 >> v375) + (v18 >> v366) * v360);
          }

          else if (v365)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v364.i8[4];
            v66 = v364.i8[0];
            v67 = v365.i32[1];
            v68 = v365.i32[0];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v18) << v62++;
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

          v70 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v73 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
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
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
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
              v77 |= (v80 & v42) << v76++;
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
LABEL_108:
          v82 = (a3 + v69);
          if (v379)
          {
            memcpy(__dst, v82, sizeof(__dst));
            v82 = __dst;
          }

          v83 = (a4 + v81);
          v84 = (v382 + 4 * (v48 - v45));
          if (!(v52 & 1 | (v51 < 0x10u)) && v386 > 0xF)
          {
            v85 = *v83;
            if (v85 == 127)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              v102 = v82[4];
              v103 = v82[5];
              v104 = v82[6];
              v105 = v82[7];
              v86 = 2 * a11;
              *v84 = vzip1q_s64(*v82, v99);
              v84[1] = vzip1q_s64(v102, v103);
              v106 = (v84 + v368);
              v33 = a11;
              v107 = (v84 + a11);
              *v107 = vzip2q_s64(v98, v99);
              v107[1] = vzip2q_s64(v102, v103);
              *v106 = vzip1q_s64(v100, v101);
              v106[1] = vzip1q_s64(v104, v105);
              v108 = (v84 + v368 + a11);
              *v108 = vzip2q_s64(v100, v101);
              v108[1] = vzip2q_s64(v104, v105);
              v88 = 128;
              v87 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v87 = 3 * a11;
              v86 = 2 * a11;
              if (v85 == 3)
              {
                v94 = vld1q_dup_f32(v82->i32);
                *v84 = v94;
                v84[1] = v94;
                v95 = &v84->i8[a11];
                *v95 = v94;
                v95[1] = v94;
                v96 = &v84->i8[v368];
                *v96 = v94;
                v96[1] = v94;
                v97 = &v84->i8[v367];
                *v97 = v94;
                v97[1] = v94;
                v88 = 4;
              }

              else if (*v83)
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v84, a11, v82, v85);
              }

              else
              {
                v88 = 0;
                *v84 = 0u;
                v84[1] = 0u;
                v89 = &v84->i8[a11];
                *v89 = 0u;
                *(v89 + 1) = 0u;
                v90 = &v84->i8[v368];
                *v90 = 0u;
                *(v90 + 1) = 0u;
                v91 = &v84->i8[v367];
                *v91 = 0u;
                *(v91 + 1) = 0u;
              }
            }

            v109 = v82->i64 + v88;
            v110 = (v84 + v370);
            v111 = v83[1];
            if (v111 == 127)
            {
              v120 = *v109;
              v121 = *(v109 + 16);
              v122 = *(v109 + 32);
              v123 = *(v109 + 48);
              v124 = *(v109 + 64);
              v125 = *(v109 + 80);
              v126 = *(v109 + 96);
              v127 = *(v109 + 112);
              *v110 = vzip1q_s64(*v109, v121);
              v110[1] = vzip1q_s64(v124, v125);
              v128 = (v110 + v86);
              v129 = (v110 + v33);
              *v129 = vzip2q_s64(v120, v121);
              v129[1] = vzip2q_s64(v124, v125);
              *v128 = vzip1q_s64(v122, v123);
              v128[1] = vzip1q_s64(v126, v127);
              v130 = (v110 + v86 + v33);
              *v130 = vzip2q_s64(v122, v123);
              v130[1] = vzip2q_s64(v126, v127);
              v112 = 128;
            }

            else if (v111 == 3)
            {
              v116 = vld1q_dup_f32(v109);
              *v110 = v116;
              v110[1] = v116;
              v117 = &v110->i8[v33];
              *v117 = v116;
              v117[1] = v116;
              v118 = &v110->i8[v86];
              *v118 = v116;
              v118[1] = v116;
              v119 = &v110->i8[v87];
              *v119 = v116;
              v119[1] = v116;
              v112 = 4;
            }

            else if (v83[1])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v370), v33, v109, v111);
            }

            else
            {
              v112 = 0;
              *v110 = 0u;
              v110[1] = 0u;
              v113 = &v110->i8[v33];
              *v113 = 0u;
              *(v113 + 1) = 0u;
              v114 = &v110->i8[v86];
              *v114 = 0u;
              *(v114 + 1) = 0u;
              v115 = &v110->i8[v87];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v131 = v109 + v112;
            v132 = v84 + 2;
            v133 = v83[2];
            if (v133 == 127)
            {
              v142 = *v131;
              v143 = *(v131 + 16);
              v144 = *(v131 + 32);
              v145 = *(v131 + 48);
              v146 = *(v131 + 64);
              v147 = *(v131 + 80);
              v148 = *(v131 + 96);
              v149 = *(v131 + 112);
              *v132 = vzip1q_s64(*v131, v143);
              v84[3] = vzip1q_s64(v146, v147);
              v150 = (v132 + v86);
              v151 = (v132 + v33);
              *v151 = vzip2q_s64(v142, v143);
              v151[1] = vzip2q_s64(v146, v147);
              *v150 = vzip1q_s64(v144, v145);
              v150[1] = vzip1q_s64(v148, v149);
              v152 = (v132 + v86 + v33);
              *v152 = vzip2q_s64(v144, v145);
              v152[1] = vzip2q_s64(v148, v149);
              v134 = 128;
            }

            else if (v133 == 3)
            {
              v138 = vld1q_dup_f32(v131);
              v84[2] = v138;
              v84[3] = v138;
              v139 = &v132->i8[v33];
              *v139 = v138;
              v139[1] = v138;
              v140 = &v132->i8[v86];
              *v140 = v138;
              v140[1] = v138;
              v141 = &v132->i8[v87];
              *v141 = v138;
              v141[1] = v138;
              v134 = 4;
            }

            else if (v83[2])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v33, v131, v133);
            }

            else
            {
              v134 = 0;
              *v132 = 0u;
              v84[3] = 0u;
              v135 = &v132->i8[v33];
              *v135 = 0u;
              *(v135 + 1) = 0u;
              v136 = &v132->i8[v86];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v132->i8[v87];
              *v137 = 0u;
              *(v137 + 1) = 0u;
            }

            v153 = v131 + v134;
            v154 = v110 + 2;
            v155 = v83[3];
            if (v155 == 127)
            {
              v164 = *v153;
              v165 = *(v153 + 16);
              v166 = *(v153 + 32);
              v167 = *(v153 + 48);
              v168 = *(v153 + 64);
              v169 = *(v153 + 80);
              v170 = *(v153 + 96);
              v171 = *(v153 + 112);
              *v154 = vzip1q_s64(*v153, v165);
              v110[3] = vzip1q_s64(v168, v169);
              v172 = (v154 + v86);
              v173 = (v154 + v33);
              *v173 = vzip2q_s64(v164, v165);
              v173[1] = vzip2q_s64(v168, v169);
              *v172 = vzip1q_s64(v166, v167);
              v172[1] = vzip1q_s64(v170, v171);
              v174 = (v154 + v86 + v33);
              *v174 = vzip2q_s64(v166, v167);
              v174[1] = vzip2q_s64(v170, v171);
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v110[2] = v160;
              v110[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v86];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v87];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v83[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v110[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v86];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v87];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v175 = v153 + v156;
            v176 = (v84 + v369);
            v177 = v83[4];
            if (v177 == 127)
            {
              v186 = *v175;
              v187 = *(v175 + 16);
              v188 = *(v175 + 32);
              v189 = *(v175 + 48);
              v190 = *(v175 + 64);
              v191 = *(v175 + 80);
              v192 = *(v175 + 96);
              v193 = *(v175 + 112);
              *v176 = vzip1q_s64(*v175, v187);
              v176[1] = vzip1q_s64(v190, v191);
              v194 = (v176 + v86);
              v195 = (v176 + v33);
              *v195 = vzip2q_s64(v186, v187);
              v195[1] = vzip2q_s64(v190, v191);
              *v194 = vzip1q_s64(v188, v189);
              v194[1] = vzip1q_s64(v192, v193);
              v196 = (v176 + v86 + v33);
              *v196 = vzip2q_s64(v188, v189);
              v196[1] = vzip2q_s64(v192, v193);
              v178 = 128;
            }

            else if (v177 == 3)
            {
              v182 = vld1q_dup_f32(v175);
              *v176 = v182;
              v176[1] = v182;
              v183 = &v176->i8[v33];
              *v183 = v182;
              v183[1] = v182;
              v184 = &v176->i8[v86];
              *v184 = v182;
              v184[1] = v182;
              v185 = &v176->i8[v87];
              *v185 = v182;
              v185[1] = v182;
              v178 = 4;
            }

            else if (v83[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v369), v33, v175, v177);
            }

            else
            {
              v178 = 0;
              *v176 = 0u;
              v176[1] = 0u;
              v179 = &v176->i8[v33];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v176->i8[v86];
              *v180 = 0u;
              *(v180 + 1) = 0u;
              v181 = &v176->i8[v87];
              *v181 = 0u;
              *(v181 + 1) = 0u;
            }

            v197 = v175 + v178;
            v198 = (v84 + 12 * a11);
            v199 = v83[5];
            if (v199 == 127)
            {
              v208 = *v197;
              v209 = *(v197 + 16);
              v210 = *(v197 + 32);
              v211 = *(v197 + 48);
              v212 = *(v197 + 64);
              v213 = *(v197 + 80);
              v214 = *(v197 + 96);
              v215 = *(v197 + 112);
              *v198 = vzip1q_s64(*v197, v209);
              v198[1] = vzip1q_s64(v212, v213);
              v216 = (v198 + v86);
              v217 = (v198 + v33);
              *v217 = vzip2q_s64(v208, v209);
              v217[1] = vzip2q_s64(v212, v213);
              *v216 = vzip1q_s64(v210, v211);
              v216[1] = vzip1q_s64(v214, v215);
              v218 = (v198 + v86 + v33);
              *v218 = vzip2q_s64(v210, v211);
              v218[1] = vzip2q_s64(v214, v215);
              v200 = 128;
            }

            else if (v199 == 3)
            {
              v204 = vld1q_dup_f32(v197);
              *v198 = v204;
              v198[1] = v204;
              v205 = &v198->i8[v33];
              *v205 = v204;
              v205[1] = v204;
              v206 = &v198->i8[v86];
              *v206 = v204;
              v206[1] = v204;
              v207 = &v198->i8[v87];
              *v207 = v204;
              v207[1] = v204;
              v200 = 4;
            }

            else if (v83[5])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v33, v197, v199);
            }

            else
            {
              v200 = 0;
              *v198 = 0u;
              v198[1] = 0u;
              v201 = &v198->i8[v33];
              *v201 = 0u;
              *(v201 + 1) = 0u;
              v202 = &v198->i8[v86];
              *v202 = 0u;
              *(v202 + 1) = 0u;
              v203 = &v198->i8[v87];
              *v203 = 0u;
              *(v203 + 1) = 0u;
            }

            v219 = v197 + v200;
            v220 = v176 + 2;
            v221 = v83[6];
            if (v221 == 127)
            {
              v230 = *v219;
              v231 = *(v219 + 16);
              v232 = *(v219 + 32);
              v233 = *(v219 + 48);
              v234 = *(v219 + 64);
              v235 = *(v219 + 80);
              v236 = *(v219 + 96);
              v237 = *(v219 + 112);
              *v220 = vzip1q_s64(*v219, v231);
              v176[3] = vzip1q_s64(v234, v235);
              v238 = (v220 + v86);
              v239 = (v220 + v33);
              *v239 = vzip2q_s64(v230, v231);
              v239[1] = vzip2q_s64(v234, v235);
              *v238 = vzip1q_s64(v232, v233);
              v238[1] = vzip1q_s64(v236, v237);
              v240 = (v220 + v86 + v33);
              *v240 = vzip2q_s64(v232, v233);
              v240[1] = vzip2q_s64(v236, v237);
              v222 = 128;
            }

            else if (v221 == 3)
            {
              v226 = vld1q_dup_f32(v219);
              v176[2] = v226;
              v176[3] = v226;
              v227 = &v220->i8[v33];
              *v227 = v226;
              v227[1] = v226;
              v228 = &v220->i8[v86];
              *v228 = v226;
              v228[1] = v226;
              v229 = &v220->i8[v87];
              *v229 = v226;
              v229[1] = v226;
              v222 = 4;
            }

            else if (v83[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              *v220 = 0u;
              v176[3] = 0u;
              v223 = &v220->i8[v33];
              *v223 = 0u;
              *(v223 + 1) = 0u;
              v224 = &v220->i8[v86];
              *v224 = 0u;
              *(v224 + 1) = 0u;
              v225 = &v220->i8[v87];
              *v225 = 0u;
              *(v225 + 1) = 0u;
            }

            v241 = v219 + v222;
            v242 = v198 + 2;
            v243 = v83[7];
            if (v243 == 127)
            {
              v248 = *v241;
              v249 = *(v241 + 16);
              v250 = *(v241 + 32);
              v251 = *(v241 + 48);
              v252 = *(v241 + 64);
              v253 = *(v241 + 80);
              v254 = *(v241 + 96);
              v255 = *(v241 + 112);
              *v242 = vzip1q_s64(*v241, v249);
              v198[3] = vzip1q_s64(v252, v253);
              v256 = (v242 + v86);
              v257 = (v242 + v33);
              *v257 = vzip2q_s64(v248, v249);
              v257[1] = vzip2q_s64(v252, v253);
              *v256 = vzip1q_s64(v250, v251);
              v256[1] = vzip1q_s64(v254, v255);
              v258 = (v242 + v86 + v33);
              *v258 = vzip2q_s64(v250, v251);
              v258[1] = vzip2q_s64(v254, v255);
              v45 = a7;
              v16 = v385;
            }

            else
            {
              v16 = v385;
              if (v243 == 3)
              {
                v244 = vld1q_dup_f32(v241);
                v198[2] = v244;
                v198[3] = v244;
LABEL_171:
                v245 = &v242->i8[v33];
                *v245 = v244;
                v245[1] = v244;
                v246 = &v242->i8[v86];
                *v246 = v244;
                v246[1] = v244;
                v247 = &v242->i8[v87];
                *v247 = v244;
                v247[1] = v244;
              }

              else
              {
                if (!v243)
                {
                  v244 = 0uLL;
                  *v242 = 0u;
                  v198[3] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v242, v33, v241, v243);
              }

              v45 = a7;
            }

LABEL_49:
            v44 = v18 & v357;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v385;
          block[5] = v82;
          v395 = v51;
          v396 = v386;
          v391 = v374;
          v392 = v48 - v46;
          block[6] = v83;
          v389 = v84;
          v33 = a11;
          v390 = a11;
          v393 = v373;
          v394 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v385 + 8) + 16552), block);
            v45 = a7;
            v16 = v385;
            goto LABEL_49;
          }

          v92 = *v83;
          if (v92 == 127)
          {
            v260 = *v82;
            v261 = v82[1];
            v262 = v82[2];
            v263 = v82[3];
            v264 = v82[4];
            v265 = v82[5];
            v266 = v82[6];
            v267 = v82[7];
            v398 = vzip1q_s64(*v82, v261);
            v399 = vzip1q_s64(v264, v265);
            v402 = vzip2q_s64(v260, v261);
            v403 = vzip2q_s64(v264, v265);
            v406 = vzip1q_s64(v262, v263);
            v407 = vzip1q_s64(v266, v267);
            v410 = vzip2q_s64(v262, v263);
            v411 = vzip2q_s64(v266, v267);
            v93 = 128;
          }

          else if (v92 == 3)
          {
            v259 = vld1q_dup_f32(v82->i32);
            v398 = v259;
            v399 = v259;
            v402 = v259;
            v403 = v259;
            v406 = v259;
            v407 = v259;
            v410 = v259;
            v411 = v259;
            v93 = 4;
          }

          else if (*v83)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 64, v82, v92);
          }

          else
          {
            v93 = 0;
            v399 = 0u;
            v398 = 0u;
            v402 = 0u;
            v403 = 0u;
            v406 = 0u;
            v407 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v268 = v82->i64 + v93;
          v269 = v83[1];
          if (v269 == 127)
          {
            v272 = *v268;
            v273 = *(v268 + 16);
            v274 = *(v268 + 32);
            v275 = *(v268 + 48);
            v276 = *(v268 + 64);
            v277 = *(v268 + 80);
            v278 = *(v268 + 96);
            v279 = *(v268 + 112);
            v414 = vzip1q_s64(*v268, v273);
            v415 = vzip1q_s64(v276, v277);
            v418 = vzip2q_s64(v272, v273);
            v419 = vzip2q_s64(v276, v277);
            v422 = vzip1q_s64(v274, v275);
            v423 = vzip1q_s64(v278, v279);
            v426 = vzip2q_s64(v274, v275);
            v427 = vzip2q_s64(v278, v279);
            v270 = 128;
          }

          else if (v269 == 3)
          {
            v271 = vld1q_dup_f32(v268);
            v414 = v271;
            v415 = v271;
            v418 = v271;
            v419 = v271;
            v422 = v271;
            v423 = v271;
            v426 = v271;
            v427 = v271;
            v270 = 4;
          }

          else if (v83[1])
          {
            v270 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 64, v268, v269);
          }

          else
          {
            v270 = 0;
            v414 = 0u;
            v415 = 0u;
            v418 = 0u;
            v419 = 0u;
            v422 = 0u;
            v423 = 0u;
            v426 = 0u;
            v427 = 0u;
          }

          v280 = v268 + v270;
          v281 = v83[2];
          if (v281 == 127)
          {
            v284 = *v280;
            v285 = *(v280 + 16);
            v286 = *(v280 + 32);
            v287 = *(v280 + 48);
            v288 = *(v280 + 64);
            v289 = *(v280 + 80);
            v290 = *(v280 + 96);
            v291 = *(v280 + 112);
            v400 = vzip1q_s64(*v280, v285);
            v401 = vzip1q_s64(v288, v289);
            v404 = vzip2q_s64(v284, v285);
            v405 = vzip2q_s64(v288, v289);
            v408 = vzip1q_s64(v286, v287);
            v409 = vzip1q_s64(v290, v291);
            v412 = vzip2q_s64(v286, v287);
            v413 = vzip2q_s64(v290, v291);
            v282 = 128;
          }

          else if (v281 == 3)
          {
            v283 = vld1q_dup_f32(v280);
            v400 = v283;
            v401 = v283;
            v404 = v283;
            v405 = v283;
            v408 = v283;
            v409 = v283;
            v412 = v283;
            v413 = v283;
            v282 = 4;
          }

          else if (v83[2])
          {
            v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v400, 64, v280, v281);
          }

          else
          {
            v282 = 0;
            v400 = 0u;
            v401 = 0u;
            v404 = 0u;
            v405 = 0u;
            v408 = 0u;
            v409 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v292 = v280 + v282;
          v293 = v83[3];
          if (v293 == 127)
          {
            v296 = *v292;
            v297 = *(v292 + 16);
            v298 = *(v292 + 32);
            v299 = *(v292 + 48);
            v300 = *(v292 + 64);
            v301 = *(v292 + 80);
            v302 = *(v292 + 96);
            v303 = *(v292 + 112);
            v416 = vzip1q_s64(*v292, v297);
            v417 = vzip1q_s64(v300, v301);
            v420 = vzip2q_s64(v296, v297);
            v421 = vzip2q_s64(v300, v301);
            v424 = vzip1q_s64(v298, v299);
            v425 = vzip1q_s64(v302, v303);
            v428 = vzip2q_s64(v298, v299);
            v429 = vzip2q_s64(v302, v303);
            v294 = 128;
          }

          else if (v293 == 3)
          {
            v295 = vld1q_dup_f32(v292);
            v416 = v295;
            v417 = v295;
            v420 = v295;
            v421 = v295;
            v424 = v295;
            v425 = v295;
            v428 = v295;
            v429 = v295;
            v294 = 4;
          }

          else if (v83[3])
          {
            v294 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 64, v292, v293);
          }

          else
          {
            v294 = 0;
            v416 = 0u;
            v417 = 0u;
            v420 = 0u;
            v421 = 0u;
            v424 = 0u;
            v425 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v304 = v292 + v294;
          v305 = v83[4];
          if (v305 == 127)
          {
            v308 = *v304;
            v309 = *(v304 + 16);
            v310 = *(v304 + 32);
            v311 = *(v304 + 48);
            v312 = *(v304 + 64);
            v313 = *(v304 + 80);
            v314 = *(v304 + 96);
            v315 = *(v304 + 112);
            v430 = vzip1q_s64(*v304, v309);
            v431 = vzip1q_s64(v312, v313);
            v434 = vzip2q_s64(v308, v309);
            v435 = vzip2q_s64(v312, v313);
            v438 = vzip1q_s64(v310, v311);
            v439 = vzip1q_s64(v314, v315);
            v442 = vzip2q_s64(v310, v311);
            v443 = vzip2q_s64(v314, v315);
            v306 = 128;
          }

          else if (v305 == 3)
          {
            v307 = vld1q_dup_f32(v304);
            v430 = v307;
            v431 = v307;
            v434 = v307;
            v435 = v307;
            v438 = v307;
            v439 = v307;
            v442 = v307;
            v443 = v307;
            v306 = 4;
          }

          else if (v83[4])
          {
            v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 64, v304, v305);
          }

          else
          {
            v306 = 0;
            v430 = 0u;
            v431 = 0u;
            v434 = 0u;
            v435 = 0u;
            v438 = 0u;
            v439 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v316 = v304 + v306;
          v317 = v83[5];
          if (v317 == 127)
          {
            v320 = *v316;
            v321 = *(v316 + 16);
            v322 = *(v316 + 32);
            v323 = *(v316 + 48);
            v324 = *(v316 + 64);
            v325 = *(v316 + 80);
            v326 = *(v316 + 96);
            v327 = *(v316 + 112);
            v446 = vzip1q_s64(*v316, v321);
            v447 = vzip1q_s64(v324, v325);
            v450 = vzip2q_s64(v320, v321);
            v451 = vzip2q_s64(v324, v325);
            v454 = vzip1q_s64(v322, v323);
            v455 = vzip1q_s64(v326, v327);
            v458 = vzip2q_s64(v322, v323);
            v459 = vzip2q_s64(v326, v327);
            v318 = 128;
          }

          else if (v317 == 3)
          {
            v319 = vld1q_dup_f32(v316);
            v446 = v319;
            v447 = v319;
            v450 = v319;
            v451 = v319;
            v454 = v319;
            v455 = v319;
            v458 = v319;
            v459 = v319;
            v318 = 4;
          }

          else if (v83[5])
          {
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v446, 64, v316, v317);
          }

          else
          {
            v318 = 0;
            v446 = 0u;
            v447 = 0u;
            v450 = 0u;
            v451 = 0u;
            v454 = 0u;
            v455 = 0u;
            v458 = 0u;
            v459 = 0u;
          }

          v328 = v316 + v318;
          v329 = v83[6];
          if (v329 == 127)
          {
            v332 = *v328;
            v333 = *(v328 + 16);
            v334 = *(v328 + 32);
            v335 = *(v328 + 48);
            v336 = *(v328 + 64);
            v337 = *(v328 + 80);
            v338 = *(v328 + 96);
            v339 = *(v328 + 112);
            v432 = vzip1q_s64(*v328, v333);
            v433 = vzip1q_s64(v336, v337);
            v436 = vzip2q_s64(v332, v333);
            v437 = vzip2q_s64(v336, v337);
            v440 = vzip1q_s64(v334, v335);
            v441 = vzip1q_s64(v338, v339);
            v444 = vzip2q_s64(v334, v335);
            v445 = vzip2q_s64(v338, v339);
            v330 = 128;
          }

          else if (v329 == 3)
          {
            v331 = vld1q_dup_f32(v328);
            v432 = v331;
            v433 = v331;
            v436 = v331;
            v437 = v331;
            v440 = v331;
            v441 = v331;
            v444 = v331;
            v445 = v331;
            v330 = 4;
          }

          else if (v83[6])
          {
            v330 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v432, 64, v328, v329);
          }

          else
          {
            v330 = 0;
            v432 = 0u;
            v433 = 0u;
            v436 = 0u;
            v437 = 0u;
            v440 = 0u;
            v441 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v340 = v328 + v330;
          v341 = v83[7];
          if (v341 == 127)
          {
            v343 = *v340;
            v344 = *(v340 + 16);
            v345 = *(v340 + 32);
            v346 = *(v340 + 48);
            v347 = *(v340 + 64);
            v348 = *(v340 + 80);
            v349 = *(v340 + 96);
            v350 = *(v340 + 112);
            v448 = vzip1q_s64(*v340, v344);
            v449 = vzip1q_s64(v347, v348);
            v452 = vzip2q_s64(v343, v344);
            v453 = vzip2q_s64(v347, v348);
            v456 = vzip1q_s64(v345, v346);
            v457 = vzip1q_s64(v349, v350);
            v460 = vzip2q_s64(v345, v346);
            v461 = vzip2q_s64(v349, v350);
            v45 = a7;
            v16 = v385;
          }

          else
          {
            v45 = a7;
            v16 = v385;
            if (v341 == 3)
            {
              v342 = vld1q_dup_f32(v340);
              v448 = v342;
              v449 = v342;
              v452 = v342;
              v453 = v342;
              v456 = v342;
              v457 = v342;
              v460 = v342;
              v461 = v342;
            }

            else if (v341)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v448, 64, v340, v341);
            }

            else
            {
              v448 = 0u;
              v449 = 0u;
              v452 = 0u;
              v453 = 0u;
              v456 = 0u;
              v457 = 0u;
              v460 = 0u;
              v461 = 0u;
            }
          }

          v44 = v18 & v357;
          v351 = v393;
          if (v393)
          {
            v352 = 0;
            v353 = &v398.i8[64 * v391 + 4 * v392];
            v354 = v394;
            do
            {
              if (v354)
              {
                v355 = 0;
                v356 = v389->i64 + v390 * v352;
                do
                {
                  *(v356 + v355) = v353[v355];
                  ++v355;
                  v354 = v394;
                }

                while (4 * v394 > v355);
                v351 = v393;
              }

              ++v352;
              v353 += 64;
            }

            while (v352 < v351);
          }

LABEL_50:
          v21 = v42++ == v377 >> 4;
        }

        while (!v21);
        v21 = v18++ == v362;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v384 = a8;
  v16 = a1;
  v363 = a8 + a10 - 1;
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
  v362 = v363 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v379 = v24;
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
      v378 = 0;
LABEL_32:
      v375 = v26 - 4;
      v366 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v360 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v378 = v31 >= v25;
    goto LABEL_32;
  }

  v378 = 0;
  v360 = 0;
  v366 = 0;
  v375 = 0;
LABEL_33:
  if (v18 <= v362)
  {
    v377 = a7 + a9 - 1;
    if (a7 >> 4 <= v377 >> 4)
    {
      v33 = a11;
      v387 = v19 >> 4;
      v371 = v19 & 0xF;
      v376 = (v19 & 0xF) + 1;
      v358 = v20 & 0xF;
      v359 = v20 >> 4;
      v357 = ~(-1 << v366);
      v369 = 8 * a11;
      v370 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v365 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v364 = v35;
      v385 = a1;
      v367 = 3 * a11;
      v368 = 2 * a11;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v384)
        {
          v37 = v384;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v363 < v36)
        {
          v36 = v363;
        }

        v374 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v358;
        v373 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v358 + 1;
        if (v18 != v359)
        {
          v43 = 16;
        }

        v386 = v43;
        if (v18 != v359)
        {
          v40 = v41;
        }

        v372 = v40;
        v44 = v18 & v357;
        v382 = a2 + (v37 - v384) * v33;
        v45 = a7;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v377 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v387)
          {
            v51 = v376;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v18 >= v384 && v46 >= v45)
          {
            v53 = v49 != v371;
            if (v42 != v387)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v372;
          }

          if (v378)
          {
            if (v375 | v366)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v375 != 0;
              v58 = v366 != 0;
              v59 = v375;
              v60 = v366;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v42 & ~(-1 << v375) & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v44 & v56) << v54++;
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

            v69 = v61 + *(v16 + 336) * ((v42 >> v375) + (v18 >> v366) * v360);
          }

          else if (v365)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v364.i8[4];
            v66 = v364.i8[0];
            v67 = v365.i32[1];
            v68 = v365.i32[0];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v18) << v62++;
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

          v70 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v73 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
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
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
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
              v77 |= (v80 & v42) << v76++;
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
LABEL_108:
          v82 = (a3 + v69);
          if (v379)
          {
            memcpy(__dst, v82, sizeof(__dst));
            v82 = __dst;
          }

          v83 = (a4 + v81);
          v84 = (v382 + 4 * (v48 - v45));
          if (!(v52 & 1 | (v51 < 0x10u)) && v386 > 0xF)
          {
            v85 = *v83;
            if (v85 == 127)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              v102 = v82[4];
              v103 = v82[5];
              v104 = v82[6];
              v105 = v82[7];
              v86 = 2 * a11;
              *v84 = vzip1q_s64(*v82, v99);
              v84[1] = vzip1q_s64(v102, v103);
              v106 = (v84 + v368);
              v33 = a11;
              v107 = (v84 + a11);
              *v107 = vzip2q_s64(v98, v99);
              v107[1] = vzip2q_s64(v102, v103);
              *v106 = vzip1q_s64(v100, v101);
              v106[1] = vzip1q_s64(v104, v105);
              v108 = (v84 + v368 + a11);
              *v108 = vzip2q_s64(v100, v101);
              v108[1] = vzip2q_s64(v104, v105);
              v88 = 128;
              v87 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v87 = 3 * a11;
              v86 = 2 * a11;
              if (v85 == 3)
              {
                v94 = vld1q_dup_f32(v82->i32);
                *v84 = v94;
                v84[1] = v94;
                v95 = &v84->i8[a11];
                *v95 = v94;
                v95[1] = v94;
                v96 = &v84->i8[v368];
                *v96 = v94;
                v96[1] = v94;
                v97 = &v84->i8[v367];
                *v97 = v94;
                v97[1] = v94;
                v88 = 4;
              }

              else if (*v83)
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v84, a11, v82, v85);
              }

              else
              {
                v88 = 0;
                *v84 = 0u;
                v84[1] = 0u;
                v89 = &v84->i8[a11];
                *v89 = 0u;
                *(v89 + 1) = 0u;
                v90 = &v84->i8[v368];
                *v90 = 0u;
                *(v90 + 1) = 0u;
                v91 = &v84->i8[v367];
                *v91 = 0u;
                *(v91 + 1) = 0u;
              }
            }

            v109 = v82->i64 + v88;
            v110 = (v84 + v370);
            v111 = v83[1];
            if (v111 == 127)
            {
              v120 = *v109;
              v121 = *(v109 + 16);
              v122 = *(v109 + 32);
              v123 = *(v109 + 48);
              v124 = *(v109 + 64);
              v125 = *(v109 + 80);
              v126 = *(v109 + 96);
              v127 = *(v109 + 112);
              *v110 = vzip1q_s64(*v109, v121);
              v110[1] = vzip1q_s64(v124, v125);
              v128 = (v110 + v86);
              v129 = (v110 + v33);
              *v129 = vzip2q_s64(v120, v121);
              v129[1] = vzip2q_s64(v124, v125);
              *v128 = vzip1q_s64(v122, v123);
              v128[1] = vzip1q_s64(v126, v127);
              v130 = (v110 + v86 + v33);
              *v130 = vzip2q_s64(v122, v123);
              v130[1] = vzip2q_s64(v126, v127);
              v112 = 128;
            }

            else if (v111 == 3)
            {
              v116 = vld1q_dup_f32(v109);
              *v110 = v116;
              v110[1] = v116;
              v117 = &v110->i8[v33];
              *v117 = v116;
              v117[1] = v116;
              v118 = &v110->i8[v86];
              *v118 = v116;
              v118[1] = v116;
              v119 = &v110->i8[v87];
              *v119 = v116;
              v119[1] = v116;
              v112 = 4;
            }

            else if (v83[1])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v370), v33, v109, v111);
            }

            else
            {
              v112 = 0;
              *v110 = 0u;
              v110[1] = 0u;
              v113 = &v110->i8[v33];
              *v113 = 0u;
              *(v113 + 1) = 0u;
              v114 = &v110->i8[v86];
              *v114 = 0u;
              *(v114 + 1) = 0u;
              v115 = &v110->i8[v87];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v131 = v109 + v112;
            v132 = v84 + 2;
            v133 = v83[2];
            if (v133 == 127)
            {
              v142 = *v131;
              v143 = *(v131 + 16);
              v144 = *(v131 + 32);
              v145 = *(v131 + 48);
              v146 = *(v131 + 64);
              v147 = *(v131 + 80);
              v148 = *(v131 + 96);
              v149 = *(v131 + 112);
              *v132 = vzip1q_s64(*v131, v143);
              v84[3] = vzip1q_s64(v146, v147);
              v150 = (v132 + v86);
              v151 = (v132 + v33);
              *v151 = vzip2q_s64(v142, v143);
              v151[1] = vzip2q_s64(v146, v147);
              *v150 = vzip1q_s64(v144, v145);
              v150[1] = vzip1q_s64(v148, v149);
              v152 = (v132 + v86 + v33);
              *v152 = vzip2q_s64(v144, v145);
              v152[1] = vzip2q_s64(v148, v149);
              v134 = 128;
            }

            else if (v133 == 3)
            {
              v138 = vld1q_dup_f32(v131);
              v84[2] = v138;
              v84[3] = v138;
              v139 = &v132->i8[v33];
              *v139 = v138;
              v139[1] = v138;
              v140 = &v132->i8[v86];
              *v140 = v138;
              v140[1] = v138;
              v141 = &v132->i8[v87];
              *v141 = v138;
              v141[1] = v138;
              v134 = 4;
            }

            else if (v83[2])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v33, v131, v133);
            }

            else
            {
              v134 = 0;
              *v132 = 0u;
              v84[3] = 0u;
              v135 = &v132->i8[v33];
              *v135 = 0u;
              *(v135 + 1) = 0u;
              v136 = &v132->i8[v86];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v132->i8[v87];
              *v137 = 0u;
              *(v137 + 1) = 0u;
            }

            v153 = v131 + v134;
            v154 = v110 + 2;
            v155 = v83[3];
            if (v155 == 127)
            {
              v164 = *v153;
              v165 = *(v153 + 16);
              v166 = *(v153 + 32);
              v167 = *(v153 + 48);
              v168 = *(v153 + 64);
              v169 = *(v153 + 80);
              v170 = *(v153 + 96);
              v171 = *(v153 + 112);
              *v154 = vzip1q_s64(*v153, v165);
              v110[3] = vzip1q_s64(v168, v169);
              v172 = (v154 + v86);
              v173 = (v154 + v33);
              *v173 = vzip2q_s64(v164, v165);
              v173[1] = vzip2q_s64(v168, v169);
              *v172 = vzip1q_s64(v166, v167);
              v172[1] = vzip1q_s64(v170, v171);
              v174 = (v154 + v86 + v33);
              *v174 = vzip2q_s64(v166, v167);
              v174[1] = vzip2q_s64(v170, v171);
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v110[2] = v160;
              v110[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v86];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v87];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v83[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v110[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v86];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v87];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v175 = v153 + v156;
            v176 = (v84 + v369);
            v177 = v83[4];
            if (v177 == 127)
            {
              v186 = *v175;
              v187 = *(v175 + 16);
              v188 = *(v175 + 32);
              v189 = *(v175 + 48);
              v190 = *(v175 + 64);
              v191 = *(v175 + 80);
              v192 = *(v175 + 96);
              v193 = *(v175 + 112);
              *v176 = vzip1q_s64(*v175, v187);
              v176[1] = vzip1q_s64(v190, v191);
              v194 = (v176 + v86);
              v195 = (v176 + v33);
              *v195 = vzip2q_s64(v186, v187);
              v195[1] = vzip2q_s64(v190, v191);
              *v194 = vzip1q_s64(v188, v189);
              v194[1] = vzip1q_s64(v192, v193);
              v196 = (v176 + v86 + v33);
              *v196 = vzip2q_s64(v188, v189);
              v196[1] = vzip2q_s64(v192, v193);
              v178 = 128;
            }

            else if (v177 == 3)
            {
              v182 = vld1q_dup_f32(v175);
              *v176 = v182;
              v176[1] = v182;
              v183 = &v176->i8[v33];
              *v183 = v182;
              v183[1] = v182;
              v184 = &v176->i8[v86];
              *v184 = v182;
              v184[1] = v182;
              v185 = &v176->i8[v87];
              *v185 = v182;
              v185[1] = v182;
              v178 = 4;
            }

            else if (v83[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v369), v33, v175, v177);
            }

            else
            {
              v178 = 0;
              *v176 = 0u;
              v176[1] = 0u;
              v179 = &v176->i8[v33];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v176->i8[v86];
              *v180 = 0u;
              *(v180 + 1) = 0u;
              v181 = &v176->i8[v87];
              *v181 = 0u;
              *(v181 + 1) = 0u;
            }

            v197 = v175 + v178;
            v198 = (v84 + 12 * a11);
            v199 = v83[5];
            if (v199 == 127)
            {
              v208 = *v197;
              v209 = *(v197 + 16);
              v210 = *(v197 + 32);
              v211 = *(v197 + 48);
              v212 = *(v197 + 64);
              v213 = *(v197 + 80);
              v214 = *(v197 + 96);
              v215 = *(v197 + 112);
              *v198 = vzip1q_s64(*v197, v209);
              v198[1] = vzip1q_s64(v212, v213);
              v216 = (v198 + v86);
              v217 = (v198 + v33);
              *v217 = vzip2q_s64(v208, v209);
              v217[1] = vzip2q_s64(v212, v213);
              *v216 = vzip1q_s64(v210, v211);
              v216[1] = vzip1q_s64(v214, v215);
              v218 = (v198 + v86 + v33);
              *v218 = vzip2q_s64(v210, v211);
              v218[1] = vzip2q_s64(v214, v215);
              v200 = 128;
            }

            else if (v199 == 3)
            {
              v204 = vld1q_dup_f32(v197);
              *v198 = v204;
              v198[1] = v204;
              v205 = &v198->i8[v33];
              *v205 = v204;
              v205[1] = v204;
              v206 = &v198->i8[v86];
              *v206 = v204;
              v206[1] = v204;
              v207 = &v198->i8[v87];
              *v207 = v204;
              v207[1] = v204;
              v200 = 4;
            }

            else if (v83[5])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v33, v197, v199);
            }

            else
            {
              v200 = 0;
              *v198 = 0u;
              v198[1] = 0u;
              v201 = &v198->i8[v33];
              *v201 = 0u;
              *(v201 + 1) = 0u;
              v202 = &v198->i8[v86];
              *v202 = 0u;
              *(v202 + 1) = 0u;
              v203 = &v198->i8[v87];
              *v203 = 0u;
              *(v203 + 1) = 0u;
            }

            v219 = v197 + v200;
            v220 = v176 + 2;
            v221 = v83[6];
            if (v221 == 127)
            {
              v230 = *v219;
              v231 = *(v219 + 16);
              v232 = *(v219 + 32);
              v233 = *(v219 + 48);
              v234 = *(v219 + 64);
              v235 = *(v219 + 80);
              v236 = *(v219 + 96);
              v237 = *(v219 + 112);
              *v220 = vzip1q_s64(*v219, v231);
              v176[3] = vzip1q_s64(v234, v235);
              v238 = (v220 + v86);
              v239 = (v220 + v33);
              *v239 = vzip2q_s64(v230, v231);
              v239[1] = vzip2q_s64(v234, v235);
              *v238 = vzip1q_s64(v232, v233);
              v238[1] = vzip1q_s64(v236, v237);
              v240 = (v220 + v86 + v33);
              *v240 = vzip2q_s64(v232, v233);
              v240[1] = vzip2q_s64(v236, v237);
              v222 = 128;
            }

            else if (v221 == 3)
            {
              v226 = vld1q_dup_f32(v219);
              v176[2] = v226;
              v176[3] = v226;
              v227 = &v220->i8[v33];
              *v227 = v226;
              v227[1] = v226;
              v228 = &v220->i8[v86];
              *v228 = v226;
              v228[1] = v226;
              v229 = &v220->i8[v87];
              *v229 = v226;
              v229[1] = v226;
              v222 = 4;
            }

            else if (v83[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              *v220 = 0u;
              v176[3] = 0u;
              v223 = &v220->i8[v33];
              *v223 = 0u;
              *(v223 + 1) = 0u;
              v224 = &v220->i8[v86];
              *v224 = 0u;
              *(v224 + 1) = 0u;
              v225 = &v220->i8[v87];
              *v225 = 0u;
              *(v225 + 1) = 0u;
            }

            v241 = v219 + v222;
            v242 = v198 + 2;
            v243 = v83[7];
            if (v243 == 127)
            {
              v248 = *v241;
              v249 = *(v241 + 16);
              v250 = *(v241 + 32);
              v251 = *(v241 + 48);
              v252 = *(v241 + 64);
              v253 = *(v241 + 80);
              v254 = *(v241 + 96);
              v255 = *(v241 + 112);
              *v242 = vzip1q_s64(*v241, v249);
              v198[3] = vzip1q_s64(v252, v253);
              v256 = (v242 + v86);
              v257 = (v242 + v33);
              *v257 = vzip2q_s64(v248, v249);
              v257[1] = vzip2q_s64(v252, v253);
              *v256 = vzip1q_s64(v250, v251);
              v256[1] = vzip1q_s64(v254, v255);
              v258 = (v242 + v86 + v33);
              *v258 = vzip2q_s64(v250, v251);
              v258[1] = vzip2q_s64(v254, v255);
              v45 = a7;
              v16 = v385;
            }

            else
            {
              v16 = v385;
              if (v243 == 3)
              {
                v244 = vld1q_dup_f32(v241);
                v198[2] = v244;
                v198[3] = v244;
LABEL_171:
                v245 = &v242->i8[v33];
                *v245 = v244;
                v245[1] = v244;
                v246 = &v242->i8[v86];
                *v246 = v244;
                v246[1] = v244;
                v247 = &v242->i8[v87];
                *v247 = v244;
                v247[1] = v244;
              }

              else
              {
                if (!v243)
                {
                  v244 = 0uLL;
                  *v242 = 0u;
                  v198[3] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v242, v33, v241, v243);
              }

              v45 = a7;
            }

LABEL_49:
            v44 = v18 & v357;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v385;
          block[5] = v82;
          v395 = v51;
          v396 = v386;
          v391 = v374;
          v392 = v48 - v46;
          block[6] = v83;
          v389 = v84;
          v33 = a11;
          v390 = a11;
          v393 = v373;
          v394 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v385 + 8) + 16552), block);
            v45 = a7;
            v16 = v385;
            goto LABEL_49;
          }

          v92 = *v83;
          if (v92 == 127)
          {
            v260 = *v82;
            v261 = v82[1];
            v262 = v82[2];
            v263 = v82[3];
            v264 = v82[4];
            v265 = v82[5];
            v266 = v82[6];
            v267 = v82[7];
            v398 = vzip1q_s64(*v82, v261);
            v399 = vzip1q_s64(v264, v265);
            v402 = vzip2q_s64(v260, v261);
            v403 = vzip2q_s64(v264, v265);
            v406 = vzip1q_s64(v262, v263);
            v407 = vzip1q_s64(v266, v267);
            v410 = vzip2q_s64(v262, v263);
            v411 = vzip2q_s64(v266, v267);
            v93 = 128;
          }

          else if (v92 == 3)
          {
            v259 = vld1q_dup_f32(v82->i32);
            v398 = v259;
            v399 = v259;
            v402 = v259;
            v403 = v259;
            v406 = v259;
            v407 = v259;
            v410 = v259;
            v411 = v259;
            v93 = 4;
          }

          else if (*v83)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 64, v82, v92);
          }

          else
          {
            v93 = 0;
            v399 = 0u;
            v398 = 0u;
            v402 = 0u;
            v403 = 0u;
            v406 = 0u;
            v407 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v268 = v82->i64 + v93;
          v269 = v83[1];
          if (v269 == 127)
          {
            v272 = *v268;
            v273 = *(v268 + 16);
            v274 = *(v268 + 32);
            v275 = *(v268 + 48);
            v276 = *(v268 + 64);
            v277 = *(v268 + 80);
            v278 = *(v268 + 96);
            v279 = *(v268 + 112);
            v414 = vzip1q_s64(*v268, v273);
            v415 = vzip1q_s64(v276, v277);
            v418 = vzip2q_s64(v272, v273);
            v419 = vzip2q_s64(v276, v277);
            v422 = vzip1q_s64(v274, v275);
            v423 = vzip1q_s64(v278, v279);
            v426 = vzip2q_s64(v274, v275);
            v427 = vzip2q_s64(v278, v279);
            v270 = 128;
          }

          else if (v269 == 3)
          {
            v271 = vld1q_dup_f32(v268);
            v414 = v271;
            v415 = v271;
            v418 = v271;
            v419 = v271;
            v422 = v271;
            v423 = v271;
            v426 = v271;
            v427 = v271;
            v270 = 4;
          }

          else if (v83[1])
          {
            v270 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 64, v268, v269);
          }

          else
          {
            v270 = 0;
            v414 = 0u;
            v415 = 0u;
            v418 = 0u;
            v419 = 0u;
            v422 = 0u;
            v423 = 0u;
            v426 = 0u;
            v427 = 0u;
          }

          v280 = v268 + v270;
          v281 = v83[2];
          if (v281 == 127)
          {
            v284 = *v280;
            v285 = *(v280 + 16);
            v286 = *(v280 + 32);
            v287 = *(v280 + 48);
            v288 = *(v280 + 64);
            v289 = *(v280 + 80);
            v290 = *(v280 + 96);
            v291 = *(v280 + 112);
            v400 = vzip1q_s64(*v280, v285);
            v401 = vzip1q_s64(v288, v289);
            v404 = vzip2q_s64(v284, v285);
            v405 = vzip2q_s64(v288, v289);
            v408 = vzip1q_s64(v286, v287);
            v409 = vzip1q_s64(v290, v291);
            v412 = vzip2q_s64(v286, v287);
            v413 = vzip2q_s64(v290, v291);
            v282 = 128;
          }

          else if (v281 == 3)
          {
            v283 = vld1q_dup_f32(v280);
            v400 = v283;
            v401 = v283;
            v404 = v283;
            v405 = v283;
            v408 = v283;
            v409 = v283;
            v412 = v283;
            v413 = v283;
            v282 = 4;
          }

          else if (v83[2])
          {
            v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v400, 64, v280, v281);
          }

          else
          {
            v282 = 0;
            v400 = 0u;
            v401 = 0u;
            v404 = 0u;
            v405 = 0u;
            v408 = 0u;
            v409 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v292 = v280 + v282;
          v293 = v83[3];
          if (v293 == 127)
          {
            v296 = *v292;
            v297 = *(v292 + 16);
            v298 = *(v292 + 32);
            v299 = *(v292 + 48);
            v300 = *(v292 + 64);
            v301 = *(v292 + 80);
            v302 = *(v292 + 96);
            v303 = *(v292 + 112);
            v416 = vzip1q_s64(*v292, v297);
            v417 = vzip1q_s64(v300, v301);
            v420 = vzip2q_s64(v296, v297);
            v421 = vzip2q_s64(v300, v301);
            v424 = vzip1q_s64(v298, v299);
            v425 = vzip1q_s64(v302, v303);
            v428 = vzip2q_s64(v298, v299);
            v429 = vzip2q_s64(v302, v303);
            v294 = 128;
          }

          else if (v293 == 3)
          {
            v295 = vld1q_dup_f32(v292);
            v416 = v295;
            v417 = v295;
            v420 = v295;
            v421 = v295;
            v424 = v295;
            v425 = v295;
            v428 = v295;
            v429 = v295;
            v294 = 4;
          }

          else if (v83[3])
          {
            v294 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 64, v292, v293);
          }

          else
          {
            v294 = 0;
            v416 = 0u;
            v417 = 0u;
            v420 = 0u;
            v421 = 0u;
            v424 = 0u;
            v425 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v304 = v292 + v294;
          v305 = v83[4];
          if (v305 == 127)
          {
            v308 = *v304;
            v309 = *(v304 + 16);
            v310 = *(v304 + 32);
            v311 = *(v304 + 48);
            v312 = *(v304 + 64);
            v313 = *(v304 + 80);
            v314 = *(v304 + 96);
            v315 = *(v304 + 112);
            v430 = vzip1q_s64(*v304, v309);
            v431 = vzip1q_s64(v312, v313);
            v434 = vzip2q_s64(v308, v309);
            v435 = vzip2q_s64(v312, v313);
            v438 = vzip1q_s64(v310, v311);
            v439 = vzip1q_s64(v314, v315);
            v442 = vzip2q_s64(v310, v311);
            v443 = vzip2q_s64(v314, v315);
            v306 = 128;
          }

          else if (v305 == 3)
          {
            v307 = vld1q_dup_f32(v304);
            v430 = v307;
            v431 = v307;
            v434 = v307;
            v435 = v307;
            v438 = v307;
            v439 = v307;
            v442 = v307;
            v443 = v307;
            v306 = 4;
          }

          else if (v83[4])
          {
            v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 64, v304, v305);
          }

          else
          {
            v306 = 0;
            v430 = 0u;
            v431 = 0u;
            v434 = 0u;
            v435 = 0u;
            v438 = 0u;
            v439 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v316 = v304 + v306;
          v317 = v83[5];
          if (v317 == 127)
          {
            v320 = *v316;
            v321 = *(v316 + 16);
            v322 = *(v316 + 32);
            v323 = *(v316 + 48);
            v324 = *(v316 + 64);
            v325 = *(v316 + 80);
            v326 = *(v316 + 96);
            v327 = *(v316 + 112);
            v446 = vzip1q_s64(*v316, v321);
            v447 = vzip1q_s64(v324, v325);
            v450 = vzip2q_s64(v320, v321);
            v451 = vzip2q_s64(v324, v325);
            v454 = vzip1q_s64(v322, v323);
            v455 = vzip1q_s64(v326, v327);
            v458 = vzip2q_s64(v322, v323);
            v459 = vzip2q_s64(v326, v327);
            v318 = 128;
          }

          else if (v317 == 3)
          {
            v319 = vld1q_dup_f32(v316);
            v446 = v319;
            v447 = v319;
            v450 = v319;
            v451 = v319;
            v454 = v319;
            v455 = v319;
            v458 = v319;
            v459 = v319;
            v318 = 4;
          }

          else if (v83[5])
          {
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v446, 64, v316, v317);
          }

          else
          {
            v318 = 0;
            v446 = 0u;
            v447 = 0u;
            v450 = 0u;
            v451 = 0u;
            v454 = 0u;
            v455 = 0u;
            v458 = 0u;
            v459 = 0u;
          }

          v328 = v316 + v318;
          v329 = v83[6];
          if (v329 == 127)
          {
            v332 = *v328;
            v333 = *(v328 + 16);
            v334 = *(v328 + 32);
            v335 = *(v328 + 48);
            v336 = *(v328 + 64);
            v337 = *(v328 + 80);
            v338 = *(v328 + 96);
            v339 = *(v328 + 112);
            v432 = vzip1q_s64(*v328, v333);
            v433 = vzip1q_s64(v336, v337);
            v436 = vzip2q_s64(v332, v333);
            v437 = vzip2q_s64(v336, v337);
            v440 = vzip1q_s64(v334, v335);
            v441 = vzip1q_s64(v338, v339);
            v444 = vzip2q_s64(v334, v335);
            v445 = vzip2q_s64(v338, v339);
            v330 = 128;
          }

          else if (v329 == 3)
          {
            v331 = vld1q_dup_f32(v328);
            v432 = v331;
            v433 = v331;
            v436 = v331;
            v437 = v331;
            v440 = v331;
            v441 = v331;
            v444 = v331;
            v445 = v331;
            v330 = 4;
          }

          else if (v83[6])
          {
            v330 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v432, 64, v328, v329);
          }

          else
          {
            v330 = 0;
            v432 = 0u;
            v433 = 0u;
            v436 = 0u;
            v437 = 0u;
            v440 = 0u;
            v441 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v340 = v328 + v330;
          v341 = v83[7];
          if (v341 == 127)
          {
            v343 = *v340;
            v344 = *(v340 + 16);
            v345 = *(v340 + 32);
            v346 = *(v340 + 48);
            v347 = *(v340 + 64);
            v348 = *(v340 + 80);
            v349 = *(v340 + 96);
            v350 = *(v340 + 112);
            v448 = vzip1q_s64(*v340, v344);
            v449 = vzip1q_s64(v347, v348);
            v452 = vzip2q_s64(v343, v344);
            v453 = vzip2q_s64(v347, v348);
            v456 = vzip1q_s64(v345, v346);
            v457 = vzip1q_s64(v349, v350);
            v460 = vzip2q_s64(v345, v346);
            v461 = vzip2q_s64(v349, v350);
            v45 = a7;
            v16 = v385;
          }

          else
          {
            v45 = a7;
            v16 = v385;
            if (v341 == 3)
            {
              v342 = vld1q_dup_f32(v340);
              v448 = v342;
              v449 = v342;
              v452 = v342;
              v453 = v342;
              v456 = v342;
              v457 = v342;
              v460 = v342;
              v461 = v342;
            }

            else if (v341)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v448, 64, v340, v341);
            }

            else
            {
              v448 = 0u;
              v449 = 0u;
              v452 = 0u;
              v453 = 0u;
              v456 = 0u;
              v457 = 0u;
              v460 = 0u;
              v461 = 0u;
            }
          }

          v44 = v18 & v357;
          v351 = v393;
          if (v393)
          {
            v352 = 0;
            v353 = &v398.i8[64 * v391 + 4 * v392];
            v354 = v394;
            do
            {
              if (v354)
              {
                v355 = 0;
                v356 = v389->i64 + v390 * v352;
                do
                {
                  *(v356 + v355) = v353[v355];
                  ++v355;
                  v354 = v394;
                }

                while (4 * v394 > v355);
                v351 = v393;
              }

              ++v352;
              v353 += 64;
            }

            while (v352 < v351);
          }

LABEL_50:
          v21 = v42++ == v377 >> 4;
        }

        while (!v21);
        v21 = v18++ == v362;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v461 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v383 = a8;
  v18 = a8 >> 4;
  v362 = a8 + a10 - 1;
  v364 = v362 >> 4;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v386 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v386;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v378 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v386;
  v377 = isLevelTiled;
  if (v18 <= v364)
  {
    v376 = a7 + a9 - 1;
    v361 = a7 >> 4;
    if (a7 >> 4 <= v376 >> 4)
    {
      v29 = a11;
      v385 = (a5 - 1) >> 4;
      v358 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v359 = (a6 - 1) & 0xF;
      v360 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v31 = vcgt_u32(v30, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), v31);
      v373 = v31;
      v357 = 8 * v20 * v19;
      v375 = a7;
      v365 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v32 = (16 * v18) | 0xF;
        if (16 * v18 <= v383)
        {
          v33 = v383;
        }

        else
        {
          v33 = 16 * v18;
        }

        if (v362 < v32)
        {
          v32 = v362;
        }

        v382 = 16 * v18;
        v372 = v33 - 16 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v359;
        v371 = v35;
        v37 = v35 != 16;
        v38 = v361;
        v39 = v359 + 1;
        if (v18 != v360)
        {
          v39 = 16;
        }

        v384 = v39;
        if (v18 != v360)
        {
          v36 = v37;
        }

        v370 = v36;
        v381 = a2 + (v33 - v383) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v376 < v41)
          {
            v41 = v376;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v385)
          {
            v45 = v369 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v382 >= v383 && v40 >= a7)
          {
            v47 = v43 != v369;
            if (v38 != v385)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v370;
          }

          if (v377)
          {
            v68 = 0;
            v69 = v357 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v347 = (v68 >> 4) - 1;
            if (v70)
            {
              v348 = 0;
              if (v71)
              {
                goto LABEL_235;
              }

LABEL_224:
              v349 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v349 | v348)
              {
                goto LABEL_225;
              }

LABEL_236:
              v356 = 0;
            }

            else
            {
              v348 = 32 - __clz(~(-1 << -__clz(v347)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_224;
              }

LABEL_235:
              v349 = 0;
              if (!v348)
              {
                goto LABEL_236;
              }

LABEL_225:
              v350 = 0;
              v351 = 0;
              v352 = v38 & v347;
              v353 = v348 != 0;
              v354 = v349 != 0;
              v355 = 1;
              do
              {
                --v348;
                if (v353)
                {
                  v351 |= (v355 & v352) << v350++;
                }

                else
                {
                  v348 = 0;
                }

                --v349;
                if (v354)
                {
                  v351 |= (v355 & v18 & ((v72 >> 4) - 1)) << v350++;
                }

                else
                {
                  v349 = 0;
                }

                v355 *= 2;
                --v350;
                v354 = v349 != 0;
                v353 = v348 != 0;
              }

              while (v349 | v348);
              v356 = v351 << 10;
            }

            v55 = v356 + ((v40 / v68 + v382 / v72 * ((v68 + v358) / v68)) << 14);
            goto LABEL_55;
          }

          if (v374)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v373.i8[4];
            v52 = v373.i8[0];
            v53 = v374.i32[1];
            v54 = v374.i32[0];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
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

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
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
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
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
              v63 |= (v66 & v18) << v62++;
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
LABEL_81:
          v73 = (a3 + v55);
          if (v378)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v386;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = (v381 + 4 * (v42 - a7));
          if (!(v46 & 1 | (v45 < 0x10u)) && v384 > 0xF)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = *v73;
              v89 = v73[1];
              v90 = v73[2];
              v91 = v73[3];
              v92 = v73[4];
              v93 = v73[5];
              v94 = v73[6];
              v95 = v73[7];
              v77 = 2 * a11;
              *v75 = vzip1q_s64(*v73, v89);
              v75[1] = vzip1q_s64(v92, v93);
              v96 = (v75 + v366);
              v29 = a11;
              v97 = (v75 + a11);
              *v97 = vzip2q_s64(v88, v89);
              v97[1] = vzip2q_s64(v92, v93);
              *v96 = vzip1q_s64(v90, v91);
              v96[1] = vzip1q_s64(v94, v95);
              v98 = (v75 + v366 + a11);
              *v98 = vzip2q_s64(v90, v91);
              v98[1] = vzip2q_s64(v94, v95);
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->i32);
                *v75 = v84;
                v75[1] = v84;
                v85 = &v75->i8[a11];
                *v85 = v84;
                v85[1] = v84;
                v86 = &v75->i8[v366];
                *v86 = v84;
                v86[1] = v84;
                v87 = &v75->i8[v365];
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                v75[1] = 0u;
                v79 = &v75->i8[a11];
                *v79 = 0u;
                *(v79 + 1) = 0u;
                v80 = &v75->i8[v366];
                *v80 = 0u;
                *(v80 + 1) = 0u;
                v81 = &v75->i8[v365];
                *v81 = 0u;
                *(v81 + 1) = 0u;
              }
            }

            v99 = v73->i64 + v78;
            v100 = (v75 + v368);
            v101 = v74[1];
            if (v101 == 127)
            {
              v110 = *v99;
              v111 = *(v99 + 16);
              v112 = *(v99 + 32);
              v113 = *(v99 + 48);
              v114 = *(v99 + 64);
              v115 = *(v99 + 80);
              v116 = *(v99 + 96);
              v117 = *(v99 + 112);
              *v100 = vzip1q_s64(*v99, v111);
              v100[1] = vzip1q_s64(v114, v115);
              v118 = (v100 + v77);
              v119 = (v100 + v29);
              *v119 = vzip2q_s64(v110, v111);
              v119[1] = vzip2q_s64(v114, v115);
              *v118 = vzip1q_s64(v112, v113);
              v118[1] = vzip1q_s64(v116, v117);
              v120 = (v100 + v77 + v29);
              *v120 = vzip2q_s64(v112, v113);
              v120[1] = vzip2q_s64(v116, v117);
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v106 = vld1q_dup_f32(v99);
              *v100 = v106;
              v100[1] = v106;
              v107 = &v100->i8[v29];
              *v107 = v106;
              v107[1] = v106;
              v108 = &v100->i8[v77];
              *v108 = v106;
              v108[1] = v106;
              v109 = &v100->i8[v365];
              *v109 = v106;
              v109[1] = v106;
              v102 = 4;
            }

            else if (v74[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v368), v29, v99, v101);
            }

            else
            {
              v102 = 0;
              *v100 = 0u;
              v100[1] = 0u;
              v103 = &v100->i8[v29];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v100->i8[v77];
              *v104 = 0u;
              *(v104 + 1) = 0u;
              v105 = &v100->i8[v365];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v121 = v99 + v102;
            v122 = v75 + 2;
            v123 = v74[2];
            if (v123 == 127)
            {
              v132 = *v121;
              v133 = *(v121 + 16);
              v134 = *(v121 + 32);
              v135 = *(v121 + 48);
              v136 = *(v121 + 64);
              v137 = *(v121 + 80);
              v138 = *(v121 + 96);
              v139 = *(v121 + 112);
              *v122 = vzip1q_s64(*v121, v133);
              v75[3] = vzip1q_s64(v136, v137);
              v140 = (v122 + v77);
              v141 = (v122 + v29);
              *v141 = vzip2q_s64(v132, v133);
              v141[1] = vzip2q_s64(v136, v137);
              *v140 = vzip1q_s64(v134, v135);
              v140[1] = vzip1q_s64(v138, v139);
              v142 = (v122 + v77 + v29);
              *v142 = vzip2q_s64(v134, v135);
              v142[1] = vzip2q_s64(v138, v139);
              v124 = 128;
            }

            else if (v123 == 3)
            {
              v128 = vld1q_dup_f32(v121);
              v75[2] = v128;
              v75[3] = v128;
              v129 = &v122->i8[v29];
              *v129 = v128;
              v129[1] = v128;
              v130 = &v122->i8[v77];
              *v130 = v128;
              v130[1] = v128;
              v131 = &v122->i8[v365];
              *v131 = v128;
              v131[1] = v128;
              v124 = 4;
            }

            else if (v74[2])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, v29, v121, v123);
            }

            else
            {
              v124 = 0;
              *v122 = 0u;
              v75[3] = 0u;
              v125 = &v122->i8[v29];
              *v125 = 0u;
              *(v125 + 1) = 0u;
              v126 = &v122->i8[v77];
              *v126 = 0u;
              *(v126 + 1) = 0u;
              v127 = &v122->i8[v365];
              *v127 = 0u;
              *(v127 + 1) = 0u;
            }

            v143 = v121 + v124;
            v144 = v100 + 2;
            v145 = v74[3];
            if (v145 == 127)
            {
              v154 = *v143;
              v155 = *(v143 + 16);
              v156 = *(v143 + 32);
              v157 = *(v143 + 48);
              v158 = *(v143 + 64);
              v159 = *(v143 + 80);
              v160 = *(v143 + 96);
              v161 = *(v143 + 112);
              *v144 = vzip1q_s64(*v143, v155);
              v100[3] = vzip1q_s64(v158, v159);
              v162 = (v144 + v77);
              v163 = (v144 + v29);
              *v163 = vzip2q_s64(v154, v155);
              v163[1] = vzip2q_s64(v158, v159);
              *v162 = vzip1q_s64(v156, v157);
              v162[1] = vzip1q_s64(v160, v161);
              v164 = (v144 + v77 + v29);
              *v164 = vzip2q_s64(v156, v157);
              v164[1] = vzip2q_s64(v160, v161);
              v146 = 128;
            }

            else if (v145 == 3)
            {
              v150 = vld1q_dup_f32(v143);
              v100[2] = v150;
              v100[3] = v150;
              v151 = &v144->i8[v29];
              *v151 = v150;
              v151[1] = v150;
              v152 = &v144->i8[v77];
              *v152 = v150;
              v152[1] = v150;
              v153 = &v144->i8[v365];
              *v153 = v150;
              v153[1] = v150;
              v146 = 4;
            }

            else if (v74[3])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, v29, v143, v145);
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              v100[3] = 0u;
              v147 = &v144->i8[v29];
              *v147 = 0u;
              *(v147 + 1) = 0u;
              v148 = &v144->i8[v77];
              *v148 = 0u;
              *(v148 + 1) = 0u;
              v149 = &v144->i8[v365];
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            v165 = v143 + v146;
            v166 = (v75 + v367);
            v167 = v74[4];
            if (v167 == 127)
            {
              v176 = *v165;
              v177 = *(v165 + 16);
              v178 = *(v165 + 32);
              v179 = *(v165 + 48);
              v180 = *(v165 + 64);
              v181 = *(v165 + 80);
              v182 = *(v165 + 96);
              v183 = *(v165 + 112);
              *v166 = vzip1q_s64(*v165, v177);
              v166[1] = vzip1q_s64(v180, v181);
              v184 = (v166 + v77);
              v185 = (v166 + v29);
              *v185 = vzip2q_s64(v176, v177);
              v185[1] = vzip2q_s64(v180, v181);
              *v184 = vzip1q_s64(v178, v179);
              v184[1] = vzip1q_s64(v182, v183);
              v186 = (v166 + v77 + v29);
              *v186 = vzip2q_s64(v178, v179);
              v186[1] = vzip2q_s64(v182, v183);
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v172 = vld1q_dup_f32(v165);
              *v166 = v172;
              v166[1] = v172;
              v173 = &v166->i8[v29];
              *v173 = v172;
              v173[1] = v172;
              v174 = &v166->i8[v77];
              *v174 = v172;
              v174[1] = v172;
              v175 = &v166->i8[v365];
              *v175 = v172;
              v175[1] = v172;
              v168 = 4;
            }

            else if (v74[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v367), v29, v165, v167);
            }

            else
            {
              v168 = 0;
              *v166 = 0u;
              v166[1] = 0u;
              v169 = &v166->i8[v29];
              *v169 = 0u;
              *(v169 + 1) = 0u;
              v170 = &v166->i8[v77];
              *v170 = 0u;
              *(v170 + 1) = 0u;
              v171 = &v166->i8[v365];
              *v171 = 0u;
              *(v171 + 1) = 0u;
            }

            v187 = v165 + v168;
            v188 = (v75 + 12 * a11);
            v189 = v74[5];
            if (v189 == 127)
            {
              v198 = *v187;
              v199 = *(v187 + 16);
              v200 = *(v187 + 32);
              v201 = *(v187 + 48);
              v202 = *(v187 + 64);
              v203 = *(v187 + 80);
              v204 = *(v187 + 96);
              v205 = *(v187 + 112);
              *v188 = vzip1q_s64(*v187, v199);
              v188[1] = vzip1q_s64(v202, v203);
              v206 = (v188 + v77);
              v207 = (v188 + v29);
              *v207 = vzip2q_s64(v198, v199);
              v207[1] = vzip2q_s64(v202, v203);
              *v206 = vzip1q_s64(v200, v201);
              v206[1] = vzip1q_s64(v204, v205);
              v208 = (v188 + v77 + v29);
              *v208 = vzip2q_s64(v200, v201);
              v208[1] = vzip2q_s64(v204, v205);
              v190 = 128;
            }

            else if (v189 == 3)
            {
              v194 = vld1q_dup_f32(v187);
              *v188 = v194;
              v188[1] = v194;
              v195 = &v188->i8[v29];
              *v195 = v194;
              v195[1] = v194;
              v196 = &v188->i8[v77];
              *v196 = v194;
              v196[1] = v194;
              v197 = &v188->i8[v365];
              *v197 = v194;
              v197[1] = v194;
              v190 = 4;
            }

            else if (v74[5])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v188, v29, v187, v189);
            }

            else
            {
              v190 = 0;
              *v188 = 0u;
              v188[1] = 0u;
              v191 = &v188->i8[v29];
              *v191 = 0u;
              *(v191 + 1) = 0u;
              v192 = &v188->i8[v77];
              *v192 = 0u;
              *(v192 + 1) = 0u;
              v193 = &v188->i8[v365];
              *v193 = 0u;
              *(v193 + 1) = 0u;
            }

            v209 = v187 + v190;
            v210 = v166 + 2;
            v211 = v74[6];
            if (v211 == 127)
            {
              v220 = *v209;
              v221 = *(v209 + 16);
              v222 = *(v209 + 32);
              v223 = *(v209 + 48);
              v224 = *(v209 + 64);
              v225 = *(v209 + 80);
              v226 = *(v209 + 96);
              v227 = *(v209 + 112);
              *v210 = vzip1q_s64(*v209, v221);
              v166[3] = vzip1q_s64(v224, v225);
              v228 = (v210 + v77);
              v229 = (v210 + v29);
              *v229 = vzip2q_s64(v220, v221);
              v229[1] = vzip2q_s64(v224, v225);
              *v228 = vzip1q_s64(v222, v223);
              v228[1] = vzip1q_s64(v226, v227);
              v230 = (v210 + v77 + v29);
              *v230 = vzip2q_s64(v222, v223);
              v230[1] = vzip2q_s64(v226, v227);
              v212 = 128;
            }

            else if (v211 == 3)
            {
              v216 = vld1q_dup_f32(v209);
              v166[2] = v216;
              v166[3] = v216;
              v217 = &v210->i8[v29];
              *v217 = v216;
              v217[1] = v216;
              v218 = &v210->i8[v77];
              *v218 = v216;
              v218[1] = v216;
              v219 = &v210->i8[v365];
              *v219 = v216;
              v219[1] = v216;
              v212 = 4;
            }

            else if (v74[6])
            {
              v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v210, v29, v209, v211);
            }

            else
            {
              v212 = 0;
              *v210 = 0u;
              v166[3] = 0u;
              v213 = &v210->i8[v29];
              *v213 = 0u;
              *(v213 + 1) = 0u;
              v214 = &v210->i8[v77];
              *v214 = 0u;
              *(v214 + 1) = 0u;
              v215 = &v210->i8[v365];
              *v215 = 0u;
              *(v215 + 1) = 0u;
            }

            v231 = v209 + v212;
            v232 = v188 + 2;
            v233 = v74[7];
            if (v233 == 127)
            {
              v238 = *v231;
              v239 = *(v231 + 16);
              v240 = *(v231 + 32);
              v241 = *(v231 + 48);
              v242 = *(v231 + 64);
              v243 = *(v231 + 80);
              v244 = *(v231 + 96);
              v245 = *(v231 + 112);
              *v232 = vzip1q_s64(*v231, v239);
              v188[3] = vzip1q_s64(v242, v243);
              v246 = (v232 + v77);
              v247 = (v232 + v29);
              *v247 = vzip2q_s64(v238, v239);
              v247[1] = vzip2q_s64(v242, v243);
              *v246 = vzip1q_s64(v240, v241);
              v246[1] = vzip1q_s64(v244, v245);
              v248 = (v232 + v77 + v29);
              *v248 = vzip2q_s64(v240, v241);
              v248[1] = vzip2q_s64(v244, v245);
            }

            else if (v233 == 3)
            {
              v234 = vld1q_dup_f32(v231);
              v188[2] = v234;
              v188[3] = v234;
LABEL_144:
              v235 = &v232->i8[v29];
              *v235 = v234;
              v235[1] = v234;
              v236 = &v232->i8[v77];
              *v236 = v234;
              v236[1] = v234;
              v237 = &v232->i8[v365];
              *v237 = v234;
              v237[1] = v234;
            }

            else
            {
              if (!v74[7])
              {
                v234 = 0uLL;
                *v232 = 0u;
                v188[3] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v232, v29, v231, v233);
            }

            a7 = v375;
            v28 = v386;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v394 = v45;
          v395 = v384;
          v390 = v372;
          v391 = v42 - v40;
          block[6] = v74;
          v388 = v75;
          v29 = a11;
          v389 = a11;
          v392 = v371;
          v393 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v386;
            a7 = v375;
          }

          else
          {
            v82 = *v74;
            a7 = v375;
            if (v82 == 127)
            {
              v250 = *v73;
              v251 = v73[1];
              v252 = v73[2];
              v253 = v73[3];
              v254 = v73[4];
              v255 = v73[5];
              v256 = v73[6];
              v257 = v73[7];
              v397 = vzip1q_s64(*v73, v251);
              v398 = vzip1q_s64(v254, v255);
              v401 = vzip2q_s64(v250, v251);
              v402 = vzip2q_s64(v254, v255);
              v405 = vzip1q_s64(v252, v253);
              v406 = vzip1q_s64(v256, v257);
              v409 = vzip2q_s64(v252, v253);
              v410 = vzip2q_s64(v256, v257);
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v249 = vld1q_dup_f32(v73->i32);
              v397 = v249;
              v398 = v249;
              v401 = v249;
              v402 = v249;
              v405 = v249;
              v406 = v249;
              v409 = v249;
              v410 = v249;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v397, 64, v73, v82);
            }

            else
            {
              v83 = 0;
              v398 = 0u;
              v397 = 0u;
              v401 = 0u;
              v402 = 0u;
              v405 = 0u;
              v406 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v258 = v73->i64 + v83;
            v259 = v74[1];
            if (v259 == 127)
            {
              v262 = *v258;
              v263 = *(v258 + 16);
              v264 = *(v258 + 32);
              v265 = *(v258 + 48);
              v266 = *(v258 + 64);
              v267 = *(v258 + 80);
              v268 = *(v258 + 96);
              v269 = *(v258 + 112);
              v413 = vzip1q_s64(*v258, v263);
              v414 = vzip1q_s64(v266, v267);
              v417 = vzip2q_s64(v262, v263);
              v418 = vzip2q_s64(v266, v267);
              v421 = vzip1q_s64(v264, v265);
              v422 = vzip1q_s64(v268, v269);
              v425 = vzip2q_s64(v264, v265);
              v426 = vzip2q_s64(v268, v269);
              v260 = 128;
            }

            else if (v259 == 3)
            {
              v261 = vld1q_dup_f32(v258);
              v413 = v261;
              v414 = v261;
              v417 = v261;
              v418 = v261;
              v421 = v261;
              v422 = v261;
              v425 = v261;
              v426 = v261;
              v260 = 4;
            }

            else if (v74[1])
            {
              v260 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 64, v258, v259);
            }

            else
            {
              v260 = 0;
              v413 = 0u;
              v414 = 0u;
              v417 = 0u;
              v418 = 0u;
              v421 = 0u;
              v422 = 0u;
              v425 = 0u;
              v426 = 0u;
            }

            v270 = v258 + v260;
            v271 = v74[2];
            if (v271 == 127)
            {
              v274 = *v270;
              v275 = *(v270 + 16);
              v276 = *(v270 + 32);
              v277 = *(v270 + 48);
              v278 = *(v270 + 64);
              v279 = *(v270 + 80);
              v280 = *(v270 + 96);
              v281 = *(v270 + 112);
              v399 = vzip1q_s64(*v270, v275);
              v400 = vzip1q_s64(v278, v279);
              v403 = vzip2q_s64(v274, v275);
              v404 = vzip2q_s64(v278, v279);
              v407 = vzip1q_s64(v276, v277);
              v408 = vzip1q_s64(v280, v281);
              v411 = vzip2q_s64(v276, v277);
              v412 = vzip2q_s64(v280, v281);
              v272 = 128;
            }

            else if (v271 == 3)
            {
              v273 = vld1q_dup_f32(v270);
              v399 = v273;
              v400 = v273;
              v403 = v273;
              v404 = v273;
              v407 = v273;
              v408 = v273;
              v411 = v273;
              v412 = v273;
              v272 = 4;
            }

            else if (v74[2])
            {
              v272 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v399, 64, v270, v271);
            }

            else
            {
              v272 = 0;
              v399 = 0u;
              v400 = 0u;
              v403 = 0u;
              v404 = 0u;
              v407 = 0u;
              v408 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v282 = v270 + v272;
            v283 = v74[3];
            if (v283 == 127)
            {
              v286 = *v282;
              v287 = *(v282 + 16);
              v288 = *(v282 + 32);
              v289 = *(v282 + 48);
              v290 = *(v282 + 64);
              v291 = *(v282 + 80);
              v292 = *(v282 + 96);
              v293 = *(v282 + 112);
              v415 = vzip1q_s64(*v282, v287);
              v416 = vzip1q_s64(v290, v291);
              v419 = vzip2q_s64(v286, v287);
              v420 = vzip2q_s64(v290, v291);
              v423 = vzip1q_s64(v288, v289);
              v424 = vzip1q_s64(v292, v293);
              v427 = vzip2q_s64(v288, v289);
              v428 = vzip2q_s64(v292, v293);
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v415 = v285;
              v416 = v285;
              v419 = v285;
              v420 = v285;
              v423 = v285;
              v424 = v285;
              v427 = v285;
              v428 = v285;
              v284 = 4;
            }

            else if (v74[3])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 64, v282, v283);
            }

            else
            {
              v284 = 0;
              v415 = 0u;
              v416 = 0u;
              v419 = 0u;
              v420 = 0u;
              v423 = 0u;
              v424 = 0u;
              v427 = 0u;
              v428 = 0u;
            }

            v294 = v282 + v284;
            v295 = v74[4];
            if (v295 == 127)
            {
              v298 = *v294;
              v299 = *(v294 + 16);
              v300 = *(v294 + 32);
              v301 = *(v294 + 48);
              v302 = *(v294 + 64);
              v303 = *(v294 + 80);
              v304 = *(v294 + 96);
              v305 = *(v294 + 112);
              v429 = vzip1q_s64(*v294, v299);
              v430 = vzip1q_s64(v302, v303);
              v433 = vzip2q_s64(v298, v299);
              v434 = vzip2q_s64(v302, v303);
              v437 = vzip1q_s64(v300, v301);
              v438 = vzip1q_s64(v304, v305);
              v441 = vzip2q_s64(v300, v301);
              v442 = vzip2q_s64(v304, v305);
              v296 = 128;
            }

            else if (v295 == 3)
            {
              v297 = vld1q_dup_f32(v294);
              v429 = v297;
              v430 = v297;
              v433 = v297;
              v434 = v297;
              v437 = v297;
              v438 = v297;
              v441 = v297;
              v442 = v297;
              v296 = 4;
            }

            else if (v74[4])
            {
              v296 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v429, 64, v294, v295);
            }

            else
            {
              v296 = 0;
              v429 = 0u;
              v430 = 0u;
              v433 = 0u;
              v434 = 0u;
              v437 = 0u;
              v438 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v306 = v294 + v296;
            v307 = v74[5];
            if (v307 == 127)
            {
              v310 = *v306;
              v311 = *(v306 + 16);
              v312 = *(v306 + 32);
              v313 = *(v306 + 48);
              v314 = *(v306 + 64);
              v315 = *(v306 + 80);
              v316 = *(v306 + 96);
              v317 = *(v306 + 112);
              v445 = vzip1q_s64(*v306, v311);
              v446 = vzip1q_s64(v314, v315);
              v449 = vzip2q_s64(v310, v311);
              v450 = vzip2q_s64(v314, v315);
              v453 = vzip1q_s64(v312, v313);
              v454 = vzip1q_s64(v316, v317);
              v457 = vzip2q_s64(v312, v313);
              v458 = vzip2q_s64(v316, v317);
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v445 = v309;
              v446 = v309;
              v449 = v309;
              v450 = v309;
              v453 = v309;
              v454 = v309;
              v457 = v309;
              v458 = v309;
              v308 = 4;
            }

            else if (v74[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v445, 64, v306, v307);
            }

            else
            {
              v308 = 0;
              v445 = 0u;
              v446 = 0u;
              v449 = 0u;
              v450 = 0u;
              v453 = 0u;
              v454 = 0u;
              v457 = 0u;
              v458 = 0u;
            }

            v318 = v306 + v308;
            v319 = v74[6];
            if (v319 == 127)
            {
              v322 = *v318;
              v323 = *(v318 + 16);
              v324 = *(v318 + 32);
              v325 = *(v318 + 48);
              v326 = *(v318 + 64);
              v327 = *(v318 + 80);
              v328 = *(v318 + 96);
              v329 = *(v318 + 112);
              v431 = vzip1q_s64(*v318, v323);
              v432 = vzip1q_s64(v326, v327);
              v435 = vzip2q_s64(v322, v323);
              v436 = vzip2q_s64(v326, v327);
              v439 = vzip1q_s64(v324, v325);
              v440 = vzip1q_s64(v328, v329);
              v443 = vzip2q_s64(v324, v325);
              v444 = vzip2q_s64(v328, v329);
              v320 = 128;
            }

            else if (v319 == 3)
            {
              v321 = vld1q_dup_f32(v318);
              v431 = v321;
              v432 = v321;
              v435 = v321;
              v436 = v321;
              v439 = v321;
              v440 = v321;
              v443 = v321;
              v444 = v321;
              v320 = 4;
            }

            else if (v74[6])
            {
              v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v431, 64, v318, v319);
            }

            else
            {
              v320 = 0;
              v431 = 0u;
              v432 = 0u;
              v435 = 0u;
              v436 = 0u;
              v439 = 0u;
              v440 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v330 = v318 + v320;
            v331 = v74[7];
            if (v331 == 127)
            {
              v333 = *v330;
              v334 = *(v330 + 16);
              v335 = *(v330 + 32);
              v336 = *(v330 + 48);
              v337 = *(v330 + 64);
              v338 = *(v330 + 80);
              v339 = *(v330 + 96);
              v340 = *(v330 + 112);
              v447 = vzip1q_s64(*v330, v334);
              v448 = vzip1q_s64(v337, v338);
              v451 = vzip2q_s64(v333, v334);
              v452 = vzip2q_s64(v337, v338);
              v455 = vzip1q_s64(v335, v336);
              v456 = vzip1q_s64(v339, v340);
              v459 = vzip2q_s64(v335, v336);
              v460 = vzip2q_s64(v339, v340);
            }

            else if (v331 == 3)
            {
              v332 = vld1q_dup_f32(v330);
              v447 = v332;
              v448 = v332;
              v451 = v332;
              v452 = v332;
              v455 = v332;
              v456 = v332;
              v459 = v332;
              v460 = v332;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v447, 64, v330, v331);
            }

            else
            {
              v447 = 0u;
              v448 = 0u;
              v451 = 0u;
              v452 = 0u;
              v455 = 0u;
              v456 = 0u;
              v459 = 0u;
              v460 = 0u;
            }

            v341 = v392;
            v28 = v386;
            if (v392)
            {
              v342 = 0;
              v343 = &v397.i8[64 * v390 + 4 * v391];
              v344 = v393;
              do
              {
                if (v344)
                {
                  v345 = 0;
                  v346 = v388->i64 + v389 * v342;
                  do
                  {
                    *(v346 + v345) = v343[v345];
                    ++v345;
                    v344 = v393;
                  }

                  while (4 * v393 > v345);
                  v341 = v392;
                }

                ++v342;
                v343 += 64;
              }

              while (v342 < v341);
            }
          }

LABEL_29:
          v23 = v38++ == v376 >> 4;
        }

        while (!v23);
        v23 = v18++ == v364;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v461 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v383 = a8;
  v18 = a8 >> 4;
  v362 = a8 + a10 - 1;
  v364 = v362 >> 4;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v386 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v386;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v378 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v386;
  v377 = isLevelTiled;
  if (v18 <= v364)
  {
    v376 = a7 + a9 - 1;
    v361 = a7 >> 4;
    if (a7 >> 4 <= v376 >> 4)
    {
      v29 = a11;
      v385 = (a5 - 1) >> 4;
      v358 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v359 = (a6 - 1) & 0xF;
      v360 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v31 = vcgt_u32(v30, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), v31);
      v373 = v31;
      v357 = 8 * v20 * v19;
      v375 = a7;
      v365 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v32 = (16 * v18) | 0xF;
        if (16 * v18 <= v383)
        {
          v33 = v383;
        }

        else
        {
          v33 = 16 * v18;
        }

        if (v362 < v32)
        {
          v32 = v362;
        }

        v382 = 16 * v18;
        v372 = v33 - 16 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v359;
        v371 = v35;
        v37 = v35 != 16;
        v38 = v361;
        v39 = v359 + 1;
        if (v18 != v360)
        {
          v39 = 16;
        }

        v384 = v39;
        if (v18 != v360)
        {
          v36 = v37;
        }

        v370 = v36;
        v381 = a2 + (v33 - v383) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v376 < v41)
          {
            v41 = v376;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v385)
          {
            v45 = v369 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v382 >= v383 && v40 >= a7)
          {
            v47 = v43 != v369;
            if (v38 != v385)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v370;
          }

          if (v377)
          {
            v68 = 0;
            v69 = v357 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v347 = (v68 >> 4) - 1;
            if (v70)
            {
              v348 = 0;
              if (v71)
              {
                goto LABEL_235;
              }

LABEL_224:
              v349 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v349 | v348)
              {
                goto LABEL_225;
              }

LABEL_236:
              v356 = 0;
            }

            else
            {
              v348 = 32 - __clz(~(-1 << -__clz(v347)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_224;
              }

LABEL_235:
              v349 = 0;
              if (!v348)
              {
                goto LABEL_236;
              }

LABEL_225:
              v350 = 0;
              v351 = 0;
              v352 = v38 & v347;
              v353 = v348 != 0;
              v354 = v349 != 0;
              v355 = 1;
              do
              {
                --v348;
                if (v353)
                {
                  v351 |= (v355 & v352) << v350++;
                }

                else
                {
                  v348 = 0;
                }

                --v349;
                if (v354)
                {
                  v351 |= (v355 & v18 & ((v72 >> 4) - 1)) << v350++;
                }

                else
                {
                  v349 = 0;
                }

                v355 *= 2;
                --v350;
                v354 = v349 != 0;
                v353 = v348 != 0;
              }

              while (v349 | v348);
              v356 = v351 << 10;
            }

            v55 = v356 + ((v40 / v68 + v382 / v72 * ((v68 + v358) / v68)) << 14);
            goto LABEL_55;
          }

          if (v374)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v373.i8[4];
            v52 = v373.i8[0];
            v53 = v374.i32[1];
            v54 = v374.i32[0];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
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

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
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
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
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
              v63 |= (v66 & v18) << v62++;
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
LABEL_81:
          v73 = (a3 + v55);
          if (v378)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v386;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = (v381 + 4 * (v42 - a7));
          if (!(v46 & 1 | (v45 < 0x10u)) && v384 > 0xF)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = *v73;
              v89 = v73[1];
              v90 = v73[2];
              v91 = v73[3];
              v92 = v73[4];
              v93 = v73[5];
              v94 = v73[6];
              v95 = v73[7];
              v77 = 2 * a11;
              *v75 = vzip1q_s64(*v73, v89);
              v75[1] = vzip1q_s64(v92, v93);
              v96 = (v75 + v366);
              v29 = a11;
              v97 = (v75 + a11);
              *v97 = vzip2q_s64(v88, v89);
              v97[1] = vzip2q_s64(v92, v93);
              *v96 = vzip1q_s64(v90, v91);
              v96[1] = vzip1q_s64(v94, v95);
              v98 = (v75 + v366 + a11);
              *v98 = vzip2q_s64(v90, v91);
              v98[1] = vzip2q_s64(v94, v95);
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->i32);
                *v75 = v84;
                v75[1] = v84;
                v85 = &v75->i8[a11];
                *v85 = v84;
                v85[1] = v84;
                v86 = &v75->i8[v366];
                *v86 = v84;
                v86[1] = v84;
                v87 = &v75->i8[v365];
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                v75[1] = 0u;
                v79 = &v75->i8[a11];
                *v79 = 0u;
                *(v79 + 1) = 0u;
                v80 = &v75->i8[v366];
                *v80 = 0u;
                *(v80 + 1) = 0u;
                v81 = &v75->i8[v365];
                *v81 = 0u;
                *(v81 + 1) = 0u;
              }
            }

            v99 = v73->i64 + v78;
            v100 = (v75 + v368);
            v101 = v74[1];
            if (v101 == 127)
            {
              v110 = *v99;
              v111 = *(v99 + 16);
              v112 = *(v99 + 32);
              v113 = *(v99 + 48);
              v114 = *(v99 + 64);
              v115 = *(v99 + 80);
              v116 = *(v99 + 96);
              v117 = *(v99 + 112);
              *v100 = vzip1q_s64(*v99, v111);
              v100[1] = vzip1q_s64(v114, v115);
              v118 = (v100 + v77);
              v119 = (v100 + v29);
              *v119 = vzip2q_s64(v110, v111);
              v119[1] = vzip2q_s64(v114, v115);
              *v118 = vzip1q_s64(v112, v113);
              v118[1] = vzip1q_s64(v116, v117);
              v120 = (v100 + v77 + v29);
              *v120 = vzip2q_s64(v112, v113);
              v120[1] = vzip2q_s64(v116, v117);
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v106 = vld1q_dup_f32(v99);
              *v100 = v106;
              v100[1] = v106;
              v107 = &v100->i8[v29];
              *v107 = v106;
              v107[1] = v106;
              v108 = &v100->i8[v77];
              *v108 = v106;
              v108[1] = v106;
              v109 = &v100->i8[v365];
              *v109 = v106;
              v109[1] = v106;
              v102 = 4;
            }

            else if (v74[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v368), v29, v99, v101);
            }

            else
            {
              v102 = 0;
              *v100 = 0u;
              v100[1] = 0u;
              v103 = &v100->i8[v29];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v100->i8[v77];
              *v104 = 0u;
              *(v104 + 1) = 0u;
              v105 = &v100->i8[v365];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v121 = v99 + v102;
            v122 = v75 + 2;
            v123 = v74[2];
            if (v123 == 127)
            {
              v132 = *v121;
              v133 = *(v121 + 16);
              v134 = *(v121 + 32);
              v135 = *(v121 + 48);
              v136 = *(v121 + 64);
              v137 = *(v121 + 80);
              v138 = *(v121 + 96);
              v139 = *(v121 + 112);
              *v122 = vzip1q_s64(*v121, v133);
              v75[3] = vzip1q_s64(v136, v137);
              v140 = (v122 + v77);
              v141 = (v122 + v29);
              *v141 = vzip2q_s64(v132, v133);
              v141[1] = vzip2q_s64(v136, v137);
              *v140 = vzip1q_s64(v134, v135);
              v140[1] = vzip1q_s64(v138, v139);
              v142 = (v122 + v77 + v29);
              *v142 = vzip2q_s64(v134, v135);
              v142[1] = vzip2q_s64(v138, v139);
              v124 = 128;
            }

            else if (v123 == 3)
            {
              v128 = vld1q_dup_f32(v121);
              v75[2] = v128;
              v75[3] = v128;
              v129 = &v122->i8[v29];
              *v129 = v128;
              v129[1] = v128;
              v130 = &v122->i8[v77];
              *v130 = v128;
              v130[1] = v128;
              v131 = &v122->i8[v365];
              *v131 = v128;
              v131[1] = v128;
              v124 = 4;
            }

            else if (v74[2])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, v29, v121, v123);
            }

            else
            {
              v124 = 0;
              *v122 = 0u;
              v75[3] = 0u;
              v125 = &v122->i8[v29];
              *v125 = 0u;
              *(v125 + 1) = 0u;
              v126 = &v122->i8[v77];
              *v126 = 0u;
              *(v126 + 1) = 0u;
              v127 = &v122->i8[v365];
              *v127 = 0u;
              *(v127 + 1) = 0u;
            }

            v143 = v121 + v124;
            v144 = v100 + 2;
            v145 = v74[3];
            if (v145 == 127)
            {
              v154 = *v143;
              v155 = *(v143 + 16);
              v156 = *(v143 + 32);
              v157 = *(v143 + 48);
              v158 = *(v143 + 64);
              v159 = *(v143 + 80);
              v160 = *(v143 + 96);
              v161 = *(v143 + 112);
              *v144 = vzip1q_s64(*v143, v155);
              v100[3] = vzip1q_s64(v158, v159);
              v162 = (v144 + v77);
              v163 = (v144 + v29);
              *v163 = vzip2q_s64(v154, v155);
              v163[1] = vzip2q_s64(v158, v159);
              *v162 = vzip1q_s64(v156, v157);
              v162[1] = vzip1q_s64(v160, v161);
              v164 = (v144 + v77 + v29);
              *v164 = vzip2q_s64(v156, v157);
              v164[1] = vzip2q_s64(v160, v161);
              v146 = 128;
            }

            else if (v145 == 3)
            {
              v150 = vld1q_dup_f32(v143);
              v100[2] = v150;
              v100[3] = v150;
              v151 = &v144->i8[v29];
              *v151 = v150;
              v151[1] = v150;
              v152 = &v144->i8[v77];
              *v152 = v150;
              v152[1] = v150;
              v153 = &v144->i8[v365];
              *v153 = v150;
              v153[1] = v150;
              v146 = 4;
            }

            else if (v74[3])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, v29, v143, v145);
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              v100[3] = 0u;
              v147 = &v144->i8[v29];
              *v147 = 0u;
              *(v147 + 1) = 0u;
              v148 = &v144->i8[v77];
              *v148 = 0u;
              *(v148 + 1) = 0u;
              v149 = &v144->i8[v365];
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            v165 = v143 + v146;
            v166 = (v75 + v367);
            v167 = v74[4];
            if (v167 == 127)
            {
              v176 = *v165;
              v177 = *(v165 + 16);
              v178 = *(v165 + 32);
              v179 = *(v165 + 48);
              v180 = *(v165 + 64);
              v181 = *(v165 + 80);
              v182 = *(v165 + 96);
              v183 = *(v165 + 112);
              *v166 = vzip1q_s64(*v165, v177);
              v166[1] = vzip1q_s64(v180, v181);
              v184 = (v166 + v77);
              v185 = (v166 + v29);
              *v185 = vzip2q_s64(v176, v177);
              v185[1] = vzip2q_s64(v180, v181);
              *v184 = vzip1q_s64(v178, v179);
              v184[1] = vzip1q_s64(v182, v183);
              v186 = (v166 + v77 + v29);
              *v186 = vzip2q_s64(v178, v179);
              v186[1] = vzip2q_s64(v182, v183);
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v172 = vld1q_dup_f32(v165);
              *v166 = v172;
              v166[1] = v172;
              v173 = &v166->i8[v29];
              *v173 = v172;
              v173[1] = v172;
              v174 = &v166->i8[v77];
              *v174 = v172;
              v174[1] = v172;
              v175 = &v166->i8[v365];
              *v175 = v172;
              v175[1] = v172;
              v168 = 4;
            }

            else if (v74[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v367), v29, v165, v167);
            }

            else
            {
              v168 = 0;
              *v166 = 0u;
              v166[1] = 0u;
              v169 = &v166->i8[v29];
              *v169 = 0u;
              *(v169 + 1) = 0u;
              v170 = &v166->i8[v77];
              *v170 = 0u;
              *(v170 + 1) = 0u;
              v171 = &v166->i8[v365];
              *v171 = 0u;
              *(v171 + 1) = 0u;
            }

            v187 = v165 + v168;
            v188 = (v75 + 12 * a11);
            v189 = v74[5];
            if (v189 == 127)
            {
              v198 = *v187;
              v199 = *(v187 + 16);
              v200 = *(v187 + 32);
              v201 = *(v187 + 48);
              v202 = *(v187 + 64);
              v203 = *(v187 + 80);
              v204 = *(v187 + 96);
              v205 = *(v187 + 112);
              *v188 = vzip1q_s64(*v187, v199);
              v188[1] = vzip1q_s64(v202, v203);
              v206 = (v188 + v77);
              v207 = (v188 + v29);
              *v207 = vzip2q_s64(v198, v199);
              v207[1] = vzip2q_s64(v202, v203);
              *v206 = vzip1q_s64(v200, v201);
              v206[1] = vzip1q_s64(v204, v205);
              v208 = (v188 + v77 + v29);
              *v208 = vzip2q_s64(v200, v201);
              v208[1] = vzip2q_s64(v204, v205);
              v190 = 128;
            }

            else if (v189 == 3)
            {
              v194 = vld1q_dup_f32(v187);
              *v188 = v194;
              v188[1] = v194;
              v195 = &v188->i8[v29];
              *v195 = v194;
              v195[1] = v194;
              v196 = &v188->i8[v77];
              *v196 = v194;
              v196[1] = v194;
              v197 = &v188->i8[v365];
              *v197 = v194;
              v197[1] = v194;
              v190 = 4;
            }

            else if (v74[5])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v188, v29, v187, v189);
            }

            else
            {
              v190 = 0;
              *v188 = 0u;
              v188[1] = 0u;
              v191 = &v188->i8[v29];
              *v191 = 0u;
              *(v191 + 1) = 0u;
              v192 = &v188->i8[v77];
              *v192 = 0u;
              *(v192 + 1) = 0u;
              v193 = &v188->i8[v365];
              *v193 = 0u;
              *(v193 + 1) = 0u;
            }

            v209 = v187 + v190;
            v210 = v166 + 2;
            v211 = v74[6];
            if (v211 == 127)
            {
              v220 = *v209;
              v221 = *(v209 + 16);
              v222 = *(v209 + 32);
              v223 = *(v209 + 48);
              v224 = *(v209 + 64);
              v225 = *(v209 + 80);
              v226 = *(v209 + 96);
              v227 = *(v209 + 112);
              *v210 = vzip1q_s64(*v209, v221);
              v166[3] = vzip1q_s64(v224, v225);
              v228 = (v210 + v77);
              v229 = (v210 + v29);
              *v229 = vzip2q_s64(v220, v221);
              v229[1] = vzip2q_s64(v224, v225);
              *v228 = vzip1q_s64(v222, v223);
              v228[1] = vzip1q_s64(v226, v227);
              v230 = (v210 + v77 + v29);
              *v230 = vzip2q_s64(v222, v223);
              v230[1] = vzip2q_s64(v226, v227);
              v212 = 128;
            }

            else if (v211 == 3)
            {
              v216 = vld1q_dup_f32(v209);
              v166[2] = v216;
              v166[3] = v216;
              v217 = &v210->i8[v29];
              *v217 = v216;
              v217[1] = v216;
              v218 = &v210->i8[v77];
              *v218 = v216;
              v218[1] = v216;
              v219 = &v210->i8[v365];
              *v219 = v216;
              v219[1] = v216;
              v212 = 4;
            }

            else if (v74[6])
            {
              v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v210, v29, v209, v211);
            }

            else
            {
              v212 = 0;
              *v210 = 0u;
              v166[3] = 0u;
              v213 = &v210->i8[v29];
              *v213 = 0u;
              *(v213 + 1) = 0u;
              v214 = &v210->i8[v77];
              *v214 = 0u;
              *(v214 + 1) = 0u;
              v215 = &v210->i8[v365];
              *v215 = 0u;
              *(v215 + 1) = 0u;
            }

            v231 = v209 + v212;
            v232 = v188 + 2;
            v233 = v74[7];
            if (v233 == 127)
            {
              v238 = *v231;
              v239 = *(v231 + 16);
              v240 = *(v231 + 32);
              v241 = *(v231 + 48);
              v242 = *(v231 + 64);
              v243 = *(v231 + 80);
              v244 = *(v231 + 96);
              v245 = *(v231 + 112);
              *v232 = vzip1q_s64(*v231, v239);
              v188[3] = vzip1q_s64(v242, v243);
              v246 = (v232 + v77);
              v247 = (v232 + v29);
              *v247 = vzip2q_s64(v238, v239);
              v247[1] = vzip2q_s64(v242, v243);
              *v246 = vzip1q_s64(v240, v241);
              v246[1] = vzip1q_s64(v244, v245);
              v248 = (v232 + v77 + v29);
              *v248 = vzip2q_s64(v240, v241);
              v248[1] = vzip2q_s64(v244, v245);
            }

            else if (v233 == 3)
            {
              v234 = vld1q_dup_f32(v231);
              v188[2] = v234;
              v188[3] = v234;
LABEL_144:
              v235 = &v232->i8[v29];
              *v235 = v234;
              v235[1] = v234;
              v236 = &v232->i8[v77];
              *v236 = v234;
              v236[1] = v234;
              v237 = &v232->i8[v365];
              *v237 = v234;
              v237[1] = v234;
            }

            else
            {
              if (!v74[7])
              {
                v234 = 0uLL;
                *v232 = 0u;
                v188[3] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v232, v29, v231, v233);
            }

            a7 = v375;
            v28 = v386;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v394 = v45;
          v395 = v384;
          v390 = v372;
          v391 = v42 - v40;
          block[6] = v74;
          v388 = v75;
          v29 = a11;
          v389 = a11;
          v392 = v371;
          v393 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v386;
            a7 = v375;
          }

          else
          {
            v82 = *v74;
            a7 = v375;
            if (v82 == 127)
            {
              v250 = *v73;
              v251 = v73[1];
              v252 = v73[2];
              v253 = v73[3];
              v254 = v73[4];
              v255 = v73[5];
              v256 = v73[6];
              v257 = v73[7];
              v397 = vzip1q_s64(*v73, v251);
              v398 = vzip1q_s64(v254, v255);
              v401 = vzip2q_s64(v250, v251);
              v402 = vzip2q_s64(v254, v255);
              v405 = vzip1q_s64(v252, v253);
              v406 = vzip1q_s64(v256, v257);
              v409 = vzip2q_s64(v252, v253);
              v410 = vzip2q_s64(v256, v257);
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v249 = vld1q_dup_f32(v73->i32);
              v397 = v249;
              v398 = v249;
              v401 = v249;
              v402 = v249;
              v405 = v249;
              v406 = v249;
              v409 = v249;
              v410 = v249;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v397, 64, v73, v82);
            }

            else
            {
              v83 = 0;
              v398 = 0u;
              v397 = 0u;
              v401 = 0u;
              v402 = 0u;
              v405 = 0u;
              v406 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v258 = v73->i64 + v83;
            v259 = v74[1];
            if (v259 == 127)
            {
              v262 = *v258;
              v263 = *(v258 + 16);
              v264 = *(v258 + 32);
              v265 = *(v258 + 48);
              v266 = *(v258 + 64);
              v267 = *(v258 + 80);
              v268 = *(v258 + 96);
              v269 = *(v258 + 112);
              v413 = vzip1q_s64(*v258, v263);
              v414 = vzip1q_s64(v266, v267);
              v417 = vzip2q_s64(v262, v263);
              v418 = vzip2q_s64(v266, v267);
              v421 = vzip1q_s64(v264, v265);
              v422 = vzip1q_s64(v268, v269);
              v425 = vzip2q_s64(v264, v265);
              v426 = vzip2q_s64(v268, v269);
              v260 = 128;
            }

            else if (v259 == 3)
            {
              v261 = vld1q_dup_f32(v258);
              v413 = v261;
              v414 = v261;
              v417 = v261;
              v418 = v261;
              v421 = v261;
              v422 = v261;
              v425 = v261;
              v426 = v261;
              v260 = 4;
            }

            else if (v74[1])
            {
              v260 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 64, v258, v259);
            }

            else
            {
              v260 = 0;
              v413 = 0u;
              v414 = 0u;
              v417 = 0u;
              v418 = 0u;
              v421 = 0u;
              v422 = 0u;
              v425 = 0u;
              v426 = 0u;
            }

            v270 = v258 + v260;
            v271 = v74[2];
            if (v271 == 127)
            {
              v274 = *v270;
              v275 = *(v270 + 16);
              v276 = *(v270 + 32);
              v277 = *(v270 + 48);
              v278 = *(v270 + 64);
              v279 = *(v270 + 80);
              v280 = *(v270 + 96);
              v281 = *(v270 + 112);
              v399 = vzip1q_s64(*v270, v275);
              v400 = vzip1q_s64(v278, v279);
              v403 = vzip2q_s64(v274, v275);
              v404 = vzip2q_s64(v278, v279);
              v407 = vzip1q_s64(v276, v277);
              v408 = vzip1q_s64(v280, v281);
              v411 = vzip2q_s64(v276, v277);
              v412 = vzip2q_s64(v280, v281);
              v272 = 128;
            }

            else if (v271 == 3)
            {
              v273 = vld1q_dup_f32(v270);
              v399 = v273;
              v400 = v273;
              v403 = v273;
              v404 = v273;
              v407 = v273;
              v408 = v273;
              v411 = v273;
              v412 = v273;
              v272 = 4;
            }

            else if (v74[2])
            {
              v272 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v399, 64, v270, v271);
            }

            else
            {
              v272 = 0;
              v399 = 0u;
              v400 = 0u;
              v403 = 0u;
              v404 = 0u;
              v407 = 0u;
              v408 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v282 = v270 + v272;
            v283 = v74[3];
            if (v283 == 127)
            {
              v286 = *v282;
              v287 = *(v282 + 16);
              v288 = *(v282 + 32);
              v289 = *(v282 + 48);
              v290 = *(v282 + 64);
              v291 = *(v282 + 80);
              v292 = *(v282 + 96);
              v293 = *(v282 + 112);
              v415 = vzip1q_s64(*v282, v287);
              v416 = vzip1q_s64(v290, v291);
              v419 = vzip2q_s64(v286, v287);
              v420 = vzip2q_s64(v290, v291);
              v423 = vzip1q_s64(v288, v289);
              v424 = vzip1q_s64(v292, v293);
              v427 = vzip2q_s64(v288, v289);
              v428 = vzip2q_s64(v292, v293);
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v415 = v285;
              v416 = v285;
              v419 = v285;
              v420 = v285;
              v423 = v285;
              v424 = v285;
              v427 = v285;
              v428 = v285;
              v284 = 4;
            }

            else if (v74[3])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 64, v282, v283);
            }

            else
            {
              v284 = 0;
              v415 = 0u;
              v416 = 0u;
              v419 = 0u;
              v420 = 0u;
              v423 = 0u;
              v424 = 0u;
              v427 = 0u;
              v428 = 0u;
            }

            v294 = v282 + v284;
            v295 = v74[4];
            if (v295 == 127)
            {
              v298 = *v294;
              v299 = *(v294 + 16);
              v300 = *(v294 + 32);
              v301 = *(v294 + 48);
              v302 = *(v294 + 64);
              v303 = *(v294 + 80);
              v304 = *(v294 + 96);
              v305 = *(v294 + 112);
              v429 = vzip1q_s64(*v294, v299);
              v430 = vzip1q_s64(v302, v303);
              v433 = vzip2q_s64(v298, v299);
              v434 = vzip2q_s64(v302, v303);
              v437 = vzip1q_s64(v300, v301);
              v438 = vzip1q_s64(v304, v305);
              v441 = vzip2q_s64(v300, v301);
              v442 = vzip2q_s64(v304, v305);
              v296 = 128;
            }

            else if (v295 == 3)
            {
              v297 = vld1q_dup_f32(v294);
              v429 = v297;
              v430 = v297;
              v433 = v297;
              v434 = v297;
              v437 = v297;
              v438 = v297;
              v441 = v297;
              v442 = v297;
              v296 = 4;
            }

            else if (v74[4])
            {
              v296 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v429, 64, v294, v295);
            }

            else
            {
              v296 = 0;
              v429 = 0u;
              v430 = 0u;
              v433 = 0u;
              v434 = 0u;
              v437 = 0u;
              v438 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v306 = v294 + v296;
            v307 = v74[5];
            if (v307 == 127)
            {
              v310 = *v306;
              v311 = *(v306 + 16);
              v312 = *(v306 + 32);
              v313 = *(v306 + 48);
              v314 = *(v306 + 64);
              v315 = *(v306 + 80);
              v316 = *(v306 + 96);
              v317 = *(v306 + 112);
              v445 = vzip1q_s64(*v306, v311);
              v446 = vzip1q_s64(v314, v315);
              v449 = vzip2q_s64(v310, v311);
              v450 = vzip2q_s64(v314, v315);
              v453 = vzip1q_s64(v312, v313);
              v454 = vzip1q_s64(v316, v317);
              v457 = vzip2q_s64(v312, v313);
              v458 = vzip2q_s64(v316, v317);
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v445 = v309;
              v446 = v309;
              v449 = v309;
              v450 = v309;
              v453 = v309;
              v454 = v309;
              v457 = v309;
              v458 = v309;
              v308 = 4;
            }

            else if (v74[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v445, 64, v306, v307);
            }

            else
            {
              v308 = 0;
              v445 = 0u;
              v446 = 0u;
              v449 = 0u;
              v450 = 0u;
              v453 = 0u;
              v454 = 0u;
              v457 = 0u;
              v458 = 0u;
            }

            v318 = v306 + v308;
            v319 = v74[6];
            if (v319 == 127)
            {
              v322 = *v318;
              v323 = *(v318 + 16);
              v324 = *(v318 + 32);
              v325 = *(v318 + 48);
              v326 = *(v318 + 64);
              v327 = *(v318 + 80);
              v328 = *(v318 + 96);
              v329 = *(v318 + 112);
              v431 = vzip1q_s64(*v318, v323);
              v432 = vzip1q_s64(v326, v327);
              v435 = vzip2q_s64(v322, v323);
              v436 = vzip2q_s64(v326, v327);
              v439 = vzip1q_s64(v324, v325);
              v440 = vzip1q_s64(v328, v329);
              v443 = vzip2q_s64(v324, v325);
              v444 = vzip2q_s64(v328, v329);
              v320 = 128;
            }

            else if (v319 == 3)
            {
              v321 = vld1q_dup_f32(v318);
              v431 = v321;
              v432 = v321;
              v435 = v321;
              v436 = v321;
              v439 = v321;
              v440 = v321;
              v443 = v321;
              v444 = v321;
              v320 = 4;
            }

            else if (v74[6])
            {
              v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v431, 64, v318, v319);
            }

            else
            {
              v320 = 0;
              v431 = 0u;
              v432 = 0u;
              v435 = 0u;
              v436 = 0u;
              v439 = 0u;
              v440 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v330 = v318 + v320;
            v331 = v74[7];
            if (v331 == 127)
            {
              v333 = *v330;
              v334 = *(v330 + 16);
              v335 = *(v330 + 32);
              v336 = *(v330 + 48);
              v337 = *(v330 + 64);
              v338 = *(v330 + 80);
              v339 = *(v330 + 96);
              v340 = *(v330 + 112);
              v447 = vzip1q_s64(*v330, v334);
              v448 = vzip1q_s64(v337, v338);
              v451 = vzip2q_s64(v333, v334);
              v452 = vzip2q_s64(v337, v338);
              v455 = vzip1q_s64(v335, v336);
              v456 = vzip1q_s64(v339, v340);
              v459 = vzip2q_s64(v335, v336);
              v460 = vzip2q_s64(v339, v340);
            }

            else if (v331 == 3)
            {
              v332 = vld1q_dup_f32(v330);
              v447 = v332;
              v448 = v332;
              v451 = v332;
              v452 = v332;
              v455 = v332;
              v456 = v332;
              v459 = v332;
              v460 = v332;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v447, 64, v330, v331);
            }

            else
            {
              v447 = 0u;
              v448 = 0u;
              v451 = 0u;
              v452 = 0u;
              v455 = 0u;
              v456 = 0u;
              v459 = 0u;
              v460 = 0u;
            }

            v341 = v392;
            v28 = v386;
            if (v392)
            {
              v342 = 0;
              v343 = &v397.i8[64 * v390 + 4 * v391];
              v344 = v393;
              do
              {
                if (v344)
                {
                  v345 = 0;
                  v346 = v388->i64 + v389 * v342;
                  do
                  {
                    *(v346 + v345) = v343[v345];
                    ++v345;
                    v344 = v393;
                  }

                  while (4 * v393 > v345);
                  v341 = v392;
                }

                ++v342;
                v343 += 64;
              }

              while (v342 < v341);
            }
          }

LABEL_29:
          v23 = v38++ == v376 >> 4;
        }

        while (!v23);
        v23 = v18++ == v364;
      }

      while (!v23);
    }
  }
}