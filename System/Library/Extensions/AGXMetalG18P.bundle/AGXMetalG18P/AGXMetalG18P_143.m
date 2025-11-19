uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v279 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v232 = a8;
  v17 = a8 >> 3;
  v212 = a8 + a10 - 1;
  v214 = v212 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v235 = a1;
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
  v227 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v226 = result;
  if (v17 <= v214)
  {
    v225 = a7 + a9 - 1;
    v211 = a7 >> 4;
    if (a7 >> 4 <= v225 >> 4)
    {
      result = a1;
      v26 = a11;
      v234 = (a5 - 1) >> 4;
      v208 = a5 - 1;
      v217 = (a5 - 1) & 0xF;
      v209 = (a6 - 1) & 7;
      v210 = (a6 - 1) >> 3;
      v216 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v28.i8 = vcgt_u32(v27, 0x1F0000000FLL);
      v29.i64[0] = -1;
      v30.i64[0] = 0x2000000020;
      *v31.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v28.i8);
      v222 = v31.i64[0];
      v223 = v31.i32[0] | v31.i32[1];
      v221 = v28.i64[0];
      v207 = 8 * v19 * v18;
      v236 = 3 * a11;
      v224 = a7;
      v215 = 2 * a11;
      do
      {
        v32 = (8 * v17) | 7;
        if (8 * v17 <= v232)
        {
          v33 = v232;
        }

        else
        {
          v33 = 8 * v17;
        }

        if (v212 < v32)
        {
          v32 = v212;
        }

        v231 = 8 * v17;
        v220 = v33 - 8 * v17;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v209;
        v219 = v35;
        v37 = v35 != 8;
        v38 = v211;
        v39 = v209 + 1;
        if (v17 != v210)
        {
          v39 = 8;
        }

        v233 = v39;
        if (v17 != v210)
        {
          v36 = v37;
        }

        v218 = v36;
        v230 = a2 + (v33 - v232) * v26;
        do
        {
          v41 = 16 * v38;
          v42 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 16 * v38;
          }

          if (v225 < v42)
          {
            v42 = v225;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v38 == v234)
          {
            v46 = v217 + 1;
          }

          else
          {
            v46 = 16;
          }

          v47 = 1;
          if (v231 >= v232 && v41 >= a7)
          {
            v48 = v44 != v217;
            if (v38 != v234)
            {
              v48 = v45 != 16;
            }

            v47 = v48 || v218;
          }

          if (v226)
          {
            v69 = 0;
            v70 = v207 >> (*(result + 57) != 0);
            v71 = 1;
            if (v70 <= 63)
            {
              if (v70 > 15)
              {
                if (v70 == 16)
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 64;
                  v69 = 128;
                }

                else
                {
                  v72 = 1;
                  v73 = 0;
                  if (v70 == 32)
                  {
                    v71 = 0;
                    v72 = 0;
                    v69 = 64;
                    v73 = 64;
                  }
                }
              }

              else if (v70 == 4)
              {
                v71 = 0;
                v72 = 0;
                v73 = 128;
                v69 = 256;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 8)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 128;
                  v73 = 128;
                }
              }
            }

            else if (v70 <= 255)
            {
              if (v70 == 64)
              {
                v71 = 0;
                v72 = 0;
                v73 = 32;
                v69 = 64;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 128)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 32;
                  v73 = 32;
                }
              }
            }

            else if (v70 == 256)
            {
              v71 = 0;
              v72 = 0;
              v73 = 16;
              v69 = 32;
            }

            else if (v70 == 512)
            {
              v72 = 0;
              v69 = 16;
              v73 = 16;
            }

            else
            {
              v72 = 1;
              v73 = 0;
              if (v70 == 1024)
              {
                v73 = 8;
                v69 = 16;
              }
            }

            v195 = (v69 >> 4) - 1;
            if (v71)
            {
              v196 = 0;
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
            }

            v197 = (v73 >> 3) - 1;
            if (v72)
            {
              v198 = 0;
              if (v196)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v198 = 32 - __clz(~(-1 << -__clz(v197)));
              if (v198 | v196)
              {
LABEL_261:
                v199 = 0;
                v200 = 0;
                v201 = v38 & v195;
                v202 = v17 & v197;
                v203 = v198 != 0;
                v204 = v196 != 0;
                v205 = 1;
                do
                {
                  --v198;
                  if (v203)
                  {
                    v200 |= (v205 & v202) << v199++;
                  }

                  else
                  {
                    v198 = 0;
                  }

                  --v196;
                  if (v204)
                  {
                    v200 |= (v205 & v201) << v199++;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v205 *= 2;
                  --v199;
                  v204 = v196 != 0;
                  v203 = v198 != 0;
                }

                while (v196 | v198);
                v206 = v200 << 8;
                result = v235;
                goto LABEL_273;
              }
            }

            v206 = 0;
LABEL_273:
            v56 = v206 + ((v41 / v69 + v231 / v73 * ((v69 + v208) / v69)) << 14);
            goto LABEL_56;
          }

          if (v223)
          {
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v53 = v221;
            v52 = BYTE4(v221);
            v54 = v222;
            v55 = HIDWORD(v222);
            do
            {
              --v54;
              if (v53)
              {
                v50 |= (v51 & v17) << v49++;
              }

              else
              {
                v54 = 0;
              }

              --v55;
              if (v52)
              {
                v50 |= (v51 & v38) << v49++;
              }

              else
              {
                v55 = 0;
              }

              v51 *= 2;
              --v49;
              v52 = v55 != 0;
              v53 = v54 != 0;
            }

            while (v55 | v54);
            v56 = v50 << 8;
          }

          else
          {
            v56 = 0;
          }

LABEL_56:
          v57 = *(result + 128) >> (*(result + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 15;
          if (v58 < 0x20)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
          }

          v60 = *(result + 132) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_81:
              v68 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_81;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v38) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v17) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 8 * v64;
LABEL_82:
          v74 = (a3 + v56);
          if (v227)
          {
            memcpy(__dst, v74, sizeof(__dst));
            result = v235;
            v74 = __dst;
          }

          v75 = (a4 + v68);
          v76 = (v230 + 4 * (v43 - a7));
          if (!(v47 & 1 | (v46 < 0x10u)) && v233 > 7)
          {
            v77 = *(result + 208);
            v78 = *(v77 + 52);
            v79 = *v75;
            if (*v75)
            {
              v26 = a11;
              v80 = 2 * a11;
              if (v79 < 0xF0)
              {
                if (v79 == 63)
                {
                  i64 = v74[2].i64;
                  *v31.i8 = vld2q_f64(i64);
                  v90 = *v74;
                  v30 = v74[1];
                  *v76 = vzip1q_s64(*v74, v30);
                  v29 = vzip2q_s64(v90, v30);
                  *(v76 + a11) = v29;
                  v91 = &v76->i8[v215];
                  *v91 = v31;
                  *(v91 + a11) = v28;
                  v81 = 64;
                }

                else if (v79 == 1)
                {
                  v31 = vld1q_dup_s16(v74->i16);
                  *v76 = v31;
                  *(v76 + a11) = v31;
                  *(v76 + 2 * a11) = v31;
                  *(v76 + 3 * a11) = v31;
                  v81 = 2;
                }

                else
                {
                  v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v76, a11, v74, v79, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v76->i16, a11, v74, v79, *(v77 + 52));
                v81 = 32;
              }
            }

            else
            {
              v81 = 0;
              v76->i64[0] = 0;
              v76->i64[1] = 0;
              v26 = a11;
              v86 = (v76->i64 + a11);
              *v86 = 0;
              v86[1] = 0;
              v80 = 2 * a11;
              v87 = (v76->i64 + v215);
              *v87 = 0;
              v87[1] = 0;
              v88 = (v76->i64 + v236);
              *v88 = 0;
              v88[1] = 0;
            }

            v92 = v74->u64 + v81;
            v93 = v76 + 1;
            v94 = v75[1];
            if (v75[1])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 63)
                {
                  v99 = (v92 + 32);
                  *v31.i8 = vld2q_f64(v99);
                  v100 = *v92;
                  v30 = *(v92 + 16);
                  *v93 = vzip1q_s64(*v92, v30);
                  v29 = vzip2q_s64(v100, v30);
                  *(v93 + v26) = v29;
                  v101 = &v93->i8[v80];
                  *v101 = v31;
                  *(v101 + v26) = v28;
                  v95 = 64;
                }

                else if (v94 == 1)
                {
                  v31 = vld1q_dup_s16(v92);
                  *v93 = v31;
                  *(v93 + v26) = v31;
                  *(v93 + v80) = v31;
                  *(v93 + 3 * a11) = v31;
                  v95 = 2;
                }

                else
                {
                  v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v93, v26, v92, v94, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v93->i16, v26, v92, v94, v78);
                v95 = 32;
              }
            }

            else
            {
              v95 = 0;
              v93->i64[0] = 0;
              v76[1].i64[1] = 0;
              v96 = (v93->i64 + v26);
              *v96 = 0;
              v96[1] = 0;
              v97 = (v93->i64 + v80);
              *v97 = 0;
              v97[1] = 0;
              v98 = (v93->i64 + v236);
              *v98 = 0;
              v98[1] = 0;
            }

            v102 = v92 + v95;
            v103 = (v76 + v216);
            v104 = v75[2];
            if (v75[2])
            {
              if (v104 < 0xF0)
              {
                if (v104 == 63)
                {
                  v109 = (v102 + 32);
                  *v31.i8 = vld2q_f64(v109);
                  v110 = *v102;
                  v30 = *(v102 + 16);
                  *v103 = vzip1q_s64(*v102, v30);
                  v29 = vzip2q_s64(v110, v30);
                  *(v103 + v26) = v29;
                  v111 = &v103->i8[v80];
                  *v111 = v31;
                  *(v111 + v26) = v28;
                  v105 = 64;
                }

                else if (v104 == 1)
                {
                  v31 = vld1q_dup_s16(v102);
                  *v103 = v31;
                  *(v103 + v26) = v31;
                  *(v103 + v80) = v31;
                  *(v103 + 3 * a11) = v31;
                  v105 = 2;
                }

                else
                {
                  v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v76 + v216), v26, v102, v104, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v76->i16[v216 / 2], v26, v102, v104, v78);
                v105 = 32;
              }
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v26);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v80);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v236);
              *v108 = 0;
              v108[1] = 0;
            }

            v112 = v102 + v105;
            v113 = v103 + 1;
            v114 = v75[3];
            if (v75[3])
            {
              if (v114 < 0xF0)
              {
                if (v114 == 63)
                {
                  v119 = (v112 + 32);
                  *v31.i8 = vld2q_f64(v119);
                  v120 = *v112;
                  v30 = *(v112 + 16);
                  *v113 = vzip1q_s64(*v112, v30);
                  v29 = vzip2q_s64(v120, v30);
                  *(v113 + v26) = v29;
                  v121 = &v113->i8[v80];
                  *v121 = v31;
                  *(v121 + v26) = v28;
                  v115 = 64;
                }

                else if (v114 == 1)
                {
                  v31 = vld1q_dup_s16(v112);
                  *v113 = v31;
                  *(v113 + v26) = v31;
                  *(v113 + v80) = v31;
                  *(v113 + 3 * a11) = v31;
                  v115 = 2;
                }

                else
                {
                  v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v113, v26, v112, v114, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v113->i16, v26, v112, v114, v78);
                v115 = 32;
              }
            }

            else
            {
              v115 = 0;
              v113->i64[0] = 0;
              v103[1].i64[1] = 0;
              v116 = (v113->i64 + v26);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v113->i64 + v80);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v113->i64 + v236);
              *v118 = 0;
              v118[1] = 0;
            }

            v122 = v112 + v115;
            v123 = v76 + 2;
            v124 = v75[4];
            if (v75[4])
            {
              if (v124 < 0xF0)
              {
                if (v124 == 63)
                {
                  v129 = (v122 + 32);
                  *v31.i8 = vld2q_f64(v129);
                  v130 = *v122;
                  v30 = *(v122 + 16);
                  *v123 = vzip1q_s64(*v122, v30);
                  v29 = vzip2q_s64(v130, v30);
                  *(v123 + v26) = v29;
                  v131 = &v123->i8[v80];
                  *v131 = v31;
                  *(v131 + v26) = v28;
                  v125 = 64;
                }

                else if (v124 == 1)
                {
                  v31 = vld1q_dup_s16(v122);
                  *v123 = v31;
                  *(v123 + v26) = v31;
                  *(v123 + v80) = v31;
                  *(v123 + 3 * a11) = v31;
                  v125 = 2;
                }

                else
                {
                  v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v26, v122, v124, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123->i16, v26, v122, v124, v78);
                v125 = 32;
              }
            }

            else
            {
              v125 = 0;
              v123->i64[0] = 0;
              v76[2].i64[1] = 0;
              v126 = (v123->i64 + v26);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v123->i64 + v80);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v123->i64 + v236);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v122 + v125;
            v133 = v76 + 3;
            v134 = v75[5];
            if (v75[5])
            {
              if (v134 < 0xF0)
              {
                if (v134 == 63)
                {
                  v139 = (v132 + 32);
                  *v31.i8 = vld2q_f64(v139);
                  v140 = *v132;
                  v30 = *(v132 + 16);
                  *v133 = vzip1q_s64(*v132, v30);
                  v29 = vzip2q_s64(v140, v30);
                  *(v133 + v26) = v29;
                  v141 = &v133->i8[v80];
                  *v141 = v31;
                  *(v141 + v26) = v28;
                  v135 = 64;
                }

                else if (v134 == 1)
                {
                  v31 = vld1q_dup_s16(v132);
                  *v133 = v31;
                  *(v133 + v26) = v31;
                  *(v133 + v80) = v31;
                  *(v133 + 3 * a11) = v31;
                  v135 = 2;
                }

                else
                {
                  v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v133, v26, v132, v134, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v133->i16, v26, v132, v134, v78);
                v135 = 32;
              }
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v76[3].i64[1] = 0;
              v136 = (v133->i64 + v26);
              *v136 = 0;
              v136[1] = 0;
              v137 = (v133->i64 + v80);
              *v137 = 0;
              v137[1] = 0;
              v138 = (v133->i64 + v236);
              *v138 = 0;
              v138[1] = 0;
            }

            v142 = v132 + v135;
            v143 = v103 + 2;
            v144 = v75[6];
            if (v75[6])
            {
              if (v144 < 0xF0)
              {
                if (v144 == 63)
                {
                  v149 = (v142 + 32);
                  *v31.i8 = vld2q_f64(v149);
                  v150 = *v142;
                  v30 = *(v142 + 16);
                  *v143 = vzip1q_s64(*v142, v30);
                  v29 = vzip2q_s64(v150, v30);
                  *(v143 + v26) = v29;
                  v151 = &v143->i8[v80];
                  *v151 = v31;
                  *(v151 + v26) = v28;
                  v145 = 64;
                }

                else if (v144 == 1)
                {
                  v31 = vld1q_dup_s16(v142);
                  *v143 = v31;
                  *(v143 + v26) = v31;
                  *(v143 + v80) = v31;
                  *(v143 + 3 * a11) = v31;
                  v145 = 2;
                }

                else
                {
                  v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v143, v26, v132 + v135, v144, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v143->i16, v26, v132 + v135, v144, v78);
                v145 = 32;
              }
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v103[2].i64[1] = 0;
              v146 = (v143->i64 + v26);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v80);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v236);
              *v148 = 0;
              v148[1] = 0;
            }

            v152 = v103 + 3;
            v153 = v75[7];
            if (v75[7])
            {
              v154 = v142 + v145;
              if (v153 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v152->i16, v26, v154, v153, v78);
                goto LABEL_161;
              }

              a7 = v224;
              if (v153 == 63)
              {
                v158 = (v154 + 32);
                *v31.i8 = vld2q_f64(v158);
                v159 = *v154;
                v30 = *(v154 + 16);
                *v152 = vzip1q_s64(*v154, v30);
                v29 = vzip2q_s64(v159, v30);
                *(v152 + v26) = v29;
                v160 = &v152->i8[v80];
                *v160 = v31;
                *(v160 + v26) = v28;
              }

              else if (v153 == 1)
              {
                v31 = vld1q_dup_s16(v154);
                *v152 = v31;
                *(v152 + v26) = v31;
                *(v152 + v80) = v31;
                *(v152 + 3 * a11) = v31;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v152, v26, v154, v153, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v152->i64[0] = 0;
              v103[3].i64[1] = 0;
              v155 = (v152->i64 + v26);
              *v155 = 0;
              v155[1] = 0;
              v156 = (v152->i64 + v80);
              *v156 = 0;
              v156[1] = 0;
              v157 = (v152->i64 + v236);
              *v157 = 0;
              v157[1] = 0;
LABEL_161:
              a7 = v224;
            }

            result = v235;
LABEL_29:
            v40 = v38 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v74;
          v244 = v46;
          v245 = v233;
          v240 = v220;
          v241 = v43 - v41;
          block[6] = v75;
          v238 = v76;
          v26 = a11;
          v239 = a11;
          v242 = v219;
          v243 = v45;
          if (v47)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v235;
            a7 = v224;
            goto LABEL_29;
          }

          v82 = *(result + 208);
          v83 = *(v82 + 52);
          v84 = *v75;
          a7 = v224;
          if (*v75)
          {
            if (v84 < 0xF0)
            {
              if (v84 == 63)
              {
                v28 = v74[1];
                v161 = v74[2].i64;
                *v29.i8 = vld2q_f64(v161);
                v31 = vzip2q_s64(*v74, v28);
                v247 = vzip1q_s64(*v74, v28);
                v251 = v31;
                v255 = v29;
                v259 = v30;
                v85 = 64;
              }

              else if (v84 == 1)
              {
                v31 = vld1q_dup_s16(v74->i16);
                v247 = v31;
                v251 = v31;
                v255 = v31;
                v259 = v31;
                v85 = 2;
              }

              else
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v247, 64, v74, v84, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v247.i16, 64, v74, v84, *(v82 + 52));
              v85 = 32;
            }
          }

          else
          {
            v85 = 0;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
            v259 = 0uLL;
          }

          v162 = v74->u64 + v85;
          v163 = v75[1];
          if (v75[1])
          {
            if (v163 < 0xF0)
            {
              if (v163 == 63)
              {
                v28 = *(v162 + 16);
                v165 = (v162 + 32);
                *v29.i8 = vld2q_f64(v165);
                v31 = vzip2q_s64(*v162, v28);
                v248 = vzip1q_s64(*v162, v28);
                v252 = v31;
                v256 = v29;
                v260 = v30;
                v164 = 64;
              }

              else if (v163 == 1)
              {
                v31 = vld1q_dup_s16(v162);
                v248 = v31;
                v252 = v31;
                v256 = v31;
                v260 = v31;
                v164 = 2;
              }

              else
              {
                v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 64, v162, v163, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v248.i16, 64, v162, v163, v83);
              v164 = 32;
            }
          }

          else
          {
            v164 = 0;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
            v260 = 0uLL;
          }

          v166 = v162 + v164;
          v167 = v75[2];
          if (v75[2])
          {
            if (v167 < 0xF0)
            {
              if (v167 == 63)
              {
                v28 = *(v166 + 16);
                v169 = (v166 + 32);
                *v29.i8 = vld2q_f64(v169);
                v31 = vzip2q_s64(*v166, v28);
                v263 = vzip1q_s64(*v166, v28);
                v267 = v31;
                v271 = v29;
                v275 = v30;
                v168 = 64;
              }

              else if (v167 == 1)
              {
                v31 = vld1q_dup_s16(v166);
                v263 = v31;
                v267 = v31;
                v271 = v31;
                v275 = v31;
                v168 = 2;
              }

              else
              {
                v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v263, 64, v166, v167, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v263.i16, 64, v166, v167, v83);
              v168 = 32;
            }
          }

          else
          {
            v168 = 0;
            v263 = 0uLL;
            v267 = 0uLL;
            v271 = 0uLL;
            v275 = 0uLL;
          }

          v170 = v166 + v168;
          v171 = v75[3];
          if (v75[3])
          {
            if (v171 < 0xF0)
            {
              if (v171 == 63)
              {
                v28 = *(v170 + 16);
                v173 = (v170 + 32);
                *v29.i8 = vld2q_f64(v173);
                v31 = vzip2q_s64(*v170, v28);
                v264 = vzip1q_s64(*v170, v28);
                v268 = v31;
                v272 = v29;
                v276 = v30;
                v172 = 64;
              }

              else if (v171 == 1)
              {
                v31 = vld1q_dup_s16(v170);
                v264 = v31;
                v268 = v31;
                v272 = v31;
                v276 = v31;
                v172 = 2;
              }

              else
              {
                v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 64, v170, v171, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v264.i16, 64, v170, v171, v83);
              v172 = 32;
            }
          }

          else
          {
            v172 = 0;
            v264 = 0uLL;
            v268 = 0uLL;
            v272 = 0uLL;
            v276 = 0uLL;
          }

          v174 = v170 + v172;
          v175 = v75[4];
          if (v75[4])
          {
            if (v175 < 0xF0)
            {
              if (v175 == 63)
              {
                v28 = *(v174 + 16);
                v177 = (v174 + 32);
                *v29.i8 = vld2q_f64(v177);
                v31 = vzip2q_s64(*v174, v28);
                v249 = vzip1q_s64(*v174, v28);
                v253 = v31;
                v257 = v29;
                v261 = v30;
                v176 = 64;
              }

              else if (v175 == 1)
              {
                v31 = vld1q_dup_s16(v174);
                v249 = v31;
                v253 = v31;
                v257 = v31;
                v261 = v31;
                v176 = 2;
              }

              else
              {
                v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 64, v174, v175, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v249.i16, 64, v174, v175, v83);
              v176 = 32;
            }
          }

          else
          {
            v176 = 0;
            v249 = 0uLL;
            v253 = 0uLL;
            v257 = 0uLL;
            v261 = 0uLL;
          }

          v178 = v174 + v176;
          v179 = v75[5];
          if (v75[5])
          {
            if (v179 < 0xF0)
            {
              if (v179 == 63)
              {
                v28 = *(v178 + 16);
                v181 = (v178 + 32);
                *v29.i8 = vld2q_f64(v181);
                v31 = vzip2q_s64(*v178, v28);
                v250 = vzip1q_s64(*v178, v28);
                v254 = v31;
                v258 = v29;
                v262 = v30;
                v180 = 64;
              }

              else if (v179 == 1)
              {
                v31 = vld1q_dup_s16(v178);
                v250 = v31;
                v254 = v31;
                v258 = v31;
                v262 = v31;
                v180 = 2;
              }

              else
              {
                v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v250, 64, v178, v179, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v250.i16, 64, v178, v179, v83);
              v180 = 32;
            }
          }

          else
          {
            v180 = 0;
            v250 = 0uLL;
            v254 = 0uLL;
            v258 = 0uLL;
            v262 = 0uLL;
          }

          v182 = v178 + v180;
          v183 = v75[6];
          if (v75[6])
          {
            if (v183 < 0xF0)
            {
              if (v183 == 63)
              {
                v28 = *(v182 + 16);
                v187 = (v182 + 32);
                *v29.i8 = vld2q_f64(v187);
                v31 = vzip2q_s64(*v182, v28);
                v265 = vzip1q_s64(*v182, v28);
                v269 = v31;
                v273 = v29;
                v277 = v30;
                v184 = 64;
                v185 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v183 == 1)
              {
                v31 = vld1q_dup_s16(v182);
                v265 = v31;
                v269 = v31;
                v273 = v31;
                v277 = v31;
                v184 = 2;
                v185 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v184 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v265, 64, v182, v183, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                v185 = v75[7];
                if (!v75[7])
                {
LABEL_218:
                  v266 = 0uLL;
                  v270 = 0uLL;
                  v274 = 0uLL;
                  v278 = 0uLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v265.i16, 64, v182, v183, v83);
              v184 = 32;
              v185 = v75[7];
              if (!v75[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v184 = 0;
            v265 = 0uLL;
            v269 = 0uLL;
            v273 = 0uLL;
            v277 = 0uLL;
            v185 = v75[7];
            if (!v75[7])
            {
              goto LABEL_218;
            }
          }

          v186 = v182 + v184;
          if (v185 < 0xF0)
          {
            if (v185 == 63)
            {
              v28 = *(v186 + 16);
              v188 = (v186 + 32);
              *v29.i8 = vld2q_f64(v188);
              v31 = vzip2q_s64(*v186, v28);
              v266 = vzip1q_s64(*v186, v28);
              v270 = v31;
              v274 = v29;
              v278 = v30;
            }

            else if (v185 == 1)
            {
              v31 = vld1q_dup_s16(v186);
              v266 = v31;
              v270 = v31;
              v274 = v31;
              v278 = v31;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v266, 64, v186, v185, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v266.i16, 64, v186, v185, v83);
          }

LABEL_235:
          result = v235;
          v40 = v38 + 1;
          v189 = v242;
          if (v242)
          {
            v190 = 0;
            v191 = &v247.i8[64 * v240 + 4 * v241];
            v192 = v243;
            do
            {
              if (v192)
              {
                v193 = 0;
                v194 = &v238->i8[v239 * v190];
                do
                {
                  v194[v193] = v191[v193];
                  ++v193;
                  v192 = v243;
                }

                while (4 * v243 > v193);
                v189 = v242;
              }

              ++v190;
              v191 += 64;
            }

            while (v190 < v189);
          }

LABEL_30:
          v21 = v38 == v225 >> 4;
          v38 = v40;
        }

        while (!v21);
        v21 = v17++ == v214;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v156[52] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v117 = a8 + a10 - 1;
  v119 = v117 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v138 = a1;
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
  v129 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v128 = result;
  if (v16 <= v119)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 4 <= v127 >> 4)
    {
      result = a1;
      v25 = a11;
      v137 = (a5 - 1) >> 4;
      v114 = a5 - 1;
      v121 = (a5 - 1) & 0xF;
      v115 = (a6 - 1) & 7;
      v116 = (a6 - 1) >> 3;
      v120 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v126 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v125 = v27;
      v113 = 8 * v18 * v17;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v29 = v134;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v117 < v28)
        {
          v28 = v117;
        }

        v133 = 8 * v16;
        v124 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v115;
        v123 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v115 + 1;
        if (v16 != v116)
        {
          v35 = 8;
        }

        v136 = v35;
        if (v16 != v116)
        {
          v32 = v33;
        }

        v122 = v32;
        v132 = a2 + (v29 - v134) * v25;
        v36 = a7;
        do
        {
          v46 = 16 * v34;
          v47 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v48 = v36;
          }

          else
          {
            v48 = 16 * v34;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v34 == v137)
          {
            v51 = v121 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v36)
          {
            v53 = v49 != v121;
            if (v34 != v137)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v122;
          }

          if (v128)
          {
            v74 = 0;
            v75 = v113 >> (*(result + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v77 = 0;
              v74 = 16;
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

            v101 = (v74 >> 4) - 1;
            if (v76)
            {
              v102 = 0;
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
            }

            v103 = (v78 >> 3) - 1;
            if (v77)
            {
              v104 = 0;
              if (v102)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v104 = 32 - __clz(~(-1 << -__clz(v103)));
              if (v104 | v102)
              {
LABEL_114:
                v105 = 0;
                v106 = 0;
                v107 = v34 & v101;
                v108 = v16 & v103;
                v109 = v104 != 0;
                v110 = v102 != 0;
                v111 = 1;
                do
                {
                  --v104;
                  if (v109)
                  {
                    v106 |= (v111 & v108) << v105++;
                  }

                  else
                  {
                    v104 = 0;
                  }

                  --v102;
                  if (v110)
                  {
                    v106 |= (v111 & v107) << v105++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v111 *= 2;
                  --v105;
                  v110 = v102 != 0;
                  v109 = v104 != 0;
                }

                while (v102 | v104);
                v112 = v106 << 9;
                result = v138;
                goto LABEL_126;
              }
            }

            v112 = 0;
LABEL_126:
            v61 = v112 + ((v46 / v74 + v133 / v78 * ((v74 + v114) / v74)) << 14);
            goto LABEL_56;
          }

          if (v126)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v125.i8[0];
            v57 = v125.i8[4];
            v59 = v126.i32[0];
            v60 = v126.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v16) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v34) << v54++;
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
            v61 = v55 << 9;
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

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
              v69 |= (v72 & v34) << v68++;
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
          if (v129)
          {
            v80 = v50;
            v81 = v25;
            v82 = v51;
            v83 = v48;
            v84 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v84;
            v48 = v83;
            v46 = 16 * v34;
            v51 = v82;
            v25 = v81;
            v50 = v80;
            result = v138;
            v79 = __dst;
          }

          v85 = (a4 + v73);
          v86 = v132 + 8 * (v48 - v36);
          if (!(v52 & 1 | (v51 < 0x10u)) && v136 > 7)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v132 + 8 * (v48 - v36), v25, v79, *v85, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 32, v25, v38, v85[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120, v25, v39, v85[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 32, v25, v40, v85[3], v37);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 64, v25, v41, v85[4], v37);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + 96, v25, v42, v85[5], v37);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 64, v25, v43, v85[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v86 + v120 + 96, v25, v43 + v44, v85[7], v37);
LABEL_29:
            v36 = a7;
            v45 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v79;
          v146 = v51;
          v147 = v136;
          v142 = v124;
          v143 = v48 - v46;
          block[6] = v85;
          v140 = v132 + 8 * (v48 - v36);
          v141 = v25;
          v144 = v123;
          v145 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v87 = *(*(result + 208) + 52);
          v88 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v149, 128, v79, *v85, v87)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v150, 128, v88, v85[1], v87);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 128, v89, v85[2], v87);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 128, v90, v85[3], v87);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v151, 128, v91, v85[4], v87);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 128, v92, v85[5], v87);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 128, v93, v85[6], v87);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v156, 128, v93 + v94, v85[7], v87);
          v95 = v144;
          v36 = a7;
          v45 = v34 + 1;
          if (v144)
          {
            v96 = 0;
            v97 = &v149[128 * v142 + 8 * v143];
            v98 = v145;
            do
            {
              if (v98)
              {
                v99 = 0;
                v100 = v140 + v141 * v96;
                do
                {
                  *(v100 + v99) = v97[v99];
                  ++v99;
                  v98 = v145;
                }

                while (8 * v145 > v99);
                v95 = v144;
              }

              ++v96;
              v97 += 128;
            }

            while (v96 < v95);
          }

LABEL_30:
          v20 = v34 == v127 >> 4;
          v34 = v45;
          result = v138;
        }

        while (!v20);
        v20 = v16++ == v119;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v450 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v370 = a8;
  v16 = a8 >> 3;
  v352 = a8 + a10 - 1;
  v354 = v352 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v374 = a1;
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
  v365 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v364 = result;
  if (v16 <= v354)
  {
    v363 = a7 + a9 - 1;
    if (a7 >> 4 <= v363 >> 4)
    {
      result = a1;
      v25 = a11;
      v373 = (a5 - 1) >> 4;
      v349 = a5 - 1;
      v357 = (a5 - 1) & 0xF;
      v350 = (a6 - 1) & 7;
      v351 = (a6 - 1) >> 3;
      v356 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v362 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v361 = v27;
      v348 = 8 * v18 * v17;
      v375 = 3 * a11;
      v355 = 2 * a11;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v370)
        {
          v29 = v370;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v352 < v28)
        {
          v28 = v352;
        }

        v369 = 8 * v16;
        v360 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v350;
        v359 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v350 + 1;
        if (v16 != v351)
        {
          v35 = 8;
        }

        v372 = v35;
        if (v16 != v351)
        {
          v32 = v33;
        }

        v358 = v32;
        v368 = a2 + (v29 - v370) * v25;
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

          if (v363 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v373)
          {
            v43 = v357 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v369 >= v370 && v38 >= v36)
          {
            v45 = v41 != v357;
            if (v34 != v373)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v358;
          }

          if (v364)
          {
            v66 = 0;
            v67 = v348 >> (*(result + 57) != 0);
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
              v69 = 0;
              v70 = 16;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v69 = 0;
              v66 = 16;
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

            v336 = (v66 >> 4) - 1;
            if (v68)
            {
              v337 = 0;
            }

            else
            {
              v337 = 32 - __clz(~(-1 << -__clz(v336)));
            }

            v338 = (v70 >> 3) - 1;
            if (v69)
            {
              v339 = 0;
              if (v337)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v339 = 32 - __clz(~(-1 << -__clz(v338)));
              if (v339 | v337)
              {
LABEL_261:
                v340 = 0;
                v341 = 0;
                v342 = v34 & v336;
                v343 = v16 & v338;
                v344 = v339 != 0;
                v345 = v337 != 0;
                v346 = 1;
                do
                {
                  --v339;
                  if (v344)
                  {
                    v341 |= (v346 & v343) << v340++;
                  }

                  else
                  {
                    v339 = 0;
                  }

                  --v337;
                  if (v345)
                  {
                    v341 |= (v346 & v342) << v340++;
                  }

                  else
                  {
                    v337 = 0;
                  }

                  v346 *= 2;
                  --v340;
                  v345 = v337 != 0;
                  v344 = v339 != 0;
                }

                while (v337 | v339);
                v347 = v341 << 9;
                result = v374;
                goto LABEL_273;
              }
            }

            v347 = 0;
LABEL_273:
            v53 = v347 + ((v38 / v66 + v369 / v70 * ((v66 + v349) / v66)) << 14);
            goto LABEL_56;
          }

          if (v362)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v361.i8[0];
            v50 = v361.i8[4];
            v51 = v362.i32[0];
            v52 = v362.i32[1];
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v34) << v46++;
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

LABEL_56:
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

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_81:
              v65 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_81;
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
LABEL_82:
          v71 = (a3 + v53);
          if (v365)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v374;
            v71 = __dst;
          }

          v72 = (a4 + v65);
          v73 = v368 + 8 * (v40 - v36);
          if (!(v44 & 1 | (v43 < 0x10u)) && v372 > 7)
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
                  v91 = v71[1];
                  v92 = v71[2];
                  v93 = v71[3];
                  v94 = v71[5];
                  v95 = v71[6];
                  v96 = v71[7];
                  v97 = v71[4];
                  *v73 = *v71;
                  *(v73 + 16) = v92;
                  v98 = (v73 + v355);
                  v99 = (v73 + a11);
                  *v99 = v91;
                  v99[1] = v93;
                  *v98 = v97;
                  v98[1] = v95;
                  v100 = (v73 + v355 + a11);
                  *v100 = v94;
                  v100[1] = v96;
                  v78 = 128;
                }

                else if (v76 == 3)
                {
                  v86 = vld1q_dup_f32(v71->f32);
                  *v73 = v86;
                  *(v73 + 16) = v86;
                  v87 = (v73 + a11);
                  *v87 = v86;
                  v87[1] = v86;
                  v88 = (v73 + v355);
                  *v88 = v86;
                  v88[1] = v86;
                  v89 = (v73 + v375);
                  *v89 = v86;
                  v89[1] = v86;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v73, a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v73, a11, v71, v76, *(v74 + 52));
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
              v84 = (v73 + v355);
              *v84 = 0u;
              v84[1] = 0u;
              v85 = (v73 + v375);
              *v85 = 0u;
              v85[1] = 0u;
            }

            v101 = v71 + v78;
            v102 = (v73 + 32);
            v103 = v72[1];
            if (v72[1])
            {
              if (v103 < 0xF0)
              {
                if (v103 == 127)
                {
                  v112 = *(v101 + 16);
                  v113 = *(v101 + 32);
                  v114 = *(v101 + 48);
                  v115 = *(v101 + 80);
                  v116 = *(v101 + 96);
                  v117 = *(v101 + 112);
                  v118 = *(v101 + 64);
                  *v102 = *v101;
                  *(v73 + 48) = v113;
                  v119 = &v102->i8[v77];
                  v120 = &v102->i8[v25];
                  *v120 = v112;
                  *(v120 + 1) = v114;
                  *v119 = v118;
                  *(v119 + 1) = v116;
                  v121 = &v102->i8[v77 + v25];
                  *v121 = v115;
                  *(v121 + 1) = v117;
                  v104 = 128;
                }

                else if (v103 == 3)
                {
                  v108 = vld1q_dup_f32(v101);
                  *(v73 + 32) = v108;
                  *(v73 + 48) = v108;
                  v109 = &v102->i8[v25];
                  *v109 = v108;
                  v109[1] = v108;
                  v110 = &v102->i8[v77];
                  *v110 = v108;
                  v110[1] = v108;
                  v111 = &v102->i8[v375];
                  *v111 = v108;
                  v111[1] = v108;
                  v104 = 4;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v102, v25, v101, v103);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v102->i32, v25, v101, v103, v75);
                v104 = 64;
              }
            }

            else
            {
              v104 = 0;
              *v102 = 0u;
              *(v73 + 48) = 0u;
              v105 = &v102->i8[v25];
              *v105 = 0u;
              *(v105 + 1) = 0u;
              v106 = &v102->i8[v77];
              *v106 = 0u;
              *(v106 + 1) = 0u;
              v107 = &v102->i8[v375];
              *v107 = 0u;
              *(v107 + 1) = 0u;
            }

            v122 = v101 + v104;
            v123 = (v73 + v356);
            v124 = v72[2];
            if (v72[2])
            {
              if (v124 < 0xF0)
              {
                if (v124 == 127)
                {
                  v133 = *(v122 + 16);
                  v134 = *(v122 + 32);
                  v135 = *(v122 + 48);
                  v136 = *(v122 + 80);
                  v137 = *(v122 + 96);
                  v138 = *(v122 + 112);
                  v139 = *(v122 + 64);
                  *v123 = *v122;
                  v123[1] = v134;
                  v140 = (v123->f32 + v77);
                  v141 = (v123->f32 + v25);
                  *v141 = v133;
                  v141[1] = v135;
                  *v140 = v139;
                  v140[1] = v137;
                  v142 = (v123->f32 + v77 + v25);
                  *v142 = v136;
                  v142[1] = v138;
                  v125 = 128;
                }

                else if (v124 == 3)
                {
                  v129 = vld1q_dup_f32(v122);
                  *v123 = v129;
                  v123[1] = v129;
                  v130 = (v123 + v25);
                  *v130 = v129;
                  v130[1] = v129;
                  v131 = (v123 + v77);
                  *v131 = v129;
                  v131[1] = v129;
                  v132 = (v123 + v375);
                  *v132 = v129;
                  v132[1] = v129;
                  v125 = 4;
                }

                else
                {
                  v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v356), v25, v122, v124);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v73 + v356), v25, v122, v124, v75);
                v125 = 64;
              }
            }

            else
            {
              v125 = 0;
              *v123 = 0u;
              v123[1] = 0u;
              v126 = (v123->f32 + v25);
              *v126 = 0u;
              v126[1] = 0u;
              v127 = (v123->f32 + v77);
              *v127 = 0u;
              v127[1] = 0u;
              v128 = (v123->f32 + v375);
              *v128 = 0u;
              v128[1] = 0u;
            }

            v143 = v122 + v125;
            v144 = &v123[2];
            v145 = v72[3];
            if (v72[3])
            {
              if (v145 < 0xF0)
              {
                if (v145 == 127)
                {
                  v154 = *(v143 + 16);
                  v155 = *(v143 + 32);
                  v156 = *(v143 + 48);
                  v157 = *(v143 + 80);
                  v158 = *(v143 + 96);
                  v159 = *(v143 + 112);
                  v160 = *(v143 + 64);
                  *v144 = *v143;
                  v123[3] = v155;
                  v161 = &v144->i8[v77];
                  v162 = &v144->i8[v25];
                  *v162 = v154;
                  *(v162 + 1) = v156;
                  *v161 = v160;
                  *(v161 + 1) = v158;
                  v163 = &v144->i8[v77 + v25];
                  *v163 = v157;
                  *(v163 + 1) = v159;
                  v146 = 128;
                }

                else if (v145 == 3)
                {
                  v150 = vld1q_dup_f32(v143);
                  v123[2] = v150;
                  v123[3] = v150;
                  v151 = &v144->i8[v25];
                  *v151 = v150;
                  v151[1] = v150;
                  v152 = &v144->i8[v77];
                  *v152 = v150;
                  v152[1] = v150;
                  v153 = &v144->i8[v375];
                  *v153 = v150;
                  v153[1] = v150;
                  v146 = 4;
                }

                else
                {
                  v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v144, v25, v143, v145);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v144->i32, v25, v143, v145, v75);
                v146 = 64;
              }
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              v123[3] = 0u;
              v147 = &v144->i8[v25];
              *v147 = 0u;
              *(v147 + 1) = 0u;
              v148 = &v144->i8[v77];
              *v148 = 0u;
              *(v148 + 1) = 0u;
              v149 = &v144->i8[v375];
              *v149 = 0u;
              *(v149 + 1) = 0u;
            }

            v164 = v143 + v146;
            v165 = (v73 + 64);
            v166 = v72[4];
            if (v72[4])
            {
              if (v166 < 0xF0)
              {
                if (v166 == 127)
                {
                  v175 = *(v164 + 16);
                  v176 = *(v164 + 32);
                  v177 = *(v164 + 48);
                  v178 = *(v164 + 80);
                  v179 = *(v164 + 96);
                  v180 = *(v164 + 112);
                  v181 = *(v164 + 64);
                  *v165 = *v164;
                  *(v73 + 80) = v176;
                  v182 = &v165->i8[v77];
                  v183 = &v165->i8[v25];
                  *v183 = v175;
                  *(v183 + 1) = v177;
                  *v182 = v181;
                  *(v182 + 1) = v179;
                  v184 = &v165->i8[v77 + v25];
                  *v184 = v178;
                  *(v184 + 1) = v180;
                  v167 = 128;
                }

                else if (v166 == 3)
                {
                  v171 = vld1q_dup_f32(v164);
                  *(v73 + 64) = v171;
                  *(v73 + 80) = v171;
                  v172 = &v165->i8[v25];
                  *v172 = v171;
                  v172[1] = v171;
                  v173 = &v165->i8[v77];
                  *v173 = v171;
                  v173[1] = v171;
                  v174 = &v165->i8[v375];
                  *v174 = v171;
                  v174[1] = v171;
                  v167 = 4;
                }

                else
                {
                  v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v165, v25, v164, v166);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v165->i32, v25, v164, v166, v75);
                v167 = 64;
              }
            }

            else
            {
              v167 = 0;
              *v165 = 0u;
              *(v73 + 80) = 0u;
              v168 = &v165->i8[v25];
              *v168 = 0u;
              *(v168 + 1) = 0u;
              v169 = &v165->i8[v77];
              *v169 = 0u;
              *(v169 + 1) = 0u;
              v170 = &v165->i8[v375];
              *v170 = 0u;
              *(v170 + 1) = 0u;
            }

            v185 = v164 + v167;
            v186 = (v73 + 96);
            v187 = v72[5];
            if (v72[5])
            {
              if (v187 < 0xF0)
              {
                if (v187 == 127)
                {
                  v196 = *(v185 + 16);
                  v197 = *(v185 + 32);
                  v198 = *(v185 + 48);
                  v199 = *(v185 + 80);
                  v200 = *(v185 + 96);
                  v201 = *(v185 + 112);
                  v202 = *(v185 + 64);
                  *v186 = *v185;
                  *(v73 + 112) = v197;
                  v203 = &v186->i8[v77];
                  v204 = &v186->i8[v25];
                  *v204 = v196;
                  *(v204 + 1) = v198;
                  *v203 = v202;
                  *(v203 + 1) = v200;
                  v205 = &v186->i8[v77 + v25];
                  *v205 = v199;
                  *(v205 + 1) = v201;
                  v188 = 128;
                }

                else if (v187 == 3)
                {
                  v192 = vld1q_dup_f32(v185);
                  *(v73 + 96) = v192;
                  *(v73 + 112) = v192;
                  v193 = &v186->i8[v25];
                  *v193 = v192;
                  v193[1] = v192;
                  v194 = &v186->i8[v77];
                  *v194 = v192;
                  v194[1] = v192;
                  v195 = &v186->i8[v375];
                  *v195 = v192;
                  v195[1] = v192;
                  v188 = 4;
                }

                else
                {
                  v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v186, v25, v185, v187);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v186->i32, v25, v185, v187, v75);
                v188 = 64;
              }
            }

            else
            {
              v188 = 0;
              *v186 = 0u;
              *(v73 + 112) = 0u;
              v189 = &v186->i8[v25];
              *v189 = 0u;
              *(v189 + 1) = 0u;
              v190 = &v186->i8[v77];
              *v190 = 0u;
              *(v190 + 1) = 0u;
              v191 = &v186->i8[v375];
              *v191 = 0u;
              *(v191 + 1) = 0u;
            }

            v206 = v185 + v188;
            v207 = &v123[4];
            v208 = v72[6];
            if (v72[6])
            {
              if (v208 < 0xF0)
              {
                if (v208 == 127)
                {
                  v217 = *(v206 + 16);
                  v218 = *(v206 + 32);
                  v219 = *(v206 + 48);
                  v220 = *(v206 + 80);
                  v221 = *(v206 + 96);
                  v222 = *(v206 + 112);
                  v223 = *(v206 + 64);
                  *v207 = *v206;
                  v123[5] = v218;
                  v224 = &v207->i8[v77];
                  v225 = &v207->i8[v25];
                  *v225 = v217;
                  *(v225 + 1) = v219;
                  *v224 = v223;
                  *(v224 + 1) = v221;
                  v226 = &v207->i8[v77 + v25];
                  *v226 = v220;
                  *(v226 + 1) = v222;
                  v209 = 128;
                }

                else if (v208 == 3)
                {
                  v213 = vld1q_dup_f32(v206);
                  v123[4] = v213;
                  v123[5] = v213;
                  v214 = &v207->i8[v25];
                  *v214 = v213;
                  v214[1] = v213;
                  v215 = &v207->i8[v77];
                  *v215 = v213;
                  v215[1] = v213;
                  v216 = &v207->i8[v375];
                  *v216 = v213;
                  v216[1] = v213;
                  v209 = 4;
                }

                else
                {
                  v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v207, v25, v185 + v188, v208);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v207->i32, v25, v185 + v188, v208, v75);
                v209 = 64;
              }
            }

            else
            {
              v209 = 0;
              *v207 = 0u;
              v123[5] = 0u;
              v210 = &v207->i8[v25];
              *v210 = 0u;
              *(v210 + 1) = 0u;
              v211 = &v207->i8[v77];
              *v211 = 0u;
              *(v211 + 1) = 0u;
              v212 = &v207->i8[v375];
              *v212 = 0u;
              *(v212 + 1) = 0u;
            }

            f32 = v123[6].f32;
            v228 = v72[7];
            if (v72[7])
            {
              v229 = v206 + v209;
              if (v228 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(f32, v25, v229, v228, v75);
                goto LABEL_161;
              }

              v36 = a7;
              if (v228 == 127)
              {
                v237 = *(v229 + 16);
                v238 = *(v229 + 32);
                v239 = *(v229 + 48);
                v240 = *(v229 + 64);
                v241 = *(v229 + 80);
                v242 = *(v229 + 96);
                v243 = *(v229 + 112);
                *f32 = *v229;
                v123[7] = v238;
                v244 = (f32 + v77);
                v245 = (f32 + v25);
                *v245 = v237;
                v245[1] = v239;
                *v244 = v240;
                v244[1] = v242;
                v246 = (f32 + v77 + v25);
                *v246 = v241;
                v246[1] = v243;
              }

              else if (v228 == 3)
              {
                v233 = vld1q_dup_f32(v229);
                v123[6] = v233;
                v123[7] = v233;
                v234 = (f32 + v25);
                *v234 = v233;
                v234[1] = v233;
                v235 = (f32 + v77);
                *v235 = v233;
                v235[1] = v233;
                v236 = (f32 + v375);
                *v236 = v233;
                v236[1] = v233;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(f32, v25, v229, v228);
              }
            }

            else
            {
              *f32 = 0u;
              v123[7] = 0u;
              v230 = (f32 + v25);
              *v230 = 0u;
              v230[1] = 0u;
              v231 = (f32 + v77);
              *v231 = 0u;
              v231[1] = 0u;
              v232 = (f32 + v375);
              *v232 = 0u;
              v232[1] = 0u;
LABEL_161:
              v36 = a7;
            }

            result = v374;
LABEL_29:
            v37 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v383 = v43;
          v384 = v372;
          v379 = v360;
          v380 = v40 - v38;
          block[6] = v72;
          v377 = v73;
          v25 = a11;
          v378 = a11;
          v381 = v359;
          v382 = v42;
          if (v44)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v374;
            v36 = a7;
            goto LABEL_29;
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
                v247 = v71[1];
                v248 = v71[2];
                v249 = v71[3];
                v250 = v71[4];
                v251 = v71[5];
                v252 = v71[6];
                v253 = v71[7];
                v386 = *v71;
                v387 = v248;
                v394 = v247;
                v395 = v249;
                v402 = v250;
                v403 = v252;
                v410 = v251;
                v411 = v253;
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v90 = vld1q_dup_f32(v71->f32);
                v386 = v90;
                v387 = v90;
                v394 = v90;
                v395 = v90;
                v402 = v90;
                v403 = v90;
                v410 = v90;
                v411 = v90;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v386, 128, v71, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v386.i32, 128, v71, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v387 = 0u;
            v386 = 0u;
            v394 = 0u;
            v395 = 0u;
            v402 = 0u;
            v403 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v254 = v71 + v82;
          v255 = v72[1];
          if (v72[1])
          {
            if (v255 < 0xF0)
            {
              if (v255 == 127)
              {
                v258 = *(v254 + 16);
                v259 = *(v254 + 32);
                v260 = *(v254 + 48);
                v261 = *(v254 + 64);
                v262 = *(v254 + 80);
                v263 = *(v254 + 96);
                v264 = *(v254 + 112);
                v388 = *v254;
                v389 = v259;
                v396 = v258;
                v397 = v260;
                v404 = v261;
                v405 = v263;
                v412 = v262;
                v413 = v264;
                v256 = 128;
              }

              else if (v255 == 3)
              {
                v257 = vld1q_dup_f32(v254);
                v388 = v257;
                v389 = v257;
                v396 = v257;
                v397 = v257;
                v404 = v257;
                v405 = v257;
                v412 = v257;
                v413 = v257;
                v256 = 4;
              }

              else
              {
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v388, 128, v254, v255);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v388.i32, 128, v254, v255, v80);
              v256 = 64;
            }
          }

          else
          {
            v256 = 0;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v404 = 0u;
            v405 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v265 = v254 + v256;
          v266 = v72[2];
          if (v72[2])
          {
            if (v266 < 0xF0)
            {
              if (v266 == 127)
              {
                v269 = *(v265 + 16);
                v270 = *(v265 + 32);
                v271 = *(v265 + 48);
                v272 = *(v265 + 64);
                v273 = *(v265 + 80);
                v274 = *(v265 + 96);
                v275 = *(v265 + 112);
                v418 = *v265;
                v419 = v270;
                v426 = v269;
                v427 = v271;
                v434 = v272;
                v435 = v274;
                v442 = v273;
                v443 = v275;
                v267 = 128;
              }

              else if (v266 == 3)
              {
                v268 = vld1q_dup_f32(v265);
                v418 = v268;
                v419 = v268;
                v426 = v268;
                v427 = v268;
                v434 = v268;
                v435 = v268;
                v442 = v268;
                v443 = v268;
                v267 = 4;
              }

              else
              {
                v267 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v418, 128, v265, v266);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v418.i32, 128, v265, v266, v80);
              v267 = 64;
            }
          }

          else
          {
            v267 = 0;
            v418 = 0u;
            v419 = 0u;
            v426 = 0u;
            v427 = 0u;
            v434 = 0u;
            v435 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v276 = v265 + v267;
          v277 = v72[3];
          if (v72[3])
          {
            if (v277 < 0xF0)
            {
              if (v277 == 127)
              {
                v280 = *(v276 + 16);
                v281 = *(v276 + 32);
                v282 = *(v276 + 48);
                v283 = *(v276 + 64);
                v284 = *(v276 + 80);
                v285 = *(v276 + 96);
                v286 = *(v276 + 112);
                v420 = *v276;
                v421 = v281;
                v428 = v280;
                v429 = v282;
                v436 = v283;
                v437 = v285;
                v444 = v284;
                v445 = v286;
                v278 = 128;
              }

              else if (v277 == 3)
              {
                v279 = vld1q_dup_f32(v276);
                v420 = v279;
                v421 = v279;
                v428 = v279;
                v429 = v279;
                v436 = v279;
                v437 = v279;
                v444 = v279;
                v445 = v279;
                v278 = 4;
              }

              else
              {
                v278 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v420, 128, v276, v277);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v420.i32, 128, v276, v277, v80);
              v278 = 64;
            }
          }

          else
          {
            v278 = 0;
            v420 = 0u;
            v421 = 0u;
            v428 = 0u;
            v429 = 0u;
            v436 = 0u;
            v437 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v287 = v276 + v278;
          v288 = v72[4];
          if (v72[4])
          {
            if (v288 < 0xF0)
            {
              if (v288 == 127)
              {
                v291 = *(v287 + 16);
                v292 = *(v287 + 32);
                v293 = *(v287 + 48);
                v294 = *(v287 + 64);
                v295 = *(v287 + 80);
                v296 = *(v287 + 96);
                v297 = *(v287 + 112);
                v390 = *v287;
                v391 = v292;
                v398 = v291;
                v399 = v293;
                v406 = v294;
                v407 = v296;
                v414 = v295;
                v415 = v297;
                v289 = 128;
              }

              else if (v288 == 3)
              {
                v290 = vld1q_dup_f32(v287);
                v390 = v290;
                v391 = v290;
                v398 = v290;
                v399 = v290;
                v406 = v290;
                v407 = v290;
                v414 = v290;
                v415 = v290;
                v289 = 4;
              }

              else
              {
                v289 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v390, 128, v287, v288);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v390.i32, 128, v287, v288, v80);
              v289 = 64;
            }
          }

          else
          {
            v289 = 0;
            v390 = 0u;
            v391 = 0u;
            v398 = 0u;
            v399 = 0u;
            v406 = 0u;
            v407 = 0u;
            v414 = 0u;
            v415 = 0u;
          }

          v298 = v287 + v289;
          v299 = v72[5];
          if (v72[5])
          {
            if (v299 < 0xF0)
            {
              if (v299 == 127)
              {
                v302 = *(v298 + 16);
                v303 = *(v298 + 32);
                v304 = *(v298 + 48);
                v305 = *(v298 + 64);
                v306 = *(v298 + 80);
                v307 = *(v298 + 96);
                v308 = *(v298 + 112);
                v392 = *v298;
                v393 = v303;
                v400 = v302;
                v401 = v304;
                v408 = v305;
                v409 = v307;
                v416 = v306;
                v417 = v308;
                v300 = 128;
              }

              else if (v299 == 3)
              {
                v301 = vld1q_dup_f32(v298);
                v392 = v301;
                v393 = v301;
                v400 = v301;
                v401 = v301;
                v408 = v301;
                v409 = v301;
                v416 = v301;
                v417 = v301;
                v300 = 4;
              }

              else
              {
                v300 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v392, 128, v298, v299);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v392.i32, 128, v298, v299, v80);
              v300 = 64;
            }
          }

          else
          {
            v300 = 0;
            v392 = 0u;
            v393 = 0u;
            v400 = 0u;
            v401 = 0u;
            v408 = 0u;
            v409 = 0u;
            v416 = 0u;
            v417 = 0u;
          }

          v309 = v298 + v300;
          v310 = v72[6];
          if (v72[6])
          {
            if (v310 < 0xF0)
            {
              if (v310 == 127)
              {
                v316 = *(v309 + 16);
                v317 = *(v309 + 32);
                v318 = *(v309 + 48);
                v319 = *(v309 + 64);
                v320 = *(v309 + 80);
                v321 = *(v309 + 96);
                v322 = *(v309 + 112);
                v422 = *v309;
                v423 = v317;
                v430 = v316;
                v431 = v318;
                v438 = v319;
                v439 = v321;
                v446 = v320;
                v447 = v322;
                v311 = 128;
                v312 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v310 == 3)
              {
                v314 = vld1q_dup_f32(v309);
                v422 = v314;
                v423 = v314;
                v430 = v314;
                v431 = v314;
                v438 = v314;
                v439 = v314;
                v446 = v314;
                v447 = v314;
                v311 = 4;
                v312 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v311 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v422, 128, v309, v310);
                v312 = v72[7];
                if (!v72[7])
                {
LABEL_218:
                  v424 = 0u;
                  v425 = 0u;
                  v432 = 0u;
                  v433 = 0u;
                  v440 = 0u;
                  v441 = 0u;
                  v448 = 0u;
                  v449 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v422.i32, 128, v309, v310, v80);
              v311 = 64;
              v312 = v72[7];
              if (!v72[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v311 = 0;
            v422 = 0u;
            v423 = 0u;
            v430 = 0u;
            v431 = 0u;
            v438 = 0u;
            v439 = 0u;
            v446 = 0u;
            v447 = 0u;
            v312 = v72[7];
            if (!v72[7])
            {
              goto LABEL_218;
            }
          }

          v313 = v309 + v311;
          if (v312 < 0xF0)
          {
            if (v312 == 127)
            {
              v323 = *(v313 + 16);
              v324 = *(v313 + 32);
              v325 = *(v313 + 48);
              v326 = *(v313 + 80);
              v327 = *(v313 + 96);
              v328 = *(v313 + 112);
              v329 = *(v313 + 64);
              v424 = *v313;
              v425 = v324;
              v432 = v323;
              v433 = v325;
              v440 = v329;
              v441 = v327;
              v448 = v326;
              v449 = v328;
            }

            else if (v312 == 3)
            {
              v315 = vld1q_dup_f32(v313);
              v424 = v315;
              v425 = v315;
              v432 = v315;
              v433 = v315;
              v440 = v315;
              v441 = v315;
              v448 = v315;
              v449 = v315;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v424, 128, v313, v312);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v424.i32, 128, v313, v312, v80);
          }

LABEL_235:
          result = v374;
          v37 = v34 + 1;
          v330 = v381;
          if (v381)
          {
            v331 = 0;
            v332 = &v386.i8[128 * v379 + 8 * v380];
            v333 = v382;
            do
            {
              if (v333)
              {
                v334 = 0;
                v335 = v377 + v378 * v331;
                do
                {
                  *(v335 + v334) = v332[v334];
                  ++v334;
                  v333 = v382;
                }

                while (8 * v382 > v334);
                v330 = v381;
              }

              ++v331;
              v332 += 128;
            }

            while (v331 < v330);
          }

LABEL_30:
          v20 = v34 == v363 >> 4;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v354;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v143 = v15;
  v17 = v16;
  v19 = v18;
  v138 = v20;
  v139 = v21;
  v126 = v22;
  v23 = v12;
  v165 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v142 = v14;
  v24 = v14 >> 3;
  v125 = v14 + a10 - 1;
  v127 = v125 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v146 = v23;
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
  v137 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v136 = result;
  if (v24 <= v127)
  {
    v135 = v143 + a9 - 1;
    if (v143 >> 4 <= v135 >> 4)
    {
      result = v23;
      v33 = a11;
      v145 = (v19 - 1) >> 4;
      v122 = v19 - 1;
      v129 = (v19 - 1) & 0xF;
      v123 = (v17 - 1) & 7;
      v124 = (v17 - 1) >> 3;
      v128 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v134 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v133 = v35;
      v121 = 8 * v26 * v25;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v142)
        {
          v37 = v142;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v125 < v36)
        {
          v36 = v125;
        }

        v141 = 8 * v24;
        v132 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v123;
        v131 = v39;
        v41 = v39 != 8;
        v42 = v143 >> 4;
        v43 = v123 + 1;
        if (v24 != v124)
        {
          v43 = 8;
        }

        v144 = v43;
        if (v24 != v124)
        {
          v40 = v41;
        }

        v130 = v40;
        v140 = v126 + (v37 - v142) * v33;
        v44 = v143;
        do
        {
          v54 = 16 * v42;
          v55 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = 16 * v42;
          }

          if (v135 < v55)
          {
            v55 = v143 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v42 == v145)
          {
            v59 = v129 + 1;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (v141 >= v142 && v54 >= v44)
          {
            v61 = v57 != v129;
            if (v42 != v145)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v130;
          }

          if (v136)
          {
            v82 = 0;
            v83 = v121 >> (*(result + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 0;
                  v86 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 1;
                  v86 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v85 = 0;
                    v82 = 64;
                    v86 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 0;
                v86 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 128;
                  v86 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 0;
                v86 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 32;
                  v86 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v85 = 0;
              v86 = 16;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v85 = 0;
              v82 = 16;
              v86 = 16;
            }

            else
            {
              v85 = 1;
              v86 = 0;
              if (v83 == 1024)
              {
                v86 = 8;
                v82 = 16;
              }
            }

            v109 = (v82 >> 4) - 1;
            if (v84)
            {
              v110 = 0;
            }

            else
            {
              v110 = 32 - __clz(~(-1 << -__clz(v109)));
            }

            v111 = (v86 >> 3) - 1;
            if (v85)
            {
              v112 = 0;
              if (v110)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v112 = 32 - __clz(~(-1 << -__clz(v111)));
              if (v112 | v110)
              {
LABEL_114:
                v113 = 0;
                v114 = 0;
                v115 = v42 & v109;
                v116 = v24 & v111;
                v117 = v112 != 0;
                v118 = v110 != 0;
                v119 = 1;
                do
                {
                  --v112;
                  if (v117)
                  {
                    v114 |= (v119 & v116) << v113++;
                  }

                  else
                  {
                    v112 = 0;
                  }

                  --v110;
                  if (v118)
                  {
                    v114 |= (v119 & v115) << v113++;
                  }

                  else
                  {
                    v110 = 0;
                  }

                  v119 *= 2;
                  --v113;
                  v118 = v110 != 0;
                  v117 = v112 != 0;
                }

                while (v110 | v112);
                v120 = v114 << 10;
                result = v146;
                goto LABEL_126;
              }
            }

            v120 = 0;
LABEL_126:
            v69 = v120 + ((v54 / v82 + v141 / v86 * ((v82 + v122) / v82)) << 14);
            goto LABEL_56;
          }

          if (v134)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v133.i8[0];
            v65 = v133.i8[4];
            v67 = v134.i32[0];
            v68 = v134.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v24) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
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
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

LABEL_56:
          v70 = *(result + 128) >> (*(result + 144) + a12);
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

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_81;
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
              v77 |= (v80 & v24) << v76++;
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
LABEL_82:
          v87 = (v138 + v69);
          if (v137)
          {
            v88 = v58;
            v89 = v33;
            v90 = v59;
            v91 = v56;
            v92 = v60;
            memcpy(__dst, (v138 + v69), sizeof(__dst));
            v60 = v92;
            v56 = v91;
            v54 = 16 * v42;
            v59 = v90;
            v33 = v89;
            v58 = v88;
            result = v146;
            v87 = __dst;
          }

          v93 = (v139 + v81);
          v94 = (v140 + 16 * (v56 - v44));
          if (!(v60 & 1 | (v59 < 0x10u)) && v144 > 7)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v140 + 16 * (v56 - v44)), v33, v87, *v93, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v94 + 4, v33, v46, v93[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v94 + v128), v33, v47, v93[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v94 + v128 + 64), v33, v48, v93[3], v45);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v94 + 8, v33, v49, v93[4], v45);
            v51 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v94 + 12, v33, v50, v93[5], v45);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v94 + v128 + 128), v33, v51, v93[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v94 + v128 + 192), v33, v51 + v52, v93[7], v45);
LABEL_29:
            v44 = v143;
            v53 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v87;
          v154 = v59;
          v155 = v144;
          v150 = v132;
          v151 = v56 - v54;
          block[6] = v93;
          v148 = v140 + 16 * (v56 - v44);
          v149 = v33;
          v152 = v131;
          v153 = v58;
          if (v60)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v95 = *(*(result + 208) + 52);
          v96 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v157, 256, v87, *v93, v95)];
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v158, 256, v96, v93[1], v95);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v161, 256, v97, v93[2], v95);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v162, 256, v98, v93[3], v95);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v159, 256, v99, v93[4], v95);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v160, 256, v100, v93[5], v95);
          v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v163, 256, v101, v93[6], v95);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v164, 256, v101 + v102, v93[7], v95);
          v103 = v152;
          v44 = v143;
          v53 = v42 + 1;
          if (v152)
          {
            v104 = 0;
            v105 = &v157[16 * v150 + v151];
            v106 = v153;
            do
            {
              if (v106)
              {
                v107 = 0;
                v108 = v148 + v149 * v104;
                do
                {
                  *(v108 + v107) = *(v105->f64 + v107);
                  ++v107;
                  v106 = v153;
                }

                while (16 * v153 > v107);
                v103 = v152;
              }

              ++v104;
              v105 += 16;
            }

            while (v104 < v103);
          }

LABEL_30:
          v28 = v42 == v135 >> 4;
          v42 = v53;
          result = v146;
        }

        while (!v28);
        v28 = v24++ == v127;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v285 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v238 = a8;
  v17 = a8 >> 3;
  v218 = a8 + a10 - 1;
  v220 = v218 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v241 = a1;
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
  v232 = result;
  if (v17 <= v220)
  {
    v231 = a7 + a9 - 1;
    v217 = a7 >> 4;
    if (a7 >> 4 <= v231 >> 4)
    {
      result = a1;
      v26 = a11;
      v240 = (a5 - 1) >> 4;
      v214 = a5 - 1;
      v223 = (a5 - 1) & 0xF;
      v215 = (a6 - 1) & 7;
      v216 = (a6 - 1) >> 3;
      v222 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v28.i8 = vcgt_u32(v27, 0x1F0000000FLL);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v28.i8);
      v228 = v29.i64[0];
      v229 = v29.i32[0] | v29.i32[1];
      v227 = v28.i64[0];
      v213 = 8 * v19 * v18;
      v242 = 3 * a11;
      v230 = a7;
      v221 = 2 * a11;
      do
      {
        v30 = (8 * v17) | 7;
        if (8 * v17 <= v238)
        {
          v31 = v238;
        }

        else
        {
          v31 = 8 * v17;
        }

        if (v218 < v30)
        {
          v30 = v218;
        }

        v237 = 8 * v17;
        v226 = v31 - 8 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v215;
        v225 = v33;
        v35 = v33 != 8;
        v36 = v217;
        v37 = v215 + 1;
        if (v17 != v216)
        {
          v37 = 8;
        }

        v239 = v37;
        if (v17 != v216)
        {
          v34 = v35;
        }

        v224 = v34;
        v236 = a2 + (v31 - v238) * v26;
        do
        {
          v39 = 16 * v36;
          v40 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 16 * v36;
          }

          if (v231 < v40)
          {
            v40 = v231;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v36 == v240)
          {
            v44 = v223 + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (v237 >= v238 && v39 >= a7)
          {
            v46 = v42 != v223;
            if (v36 != v240)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v224;
          }

          if (v232)
          {
            v67 = 0;
            v68 = v213 >> (*(result + 57) != 0);
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
                v71 = 8;
                v67 = 16;
              }
            }

            v201 = (v67 >> 4) - 1;
            if (v69)
            {
              v202 = 0;
            }

            else
            {
              v202 = 32 - __clz(~(-1 << -__clz(v201)));
            }

            v203 = (v71 >> 3) - 1;
            if (v70)
            {
              v204 = 0;
              if (v202)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v204 = 32 - __clz(~(-1 << -__clz(v203)));
              if (v204 | v202)
              {
LABEL_261:
                v205 = 0;
                v206 = 0;
                v207 = v36 & v201;
                v208 = v17 & v203;
                v209 = v204 != 0;
                v210 = v202 != 0;
                v211 = 1;
                do
                {
                  --v204;
                  if (v209)
                  {
                    v206 |= (v211 & v208) << v205++;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  --v202;
                  if (v210)
                  {
                    v206 |= (v211 & v207) << v205++;
                  }

                  else
                  {
                    v202 = 0;
                  }

                  v211 *= 2;
                  --v205;
                  v210 = v202 != 0;
                  v209 = v204 != 0;
                }

                while (v202 | v204);
                v212 = v206 << 8;
                result = v241;
                goto LABEL_273;
              }
            }

            v212 = 0;
LABEL_273:
            v54 = v212 + ((v39 / v67 + v237 / v71 * ((v67 + v214) / v67)) << 14);
            goto LABEL_56;
          }

          if (v229)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v51 = v227;
            v50 = BYTE4(v227);
            v52 = v228;
            v53 = HIDWORD(v228);
            do
            {
              --v52;
              if (v51)
              {
                v48 |= (v49 & v17) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v50)
              {
                v48 |= (v49 & v36) << v47++;
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
            v54 = v48 << 8;
          }

          else
          {
            v54 = 0;
          }

LABEL_56:
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

          v59 = v58 + 7;
          if (v59 < 0x10)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_81:
              v66 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_81;
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
              v62 |= (v65 & v36) << v61++;
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
LABEL_82:
          v72 = (a3 + v54);
          if (v233)
          {
            memcpy(__dst, v72, sizeof(__dst));
            result = v241;
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = (v236 + 4 * (v41 - a7));
          if (!(v45 & 1 | (v44 < 0x10u)) && v239 > 7)
          {
            v75 = *(result + 208);
            v76 = *(v75 + 52);
            v77 = *v73;
            if (*v73)
            {
              v26 = a11;
              v78 = 2 * a11;
              if (v77 < 0xF0)
              {
                if (v77 == 63)
                {
                  i64 = v72[2].i64;
                  *v29.i8 = vld2q_f64(i64);
                  v88 = *v72;
                  v89 = v72[1];
                  *v74 = vzip1q_s64(*v72, v89);
                  *(v74 + a11) = vzip2q_s64(v88, v89);
                  v90 = &v74->i8[v221];
                  *v90 = v29;
                  *(v90 + a11) = v28;
                  v79 = 64;
                }

                else if (v77 == 1)
                {
                  v29 = vld1q_dup_s16(v72->i16);
                  *v74 = v29;
                  *(v74 + a11) = v29;
                  *(v74 + 2 * a11) = v29;
                  *(v74 + 3 * a11) = v29;
                  v79 = 2;
                }

                else
                {
                  v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v74, a11, v72, v77, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v74->i16, a11, v72, v77, *(v75 + 52));
                v79 = 32;
              }
            }

            else
            {
              v79 = 0;
              v74->i64[0] = 0;
              v74->i64[1] = 0;
              v26 = a11;
              v84 = (v74->i64 + a11);
              *v84 = 0;
              v84[1] = 0;
              v78 = 2 * a11;
              v85 = (v74->i64 + v221);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v74->i64 + v242);
              *v86 = 0;
              v86[1] = 0;
            }

            v91 = v72->i64 + v79;
            v92 = v74 + 1;
            v93 = v73[1];
            if (v73[1])
            {
              if (v93 < 0xF0)
              {
                if (v93 == 63)
                {
                  v98 = (v91 + 32);
                  *v29.i8 = vld2q_f64(v98);
                  v99 = *v91;
                  v100 = *(v91 + 16);
                  *v92 = vzip1q_s64(*v91, v100);
                  *(v92 + v26) = vzip2q_s64(v99, v100);
                  v101 = &v92->i8[v78];
                  *v101 = v29;
                  *(v101 + v26) = v28;
                  v94 = 64;
                }

                else if (v93 == 1)
                {
                  v29 = vld1q_dup_s16(v91);
                  *v92 = v29;
                  *(v92 + v26) = v29;
                  *(v92 + v78) = v29;
                  *(v92 + 3 * a11) = v29;
                  v94 = 2;
                }

                else
                {
                  v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v92, v26, v91, v93, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v92->i16, v26, v91, v93, v76);
                v94 = 32;
              }
            }

            else
            {
              v94 = 0;
              v92->i64[0] = 0;
              v74[1].i64[1] = 0;
              v95 = (v92->i64 + v26);
              *v95 = 0;
              v95[1] = 0;
              v96 = (v92->i64 + v78);
              *v96 = 0;
              v96[1] = 0;
              v97 = (v92->i64 + v242);
              *v97 = 0;
              v97[1] = 0;
            }

            v102 = v91 + v94;
            v103 = (v74 + v222);
            v104 = v73[2];
            if (v73[2])
            {
              if (v104 < 0xF0)
              {
                if (v104 == 63)
                {
                  v109 = (v102 + 32);
                  *v29.i8 = vld2q_f64(v109);
                  v110 = *v102;
                  v111 = *(v102 + 16);
                  *v103 = vzip1q_s64(*v102, v111);
                  *(v103 + v26) = vzip2q_s64(v110, v111);
                  v112 = &v103->i8[v78];
                  *v112 = v29;
                  *(v112 + v26) = v28;
                  v105 = 64;
                }

                else if (v104 == 1)
                {
                  v29 = vld1q_dup_s16(v102);
                  *v103 = v29;
                  *(v103 + v26) = v29;
                  *(v103 + v78) = v29;
                  *(v103 + 3 * a11) = v29;
                  v105 = 2;
                }

                else
                {
                  v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v222), v26, v102, v104, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v74->i16[v222 / 2], v26, v102, v104, v76);
                v105 = 32;
              }
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v26);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v78);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v242);
              *v108 = 0;
              v108[1] = 0;
            }

            v113 = v102 + v105;
            v114 = v103 + 1;
            v115 = v73[3];
            if (v73[3])
            {
              if (v115 < 0xF0)
              {
                if (v115 == 63)
                {
                  v120 = (v113 + 32);
                  *v29.i8 = vld2q_f64(v120);
                  v121 = *v113;
                  v122 = *(v113 + 16);
                  *v114 = vzip1q_s64(*v113, v122);
                  *(v114 + v26) = vzip2q_s64(v121, v122);
                  v123 = &v114->i8[v78];
                  *v123 = v29;
                  *(v123 + v26) = v28;
                  v116 = 64;
                }

                else if (v115 == 1)
                {
                  v29 = vld1q_dup_s16(v113);
                  *v114 = v29;
                  *(v114 + v26) = v29;
                  *(v114 + v78) = v29;
                  *(v114 + 3 * a11) = v29;
                  v116 = 2;
                }

                else
                {
                  v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v114, v26, v113, v115, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v114->i16, v26, v113, v115, v76);
                v116 = 32;
              }
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v103[1].i64[1] = 0;
              v117 = (v114->i64 + v26);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v114->i64 + v78);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v114->i64 + v242);
              *v119 = 0;
              v119[1] = 0;
            }

            v124 = v113 + v116;
            v125 = v74 + 2;
            v126 = v73[4];
            if (v73[4])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 63)
                {
                  v131 = (v124 + 32);
                  *v29.i8 = vld2q_f64(v131);
                  v132 = *v124;
                  v133 = *(v124 + 16);
                  *v125 = vzip1q_s64(*v124, v133);
                  *(v125 + v26) = vzip2q_s64(v132, v133);
                  v134 = &v125->i8[v78];
                  *v134 = v29;
                  *(v134 + v26) = v28;
                  v127 = 64;
                }

                else if (v126 == 1)
                {
                  v29 = vld1q_dup_s16(v124);
                  *v125 = v29;
                  *(v125 + v26) = v29;
                  *(v125 + v78) = v29;
                  *(v125 + 3 * a11) = v29;
                  v127 = 2;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, v26, v124, v126, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125->i16, v26, v124, v126, v76);
                v127 = 32;
              }
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v74[2].i64[1] = 0;
              v128 = (v125->i64 + v26);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v125->i64 + v78);
              *v129 = 0;
              v129[1] = 0;
              v130 = (v125->i64 + v242);
              *v130 = 0;
              v130[1] = 0;
            }

            v135 = v124 + v127;
            v136 = v74 + 3;
            v137 = v73[5];
            if (v73[5])
            {
              if (v137 < 0xF0)
              {
                if (v137 == 63)
                {
                  v142 = (v135 + 32);
                  *v29.i8 = vld2q_f64(v142);
                  v143 = *v135;
                  v144 = *(v135 + 16);
                  *v136 = vzip1q_s64(*v135, v144);
                  *(v136 + v26) = vzip2q_s64(v143, v144);
                  v145 = &v136->i8[v78];
                  *v145 = v29;
                  *(v145 + v26) = v28;
                  v138 = 64;
                }

                else if (v137 == 1)
                {
                  v29 = vld1q_dup_s16(v135);
                  *v136 = v29;
                  *(v136 + v26) = v29;
                  *(v136 + v78) = v29;
                  *(v136 + 3 * a11) = v29;
                  v138 = 2;
                }

                else
                {
                  v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v136, v26, v135, v137, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v136->i16, v26, v135, v137, v76);
                v138 = 32;
              }
            }

            else
            {
              v138 = 0;
              v136->i64[0] = 0;
              v74[3].i64[1] = 0;
              v139 = (v136->i64 + v26);
              *v139 = 0;
              v139[1] = 0;
              v140 = (v136->i64 + v78);
              *v140 = 0;
              v140[1] = 0;
              v141 = (v136->i64 + v242);
              *v141 = 0;
              v141[1] = 0;
            }

            v146 = v135 + v138;
            v147 = v103 + 2;
            v148 = v73[6];
            if (v73[6])
            {
              if (v148 < 0xF0)
              {
                if (v148 == 63)
                {
                  v153 = (v146 + 32);
                  *v29.i8 = vld2q_f64(v153);
                  v154 = *v146;
                  v155 = *(v146 + 16);
                  *v147 = vzip1q_s64(*v146, v155);
                  *(v147 + v26) = vzip2q_s64(v154, v155);
                  v156 = &v147->i8[v78];
                  *v156 = v29;
                  *(v156 + v26) = v28;
                  v149 = 64;
                }

                else if (v148 == 1)
                {
                  v29 = vld1q_dup_s16(v146);
                  *v147 = v29;
                  *(v147 + v26) = v29;
                  *(v147 + v78) = v29;
                  *(v147 + 3 * a11) = v29;
                  v149 = 2;
                }

                else
                {
                  v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v147, v26, v135 + v138, v148, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v147->i16, v26, v135 + v138, v148, v76);
                v149 = 32;
              }
            }

            else
            {
              v149 = 0;
              v147->i64[0] = 0;
              v103[2].i64[1] = 0;
              v150 = (v147->i64 + v26);
              *v150 = 0;
              v150[1] = 0;
              v151 = (v147->i64 + v78);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v147->i64 + v242);
              *v152 = 0;
              v152[1] = 0;
            }

            v157 = v103 + 3;
            v158 = v73[7];
            if (v73[7])
            {
              v159 = v146 + v149;
              if (v158 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v157->i16, v26, v159, v158, v76);
                goto LABEL_161;
              }

              a7 = v230;
              if (v158 == 63)
              {
                v163 = (v159 + 32);
                *v29.i8 = vld2q_f64(v163);
                v164 = *v159;
                v165 = *(v159 + 16);
                *v157 = vzip1q_s64(*v159, v165);
                *(v157 + v26) = vzip2q_s64(v164, v165);
                v166 = &v157->i8[v78];
                *v166 = v29;
                *(v166 + v26) = v28;
              }

              else if (v158 == 1)
              {
                v29 = vld1q_dup_s16(v159);
                *v157 = v29;
                *(v157 + v26) = v29;
                *(v157 + v78) = v29;
                *(v157 + 3 * a11) = v29;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v157, v26, v159, v158, *v29.i8, *v28.i8);
              }
            }

            else
            {
              v157->i64[0] = 0;
              v103[3].i64[1] = 0;
              v160 = (v157->i64 + v26);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v157->i64 + v78);
              *v161 = 0;
              v161[1] = 0;
              v162 = (v157->i64 + v242);
              *v162 = 0;
              v162[1] = 0;
LABEL_161:
              a7 = v230;
            }

            result = v241;
LABEL_29:
            v38 = v36 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v72;
          v250 = v44;
          v251 = v239;
          v246 = v226;
          v247 = v41 - v39;
          block[6] = v73;
          v244 = v74;
          v26 = a11;
          v245 = a11;
          v248 = v225;
          v249 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v241;
            a7 = v230;
            goto LABEL_29;
          }

          v80 = *(result + 208);
          v81 = *(v80 + 52);
          v82 = *v73;
          a7 = v230;
          if (*v73)
          {
            if (v82 < 0xF0)
            {
              if (v82 == 63)
              {
                v28 = v72[1];
                v167 = v72[2].i64;
                v286 = vld2q_f64(v167);
                v29 = vzip2q_s64(*v72, v28);
                v253 = vzip1q_s64(*v72, v28);
                v257 = v29;
                v261 = v286.val[0];
                v265 = v286.val[1];
                v83 = 64;
              }

              else if (v82 == 1)
              {
                v29 = vld1q_dup_s16(v72->i16);
                v253 = v29;
                v257 = v29;
                v261 = v29;
                v265 = v29;
                v83 = 2;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v253, 64, v72, v82, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v253.i16, 64, v72, v82, *(v80 + 52));
              v83 = 32;
            }
          }

          else
          {
            v83 = 0;
            v253 = 0uLL;
            v257 = 0uLL;
            v261 = 0uLL;
            v265 = 0uLL;
          }

          v168 = v72->i64 + v83;
          v169 = v73[1];
          if (v73[1])
          {
            if (v169 < 0xF0)
            {
              if (v169 == 63)
              {
                v28 = *(v168 + 16);
                v171 = (v168 + 32);
                v287 = vld2q_f64(v171);
                v29 = vzip2q_s64(*v168, v28);
                v254 = vzip1q_s64(*v168, v28);
                v258 = v29;
                v262 = v287.val[0];
                v266 = v287.val[1];
                v170 = 64;
              }

              else if (v169 == 1)
              {
                v29 = vld1q_dup_s16(v168);
                v254 = v29;
                v258 = v29;
                v262 = v29;
                v266 = v29;
                v170 = 2;
              }

              else
              {
                v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v254, 64, v168, v169, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v254.i16, 64, v168, v169, v81);
              v170 = 32;
            }
          }

          else
          {
            v170 = 0;
            v254 = 0uLL;
            v258 = 0uLL;
            v262 = 0uLL;
            v266 = 0uLL;
          }

          v172 = v168 + v170;
          v173 = v73[2];
          if (v73[2])
          {
            if (v173 < 0xF0)
            {
              if (v173 == 63)
              {
                v28 = *(v172 + 16);
                v175 = (v172 + 32);
                v288 = vld2q_f64(v175);
                v29 = vzip2q_s64(*v172, v28);
                v269 = vzip1q_s64(*v172, v28);
                v273 = v29;
                v277 = v288.val[0];
                v281 = v288.val[1];
                v174 = 64;
              }

              else if (v173 == 1)
              {
                v29 = vld1q_dup_s16(v172);
                v269 = v29;
                v273 = v29;
                v277 = v29;
                v281 = v29;
                v174 = 2;
              }

              else
              {
                v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v269, 64, v172, v173, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v269.i16, 64, v172, v173, v81);
              v174 = 32;
            }
          }

          else
          {
            v174 = 0;
            v269 = 0uLL;
            v273 = 0uLL;
            v277 = 0uLL;
            v281 = 0uLL;
          }

          v176 = v172 + v174;
          v177 = v73[3];
          if (v73[3])
          {
            if (v177 < 0xF0)
            {
              if (v177 == 63)
              {
                v28 = *(v176 + 16);
                v179 = (v176 + 32);
                v289 = vld2q_f64(v179);
                v29 = vzip2q_s64(*v176, v28);
                v270 = vzip1q_s64(*v176, v28);
                v274 = v29;
                v278 = v289.val[0];
                v282 = v289.val[1];
                v178 = 64;
              }

              else if (v177 == 1)
              {
                v29 = vld1q_dup_s16(v176);
                v270 = v29;
                v274 = v29;
                v278 = v29;
                v282 = v29;
                v178 = 2;
              }

              else
              {
                v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v270, 64, v176, v177, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v270.i16, 64, v176, v177, v81);
              v178 = 32;
            }
          }

          else
          {
            v178 = 0;
            v270 = 0uLL;
            v274 = 0uLL;
            v278 = 0uLL;
            v282 = 0uLL;
          }

          v180 = v176 + v178;
          v181 = v73[4];
          if (v73[4])
          {
            if (v181 < 0xF0)
            {
              if (v181 == 63)
              {
                v28 = *(v180 + 16);
                v183 = (v180 + 32);
                v290 = vld2q_f64(v183);
                v29 = vzip2q_s64(*v180, v28);
                v255 = vzip1q_s64(*v180, v28);
                v259 = v29;
                v263 = v290.val[0];
                v267 = v290.val[1];
                v182 = 64;
              }

              else if (v181 == 1)
              {
                v29 = vld1q_dup_s16(v180);
                v255 = v29;
                v259 = v29;
                v263 = v29;
                v267 = v29;
                v182 = 2;
              }

              else
              {
                v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 64, v180, v181, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v255.i16, 64, v180, v181, v81);
              v182 = 32;
            }
          }

          else
          {
            v182 = 0;
            v255 = 0uLL;
            v259 = 0uLL;
            v263 = 0uLL;
            v267 = 0uLL;
          }

          v184 = v180 + v182;
          v185 = v73[5];
          if (v73[5])
          {
            if (v185 < 0xF0)
            {
              if (v185 == 63)
              {
                v28 = *(v184 + 16);
                v187 = (v184 + 32);
                v291 = vld2q_f64(v187);
                v29 = vzip2q_s64(*v184, v28);
                v256 = vzip1q_s64(*v184, v28);
                v260 = v29;
                v264 = v291.val[0];
                v268 = v291.val[1];
                v186 = 64;
              }

              else if (v185 == 1)
              {
                v29 = vld1q_dup_s16(v184);
                v256 = v29;
                v260 = v29;
                v264 = v29;
                v268 = v29;
                v186 = 2;
              }

              else
              {
                v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 64, v184, v185, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v256.i16, 64, v184, v185, v81);
              v186 = 32;
            }
          }

          else
          {
            v186 = 0;
            v256 = 0uLL;
            v260 = 0uLL;
            v264 = 0uLL;
            v268 = 0uLL;
          }

          v188 = v184 + v186;
          v189 = v73[6];
          if (v73[6])
          {
            if (v189 < 0xF0)
            {
              if (v189 == 63)
              {
                v28 = *(v188 + 16);
                v193 = (v188 + 32);
                v292 = vld2q_f64(v193);
                v29 = vzip2q_s64(*v188, v28);
                v271 = vzip1q_s64(*v188, v28);
                v275 = v29;
                v279 = v292.val[0];
                v283 = v292.val[1];
                v190 = 64;
                v191 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v189 == 1)
              {
                v29 = vld1q_dup_s16(v188);
                v271 = v29;
                v275 = v29;
                v279 = v29;
                v283 = v29;
                v190 = 2;
                v191 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 64, v188, v189, *v29.i8, *v28.i8);
                v191 = v73[7];
                if (!v73[7])
                {
LABEL_218:
                  v272 = 0uLL;
                  v276 = 0uLL;
                  v280 = 0uLL;
                  v284 = 0uLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v271.i16, 64, v188, v189, v81);
              v190 = 32;
              v191 = v73[7];
              if (!v73[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v190 = 0;
            v271 = 0uLL;
            v275 = 0uLL;
            v279 = 0uLL;
            v283 = 0uLL;
            v191 = v73[7];
            if (!v73[7])
            {
              goto LABEL_218;
            }
          }

          v192 = v188 + v190;
          if (v191 < 0xF0)
          {
            if (v191 == 63)
            {
              v28 = *(v192 + 16);
              v194 = (v192 + 32);
              v293 = vld2q_f64(v194);
              v29 = vzip2q_s64(*v192, v28);
              v272 = vzip1q_s64(*v192, v28);
              v276 = v29;
              v280 = v293.val[0];
              v284 = v293.val[1];
            }

            else if (v191 == 1)
            {
              v29 = vld1q_dup_s16(v192);
              v272 = v29;
              v276 = v29;
              v280 = v29;
              v284 = v29;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v272, 64, v192, v191, *v29.i8, *v28.i8);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v272.i16, 64, v192, v191, v81);
          }

LABEL_235:
          result = v241;
          v38 = v36 + 1;
          v195 = v248;
          if (v248)
          {
            v196 = 0;
            v197 = &v253.i8[64 * v246 + 4 * v247];
            v198 = v249;
            do
            {
              if (v198)
              {
                v199 = 0;
                v200 = &v244->i8[v245 * v196];
                do
                {
                  v200[v199] = v197[v199];
                  ++v199;
                  v198 = v249;
                }

                while (4 * v249 > v199);
                v195 = v248;
              }

              ++v196;
              v197 += 64;
            }

            while (v196 < v195);
          }

LABEL_30:
          v21 = v36 == v231 >> 4;
          v36 = v38;
        }

        while (!v21);
        v21 = v17++ == v220;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v245 = v15;
  v17 = v16;
  v19 = v18;
  v240 = v20;
  v241 = v21;
  v226 = v22;
  v23 = v12;
  v387 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v244 = v14;
  v24 = v14 >> 3;
  v225 = v14 + a10 - 1;
  v227 = v225 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v248 = v23;
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
  v239 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v238 = result;
  if (v24 <= v227)
  {
    v237 = v245 + a9 - 1;
    if (v245 >> 4 <= v237 >> 4)
    {
      result = v23;
      v33 = a11;
      v247 = (v19 - 1) >> 4;
      v222 = v19 - 1;
      v231 = (v19 - 1) & 0xF;
      v223 = (v17 - 1) & 7;
      v224 = (v17 - 1) >> 3;
      v230 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v236 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v235 = v35;
      v221 = 8 * v26 * v25;
      v228 = 3 * a11;
      v229 = 2 * a11;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v244)
        {
          v37 = v244;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v225 < v36)
        {
          v36 = v225;
        }

        v243 = 8 * v24;
        v234 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v223;
        v233 = v39;
        v41 = v39 != 8;
        v42 = v245 >> 4;
        v43 = v223 + 1;
        if (v24 != v224)
        {
          v43 = 8;
        }

        v246 = v43;
        if (v24 != v224)
        {
          v40 = v41;
        }

        v232 = v40;
        v242 = v226 + (v37 - v244) * v33;
        v44 = v245;
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

          if (v237 < v47)
          {
            v47 = v245 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v247)
          {
            v51 = v231 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v243 >= v244 && v46 >= v44)
          {
            v53 = v49 != v231;
            if (v42 != v247)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v232;
          }

          if (v238)
          {
            v74 = 0;
            v75 = v221 >> (*(result + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v77 = 0;
              v74 = 16;
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
            }

            else
            {
              v210 = 32 - __clz(~(-1 << -__clz(v209)));
            }

            v211 = (v78 >> 3) - 1;
            if (v77)
            {
              v212 = 0;
              if (v210)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v212 = 32 - __clz(~(-1 << -__clz(v211)));
              if (v212 | v210)
              {
LABEL_229:
                v213 = 0;
                v214 = 0;
                v215 = v42 & v209;
                v216 = v24 & v211;
                v217 = v212 != 0;
                v218 = v210 != 0;
                v219 = 1;
                do
                {
                  --v212;
                  if (v217)
                  {
                    v214 |= (v219 & v216) << v213++;
                  }

                  else
                  {
                    v212 = 0;
                  }

                  --v210;
                  if (v218)
                  {
                    v214 |= (v219 & v215) << v213++;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  v219 *= 2;
                  --v213;
                  v218 = v210 != 0;
                  v217 = v212 != 0;
                }

                while (v210 | v212);
                v220 = v214 << 10;
                result = v248;
                goto LABEL_241;
              }
            }

            v220 = 0;
LABEL_241:
            v61 = v220 + ((v46 / v74 + v243 / v78 * ((v74 + v222) / v74)) << 14);
            goto LABEL_55;
          }

          if (v236)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v235.i8[0];
            v57 = v235.i8[4];
            v59 = v236.i32[0];
            v60 = v236.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v24) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v42) << v54++;
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

LABEL_55:
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

          v66 = v65 + 7;
          if (v66 < 0x10)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_80:
              v73 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_80;
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
LABEL_81:
          v79 = (v240 + v61);
          if (v239)
          {
            memcpy(__dst, v79, sizeof(__dst));
            result = v248;
            v79 = __dst;
          }

          v80 = (v241 + v73);
          v81 = v242 + 16 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 0x10u)) && v246 > 7)
          {
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
                  *(v81 + 16) = v95;
                  *(v81 + 32) = v95;
                  *(v81 + 48) = v95;
                  v96 = (v81 + a11);
                  *v96 = v95;
                  v96[1] = v95;
                  v96[2] = v95;
                  v96[3] = v95;
                  v97 = (v81 + v229);
                  *v97 = v95;
                  v97[1] = v95;
                  v97[2] = v95;
                  v97[3] = v95;
                  v98 = (v81 + v228);
                  *v98 = v95;
                  v98[1] = v95;
                  v98[2] = v95;
                  v98[3] = v95;
                  v87 = 8;
                }

                else
                {
                  v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81, a11, v79, v84);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v81, a11, v79, v84, *(v82 + 52));
                v87 = 128;
              }
            }

            else
            {
              v87 = 0;
              *(v81 + 32) = 0u;
              *(v81 + 48) = 0u;
              *v81 = 0u;
              *(v81 + 16) = 0u;
              v33 = a11;
              v92 = (v81 + a11);
              v92[2] = 0u;
              v92[3] = 0u;
              *v92 = 0u;
              v92[1] = 0u;
              v86 = 3 * a11;
              v85 = 2 * a11;
              v93 = (v81 + v229);
              v93[2] = 0u;
              v93[3] = 0u;
              *v93 = 0u;
              v93[1] = 0u;
              v94 = (v81 + v228);
              v94[2] = 0u;
              v94[3] = 0u;
              *v94 = 0u;
              v94[1] = 0u;
            }

            v100 = &v79[v87];
            v101 = (v81 + 64);
            v102 = v80[1];
            if (v80[1])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 7)
                {
                  v107 = vld1q_dup_f64(v100);
                  *(v81 + 64) = v107;
                  *(v81 + 80) = v107;
                  *(v81 + 96) = v107;
                  *(v81 + 112) = v107;
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
                  v103 = 8;
                  v110[2] = v107;
                  v110[3] = v107;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v101, v33, v100, v102);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v101, v33, v100, v102, v83);
                v103 = 128;
              }
            }

            else
            {
              v103 = 0;
              *(v81 + 96) = 0u;
              *(v81 + 112) = 0u;
              *v101->i8 = 0u;
              *(v81 + 80) = 0u;
              v104 = (v101 + v33);
              v104[2] = 0u;
              v104[3] = 0u;
              *v104 = 0u;
              v104[1] = 0u;
              v105 = (v101 + v85);
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
              v106 = (v101 + v86);
              v106[2] = 0u;
              v106[3] = 0u;
              *v106 = 0u;
              v106[1] = 0u;
            }

            v111 = (v100 + v103);
            v112 = (v81 + v230);
            v113 = v80[2];
            if (v80[2])
            {
              if (v113 < 0xF0)
              {
                if (v113 == 7)
                {
                  v118 = vld1q_dup_f64(v111);
                  *v112->i8 = v118;
                  *v112[2].i8 = v118;
                  *v112[4].i8 = v118;
                  *v112[6].i8 = v118;
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
                  v121[2] = v118;
                  v121[3] = v118;
                  v114 = 8;
                }

                else
                {
                  v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81 + v230, v33, v111, v113);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v230), v33, v111, v113, v83);
                v114 = 128;
              }
            }

            else
            {
              v114 = 0;
              *v112[4].i8 = 0u;
              *v112[6].i8 = 0u;
              *v112->i8 = 0u;
              *v112[2].i8 = 0u;
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
            v123 = v112 + 8;
            v124 = v80[3];
            if (v80[3])
            {
              if (v124 < 0xF0)
              {
                if (v124 == 7)
                {
                  v129 = vld1q_dup_f64(v122);
                  *v112[8].i8 = v129;
                  *v112[10].i8 = v129;
                  *v112[12].i8 = v129;
                  *v112[14].i8 = v129;
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
                  v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v33, v122, v124);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123, v33, v122, v124, v83);
                v125 = 128;
              }
            }

            else
            {
              v125 = 0;
              *v112[12].i8 = 0u;
              *v112[14].i8 = 0u;
              *v123->i8 = 0u;
              *v112[10].i8 = 0u;
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
            v134 = (v81 + 128);
            v135 = v80[4];
            if (v80[4])
            {
              if (v135 < 0xF0)
              {
                if (v135 == 7)
                {
                  v140 = vld1q_dup_f64(v133);
                  *(v81 + 128) = v140;
                  *(v81 + 144) = v140;
                  *(v81 + 160) = v140;
                  *(v81 + 176) = v140;
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
                  v136 = 8;
                  v143[2] = v140;
                  v143[3] = v140;
                }

                else
                {
                  v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v134, v33, v133, v135);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v134, v33, v133, v135, v83);
                v136 = 128;
              }
            }

            else
            {
              v136 = 0;
              *(v81 + 160) = 0u;
              *(v81 + 176) = 0u;
              *v134->i8 = 0u;
              *(v81 + 144) = 0u;
              v137 = (v134 + v33);
              v137[2] = 0u;
              v137[3] = 0u;
              *v137 = 0u;
              v137[1] = 0u;
              v138 = (v134 + v85);
              v138[2] = 0u;
              v138[3] = 0u;
              *v138 = 0u;
              v138[1] = 0u;
              v139 = (v134 + v86);
              v139[2] = 0u;
              v139[3] = 0u;
              *v139 = 0u;
              v139[1] = 0u;
            }

            v144 = (v133 + v136);
            v145 = (v81 + 192);
            v146 = v80[5];
            if (v80[5])
            {
              if (v146 < 0xF0)
              {
                if (v146 == 7)
                {
                  v151 = vld1q_dup_f64(v144);
                  *(v81 + 192) = v151;
                  *(v81 + 208) = v151;
                  *(v81 + 224) = v151;
                  *(v81 + 240) = v151;
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
                  v147 = 8;
                  v154[2] = v151;
                  v154[3] = v151;
                }

                else
                {
                  v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v145, v33, v144, v146);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v145, v33, v144, v146, v83);
                v147 = 128;
              }
            }

            else
            {
              v147 = 0;
              *(v81 + 224) = 0u;
              *(v81 + 240) = 0u;
              *v145->i8 = 0u;
              *(v81 + 208) = 0u;
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
            v156 = v112 + 16;
            v157 = v80[6];
            if (v80[6])
            {
              v45 = v42 + 1;
              if (v157 < 0xF0)
              {
                if (v157 == 7)
                {
                  v162 = vld1q_dup_f64(v155);
                  *v112[16].i8 = v162;
                  *v112[18].i8 = v162;
                  *v112[20].i8 = v162;
                  *v112[22].i8 = v162;
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
                  v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v156, v33, v155, v157);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v156, v33, v155, v157, v83);
                v158 = 128;
              }
            }

            else
            {
              v158 = 0;
              *v112[20].i8 = 0u;
              *v112[22].i8 = 0u;
              *v156->i8 = 0u;
              *v112[18].i8 = 0u;
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
              v45 = v42 + 1;
            }

            v166 = v112 + 24;
            v167 = v80[7];
            if (v80[7])
            {
              v168 = (v155 + v158);
              if (v167 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v166, v33, v168, v167, v83);
                goto LABEL_145;
              }

              v44 = v245;
              if (v167 == 7)
              {
                v172 = vld1q_dup_f64(v168);
                *v112[24].i8 = v172;
                *v112[26].i8 = v172;
                *v112[28].i8 = v172;
                *v112[30].i8 = v172;
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v166, v33, v168, v167);
              }
            }

            else
            {
              *v112[28].i8 = 0u;
              *v112[30].i8 = 0u;
              *v166->i8 = 0u;
              *v112[26].i8 = 0u;
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
LABEL_145:
              v44 = v245;
            }

            result = v248;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v79;
          v256 = v51;
          v257 = v246;
          v252 = v234;
          v253 = v48 - v46;
          block[6] = v80;
          v250 = v81;
          v33 = a11;
          v251 = a11;
          v254 = v233;
          v255 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v248;
            v44 = v245;
            v45 = v42 + 1;
            goto LABEL_29;
          }

          v88 = *(result + 208);
          v89 = *(v88 + 52);
          v90 = *v80;
          v44 = v245;
          if (*v80)
          {
            if (v90 < 0xF0)
            {
              if (v90 == 7)
              {
                v99 = vld1q_dup_f64(v79);
                v259 = v99;
                v260 = v99;
                v261 = v99;
                v262 = v99;
                v275 = v99;
                v276 = v99;
                v277 = v99;
                v278 = v99;
                v291 = v99;
                v292 = v99;
                v293 = v99;
                v294 = v99;
                v307 = v99;
                v308 = v99;
                v91 = 8;
                v309 = v99;
                v310 = v99;
              }

              else
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v259, 256, v79, v90);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v259, 256, v79, v90, *(v88 + 52));
              v91 = 128;
            }
          }

          else
          {
            v91 = 0;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
            v307 = 0u;
            v308 = 0u;
            v309 = 0u;
            v310 = 0u;
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
                v263 = v179;
                v264 = v179;
                v265 = v179;
                v266 = v179;
                v279 = v179;
                v280 = v179;
                v281 = v179;
                v282 = v179;
                v295 = v179;
                v296 = v179;
                v297 = v179;
                v298 = v179;
                v311 = v179;
                v312 = v179;
                v178 = 8;
                v313 = v179;
                v314 = v179;
              }

              else
              {
                v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v263, 256, v176, v177);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v263, 256, v176, v177, v89);
              v178 = 128;
            }
          }

          else
          {
            v178 = 0;
            v265 = 0u;
            v266 = 0u;
            v263 = 0u;
            v264 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v295 = 0u;
            v296 = 0u;
            v297 = 0u;
            v298 = 0u;
            v311 = 0u;
            v312 = 0u;
            v313 = 0u;
            v314 = 0u;
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
                v323 = v183;
                v324 = v183;
                v325 = v183;
                v326 = v183;
                v339 = v183;
                v340 = v183;
                v341 = v183;
                v342 = v183;
                v355 = v183;
                v356 = v183;
                v357 = v183;
                v358 = v183;
                v371 = v183;
                v372 = v183;
                v373 = v183;
                v182 = 8;
                v374 = v183;
              }

              else
              {
                v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v323, 256, v180, v181);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v323, 256, v180, v181, v89);
              v182 = 128;
            }
          }

          else
          {
            v182 = 0;
            v325 = 0u;
            v326 = 0u;
            v323 = 0u;
            v324 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
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
                v327 = v187;
                v328 = v187;
                v329 = v187;
                v330 = v187;
                v343 = v187;
                v344 = v187;
                v345 = v187;
                v346 = v187;
                v359 = v187;
                v360 = v187;
                v361 = v187;
                v362 = v187;
                v375 = v187;
                v376 = v187;
                v377 = v187;
                v186 = 8;
                v378 = v187;
              }

              else
              {
                v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v327, 256, v184, v185);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v327, 256, v184, v185, v89);
              v186 = 128;
            }
          }

          else
          {
            v186 = 0;
            v329 = 0u;
            v330 = 0u;
            v327 = 0u;
            v328 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v346 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
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
                v267 = v191;
                v268 = v191;
                v269 = v191;
                v270 = v191;
                v283 = v191;
                v284 = v191;
                v285 = v191;
                v286 = v191;
                v299 = v191;
                v300 = v191;
                v301 = v191;
                v302 = v191;
                v315 = v191;
                v316 = v191;
                v190 = 8;
                v317 = v191;
                v318 = v191;
              }

              else
              {
                v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v267, 256, v188, v189);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v267, 256, v188, v189, v89);
              v190 = 128;
            }
          }

          else
          {
            v190 = 0;
            v269 = 0u;
            v270 = 0u;
            v267 = 0u;
            v268 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
            v286 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v315 = 0u;
            v316 = 0u;
            v317 = 0u;
            v318 = 0u;
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
                v271 = v195;
                v272 = v195;
                v273 = v195;
                v274 = v195;
                v287 = v195;
                v288 = v195;
                v289 = v195;
                v290 = v195;
                v303 = v195;
                v304 = v195;
                v305 = v195;
                v306 = v195;
                v319 = v195;
                v320 = v195;
                v194 = 8;
                v321 = v195;
                v322 = v195;
              }

              else
              {
                v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 256, v192, v193);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v271, 256, v192, v193, v89);
              v194 = 128;
            }
          }

          else
          {
            v194 = 0;
            v273 = 0u;
            v274 = 0u;
            v271 = 0u;
            v272 = 0u;
            v287 = 0u;
            v288 = 0u;
            v289 = 0u;
            v290 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = 0u;
            v306 = 0u;
            v319 = 0u;
            v320 = 0u;
            v321 = 0u;
            v322 = 0u;
          }

          v196 = (v192 + v194);
          v197 = v80[6];
          if (v80[6])
          {
            if (v197 < 0xF0)
            {
              if (v197 == 7)
              {
                v201 = vld1q_dup_f64(v196);
                v331 = v201;
                v332 = v201;
                v333 = v201;
                v334 = v201;
                v347 = v201;
                v348 = v201;
                v349 = v201;
                v350 = v201;
                v363 = v201;
                v364 = v201;
                v365 = v201;
                v366 = v201;
                v379 = v201;
                v380 = v201;
                v381 = v201;
                v198 = 8;
                v382 = v201;
                v199 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_189;
                }
              }

              else
              {
                v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v331, 256, v196, v197);
                v199 = v80[7];
                if (!v80[7])
                {
LABEL_189:
                  v337 = 0u;
                  v338 = 0u;
                  v335 = 0u;
                  v336 = 0u;
                  v351 = 0u;
                  v352 = 0u;
                  v353 = 0u;
                  v354 = 0u;
                  v367 = 0u;
                  v368 = 0u;
                  v369 = 0u;
                  v370 = 0u;
                  v383 = 0u;
                  v384 = 0u;
                  v385 = 0u;
                  v386 = 0u;
LABEL_193:
                  result = v248;
                  v45 = v42 + 1;
                  goto LABEL_203;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v331, 256, v196, v197, v89);
              v198 = 128;
              v199 = v80[7];
              if (!v80[7])
              {
                goto LABEL_189;
              }
            }
          }

          else
          {
            v198 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v199 = v80[7];
            if (!v80[7])
            {
              goto LABEL_189;
            }
          }

          v200 = (v196 + v198);
          if (v199 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v335, 256, v200, v199, v89);
            goto LABEL_193;
          }

          v45 = v42 + 1;
          if (v199 == 7)
          {
            v202 = vld1q_dup_f64(v200);
            v335 = v202;
            v336 = v202;
            v337 = v202;
            v338 = v202;
            v351 = v202;
            v352 = v202;
            v353 = v202;
            v354 = v202;
            v367 = v202;
            v368 = v202;
            v369 = v202;
            v370 = v202;
            v383 = v202;
            v384 = v202;
            v385 = v202;
            v386 = v202;
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v335, 256, v200, v199);
          }

          result = v248;
LABEL_203:
          v203 = v254;
          if (v254)
          {
            v204 = 0;
            v205 = &v259.f64[32 * v252 + 2 * v253];
            v206 = v255;
            do
            {
              if (v206)
              {
                v207 = 0;
                v208 = v250 + v251 * v204;
                do
                {
                  *(v208 + v207) = *(v205 + v207);
                  ++v207;
                  v206 = v255;
                }

                while (16 * v255 > v207);
                v203 = v254;
              }

              ++v204;
              v205 += 16;
            }

            while (v204 < v203);
          }

LABEL_29:
          v28 = v42 == v237 >> 4;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v227;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v130 = v15;
  v17 = v16;
  v19 = v18;
  v125 = v20;
  v126 = v21;
  v114 = v22;
  v23 = v12;
  v147[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v129 = v14;
  v24 = v14 >> 3;
  v113 = v14 + a10 - 1;
  v115 = v113 >> 3;
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
  if (v24 <= v115)
  {
    v122 = v130 + a9 - 1;
    if (v130 >> 3 <= v122 >> 3)
    {
      result = v23;
      v132 = (v19 - 1) >> 3;
      v112 = (v17 - 1) >> 3;
      v109 = v19 - 1;
      v116 = (v19 - 1) & 7;
      v110 = ((v17 - 1) & 7) + 1;
      v111 = (v17 - 1) & 7;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v120 = v34;
      v108 = 8 * v26 * v25;
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

        if (v113 < v35)
        {
          v35 = v113;
        }

        v128 = 8 * v24;
        v119 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v111;
        v118 = v38;
        v40 = v38 != 8;
        v41 = v130 >> 3;
        v42 = v110;
        if (v24 != v112)
        {
          v42 = 8;
        }

        v131 = v42;
        if (v24 != v112)
        {
          v39 = v40;
        }

        v117 = v39;
        v127 = v114 + (v36 - v129) * a11;
        v43 = v130;
        do
        {
          v49 = 8 * v41;
          v50 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v51 = v43;
          }

          else
          {
            v51 = 8 * v41;
          }

          if (v122 < v50)
          {
            v50 = v130 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v41 == v132)
          {
            v54 = v116 + 1;
          }

          else
          {
            v54 = 8;
          }

          v55 = 1;
          if (v128 >= v129 && v49 >= v43)
          {
            v56 = v52 != v116;
            if (v41 != v132)
            {
              v56 = v53 != 8;
            }

            v55 = v56 || v117;
          }

          if (v123)
          {
            v77 = 0;
            v78 = v108 >> (*(result + 57) != 0);
            v79 = 1;
            if (v78 <= 63)
            {
              if (v78 > 15)
              {
                if (v78 == 16)
                {
                  v79 = 0;
                  v80 = 0;
                  v81 = 64;
                  v77 = 128;
                }

                else
                {
                  v80 = 1;
                  v81 = 0;
                  if (v78 == 32)
                  {
                    v79 = 0;
                    v80 = 0;
                    v77 = 64;
                    v81 = 64;
                  }
                }
              }

              else if (v78 == 4)
              {
                v79 = 0;
                v80 = 0;
                v81 = 128;
                v77 = 256;
              }

              else
              {
                v80 = 1;
                v81 = 0;
                if (v78 == 8)
                {
                  v79 = 0;
                  v80 = 0;
                  v77 = 128;
                  v81 = 128;
                }
              }
            }

            else if (v78 <= 255)
            {
              if (v78 == 64)
              {
                v79 = 0;
                v80 = 0;
                v81 = 32;
                v77 = 64;
              }

              else
              {
                v80 = 1;
                v81 = 0;
                if (v78 == 128)
                {
                  v79 = 0;
                  v80 = 0;
                  v77 = 32;
                  v81 = 32;
                }
              }
            }

            else if (v78 == 256)
            {
              v79 = 0;
              v80 = 0;
              v81 = 16;
              v77 = 32;
            }

            else if (v78 == 512)
            {
              v79 = 0;
              v80 = 0;
              v77 = 16;
              v81 = 16;
            }

            else
            {
              v80 = 1;
              v81 = 0;
              if (v78 == 1024)
              {
                v79 = 0;
                v81 = 8;
                v77 = 16;
              }
            }

            v96 = (v77 >> 3) - 1;
            if (v79)
            {
              v97 = 0;
            }

            else
            {
              v97 = 32 - __clz(~(-1 << -__clz(v96)));
            }

            v98 = (v81 >> 3) - 1;
            if (v80)
            {
              v99 = 0;
              if (v97)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v99 = 32 - __clz(~(-1 << -__clz(v98)));
              if (v99 | v97)
              {
LABEL_114:
                v100 = 0;
                v101 = 0;
                v102 = v41 & v96;
                v103 = v24 & v98;
                v104 = v97 != 0;
                v105 = v99 != 0;
                v106 = 1;
                do
                {
                  --v97;
                  if (v104)
                  {
                    v101 |= (v106 & v102) << v100++;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  --v99;
                  if (v105)
                  {
                    v101 |= (v106 & v103) << v100++;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v106 *= 2;
                  --v100;
                  v105 = v99 != 0;
                  v104 = v97 != 0;
                }

                while (v99 | v97);
                v107 = v101 << 10;
                result = v133;
                goto LABEL_126;
              }
            }

            v107 = 0;
LABEL_126:
            v64 = v107 + ((v49 / v77 + v128 / v81 * ((v77 + v109) / v77)) << 14);
            goto LABEL_56;
          }

          if (v121)
          {
            v57 = 0;
            v58 = 0;
            v59 = 1;
            v60 = v120.i8[0];
            v61 = v120.i8[4];
            v63 = v121.i32[0];
            v62 = v121.i32[1];
            do
            {
              --v62;
              if (v61)
              {
                v58 |= (v59 & v41) << v57++;
              }

              else
              {
                v62 = 0;
              }

              --v63;
              if (v60)
              {
                v58 |= (v59 & v24) << v57++;
              }

              else
              {
                v63 = 0;
              }

              v59 *= 2;
              --v57;
              v60 = v63 != 0;
              v61 = v62 != 0;
            }

            while (v63 | v62);
            v64 = v58 << 10;
          }

          else
          {
            v64 = 0;
          }

LABEL_56:
          v65 = *(result + 128) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
          {
            v67 = 0;
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
          }

          v68 = *(result + 132) >> (*(result + 144) + a12);
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
            if (!v67)
            {
LABEL_81:
              v76 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
            if (!(v70 | v67))
            {
              goto LABEL_81;
            }
          }

          v71 = 0;
          v72 = 0;
          v73 = v67 != 0;
          v74 = v70 != 0;
          v75 = 1;
          do
          {
            --v67;
            if (v73)
            {
              v72 |= (v75 & v41) << v71++;
            }

            else
            {
              v67 = 0;
            }

            --v70;
            if (v74)
            {
              v72 |= (v75 & v24) << v71++;
            }

            else
            {
              v70 = 0;
            }

            v75 *= 2;
            --v71;
            v74 = v70 != 0;
            v73 = v67 != 0;
          }

          while (v70 | v67);
          v76 = 8 * v72;
LABEL_82:
          v82 = (v125 + v64);
          if (v124)
          {
            v83 = v53;
            memcpy(__dst, (v125 + v64), sizeof(__dst));
            v53 = v83;
            result = v133;
            v82 = __dst;
          }

          v84 = (v126 + v76);
          v85 = v127 + 32 * (v51 - v43);
          if (!(v55 & 1 | (v54 < 8u)) && v131 > 7)
          {
            v44 = *(*(result + 208) + 52);
            v45 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v85, a11, v82, *v84, v44)];
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v85 + 128, a11, v45, v84[1], v44);
            v47 = v85 + 4 * a11;
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47, a11, v46, v84[2], v44);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47 + 128, a11, v46 + v48, v84[3], v44);
LABEL_29:
            v43 = v130;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v82;
          v141 = v54;
          v142 = v131;
          v137 = v119;
          v138 = v51 - v49;
          block[6] = v84;
          v135 = v85;
          v136 = a11;
          v139 = v118;
          v140 = v53;
          if (v55)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v86 = *(*(result + 208) + 52);
          v87 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v144, 256, v82, *v84, v86)];
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v145, 256, v87, v84[1], v86);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v146, 256, v88, v84[2], v86);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v147, 256, v88 + v89, v84[3], v86);
          v90 = v139;
          v43 = v130;
          if (v139)
          {
            v91 = 0;
            v92 = &v144[256 * v137 + 32 * v138];
            v93 = v140;
            do
            {
              if (v93)
              {
                v94 = 0;
                v95 = v135 + v136 * v91;
                do
                {
                  *(v95 + v94) = v92[v94];
                  ++v94;
                  v93 = v140;
                }

                while (32 * v140 > v94);
                v90 = v139;
              }

              ++v91;
              v92 += 256;
            }

            while (v91 < v90);
          }

LABEL_30:
          v28 = v41++ == v122 >> 3;
          result = v133;
        }

        while (!v28);
        v28 = v24++ == v115;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v224 = a8;
  v17 = a8 >> 3;
  v205 = a8 + a10 - 1;
  v207 = v205 >> 3;
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
  v219 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v207)
  {
    v217 = a7 + a9 - 1;
    if (a7 >> 3 <= v217 >> 3)
    {
      v226 = (a5 - 1) >> 3;
      v202 = a5 - 1;
      v210 = (a5 - 1) & 7;
      v203 = (a6 - 1) & 7;
      v204 = (a6 - 1) >> 3;
      v208 = 4 * a11;
      v209 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v215 = v27.i64[0];
      v216 = v27.i32[0] | v27.i32[1];
      v214 = v26.i64[0];
      v201 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v224)
        {
          v29 = v224;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v205 < v28)
        {
          v28 = v205;
        }

        v223 = 8 * v17;
        v213 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v203;
        v212 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 3;
        v35 = v203 + 1;
        if (v17 != v204)
        {
          v35 = 8;
        }

        v225 = v35;
        if (v17 != v204)
        {
          v32 = v33;
        }

        v211 = v32;
        v222 = a2 + (v29 - v224) * a11;
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

          if (v217 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v34 == v226)
          {
            v42 = v210 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v223 >= v224 && v37 >= a7)
          {
            v44 = v40 != v210;
            if (v34 != v226)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v211;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v201 >> (*(a1 + 57) != 0);
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

            v189 = (v65 >> 3) - 1;
            if (v67)
            {
              v190 = 0;
            }

            else
            {
              v190 = 32 - __clz(~(-1 << -__clz(v189)));
            }

            v191 = (v69 >> 3) - 1;
            if (v68)
            {
              v192 = 0;
              if (v190)
              {
                goto LABEL_259;
              }
            }

            else
            {
              v192 = 32 - __clz(~(-1 << -__clz(v191)));
              if (v192 | v190)
              {
LABEL_259:
                v193 = 0;
                v194 = 0;
                v195 = v34 & v189;
                v196 = v17 & v191;
                v197 = v190 != 0;
                v198 = v192 != 0;
                v199 = 1;
                do
                {
                  --v190;
                  if (v197)
                  {
                    v194 |= (v199 & v195) << v193++;
                  }

                  else
                  {
                    v190 = 0;
                  }

                  --v192;
                  if (v198)
                  {
                    v194 |= (v199 & v196) << v193++;
                  }

                  else
                  {
                    v192 = 0;
                  }

                  v199 *= 2;
                  --v193;
                  v198 = v192 != 0;
                  v197 = v190 != 0;
                }

                while (v192 | v190);
                v200 = v194 << 7;
                goto LABEL_271;
              }
            }

            v200 = 0;
LABEL_271:
            v52 = v200 + ((v37 / v65 + v223 / v69 * ((v65 + v202) / v65)) << 14);
            goto LABEL_56;
          }

          if (v216)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v214;
            v49 = BYTE4(v214);
            v51 = v215;
            v50 = HIDWORD(v215);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
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
            v52 = v46 << 7;
          }

          else
          {
            v52 = 0;
          }

LABEL_56:
          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v56 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_81:
              v64 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_81;
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
LABEL_82:
          v70 = (a3 + v52);
          if (v219)
          {
            v71 = v70[13];
            v236[12] = v70[12];
            v236[13] = v71;
            v72 = v70[15];
            v236[14] = v70[14];
            v236[15] = v72;
            v73 = v70[9];
            v236[8] = v70[8];
            v236[9] = v73;
            v74 = v70[11];
            v236[10] = v70[10];
            v236[11] = v74;
            v75 = v70[5];
            v236[4] = v70[4];
            v236[5] = v75;
            v76 = v70[7];
            v236[6] = v70[6];
            v236[7] = v76;
            v77 = v70[1];
            v236[0] = *v70;
            v236[1] = v77;
            v27 = v70[2];
            v26 = v70[3];
            v70 = v236;
            v236[2] = v27;
            v236[3] = v26;
          }

          v78 = (a4 + v64);
          v79 = (v222 + 4 * (v39 - a7));
          if (!(v43 & 1 | (v42 < 8u)) && v225 > 7)
          {
            v80 = *(a1 + 208);
            v81 = *(v80 + 52);
            v82 = *v78;
            if (*v78)
            {
              if (v82 < 0xF0)
              {
                if (v82 == 31)
                {
                  v27.i64[0] = v70->i64[0];
                  v26.i64[0] = v70->i64[1];
                  v89 = v70[1].i64[0];
                  v90 = v70[1].i64[1];
                  v79->i64[0] = v70->i64[0];
                  v79->i64[1] = v89;
                  v91 = (v79->i64 + a11);
                  *v91 = v26.i64[0];
                  v91[1] = v90;
                  v83 = 32;
                }

                else if (v82 == 96)
                {
                  v27 = vld1q_dup_s8(v70->i8);
                  *v79 = v27;
                  *(v79 + a11) = v27;
                  v83 = 1;
                }

                else
                {
                  v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v222 + 4 * (v39 - a7)), a11, v70, v82, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v222 + 4 * (v39 - a7)), a11, v70, v82, *(v80 + 52)).u64[0];
                v83 = 16;
              }
            }

            else
            {
              v83 = 0;
              v79->i64[0] = 0;
              v79->i64[1] = 0;
              v88 = (v79->i64 + a11);
              *v88 = 0;
              v88[1] = 0;
            }

            v92 = v70->u64 + v83;
            v93 = (v79 + v209);
            v94 = v78[1];
            if (v78[1])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 31)
                {
                  v27.i64[0] = *v92;
                  v26.i64[0] = *(v92 + 8);
                  v97 = *(v92 + 16);
                  v98 = *(v92 + 24);
                  v93->i64[0] = *v92;
                  v93->i64[1] = v97;
                  v99 = (v93->i64 + a11);
                  *v99 = v26.i64[0];
                  v99[1] = v98;
                  v95 = 32;
                }

                else if (v94 == 96)
                {
                  v27 = vld1q_dup_s8(v92);
                  *v93 = v27;
                  *(v93 + a11) = v27;
                  v95 = 1;
                }

                else
                {
                  v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v209), a11, v92, v94, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v79 + v209), a11, v92, v94, v81).u64[0];
                v95 = 16;
              }
            }

            else
            {
              v95 = 0;
              v93->i64[0] = 0;
              v93->i64[1] = 0;
              v96 = (v93->i64 + a11);
              *v96 = 0;
              v96[1] = 0;
            }

            v100 = v92 + v95;
            v101 = v79 + 1;
            v102 = v78[2];
            if (v78[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 31)
                {
                  v27.i64[0] = *v100;
                  v26.i64[0] = *(v100 + 8);
                  v105 = *(v100 + 16);
                  v106 = *(v100 + 24);
                  v79[1].i64[0] = *v100;
                  v79[1].i64[1] = v105;
                  v107 = (v101->i64 + a11);
                  *v107 = v26.i64[0];
                  v107[1] = v106;
                  v103 = 32;
                }

                else if (v102 == 96)
                {
                  v27 = vld1q_dup_s8(v100);
                  *v101 = v27;
                  *(v101 + a11) = v27;
                  v103 = 1;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v101, a11, v100, v102, v81).u64[0];
                v103 = 16;
              }
            }

            else
            {
              v103 = 0;
              v101->i64[0] = 0;
              v79[1].i64[1] = 0;
              v104 = (v101->i64 + a11);
              *v104 = 0;
              v104[1] = 0;
            }

            v108 = v100 + v103;
            v109 = v93 + 1;
            v110 = v78[3];
            if (v78[3])
            {
              if (v110 < 0xF0)
              {
                if (v110 == 31)
                {
                  v27.i64[0] = *v108;
                  v26.i64[0] = *(v108 + 8);
                  v113 = *(v108 + 16);
                  v114 = *(v108 + 24);
                  v93[1].i64[0] = *v108;
                  v93[1].i64[1] = v113;
                  v115 = (v109->i64 + a11);
                  *v115 = v26.i64[0];
                  v115[1] = v114;
                  v111 = 32;
                }

                else if (v110 == 96)
                {
                  v27 = vld1q_dup_s8(v108);
                  *v109 = v27;
                  *(v109 + a11) = v27;
                  v111 = 1;
                }

                else
                {
                  v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v109, a11, v108, v110, v81).u64[0];
                v111 = 16;
              }
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v93[1].i64[1] = 0;
              v112 = (v109->i64 + a11);
              *v112 = 0;
              v112[1] = 0;
            }

            v116 = v108 + v111;
            v117 = (v79 + v208);
            v118 = v78[4];
            if (v78[4])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 31)
                {
                  v27.i64[0] = *v116;
                  v26.i64[0] = *(v116 + 8);
                  v121 = *(v116 + 16);
                  v122 = *(v116 + 24);
                  v117->i64[0] = *v116;
                  v117->i64[1] = v121;
                  v123 = (v117->i64 + a11);
                  *v123 = v26.i64[0];
                  v123[1] = v122;
                  v119 = 32;
                }

                else if (v118 == 96)
                {
                  v27 = vld1q_dup_s8(v116);
                  *v117 = v27;
                  *(v117 + a11) = v27;
                  v119 = 1;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v208), a11, v116, v118, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v79 + v208), a11, v116, v118, v81).u64[0];
                v119 = 16;
              }
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v117->i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
            }

            v124 = v116 + v119;
            v125 = (v79 + 6 * a11);
            v126 = v78[5];
            if (v78[5])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 31)
                {
                  v27.i64[0] = *v124;
                  v26.i64[0] = *(v124 + 8);
                  v129 = *(v124 + 16);
                  v130 = *(v124 + 24);
                  v125->i64[0] = *v124;
                  v125->i64[1] = v129;
                  v131 = (v125->i64 + a11);
                  *v131 = v26.i64[0];
                  v131[1] = v130;
                  v127 = 32;
                }

                else if (v126 == 96)
                {
                  v27 = vld1q_dup_s8(v124);
                  *v125 = v27;
                  *(v125 + a11) = v27;
                  v127 = 1;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, a11, v124, v126, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125, a11, v124, v126, v81).u64[0];
                v127 = 16;
              }
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v125->i64[1] = 0;
              v128 = (v125->i64 + a11);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v124 + v127;
            v133 = v117 + 1;
            v134 = v78[6];
            if (v78[6])
            {
              if (v134 < 0xF0)
              {
                if (v134 == 31)
                {
                  v27.i64[0] = *v132;
                  v26.i64[0] = *(v132 + 8);
                  v137 = *(v132 + 16);
                  v138 = *(v132 + 24);
                  v117[1].i64[0] = *v132;
                  v117[1].i64[1] = v137;
                  v139 = (v133->i64 + a11);
                  *v139 = v26.i64[0];
                  v139[1] = v138;
                  v135 = 32;
                }

                else if (v134 == 96)
                {
                  v27 = vld1q_dup_s8(v132);
                  *v133 = v27;
                  *(v133 + a11) = v27;
                  v135 = 1;
                }

                else
                {
                  v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v133, a11, v132, v134, v81).u64[0];
                v135 = 16;
              }
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v117[1].i64[1] = 0;
              v136 = (v133->i64 + a11);
              *v136 = 0;
              v136[1] = 0;
            }

            v140 = v125 + 1;
            v141 = v78[7];
            if (v78[7])
            {
              v142 = v132 + v135;
              if (v141 < 0xF0)
              {
                if (v141 == 31)
                {
                  v27.i64[0] = *v142;
                  v26.i64[0] = *(v142 + 8);
                  v144 = *(v142 + 16);
                  v145 = *(v142 + 24);
                  v125[1].i64[0] = *v142;
                  v125[1].i64[1] = v144;
                  v146 = (v140->i64 + a11);
                  *v146 = v26.i64[0];
                  v146[1] = v145;
                }

                else if (v141 == 96)
                {
                  v27 = vld1q_dup_s8(v142);
                  *v140 = v27;
                  *(v140 + a11) = v27;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v140, a11, v142, v141, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v140, a11, v142, v141, v81).u64[0];
              }
            }

            else
            {
              v140->i64[0] = 0;
              v125[1].i64[1] = 0;
              v143 = (v140->i64 + a11);
              *v143 = 0;
              v143[1] = 0;
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v70;
          v234 = v42;
          v235 = v225;
          v230 = v213;
          v231 = v39 - v37;
          block[6] = a4 + v64;
          v228 = v222 + 4 * (v39 - a7);
          v229 = a11;
          v232 = v212;
          v233 = v41;
          if (v43)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v84 = *(a1 + 208);
          v85 = *(v84 + 52);
          v86 = *v78;
          if (*v78)
          {
            if (v86 < 0xF0)
            {
              if (v86 == 31)
              {
                v27.i64[0] = v70->i64[0];
                v26.i64[0] = v70->i64[1];
                v147 = v70[1].i64[0];
                v148 = v70[1].i64[1];
                v237.i64[0] = v70->i64[0];
                v237.i64[1] = v147;
                v239.i64[0] = v26.i64[0];
                v239.i64[1] = v148;
                v87 = 32;
              }

              else if (v86 == 96)
              {
                v27 = vld1q_dup_s8(v70->i8);
                v237 = v27;
                v239 = v27;
                v87 = 1;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v237, 32, v70, v86, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v237, 32, v70, v86, *(v84 + 52)).u64[0];
              v87 = 16;
            }
          }

          else
          {
            v87 = 0;
            v237 = 0uLL;
            v239 = 0uLL;
          }

          v149 = v70->u64 + v87;
          v150 = v78[1];
          if (v78[1])
          {
            if (v150 < 0xF0)
            {
              if (v150 == 31)
              {
                v27.i64[0] = *v149;
                v26.i64[0] = *(v149 + 8);
                v152 = *(v149 + 16);
                v153 = *(v149 + 24);
                v241.i64[0] = *v149;
                v241.i64[1] = v152;
                v243.i64[0] = v26.i64[0];
                v243.i64[1] = v153;
                v151 = 32;
              }

              else if (v150 == 96)
              {
                v27 = vld1q_dup_s8(v149);
                v241 = v27;
                v243 = v27;
                v151 = 1;
              }

              else
              {
                v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v241, 32, v149, v150, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v241, 32, v149, v150, v85).u64[0];
              v151 = 16;
            }
          }

          else
          {
            v151 = 0;
            v241 = 0uLL;
            v243 = 0uLL;
          }

          v154 = v149 + v151;
          v155 = v78[2];
          if (v78[2])
          {
            if (v155 < 0xF0)
            {
              if (v155 == 31)
              {
                v27.i64[0] = *v154;
                v26.i64[0] = *(v154 + 8);
                v157 = *(v154 + 16);
                v158 = *(v154 + 24);
                v238.i64[0] = *v154;
                v238.i64[1] = v157;
                v240.i64[0] = v26.i64[0];
                v240.i64[1] = v158;
                v156 = 32;
              }

              else if (v155 == 96)
              {
                v27 = vld1q_dup_s8(v154);
                v238 = v27;
                v240 = v27;
                v156 = 1;
              }

              else
              {
                v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v238, 32, v154, v155, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v238, 32, v154, v155, v85).u64[0];
              v156 = 16;
            }
          }

          else
          {
            v156 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v159 = v154 + v156;
          v160 = v78[3];
          if (v78[3])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 31)
              {
                v27.i64[0] = *v159;
                v26.i64[0] = *(v159 + 8);
                v162 = *(v159 + 16);
                v163 = *(v159 + 24);
                v242.i64[0] = *v159;
                v242.i64[1] = v162;
                v244.i64[0] = v26.i64[0];
                v244.i64[1] = v163;
                v161 = 32;
              }

              else if (v160 == 96)
              {
                v27 = vld1q_dup_s8(v159);
                v242 = v27;
                v244 = v27;
                v161 = 1;
              }

              else
              {
                v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v242, 32, v159, v160, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v242, 32, v159, v160, v85).u64[0];
              v161 = 16;
            }
          }

          else
          {
            v161 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v164 = v159 + v161;
          v165 = v78[4];
          if (v78[4])
          {
            if (v165 < 0xF0)
            {
              if (v165 == 31)
              {
                v27.i64[0] = *v164;
                v26.i64[0] = *(v164 + 8);
                v167 = *(v164 + 16);
                v168 = *(v164 + 24);
                v245.i64[0] = *v164;
                v245.i64[1] = v167;
                v247.i64[0] = v26.i64[0];
                v247.i64[1] = v168;
                v166 = 32;
              }

              else if (v165 == 96)
              {
                v27 = vld1q_dup_s8(v164);
                v245 = v27;
                v247 = v27;
                v166 = 1;
              }

              else
              {
                v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 32, v164, v165, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v245, 32, v164, v165, v85).u64[0];
              v166 = 16;
            }
          }

          else
          {
            v166 = 0;
            v245 = 0uLL;
            v247 = 0uLL;
          }

          v169 = v164 + v166;
          v170 = v78[5];
          if (v78[5])
          {
            if (v170 < 0xF0)
            {
              if (v170 == 31)
              {
                v27.i64[0] = *v169;
                v26.i64[0] = *(v169 + 8);
                v172 = *(v169 + 16);
                v173 = *(v169 + 24);
                v249.i64[0] = *v169;
                v249.i64[1] = v172;
                v251.i64[0] = v26.i64[0];
                v251.i64[1] = v173;
                v171 = 32;
              }

              else if (v170 == 96)
              {
                v27 = vld1q_dup_s8(v169);
                v249 = v27;
                v251 = v27;
                v171 = 1;
              }

              else
              {
                v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v249, 32, v169, v170, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v249, 32, v169, v170, v85).u64[0];
              v171 = 16;
            }
          }

          else
          {
            v171 = 0;
            v249 = 0uLL;
            v251 = 0uLL;
          }

          v174 = v169 + v171;
          v175 = v78[6];
          if (v78[6])
          {
            if (v175 < 0xF0)
            {
              if (v175 == 31)
              {
                v27.i64[0] = *v174;
                v26.i64[0] = *(v174 + 8);
                v185 = *(v174 + 16);
                v186 = *(v174 + 24);
                v246.i64[0] = *v174;
                v246.i64[1] = v185;
                v248.i64[0] = v26.i64[0];
                v248.i64[1] = v186;
                v176 = 32;
                v177 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_216;
                }
              }

              else if (v175 == 96)
              {
                v27 = vld1q_dup_s8(v174);
                v246 = v27;
                v248 = v27;
                v176 = 1;
                v177 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 32, v174, v175, *v27.i64, *v26.i8);
                v177 = v78[7];
                if (!v78[7])
                {
LABEL_216:
                  v250 = 0uLL;
                  v252 = 0uLL;
                  goto LABEL_220;
                }
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 32, v174, v175, v85).u64[0];
              v176 = 16;
              v177 = v78[7];
              if (!v78[7])
              {
                goto LABEL_216;
              }
            }
          }

          else
          {
            v176 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v177 = v78[7];
            if (!v78[7])
            {
              goto LABEL_216;
            }
          }

          v178 = v174 + v176;
          if (v177 < 0xF0)
          {
            if (v177 == 31)
            {
              v27.i64[0] = *v178;
              v26.i64[0] = *(v178 + 8);
              v187 = *(v178 + 16);
              v188 = *(v178 + 24);
              v250.i64[0] = *v178;
              v250.i64[1] = v187;
              v252.i64[0] = v26.i64[0];
              v252.i64[1] = v188;
            }

            else if (v177 == 96)
            {
              v27 = vld1q_dup_s8(v178);
              v250 = v27;
              v252 = v27;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v250, 32, v178, v177, *v27.i64, *v26.i8);
            }
          }

          else
          {
            v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v250, 32, v178, v177, v85).u64[0];
          }

LABEL_220:
          v36 = v34 + 1;
          v179 = v232;
          if (v232)
          {
            v180 = 0;
            v181 = &v237.i8[32 * v230 + 4 * v231];
            v182 = v233;
            do
            {
              if (v182)
              {
                v183 = 0;
                v184 = v228 + v229 * v180;
                do
                {
                  *(v184 + v183) = v181[v183];
                  ++v183;
                  v182 = v233;
                }

                while (4 * v233 > v183);
                v179 = v232;
              }

              ++v180;
              v181 += 32;
            }

            while (v180 < v179);
          }

LABEL_30:
          v21 = v34 == v217 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v207;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v159[24] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v137 = a8;
  v16 = a8 >> 3;
  v119 = a8 + a10 - 1;
  v121 = v119 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v141 = a1;
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
  v132 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v131 = result;
  if (v16 <= v121)
  {
    v130 = a7 + a9 - 1;
    if (a7 >> 3 <= v130 >> 3)
    {
      result = a1;
      v25 = a11;
      v140 = (a5 - 1) >> 3;
      v116 = a5 - 1;
      v124 = (a5 - 1) & 7;
      v117 = (a6 - 1) & 7;
      v118 = (a6 - 1) >> 3;
      v122 = 4 * a11;
      v123 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v129 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v128 = v27;
      v115 = 8 * v18 * v17;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v137)
        {
          v29 = v137;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v119 < v28)
        {
          v28 = v119;
        }

        v136 = 8 * v16;
        v127 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v117;
        v126 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 3;
        v35 = v117 + 1;
        if (v16 != v118)
        {
          v35 = 8;
        }

        v139 = v35;
        if (v16 != v118)
        {
          v32 = v33;
        }

        v125 = v32;
        v135 = a2 + (v29 - v137) * v25;
        v36 = a7;
        do
        {
          v48 = 8 * v34;
          v49 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= v36)
          {
            v50 = v36;
          }

          else
          {
            v50 = 8 * v34;
          }

          if (v130 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v34 == v140)
          {
            v53 = v124 + 1;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (v136 >= v137 && v48 >= v36)
          {
            v55 = v51 != v124;
            if (v34 != v140)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v125;
          }

          if (v131)
          {
            v76 = 0;
            v77 = v115 >> (*(result + 57) != 0);
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
              v78 = 0;
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
                v78 = 0;
                v80 = 8;
                v76 = 16;
              }
            }

            v103 = (v76 >> 3) - 1;
            if (v78)
            {
              v104 = 0;
            }

            else
            {
              v104 = 32 - __clz(~(-1 << -__clz(v103)));
            }

            v105 = (v80 >> 3) - 1;
            if (v79)
            {
              v106 = 0;
              if (v104)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v106 = 32 - __clz(~(-1 << -__clz(v105)));
              if (v106 | v104)
              {
LABEL_114:
                v107 = 0;
                v108 = 0;
                v109 = v34 & v103;
                v110 = v16 & v105;
                v111 = v104 != 0;
                v112 = v106 != 0;
                v113 = 1;
                do
                {
                  --v104;
                  if (v111)
                  {
                    v108 |= (v113 & v109) << v107++;
                  }

                  else
                  {
                    v104 = 0;
                  }

                  --v106;
                  if (v112)
                  {
                    v108 |= (v113 & v110) << v107++;
                  }

                  else
                  {
                    v106 = 0;
                  }

                  v113 *= 2;
                  --v107;
                  v112 = v106 != 0;
                  v111 = v104 != 0;
                }

                while (v106 | v104);
                v114 = v108 << 9;
                result = v141;
                goto LABEL_126;
              }
            }

            v114 = 0;
LABEL_126:
            v63 = v114 + ((v48 / v76 + v136 / v80 * ((v76 + v116) / v76)) << 14);
            goto LABEL_56;
          }

          if (v129)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v128.i8[0];
            v60 = v128.i8[4];
            v62 = v129.i32[0];
            v61 = v129.i32[1];
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

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
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
          if (v132)
          {
            v82 = v52;
            v83 = v25;
            v84 = v53;
            v85 = v50;
            v86 = v54;
            memcpy(__dst, (a3 + v63), sizeof(__dst));
            v54 = v86;
            v50 = v85;
            v48 = 8 * v34;
            v53 = v84;
            v25 = v83;
            v52 = v82;
            result = v141;
            v81 = __dst;
          }

          v87 = (a4 + v75);
          v88 = v135 + 16 * (v50 - v36);
          if (!(v54 & 1 | (v53 < 8u)) && v139 > 7)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v135 + 16 * (v50 - v36), v25, v81, *v87, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v123, v25, v38, v87[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + 64, v25, v39, v87[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v123 + 64, v25, v40, v87[3], v37);
            v42 = v88 + v122;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v122, v25, v41, v87[4], v37);
            v44 = v88 + 6 * a11;
            v45 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44, v25, v43, v87[5], v37);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v42 + 64, v25, v45, v87[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44 + 64, v25, v45 + v46, v87[7], v37);
LABEL_29:
            v36 = a7;
            v47 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v149 = v53;
          v150 = v139;
          v145 = v127;
          v146 = v50 - v48;
          block[6] = v87;
          v143 = v135 + 16 * (v50 - v36);
          v144 = v25;
          v147 = v126;
          v148 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v89 = *(*(result + 208) + 52);
          v90 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v152, 128, v81, *v87, v89)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 128, v90, v87[1], v89);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 128, v91, v87[2], v89);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 128, v92, v87[3], v89);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v156, 128, v93, v87[4], v89);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v158, 128, v94, v87[5], v89);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v157, 128, v95, v87[6], v89);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v159, 128, v95 + v96, v87[7], v89);
          v97 = v147;
          v36 = a7;
          v47 = v34 + 1;
          if (v147)
          {
            v98 = 0;
            v99 = &v152[128 * v145 + 16 * v146];
            v100 = v148;
            do
            {
              if (v100)
              {
                v101 = 0;
                v102 = v143 + v144 * v98;
                do
                {
                  *(v102 + v101) = v99[v101];
                  ++v101;
                  v100 = v148;
                }

                while (16 * v148 > v101);
                v97 = v147;
              }

              ++v98;
              v99 += 128;
            }

            while (v98 < v97);
          }

LABEL_30:
          v20 = v34 == v130 >> 3;
          v34 = v47;
          result = v141;
        }

        while (!v20);
        v20 = v16++ == v121;
      }

      while (!v20);
    }
  }

  return result;
}