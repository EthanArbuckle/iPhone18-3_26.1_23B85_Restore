uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v278 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v231 = a8;
  v17 = a8 >> 4;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v234 = a1;
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
  v226 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v225 = result;
  if (v17 <= v212)
  {
    v224 = a7 + a9 - 1;
    v209 = a7 >> 4;
    if (a7 >> 4 <= v224 >> 4)
    {
      result = a1;
      v26 = a11;
      v233 = (a5 - 1) >> 4;
      v206 = a5 - 1;
      v216 = (a5 - 1) & 0xF;
      v207 = (a6 - 1) & 0xF;
      v208 = (a6 - 1) >> 4;
      v214 = 8 * a11;
      v215 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v28.i8 = vcgt_u32(v27, 0x1F0000001FLL);
      v29.i64[0] = -1;
      v30.i64[0] = 0x2000000020;
      *v31.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 4uLL))))))), *v28.i8);
      v221 = v31.i64[0];
      v222 = v31.i32[0] | v31.i32[1];
      v220 = v28.i64[0];
      v205 = 8 * v19 * v18;
      v235 = 3 * a11;
      v223 = a7;
      v213 = 2 * a11;
      do
      {
        v32 = (16 * v17) | 0xF;
        if (16 * v17 <= v231)
        {
          v33 = v231;
        }

        else
        {
          v33 = 16 * v17;
        }

        if (v210 < v32)
        {
          v32 = v210;
        }

        v230 = 16 * v17;
        v219 = v33 - 16 * v17;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v207;
        v218 = v35;
        v37 = v35 != 16;
        v38 = v209;
        v39 = v207 + 1;
        if (v17 != v208)
        {
          v39 = 16;
        }

        v232 = v39;
        if (v17 != v208)
        {
          v36 = v37;
        }

        v217 = v36;
        v229 = a2 + (v33 - v231) * v26;
        do
        {
          v44 = 16 * v38;
          v45 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 16 * v38;
          }

          if (v224 < v45)
          {
            v45 = v224;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v38 == v233)
          {
            v49 = v216 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v230 >= v231 && v44 >= a7)
          {
            v51 = v47 != v216;
            if (v38 != v233)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v217;
          }

          if (v225)
          {
            v72 = 0;
            v73 = v205 >> (*(result + 57) != 0);
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

            v195 = (v72 >> 4) - 1;
            if (v74)
            {
              v196 = 0;
              if (v75)
              {
                goto LABEL_269;
              }

LABEL_258:
              v197 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v197 | v196)
              {
                goto LABEL_259;
              }

LABEL_270:
              v204 = 0;
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_258;
              }

LABEL_269:
              v197 = 0;
              if (!v196)
              {
                goto LABEL_270;
              }

LABEL_259:
              v198 = 0;
              v199 = 0;
              v200 = v38 & v195;
              v201 = v196 != 0;
              v202 = v197 != 0;
              v203 = 1;
              do
              {
                --v196;
                if (v201)
                {
                  v199 |= (v203 & v200) << v198++;
                }

                else
                {
                  v196 = 0;
                }

                --v197;
                if (v202)
                {
                  v199 |= (v203 & v17 & ((v76 >> 4) - 1)) << v198++;
                }

                else
                {
                  v197 = 0;
                }

                v203 *= 2;
                --v198;
                v202 = v197 != 0;
                v201 = v196 != 0;
              }

              while (v197 | v196);
              v204 = v199 << 8;
              result = v234;
            }

            v59 = v204 + ((v44 / v72 + v230 / v76 * ((v72 + v206) / v72)) << 14);
            goto LABEL_57;
          }

          if (v222)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v220;
            v56 = BYTE4(v220);
            v58 = v221;
            v57 = HIDWORD(v221);
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v38) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v17) << v52++;
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
            v59 = v53 << 8;
          }

          else
          {
            v59 = 0;
          }

LABEL_57:
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
LABEL_82:
              v71 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_82;
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
              v67 |= (v70 & v38) << v66++;
            }

            else
            {
              v62 = 0;
            }

            --v65;
            if (v69)
            {
              v67 |= (v70 & v17) << v66++;
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
LABEL_83:
          v77 = (a3 + v59);
          if (v226)
          {
            memcpy(__dst, v77, sizeof(__dst));
            result = v234;
            v77 = __dst;
          }

          v78 = (a4 + v71);
          v79 = (v229 + 2 * (v46 - a7));
          if (!(v50 & 1 | (v49 < 0x10u)) && v232 > 0xF)
          {
            v80 = *(result + 208);
            v81 = *(v80 + 52);
            v82 = *v78;
            if (*v78)
            {
              v26 = a11;
              v83 = 2 * a11;
              if (v82 < 0xF0)
              {
                if (v82 == 63)
                {
                  v92 = *v77;
                  v28 = v77[1];
                  v29 = v77[2];
                  v30 = v77[3];
                  *v79 = vuzp1q_s32(*v77, v29);
                  *(v79 + a11) = vuzp2q_s32(v92, v29);
                  v93 = (v79 + v213);
                  *v93 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v93 + a11) = v31;
                  v84 = 64;
                }

                else if (v82 == 1)
                {
                  v31 = vld1q_dup_s16(v77->i16);
                  *v79 = v31;
                  *(v79 + a11) = v31;
                  *(v79 + 2 * a11) = v31;
                  *(v79 + 3 * a11) = v31;
                  v84 = 2;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v79, a11, v77, v82, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v79, a11, v77, v82, *(v80 + 52)).u64[0];
                v84 = 32;
              }
            }

            else
            {
              v84 = 0;
              v79->i64[0] = 0;
              v79->i64[1] = 0;
              v26 = a11;
              v89 = (v79->i64 + a11);
              *v89 = 0;
              v89[1] = 0;
              v83 = 2 * a11;
              v90 = (v79->i64 + v213);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v79->i64 + v235);
              *v91 = 0;
              v91[1] = 0;
            }

            v94 = v77->u64 + v84;
            v95 = (v79 + v215);
            v96 = v78[1];
            if (v78[1])
            {
              if (v96 < 0xF0)
              {
                if (v96 == 63)
                {
                  v101 = *v94;
                  v28 = *(v94 + 16);
                  v29 = *(v94 + 32);
                  v30 = *(v94 + 48);
                  *v95 = vuzp1q_s32(*v94, v29);
                  *(v95 + v26) = vuzp2q_s32(v101, v29);
                  v102 = (v95 + v83);
                  *v102 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v102 + v26) = v31;
                  v97 = 64;
                }

                else if (v96 == 1)
                {
                  v31 = vld1q_dup_s16(v94);
                  *v95 = v31;
                  *(v95 + v26) = v31;
                  *(v95 + v83) = v31;
                  *(v95 + 3 * a11) = v31;
                  v97 = 2;
                }

                else
                {
                  v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v215), v26, v94, v96, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v79->i8[v215], v26, v94, v96, v81).u64[0];
                v97 = 32;
              }
            }

            else
            {
              v97 = 0;
              v95->i64[0] = 0;
              v95->i64[1] = 0;
              v98 = (v95->i64 + v26);
              *v98 = 0;
              v98[1] = 0;
              v99 = (v95->i64 + v83);
              *v99 = 0;
              v99[1] = 0;
              v100 = (v95->i64 + v235);
              *v100 = 0;
              v100[1] = 0;
            }

            v103 = v94 + v97;
            v104 = v79 + 1;
            v105 = v78[2];
            if (v78[2])
            {
              if (v105 < 0xF0)
              {
                if (v105 == 63)
                {
                  v110 = *v103;
                  v28 = *(v103 + 16);
                  v29 = *(v103 + 32);
                  v30 = *(v103 + 48);
                  *v104 = vuzp1q_s32(*v103, v29);
                  *(v104 + v26) = vuzp2q_s32(v110, v29);
                  v111 = (v104 + v83);
                  *v111 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v111 + v26) = v31;
                  v106 = 64;
                }

                else if (v105 == 1)
                {
                  v31 = vld1q_dup_s16(v103);
                  *v104 = v31;
                  *(v104 + v26) = v31;
                  *(v104 + v83) = v31;
                  *(v104 + 3 * a11) = v31;
                  v106 = 2;
                }

                else
                {
                  v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v104, v26, v103, v105, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v104, v26, v103, v105, v81).u64[0];
                v106 = 32;
              }
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v79[1].i64[1] = 0;
              v107 = (v104->i64 + v26);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v83);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v235);
              *v109 = 0;
              v109[1] = 0;
            }

            v112 = v103 + v106;
            v113 = v95 + 1;
            v114 = v78[3];
            if (v78[3])
            {
              if (v114 < 0xF0)
              {
                if (v114 == 63)
                {
                  v119 = *v112;
                  v28 = *(v112 + 16);
                  v29 = *(v112 + 32);
                  v30 = *(v112 + 48);
                  *v113 = vuzp1q_s32(*v112, v29);
                  *(v113 + v26) = vuzp2q_s32(v119, v29);
                  v120 = (v113 + v83);
                  *v120 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v120 + v26) = v31;
                  v115 = 64;
                }

                else if (v114 == 1)
                {
                  v31 = vld1q_dup_s16(v112);
                  *v113 = v31;
                  *(v113 + v26) = v31;
                  *(v113 + v83) = v31;
                  *(v113 + 3 * a11) = v31;
                  v115 = 2;
                }

                else
                {
                  v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v113, v26, v112, v114, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v113, v26, v112, v114, v81).u64[0];
                v115 = 32;
              }
            }

            else
            {
              v115 = 0;
              v113->i64[0] = 0;
              v95[1].i64[1] = 0;
              v116 = (v113->i64 + v26);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v113->i64 + v83);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v113->i64 + v235);
              *v118 = 0;
              v118[1] = 0;
            }

            v121 = v112 + v115;
            v122 = (v79 + v214);
            v123 = v78[4];
            if (v78[4])
            {
              if (v123 < 0xF0)
              {
                if (v123 == 63)
                {
                  v128 = *v121;
                  v28 = *(v121 + 16);
                  v29 = *(v121 + 32);
                  v30 = *(v121 + 48);
                  *v122 = vuzp1q_s32(*v121, v29);
                  *(v122 + v26) = vuzp2q_s32(v128, v29);
                  v129 = (v122 + v83);
                  *v129 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v129 + v26) = v31;
                  v124 = 64;
                }

                else if (v123 == 1)
                {
                  v31 = vld1q_dup_s16(v121);
                  *v122 = v31;
                  *(v122 + v26) = v31;
                  *(v122 + v83) = v31;
                  *(v122 + 3 * a11) = v31;
                  v124 = 2;
                }

                else
                {
                  v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v214), v26, v121, v123, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v79->i8[v214], v26, v121, v123, v81).u64[0];
                v124 = 32;
              }
            }

            else
            {
              v124 = 0;
              v122->i64[0] = 0;
              v122->i64[1] = 0;
              v125 = (v122->i64 + v26);
              *v125 = 0;
              v125[1] = 0;
              v126 = (v122->i64 + v83);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v122->i64 + v235);
              *v127 = 0;
              v127[1] = 0;
            }

            v130 = v121 + v124;
            v131 = (v79 + 12 * a11);
            v132 = v78[5];
            if (v78[5])
            {
              if (v132 < 0xF0)
              {
                if (v132 == 63)
                {
                  v137 = *v130;
                  v28 = *(v130 + 16);
                  v29 = *(v130 + 32);
                  v30 = *(v130 + 48);
                  *v131 = vuzp1q_s32(*v130, v29);
                  *(v131 + v26) = vuzp2q_s32(v137, v29);
                  v138 = (v131 + v83);
                  *v138 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v138 + v26) = v31;
                  v133 = 64;
                }

                else if (v132 == 1)
                {
                  v31 = vld1q_dup_s16(v130);
                  *v131 = v31;
                  *(v131 + v26) = v31;
                  *(v131 + v83) = v31;
                  *(v131 + 3 * a11) = v31;
                  v133 = 2;
                }

                else
                {
                  v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v131, v26, v130, v132, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v131, v26, v130, v132, v81).u64[0];
                v133 = 32;
              }
            }

            else
            {
              v133 = 0;
              v131->i64[0] = 0;
              v131->i64[1] = 0;
              v134 = (v131->i64 + v26);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v131->i64 + v83);
              *v135 = 0;
              v135[1] = 0;
              v136 = (v131->i64 + v235);
              *v136 = 0;
              v136[1] = 0;
            }

            v139 = v130 + v133;
            v140 = v122 + 1;
            v141 = v78[6];
            if (v78[6])
            {
              if (v141 < 0xF0)
              {
                if (v141 == 63)
                {
                  v146 = *v139;
                  v28 = *(v139 + 16);
                  v29 = *(v139 + 32);
                  v30 = *(v139 + 48);
                  *v140 = vuzp1q_s32(*v139, v29);
                  *(v140 + v26) = vuzp2q_s32(v146, v29);
                  v147 = (v140 + v83);
                  *v147 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v147 + v26) = v31;
                  v142 = 64;
                }

                else if (v141 == 1)
                {
                  v31 = vld1q_dup_s16(v139);
                  *v140 = v31;
                  *(v140 + v26) = v31;
                  *(v140 + v83) = v31;
                  *(v140 + 3 * a11) = v31;
                  v142 = 2;
                }

                else
                {
                  v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v140, v26, v139, v141, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v140, v26, v139, v141, v81).u64[0];
                v142 = 32;
              }
            }

            else
            {
              v142 = 0;
              v140->i64[0] = 0;
              v122[1].i64[1] = 0;
              v143 = (v140->i64 + v26);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v140->i64 + v83);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v140->i64 + v235);
              *v145 = 0;
              v145[1] = 0;
            }

            v148 = v131 + 1;
            v149 = v78[7];
            if (v78[7])
            {
              v150 = v139 + v142;
              a7 = v223;
              if (v149 < 0xF0)
              {
                if (v149 == 63)
                {
                  v151 = *v150;
                  v28 = *(v150 + 16);
                  v29 = *(v150 + 32);
                  v30 = *(v150 + 48);
                  *v148 = vuzp1q_s32(*v150, v29);
                  *(v148 + v26) = vuzp2q_s32(v151, v29);
                  v152 = (v148 + v83);
                  *v152 = vuzp1q_s32(v28, v30);
                  v31 = vuzp2q_s32(v28, v30);
                  *(v152 + v26) = v31;
                }

                else if (v149 == 1)
                {
                  v31 = vld1q_dup_s16(v150);
                  *v148 = v31;
                  *(v148 + v26) = v31;
                  *(v148 + v83) = v31;
                  *(v148 + 3 * a11) = v31;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v148, v26, v150, v149, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v148, v26, v150, v149, v81).u64[0];
              }
            }

            else
            {
              v148->i64[0] = 0;
              v131[1].i64[1] = 0;
              v40 = (v148->i64 + v26);
              *v40 = 0;
              v40[1] = 0;
              v41 = (v148->i64 + v83);
              *v41 = 0;
              v41[1] = 0;
              v42 = (v148->i64 + v235);
              *v42 = 0;
              v42[1] = 0;
              a7 = v223;
            }

            result = v234;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v77;
          v243 = v49;
          v244 = v232;
          v239 = v219;
          v240 = v46 - v44;
          block[6] = v78;
          v237 = v79;
          v26 = a11;
          v238 = a11;
          v241 = v218;
          v242 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v234;
            a7 = v223;
LABEL_30:
            v43 = v38 + 1;
            goto LABEL_31;
          }

          v85 = *(result + 208);
          v86 = *(v85 + 52);
          v87 = *v78;
          a7 = v223;
          if (*v78)
          {
            if (v87 < 0xF0)
            {
              if (v87 == 63)
              {
                v153 = v77[1];
                v29 = v77[2];
                v30 = v77[3];
                v154 = vuzp2q_s32(*v77, v29);
                v246 = vuzp1q_s32(*v77, v29);
                v248 = v154;
                v31 = vuzp1q_s32(v153, v30);
                v28 = vuzp2q_s32(v153, v30);
                v250 = v31;
                v252 = v28;
                v88 = 64;
              }

              else if (v87 == 1)
              {
                v31 = vld1q_dup_s16(v77->i16);
                v246 = v31;
                v248 = v31;
                v250 = v31;
                v252 = v31;
                v88 = 2;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 32, v77, v87, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 32, v77, v87, *(v85 + 52)).u64[0];
              v88 = 32;
            }
          }

          else
          {
            v88 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
            v252 = 0uLL;
          }

          v155 = v77->u64 + v88;
          v156 = v78[1];
          if (v78[1])
          {
            if (v156 < 0xF0)
            {
              if (v156 == 63)
              {
                v158 = *(v155 + 16);
                v29 = *(v155 + 32);
                v30 = *(v155 + 48);
                v159 = vuzp2q_s32(*v155, v29);
                v254 = vuzp1q_s32(*v155, v29);
                v256 = v159;
                v31 = vuzp1q_s32(v158, v30);
                v28 = vuzp2q_s32(v158, v30);
                v258 = v31;
                v260 = v28;
                v157 = 64;
              }

              else if (v156 == 1)
              {
                v31 = vld1q_dup_s16(v155);
                v254 = v31;
                v256 = v31;
                v258 = v31;
                v260 = v31;
                v157 = 2;
              }

              else
              {
                v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v254, 32, v155, v156, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v254, 32, v155, v156, v86).u64[0];
              v157 = 32;
            }
          }

          else
          {
            v157 = 0;
            v254 = 0uLL;
            v256 = 0uLL;
            v258 = 0uLL;
            v260 = 0uLL;
          }

          v160 = v155 + v157;
          v161 = v78[2];
          if (v78[2])
          {
            if (v161 < 0xF0)
            {
              if (v161 == 63)
              {
                v163 = *(v160 + 16);
                v29 = *(v160 + 32);
                v30 = *(v160 + 48);
                v164 = vuzp2q_s32(*v160, v29);
                v247 = vuzp1q_s32(*v160, v29);
                v249 = v164;
                v31 = vuzp1q_s32(v163, v30);
                v28 = vuzp2q_s32(v163, v30);
                v251 = v31;
                v253 = v28;
                v162 = 64;
              }

              else if (v161 == 1)
              {
                v31 = vld1q_dup_s16(v160);
                v247 = v31;
                v249 = v31;
                v251 = v31;
                v253 = v31;
                v162 = 2;
              }

              else
              {
                v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v247, 32, v160, v161, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v247, 32, v160, v161, v86).u64[0];
              v162 = 32;
            }
          }

          else
          {
            v162 = 0;
            v247 = 0uLL;
            v249 = 0uLL;
            v251 = 0uLL;
            v253 = 0uLL;
          }

          v165 = v160 + v162;
          v166 = v78[3];
          if (v78[3])
          {
            if (v166 < 0xF0)
            {
              if (v166 == 63)
              {
                v168 = *(v165 + 16);
                v29 = *(v165 + 32);
                v30 = *(v165 + 48);
                v169 = vuzp2q_s32(*v165, v29);
                v255 = vuzp1q_s32(*v165, v29);
                v257 = v169;
                v31 = vuzp1q_s32(v168, v30);
                v28 = vuzp2q_s32(v168, v30);
                v259 = v31;
                v261 = v28;
                v167 = 64;
              }

              else if (v166 == 1)
              {
                v31 = vld1q_dup_s16(v165);
                v255 = v31;
                v257 = v31;
                v259 = v31;
                v261 = v31;
                v167 = 2;
              }

              else
              {
                v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 32, v165, v166, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v255, 32, v165, v166, v86).u64[0];
              v167 = 32;
            }
          }

          else
          {
            v167 = 0;
            v255 = 0uLL;
            v257 = 0uLL;
            v259 = 0uLL;
            v261 = 0uLL;
          }

          v170 = v165 + v167;
          v171 = v78[4];
          if (v78[4])
          {
            if (v171 < 0xF0)
            {
              if (v171 == 63)
              {
                v173 = *(v170 + 16);
                v29 = *(v170 + 32);
                v30 = *(v170 + 48);
                v174 = vuzp2q_s32(*v170, v29);
                v262 = vuzp1q_s32(*v170, v29);
                v264 = v174;
                v31 = vuzp1q_s32(v173, v30);
                v28 = vuzp2q_s32(v173, v30);
                v266 = v31;
                v268 = v28;
                v172 = 64;
              }

              else if (v171 == 1)
              {
                v31 = vld1q_dup_s16(v170);
                v262 = v31;
                v264 = v31;
                v266 = v31;
                v268 = v31;
                v172 = 2;
              }

              else
              {
                v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v262, 32, v170, v171, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v262, 32, v170, v171, v86).u64[0];
              v172 = 32;
            }
          }

          else
          {
            v172 = 0;
            v262 = 0uLL;
            v264 = 0uLL;
            v266 = 0uLL;
            v268 = 0uLL;
          }

          v175 = v170 + v172;
          v176 = v78[5];
          if (v78[5])
          {
            if (v176 < 0xF0)
            {
              if (v176 == 63)
              {
                v178 = *(v175 + 16);
                v29 = *(v175 + 32);
                v30 = *(v175 + 48);
                v179 = vuzp2q_s32(*v175, v29);
                v270 = vuzp1q_s32(*v175, v29);
                v272 = v179;
                v31 = vuzp1q_s32(v178, v30);
                v28 = vuzp2q_s32(v178, v30);
                v274 = v31;
                v276 = v28;
                v177 = 64;
              }

              else if (v176 == 1)
              {
                v31 = vld1q_dup_s16(v175);
                v270 = v31;
                v272 = v31;
                v274 = v31;
                v276 = v31;
                v177 = 2;
              }

              else
              {
                v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v270, 32, v175, v176, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v270, 32, v175, v176, v86).u64[0];
              v177 = 32;
            }
          }

          else
          {
            v177 = 0;
            v270 = 0uLL;
            v272 = 0uLL;
            v274 = 0uLL;
            v276 = 0uLL;
          }

          v180 = v175 + v177;
          v181 = v78[6];
          if (v78[6])
          {
            if (v181 < 0xF0)
            {
              if (v181 == 63)
              {
                v184 = *(v180 + 16);
                v29 = *(v180 + 32);
                v30 = *(v180 + 48);
                v185 = vuzp2q_s32(*v180, v29);
                v263 = vuzp1q_s32(*v180, v29);
                v265 = v185;
                v31 = vuzp1q_s32(v184, v30);
                v28 = vuzp2q_s32(v184, v30);
                v267 = v31;
                v269 = v28;
                v182 = 64;
                v183 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v181 == 1)
              {
                v31 = vld1q_dup_s16(v180);
                v263 = v31;
                v265 = v31;
                v267 = v31;
                v269 = v31;
                v182 = 2;
                v183 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v263, 32, v180, v181, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                v183 = v78[7];
                if (!v78[7])
                {
LABEL_232:
                  v271 = 0uLL;
                  v273 = 0uLL;
                  v275 = 0uLL;
                  v277 = 0uLL;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v263, 32, v180, v181, v86).u64[0];
              v182 = 32;
              v183 = v78[7];
              if (!v78[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v182 = 0;
            v263 = 0uLL;
            v265 = 0uLL;
            v267 = 0uLL;
            v269 = 0uLL;
            v183 = v78[7];
            if (!v78[7])
            {
              goto LABEL_232;
            }
          }

          v186 = v180 + v182;
          if (v183 < 0xF0)
          {
            if (v183 == 63)
            {
              v187 = *(v186 + 16);
              v29 = *(v186 + 32);
              v30 = *(v186 + 48);
              v188 = vuzp2q_s32(*v186, v29);
              v271 = vuzp1q_s32(*v186, v29);
              v273 = v188;
              v31 = vuzp1q_s32(v187, v30);
              v28 = vuzp2q_s32(v187, v30);
              v275 = v31;
              v277 = v28;
            }

            else if (v183 == 1)
            {
              v31 = vld1q_dup_s16(v186);
              v271 = v31;
              v273 = v31;
              v275 = v31;
              v277 = v31;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 32, v186, v183, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
            }
          }

          else
          {
            v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v271, 32, v186, v183, v86).u64[0];
          }

LABEL_234:
          result = v234;
          v43 = v38 + 1;
          v189 = v241;
          if (v241)
          {
            v190 = 0;
            v191 = &v246.i8[32 * v239 + 2 * v240];
            v192 = v242;
            do
            {
              if (v192)
              {
                v193 = 0;
                v194 = &v237->i8[v238 * v190];
                do
                {
                  v194[v193] = v191[v193];
                  ++v193;
                  v192 = v242;
                }

                while (2 * v242 > v193);
                v189 = v241;
              }

              ++v190;
              v191 += 32;
            }

            while (v190 < v189);
          }

LABEL_31:
          v21 = v38 == v224 >> 4;
          v38 = v43;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v158 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v135 = a8;
  v16 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v119 = v117 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v139 = a1;
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
  v130 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v129 = result;
  if (v16 <= v119)
  {
    v128 = a7 + a9 - 1;
    if (a7 >> 4 <= v128 >> 4)
    {
      result = a1;
      v25 = a11;
      v138 = (a5 - 1) >> 4;
      v114 = a5 - 1;
      v122 = (a5 - 1) & 0xF;
      v115 = (a6 - 1) & 0xF;
      v116 = (a6 - 1) >> 4;
      v120 = 8 * a11;
      v121 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v127 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v126 = v27;
      v113 = 8 * v18 * v17;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v135)
        {
          v29 = v135;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v117 < v28)
        {
          v28 = v117;
        }

        v134 = 16 * v16;
        v125 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v115;
        v124 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v115 + 1;
        if (v16 != v116)
        {
          v35 = 16;
        }

        v137 = v35;
        if (v16 != v116)
        {
          v32 = v33;
        }

        v123 = v32;
        v133 = a2 + (v29 - v135) * v25;
        v36 = a7;
        do
        {
          v48 = 16 * v34;
          v49 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v50 = v36;
          }

          else
          {
            v50 = 16 * v34;
          }

          if (v128 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v34 == v138)
          {
            v53 = v122 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (v134 >= v135 && v48 >= v36)
          {
            v55 = v51 != v122;
            if (v34 != v138)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v123;
          }

          if (v129)
          {
            v76 = 0;
            v77 = v113 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 0;
                  v80 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 1;
                  v80 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v79 = 0;
                    v76 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 0;
                v80 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 0;
                v80 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v80 = 16;
              v79 = 1;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v76 = 16;
              v79 = 1;
              v80 = 16;
            }

            else
            {
              v79 = 1;
              v80 = 0;
              if (v77 == 1024)
              {
                v80 = 8;
                v76 = 16;
              }
            }

            v103 = (v76 >> 4) - 1;
            if (v78)
            {
              v104 = 0;
              if (v79)
              {
                goto LABEL_123;
              }

LABEL_112:
              v105 = 32 - __clz(~(-1 << -__clz(((v80 + 15) >> 4) - 1)));
              if (v105 | v104)
              {
                goto LABEL_113;
              }

LABEL_124:
              v112 = 0;
            }

            else
            {
              v104 = 32 - __clz(~(-1 << -__clz(v103)));
              if ((v79 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v105 = 0;
              if (!v104)
              {
                goto LABEL_124;
              }

LABEL_113:
              v106 = 0;
              v107 = 0;
              v108 = v34 & v103;
              v109 = v104 != 0;
              v110 = v105 != 0;
              v111 = 1;
              do
              {
                --v104;
                if (v109)
                {
                  v107 |= (v111 & v108) << v106++;
                }

                else
                {
                  v104 = 0;
                }

                --v105;
                if (v110)
                {
                  v107 |= (v111 & v16 & ((v80 >> 4) - 1)) << v106++;
                }

                else
                {
                  v105 = 0;
                }

                v111 *= 2;
                --v106;
                v110 = v105 != 0;
                v109 = v104 != 0;
              }

              while (v105 | v104);
              v112 = v107 << 9;
              result = v139;
            }

            v63 = v112 + ((v48 / v76 + v134 / v80 * ((v76 + v114) / v76)) << 14);
            goto LABEL_56;
          }

          if (v127)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v126.i8[0];
            v60 = v126.i8[4];
            v62 = v127.i32[0];
            v61 = v127.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v34) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v16) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 9;
          }

          else
          {
            v63 = 0;
          }

LABEL_56:
          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 15;
          if (v65 < 0x20)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 4) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 15;
          if (v68 < 0x20)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 4) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v34) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v16) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v81 = (a3 + v63);
          if (v130)
          {
            v82 = v52;
            v83 = v25;
            v84 = v53;
            v85 = v50;
            v86 = v54;
            memcpy(__dst, (a3 + v63), sizeof(__dst));
            v54 = v86;
            v50 = v85;
            v48 = 16 * v34;
            v53 = v84;
            v25 = v83;
            v52 = v82;
            result = v139;
            v81 = __dst;
          }

          v87 = (a4 + v75);
          v88 = v133 + 4 * (v50 - v36);
          if (!(v54 & 1 | (v53 < 0x10u)) && v137 > 0xF)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v133 + 4 * (v50 - v36)), v25, v81, *v87, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v88 + v121), v25, v38, v87[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v88 + 32), v25, v39, v87[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v88 + v121 + 32), v25, v40, v87[3], v37);
            v42 = v88 + v120;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v88 + v120), v25, v41, v87[4], v37);
            v44 = (v88 + 12 * a11);
            v45 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44, v25, v43, v87[5], v37);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v42 + 32), v25, v45, v87[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44 + 2, v25, v45 + v46, v87[7], v37);
LABEL_29:
            v36 = a7;
            v47 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v147 = v53;
          v148 = v137;
          v143 = v125;
          v144 = v50 - v48;
          block[6] = v87;
          v141 = v133 + 4 * (v50 - v36);
          v142 = v25;
          v145 = v124;
          v146 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v89 = *(*(result + 208) + 52);
          v90 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v150, 64, v81, *v87, v89)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 64, v90, v87[1], v89);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v151, 64, v91, v87[2], v89);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v153, 64, v92, v87[3], v89);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 64, v93, v87[4], v89);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v156, 64, v94, v87[5], v89);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v155, 64, v95, v87[6], v89);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v157, 64, v95 + v96, v87[7], v89);
          v97 = v145;
          v36 = a7;
          v47 = v34 + 1;
          if (v145)
          {
            v98 = 0;
            v99 = &v150[4 * v143] + 4 * v144;
            v100 = v146;
            do
            {
              if (v100)
              {
                v101 = 0;
                v102 = v141 + v142 * v98;
                do
                {
                  *(v102 + v101) = v99[v101];
                  ++v101;
                  v100 = v146;
                }

                while (4 * v146 > v101);
                v97 = v145;
              }

              ++v98;
              v99 += 64;
            }

            while (v98 < v97);
          }

LABEL_30:
          v20 = v34 == v128 >> 4;
          v34 = v47;
          result = v139;
        }

        while (!v20);
        v20 = v16++ == v119;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v382 = a8;
  v16 = a8 >> 4;
  v363 = a8 + a10 - 1;
  v365 = v363 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v386 = a1;
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
  v377 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v376 = result;
  if (v16 <= v365)
  {
    v375 = a7 + a9 - 1;
    if (a7 >> 4 <= v375 >> 4)
    {
      result = a1;
      v25 = a11;
      v385 = (a5 - 1) >> 4;
      v360 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v361 = (a6 - 1) & 0xF;
      v362 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v373 = v27;
      v359 = 8 * v18 * v17;
      v387 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v382)
        {
          v29 = v382;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v363 < v28)
        {
          v28 = v363;
        }

        v381 = 16 * v16;
        v372 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v361;
        v371 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v361 + 1;
        if (v16 != v362)
        {
          v35 = 16;
        }

        v384 = v35;
        if (v16 != v362)
        {
          v32 = v33;
        }

        v370 = v32;
        v380 = a2 + (v29 - v382) * v25;
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

          if (v375 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v385)
          {
            v43 = v369 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v381 >= v382 && v38 >= v36)
          {
            v45 = v41 != v369;
            if (v34 != v385)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v370;
          }

          if (v376)
          {
            v66 = 0;
            v67 = v359 >> (*(result + 57) != 0);
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

            v349 = (v66 >> 4) - 1;
            if (v68)
            {
              v350 = 0;
              if (v69)
              {
                goto LABEL_270;
              }

LABEL_259:
              v351 = 32 - __clz(~(-1 << -__clz(((v70 + 15) >> 4) - 1)));
              if (v351 | v350)
              {
                goto LABEL_260;
              }

LABEL_271:
              v358 = 0;
            }

            else
            {
              v350 = 32 - __clz(~(-1 << -__clz(v349)));
              if ((v69 & 1) == 0)
              {
                goto LABEL_259;
              }

LABEL_270:
              v351 = 0;
              if (!v350)
              {
                goto LABEL_271;
              }

LABEL_260:
              v352 = 0;
              v353 = 0;
              v354 = v34 & v349;
              v355 = v350 != 0;
              v356 = v351 != 0;
              v357 = 1;
              do
              {
                --v350;
                if (v355)
                {
                  v353 |= (v357 & v354) << v352++;
                }

                else
                {
                  v350 = 0;
                }

                --v351;
                if (v356)
                {
                  v353 |= (v357 & v16 & ((v70 >> 4) - 1)) << v352++;
                }

                else
                {
                  v351 = 0;
                }

                v357 *= 2;
                --v352;
                v356 = v351 != 0;
                v355 = v350 != 0;
              }

              while (v351 | v350);
              v358 = v353 << 9;
              result = v386;
            }

            v53 = v358 + ((v38 / v66 + v381 / v70 * ((v66 + v360) / v66)) << 14);
            goto LABEL_57;
          }

          if (v374)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v373.i8[4];
            v50 = v373.i8[0];
            v51 = v374.i32[1];
            v52 = v374.i32[0];
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v34) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v16) << v46++;
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

LABEL_57:
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

          v58 = v57 + 15;
          if (v58 < 0x20)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_82:
              v65 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_82;
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
LABEL_83:
          v71 = (a3 + v53);
          if (v377)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v386;
            v71 = __dst;
          }

          v72 = (a4 + v65);
          v73 = v380 + 4 * (v40 - v36);
          if (!(v44 & 1 | (v43 < 0x10u)) && v384 > 0xF)
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
                  v91 = *v71;
                  v92 = v71[1];
                  v93 = v71[2];
                  v94 = v71[3];
                  v95 = v71[4];
                  v96 = v71[5];
                  v97 = v71[6];
                  v98 = v71[7];
                  *v73 = vzip1q_s64(*v71, v92);
                  *(v73 + 16) = vzip1q_s64(v95, v96);
                  v99 = (v73 + v366);
                  v100 = (v73 + a11);
                  *v100 = vzip2q_s64(v91, v92);
                  v100[1] = vzip2q_s64(v95, v96);
                  *v99 = vzip1q_s64(v93, v94);
                  v99[1] = vzip1q_s64(v97, v98);
                  v101 = (v73 + v366 + a11);
                  *v101 = vzip2q_s64(v93, v94);
                  v101[1] = vzip2q_s64(v97, v98);
                  v78 = 128;
                }

                else if (v76 == 3)
                {
                  v86 = vld1q_dup_f32(v71->i32);
                  *v73 = v86;
                  *(v73 + 16) = v86;
                  v87 = (v73 + a11);
                  *v87 = v86;
                  v87[1] = v86;
                  v88 = (v73 + v366);
                  *v88 = v86;
                  v88[1] = v86;
                  v89 = (v73 + v387);
                  *v89 = v86;
                  v89[1] = v86;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v73, a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v73, a11, v71, v76, *(v74 + 52));
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
              v84 = (v73 + v366);
              *v84 = 0u;
              v84[1] = 0u;
              v85 = (v73 + v387);
              *v85 = 0u;
              v85[1] = 0u;
            }

            v102 = v71->i64 + v78;
            v103 = (v73 + v368);
            v104 = v72[1];
            if (v72[1])
            {
              if (v104 < 0xF0)
              {
                if (v104 == 127)
                {
                  v113 = *v102;
                  v114 = *(v102 + 16);
                  v115 = *(v102 + 32);
                  v116 = *(v102 + 48);
                  v117 = *(v102 + 64);
                  v118 = *(v102 + 80);
                  v119 = *(v102 + 96);
                  v120 = *(v102 + 112);
                  *v103 = vzip1q_s64(*v102, v114);
                  v103[1] = vzip1q_s64(v117, v118);
                  v121 = (v103 + v77);
                  v122 = (v103 + v25);
                  *v122 = vzip2q_s64(v113, v114);
                  v122[1] = vzip2q_s64(v117, v118);
                  *v121 = vzip1q_s64(v115, v116);
                  v121[1] = vzip1q_s64(v119, v120);
                  v123 = (v103 + v77 + v25);
                  *v123 = vzip2q_s64(v115, v116);
                  v123[1] = vzip2q_s64(v119, v120);
                  v105 = 128;
                }

                else if (v104 == 3)
                {
                  v109 = vld1q_dup_f32(v102);
                  *v103 = v109;
                  v103[1] = v109;
                  v110 = &v103->i8[v25];
                  *v110 = v109;
                  v110[1] = v109;
                  v111 = &v103->i8[v77];
                  *v111 = v109;
                  v111[1] = v109;
                  v112 = &v103->i8[v387];
                  *v112 = v109;
                  v112[1] = v109;
                  v105 = 4;
                }

                else
                {
                  v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v368), v25, v102, v104);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v73 + v368), v25, v102, v104, v75);
                v105 = 64;
              }
            }

            else
            {
              v105 = 0;
              *v103 = 0u;
              v103[1] = 0u;
              v106 = &v103->i8[v25];
              *v106 = 0u;
              *(v106 + 1) = 0u;
              v107 = &v103->i8[v77];
              *v107 = 0u;
              *(v107 + 1) = 0u;
              v108 = &v103->i8[v387];
              *v108 = 0u;
              *(v108 + 1) = 0u;
            }

            v124 = v102 + v105;
            v125 = (v73 + 32);
            v126 = v72[2];
            if (v72[2])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 127)
                {
                  v135 = *v124;
                  v136 = *(v124 + 16);
                  v137 = *(v124 + 32);
                  v138 = *(v124 + 48);
                  v139 = *(v124 + 64);
                  v140 = *(v124 + 80);
                  v141 = *(v124 + 96);
                  v142 = *(v124 + 112);
                  *v125 = vzip1q_s64(*v124, v136);
                  *(v73 + 48) = vzip1q_s64(v139, v140);
                  v143 = (v125 + v77);
                  v144 = (v125 + v25);
                  *v144 = vzip2q_s64(v135, v136);
                  v144[1] = vzip2q_s64(v139, v140);
                  *v143 = vzip1q_s64(v137, v138);
                  v143[1] = vzip1q_s64(v141, v142);
                  v145 = (v125 + v77 + v25);
                  *v145 = vzip2q_s64(v137, v138);
                  v145[1] = vzip2q_s64(v141, v142);
                  v127 = 128;
                }

                else if (v126 == 3)
                {
                  v131 = vld1q_dup_f32(v124);
                  *(v73 + 32) = v131;
                  *(v73 + 48) = v131;
                  v132 = (v125 + v25);
                  *v132 = v131;
                  v132[1] = v131;
                  v133 = (v125 + v77);
                  *v133 = v131;
                  v133[1] = v131;
                  v134 = (v125 + v387);
                  *v134 = v131;
                  v134[1] = v131;
                  v127 = 4;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, v25, v124, v126);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125, v25, v124, v126, v75);
                v127 = 64;
              }
            }

            else
            {
              v127 = 0;
              *v125 = 0u;
              *(v73 + 48) = 0u;
              v128 = (v125 + v25);
              *v128 = 0u;
              v128[1] = 0u;
              v129 = (v125 + v77);
              *v129 = 0u;
              v129[1] = 0u;
              v130 = (v125 + v387);
              *v130 = 0u;
              v130[1] = 0u;
            }

            v146 = v124 + v127;
            i32 = v103[2].i32;
            v148 = v72[3];
            if (v72[3])
            {
              if (v148 < 0xF0)
              {
                if (v148 == 127)
                {
                  v157 = *v146;
                  v158 = *(v146 + 16);
                  v159 = *(v146 + 32);
                  v160 = *(v146 + 48);
                  v161 = *(v146 + 64);
                  v162 = *(v146 + 80);
                  v163 = *(v146 + 96);
                  v164 = *(v146 + 112);
                  *i32 = vzip1q_s64(*v146, v158);
                  v103[3] = vzip1q_s64(v161, v162);
                  v165 = (i32 + v77);
                  v166 = (i32 + v25);
                  *v166 = vzip2q_s64(v157, v158);
                  v166[1] = vzip2q_s64(v161, v162);
                  *v165 = vzip1q_s64(v159, v160);
                  v165[1] = vzip1q_s64(v163, v164);
                  v167 = (i32 + v77 + v25);
                  *v167 = vzip2q_s64(v159, v160);
                  v167[1] = vzip2q_s64(v163, v164);
                  v149 = 128;
                }

                else if (v148 == 3)
                {
                  v153 = vld1q_dup_f32(v146);
                  v103[2] = v153;
                  v103[3] = v153;
                  v154 = (i32 + v25);
                  *v154 = v153;
                  v154[1] = v153;
                  v155 = (i32 + v77);
                  *v155 = v153;
                  v155[1] = v153;
                  v156 = (i32 + v387);
                  *v156 = v153;
                  v156[1] = v153;
                  v149 = 4;
                }

                else
                {
                  v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(i32, v25, v146, v148);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(i32, v25, v146, v148, v75);
                v149 = 64;
              }
            }

            else
            {
              v149 = 0;
              *i32 = 0u;
              v103[3] = 0u;
              v150 = (i32 + v25);
              *v150 = 0u;
              v150[1] = 0u;
              v151 = (i32 + v77);
              *v151 = 0u;
              v151[1] = 0u;
              v152 = (i32 + v387);
              *v152 = 0u;
              v152[1] = 0u;
            }

            v168 = v146 + v149;
            v169 = (v73 + v367);
            v170 = v72[4];
            if (v72[4])
            {
              if (v170 < 0xF0)
              {
                if (v170 == 127)
                {
                  v179 = *v168;
                  v180 = *(v168 + 16);
                  v181 = *(v168 + 32);
                  v182 = *(v168 + 48);
                  v183 = *(v168 + 64);
                  v184 = *(v168 + 80);
                  v185 = *(v168 + 96);
                  v186 = *(v168 + 112);
                  *v169 = vzip1q_s64(*v168, v180);
                  v169[1] = vzip1q_s64(v183, v184);
                  v187 = (v169 + v77);
                  v188 = (v169 + v25);
                  *v188 = vzip2q_s64(v179, v180);
                  v188[1] = vzip2q_s64(v183, v184);
                  *v187 = vzip1q_s64(v181, v182);
                  v187[1] = vzip1q_s64(v185, v186);
                  v189 = (v169 + v77 + v25);
                  *v189 = vzip2q_s64(v181, v182);
                  v189[1] = vzip2q_s64(v185, v186);
                  v171 = 128;
                }

                else if (v170 == 3)
                {
                  v175 = vld1q_dup_f32(v168);
                  *v169 = v175;
                  v169[1] = v175;
                  v176 = &v169->i8[v25];
                  *v176 = v175;
                  v176[1] = v175;
                  v177 = &v169->i8[v77];
                  *v177 = v175;
                  v177[1] = v175;
                  v178 = &v169->i8[v387];
                  *v178 = v175;
                  v178[1] = v175;
                  v171 = 4;
                }

                else
                {
                  v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v367), v25, v168, v170);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v73 + v367), v25, v168, v170, v75);
                v171 = 64;
              }
            }

            else
            {
              v171 = 0;
              *v169 = 0u;
              v169[1] = 0u;
              v172 = &v169->i8[v25];
              *v172 = 0u;
              *(v172 + 1) = 0u;
              v173 = &v169->i8[v77];
              *v173 = 0u;
              *(v173 + 1) = 0u;
              v174 = &v169->i8[v387];
              *v174 = 0u;
              *(v174 + 1) = 0u;
            }

            v190 = v168 + v171;
            v191 = v73 + 12 * a11;
            v192 = v72[5];
            if (v72[5])
            {
              if (v192 < 0xF0)
              {
                if (v192 == 127)
                {
                  v201 = *v190;
                  v202 = *(v190 + 16);
                  v203 = *(v190 + 32);
                  v204 = *(v190 + 48);
                  v205 = *(v190 + 64);
                  v206 = *(v190 + 80);
                  v207 = *(v190 + 96);
                  v208 = *(v190 + 112);
                  *v191 = vzip1q_s64(*v190, v202);
                  *(v191 + 16) = vzip1q_s64(v205, v206);
                  v209 = (v191 + v77);
                  v210 = (v191 + v25);
                  *v210 = vzip2q_s64(v201, v202);
                  v210[1] = vzip2q_s64(v205, v206);
                  *v209 = vzip1q_s64(v203, v204);
                  v209[1] = vzip1q_s64(v207, v208);
                  v211 = (v191 + v77 + v25);
                  *v211 = vzip2q_s64(v203, v204);
                  v211[1] = vzip2q_s64(v207, v208);
                  v193 = 128;
                }

                else if (v192 == 3)
                {
                  v197 = vld1q_dup_f32(v190);
                  *v191 = v197;
                  *(v191 + 16) = v197;
                  v198 = (v191 + v25);
                  *v198 = v197;
                  v198[1] = v197;
                  v199 = (v191 + v77);
                  *v199 = v197;
                  v199[1] = v197;
                  v200 = (v191 + v387);
                  *v200 = v197;
                  v200[1] = v197;
                  v193 = 4;
                }

                else
                {
                  v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v191, v25, v190, v192);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v191, v25, v190, v192, v75);
                v193 = 64;
              }
            }

            else
            {
              v193 = 0;
              *v191 = 0u;
              *(v191 + 16) = 0u;
              v194 = (v191 + v25);
              *v194 = 0u;
              v194[1] = 0u;
              v195 = (v191 + v77);
              *v195 = 0u;
              v195[1] = 0u;
              v196 = (v191 + v387);
              *v196 = 0u;
              v196[1] = 0u;
            }

            v212 = v190 + v193;
            v213 = v169[2].i32;
            v214 = v72[6];
            if (v72[6])
            {
              if (v214 < 0xF0)
              {
                if (v214 == 127)
                {
                  v223 = *v212;
                  v224 = *(v212 + 16);
                  v225 = *(v212 + 32);
                  v226 = *(v212 + 48);
                  v227 = *(v212 + 64);
                  v228 = *(v212 + 80);
                  v229 = *(v212 + 96);
                  v230 = *(v212 + 112);
                  *v213 = vzip1q_s64(*v212, v224);
                  v169[3] = vzip1q_s64(v227, v228);
                  v231 = (v213 + v77);
                  v232 = (v213 + v25);
                  *v232 = vzip2q_s64(v223, v224);
                  v232[1] = vzip2q_s64(v227, v228);
                  *v231 = vzip1q_s64(v225, v226);
                  v231[1] = vzip1q_s64(v229, v230);
                  v233 = (v213 + v77 + v25);
                  *v233 = vzip2q_s64(v225, v226);
                  v233[1] = vzip2q_s64(v229, v230);
                  v215 = 128;
                }

                else if (v214 == 3)
                {
                  v219 = vld1q_dup_f32(v212);
                  v169[2] = v219;
                  v169[3] = v219;
                  v220 = (v213 + v25);
                  *v220 = v219;
                  v220[1] = v219;
                  v221 = (v213 + v77);
                  *v221 = v219;
                  v221[1] = v219;
                  v222 = (v213 + v387);
                  *v222 = v219;
                  v222[1] = v219;
                  v215 = 4;
                }

                else
                {
                  v215 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v213, v25, v212, v214);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v213, v25, v212, v214, v75);
                v215 = 64;
              }
            }

            else
            {
              v215 = 0;
              *v213 = 0u;
              v169[3] = 0u;
              v216 = (v213 + v25);
              *v216 = 0u;
              v216[1] = 0u;
              v217 = (v213 + v77);
              *v217 = 0u;
              v217[1] = 0u;
              v218 = (v213 + v387);
              *v218 = 0u;
              v218[1] = 0u;
            }

            v234 = (v191 + 32);
            v235 = v72[7];
            if (v72[7])
            {
              v236 = v212 + v215;
              if (v235 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v234, v25, v236, v235, v75);
              }

              else if (v235 == 127)
              {
                v241 = *v236;
                v242 = *(v236 + 16);
                v243 = *(v236 + 32);
                v244 = *(v236 + 48);
                v245 = *(v236 + 64);
                v246 = *(v236 + 80);
                v247 = *(v236 + 96);
                v248 = *(v236 + 112);
                *v234 = vzip1q_s64(*v236, v242);
                *(v191 + 48) = vzip1q_s64(v245, v246);
                v249 = (v234 + v77);
                v250 = (v234 + v25);
                *v250 = vzip2q_s64(v241, v242);
                v250[1] = vzip2q_s64(v245, v246);
                *v249 = vzip1q_s64(v243, v244);
                v249[1] = vzip1q_s64(v247, v248);
                v251 = (v234 + v77 + v25);
                *v251 = vzip2q_s64(v243, v244);
                v251[1] = vzip2q_s64(v247, v248);
              }

              else
              {
                if (v235 == 3)
                {
                  v237 = vld1q_dup_f32(v236);
                  *(v191 + 32) = v237;
                  *(v191 + 48) = v237;
                  goto LABEL_165;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v234, v25, v236, v235);
              }
            }

            else
            {
              v237 = 0uLL;
              *v234 = 0u;
              *(v191 + 48) = 0u;
LABEL_165:
              v238 = (v234 + v25);
              *v238 = v237;
              v238[1] = v237;
              v239 = (v234 + v77);
              *v239 = v237;
              v239[1] = v237;
              v240 = (v234 + v387);
              *v240 = v237;
              v240[1] = v237;
            }

            v36 = a7;
            result = v386;
LABEL_30:
            v37 = v34 + 1;
            goto LABEL_31;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v395 = v43;
          v396 = v384;
          v391 = v372;
          v392 = v40 - v38;
          block[6] = v72;
          v389 = v73;
          v25 = a11;
          v390 = a11;
          v393 = v371;
          v394 = v42;
          if (v44)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v386;
            v36 = a7;
            goto LABEL_30;
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
                v252 = *v71;
                v253 = v71[1];
                v254 = v71[2];
                v255 = v71[3];
                v256 = v71[4];
                v257 = v71[5];
                v258 = v71[6];
                v259 = v71[7];
                v398 = vzip1q_s64(*v71, v253);
                v399 = vzip1q_s64(v256, v257);
                v402 = vzip2q_s64(v252, v253);
                v403 = vzip2q_s64(v256, v257);
                v406 = vzip1q_s64(v254, v255);
                v407 = vzip1q_s64(v258, v259);
                v410 = vzip2q_s64(v254, v255);
                v411 = vzip2q_s64(v258, v259);
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v90 = vld1q_dup_f32(v71->i32);
                v398 = v90;
                v399 = v90;
                v402 = v90;
                v403 = v90;
                v406 = v90;
                v407 = v90;
                v410 = v90;
                v411 = v90;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v398, 64, v71, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v398.i32, 64, v71, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v399 = 0u;
            v398 = 0u;
            v402 = 0u;
            v403 = 0u;
            v406 = 0u;
            v407 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v260 = v71->i64 + v82;
          v261 = v72[1];
          if (v72[1])
          {
            if (v261 < 0xF0)
            {
              if (v261 == 127)
              {
                v264 = *v260;
                v265 = *(v260 + 16);
                v266 = *(v260 + 32);
                v267 = *(v260 + 48);
                v268 = *(v260 + 64);
                v269 = *(v260 + 80);
                v270 = *(v260 + 96);
                v271 = *(v260 + 112);
                v414 = vzip1q_s64(*v260, v265);
                v415 = vzip1q_s64(v268, v269);
                v418 = vzip2q_s64(v264, v265);
                v419 = vzip2q_s64(v268, v269);
                v422 = vzip1q_s64(v266, v267);
                v423 = vzip1q_s64(v270, v271);
                v426 = vzip2q_s64(v266, v267);
                v427 = vzip2q_s64(v270, v271);
                v262 = 128;
              }

              else if (v261 == 3)
              {
                v263 = vld1q_dup_f32(v260);
                v414 = v263;
                v415 = v263;
                v418 = v263;
                v419 = v263;
                v422 = v263;
                v423 = v263;
                v426 = v263;
                v427 = v263;
                v262 = 4;
              }

              else
              {
                v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v414, 64, v260, v261);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v414.i32, 64, v260, v261, v80);
              v262 = 64;
            }
          }

          else
          {
            v262 = 0;
            v414 = 0u;
            v415 = 0u;
            v418 = 0u;
            v419 = 0u;
            v422 = 0u;
            v423 = 0u;
            v426 = 0u;
            v427 = 0u;
          }

          v272 = v260 + v262;
          v273 = v72[2];
          if (v72[2])
          {
            if (v273 < 0xF0)
            {
              if (v273 == 127)
              {
                v276 = *v272;
                v277 = *(v272 + 16);
                v278 = *(v272 + 32);
                v279 = *(v272 + 48);
                v280 = *(v272 + 64);
                v281 = *(v272 + 80);
                v282 = *(v272 + 96);
                v283 = *(v272 + 112);
                v400 = vzip1q_s64(*v272, v277);
                v401 = vzip1q_s64(v280, v281);
                v404 = vzip2q_s64(v276, v277);
                v405 = vzip2q_s64(v280, v281);
                v408 = vzip1q_s64(v278, v279);
                v409 = vzip1q_s64(v282, v283);
                v412 = vzip2q_s64(v278, v279);
                v413 = vzip2q_s64(v282, v283);
                v274 = 128;
              }

              else if (v273 == 3)
              {
                v275 = vld1q_dup_f32(v272);
                v400 = v275;
                v401 = v275;
                v404 = v275;
                v405 = v275;
                v408 = v275;
                v409 = v275;
                v412 = v275;
                v413 = v275;
                v274 = 4;
              }

              else
              {
                v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v400, 64, v272, v273);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v400.i32, 64, v272, v273, v80);
              v274 = 64;
            }
          }

          else
          {
            v274 = 0;
            v400 = 0u;
            v401 = 0u;
            v404 = 0u;
            v405 = 0u;
            v408 = 0u;
            v409 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v284 = v272 + v274;
          v285 = v72[3];
          if (v72[3])
          {
            if (v285 < 0xF0)
            {
              if (v285 == 127)
              {
                v288 = *v284;
                v289 = *(v284 + 16);
                v290 = *(v284 + 32);
                v291 = *(v284 + 48);
                v292 = *(v284 + 64);
                v293 = *(v284 + 80);
                v294 = *(v284 + 96);
                v295 = *(v284 + 112);
                v416 = vzip1q_s64(*v284, v289);
                v417 = vzip1q_s64(v292, v293);
                v420 = vzip2q_s64(v288, v289);
                v421 = vzip2q_s64(v292, v293);
                v424 = vzip1q_s64(v290, v291);
                v425 = vzip1q_s64(v294, v295);
                v428 = vzip2q_s64(v290, v291);
                v429 = vzip2q_s64(v294, v295);
                v286 = 128;
              }

              else if (v285 == 3)
              {
                v287 = vld1q_dup_f32(v284);
                v416 = v287;
                v417 = v287;
                v420 = v287;
                v421 = v287;
                v424 = v287;
                v425 = v287;
                v428 = v287;
                v429 = v287;
                v286 = 4;
              }

              else
              {
                v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v416, 64, v284, v285);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v416.i32, 64, v284, v285, v80);
              v286 = 64;
            }
          }

          else
          {
            v286 = 0;
            v416 = 0u;
            v417 = 0u;
            v420 = 0u;
            v421 = 0u;
            v424 = 0u;
            v425 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v296 = v284 + v286;
          v297 = v72[4];
          if (v72[4])
          {
            if (v297 < 0xF0)
            {
              if (v297 == 127)
              {
                v300 = *v296;
                v301 = *(v296 + 16);
                v302 = *(v296 + 32);
                v303 = *(v296 + 48);
                v304 = *(v296 + 64);
                v305 = *(v296 + 80);
                v306 = *(v296 + 96);
                v307 = *(v296 + 112);
                v430 = vzip1q_s64(*v296, v301);
                v431 = vzip1q_s64(v304, v305);
                v434 = vzip2q_s64(v300, v301);
                v435 = vzip2q_s64(v304, v305);
                v438 = vzip1q_s64(v302, v303);
                v439 = vzip1q_s64(v306, v307);
                v442 = vzip2q_s64(v302, v303);
                v443 = vzip2q_s64(v306, v307);
                v298 = 128;
              }

              else if (v297 == 3)
              {
                v299 = vld1q_dup_f32(v296);
                v430 = v299;
                v431 = v299;
                v434 = v299;
                v435 = v299;
                v438 = v299;
                v439 = v299;
                v442 = v299;
                v443 = v299;
                v298 = 4;
              }

              else
              {
                v298 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v430, 64, v296, v297);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v430.i32, 64, v296, v297, v80);
              v298 = 64;
            }
          }

          else
          {
            v298 = 0;
            v430 = 0u;
            v431 = 0u;
            v434 = 0u;
            v435 = 0u;
            v438 = 0u;
            v439 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v308 = v296 + v298;
          v309 = v72[5];
          if (v72[5])
          {
            if (v309 < 0xF0)
            {
              if (v309 == 127)
              {
                v312 = *v308;
                v313 = *(v308 + 16);
                v314 = *(v308 + 32);
                v315 = *(v308 + 48);
                v316 = *(v308 + 64);
                v317 = *(v308 + 80);
                v318 = *(v308 + 96);
                v319 = *(v308 + 112);
                v446 = vzip1q_s64(*v308, v313);
                v447 = vzip1q_s64(v316, v317);
                v450 = vzip2q_s64(v312, v313);
                v451 = vzip2q_s64(v316, v317);
                v454 = vzip1q_s64(v314, v315);
                v455 = vzip1q_s64(v318, v319);
                v458 = vzip2q_s64(v314, v315);
                v459 = vzip2q_s64(v318, v319);
                v310 = 128;
              }

              else if (v309 == 3)
              {
                v311 = vld1q_dup_f32(v308);
                v446 = v311;
                v447 = v311;
                v450 = v311;
                v451 = v311;
                v454 = v311;
                v455 = v311;
                v458 = v311;
                v459 = v311;
                v310 = 4;
              }

              else
              {
                v310 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v446, 64, v308, v309);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v446.i32, 64, v308, v309, v80);
              v310 = 64;
            }
          }

          else
          {
            v310 = 0;
            v446 = 0u;
            v447 = 0u;
            v450 = 0u;
            v451 = 0u;
            v454 = 0u;
            v455 = 0u;
            v458 = 0u;
            v459 = 0u;
          }

          v320 = v308 + v310;
          v321 = v72[6];
          if (v72[6])
          {
            if (v321 < 0xF0)
            {
              if (v321 == 127)
              {
                v327 = *v320;
                v328 = *(v320 + 16);
                v329 = *(v320 + 32);
                v330 = *(v320 + 48);
                v331 = *(v320 + 64);
                v332 = *(v320 + 80);
                v333 = *(v320 + 96);
                v334 = *(v320 + 112);
                v432 = vzip1q_s64(*v320, v328);
                v433 = vzip1q_s64(v331, v332);
                v436 = vzip2q_s64(v327, v328);
                v437 = vzip2q_s64(v331, v332);
                v440 = vzip1q_s64(v329, v330);
                v441 = vzip1q_s64(v333, v334);
                v444 = vzip2q_s64(v329, v330);
                v445 = vzip2q_s64(v333, v334);
                v322 = 128;
                v323 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v321 == 3)
              {
                v325 = vld1q_dup_f32(v320);
                v432 = v325;
                v433 = v325;
                v436 = v325;
                v437 = v325;
                v440 = v325;
                v441 = v325;
                v444 = v325;
                v445 = v325;
                v322 = 4;
                v323 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v322 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v432, 64, v320, v321);
                v323 = v72[7];
                if (!v72[7])
                {
LABEL_218:
                  v448 = 0u;
                  v449 = 0u;
                  v452 = 0u;
                  v453 = 0u;
                  v456 = 0u;
                  v457 = 0u;
                  v460 = 0u;
                  v461 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v432.i32, 64, v320, v321, v80);
              v322 = 64;
              v323 = v72[7];
              if (!v72[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v322 = 0;
            v432 = 0u;
            v433 = 0u;
            v436 = 0u;
            v437 = 0u;
            v440 = 0u;
            v441 = 0u;
            v444 = 0u;
            v445 = 0u;
            v323 = v72[7];
            if (!v72[7])
            {
              goto LABEL_218;
            }
          }

          v324 = v320 + v322;
          if (v323 < 0xF0)
          {
            if (v323 == 127)
            {
              v335 = *v324;
              v336 = *(v324 + 16);
              v337 = *(v324 + 32);
              v338 = *(v324 + 48);
              v339 = *(v324 + 64);
              v340 = *(v324 + 80);
              v341 = *(v324 + 96);
              v342 = *(v324 + 112);
              v448 = vzip1q_s64(*v324, v336);
              v449 = vzip1q_s64(v339, v340);
              v452 = vzip2q_s64(v335, v336);
              v453 = vzip2q_s64(v339, v340);
              v456 = vzip1q_s64(v337, v338);
              v457 = vzip1q_s64(v341, v342);
              v460 = vzip2q_s64(v337, v338);
              v461 = vzip2q_s64(v341, v342);
            }

            else if (v323 == 3)
            {
              v326 = vld1q_dup_f32(v324);
              v448 = v326;
              v449 = v326;
              v452 = v326;
              v453 = v326;
              v456 = v326;
              v457 = v326;
              v460 = v326;
              v461 = v326;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v448, 64, v324, v323);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v448.i32, 64, v324, v323, v80);
          }

LABEL_235:
          result = v386;
          v37 = v34 + 1;
          v343 = v393;
          if (v393)
          {
            v344 = 0;
            v345 = &v398.i8[64 * v391 + 4 * v392];
            v346 = v394;
            do
            {
              if (v346)
              {
                v347 = 0;
                v348 = v389 + v390 * v344;
                do
                {
                  *(v348 + v347) = v345[v347];
                  ++v347;
                  v346 = v394;
                }

                while (4 * v394 > v347);
                v343 = v393;
              }

              ++v344;
              v345 += 64;
            }

            while (v344 < v343);
          }

LABEL_31:
          v20 = v34 == v375 >> 4;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v365;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v144 = v15;
  v17 = v16;
  v19 = v18;
  v139 = v20;
  v140 = v21;
  v126 = v22;
  v23 = v12;
  v166 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v143 = v14;
  v24 = v14 >> 4;
  v125 = v14 + a10 - 1;
  v127 = v125 >> 4;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v147 = v23;
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
  v138 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v137 = result;
  if (v24 <= v127)
  {
    v136 = v144 + a9 - 1;
    if (v144 >> 4 <= v136 >> 4)
    {
      result = v23;
      v33 = a11;
      v146 = (v19 - 1) >> 4;
      v122 = v19 - 1;
      v130 = (v19 - 1) & 0xF;
      v123 = (v17 - 1) & 0xF;
      v124 = (v17 - 1) >> 4;
      v128 = 8 * a11;
      v129 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v134 = v35;
      v121 = 8 * v26 * v25;
      do
      {
        v36 = (16 * v24) | 0xF;
        if (16 * v24 <= v143)
        {
          v37 = v143;
        }

        else
        {
          v37 = 16 * v24;
        }

        if (v125 < v36)
        {
          v36 = v125;
        }

        v142 = 16 * v24;
        v133 = v37 - 16 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v123;
        v132 = v39;
        v41 = v39 != 16;
        v42 = v144 >> 4;
        v43 = v123 + 1;
        if (v24 != v124)
        {
          v43 = 16;
        }

        v145 = v43;
        if (v24 != v124)
        {
          v40 = v41;
        }

        v131 = v40;
        v141 = v126 + (v37 - v143) * v33;
        v44 = v144;
        do
        {
          v56 = 16 * v42;
          v57 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v44)
          {
            v58 = v44;
          }

          else
          {
            v58 = 16 * v42;
          }

          if (v136 < v57)
          {
            v57 = v144 + a9 - 1;
          }

          v59 = v57 - v58;
          v60 = v59 + 1;
          if (v42 == v146)
          {
            v61 = v130 + 1;
          }

          else
          {
            v61 = 16;
          }

          v62 = 1;
          if (v142 >= v143 && v56 >= v44)
          {
            v63 = v59 != v130;
            if (v42 != v146)
            {
              v63 = v60 != 16;
            }

            v62 = v63 || v131;
          }

          if (v137)
          {
            v84 = 0;
            v85 = v121 >> (*(result + 57) != 0);
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
              v88 = 16;
              v87 = 1;
              v84 = 32;
            }

            else if (v85 == 512)
            {
              v84 = 16;
              v87 = 1;
              v88 = 16;
            }

            else
            {
              v87 = 1;
              v88 = 0;
              if (v85 == 1024)
              {
                v88 = 8;
                v84 = 16;
              }
            }

            v111 = (v84 >> 4) - 1;
            if (v86)
            {
              v112 = 0;
              if (v87)
              {
                goto LABEL_123;
              }

LABEL_112:
              v113 = 32 - __clz(~(-1 << -__clz(((v88 + 15) >> 4) - 1)));
              if (v113 | v112)
              {
                goto LABEL_113;
              }

LABEL_124:
              v120 = 0;
            }

            else
            {
              v112 = 32 - __clz(~(-1 << -__clz(v111)));
              if ((v87 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v113 = 0;
              if (!v112)
              {
                goto LABEL_124;
              }

LABEL_113:
              v114 = 0;
              v115 = 0;
              v116 = v42 & v111;
              v117 = v112 != 0;
              v118 = v113 != 0;
              v119 = 1;
              do
              {
                --v112;
                if (v117)
                {
                  v115 |= (v119 & v116) << v114++;
                }

                else
                {
                  v112 = 0;
                }

                --v113;
                if (v118)
                {
                  v115 |= (v119 & v24 & ((v88 >> 4) - 1)) << v114++;
                }

                else
                {
                  v113 = 0;
                }

                v119 *= 2;
                --v114;
                v118 = v113 != 0;
                v117 = v112 != 0;
              }

              while (v113 | v112);
              v120 = v115 << 10;
              result = v147;
            }

            v71 = v120 + ((v56 / v84 + v142 / v88 * ((v84 + v122) / v84)) << 14);
            goto LABEL_56;
          }

          if (v135)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v134.i8[0];
            v68 = v134.i8[4];
            v70 = v135.i32[0];
            v69 = v135.i32[1];
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

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
          }

          v75 = *(result + 132) >> (*(result + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 15;
          if (v76 < 0x20)
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
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 4) - 1)));
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
          v89 = (v139 + v71);
          if (v138)
          {
            v90 = v60;
            v91 = v33;
            v92 = v61;
            v93 = v58;
            v94 = v62;
            memcpy(__dst, (v139 + v71), sizeof(__dst));
            v62 = v94;
            v58 = v93;
            v56 = 16 * v42;
            v61 = v92;
            v33 = v91;
            v60 = v90;
            result = v147;
            v89 = __dst;
          }

          v95 = (v140 + v83);
          v96 = (v141 + 8 * (v58 - v44));
          if (!(v62 & 1 | (v61 < 0x10u)) && v145 > 0xF)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v141 + 8 * (v58 - v44)), v33, v89, *v95, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v96 + v129), v33, v46, v95[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v96 + 4, v33, v47, v95[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v96 + v129 + 64), v33, v48, v95[3], v45);
            v50 = (v96 + v128);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v96 + v128), v33, v49, v95[4], v45);
            v52 = (v96 + 12 * a11);
            v53 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v52, v33, v51, v95[5], v45);
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v50 + 4, v33, v53, v95[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v52 + 4, v33, v53 + v54, v95[7], v45);
LABEL_29:
            v44 = v144;
            v55 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v89;
          v155 = v61;
          v156 = v145;
          v151 = v133;
          v152 = v58 - v56;
          block[6] = v95;
          v149 = v141 + 8 * (v58 - v44);
          v150 = v33;
          v153 = v132;
          v154 = v60;
          if (v62)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v97 = *(*(result + 208) + 52);
          v98 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v158, 128, v89, *v95, v97)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v160, 128, v98, v95[1], v97);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v159, 128, v99, v95[2], v97);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v161, 128, v100, v95[3], v97);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v162, 128, v101, v95[4], v97);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v164, 128, v102, v95[5], v97);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v163, 128, v103, v95[6], v97);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v165, 128, v103 + v104, v95[7], v97);
          v105 = v153;
          v44 = v144;
          v55 = v42 + 1;
          if (v153)
          {
            v106 = 0;
            v107 = &v158[8 * v151].f64[v152];
            v108 = v154;
            do
            {
              if (v108)
              {
                v109 = 0;
                v110 = v149 + v150 * v106;
                do
                {
                  *(v110 + v109) = v107[v109];
                  ++v109;
                  v108 = v154;
                }

                while (8 * v154 > v109);
                v105 = v153;
              }

              ++v106;
              v107 += 128;
            }

            while (v106 < v105);
          }

LABEL_30:
          v28 = v42 == v136 >> 4;
          v42 = v55;
          result = v147;
        }

        while (!v28);
        v28 = v24++ == v127;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v261 = a8;
  v17 = a8 >> 4;
  v240 = a8 + a10 - 1;
  v242 = v240 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v264 = a1;
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
  v256 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v255 = result;
  if (v17 <= v242)
  {
    v254 = a7 + a9 - 1;
    v239 = a7 >> 4;
    if (a7 >> 4 <= v254 >> 4)
    {
      result = a1;
      v26 = a11;
      v263 = (a5 - 1) >> 4;
      v236 = a5 - 1;
      v246 = (a5 - 1) & 0xF;
      v237 = (a6 - 1) & 0xF;
      v238 = (a6 - 1) >> 4;
      v244 = 8 * a11;
      v245 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v28.i8 = vcgt_u32(v27, 0x1F0000001FLL);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 4uLL))))))), *v28.i8);
      v251 = v29.i64[0];
      v252 = v29.i32[0] | v29.i32[1];
      v250 = v28.i64[0];
      v235 = 8 * v19 * v18;
      v265 = 3 * a11;
      v253 = a7;
      v243 = 2 * a11;
      do
      {
        v30 = (16 * v17) | 0xF;
        if (16 * v17 <= v261)
        {
          v31 = v261;
        }

        else
        {
          v31 = 16 * v17;
        }

        if (v240 < v30)
        {
          v30 = v240;
        }

        v260 = 16 * v17;
        v249 = v31 - 16 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v237;
        v248 = v33;
        v35 = v33 != 16;
        v36 = v239;
        v37 = v237 + 1;
        if (v17 != v238)
        {
          v37 = 16;
        }

        v262 = v37;
        if (v17 != v238)
        {
          v34 = v35;
        }

        v247 = v34;
        v259 = a2 + (v31 - v261) * v26;
        do
        {
          v42 = 16 * v36;
          v43 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v36;
          }

          if (v254 < v43)
          {
            v43 = v254;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v36 == v263)
          {
            v47 = v246 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (v260 >= v261 && v42 >= a7)
          {
            v49 = v45 != v246;
            if (v36 != v263)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v247;
          }

          if (v255)
          {
            v70 = 0;
            v71 = v235 >> (*(result + 57) != 0);
            v72 = 1;
            if (v71 <= 63)
            {
              if (v71 > 15)
              {
                if (v71 == 16)
                {
                  v72 = 0;
                  v73 = 0;
                  v74 = 64;
                  v70 = 128;
                }

                else
                {
                  v73 = 1;
                  v74 = 0;
                  if (v71 == 32)
                  {
                    v72 = 0;
                    v73 = 0;
                    v70 = 64;
                    v74 = 64;
                  }
                }
              }

              else if (v71 == 4)
              {
                v72 = 0;
                v73 = 0;
                v74 = 128;
                v70 = 256;
              }

              else
              {
                v73 = 1;
                v74 = 0;
                if (v71 == 8)
                {
                  v72 = 0;
                  v73 = 0;
                  v70 = 128;
                  v74 = 128;
                }
              }
            }

            else if (v71 <= 255)
            {
              if (v71 == 64)
              {
                v72 = 0;
                v73 = 0;
                v74 = 32;
                v70 = 64;
              }

              else
              {
                v73 = 1;
                v74 = 0;
                if (v71 == 128)
                {
                  v72 = 0;
                  v73 = 0;
                  v70 = 32;
                  v74 = 32;
                }
              }
            }

            else if (v71 == 256)
            {
              v72 = 0;
              v74 = 16;
              v73 = 1;
              v70 = 32;
            }

            else if (v71 == 512)
            {
              v70 = 16;
              v73 = 1;
              v74 = 16;
            }

            else
            {
              v73 = 1;
              v74 = 0;
              if (v71 == 1024)
              {
                v74 = 8;
                v70 = 16;
              }
            }

            v225 = (v70 >> 4) - 1;
            if (v72)
            {
              v226 = 0;
              if (v73)
              {
                goto LABEL_269;
              }

LABEL_258:
              v227 = 32 - __clz(~(-1 << -__clz(((v74 + 15) >> 4) - 1)));
              if (v227 | v226)
              {
                goto LABEL_259;
              }

LABEL_270:
              v234 = 0;
            }

            else
            {
              v226 = 32 - __clz(~(-1 << -__clz(v225)));
              if ((v73 & 1) == 0)
              {
                goto LABEL_258;
              }

LABEL_269:
              v227 = 0;
              if (!v226)
              {
                goto LABEL_270;
              }

LABEL_259:
              v228 = 0;
              v229 = 0;
              v230 = v36 & v225;
              v231 = v226 != 0;
              v232 = v227 != 0;
              v233 = 1;
              do
              {
                --v226;
                if (v231)
                {
                  v229 |= (v233 & v230) << v228++;
                }

                else
                {
                  v226 = 0;
                }

                --v227;
                if (v232)
                {
                  v229 |= (v233 & v17 & ((v74 >> 4) - 1)) << v228++;
                }

                else
                {
                  v227 = 0;
                }

                v233 *= 2;
                --v228;
                v232 = v227 != 0;
                v231 = v226 != 0;
              }

              while (v227 | v226);
              v234 = v229 << 8;
              result = v264;
            }

            v57 = v234 + ((v42 / v70 + v260 / v74 * ((v70 + v236) / v70)) << 14);
            goto LABEL_57;
          }

          if (v252)
          {
            v50 = 0;
            v51 = 0;
            v52 = 1;
            v53 = v250;
            v54 = BYTE4(v250);
            v56 = v251;
            v55 = HIDWORD(v251);
            do
            {
              --v55;
              if (v54)
              {
                v51 |= (v52 & v36) << v50++;
              }

              else
              {
                v55 = 0;
              }

              --v56;
              if (v53)
              {
                v51 |= (v52 & v17) << v50++;
              }

              else
              {
                v56 = 0;
              }

              v52 *= 2;
              --v50;
              v53 = v56 != 0;
              v54 = v55 != 0;
            }

            while (v56 | v55);
            v57 = v51 << 8;
          }

          else
          {
            v57 = 0;
          }

LABEL_57:
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
LABEL_82:
              v69 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_82;
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
              v65 |= (v68 & v36) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v17) << v64++;
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
LABEL_83:
          v75 = (a3 + v57);
          if (v256)
          {
            memcpy(__dst, v75, sizeof(__dst));
            result = v264;
            v75 = __dst;
          }

          v76 = (a4 + v69);
          v77 = (v259 + 2 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v262 > 0xF)
          {
            v78 = *(result + 208);
            v79 = *(v78 + 52);
            v80 = *v76;
            if (*v76)
            {
              v26 = a11;
              v81 = 2 * a11;
              if (v80 < 0xF0)
              {
                if (v80 == 63)
                {
                  v90 = *v75;
                  v28 = v75[1];
                  v91 = v75[2];
                  v92 = v75[3];
                  *v77 = vuzp1q_s32(*v75, v91);
                  *(v77 + a11) = vuzp2q_s32(v90, v91);
                  v93 = (v77 + v243);
                  *v93 = vuzp1q_s32(v28, v92);
                  v29 = vuzp2q_s32(v28, v92);
                  *(v93 + a11) = v29;
                  v82 = 64;
                }

                else if (v80 == 1)
                {
                  v29 = vld1q_dup_s16(v75->i16);
                  *v77 = v29;
                  *(v77 + a11) = v29;
                  *(v77 + 2 * a11) = v29;
                  *(v77 + 3 * a11) = v29;
                  v82 = 2;
                }

                else
                {
                  v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v77, a11, v75, v80, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v77, a11, v75, v80, *(v78 + 52));
                v82 = 32;
              }
            }

            else
            {
              v82 = 0;
              v77->i64[0] = 0;
              v77->i64[1] = 0;
              v26 = a11;
              v87 = (v77->i64 + a11);
              *v87 = 0;
              v87[1] = 0;
              v81 = 2 * a11;
              v88 = (v77->i64 + v243);
              *v88 = 0;
              v88[1] = 0;
              v89 = (v77->i64 + v265);
              *v89 = 0;
              v89[1] = 0;
            }

            v94 = v75->i64 + v82;
            v95 = (v77 + v245);
            v96 = v76[1];
            if (v76[1])
            {
              if (v96 < 0xF0)
              {
                if (v96 == 63)
                {
                  v101 = *v94;
                  v28 = *(v94 + 16);
                  v102 = *(v94 + 32);
                  v103 = *(v94 + 48);
                  *v95 = vuzp1q_s32(*v94, v102);
                  *(v95 + v26) = vuzp2q_s32(v101, v102);
                  v104 = (v95 + v81);
                  *v104 = vuzp1q_s32(v28, v103);
                  v29 = vuzp2q_s32(v28, v103);
                  *(v104 + v26) = v29;
                  v97 = 64;
                }

                else if (v96 == 1)
                {
                  v29 = vld1q_dup_s16(v94);
                  *v95 = v29;
                  *(v95 + v26) = v29;
                  *(v95 + v81) = v29;
                  *(v95 + 3 * a11) = v29;
                  v97 = 2;
                }

                else
                {
                  v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v77 + v245), v26, v94, v96, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v77->i16[v245 / 2], v26, v94, v96, v79);
                v97 = 32;
              }
            }

            else
            {
              v97 = 0;
              v95->i64[0] = 0;
              v95->i64[1] = 0;
              v98 = (v95->i64 + v26);
              *v98 = 0;
              v98[1] = 0;
              v99 = (v95->i64 + v81);
              *v99 = 0;
              v99[1] = 0;
              v100 = (v95->i64 + v265);
              *v100 = 0;
              v100[1] = 0;
            }

            v105 = v94 + v97;
            v106 = v77 + 1;
            v107 = v76[2];
            if (v76[2])
            {
              if (v107 < 0xF0)
              {
                if (v107 == 63)
                {
                  v112 = *v105;
                  v28 = *(v105 + 16);
                  v113 = *(v105 + 32);
                  v114 = *(v105 + 48);
                  *v106 = vuzp1q_s32(*v105, v113);
                  *(v106 + v26) = vuzp2q_s32(v112, v113);
                  v115 = (v106 + v81);
                  *v115 = vuzp1q_s32(v28, v114);
                  v29 = vuzp2q_s32(v28, v114);
                  *(v115 + v26) = v29;
                  v108 = 64;
                }

                else if (v107 == 1)
                {
                  v29 = vld1q_dup_s16(v105);
                  *v106 = v29;
                  *(v106 + v26) = v29;
                  *(v106 + v81) = v29;
                  *(v106 + 3 * a11) = v29;
                  v108 = 2;
                }

                else
                {
                  v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v106, v26, v105, v107, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v106, v26, v105, v107, v79);
                v108 = 32;
              }
            }

            else
            {
              v108 = 0;
              v106->i64[0] = 0;
              v77[1].i64[1] = 0;
              v109 = (v106->i64 + v26);
              *v109 = 0;
              v109[1] = 0;
              v110 = (v106->i64 + v81);
              *v110 = 0;
              v110[1] = 0;
              v111 = (v106->i64 + v265);
              *v111 = 0;
              v111[1] = 0;
            }

            v116 = v105 + v108;
            v117 = v95 + 1;
            v118 = v76[3];
            if (v76[3])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 63)
                {
                  v123 = *v116;
                  v28 = *(v116 + 16);
                  v124 = *(v116 + 32);
                  v125 = *(v116 + 48);
                  *v117 = vuzp1q_s32(*v116, v124);
                  *(v117 + v26) = vuzp2q_s32(v123, v124);
                  v126 = (v117 + v81);
                  *v126 = vuzp1q_s32(v28, v125);
                  v29 = vuzp2q_s32(v28, v125);
                  *(v126 + v26) = v29;
                  v119 = 64;
                }

                else if (v118 == 1)
                {
                  v29 = vld1q_dup_s16(v116);
                  *v117 = v29;
                  *(v117 + v26) = v29;
                  *(v117 + v81) = v29;
                  *(v117 + 3 * a11) = v29;
                  v119 = 2;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v117, v26, v116, v118, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v117, v26, v116, v118, v79);
                v119 = 32;
              }
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v95[1].i64[1] = 0;
              v120 = (v117->i64 + v26);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v81);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v265);
              *v122 = 0;
              v122[1] = 0;
            }

            v127 = v116 + v119;
            v128 = (v77 + v244);
            v129 = v76[4];
            if (v76[4])
            {
              if (v129 < 0xF0)
              {
                if (v129 == 63)
                {
                  v134 = *v127;
                  v28 = *(v127 + 16);
                  v135 = *(v127 + 32);
                  v136 = *(v127 + 48);
                  *v128 = vuzp1q_s32(*v127, v135);
                  *(v128 + v26) = vuzp2q_s32(v134, v135);
                  v137 = (v128 + v81);
                  *v137 = vuzp1q_s32(v28, v136);
                  v29 = vuzp2q_s32(v28, v136);
                  *(v137 + v26) = v29;
                  v130 = 64;
                }

                else if (v129 == 1)
                {
                  v29 = vld1q_dup_s16(v127);
                  *v128 = v29;
                  *(v128 + v26) = v29;
                  *(v128 + v81) = v29;
                  *(v128 + 3 * a11) = v29;
                  v130 = 2;
                }

                else
                {
                  v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v77 + v244), v26, v127, v129, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v77->i16[v244 / 2], v26, v127, v129, v79);
                v130 = 32;
              }
            }

            else
            {
              v130 = 0;
              v128->i64[0] = 0;
              v128->i64[1] = 0;
              v131 = (v128->i64 + v26);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v128->i64 + v81);
              *v132 = 0;
              v132[1] = 0;
              v133 = (v128->i64 + v265);
              *v133 = 0;
              v133[1] = 0;
            }

            v138 = v127 + v130;
            v139 = (v77 + 12 * a11);
            v140 = v76[5];
            if (v76[5])
            {
              if (v140 < 0xF0)
              {
                if (v140 == 63)
                {
                  v145 = *v138;
                  v28 = *(v138 + 16);
                  v146 = *(v138 + 32);
                  v147 = *(v138 + 48);
                  *v139 = vuzp1q_s32(*v138, v146);
                  *(v139 + v26) = vuzp2q_s32(v145, v146);
                  v148 = (v139 + v81);
                  *v148 = vuzp1q_s32(v28, v147);
                  v29 = vuzp2q_s32(v28, v147);
                  *(v148 + v26) = v29;
                  v141 = 64;
                }

                else if (v140 == 1)
                {
                  v29 = vld1q_dup_s16(v138);
                  *v139 = v29;
                  *(v139 + v26) = v29;
                  *(v139 + v81) = v29;
                  *(v139 + 3 * a11) = v29;
                  v141 = 2;
                }

                else
                {
                  v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v139, v26, v138, v140, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v139, v26, v138, v140, v79);
                v141 = 32;
              }
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v139->i64[1] = 0;
              v142 = (v139->i64 + v26);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v81);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v265);
              *v144 = 0;
              v144[1] = 0;
            }

            v149 = v138 + v141;
            v150 = v128 + 1;
            v151 = v76[6];
            if (v76[6])
            {
              if (v151 < 0xF0)
              {
                if (v151 == 63)
                {
                  v156 = *v149;
                  v28 = *(v149 + 16);
                  v157 = *(v149 + 32);
                  v158 = *(v149 + 48);
                  *v150 = vuzp1q_s32(*v149, v157);
                  *(v150 + v26) = vuzp2q_s32(v156, v157);
                  v159 = (v150 + v81);
                  *v159 = vuzp1q_s32(v28, v158);
                  v29 = vuzp2q_s32(v28, v158);
                  *(v159 + v26) = v29;
                  v152 = 64;
                }

                else if (v151 == 1)
                {
                  v29 = vld1q_dup_s16(v149);
                  *v150 = v29;
                  *(v150 + v26) = v29;
                  *(v150 + v81) = v29;
                  *(v150 + 3 * a11) = v29;
                  v152 = 2;
                }

                else
                {
                  v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v150, v26, v149, v151, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v150, v26, v149, v151, v79);
                v152 = 32;
              }
            }

            else
            {
              v152 = 0;
              v150->i64[0] = 0;
              v128[1].i64[1] = 0;
              v153 = (v150->i64 + v26);
              *v153 = 0;
              v153[1] = 0;
              v154 = (v150->i64 + v81);
              *v154 = 0;
              v154[1] = 0;
              v155 = (v150->i64 + v265);
              *v155 = 0;
              v155[1] = 0;
            }

            v160 = v139 + 1;
            v161 = v76[7];
            if (v76[7])
            {
              v162 = v149 + v152;
              a7 = v253;
              if (v161 < 0xF0)
              {
                if (v161 == 63)
                {
                  v163 = *v162;
                  v28 = *(v162 + 16);
                  v164 = *(v162 + 32);
                  v165 = *(v162 + 48);
                  *v160 = vuzp1q_s32(*v162, v164);
                  *(v160 + v26) = vuzp2q_s32(v163, v164);
                  v166 = (v160 + v81);
                  *v166 = vuzp1q_s32(v28, v165);
                  v29 = vuzp2q_s32(v28, v165);
                  *(v166 + v26) = v29;
                }

                else if (v161 == 1)
                {
                  v29 = vld1q_dup_s16(v162);
                  *v160 = v29;
                  *(v160 + v26) = v29;
                  *(v160 + v81) = v29;
                  *(v160 + 3 * a11) = v29;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v160, v26, v162, v161, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v160, v26, v162, v161, v79);
              }
            }

            else
            {
              v160->i64[0] = 0;
              v139[1].i64[1] = 0;
              v38 = (v160->i64 + v26);
              *v38 = 0;
              v38[1] = 0;
              v39 = (v160->i64 + v81);
              *v39 = 0;
              v39[1] = 0;
              v40 = (v160->i64 + v265);
              *v40 = 0;
              v40[1] = 0;
              a7 = v253;
            }

            result = v264;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v75;
          v273 = v47;
          v274 = v262;
          v269 = v249;
          v270 = v44 - v42;
          block[6] = v76;
          v267 = v77;
          v26 = a11;
          v268 = a11;
          v271 = v248;
          v272 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v264;
            a7 = v253;
LABEL_30:
            v41 = v36 + 1;
            goto LABEL_31;
          }

          v83 = *(result + 208);
          v84 = *(v83 + 52);
          v85 = *v76;
          a7 = v253;
          if (*v76)
          {
            if (v85 < 0xF0)
            {
              if (v85 == 63)
              {
                v167 = v75[1];
                v168 = v75[2];
                v169 = v75[3];
                v170 = vuzp2q_s32(*v75, v168);
                v276 = vuzp1q_s32(*v75, v168);
                v278 = v170;
                v29 = vuzp1q_s32(v167, v169);
                v28 = vuzp2q_s32(v167, v169);
                v280 = v29;
                v282 = v28;
                v86 = 64;
              }

              else if (v85 == 1)
              {
                v29 = vld1q_dup_s16(v75->i16);
                v276 = v29;
                v278 = v29;
                v280 = v29;
                v282 = v29;
                v86 = 2;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v276, 32, v75, v85, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v276, 32, v75, v85, *(v83 + 52));
              v86 = 32;
            }
          }

          else
          {
            v86 = 0;
            v276 = 0uLL;
            v278 = 0uLL;
            v280 = 0uLL;
            v282 = 0uLL;
          }

          v171 = v75->i64 + v86;
          v172 = v76[1];
          if (v76[1])
          {
            if (v172 < 0xF0)
            {
              if (v172 == 63)
              {
                v174 = *(v171 + 16);
                v175 = *(v171 + 32);
                v176 = *(v171 + 48);
                v177 = vuzp2q_s32(*v171, v175);
                v284 = vuzp1q_s32(*v171, v175);
                v286 = v177;
                v29 = vuzp1q_s32(v174, v176);
                v28 = vuzp2q_s32(v174, v176);
                v288 = v29;
                v290 = v28;
                v173 = 64;
              }

              else if (v172 == 1)
              {
                v29 = vld1q_dup_s16(v171);
                v284 = v29;
                v286 = v29;
                v288 = v29;
                v290 = v29;
                v173 = 2;
              }

              else
              {
                v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v284, 32, v171, v172, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v284, 32, v171, v172, v84);
              v173 = 32;
            }
          }

          else
          {
            v173 = 0;
            v284 = 0uLL;
            v286 = 0uLL;
            v288 = 0uLL;
            v290 = 0uLL;
          }

          v178 = v171 + v173;
          v179 = v76[2];
          if (v76[2])
          {
            if (v179 < 0xF0)
            {
              if (v179 == 63)
              {
                v181 = *(v178 + 16);
                v182 = *(v178 + 32);
                v183 = *(v178 + 48);
                v184 = vuzp2q_s32(*v178, v182);
                v277 = vuzp1q_s32(*v178, v182);
                v279 = v184;
                v29 = vuzp1q_s32(v181, v183);
                v28 = vuzp2q_s32(v181, v183);
                v281 = v29;
                v283 = v28;
                v180 = 64;
              }

              else if (v179 == 1)
              {
                v29 = vld1q_dup_s16(v178);
                v277 = v29;
                v279 = v29;
                v281 = v29;
                v283 = v29;
                v180 = 2;
              }

              else
              {
                v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v277, 32, v178, v179, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v277, 32, v178, v179, v84);
              v180 = 32;
            }
          }

          else
          {
            v180 = 0;
            v277 = 0uLL;
            v279 = 0uLL;
            v281 = 0uLL;
            v283 = 0uLL;
          }

          v185 = v178 + v180;
          v186 = v76[3];
          if (v76[3])
          {
            if (v186 < 0xF0)
            {
              if (v186 == 63)
              {
                v188 = *(v185 + 16);
                v189 = *(v185 + 32);
                v190 = *(v185 + 48);
                v191 = vuzp2q_s32(*v185, v189);
                v285 = vuzp1q_s32(*v185, v189);
                v287 = v191;
                v29 = vuzp1q_s32(v188, v190);
                v28 = vuzp2q_s32(v188, v190);
                v289 = v29;
                v291 = v28;
                v187 = 64;
              }

              else if (v186 == 1)
              {
                v29 = vld1q_dup_s16(v185);
                v285 = v29;
                v287 = v29;
                v289 = v29;
                v291 = v29;
                v187 = 2;
              }

              else
              {
                v187 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v285, 32, v185, v186, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v285, 32, v185, v186, v84);
              v187 = 32;
            }
          }

          else
          {
            v187 = 0;
            v285 = 0uLL;
            v287 = 0uLL;
            v289 = 0uLL;
            v291 = 0uLL;
          }

          v192 = v185 + v187;
          v193 = v76[4];
          if (v76[4])
          {
            if (v193 < 0xF0)
            {
              if (v193 == 63)
              {
                v195 = *(v192 + 16);
                v196 = *(v192 + 32);
                v197 = *(v192 + 48);
                v198 = vuzp2q_s32(*v192, v196);
                v292 = vuzp1q_s32(*v192, v196);
                v294 = v198;
                v29 = vuzp1q_s32(v195, v197);
                v28 = vuzp2q_s32(v195, v197);
                v296 = v29;
                v298 = v28;
                v194 = 64;
              }

              else if (v193 == 1)
              {
                v29 = vld1q_dup_s16(v192);
                v292 = v29;
                v294 = v29;
                v296 = v29;
                v298 = v29;
                v194 = 2;
              }

              else
              {
                v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v292, 32, v192, v193, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v292, 32, v192, v193, v84);
              v194 = 32;
            }
          }

          else
          {
            v194 = 0;
            v292 = 0uLL;
            v294 = 0uLL;
            v296 = 0uLL;
            v298 = 0uLL;
          }

          v199 = v192 + v194;
          v200 = v76[5];
          if (v76[5])
          {
            if (v200 < 0xF0)
            {
              if (v200 == 63)
              {
                v202 = *(v199 + 16);
                v203 = *(v199 + 32);
                v204 = *(v199 + 48);
                v205 = vuzp2q_s32(*v199, v203);
                v300 = vuzp1q_s32(*v199, v203);
                v302 = v205;
                v29 = vuzp1q_s32(v202, v204);
                v28 = vuzp2q_s32(v202, v204);
                v304 = v29;
                v306 = v28;
                v201 = 64;
              }

              else if (v200 == 1)
              {
                v29 = vld1q_dup_s16(v199);
                v300 = v29;
                v302 = v29;
                v304 = v29;
                v306 = v29;
                v201 = 2;
              }

              else
              {
                v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v300, 32, v199, v200, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v300, 32, v199, v200, v84);
              v201 = 32;
            }
          }

          else
          {
            v201 = 0;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
            v306 = 0uLL;
          }

          v206 = v199 + v201;
          v207 = v76[6];
          if (v76[6])
          {
            if (v207 < 0xF0)
            {
              if (v207 == 63)
              {
                v210 = *(v206 + 16);
                v211 = *(v206 + 32);
                v212 = *(v206 + 48);
                v213 = vuzp2q_s32(*v206, v211);
                v293 = vuzp1q_s32(*v206, v211);
                v295 = v213;
                v29 = vuzp1q_s32(v210, v212);
                v28 = vuzp2q_s32(v210, v212);
                v297 = v29;
                v299 = v28;
                v208 = 64;
                v209 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v207 == 1)
              {
                v29 = vld1q_dup_s16(v206);
                v293 = v29;
                v295 = v29;
                v297 = v29;
                v299 = v29;
                v208 = 2;
                v209 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v293, 32, v206, v207, *v29.i8, *v28.i8);
                v209 = v76[7];
                if (!v76[7])
                {
LABEL_232:
                  v301 = 0uLL;
                  v303 = 0uLL;
                  v305 = 0uLL;
                  v307 = 0uLL;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v293, 32, v206, v207, v84);
              v208 = 32;
              v209 = v76[7];
              if (!v76[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v208 = 0;
            v293 = 0uLL;
            v295 = 0uLL;
            v297 = 0uLL;
            v299 = 0uLL;
            v209 = v76[7];
            if (!v76[7])
            {
              goto LABEL_232;
            }
          }

          v214 = v206 + v208;
          if (v209 < 0xF0)
          {
            if (v209 == 63)
            {
              v215 = *(v214 + 16);
              v216 = *(v214 + 32);
              v217 = *(v214 + 48);
              v218 = vuzp2q_s32(*v214, v216);
              v301 = vuzp1q_s32(*v214, v216);
              v303 = v218;
              v29 = vuzp1q_s32(v215, v217);
              v28 = vuzp2q_s32(v215, v217);
              v305 = v29;
              v307 = v28;
            }

            else if (v209 == 1)
            {
              v29 = vld1q_dup_s16(v214);
              v301 = v29;
              v303 = v29;
              v305 = v29;
              v307 = v29;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v301, 32, v214, v209, *v29.i8, *v28.i8);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v301, 32, v214, v209, v84);
          }

LABEL_234:
          result = v264;
          v41 = v36 + 1;
          v219 = v271;
          if (v271)
          {
            v220 = 0;
            v221 = &v276.i8[32 * v269 + 2 * v270];
            v222 = v272;
            do
            {
              if (v222)
              {
                v223 = 0;
                v224 = &v267->i8[v268 * v220];
                do
                {
                  v224[v223] = v221[v223];
                  ++v223;
                  v222 = v272;
                }

                while (2 * v272 > v223);
                v219 = v271;
              }

              ++v220;
              v221 += 32;
            }

            while (v220 < v219);
          }

LABEL_31:
          v21 = v36 == v254 >> 4;
          v36 = v41;
        }

        while (!v21);
        v21 = v17++ == v242;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v244 = v15;
  v17 = v16;
  v19 = v18;
  v239 = v20;
  v240 = v21;
  v224 = v22;
  v23 = v12;
  v386 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v243 = v14;
  v24 = v14 >> 4;
  v223 = v14 + a10 - 1;
  v225 = v223 >> 4;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v247 = v23;
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
  v238 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v237 = result;
  if (v24 <= v225)
  {
    v236 = v244 + a9 - 1;
    if (v244 >> 4 <= v236 >> 4)
    {
      result = v23;
      v33 = a11;
      v246 = (v19 - 1) >> 4;
      v220 = v19 - 1;
      v230 = (v19 - 1) & 0xF;
      v221 = (v17 - 1) & 0xF;
      v222 = (v17 - 1) >> 4;
      v228 = 8 * a11;
      v229 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v235 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v234 = v35;
      v219 = 8 * v26 * v25;
      v226 = 3 * a11;
      v227 = 2 * a11;
      do
      {
        v36 = (16 * v24) | 0xF;
        if (16 * v24 <= v243)
        {
          v37 = v243;
        }

        else
        {
          v37 = 16 * v24;
        }

        if (v223 < v36)
        {
          v36 = v223;
        }

        v242 = 16 * v24;
        v233 = v37 - 16 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v221;
        v232 = v39;
        v41 = v39 != 16;
        v42 = v244 >> 4;
        v43 = v221 + 1;
        if (v24 != v222)
        {
          v43 = 16;
        }

        v245 = v43;
        if (v24 != v222)
        {
          v40 = v41;
        }

        v231 = v40;
        v241 = v224 + (v37 - v243) * v33;
        v44 = v244;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v236 < v47)
          {
            v47 = v244 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v246)
          {
            v51 = v230 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v242 >= v243 && v46 >= v44)
          {
            v53 = v49 != v230;
            if (v42 != v246)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v231;
          }

          if (v237)
          {
            v74 = 0;
            v75 = v219 >> (*(result + 57) != 0);
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

            v209 = (v74 >> 4) - 1;
            if (v76)
            {
              v210 = 0;
              if (v77)
              {
                goto LABEL_239;
              }

LABEL_228:
              v211 = 32 - __clz(~(-1 << -__clz(((v78 + 15) >> 4) - 1)));
              if (v211 | v210)
              {
                goto LABEL_229;
              }

LABEL_240:
              v218 = 0;
            }

            else
            {
              v210 = 32 - __clz(~(-1 << -__clz(v209)));
              if ((v77 & 1) == 0)
              {
                goto LABEL_228;
              }

LABEL_239:
              v211 = 0;
              if (!v210)
              {
                goto LABEL_240;
              }

LABEL_229:
              v212 = 0;
              v213 = 0;
              v214 = v42 & v209;
              v215 = v210 != 0;
              v216 = v211 != 0;
              v217 = 1;
              do
              {
                --v210;
                if (v215)
                {
                  v213 |= (v217 & v214) << v212++;
                }

                else
                {
                  v210 = 0;
                }

                --v211;
                if (v216)
                {
                  v213 |= (v217 & v24 & ((v78 >> 4) - 1)) << v212++;
                }

                else
                {
                  v211 = 0;
                }

                v217 *= 2;
                --v212;
                v216 = v211 != 0;
                v215 = v210 != 0;
              }

              while (v211 | v210);
              v218 = v213 << 10;
              result = v247;
            }

            v61 = v218 + ((v46 / v74 + v242 / v78 * ((v74 + v220) / v74)) << 14);
            goto LABEL_56;
          }

          if (v235)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v234.i8[0];
            v58 = v234.i8[4];
            v59 = v235.i32[1];
            v60 = v235.i32[0];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v42) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v24) << v54++;
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
              v69 |= (v72 & v42) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v24) << v68++;
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
          v79 = (v239 + v61);
          if (v238)
          {
            memcpy(__dst, v79, sizeof(__dst));
            result = v247;
            v79 = __dst;
          }

          v80 = (v240 + v73);
          v81 = (v241 + 8 * (v48 - v44));
          if (v52 & 1 | (v51 < 0x10u) || v245 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = result;
            block[5] = v79;
            v255 = v51;
            v256 = v245;
            v251 = v233;
            v252 = v48 - v46;
            block[6] = v80;
            v249 = v81;
            v33 = a11;
            v250 = a11;
            v253 = v232;
            v254 = v50;
            if (v52)
            {
              dispatch_sync(*(*(result + 8) + 16552), block);
              result = v247;
              v44 = v244;
              goto LABEL_29;
            }

            v88 = *(result + 208);
            v89 = *(v88 + 52);
            v90 = *v80;
            v44 = v244;
            if (*v80)
            {
              if (v90 < 0xF0)
              {
                if (v90 == 7)
                {
                  v99 = vld1q_dup_f64(v79);
                  v258 = v99;
                  v259 = v99;
                  v260 = v99;
                  v261 = v99;
                  v266 = v99;
                  v267 = v99;
                  v268 = v99;
                  v269 = v99;
                  v274 = v99;
                  v275 = v99;
                  v276 = v99;
                  v277 = v99;
                  v282 = v99;
                  v283 = v99;
                  v91 = 8;
                  v284 = v99;
                  v285 = v99;
                }

                else
                {
                  v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v258, 128, v79, v90);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v258, 128, v79, v90, *(v88 + 52));
                v91 = 128;
              }
            }

            else
            {
              v91 = 0;
              v261 = 0u;
              v260 = 0u;
              v259 = 0u;
              v258 = 0u;
              v266 = 0u;
              v267 = 0u;
              v268 = 0u;
              v269 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v277 = 0u;
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
            }

            v176 = &v79[v91];
            v177 = v80[1];
            if (v80[1])
            {
              if (v177 < 0xF0)
              {
                if (v177 == 7)
                {
                  v179 = vld1q_dup_f64(v176);
                  v290 = v179;
                  v291 = v179;
                  v292 = v179;
                  v293 = v179;
                  v298 = v179;
                  v299 = v179;
                  v300 = v179;
                  v301 = v179;
                  v306 = v179;
                  v307 = v179;
                  v308 = v179;
                  v309 = v179;
                  v314 = v179;
                  v315 = v179;
                  v178 = 8;
                  v316 = v179;
                  v317 = v179;
                }

                else
                {
                  v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v290, 128, v176, v177);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v290, 128, v176, v177, v89);
                v178 = 128;
              }
            }

            else
            {
              v178 = 0;
              v292 = 0u;
              v293 = 0u;
              v290 = 0u;
              v291 = 0u;
              v298 = 0u;
              v299 = 0u;
              v300 = 0u;
              v301 = 0u;
              v306 = 0u;
              v307 = 0u;
              v308 = 0u;
              v309 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v317 = 0u;
            }

            v180 = (v176 + v178);
            v181 = v80[2];
            if (v80[2])
            {
              if (v181 < 0xF0)
              {
                if (v181 == 7)
                {
                  v183 = vld1q_dup_f64(v180);
                  v262 = v183;
                  v263 = v183;
                  v264 = v183;
                  v265 = v183;
                  v270 = v183;
                  v271 = v183;
                  v272 = v183;
                  v273 = v183;
                  v278 = v183;
                  v279 = v183;
                  v280 = v183;
                  v281 = v183;
                  v286 = v183;
                  v287 = v183;
                  v182 = 8;
                  v288 = v183;
                  v289 = v183;
                }

                else
                {
                  v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v262, 128, v180, v181);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v262, 128, v180, v181, v89);
                v182 = 128;
              }
            }

            else
            {
              v182 = 0;
              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v270 = 0u;
              v271 = 0u;
              v272 = 0u;
              v273 = 0u;
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
              v281 = 0u;
              v286 = 0u;
              v287 = 0u;
              v288 = 0u;
              v289 = 0u;
            }

            v184 = (v180 + v182);
            v185 = v80[3];
            if (v80[3])
            {
              if (v185 < 0xF0)
              {
                if (v185 == 7)
                {
                  v187 = vld1q_dup_f64(v184);
                  v294 = v187;
                  v295 = v187;
                  v296 = v187;
                  v297 = v187;
                  v302 = v187;
                  v303 = v187;
                  v304 = v187;
                  v305 = v187;
                  v310 = v187;
                  v311 = v187;
                  v312 = v187;
                  v313 = v187;
                  v318 = v187;
                  v319 = v187;
                  v186 = 8;
                  v320 = v187;
                  v321 = v187;
                }

                else
                {
                  v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v294, 128, v184, v185);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v294, 128, v184, v185, v89);
                v186 = 128;
              }
            }

            else
            {
              v186 = 0;
              v296 = 0u;
              v297 = 0u;
              v294 = 0u;
              v295 = 0u;
              v302 = 0u;
              v303 = 0u;
              v304 = 0u;
              v305 = 0u;
              v310 = 0u;
              v311 = 0u;
              v312 = 0u;
              v313 = 0u;
              v318 = 0u;
              v319 = 0u;
              v320 = 0u;
              v321 = 0u;
            }

            v188 = (v184 + v186);
            v189 = v80[4];
            if (v80[4])
            {
              if (v189 < 0xF0)
              {
                if (v189 == 7)
                {
                  v191 = vld1q_dup_f64(v188);
                  v322 = v191;
                  v323 = v191;
                  v324 = v191;
                  v325 = v191;
                  v330 = v191;
                  v331 = v191;
                  v332 = v191;
                  v333 = v191;
                  v338 = v191;
                  v339 = v191;
                  v340 = v191;
                  v341 = v191;
                  v346 = v191;
                  v347 = v191;
                  v348 = v191;
                  v190 = 8;
                  v349 = v191;
                }

                else
                {
                  v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v322, 128, v188, v189);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v322, 128, v188, v189, v89);
                v190 = 128;
              }
            }

            else
            {
              v190 = 0;
              v324 = 0u;
              v325 = 0u;
              v322 = 0u;
              v323 = 0u;
              v330 = 0u;
              v331 = 0u;
              v332 = 0u;
              v333 = 0u;
              v338 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v346 = 0u;
              v347 = 0u;
              v348 = 0u;
              v349 = 0u;
            }

            v192 = (v188 + v190);
            v193 = v80[5];
            if (v80[5])
            {
              if (v193 < 0xF0)
              {
                if (v193 == 7)
                {
                  v195 = vld1q_dup_f64(v192);
                  v354 = v195;
                  v355 = v195;
                  v356 = v195;
                  v357 = v195;
                  v362 = v195;
                  v363 = v195;
                  v364 = v195;
                  v365 = v195;
                  v370 = v195;
                  v371 = v195;
                  v372 = v195;
                  v373 = v195;
                  v378 = v195;
                  v379 = v195;
                  v380 = v195;
                  v194 = 8;
                  v381 = v195;
                }

                else
                {
                  v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v354, 128, v192, v193);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v354, 128, v192, v193, v89);
                v194 = 128;
              }
            }

            else
            {
              v194 = 0;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v362 = 0u;
              v363 = 0u;
              v364 = 0u;
              v365 = 0u;
              v370 = 0u;
              v371 = 0u;
              v372 = 0u;
              v373 = 0u;
              v378 = 0u;
              v379 = 0u;
              v380 = 0u;
              v381 = 0u;
            }

            v196 = (v192 + v194);
            v197 = v80[6];
            if (v80[6])
            {
              if (v197 < 0xF0)
              {
                if (v197 == 7)
                {
                  v200 = vld1q_dup_f64(v196);
                  v326 = v200;
                  v327 = v200;
                  v328 = v200;
                  v329 = v200;
                  v334 = v200;
                  v335 = v200;
                  v336 = v200;
                  v337 = v200;
                  v342 = v200;
                  v343 = v200;
                  v344 = v200;
                  v345 = v200;
                  v350 = v200;
                  v351 = v200;
                  v352 = v200;
                  v198 = 8;
                  v353 = v200;
                  v199 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }

                else
                {
                  v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v326, 128, v196, v197);
                  v199 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v326, 128, v196, v197, v89);
                v198 = 128;
                v199 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_200;
                }
              }

LABEL_195:
              v201 = (v196 + v198);
              if (v199 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v358, 128, v201, v199, v89);
                goto LABEL_201;
              }

              v45 = v42 + 1;
              if (v199 == 7)
              {
                v202 = vld1q_dup_f64(v201);
                v358 = v202;
                v359 = v202;
                v360 = v202;
                v361 = v202;
                v366 = v202;
                v367 = v202;
                v368 = v202;
                v369 = v202;
                v374 = v202;
                v375 = v202;
                v376 = v202;
                v377 = v202;
                v382 = v202;
                v383 = v202;
                v384 = v202;
                v385 = v202;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v358, 128, v201, v199);
              }

              result = v247;
            }

            else
            {
              v198 = 0;
              v328 = 0u;
              v329 = 0u;
              v326 = 0u;
              v327 = 0u;
              v334 = 0u;
              v335 = 0u;
              v336 = 0u;
              v337 = 0u;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              v345 = 0u;
              v350 = 0u;
              v351 = 0u;
              v352 = 0u;
              v353 = 0u;
              v199 = v80[7];
              if (v80[7])
              {
                goto LABEL_195;
              }

LABEL_200:
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v366 = 0u;
              v367 = 0u;
              v368 = 0u;
              v369 = 0u;
              v374 = 0u;
              v375 = 0u;
              v376 = 0u;
              v377 = 0u;
              v382 = 0u;
              v383 = 0u;
              v384 = 0u;
              v385 = 0u;
LABEL_201:
              result = v247;
              v45 = v42 + 1;
            }

            v203 = v253;
            if (v253)
            {
              v204 = 0;
              v205 = &v258 + 128 * v251 + 8 * v252;
              v206 = v254;
              do
              {
                if (v206)
                {
                  v207 = 0;
                  v208 = v249 + v250 * v204;
                  do
                  {
                    v208[v207] = v205[v207];
                    ++v207;
                    v206 = v254;
                  }

                  while (8 * v254 > v207);
                  v203 = v253;
                }

                ++v204;
                v205 += 128;
              }

              while (v204 < v203);
            }

            goto LABEL_30;
          }

          v82 = *(result + 208);
          v83 = *(v82 + 52);
          v84 = *v80;
          if (*v80)
          {
            v33 = a11;
            v86 = 3 * a11;
            v85 = 2 * a11;
            if (v84 < 0xF0)
            {
              if (v84 == 7)
              {
                v95 = vld1q_dup_f64(v79);
                *v81 = v95;
                v81[1] = v95;
                v81[2] = v95;
                v81[3] = v95;
                v96 = (v81 + a11);
                *v96 = v95;
                v96[1] = v95;
                v96[2] = v95;
                v96[3] = v95;
                v97 = (v81 + v227);
                *v97 = v95;
                v97[1] = v95;
                v97[2] = v95;
                v97[3] = v95;
                v98 = (v81 + v226);
                *v98 = v95;
                v98[1] = v95;
                v98[2] = v95;
                v98[3] = v95;
                v87 = 8;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81, a11, v79, v84);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v81, a11, v79, v84, *(v82 + 52));
              v87 = 128;
            }
          }

          else
          {
            v87 = 0;
            v81[2] = 0u;
            v81[3] = 0u;
            *v81 = 0u;
            v81[1] = 0u;
            v33 = a11;
            v92 = (v81->f64 + a11);
            v92[2] = 0u;
            v92[3] = 0u;
            *v92 = 0u;
            v92[1] = 0u;
            v86 = 3 * a11;
            v85 = 2 * a11;
            v93 = (v81->f64 + v227);
            v93[2] = 0u;
            v93[3] = 0u;
            *v93 = 0u;
            v93[1] = 0u;
            v94 = (v81->f64 + v226);
            v94[2] = 0u;
            v94[3] = 0u;
            *v94 = 0u;
            v94[1] = 0u;
          }

          v100 = &v79[v87];
          v101 = (v81 + v229);
          v102 = v80[1];
          if (v80[1])
          {
            if (v102 < 0xF0)
            {
              if (v102 == 7)
              {
                v107 = vld1q_dup_f64(v100);
                *v101 = v107;
                v101[1] = v107;
                v101[2] = v107;
                v101[3] = v107;
                v108 = (v101 + v33);
                *v108 = v107;
                v108[1] = v107;
                v108[2] = v107;
                v108[3] = v107;
                v109 = (v101 + v85);
                *v109 = v107;
                v109[1] = v107;
                v109[2] = v107;
                v109[3] = v107;
                v110 = (v101 + v86);
                *v110 = v107;
                v110[1] = v107;
                v110[2] = v107;
                v110[3] = v107;
                v103 = 8;
              }

              else
              {
                v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v81->f64 + v229), v33, v100, v102);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v229), v33, v100, v102, v83);
              v103 = 128;
            }
          }

          else
          {
            v103 = 0;
            v101[2] = 0u;
            v101[3] = 0u;
            *v101 = 0u;
            v101[1] = 0u;
            v104 = (v101->f64 + v33);
            v104[2] = 0u;
            v104[3] = 0u;
            *v104 = 0u;
            v104[1] = 0u;
            v105 = (v101->f64 + v85);
            v105[2] = 0u;
            v105[3] = 0u;
            *v105 = 0u;
            v105[1] = 0u;
            v106 = (v101->f64 + v86);
            v106[2] = 0u;
            v106[3] = 0u;
            *v106 = 0u;
            v106[1] = 0u;
          }

          v111 = (v100 + v103);
          v112 = &v81[4];
          v113 = v80[2];
          if (v80[2])
          {
            if (v113 < 0xF0)
            {
              if (v113 == 7)
              {
                v118 = vld1q_dup_f64(v111);
                v81[4] = v118;
                v81[5] = v118;
                v81[6] = v118;
                v81[7] = v118;
                v119 = (v112 + v33);
                *v119 = v118;
                v119[1] = v118;
                v119[2] = v118;
                v119[3] = v118;
                v120 = (v112 + v85);
                *v120 = v118;
                v120[1] = v118;
                v120[2] = v118;
                v120[3] = v118;
                v121 = (v112 + v86);
                *v121 = v118;
                v121[1] = v118;
                v114 = 8;
                v121[2] = v118;
                v121[3] = v118;
              }

              else
              {
                v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v112, v33, v111, v113, v83);
              v114 = 128;
            }
          }

          else
          {
            v114 = 0;
            v81[6] = 0u;
            v81[7] = 0u;
            *v112->i8 = 0u;
            v81[5] = 0u;
            v115 = (v112 + v33);
            v115[2] = 0u;
            v115[3] = 0u;
            *v115 = 0u;
            v115[1] = 0u;
            v116 = (v112 + v85);
            v116[2] = 0u;
            v116[3] = 0u;
            *v116 = 0u;
            v116[1] = 0u;
            v117 = (v112 + v86);
            v117[2] = 0u;
            v117[3] = 0u;
            *v117 = 0u;
            v117[1] = 0u;
          }

          v122 = (v111 + v114);
          v123 = &v101[4];
          v124 = v80[3];
          if (v80[3])
          {
            if (v124 < 0xF0)
            {
              if (v124 == 7)
              {
                v129 = vld1q_dup_f64(v122);
                v101[4] = v129;
                v101[5] = v129;
                v101[6] = v129;
                v101[7] = v129;
                v130 = (v123 + v33);
                *v130 = v129;
                v130[1] = v129;
                v130[2] = v129;
                v130[3] = v129;
                v131 = (v123 + v85);
                *v131 = v129;
                v131[1] = v129;
                v131[2] = v129;
                v131[3] = v129;
                v132 = (v123 + v86);
                *v132 = v129;
                v132[1] = v129;
                v125 = 8;
                v132[2] = v129;
                v132[3] = v129;
              }

              else
              {
                v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v33, v122, v124);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123, v33, v122, v124, v83);
              v125 = 128;
            }
          }

          else
          {
            v125 = 0;
            v101[6] = 0u;
            v101[7] = 0u;
            *v123->i8 = 0u;
            v101[5] = 0u;
            v126 = (v123 + v33);
            v126[2] = 0u;
            v126[3] = 0u;
            *v126 = 0u;
            v126[1] = 0u;
            v127 = (v123 + v85);
            v127[2] = 0u;
            v127[3] = 0u;
            *v127 = 0u;
            v127[1] = 0u;
            v128 = (v123 + v86);
            v128[2] = 0u;
            v128[3] = 0u;
            *v128 = 0u;
            v128[1] = 0u;
          }

          v133 = (v122 + v125);
          v134 = (v81 + v228);
          v135 = v80[4];
          if (v80[4])
          {
            if (v135 < 0xF0)
            {
              if (v135 == 7)
              {
                v140 = vld1q_dup_f64(v133);
                *v134 = v140;
                v134[1] = v140;
                v134[2] = v140;
                v134[3] = v140;
                v141 = (v134 + v33);
                *v141 = v140;
                v141[1] = v140;
                v141[2] = v140;
                v141[3] = v140;
                v142 = (v134 + v85);
                *v142 = v140;
                v142[1] = v140;
                v142[2] = v140;
                v142[3] = v140;
                v143 = (v134 + v86);
                *v143 = v140;
                v143[1] = v140;
                v143[2] = v140;
                v143[3] = v140;
                v136 = 8;
              }

              else
              {
                v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v81->f64[v228 / 8], v33, v133, v135);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v228), v33, v133, v135, v83);
              v136 = 128;
            }
          }

          else
          {
            v136 = 0;
            v134[2] = 0u;
            v134[3] = 0u;
            *v134 = 0u;
            v134[1] = 0u;
            v137 = (v134->f64 + v33);
            v137[2] = 0u;
            v137[3] = 0u;
            *v137 = 0u;
            v137[1] = 0u;
            v138 = (v134->f64 + v85);
            v138[2] = 0u;
            v138[3] = 0u;
            *v138 = 0u;
            v138[1] = 0u;
            v139 = (v134->f64 + v86);
            v139[2] = 0u;
            v139[3] = 0u;
            *v139 = 0u;
            v139[1] = 0u;
          }

          v144 = (v133 + v136);
          v145 = (v81 + 12 * a11);
          v146 = v80[5];
          if (v80[5])
          {
            if (v146 < 0xF0)
            {
              if (v146 == 7)
              {
                v151 = vld1q_dup_f64(v144);
                *v145->i8 = v151;
                *v145[2].i8 = v151;
                *v145[4].i8 = v151;
                *v145[6].i8 = v151;
                v152 = (v145 + v33);
                *v152 = v151;
                v152[1] = v151;
                v152[2] = v151;
                v152[3] = v151;
                v153 = (v145 + v85);
                *v153 = v151;
                v153[1] = v151;
                v153[2] = v151;
                v153[3] = v151;
                v154 = (v145 + v86);
                *v154 = v151;
                v154[1] = v151;
                v154[2] = v151;
                v154[3] = v151;
                v147 = 8;
              }

              else
              {
                v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v145, v33, v144, v146);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v145, v33, v144, v146, v83);
              v147 = 128;
            }
          }

          else
          {
            v147 = 0;
            *v145[4].i8 = 0u;
            *v145[6].i8 = 0u;
            *v145->i8 = 0u;
            *v145[2].i8 = 0u;
            v148 = (v145 + v33);
            v148[2] = 0u;
            v148[3] = 0u;
            *v148 = 0u;
            v148[1] = 0u;
            v149 = (v145 + v85);
            v149[2] = 0u;
            v149[3] = 0u;
            *v149 = 0u;
            v149[1] = 0u;
            v150 = (v145 + v86);
            v150[2] = 0u;
            v150[3] = 0u;
            *v150 = 0u;
            v150[1] = 0u;
          }

          v155 = (v144 + v147);
          v156 = &v134[4];
          v157 = v80[6];
          if (v80[6])
          {
            if (v157 < 0xF0)
            {
              if (v157 == 7)
              {
                v162 = vld1q_dup_f64(v155);
                v134[4] = v162;
                v134[5] = v162;
                v134[6] = v162;
                v134[7] = v162;
                v163 = (v156 + v33);
                *v163 = v162;
                v163[1] = v162;
                v163[2] = v162;
                v163[3] = v162;
                v164 = (v156 + v85);
                *v164 = v162;
                v164[1] = v162;
                v164[2] = v162;
                v164[3] = v162;
                v165 = (v156 + v86);
                *v165 = v162;
                v165[1] = v162;
                v158 = 8;
                v165[2] = v162;
                v165[3] = v162;
              }

              else
              {
                v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v156, v33, v155, v157);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v156, v33, v155, v157, v83);
              v158 = 128;
            }
          }

          else
          {
            v158 = 0;
            v134[6] = 0u;
            v134[7] = 0u;
            *v156->i8 = 0u;
            v134[5] = 0u;
            v159 = (v156 + v33);
            v159[2] = 0u;
            v159[3] = 0u;
            *v159 = 0u;
            v159[1] = 0u;
            v160 = (v156 + v85);
            v160[2] = 0u;
            v160[3] = 0u;
            *v160 = 0u;
            v160[1] = 0u;
            v161 = (v156 + v86);
            v161[2] = 0u;
            v161[3] = 0u;
            *v161 = 0u;
            v161[1] = 0u;
          }

          v166 = v145 + 8;
          v167 = v80[7];
          if (!v80[7])
          {
            *v145[12].i8 = 0u;
            *v145[14].i8 = 0u;
            *v166->i8 = 0u;
            *v145[10].i8 = 0u;
            v169 = (v166 + v33);
            v169[2] = 0u;
            v169[3] = 0u;
            *v169 = 0u;
            v169[1] = 0u;
            v170 = (v166 + v85);
            v170[2] = 0u;
            v170[3] = 0u;
            *v170 = 0u;
            v170[1] = 0u;
            v171 = (v166 + v86);
            v171[2] = 0u;
            v171[3] = 0u;
            *v171 = 0u;
            v171[1] = 0u;
LABEL_146:
            v44 = v244;
            result = v247;
LABEL_29:
            v45 = v42 + 1;
            goto LABEL_30;
          }

          v168 = (v155 + v158);
          if (v167 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v166, v33, v168, v167, v83);
            goto LABEL_146;
          }

          v45 = v42 + 1;
          if (v167 == 7)
          {
            v172 = vld1q_dup_f64(v168);
            *v145[8].i8 = v172;
            *v145[10].i8 = v172;
            *v145[12].i8 = v172;
            *v145[14].i8 = v172;
            v173 = (v166 + v33);
            *v173 = v172;
            v173[1] = v172;
            v173[2] = v172;
            v173[3] = v172;
            v174 = (v166 + v85);
            *v174 = v172;
            v174[1] = v172;
            v174[2] = v172;
            v174[3] = v172;
            v175 = (v166 + v86);
            *v175 = v172;
            v175[1] = v172;
            v175[2] = v172;
            v175[3] = v172;
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v166, v33, v168, v167);
          }

          v44 = v244;
          result = v247;
LABEL_30:
          v28 = v42 == v236 >> 4;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v225;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v130 = v15;
  v17 = v16;
  v19 = v18;
  v125 = v20;
  v126 = v21;
  v113 = v22;
  v23 = v12;
  v147[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v129 = v14;
  v24 = v14 >> 3;
  v112 = v14 + a10 - 1;
  v114 = v112 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v133 = v23;
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
  v124 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v123 = result;
  if (v24 <= v114)
  {
    v122 = v130 + a9 - 1;
    if (v130 >> 4 <= v122 >> 4)
    {
      result = v23;
      v132 = (v19 - 1) >> 4;
      v111 = (v17 - 1) >> 3;
      v108 = v19 - 1;
      v116 = (v19 - 1) & 0xF;
      v109 = ((v17 - 1) & 7) + 1;
      v110 = (v17 - 1) & 7;
      v115 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v120 = v34;
      v107 = 8 * v26 * v25;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v129)
        {
          v36 = v129;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v112 < v35)
        {
          v35 = v112;
        }

        v128 = 8 * v24;
        v119 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v110;
        v118 = v38;
        v40 = v38 != 8;
        v41 = v130 >> 4;
        v42 = v109;
        if (v24 != v111)
        {
          v42 = 8;
        }

        v131 = v42;
        if (v24 != v111)
        {
          v39 = v40;
        }

        v117 = v39;
        v127 = v113 + (v36 - v129) * a11;
        v43 = v130;
        do
        {
          v48 = 16 * v41;
          v49 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 16 * v41;
          }

          if (v122 < v49)
          {
            v49 = v130 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v132)
          {
            v53 = v116 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (v128 >= v129 && v48 >= v43)
          {
            v55 = v51 != v116;
            if (v41 != v132)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v117;
          }

          if (v123)
          {
            v76 = 0;
            v77 = v107 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 0;
                  v80 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 1;
                  v80 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v79 = 0;
                    v76 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 0;
                v80 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 0;
                v80 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 0;
              v80 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v79 = 0;
              v76 = 16;
              v80 = 16;
            }

            else
            {
              v79 = 1;
              v80 = 0;
              if (v77 == 1024)
              {
                v80 = 8;
                v76 = 16;
              }
            }

            v95 = (v76 >> 4) - 1;
            if (v78)
            {
              v96 = 0;
            }

            else
            {
              v96 = 32 - __clz(~(-1 << -__clz(v95)));
            }

            v97 = (v80 >> 3) - 1;
            if (v79)
            {
              v98 = 0;
              if (v96)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v98 = 32 - __clz(~(-1 << -__clz(v97)));
              if (v98 | v96)
              {
LABEL_114:
                v99 = 0;
                v100 = 0;
                v101 = v41 & v95;
                v102 = v24 & v97;
                v103 = v98 != 0;
                v104 = v96 != 0;
                v105 = 1;
                do
                {
                  --v98;
                  if (v103)
                  {
                    v100 |= (v105 & v102) << v99++;
                  }

                  else
                  {
                    v98 = 0;
                  }

                  --v96;
                  if (v104)
                  {
                    v100 |= (v105 & v101) << v99++;
                  }

                  else
                  {
                    v96 = 0;
                  }

                  v105 *= 2;
                  --v99;
                  v104 = v96 != 0;
                  v103 = v98 != 0;
                }

                while (v96 | v98);
                v106 = v100 << 10;
                result = v133;
                goto LABEL_126;
              }
            }

            v106 = 0;
LABEL_126:
            v63 = v106 + ((v48 / v76 + v128 / v80 * ((v76 + v108) / v76)) << 14);
            goto LABEL_56;
          }

          if (v121)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v60 = v120.i8[0];
            v59 = v120.i8[4];
            v61 = v121.i32[0];
            v62 = v121.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v24) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v41) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 10;
          }

          else
          {
            v63 = 0;
          }

LABEL_56:
          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 15;
          if (v65 < 0x20)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 4) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 7;
          if (v68 < 0x10)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 3) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v41) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v24) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v81 = (v125 + v63);
          if (v124)
          {
            v82 = v52;
            memcpy(__dst, (v125 + v63), sizeof(__dst));
            v52 = v82;
            result = v133;
            v81 = __dst;
          }

          v83 = (v126 + v75);
          v84 = v127 + 16 * (v50 - v43);
          if (!(v54 & 1 | (v53 < 0x10u)) && v131 > 7)
          {
            v44 = *(*(result + 208) + 52);
            v45 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84, a11, v81, *v83, v44)];
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84 + v115, a11, v45, v83[1], v44);
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84 + 128, a11, v46, v83[2], v44);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84 + v115 + 128, a11, v46 + v47, v83[3], v44);
LABEL_29:
            v43 = v130;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v141 = v53;
          v142 = v131;
          v137 = v119;
          v138 = v50 - v48;
          block[6] = v83;
          v135 = v84;
          v136 = a11;
          v139 = v118;
          v140 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v85 = *(*(result + 208) + 52);
          v86 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v144, 256, v81, *v83, v85)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v146, 256, v86, v83[1], v85);
          v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v145, 256, v87, v83[2], v85);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v147, 256, v87 + v88, v83[3], v85);
          v89 = v139;
          v43 = v130;
          if (v139)
          {
            v90 = 0;
            v91 = &v144[256 * v137 + 16 * v138];
            v92 = v140;
            do
            {
              if (v92)
              {
                v93 = 0;
                v94 = v135 + v136 * v90;
                do
                {
                  *(v94 + v93) = v91[v93];
                  ++v93;
                  v92 = v140;
                }

                while (16 * v140 > v93);
                v89 = v139;
              }

              ++v90;
              v91 += 256;
            }

            while (v90 < v89);
          }

LABEL_30:
          v28 = v41++ == v122 >> 4;
          result = v133;
        }

        while (!v28);
        v28 = v24++ == v114;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v286 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v222 = a8 + a10 - 1;
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
  v221 = v222 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v238 = v24;
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
      v237 = 0;
LABEL_32:
      v234 = v26 - 4;
      v225 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v219 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v237 = v31 >= v25;
    goto LABEL_32;
  }

  v237 = 0;
  v219 = 0;
  v225 = 0;
  v234 = 0;
LABEL_33:
  if (v18 <= v221)
  {
    v236 = a7 + a9 - 1;
    if (a7 >> 4 <= v236 >> 4)
    {
      v243 = v19 >> 4;
      v229 = v19 & 0xF;
      v235 = (v19 & 0xF) + 1;
      v217 = v20 & 0xF;
      v218 = v20 >> 4;
      v227 = a11;
      v228 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v34 = vcgt_u32(v33, 0x1F0000001FLL);
      *&v35 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *&v34);
      v224 = v35;
      v226 = v35 | DWORD1(v35);
      v223 = v34;
      v230 = a8;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v222 < v36)
        {
          v36 = v222;
        }

        v233 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v217;
        v232 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v217 + 1;
        if (v18 != v218)
        {
          v43 = 16;
        }

        v242 = v43;
        if (v18 == v218)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v231 = v44;
        v241 = a2 + (v37 - a8) * a11;
        do
        {
          v49 = 16 * v42;
          v50 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= a7)
          {
            v51 = a7;
          }

          else
          {
            v51 = 16 * v42;
          }

          if (v236 < v50)
          {
            v50 = a7 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v50 - v51 + 1;
          if (v42 == v243)
          {
            v54 = v235;
          }

          else
          {
            v54 = 16;
          }

          v55 = 1;
          if (16 * v18 >= a8 && v49 >= a7)
          {
            v56 = v52 != v229;
            if (v42 != v243)
            {
              v56 = v53 != 16;
            }

            v55 = v56 || v231;
          }

          if (v237)
          {
            if (v234 | v225)
            {
              v57 = 0;
              v58 = 0;
              v59 = v225 != 0;
              v60 = 1;
              v62 = v234 != 0;
              v61 = v225;
              v63 = v234;
              do
              {
                --v63;
                if (v62)
                {
                  v58 |= (v42 & ~(-1 << v234) & v60) << v57++;
                }

                else
                {
                  v63 = 0;
                }

                --v61;
                if (v59)
                {
                  v58 |= (v18 & ~(-1 << v225) & v60) << v57++;
                }

                else
                {
                  v61 = 0;
                }

                v60 *= 2;
                --v57;
                v59 = v61 != 0;
                v62 = v63 != 0;
              }

              while (v61 | v63);
              v64 = v58 << 8;
            }

            else
            {
              v64 = 0;
            }

            v72 = v64 + *(a1 + 336) * ((v42 >> v234) + (v18 >> v225) * v219);
          }

          else if (v226)
          {
            v65 = 0;
            v66 = 0;
            v67 = 1;
            v68 = v223;
            v69 = BYTE4(v223);
            v71 = v224;
            v70 = HIDWORD(v224);
            do
            {
              --v70;
              if (v69)
              {
                v66 |= (v67 & v42) << v65++;
              }

              else
              {
                v70 = 0;
              }

              --v71;
              if (v68)
              {
                v66 |= (v67 & v18) << v65++;
              }

              else
              {
                v71 = 0;
              }

              v67 *= 2;
              --v65;
              v68 = v71 != 0;
              v69 = v70 != 0;
            }

            while (v71 | v70);
            v72 = v66 << 8;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
          }

          v76 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 15;
          if (v77 < 0x20)
          {
            v78 = 0;
            if (!v75)
            {
LABEL_107:
              v84 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 4) - 1)));
            if (!(v78 | v75))
            {
              goto LABEL_107;
            }
          }

          v79 = 0;
          v80 = 0;
          v81 = v75 != 0;
          v82 = v78 != 0;
          v83 = 1;
          do
          {
            --v75;
            if (v81)
            {
              v80 |= (v83 & v42) << v79++;
            }

            else
            {
              v75 = 0;
            }

            --v78;
            if (v82)
            {
              v80 |= (v83 & v18) << v79++;
            }

            else
            {
              v78 = 0;
            }

            v83 *= 2;
            --v79;
            v82 = v78 != 0;
            v81 = v75 != 0;
          }

          while (v78 | v75);
          v84 = 8 * v80;
LABEL_108:
          v85 = (a3 + v72);
          if (v238)
          {
            v86 = v85[13];
            v253[12] = v85[12];
            v253[13] = v86;
            v87 = v85[15];
            v253[14] = v85[14];
            v253[15] = v87;
            v88 = v85[9];
            v253[8] = v85[8];
            v253[9] = v88;
            v89 = v85[11];
            v253[10] = v85[10];
            v253[11] = v89;
            v90 = v85[5];
            v253[4] = v85[4];
            v253[5] = v90;
            v91 = v85[7];
            v253[6] = v85[6];
            v253[7] = v91;
            v92 = v85[1];
            v253[0] = *v85;
            v253[1] = v92;
            v35 = v85[2];
            v34 = v85[3];
            v85 = v253;
            v253[2] = v35;
            v253[3] = v34;
          }

          v93 = (a4 + v84);
          v94 = (v241 + v51 - a7);
          if (v55 & 1 | (v54 < 0x10u) || v242 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v85;
            v251 = v54;
            v252 = v242;
            v247 = v233;
            v248 = v51 - v49;
            block[6] = a4 + v84;
            v245 = v241 + v51 - a7;
            v246 = a11;
            v249 = v232;
            v250 = v53;
            if (v55)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v158 = v42 + 1;
              goto LABEL_50;
            }

            v98 = *v93;
            if (v98 == 96)
            {
              *&v35 = vdup_lane_s8(*v85, 0);
              v254 = v35;
              v256 = v35;
              v258 = v35;
              v260 = v35;
              v99 = 1;
            }

            else if (v98 == 31)
            {
              v159 = *(v85 + 8);
              v160 = v85[1];
              v161 = *(v85 + 24);
              v162 = vuzp2_s16(*v85, v160);
              v254 = vuzp1_s16(*v85, v160);
              v256 = v162;
              *&v35 = vuzp1_s16(v159, v161);
              *&v34 = vuzp2_s16(v159, v161);
              v258 = v35;
              v260 = v34;
              v99 = 32;
            }

            else if (*v93)
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 16, v85, v98, *&v35, *&v34);
            }

            else
            {
              v99 = 0;
              v254 = 0;
              v256 = 0;
              v258 = 0;
              v260 = 0;
            }

            v163 = (v85 + v99);
            v164 = v93[1];
            if (v164 == 96)
            {
              *&v35 = vdup_lane_s8(*v163, 0);
              v262 = v35;
              v264 = v35;
              v266 = v35;
              v268 = v35;
              v165 = 1;
            }

            else if (v164 == 31)
            {
              v166 = v163[1];
              v167 = v163[2];
              v168 = v163[3];
              v169 = vuzp2_s16(*v163, v167);
              v262 = vuzp1_s16(*v163, v167);
              v264 = v169;
              *&v35 = vuzp1_s16(v166, v168);
              *&v34 = vuzp2_s16(v166, v168);
              v266 = v35;
              v268 = v34;
              v165 = 32;
            }

            else if (v93[1])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 16, v163, v164, *&v35, *&v34);
            }

            else
            {
              v165 = 0;
              v262 = 0;
              v264 = 0;
              v266 = 0;
              v268 = 0;
            }

            v170 = (v163 + v165);
            v171 = v93[2];
            if (v171 == 96)
            {
              *&v35 = vdup_lane_s8(*v170, 0);
              v255 = v35;
              v257 = v35;
              v259 = v35;
              v261 = v35;
              v172 = 1;
            }

            else if (v171 == 31)
            {
              v173 = v170[1];
              v174 = v170[2];
              v175 = v170[3];
              v176 = vuzp2_s16(*v170, v174);
              v255 = vuzp1_s16(*v170, v174);
              v257 = v176;
              *&v35 = vuzp1_s16(v173, v175);
              *&v34 = vuzp2_s16(v173, v175);
              v259 = v35;
              v261 = v34;
              v172 = 32;
            }

            else if (v93[2])
            {
              v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 16, v170, v171, *&v35, *&v34);
            }

            else
            {
              v172 = 0;
              v255 = 0;
              v257 = 0;
              v259 = 0;
              v261 = 0;
            }

            v177 = (v170 + v172);
            v178 = v93[3];
            if (v178 == 96)
            {
              *&v35 = vdup_lane_s8(*v177, 0);
              v263 = v35;
              v265 = v35;
              v267 = v35;
              v269 = v35;
              v179 = 1;
            }

            else if (v178 == 31)
            {
              v180 = v177[1];
              v181 = v177[2];
              v182 = v177[3];
              v183 = vuzp2_s16(*v177, v181);
              v263 = vuzp1_s16(*v177, v181);
              v265 = v183;
              *&v35 = vuzp1_s16(v180, v182);
              *&v34 = vuzp2_s16(v180, v182);
              v267 = v35;
              v269 = v34;
              v179 = 32;
            }

            else if (v93[3])
            {
              v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 16, v177, v178, *&v35, *&v34);
            }

            else
            {
              v179 = 0;
              v263 = 0;
              v265 = 0;
              v267 = 0;
              v269 = 0;
            }

            v184 = (v177 + v179);
            v185 = v93[4];
            if (v185 == 96)
            {
              *&v35 = vdup_lane_s8(*v184, 0);
              v270 = v35;
              v272 = v35;
              v274 = v35;
              v276 = v35;
              v186 = 1;
            }

            else if (v185 == 31)
            {
              v187 = v184[1];
              v188 = v184[2];
              v189 = v184[3];
              v190 = vuzp2_s16(*v184, v188);
              v270 = vuzp1_s16(*v184, v188);
              v272 = v190;
              *&v35 = vuzp1_s16(v187, v189);
              *&v34 = vuzp2_s16(v187, v189);
              v274 = v35;
              v276 = v34;
              v186 = 32;
            }

            else if (v93[4])
            {
              v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 16, v184, v185, *&v35, *&v34);
            }

            else
            {
              v186 = 0;
              v270 = 0;
              v272 = 0;
              v274 = 0;
              v276 = 0;
            }

            v191 = (v184 + v186);
            v192 = v93[5];
            if (v192 == 96)
            {
              *&v35 = vdup_lane_s8(*v191, 0);
              v278 = v35;
              v280 = v35;
              v282 = v35;
              v284 = v35;
              v193 = 1;
            }

            else if (v192 == 31)
            {
              v194 = v191[1];
              v195 = v191[2];
              v196 = v191[3];
              v197 = vuzp2_s16(*v191, v195);
              v278 = vuzp1_s16(*v191, v195);
              v280 = v197;
              *&v35 = vuzp1_s16(v194, v196);
              *&v34 = vuzp2_s16(v194, v196);
              v282 = v35;
              v284 = v34;
              v193 = 32;
            }

            else if (v93[5])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 16, v191, v192, *&v35, *&v34);
            }

            else
            {
              v193 = 0;
              v278 = 0;
              v280 = 0;
              v282 = 0;
              v284 = 0;
            }

            v198 = (v191 + v193);
            v199 = v93[6];
            if (v199 == 96)
            {
              *&v35 = vdup_lane_s8(*v198, 0);
              v271 = v35;
              v273 = v35;
              v275 = v35;
              v277 = v35;
              v200 = 1;
            }

            else if (v199 == 31)
            {
              v201 = v198[1];
              v202 = v198[2];
              v203 = v198[3];
              v204 = vuzp2_s16(*v198, v202);
              v271 = vuzp1_s16(*v198, v202);
              v273 = v204;
              *&v35 = vuzp1_s16(v201, v203);
              *&v34 = vuzp2_s16(v201, v203);
              v275 = v35;
              v277 = v34;
              v200 = 32;
            }

            else if (v93[6])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 16, v198, v199, *&v35, *&v34);
            }

            else
            {
              v200 = 0;
              v271 = 0;
              v273 = 0;
              v275 = 0;
              v277 = 0;
            }

            v205 = (v198 + v200);
            v206 = v93[7];
            if (v206 == 96)
            {
              *&v35 = vdup_lane_s8(*v205, 0);
              v279 = v35;
              v281 = v35;
              v283 = v35;
              v285 = v35;
              v158 = v42 + 1;
              v207 = v249;
              if (!v249)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v158 = v42 + 1;
              if (v206 == 31)
              {
                v208 = v205[1];
                v209 = v205[2];
                v210 = v205[3];
                v211 = vuzp2_s16(*v205, v209);
                v279 = vuzp1_s16(*v205, v209);
                v281 = v211;
                *&v35 = vuzp1_s16(v208, v210);
                *&v34 = vuzp2_s16(v208, v210);
                v283 = v35;
                v285 = v34;
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }

              else if (v206)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 16, v205, v206, *&v35, *&v34);
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v279 = 0;
                v281 = 0;
                v283 = 0;
                v285 = 0;
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }
            }

            if (v250)
            {
              v212 = 0;
              v213 = &v254 + 16 * v247 + v248;
              v214 = 1;
              do
              {
                if (v214)
                {
                  v215 = 0;
                  v216 = v245 + v246 * v212;
                  do
                  {
                    *(v216 + v215) = v213[v215];
                    v214 = v250;
                    ++v215;
                  }

                  while (v250 > v215);
                  v207 = v249;
                }

                ++v212;
                v213 += 16;
              }

              while (v212 < v207);
            }
          }

          else
          {
            v95 = *v93;
            if (v95 == 96)
            {
              *&v35 = vdup_lane_s8(*v85, 0);
              *v94 = v35;
              *(v94 + a11) = v35;
              v96 = 2 * a11;
              *(v94 + 2 * a11) = v35;
              *(v94 + 3 * a11) = v35;
              v97 = 1;
            }

            else
            {
              v96 = 2 * a11;
              if (v95 == 31)
              {
                v100 = *v85;
                *&v34 = *(v85 + 1);
                v101 = v85[1];
                v102 = *(v85 + 24);
                *v94 = vuzp1_s16(*v85, v101);
                *(v94 + a11) = vuzp2_s16(v100, v101);
                v103 = (v94 + 2 * a11);
                *v103 = vuzp1_s16(*&v34, v102);
                *&v35 = vuzp2_s16(*&v34, v102);
                *(v103 + a11) = v35;
                v97 = 32;
              }

              else if (*v93)
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v241 + v51 - a7), a11, v85, v95, *&v35, *&v34);
                v96 = 2 * a11;
              }

              else
              {
                v97 = 0;
                *v94 = 0;
                *(v94 + a11) = 0;
                *(v94 + 2 * a11) = 0;
                *(v94 + 3 * a11) = 0;
              }
            }

            v104 = (v85 + v97);
            v105 = (v94 + v228);
            v106 = v93[1];
            if (v106 == 96)
            {
              *&v35 = vdup_lane_s8(*v104, 0);
              *v105 = v35;
              *(v105 + a11) = v35;
              *(v105 + v96) = v35;
              *(v105 + 3 * a11) = v35;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v108 = *v104;
              *&v34 = v104[1];
              v109 = v104[2];
              v110 = v104[3];
              *v105 = vuzp1_s16(*v104, v109);
              *(v105 + a11) = vuzp2_s16(v108, v109);
              v111 = (v105 + v96);
              *v111 = vuzp1_s16(*&v34, v110);
              *&v35 = vuzp2_s16(*&v34, v110);
              *(v111 + a11) = v35;
              v107 = 32;
            }

            else if (v93[1])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v94 + v228), a11, v104, v106, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v107 = 0;
              *v105 = 0;
              *(v105 + a11) = 0;
              *(v105 + v96) = 0;
              *(v105 + 3 * a11) = 0;
            }

            v112 = (v104 + v107);
            v113 = v94 + 1;
            v114 = v93[2];
            if (v114 == 96)
            {
              *&v35 = vdup_lane_s8(*v112, 0);
              *v113 = v35;
              *(v113 + a11) = v35;
              *(v113 + v96) = v35;
              *(v113 + 3 * a11) = v35;
              v115 = 1;
            }

            else if (v114 == 31)
            {
              v116 = *v112;
              *&v34 = v112[1];
              v117 = v112[2];
              v118 = v112[3];
              *v113 = vuzp1_s16(*v112, v117);
              *(v113 + a11) = vuzp2_s16(v116, v117);
              v119 = (v113 + v96);
              *v119 = vuzp1_s16(*&v34, v118);
              *&v35 = vuzp2_s16(*&v34, v118);
              *(v119 + a11) = v35;
              v115 = 32;
            }

            else if (v93[2])
            {
              v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, a11, v112, v114, *&v35, *&v34);
              v96 = 2 * a11;
              v115 = v120;
            }

            else
            {
              v115 = 0;
              *v113 = 0;
              *(v113 + a11) = 0;
              *(v113 + v96) = 0;
              *(v113 + 3 * a11) = 0;
            }

            v121 = (v112 + v115);
            v122 = v105 + 1;
            v123 = v93[3];
            if (v123 == 96)
            {
              *&v35 = vdup_lane_s8(*v121, 0);
              *v122 = v35;
              *(v122 + a11) = v35;
              *(v122 + v96) = v35;
              *(v122 + 3 * a11) = v35;
              v124 = 1;
            }

            else if (v123 == 31)
            {
              v125 = *v121;
              *&v34 = v121[1];
              v126 = v121[2];
              v127 = v121[3];
              *v122 = vuzp1_s16(*v121, v126);
              *(v122 + a11) = vuzp2_s16(v125, v126);
              v128 = (v122 + v96);
              *v128 = vuzp1_s16(*&v34, v127);
              *&v35 = vuzp2_s16(*&v34, v127);
              *(v128 + a11) = v35;
              v124 = 32;
            }

            else if (v93[3])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, a11, v121, v123, *&v35, *&v34);
              v96 = 2 * a11;
              v124 = v129;
            }

            else
            {
              v124 = 0;
              *v122 = 0;
              *(v122 + a11) = 0;
              *(v122 + v96) = 0;
              *(v122 + 3 * a11) = 0;
            }

            v130 = (v121 + v124);
            v131 = &v94[v227];
            v132 = v93[4];
            if (v132 == 96)
            {
              *&v35 = vdup_lane_s8(*v130, 0);
              *v131 = v35;
              *(v131 + a11) = v35;
              *(v131 + v96) = v35;
              *(v131 + 3 * a11) = v35;
              v133 = 1;
            }

            else if (v132 == 31)
            {
              v134 = *v130;
              *&v34 = v130[1];
              v135 = v130[2];
              v136 = v130[3];
              *v131 = vuzp1_s16(*v130, v135);
              *(v131 + a11) = vuzp2_s16(v134, v135);
              v137 = (v131 + v96);
              *v137 = vuzp1_s16(*&v34, v136);
              *&v35 = vuzp2_s16(*&v34, v136);
              *(v137 + a11) = v35;
              v133 = 32;
            }

            else if (v93[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v94[v227], a11, v130, v132, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v133 = 0;
              *v131 = 0;
              *(v131 + a11) = 0;
              *(v131 + v96) = 0;
              *(v131 + 3 * a11) = 0;
            }

            v138 = (v130 + v133);
            v139 = (v94 + 12 * a11);
            v140 = v93[5];
            if (v140 == 96)
            {
              *&v35 = vdup_lane_s8(*v138, 0);
              *v139 = v35;
              *(v139 + a11) = v35;
              *(v139 + v96) = v35;
              *(v139 + 3 * a11) = v35;
              v141 = 1;
            }

            else if (v140 == 31)
            {
              v142 = *v138;
              *&v34 = v138[1];
              v143 = v138[2];
              v144 = v138[3];
              *v139 = vuzp1_s16(*v138, v143);
              *(v139 + a11) = vuzp2_s16(v142, v143);
              v145 = (v139 + v96);
              *v145 = vuzp1_s16(*&v34, v144);
              *&v35 = vuzp2_s16(*&v34, v144);
              *(v145 + a11) = v35;
              v141 = 32;
            }

            else if (v93[5])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, a11, v138, v140, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v141 = 0;
              *v139 = 0;
              *(v139 + a11) = 0;
              *(v139 + v96) = 0;
              *(v139 + 3 * a11) = 0;
            }

            v146 = (v138 + v141);
            v147 = v131 + 1;
            v148 = v93[6];
            if (v148 == 96)
            {
              *&v35 = vdup_lane_s8(*v146, 0);
              *v147 = v35;
              *(v147 + a11) = v35;
              *(v147 + v96) = v35;
              *(v147 + 3 * a11) = v35;
              v149 = 1;
            }

            else if (v148 == 31)
            {
              v150 = *v146;
              *&v34 = v146[1];
              v151 = v146[2];
              v152 = v146[3];
              *v147 = vuzp1_s16(*v146, v151);
              *(v147 + a11) = vuzp2_s16(v150, v151);
              v153 = (v147 + v96);
              *v153 = vuzp1_s16(*&v34, v152);
              *&v35 = vuzp2_s16(*&v34, v152);
              *(v153 + a11) = v35;
              v149 = 32;
            }

            else if (v93[6])
            {
              v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, a11, v146, v148, *&v35, *&v34);
              v96 = 2 * a11;
              v149 = v154;
            }

            else
            {
              v149 = 0;
              *v147 = 0;
              *(v147 + a11) = 0;
              *(v147 + v96) = 0;
              *(v147 + 3 * a11) = 0;
            }

            v155 = (v146 + v149);
            v156 = v139 + 1;
            v157 = v93[7];
            if (v157 == 96)
            {
              *&v35 = vdup_lane_s8(*v155, 0);
              *v156 = v35;
              *(v156 + a11) = v35;
              *(v156 + v96) = v35;
              *(v156 + 3 * a11) = v35;
              a8 = v230;
              goto LABEL_172;
            }

            a8 = v230;
            v158 = v42 + 1;
            if (v157 == 31)
            {
              v45 = *v155;
              *&v34 = v155[1];
              v46 = v155[2];
              v47 = v155[3];
              *v156 = vuzp1_s16(*v155, v46);
              *(v156 + a11) = vuzp2_s16(v45, v46);
              v48 = (v156 + v96);
              *v48 = vuzp1_s16(*&v34, v47);
              *&v35 = vuzp2_s16(*&v34, v47);
              *(v48 + a11) = v35;
            }

            else if (v157)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, a11, v155, v157, *&v35, *&v34);
            }

            else
            {
              *v156 = 0;
              *(v156 + a11) = 0;
              *(v156 + v96) = 0;
              *(v156 + 3 * a11) = 0;
            }
          }

LABEL_50:
          v21 = v42 == v236 >> 4;
          v42 = v158;
        }

        while (!v21);
        v21 = v18++ == v221;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v286 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v222 = a8 + a10 - 1;
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
  v221 = v222 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v238 = v24;
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
      v237 = 0;
LABEL_32:
      v234 = v26 - 4;
      v225 = v25 - 4;
      v32 = -1 << *(*(a1 + 208) + 48);
      v219 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v237 = v31 >= v25;
    goto LABEL_32;
  }

  v237 = 0;
  v219 = 0;
  v225 = 0;
  v234 = 0;
LABEL_33:
  if (v18 <= v221)
  {
    v236 = a7 + a9 - 1;
    if (a7 >> 4 <= v236 >> 4)
    {
      v243 = v19 >> 4;
      v229 = v19 & 0xF;
      v235 = (v19 & 0xF) + 1;
      v217 = v20 & 0xF;
      v218 = v20 >> 4;
      v227 = a11;
      v228 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v34 = vcgt_u32(v33, 0x1F0000001FLL);
      *&v35 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *&v34);
      v224 = v35;
      v226 = v35 | DWORD1(v35);
      v223 = v34;
      v230 = a8;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v222 < v36)
        {
          v36 = v222;
        }

        v233 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v217;
        v232 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v217 + 1;
        if (v18 != v218)
        {
          v43 = 16;
        }

        v242 = v43;
        if (v18 == v218)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v231 = v44;
        v241 = a2 + (v37 - a8) * a11;
        do
        {
          v49 = 16 * v42;
          v50 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= a7)
          {
            v51 = a7;
          }

          else
          {
            v51 = 16 * v42;
          }

          if (v236 < v50)
          {
            v50 = a7 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v50 - v51 + 1;
          if (v42 == v243)
          {
            v54 = v235;
          }

          else
          {
            v54 = 16;
          }

          v55 = 1;
          if (16 * v18 >= a8 && v49 >= a7)
          {
            v56 = v52 != v229;
            if (v42 != v243)
            {
              v56 = v53 != 16;
            }

            v55 = v56 || v231;
          }

          if (v237)
          {
            if (v234 | v225)
            {
              v57 = 0;
              v58 = 0;
              v59 = v225 != 0;
              v60 = 1;
              v62 = v234 != 0;
              v61 = v225;
              v63 = v234;
              do
              {
                --v63;
                if (v62)
                {
                  v58 |= (v42 & ~(-1 << v234) & v60) << v57++;
                }

                else
                {
                  v63 = 0;
                }

                --v61;
                if (v59)
                {
                  v58 |= (v18 & ~(-1 << v225) & v60) << v57++;
                }

                else
                {
                  v61 = 0;
                }

                v60 *= 2;
                --v57;
                v59 = v61 != 0;
                v62 = v63 != 0;
              }

              while (v61 | v63);
              v64 = v58 << 8;
            }

            else
            {
              v64 = 0;
            }

            v72 = v64 + *(a1 + 336) * ((v42 >> v234) + (v18 >> v225) * v219);
          }

          else if (v226)
          {
            v65 = 0;
            v66 = 0;
            v67 = 1;
            v68 = v223;
            v69 = BYTE4(v223);
            v71 = v224;
            v70 = HIDWORD(v224);
            do
            {
              --v70;
              if (v69)
              {
                v66 |= (v67 & v42) << v65++;
              }

              else
              {
                v70 = 0;
              }

              --v71;
              if (v68)
              {
                v66 |= (v67 & v18) << v65++;
              }

              else
              {
                v71 = 0;
              }

              v67 *= 2;
              --v65;
              v68 = v71 != 0;
              v69 = v70 != 0;
            }

            while (v71 | v70);
            v72 = v66 << 8;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
          }

          v76 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 15;
          if (v77 < 0x20)
          {
            v78 = 0;
            if (!v75)
            {
LABEL_107:
              v84 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 4) - 1)));
            if (!(v78 | v75))
            {
              goto LABEL_107;
            }
          }

          v79 = 0;
          v80 = 0;
          v81 = v75 != 0;
          v82 = v78 != 0;
          v83 = 1;
          do
          {
            --v75;
            if (v81)
            {
              v80 |= (v83 & v42) << v79++;
            }

            else
            {
              v75 = 0;
            }

            --v78;
            if (v82)
            {
              v80 |= (v83 & v18) << v79++;
            }

            else
            {
              v78 = 0;
            }

            v83 *= 2;
            --v79;
            v82 = v78 != 0;
            v81 = v75 != 0;
          }

          while (v78 | v75);
          v84 = 8 * v80;
LABEL_108:
          v85 = (a3 + v72);
          if (v238)
          {
            v86 = v85[13];
            v253[12] = v85[12];
            v253[13] = v86;
            v87 = v85[15];
            v253[14] = v85[14];
            v253[15] = v87;
            v88 = v85[9];
            v253[8] = v85[8];
            v253[9] = v88;
            v89 = v85[11];
            v253[10] = v85[10];
            v253[11] = v89;
            v90 = v85[5];
            v253[4] = v85[4];
            v253[5] = v90;
            v91 = v85[7];
            v253[6] = v85[6];
            v253[7] = v91;
            v92 = v85[1];
            v253[0] = *v85;
            v253[1] = v92;
            v35 = v85[2];
            v34 = v85[3];
            v85 = v253;
            v253[2] = v35;
            v253[3] = v34;
          }

          v93 = (a4 + v84);
          v94 = (v241 + v51 - a7);
          if (v55 & 1 | (v54 < 0x10u) || v242 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v85;
            v251 = v54;
            v252 = v242;
            v247 = v233;
            v248 = v51 - v49;
            block[6] = a4 + v84;
            v245 = v241 + v51 - a7;
            v246 = a11;
            v249 = v232;
            v250 = v53;
            if (v55)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v158 = v42 + 1;
              goto LABEL_50;
            }

            v98 = *v93;
            if (v98 == 96)
            {
              *&v35 = vdup_lane_s8(*v85, 0);
              v254 = v35;
              v256 = v35;
              v258 = v35;
              v260 = v35;
              v99 = 1;
            }

            else if (v98 == 31)
            {
              v159 = *(v85 + 8);
              v160 = v85[1];
              v161 = *(v85 + 24);
              v162 = vuzp2_s16(*v85, v160);
              v254 = vuzp1_s16(*v85, v160);
              v256 = v162;
              *&v35 = vuzp1_s16(v159, v161);
              *&v34 = vuzp2_s16(v159, v161);
              v258 = v35;
              v260 = v34;
              v99 = 32;
            }

            else if (*v93)
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 16, v85, v98, *&v35, *&v34);
            }

            else
            {
              v99 = 0;
              v254 = 0;
              v256 = 0;
              v258 = 0;
              v260 = 0;
            }

            v163 = (v85 + v99);
            v164 = v93[1];
            if (v164 == 96)
            {
              *&v35 = vdup_lane_s8(*v163, 0);
              v262 = v35;
              v264 = v35;
              v266 = v35;
              v268 = v35;
              v165 = 1;
            }

            else if (v164 == 31)
            {
              v166 = v163[1];
              v167 = v163[2];
              v168 = v163[3];
              v169 = vuzp2_s16(*v163, v167);
              v262 = vuzp1_s16(*v163, v167);
              v264 = v169;
              *&v35 = vuzp1_s16(v166, v168);
              *&v34 = vuzp2_s16(v166, v168);
              v266 = v35;
              v268 = v34;
              v165 = 32;
            }

            else if (v93[1])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 16, v163, v164, *&v35, *&v34);
            }

            else
            {
              v165 = 0;
              v262 = 0;
              v264 = 0;
              v266 = 0;
              v268 = 0;
            }

            v170 = (v163 + v165);
            v171 = v93[2];
            if (v171 == 96)
            {
              *&v35 = vdup_lane_s8(*v170, 0);
              v255 = v35;
              v257 = v35;
              v259 = v35;
              v261 = v35;
              v172 = 1;
            }

            else if (v171 == 31)
            {
              v173 = v170[1];
              v174 = v170[2];
              v175 = v170[3];
              v176 = vuzp2_s16(*v170, v174);
              v255 = vuzp1_s16(*v170, v174);
              v257 = v176;
              *&v35 = vuzp1_s16(v173, v175);
              *&v34 = vuzp2_s16(v173, v175);
              v259 = v35;
              v261 = v34;
              v172 = 32;
            }

            else if (v93[2])
            {
              v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 16, v170, v171, *&v35, *&v34);
            }

            else
            {
              v172 = 0;
              v255 = 0;
              v257 = 0;
              v259 = 0;
              v261 = 0;
            }

            v177 = (v170 + v172);
            v178 = v93[3];
            if (v178 == 96)
            {
              *&v35 = vdup_lane_s8(*v177, 0);
              v263 = v35;
              v265 = v35;
              v267 = v35;
              v269 = v35;
              v179 = 1;
            }

            else if (v178 == 31)
            {
              v180 = v177[1];
              v181 = v177[2];
              v182 = v177[3];
              v183 = vuzp2_s16(*v177, v181);
              v263 = vuzp1_s16(*v177, v181);
              v265 = v183;
              *&v35 = vuzp1_s16(v180, v182);
              *&v34 = vuzp2_s16(v180, v182);
              v267 = v35;
              v269 = v34;
              v179 = 32;
            }

            else if (v93[3])
            {
              v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 16, v177, v178, *&v35, *&v34);
            }

            else
            {
              v179 = 0;
              v263 = 0;
              v265 = 0;
              v267 = 0;
              v269 = 0;
            }

            v184 = (v177 + v179);
            v185 = v93[4];
            if (v185 == 96)
            {
              *&v35 = vdup_lane_s8(*v184, 0);
              v270 = v35;
              v272 = v35;
              v274 = v35;
              v276 = v35;
              v186 = 1;
            }

            else if (v185 == 31)
            {
              v187 = v184[1];
              v188 = v184[2];
              v189 = v184[3];
              v190 = vuzp2_s16(*v184, v188);
              v270 = vuzp1_s16(*v184, v188);
              v272 = v190;
              *&v35 = vuzp1_s16(v187, v189);
              *&v34 = vuzp2_s16(v187, v189);
              v274 = v35;
              v276 = v34;
              v186 = 32;
            }

            else if (v93[4])
            {
              v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 16, v184, v185, *&v35, *&v34);
            }

            else
            {
              v186 = 0;
              v270 = 0;
              v272 = 0;
              v274 = 0;
              v276 = 0;
            }

            v191 = (v184 + v186);
            v192 = v93[5];
            if (v192 == 96)
            {
              *&v35 = vdup_lane_s8(*v191, 0);
              v278 = v35;
              v280 = v35;
              v282 = v35;
              v284 = v35;
              v193 = 1;
            }

            else if (v192 == 31)
            {
              v194 = v191[1];
              v195 = v191[2];
              v196 = v191[3];
              v197 = vuzp2_s16(*v191, v195);
              v278 = vuzp1_s16(*v191, v195);
              v280 = v197;
              *&v35 = vuzp1_s16(v194, v196);
              *&v34 = vuzp2_s16(v194, v196);
              v282 = v35;
              v284 = v34;
              v193 = 32;
            }

            else if (v93[5])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 16, v191, v192, *&v35, *&v34);
            }

            else
            {
              v193 = 0;
              v278 = 0;
              v280 = 0;
              v282 = 0;
              v284 = 0;
            }

            v198 = (v191 + v193);
            v199 = v93[6];
            if (v199 == 96)
            {
              *&v35 = vdup_lane_s8(*v198, 0);
              v271 = v35;
              v273 = v35;
              v275 = v35;
              v277 = v35;
              v200 = 1;
            }

            else if (v199 == 31)
            {
              v201 = v198[1];
              v202 = v198[2];
              v203 = v198[3];
              v204 = vuzp2_s16(*v198, v202);
              v271 = vuzp1_s16(*v198, v202);
              v273 = v204;
              *&v35 = vuzp1_s16(v201, v203);
              *&v34 = vuzp2_s16(v201, v203);
              v275 = v35;
              v277 = v34;
              v200 = 32;
            }

            else if (v93[6])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 16, v198, v199, *&v35, *&v34);
            }

            else
            {
              v200 = 0;
              v271 = 0;
              v273 = 0;
              v275 = 0;
              v277 = 0;
            }

            v205 = (v198 + v200);
            v206 = v93[7];
            if (v206 == 96)
            {
              *&v35 = vdup_lane_s8(*v205, 0);
              v279 = v35;
              v281 = v35;
              v283 = v35;
              v285 = v35;
              v158 = v42 + 1;
              v207 = v249;
              if (!v249)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v158 = v42 + 1;
              if (v206 == 31)
              {
                v208 = v205[1];
                v209 = v205[2];
                v210 = v205[3];
                v211 = vuzp2_s16(*v205, v209);
                v279 = vuzp1_s16(*v205, v209);
                v281 = v211;
                *&v35 = vuzp1_s16(v208, v210);
                *&v34 = vuzp2_s16(v208, v210);
                v283 = v35;
                v285 = v34;
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }

              else if (v206)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 16, v205, v206, *&v35, *&v34);
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v279 = 0;
                v281 = 0;
                v283 = 0;
                v285 = 0;
                v207 = v249;
                if (!v249)
                {
                  goto LABEL_50;
                }
              }
            }

            if (v250)
            {
              v212 = 0;
              v213 = &v254 + 16 * v247 + v248;
              v214 = 1;
              do
              {
                if (v214)
                {
                  v215 = 0;
                  v216 = v245 + v246 * v212;
                  do
                  {
                    *(v216 + v215) = v213[v215];
                    v214 = v250;
                    ++v215;
                  }

                  while (v250 > v215);
                  v207 = v249;
                }

                ++v212;
                v213 += 16;
              }

              while (v212 < v207);
            }
          }

          else
          {
            v95 = *v93;
            if (v95 == 96)
            {
              *&v35 = vdup_lane_s8(*v85, 0);
              *v94 = v35;
              *(v94 + a11) = v35;
              v96 = 2 * a11;
              *(v94 + 2 * a11) = v35;
              *(v94 + 3 * a11) = v35;
              v97 = 1;
            }

            else
            {
              v96 = 2 * a11;
              if (v95 == 31)
              {
                v100 = *v85;
                *&v34 = *(v85 + 1);
                v101 = v85[1];
                v102 = *(v85 + 24);
                *v94 = vuzp1_s16(*v85, v101);
                *(v94 + a11) = vuzp2_s16(v100, v101);
                v103 = (v94 + 2 * a11);
                *v103 = vuzp1_s16(*&v34, v102);
                *&v35 = vuzp2_s16(*&v34, v102);
                *(v103 + a11) = v35;
                v97 = 32;
              }

              else if (*v93)
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v241 + v51 - a7), a11, v85, v95, *&v35, *&v34);
                v96 = 2 * a11;
              }

              else
              {
                v97 = 0;
                *v94 = 0;
                *(v94 + a11) = 0;
                *(v94 + 2 * a11) = 0;
                *(v94 + 3 * a11) = 0;
              }
            }

            v104 = (v85 + v97);
            v105 = (v94 + v228);
            v106 = v93[1];
            if (v106 == 96)
            {
              *&v35 = vdup_lane_s8(*v104, 0);
              *v105 = v35;
              *(v105 + a11) = v35;
              *(v105 + v96) = v35;
              *(v105 + 3 * a11) = v35;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v108 = *v104;
              *&v34 = v104[1];
              v109 = v104[2];
              v110 = v104[3];
              *v105 = vuzp1_s16(*v104, v109);
              *(v105 + a11) = vuzp2_s16(v108, v109);
              v111 = (v105 + v96);
              *v111 = vuzp1_s16(*&v34, v110);
              *&v35 = vuzp2_s16(*&v34, v110);
              *(v111 + a11) = v35;
              v107 = 32;
            }

            else if (v93[1])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v94 + v228), a11, v104, v106, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v107 = 0;
              *v105 = 0;
              *(v105 + a11) = 0;
              *(v105 + v96) = 0;
              *(v105 + 3 * a11) = 0;
            }

            v112 = (v104 + v107);
            v113 = v94 + 1;
            v114 = v93[2];
            if (v114 == 96)
            {
              *&v35 = vdup_lane_s8(*v112, 0);
              *v113 = v35;
              *(v113 + a11) = v35;
              *(v113 + v96) = v35;
              *(v113 + 3 * a11) = v35;
              v115 = 1;
            }

            else if (v114 == 31)
            {
              v116 = *v112;
              *&v34 = v112[1];
              v117 = v112[2];
              v118 = v112[3];
              *v113 = vuzp1_s16(*v112, v117);
              *(v113 + a11) = vuzp2_s16(v116, v117);
              v119 = (v113 + v96);
              *v119 = vuzp1_s16(*&v34, v118);
              *&v35 = vuzp2_s16(*&v34, v118);
              *(v119 + a11) = v35;
              v115 = 32;
            }

            else if (v93[2])
            {
              v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, a11, v112, v114, *&v35, *&v34);
              v96 = 2 * a11;
              v115 = v120;
            }

            else
            {
              v115 = 0;
              *v113 = 0;
              *(v113 + a11) = 0;
              *(v113 + v96) = 0;
              *(v113 + 3 * a11) = 0;
            }

            v121 = (v112 + v115);
            v122 = v105 + 1;
            v123 = v93[3];
            if (v123 == 96)
            {
              *&v35 = vdup_lane_s8(*v121, 0);
              *v122 = v35;
              *(v122 + a11) = v35;
              *(v122 + v96) = v35;
              *(v122 + 3 * a11) = v35;
              v124 = 1;
            }

            else if (v123 == 31)
            {
              v125 = *v121;
              *&v34 = v121[1];
              v126 = v121[2];
              v127 = v121[3];
              *v122 = vuzp1_s16(*v121, v126);
              *(v122 + a11) = vuzp2_s16(v125, v126);
              v128 = (v122 + v96);
              *v128 = vuzp1_s16(*&v34, v127);
              *&v35 = vuzp2_s16(*&v34, v127);
              *(v128 + a11) = v35;
              v124 = 32;
            }

            else if (v93[3])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, a11, v121, v123, *&v35, *&v34);
              v96 = 2 * a11;
              v124 = v129;
            }

            else
            {
              v124 = 0;
              *v122 = 0;
              *(v122 + a11) = 0;
              *(v122 + v96) = 0;
              *(v122 + 3 * a11) = 0;
            }

            v130 = (v121 + v124);
            v131 = &v94[v227];
            v132 = v93[4];
            if (v132 == 96)
            {
              *&v35 = vdup_lane_s8(*v130, 0);
              *v131 = v35;
              *(v131 + a11) = v35;
              *(v131 + v96) = v35;
              *(v131 + 3 * a11) = v35;
              v133 = 1;
            }

            else if (v132 == 31)
            {
              v134 = *v130;
              *&v34 = v130[1];
              v135 = v130[2];
              v136 = v130[3];
              *v131 = vuzp1_s16(*v130, v135);
              *(v131 + a11) = vuzp2_s16(v134, v135);
              v137 = (v131 + v96);
              *v137 = vuzp1_s16(*&v34, v136);
              *&v35 = vuzp2_s16(*&v34, v136);
              *(v137 + a11) = v35;
              v133 = 32;
            }

            else if (v93[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v94[v227], a11, v130, v132, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v133 = 0;
              *v131 = 0;
              *(v131 + a11) = 0;
              *(v131 + v96) = 0;
              *(v131 + 3 * a11) = 0;
            }

            v138 = (v130 + v133);
            v139 = (v94 + 12 * a11);
            v140 = v93[5];
            if (v140 == 96)
            {
              *&v35 = vdup_lane_s8(*v138, 0);
              *v139 = v35;
              *(v139 + a11) = v35;
              *(v139 + v96) = v35;
              *(v139 + 3 * a11) = v35;
              v141 = 1;
            }

            else if (v140 == 31)
            {
              v142 = *v138;
              *&v34 = v138[1];
              v143 = v138[2];
              v144 = v138[3];
              *v139 = vuzp1_s16(*v138, v143);
              *(v139 + a11) = vuzp2_s16(v142, v143);
              v145 = (v139 + v96);
              *v145 = vuzp1_s16(*&v34, v144);
              *&v35 = vuzp2_s16(*&v34, v144);
              *(v145 + a11) = v35;
              v141 = 32;
            }

            else if (v93[5])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, a11, v138, v140, *&v35, *&v34);
              v96 = 2 * a11;
            }

            else
            {
              v141 = 0;
              *v139 = 0;
              *(v139 + a11) = 0;
              *(v139 + v96) = 0;
              *(v139 + 3 * a11) = 0;
            }

            v146 = (v138 + v141);
            v147 = v131 + 1;
            v148 = v93[6];
            if (v148 == 96)
            {
              *&v35 = vdup_lane_s8(*v146, 0);
              *v147 = v35;
              *(v147 + a11) = v35;
              *(v147 + v96) = v35;
              *(v147 + 3 * a11) = v35;
              v149 = 1;
            }

            else if (v148 == 31)
            {
              v150 = *v146;
              *&v34 = v146[1];
              v151 = v146[2];
              v152 = v146[3];
              *v147 = vuzp1_s16(*v146, v151);
              *(v147 + a11) = vuzp2_s16(v150, v151);
              v153 = (v147 + v96);
              *v153 = vuzp1_s16(*&v34, v152);
              *&v35 = vuzp2_s16(*&v34, v152);
              *(v153 + a11) = v35;
              v149 = 32;
            }

            else if (v93[6])
            {
              v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, a11, v146, v148, *&v35, *&v34);
              v96 = 2 * a11;
              v149 = v154;
            }

            else
            {
              v149 = 0;
              *v147 = 0;
              *(v147 + a11) = 0;
              *(v147 + v96) = 0;
              *(v147 + 3 * a11) = 0;
            }

            v155 = (v146 + v149);
            v156 = v139 + 1;
            v157 = v93[7];
            if (v157 == 96)
            {
              *&v35 = vdup_lane_s8(*v155, 0);
              *v156 = v35;
              *(v156 + a11) = v35;
              *(v156 + v96) = v35;
              *(v156 + 3 * a11) = v35;
              a8 = v230;
              goto LABEL_172;
            }

            a8 = v230;
            v158 = v42 + 1;
            if (v157 == 31)
            {
              v45 = *v155;
              *&v34 = v155[1];
              v46 = v155[2];
              v47 = v155[3];
              *v156 = vuzp1_s16(*v155, v46);
              *(v156 + a11) = vuzp2_s16(v45, v46);
              v48 = (v156 + v96);
              *v48 = vuzp1_s16(*&v34, v47);
              *&v35 = vuzp2_s16(*&v34, v47);
              *(v48 + a11) = v35;
            }

            else if (v157)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, a11, v155, v157, *&v35, *&v34);
            }

            else
            {
              *v156 = 0;
              *(v156 + a11) = 0;
              *(v156 + v96) = 0;
              *(v156 + 3 * a11) = 0;
            }
          }

LABEL_50:
          v21 = v42 == v236 >> 4;
          v42 = v158;
        }

        while (!v21);
        v21 = v18++ == v221;
      }

      while (!v21);
    }
  }
}