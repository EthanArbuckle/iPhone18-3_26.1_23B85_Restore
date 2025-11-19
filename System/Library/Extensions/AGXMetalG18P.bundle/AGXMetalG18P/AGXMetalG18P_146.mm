uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v208 = v15;
  v17 = v16;
  v19 = v18;
  v203 = v20;
  v204 = v21;
  v191 = v22;
  v23 = v12;
  v350 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v207 = v14;
  v24 = v14 >> 2;
  v190 = v14 + a10 - 1;
  v192 = v190 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v211 = v23;
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
  v202 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v201 = result;
  if (v24 <= v192)
  {
    v200 = v208 + a9 - 1;
    if (v208 >> 3 <= v200 >> 3)
    {
      result = v23;
      v33 = a11;
      v210 = (v19 - 1) >> 3;
      v187 = v19 - 1;
      v194 = (v19 - 1) & 7;
      v188 = (v17 - 1) & 3;
      v189 = (v17 - 1) >> 2;
      v193 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v199 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v198 = v35;
      v186 = 8 * v26 * v25;
      do
      {
        v36 = (4 * v24) | 3;
        if (4 * v24 <= v207)
        {
          v37 = v207;
        }

        else
        {
          v37 = 4 * v24;
        }

        if (v190 < v36)
        {
          v36 = v190;
        }

        v206 = 4 * v24;
        v197 = v37 - 4 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v188;
        v196 = v39;
        v41 = v39 != 4;
        v42 = v208 >> 3;
        v43 = v188 + 1;
        if (v24 != v189)
        {
          v43 = 4;
        }

        v209 = v43;
        if (v24 != v189)
        {
          v40 = v41;
        }

        v195 = v40;
        v205 = v191 + (v37 - v207) * v33;
        v44 = v208;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v200 < v47)
          {
            v47 = v208 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v210)
          {
            v51 = v194 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v206 >= v207 && v46 >= v44)
          {
            v53 = v49 != v194;
            if (v42 != v210)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v195;
          }

          if (v201)
          {
            v74 = 0;
            v75 = v186 >> (*(result + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v74 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v74 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v74 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v77 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v74 = 16;
              v77 = 16;
            }

            else
            {
              v77 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v77 = 8;
                v74 = 16;
              }
            }

            v174 = (v74 >> 3) - 1;
            v175 = (v77 >> 2) - 1;
            if ((v76 & 1) != 0 || (v176 = 32 - __clz(~(-1 << -__clz(v174))), v177 = 32 - __clz(~(-1 << -__clz(v175))), !(v177 | v176)))
            {
              v185 = 0;
            }

            else
            {
              v178 = 0;
              v179 = 0;
              v180 = v42 & v174;
              v181 = v24 & v175;
              v182 = v177 != 0;
              v183 = v176 != 0;
              v184 = 1;
              do
              {
                --v177;
                if (v182)
                {
                  v179 |= (v184 & v181) << v178++;
                }

                else
                {
                  v177 = 0;
                }

                --v176;
                if (v183)
                {
                  v179 |= (v184 & v180) << v178++;
                }

                else
                {
                  v176 = 0;
                }

                v184 *= 2;
                --v178;
                v183 = v176 != 0;
                v182 = v177 != 0;
              }

              while (v176 | v177);
              v185 = v179 << 10;
              result = v211;
            }

            v61 = v185 + ((v46 / v74 + v206 / v77 * ((v74 + v187) / v74)) << 14);
          }

          else if (v199)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v198.i8[0];
            v57 = v198.i8[4];
            v59 = v199.i32[0];
            v60 = v199.i32[1];
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

          v62 = *(result + 128) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(result + 132) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 3;
          if (v66 < 8)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 2) - 1)));
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
          v78 = (v203 + v61);
          if (v202)
          {
            memcpy(__dst, v78, sizeof(__dst));
            result = v211;
            v78 = __dst;
          }

          v79 = (v204 + v73);
          v80 = v205 + ((v48 - v44) << 6);
          if (!(v52 & 1 | (v51 < 8u)) && v209 > 3)
          {
            v81 = *(result + 208);
            v82 = *(v81 + 52);
            v83 = *v79;
            if (*v79)
            {
              v33 = a11;
              if (v83 < 0xF0)
              {
                if (v83 == 7)
                {
                  v90 = vld1q_dup_f64(v78);
                  *v80 = v90;
                  *(v80 + 16) = v90;
                  *(v80 + 32) = v90;
                  *(v80 + 48) = v90;
                  *(v80 + 64) = v90;
                  *(v80 + 80) = v90;
                  *(v80 + 96) = v90;
                  *(v80 + 112) = v90;
                  v91 = (v80 + a11);
                  *v91 = v90;
                  v91[1] = v90;
                  v91[2] = v90;
                  v91[3] = v90;
                  v91[4] = v90;
                  v91[5] = v90;
                  v91[6] = v90;
                  v91[7] = v90;
                  v84 = 8;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v80, a11, v78, v83);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v80, a11, v78, v83, *(v81 + 52));
                v84 = 128;
              }
            }

            else
            {
              v84 = 0;
              *(v80 + 96) = 0u;
              *(v80 + 112) = 0u;
              *(v80 + 64) = 0u;
              *(v80 + 80) = 0u;
              *(v80 + 32) = 0u;
              *(v80 + 48) = 0u;
              *v80 = 0u;
              *(v80 + 16) = 0u;
              v33 = a11;
              v89 = (v80 + a11);
              v89[6] = 0u;
              v89[7] = 0u;
              v89[4] = 0u;
              v89[5] = 0u;
              v89[2] = 0u;
              v89[3] = 0u;
              *v89 = 0u;
              v89[1] = 0u;
            }

            v93 = &v78[v84];
            v94 = (v80 + 128);
            v95 = v79[1];
            if (v79[1])
            {
              if (v95 < 0xF0)
              {
                if (v95 == 7)
                {
                  v98 = vld1q_dup_f64(v93);
                  *(v80 + 128) = v98;
                  *(v80 + 144) = v98;
                  *(v80 + 160) = v98;
                  *(v80 + 176) = v98;
                  *(v80 + 192) = v98;
                  *(v80 + 208) = v98;
                  *(v80 + 224) = v98;
                  *(v80 + 240) = v98;
                  v99 = (v94 + v33);
                  *v99 = v98;
                  v99[1] = v98;
                  v99[2] = v98;
                  v99[3] = v98;
                  v99[4] = v98;
                  v99[5] = v98;
                  v99[6] = v98;
                  v99[7] = v98;
                  v96 = 8;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v94, v33, v93, v95);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v94, v33, v93, v95, v82);
                v96 = 128;
              }
            }

            else
            {
              v96 = 0;
              *(v80 + 224) = 0u;
              *(v80 + 240) = 0u;
              *(v80 + 192) = 0u;
              *(v80 + 208) = 0u;
              *(v80 + 160) = 0u;
              *(v80 + 176) = 0u;
              *v94->i8 = 0u;
              *(v80 + 144) = 0u;
              v97 = (v94 + v33);
              v97[6] = 0u;
              v97[7] = 0u;
              v97[4] = 0u;
              v97[5] = 0u;
              v97[2] = 0u;
              v97[3] = 0u;
              *v97 = 0u;
              v97[1] = 0u;
            }

            v100 = (v93 + v96);
            v101 = (v80 + v193);
            v102 = v79[2];
            if (v79[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 7)
                {
                  v105 = vld1q_dup_f64(v100);
                  *v101->i8 = v105;
                  *v101[2].i8 = v105;
                  *v101[4].i8 = v105;
                  *v101[6].i8 = v105;
                  *v101[8].i8 = v105;
                  *v101[10].i8 = v105;
                  *v101[12].i8 = v105;
                  *v101[14].i8 = v105;
                  v106 = (v101 + v33);
                  *v106 = v105;
                  v106[1] = v105;
                  v106[2] = v105;
                  v106[3] = v105;
                  v106[4] = v105;
                  v106[5] = v105;
                  v106[6] = v105;
                  v106[7] = v105;
                  v103 = 8;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v80 + v193, v33, v100, v102);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v80 + v193), v33, v100, v102, v82);
                v103 = 128;
              }
            }

            else
            {
              v103 = 0;
              *v101[12].i8 = 0u;
              *v101[14].i8 = 0u;
              *v101[8].i8 = 0u;
              *v101[10].i8 = 0u;
              *v101[4].i8 = 0u;
              *v101[6].i8 = 0u;
              *v101->i8 = 0u;
              *v101[2].i8 = 0u;
              v104 = (v101 + v33);
              v104[6] = 0u;
              v104[7] = 0u;
              v104[4] = 0u;
              v104[5] = 0u;
              v104[2] = 0u;
              v104[3] = 0u;
              *v104 = 0u;
              v104[1] = 0u;
            }

            v107 = (v100 + v103);
            v108 = v101 + 16;
            v109 = v79[3];
            if (v79[3])
            {
              if (v109 < 0xF0)
              {
                if (v109 == 7)
                {
                  v112 = vld1q_dup_f64(v107);
                  *v101[16].i8 = v112;
                  *v101[18].i8 = v112;
                  *v101[20].i8 = v112;
                  *v101[22].i8 = v112;
                  *v101[24].i8 = v112;
                  *v101[26].i8 = v112;
                  *v101[28].i8 = v112;
                  *v101[30].i8 = v112;
                  v113 = (v108 + v33);
                  *v113 = v112;
                  v113[1] = v112;
                  v113[2] = v112;
                  v113[3] = v112;
                  v113[4] = v112;
                  v113[5] = v112;
                  v113[6] = v112;
                  v113[7] = v112;
                  v110 = 8;
                }

                else
                {
                  v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v108, v33, v107, v109);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v108, v33, v107, v109, v82);
                v110 = 128;
              }
            }

            else
            {
              v110 = 0;
              *v101[28].i8 = 0u;
              *v101[30].i8 = 0u;
              *v101[24].i8 = 0u;
              *v101[26].i8 = 0u;
              *v101[20].i8 = 0u;
              *v101[22].i8 = 0u;
              *v108->i8 = 0u;
              *v101[18].i8 = 0u;
              v111 = (v108 + v33);
              v111[6] = 0u;
              v111[7] = 0u;
              v111[4] = 0u;
              v111[5] = 0u;
              v111[2] = 0u;
              v111[3] = 0u;
              *v111 = 0u;
              v111[1] = 0u;
            }

            v114 = (v107 + v110);
            v115 = (v80 + 256);
            v116 = v79[4];
            if (v79[4])
            {
              if (v116 < 0xF0)
              {
                if (v116 == 7)
                {
                  v119 = vld1q_dup_f64(v114);
                  *(v80 + 256) = v119;
                  *(v80 + 272) = v119;
                  *(v80 + 288) = v119;
                  *(v80 + 304) = v119;
                  *(v80 + 320) = v119;
                  *(v80 + 336) = v119;
                  *(v80 + 352) = v119;
                  *(v80 + 368) = v119;
                  v120 = (v115 + v33);
                  *v120 = v119;
                  v120[1] = v119;
                  v120[2] = v119;
                  v120[3] = v119;
                  v120[4] = v119;
                  v120[5] = v119;
                  v120[6] = v119;
                  v120[7] = v119;
                  v117 = 8;
                }

                else
                {
                  v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v115, v33, v114, v116);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v115, v33, v114, v116, v82);
                v117 = 128;
              }
            }

            else
            {
              v117 = 0;
              *(v80 + 352) = 0u;
              *(v80 + 368) = 0u;
              *(v80 + 320) = 0u;
              *(v80 + 336) = 0u;
              *(v80 + 288) = 0u;
              *(v80 + 304) = 0u;
              *v115->i8 = 0u;
              *(v80 + 272) = 0u;
              v118 = (v115 + v33);
              v118[6] = 0u;
              v118[7] = 0u;
              v118[4] = 0u;
              v118[5] = 0u;
              v118[2] = 0u;
              v118[3] = 0u;
              *v118 = 0u;
              v118[1] = 0u;
            }

            v121 = (v114 + v117);
            v122 = (v80 + 384);
            v123 = v79[5];
            if (v79[5])
            {
              if (v123 < 0xF0)
              {
                if (v123 == 7)
                {
                  v126 = vld1q_dup_f64(v121);
                  *(v80 + 384) = v126;
                  *(v80 + 400) = v126;
                  *(v80 + 416) = v126;
                  *(v80 + 432) = v126;
                  *(v80 + 448) = v126;
                  *(v80 + 464) = v126;
                  *(v80 + 480) = v126;
                  *(v80 + 496) = v126;
                  v127 = (v122 + v33);
                  *v127 = v126;
                  v127[1] = v126;
                  v127[2] = v126;
                  v127[3] = v126;
                  v127[4] = v126;
                  v127[5] = v126;
                  v124 = 8;
                  v127[6] = v126;
                  v127[7] = v126;
                }

                else
                {
                  v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v122, v33, v121, v123);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v122, v33, v121, v123, v82);
                v124 = 128;
              }
            }

            else
            {
              v124 = 0;
              *(v80 + 480) = 0u;
              *(v80 + 496) = 0u;
              *(v80 + 448) = 0u;
              *(v80 + 464) = 0u;
              *(v80 + 416) = 0u;
              *(v80 + 432) = 0u;
              *v122->i8 = 0u;
              *(v80 + 400) = 0u;
              v125 = (v122 + v33);
              v125[6] = 0u;
              v125[7] = 0u;
              v125[4] = 0u;
              v125[5] = 0u;
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
            }

            v128 = (v121 + v124);
            v129 = v101 + 32;
            v130 = v79[6];
            if (v79[6])
            {
              if (v130 < 0xF0)
              {
                if (v130 == 7)
                {
                  v133 = vld1q_dup_f64(v128);
                  *v101[32].i8 = v133;
                  *v101[34].i8 = v133;
                  *v101[36].i8 = v133;
                  *v101[38].i8 = v133;
                  *v101[40].i8 = v133;
                  *v101[42].i8 = v133;
                  *v101[44].i8 = v133;
                  *v101[46].i8 = v133;
                  v134 = (v129 + v33);
                  *v134 = v133;
                  v134[1] = v133;
                  v134[2] = v133;
                  v134[3] = v133;
                  v134[4] = v133;
                  v134[5] = v133;
                  v134[6] = v133;
                  v134[7] = v133;
                  v131 = 8;
                }

                else
                {
                  v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v129, v33, v121 + v124, v130);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v129, v33, v121 + v124, v130, v82);
                v131 = 128;
              }
            }

            else
            {
              v131 = 0;
              *v101[44].i8 = 0u;
              *v101[46].i8 = 0u;
              *v101[40].i8 = 0u;
              *v101[42].i8 = 0u;
              *v101[36].i8 = 0u;
              *v101[38].i8 = 0u;
              *v129->i8 = 0u;
              *v101[34].i8 = 0u;
              v132 = (v129 + v33);
              v132[6] = 0u;
              v132[7] = 0u;
              v132[4] = 0u;
              v132[5] = 0u;
              v132[2] = 0u;
              v132[3] = 0u;
              *v132 = 0u;
              v132[1] = 0u;
            }

            v135 = v101 + 48;
            v136 = v79[7];
            if (v79[7])
            {
              v137 = (v128 + v131);
              if (v136 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v135, v33, v137, v136, v82);
                goto LABEL_146;
              }

              v44 = v208;
              if (v136 == 7)
              {
                v139 = vld1q_dup_f64(v137);
                *v101[48].i8 = v139;
                *v101[50].i8 = v139;
                *v101[52].i8 = v139;
                *v101[54].i8 = v139;
                *v101[56].i8 = v139;
                *v101[58].i8 = v139;
                *v101[60].i8 = v139;
                *v101[62].i8 = v139;
                v140 = (v135 + v33);
                *v140 = v139;
                v140[1] = v139;
                v140[2] = v139;
                v140[3] = v139;
                v140[4] = v139;
                v140[5] = v139;
                v140[6] = v139;
                v140[7] = v139;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v135, v33, v137, v136);
              }
            }

            else
            {
              *v101[60].i8 = 0u;
              *v101[62].i8 = 0u;
              *v101[56].i8 = 0u;
              *v101[58].i8 = 0u;
              *v101[52].i8 = 0u;
              *v101[54].i8 = 0u;
              *v135->i8 = 0u;
              *v101[50].i8 = 0u;
              v138 = (v135 + v33);
              v138[6] = 0u;
              v138[7] = 0u;
              v138[4] = 0u;
              v138[5] = 0u;
              v138[2] = 0u;
              v138[3] = 0u;
              *v138 = 0u;
              v138[1] = 0u;
LABEL_146:
              v44 = v208;
            }

            result = v211;
LABEL_29:
            v45 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v78;
          v219 = v51;
          v220 = v209;
          v215 = v197;
          v216 = v48 - v46;
          block[6] = v79;
          v213 = v80;
          v33 = a11;
          v214 = a11;
          v217 = v196;
          v218 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v211;
            v44 = v208;
            goto LABEL_29;
          }

          v85 = *(result + 208);
          v86 = *(v85 + 52);
          v87 = *v79;
          if (*v79)
          {
            if (v87 < 0xF0)
            {
              if (v87 == 7)
              {
                v92 = vld1q_dup_f64(v78);
                v222 = v92;
                v223 = v92;
                v224 = v92;
                v225 = v92;
                v226 = v92;
                v227 = v92;
                v228 = v92;
                v229 = v92;
                v254 = v92;
                v255 = v92;
                v256 = v92;
                v257 = v92;
                v258 = v92;
                v259 = v92;
                v88 = 8;
                v260 = v92;
                v261 = v92;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v222, 512, v78, v87);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v222, 512, v78, v87, *(v85 + 52));
              v88 = 128;
            }
          }

          else
          {
            v88 = 0;
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v141 = &v78[v88];
          v142 = v79[1];
          if (v79[1])
          {
            if (v142 < 0xF0)
            {
              if (v142 == 7)
              {
                v144 = vld1q_dup_f64(v141);
                v230 = v144;
                v231 = v144;
                v232 = v144;
                v233 = v144;
                v234 = v144;
                v235 = v144;
                v236 = v144;
                v237 = v144;
                v262 = v144;
                v263 = v144;
                v264 = v144;
                v265 = v144;
                v266 = v144;
                v267 = v144;
                v143 = 8;
                v268 = v144;
                v269 = v144;
              }

              else
              {
                v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v230, 512, v141, v142);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v230, 512, v141, v142, v86);
              v143 = 128;
            }
          }

          else
          {
            v143 = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
          }

          v145 = (v141 + v143);
          v146 = v79[2];
          if (v79[2])
          {
            if (v146 < 0xF0)
            {
              if (v146 == 7)
              {
                v148 = vld1q_dup_f64(v145);
                v286 = v148;
                v287 = v148;
                v288 = v148;
                v289 = v148;
                v290 = v148;
                v291 = v148;
                v292 = v148;
                v293 = v148;
                v318 = v148;
                v319 = v148;
                v320 = v148;
                v321 = v148;
                v322 = v148;
                v323 = v148;
                v324 = v148;
                v147 = 8;
                v325 = v148;
              }

              else
              {
                v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v286, 512, v145, v146);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v286, 512, v145, v146, v86);
              v147 = 128;
            }
          }

          else
          {
            v147 = 0;
            v292 = 0u;
            v293 = 0u;
            v290 = 0u;
            v291 = 0u;
            v288 = 0u;
            v289 = 0u;
            v286 = 0u;
            v287 = 0u;
            v318 = 0u;
            v319 = 0u;
            v320 = 0u;
            v321 = 0u;
            v322 = 0u;
            v323 = 0u;
            v324 = 0u;
            v325 = 0u;
          }

          v149 = (v145 + v147);
          v150 = v79[3];
          if (v79[3])
          {
            if (v150 < 0xF0)
            {
              if (v150 == 7)
              {
                v152 = vld1q_dup_f64(v149);
                v294 = v152;
                v295 = v152;
                v296 = v152;
                v297 = v152;
                v298 = v152;
                v299 = v152;
                v300 = v152;
                v301 = v152;
                v326 = v152;
                v327 = v152;
                v328 = v152;
                v329 = v152;
                v330 = v152;
                v331 = v152;
                v332 = v152;
                v151 = 8;
                v333 = v152;
              }

              else
              {
                v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v294, 512, v149, v150);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v294, 512, v149, v150, v86);
              v151 = 128;
            }
          }

          else
          {
            v151 = 0;
            v300 = 0u;
            v301 = 0u;
            v298 = 0u;
            v299 = 0u;
            v296 = 0u;
            v297 = 0u;
            v294 = 0u;
            v295 = 0u;
            v326 = 0u;
            v327 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
            v333 = 0u;
          }

          v153 = (v149 + v151);
          v154 = v79[4];
          if (v79[4])
          {
            if (v154 < 0xF0)
            {
              if (v154 == 7)
              {
                v156 = vld1q_dup_f64(v153);
                v238 = v156;
                v239 = v156;
                v240 = v156;
                v241 = v156;
                v242 = v156;
                v243 = v156;
                v244 = v156;
                v245 = v156;
                v270 = v156;
                v271 = v156;
                v272 = v156;
                v273 = v156;
                v274 = v156;
                v275 = v156;
                v155 = 8;
                v276 = v156;
                v277 = v156;
              }

              else
              {
                v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v238, 512, v153, v154);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v238, 512, v153, v154, v86);
              v155 = 128;
            }
          }

          else
          {
            v155 = 0;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v157 = (v153 + v155);
          v158 = v79[5];
          if (v79[5])
          {
            if (v158 < 0xF0)
            {
              if (v158 == 7)
              {
                v160 = vld1q_dup_f64(v157);
                v246 = v160;
                v247 = v160;
                v248 = v160;
                v249 = v160;
                v250 = v160;
                v251 = v160;
                v252 = v160;
                v253 = v160;
                v278 = v160;
                v279 = v160;
                v280 = v160;
                v281 = v160;
                v282 = v160;
                v283 = v160;
                v159 = 8;
                v284 = v160;
                v285 = v160;
              }

              else
              {
                v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 512, v157, v158);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 512, v157, v158, v86);
              v159 = 128;
            }
          }

          else
          {
            v159 = 0;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
          }

          v161 = (v157 + v159);
          v162 = v79[6];
          if (v79[6])
          {
            if (v162 < 0xF0)
            {
              if (v162 == 7)
              {
                v166 = vld1q_dup_f64(v161);
                v302 = v166;
                v303 = v166;
                v304 = v166;
                v305 = v166;
                v306 = v166;
                v307 = v166;
                v308 = v166;
                v309 = v166;
                v334 = v166;
                v335 = v166;
                v336 = v166;
                v337 = v166;
                v338 = v166;
                v339 = v166;
                v340 = v166;
                v163 = 8;
                v341 = v166;
                v164 = v79[7];
                if (!v79[7])
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v302, 512, v161, v162);
                v164 = v79[7];
                if (!v79[7])
                {
LABEL_190:
                  v316 = 0u;
                  v317 = 0u;
                  v314 = 0u;
                  v315 = 0u;
                  v312 = 0u;
                  v313 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v342 = 0u;
                  v343 = 0u;
                  v344 = 0u;
                  v345 = 0u;
                  v346 = 0u;
                  v347 = 0u;
                  v348 = 0u;
                  v349 = 0u;
                  v44 = v208;
                  goto LABEL_202;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v302, 512, v161, v162, v86);
              v163 = 128;
              v164 = v79[7];
              if (!v79[7])
              {
                goto LABEL_190;
              }
            }
          }

          else
          {
            v163 = 0;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v164 = v79[7];
            if (!v79[7])
            {
              goto LABEL_190;
            }
          }

          v165 = (v161 + v163);
          if (v164 < 0xF0)
          {
            v44 = v208;
            if (v164 == 7)
            {
              v167 = vld1q_dup_f64(v165);
              v310 = v167;
              v311 = v167;
              v312 = v167;
              v313 = v167;
              v314 = v167;
              v315 = v167;
              v316 = v167;
              v317 = v167;
              v342 = v167;
              v343 = v167;
              v344 = v167;
              v345 = v167;
              v346 = v167;
              v347 = v167;
              v348 = v167;
              v349 = v167;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v310, 512, v165, v164);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v310, 512, v165, v164, v86);
            v44 = v208;
          }

LABEL_202:
          result = v211;
          v45 = v42 + 1;
          v168 = v217;
          if (v217)
          {
            v169 = 0;
            v170 = &v222.f64[64 * v215 + 8 * v216];
            v171 = v218;
            do
            {
              if (v171)
              {
                v172 = 0;
                v173 = v213 + v214 * v169;
                do
                {
                  *(v173 + v172) = *(v170 + v172);
                  ++v172;
                  v171 = v218;
                }

                while (v218 << 6 > v172);
                v168 = v217;
              }

              ++v169;
              v170 += 32;
            }

            while (v169 < v168);
          }

LABEL_30:
          v28 = v42 == v200 >> 3;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v192;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v124 = v20;
  v125 = v21;
  v113 = v22;
  v23 = v12;
  v146[96] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v128 = v14;
  v24 = v14 >> 2;
  v112 = v14 + a10 - 1;
  v114 = v112 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v132 = v23;
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
  v123 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v122 = result;
  if (v24 <= v114)
  {
    v121 = v129 + a9 - 1;
    if (v129 >> 2 <= v121 >> 2)
    {
      result = v23;
      v131 = (v19 - 1) >> 2;
      v111 = (v17 - 1) >> 2;
      v108 = v19 - 1;
      v115 = (v19 - 1) & 3;
      v109 = ((v17 - 1) & 3) + 1;
      v110 = (v17 - 1) & 3;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v34 = vcgt_u32(v33, 0x700000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 2uLL))))))), v34);
      v119 = v34;
      v107 = 8 * v26 * v25;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v128)
        {
          v36 = v128;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v112 < v35)
        {
          v35 = v112;
        }

        v127 = 4 * v24;
        v118 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v110;
        v117 = v38;
        v40 = v38 != 4;
        v41 = v129 >> 2;
        v42 = v109;
        if (v24 != v111)
        {
          v42 = 4;
        }

        v130 = v42;
        if (v24 != v111)
        {
          v39 = v40;
        }

        v116 = v39;
        v126 = v113 + (v36 - v128) * a11;
        v43 = v129;
        do
        {
          v49 = 4 * v41;
          v50 = 4 * (v41 + 1) - 1;
          if (4 * v41 <= v43)
          {
            v51 = v43;
          }

          else
          {
            v51 = 4 * v41;
          }

          if (v121 < v50)
          {
            v50 = v129 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v41 == v131)
          {
            v54 = v115 + 1;
          }

          else
          {
            v54 = 4;
          }

          v55 = 1;
          if (v127 >= v128 && v49 >= v43)
          {
            v56 = v52 != v115;
            if (v41 != v131)
            {
              v56 = v53 != 4;
            }

            v55 = v56 || v116;
          }

          if (v122)
          {
            v77 = 0;
            v78 = v107 >> (*(result + 57) != 0);
            v79 = 1;
            if (v78 <= 63)
            {
              if (v78 > 15)
              {
                if (v78 == 16)
                {
                  v79 = 0;
                  v80 = 64;
                  v77 = 128;
                }

                else
                {
                  v80 = 0;
                  if (v78 == 32)
                  {
                    v79 = 0;
                    v77 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v78 == 4)
              {
                v79 = 0;
                v80 = 128;
                v77 = 256;
              }

              else
              {
                v80 = 0;
                if (v78 == 8)
                {
                  v79 = 0;
                  v77 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v78 <= 255)
            {
              if (v78 == 64)
              {
                v79 = 0;
                v80 = 32;
                v77 = 64;
              }

              else
              {
                v80 = 0;
                if (v78 == 128)
                {
                  v79 = 0;
                  v77 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v78 == 256)
            {
              v79 = 0;
              v80 = 16;
              v77 = 32;
            }

            else if (v78 == 512)
            {
              v79 = 0;
              v77 = 16;
              v80 = 16;
            }

            else
            {
              v80 = 0;
              if (v78 == 1024)
              {
                v79 = 0;
                v80 = 8;
                v77 = 16;
              }
            }

            v95 = (v77 >> 2) - 1;
            v96 = (v80 >> 2) - 1;
            if ((v79 & 1) != 0 || (v97 = 32 - __clz(~(-1 << -__clz(v95))), v98 = 32 - __clz(~(-1 << -__clz(v96))), !(v98 | v97)))
            {
              v106 = 0;
            }

            else
            {
              v99 = 0;
              v100 = 0;
              v101 = v41 & v95;
              v102 = v24 & v96;
              v103 = v97 != 0;
              v104 = v98 != 0;
              v105 = 1;
              do
              {
                --v97;
                if (v103)
                {
                  v100 |= (v105 & v101) << v99++;
                }

                else
                {
                  v97 = 0;
                }

                --v98;
                if (v104)
                {
                  v100 |= (v105 & v102) << v99++;
                }

                else
                {
                  v98 = 0;
                }

                v105 *= 2;
                --v99;
                v104 = v98 != 0;
                v103 = v97 != 0;
              }

              while (v98 | v97);
              v106 = v100 << 10;
              result = v132;
            }

            v64 = v106 + ((v49 / v77 + v127 / v80 * ((v77 + v108) / v77)) << 14);
          }

          else if (v120)
          {
            v57 = 0;
            v58 = 0;
            v59 = 1;
            v60 = v119.i8[0];
            v61 = v119.i8[4];
            v63 = v120.i32[0];
            v62 = v120.i32[1];
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

          v65 = *(result + 128) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 3;
          if (v66 < 8)
          {
            v67 = 0;
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 2) - 1)));
          }

          v68 = *(result + 132) >> (*(result + 144) + a12);
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = v68 + 3;
          if (v69 < 8)
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
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 2) - 1)));
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
          v81 = (v124 + v64);
          if (v123)
          {
            v82 = v53;
            memcpy(__dst, (v124 + v64), sizeof(__dst));
            v53 = v82;
            result = v132;
            v81 = __dst;
          }

          v83 = (v125 + v76);
          v84 = v126 + ((v51 - v43) << 7);
          if (!(v55 & 1 | (v54 < 4u)) && v130 > 3)
          {
            v44 = *(*(result + 208) + 52);
            v45 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84, a11, v81, *v83, v44)];
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v84 + 256, a11, v45, v83[1], v44);
            v47 = v84 + 2 * a11;
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47, a11, v46, v83[2], v44);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47 + 256, a11, v46 + v48, v83[3], v44);
LABEL_29:
            v43 = v129;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v140 = v54;
          v141 = v130;
          v136 = v118;
          v137 = v51 - v49;
          block[6] = v83;
          v134 = v84;
          v135 = a11;
          v138 = v117;
          v139 = v53;
          if (v55)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v85 = *(*(result + 208) + 52);
          v86 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v143, 512, v81, *v83, v85)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v144, 512, v86, v83[1], v85);
          v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v145, 512, v87, v83[2], v85);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v146, 512, v87 + v88, v83[3], v85);
          v89 = v138;
          v43 = v129;
          if (v138)
          {
            v90 = 0;
            v91 = &v143[512 * v136 + 128 * v137];
            v92 = v139;
            do
            {
              if (v92)
              {
                v93 = 0;
                v94 = v134 + v135 * v90;
                do
                {
                  *(v94 + v93) = v91[v93];
                  ++v93;
                  v92 = v139;
                }

                while (v139 << 7 > v93);
                v89 = v138;
              }

              ++v90;
              v91 += 512;
            }

            while (v90 < v89);
          }

LABEL_30:
          v28 = v41++ == v121 >> 2;
          result = v132;
        }

        while (!v28);
        v28 = v24++ == v114;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v262 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v199 = a8 + a10 - 1;
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
  v198 = v199 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v214 = v24;
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
      v213 = 0;
LABEL_32:
      v210 = v26 - 4;
      v202 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v196 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v213 = v31 >= v25;
    goto LABEL_32;
  }

  v213 = 0;
  v196 = 0;
  v202 = 0;
  v210 = 0;
LABEL_33:
  if (v18 <= v198)
  {
    v212 = a7 + a9 - 1;
    if (a7 >> 4 <= v212 >> 4)
    {
      v219 = v19 >> 4;
      v205 = v19 & 0xF;
      v211 = (v19 & 0xF) + 1;
      v194 = v20 & 7;
      v195 = v20 >> 3;
      v204 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v35.val[0] = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v34);
      v201 = v35.val[0];
      v203 = v35.val[0].i32[0] | v35.val[0].i32[1];
      v200 = v34;
      v206 = a8;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v199 < v36)
        {
          v36 = v199;
        }

        v209 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v208 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v194 + 1;
        if (v18 != v195)
        {
          v43 = 8;
        }

        v218 = v43;
        if (v18 == v195)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v207 = v44;
        v217 = a2 + (v37 - a8) * a11;
        do
        {
          v48 = 16 * v42;
          v49 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= a7)
          {
            v50 = a7;
          }

          else
          {
            v50 = 16 * v42;
          }

          if (v212 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v49 - v50 + 1;
          if (v42 == v219)
          {
            v53 = v211;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (8 * v18 >= a8 && v48 >= a7)
          {
            v55 = v51 != v205;
            if (v42 != v219)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v207;
          }

          if (v213)
          {
            if (v210 | v202)
            {
              v56 = 0;
              v57 = 0;
              v58 = v210 != 0;
              v59 = 1;
              v60 = v202 != 0;
              v61 = v202;
              v62 = v210;
              do
              {
                --v61;
                if (v60)
                {
                  v57 |= (v18 & ~(-1 << v202) & v59) << v56++;
                }

                else
                {
                  v61 = 0;
                }

                --v62;
                if (v58)
                {
                  v57 |= (v42 & ~(-1 << v210) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v62 != 0;
                v60 = v61 != 0;
              }

              while (v62 | v61);
              v63 = v57 << 8;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(a1 + 336) * ((v42 >> v210) + (v18 >> v202) * v196);
          }

          else if (v203)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v68 = v200;
            v67 = BYTE4(v200);
            v69 = v201.i32[0];
            v70 = v201.i32[1];
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v18) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v42) << v64++;
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
            v71 = v65 << 8;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v75 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 7;
          if (v76 < 0x10)
          {
            v77 = 0;
            if (!v74)
            {
LABEL_107:
              v83 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 3) - 1)));
            if (!(v77 | v74))
            {
              goto LABEL_107;
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
              v79 |= (v82 & v18) << v78++;
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
LABEL_108:
          v84 = (a3 + v71);
          if (v214)
          {
            v85 = v84[13];
            v229[12] = v84[12];
            v229[13] = v85;
            v86 = v84[15];
            v229[14] = v84[14];
            v229[15] = v86;
            v87 = v84[9];
            v229[8] = v84[8];
            v229[9] = v87;
            v88 = v84[11];
            v229[10] = v84[10];
            v229[11] = v88;
            v89 = v84[5];
            v229[4] = v84[4];
            v229[5] = v89;
            v90 = v84[7];
            v229[6] = v84[6];
            v229[7] = v90;
            v91 = v84[1];
            v229[0] = *v84;
            v229[1] = v91;
            v35 = v84[2];
            v34 = v84[3];
            v84 = v229;
            v229[2] = v35;
            v229[3] = v34;
          }

          v92 = (a4 + v83);
          v93 = (v217 + 2 * (v50 - a7));
          if (v54 & 1 | (v53 < 0x10u) || v218 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v84;
            v227 = v53;
            v228 = v218;
            v223 = v209;
            v224 = v50 - v48;
            block[6] = a4 + v83;
            v221 = v217 + 2 * (v50 - a7);
            v222 = a11;
            v225 = v208;
            v226 = v52;
            if (v54)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v159 = v42 + 1;
              goto LABEL_50;
            }

            v97 = *v92;
            if (v97 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v84, 0);
              v230 = v35.val[0];
              v234 = v35.val[0];
              v238 = v35.val[0];
              v242 = v35.val[0];
              v98 = 1;
            }

            else if (v97 == 31)
            {
              *&v34 = *(v84 + 1);
              v160 = (v84 + 1);
              v264 = vld2_f32(v160);
              v35.val[0] = vzip2_s32(*v84, *&v34);
              v230 = vzip1_s32(*v84, *&v34);
              v234 = v35.val[0];
              v238 = v264.val[0];
              v242 = v264.val[1];
              v98 = 32;
            }

            else if (*v92)
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v84, v97, *v35.val, *&v34);
            }

            else
            {
              v98 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
            }

            v161 = (v84 + v98);
            v162 = v92[1];
            if (v162 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v161, 0);
              v231 = v35.val[0];
              v235 = v35.val[0];
              v239 = v35.val[0];
              v243 = v35.val[0];
              v163 = 1;
            }

            else if (v162 == 31)
            {
              *&v34 = v161[1];
              v164 = &v161[2];
              v265 = vld2_f32(v164);
              v35.val[0] = vzip2_s32(*v161, *&v34);
              v231 = vzip1_s32(*v161, *&v34);
              v235 = v35.val[0];
              v239 = v265.val[0];
              v243 = v265.val[1];
              v163 = 32;
            }

            else if (v92[1])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 32, v161, v162, *v35.val, *&v34);
            }

            else
            {
              v163 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
            }

            v165 = (v161 + v163);
            v166 = v92[2];
            if (v166 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v165, 0);
              v246 = v35.val[0];
              v250 = v35.val[0];
              v254 = v35.val[0];
              v258 = v35.val[0];
              v167 = 1;
            }

            else if (v166 == 31)
            {
              *&v34 = v165[1];
              v168 = &v165[2];
              v266 = vld2_f32(v168);
              v35.val[0] = vzip2_s32(*v165, *&v34);
              v246 = vzip1_s32(*v165, *&v34);
              v250 = v35.val[0];
              v254 = v266.val[0];
              v258 = v266.val[1];
              v167 = 32;
            }

            else if (v92[2])
            {
              v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v165, v166, *v35.val, *&v34);
            }

            else
            {
              v167 = 0;
              v246 = 0;
              v250 = 0;
              v254 = 0;
              v258 = 0;
            }

            v169 = (v165 + v167);
            v170 = v92[3];
            if (v170 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v169, 0);
              v247 = v35.val[0];
              v251 = v35.val[0];
              v255 = v35.val[0];
              v259 = v35.val[0];
              v171 = 1;
            }

            else if (v170 == 31)
            {
              *&v34 = v169[1];
              v172 = &v169[2];
              v267 = vld2_f32(v172);
              v35.val[0] = vzip2_s32(*v169, *&v34);
              v247 = vzip1_s32(*v169, *&v34);
              v251 = v35.val[0];
              v255 = v267.val[0];
              v259 = v267.val[1];
              v171 = 32;
            }

            else if (v92[3])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v169, v170, *v35.val, *&v34);
            }

            else
            {
              v171 = 0;
              v247 = 0;
              v251 = 0;
              v255 = 0;
              v259 = 0;
            }

            v173 = (v169 + v171);
            v174 = v92[4];
            if (v174 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v173, 0);
              v232 = v35.val[0];
              v236 = v35.val[0];
              v240 = v35.val[0];
              v244 = v35.val[0];
              v175 = 1;
            }

            else if (v174 == 31)
            {
              *&v34 = v173[1];
              v176 = &v173[2];
              v268 = vld2_f32(v176);
              v35.val[0] = vzip2_s32(*v173, *&v34);
              v232 = vzip1_s32(*v173, *&v34);
              v236 = v35.val[0];
              v240 = v268.val[0];
              v244 = v268.val[1];
              v175 = 32;
            }

            else if (v92[4])
            {
              v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v173, v174, *v35.val, *&v34);
            }

            else
            {
              v175 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
            }

            v177 = (v173 + v175);
            v178 = v92[5];
            if (v178 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v177, 0);
              v233 = v35.val[0];
              v237 = v35.val[0];
              v241 = v35.val[0];
              v245 = v35.val[0];
              v179 = 1;
            }

            else if (v178 == 31)
            {
              *&v34 = v177[1];
              v180 = &v177[2];
              v269 = vld2_f32(v180);
              v35.val[0] = vzip2_s32(*v177, *&v34);
              v233 = vzip1_s32(*v177, *&v34);
              v237 = v35.val[0];
              v241 = v269.val[0];
              v245 = v269.val[1];
              v179 = 32;
            }

            else if (v92[5])
            {
              v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v177, v178, *v35.val, *&v34);
            }

            else
            {
              v179 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v181 = (v177 + v179);
            v182 = v92[6];
            if (v182 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v181, 0);
              v248 = v35.val[0];
              v252 = v35.val[0];
              v256 = v35.val[0];
              v260 = v35.val[0];
              v183 = 1;
            }

            else if (v182 == 31)
            {
              *&v34 = v181[1];
              v184 = &v181[2];
              v270 = vld2_f32(v184);
              v35.val[0] = vzip2_s32(*v181, *&v34);
              v248 = vzip1_s32(*v181, *&v34);
              v252 = v35.val[0];
              v256 = v270.val[0];
              v260 = v270.val[1];
              v183 = 32;
            }

            else if (v92[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v181, v182, *v35.val, *&v34);
            }

            else
            {
              v183 = 0;
              v248 = 0;
              v252 = 0;
              v256 = 0;
              v260 = 0;
            }

            v185 = (v181 + v183);
            v186 = v92[7];
            if (v186 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v185, 0);
              v249 = v35.val[0];
              v253 = v35.val[0];
              v257 = v35.val[0];
              v261 = v35.val[0];
              v159 = v42 + 1;
              v187 = v225;
              if (!v225)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v159 = v42 + 1;
              if (v186 == 31)
              {
                *&v34 = v185[1];
                v188 = &v185[2];
                v271 = vld2_f32(v188);
                v35.val[0] = vzip2_s32(*v185, *&v34);
                v249 = vzip1_s32(*v185, *&v34);
                v253 = v35.val[0];
                v257 = v271.val[0];
                v261 = v271.val[1];
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }

              else if (v186)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v185, v186, *v35.val, *&v34);
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v249 = 0;
                v253 = 0;
                v257 = 0;
                v261 = 0;
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }
            }

            v189 = 0;
            v190 = &v230 + 32 * v223 + 2 * v224;
            v191 = v226;
            do
            {
              if (v191)
              {
                v192 = 0;
                v193 = v221 + v222 * v189;
                do
                {
                  *(v193 + v192) = v190[v192];
                  ++v192;
                  v191 = v226;
                }

                while (2 * v226 > v192);
                v187 = v225;
              }

              ++v189;
              v190 += 32;
            }

            while (v189 < v187);
          }

          else
          {
            v94 = *v92;
            if (v94 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v84, 0);
              *v93 = v35.val[0];
              *(v93 + a11) = v35.val[0];
              v95 = 2 * a11;
              *(v93 + 2 * a11) = v35.val[0];
              *(v93 + 3 * a11) = v35.val[0];
              v96 = 1;
            }

            else
            {
              v95 = 2 * a11;
              if (v94 == 31)
              {
                v99 = (v84 + 1);
                v35 = vld2_f32(v99);
                v100 = *v84;
                v101 = *(v84 + 8);
                *v93 = vzip1_s32(*v84, v101);
                *(v93 + a11) = vzip2_s32(v100, v101);
                v102 = (v93 + 2 * a11);
                *v102 = v35.val[0];
                *(v102 + a11) = v34;
                v96 = 32;
              }

              else if (*v92)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v217 + 2 * (v50 - a7)), a11, v84, v94, *v35.val, *&v34);
                v95 = 2 * a11;
              }

              else
              {
                v96 = 0;
                *v93 = 0;
                *(v93 + a11) = 0;
                *(v93 + 2 * a11) = 0;
                *(v93 + 3 * a11) = 0;
              }
            }

            v103 = (v84 + v96);
            v104 = v93 + 1;
            v105 = v92[1];
            if (v105 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v103, 0);
              *v104 = v35.val[0];
              *(v104 + a11) = v35.val[0];
              *(v104 + v95) = v35.val[0];
              *(v104 + 3 * a11) = v35.val[0];
              v106 = 1;
            }

            else if (v105 == 31)
            {
              v107 = &v103[2];
              v35 = vld2_f32(v107);
              v108 = *v103;
              v109 = v103[1];
              *v104 = vzip1_s32(*v103, v109);
              *(v104 + a11) = vzip2_s32(v108, v109);
              v110 = (v104 + v95);
              *v110 = v35.val[0];
              *(v110 + a11) = v34;
              v106 = 32;
            }

            else if (v92[1])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v104, a11, v103, v105, *v35.val, *&v34);
              v95 = 2 * a11;
              v106 = v111;
            }

            else
            {
              v106 = 0;
              *v104 = 0;
              *(v104 + a11) = 0;
              *(v104 + v95) = 0;
              *(v104 + 3 * a11) = 0;
            }

            v112 = (v103 + v106);
            v113 = (v93 + v204);
            v114 = v92[2];
            if (v114 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v112, 0);
              *v113 = v35.val[0];
              *(v113 + a11) = v35.val[0];
              *(v113 + v95) = v35.val[0];
              *(v113 + 3 * a11) = v35.val[0];
              v115 = 1;
            }

            else if (v114 == 31)
            {
              v116 = &v112[2];
              v35 = vld2_f32(v116);
              v117 = *v112;
              v118 = v112[1];
              *v113 = vzip1_s32(*v112, v118);
              *(v113 + a11) = vzip2_s32(v117, v118);
              v119 = (v113 + v95);
              *v119 = v35.val[0];
              *(v119 + a11) = v34;
              v115 = 32;
            }

            else if (v92[2])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v93 + v204), a11, v112, v114, *v35.val, *&v34);
              v95 = 2 * a11;
            }

            else
            {
              v115 = 0;
              *v113 = 0;
              *(v113 + a11) = 0;
              *(v113 + v95) = 0;
              *(v113 + 3 * a11) = 0;
            }

            v120 = (v112 + v115);
            v121 = v113 + 1;
            v122 = v92[3];
            if (v122 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v120, 0);
              *v121 = v35.val[0];
              *(v121 + a11) = v35.val[0];
              *(v121 + v95) = v35.val[0];
              *(v121 + 3 * a11) = v35.val[0];
              v123 = 1;
            }

            else if (v122 == 31)
            {
              v124 = &v120[2];
              v35 = vld2_f32(v124);
              v125 = *v120;
              v126 = v120[1];
              *v121 = vzip1_s32(*v120, v126);
              *(v121 + a11) = vzip2_s32(v125, v126);
              v127 = (v121 + v95);
              *v127 = v35.val[0];
              *(v127 + a11) = v34;
              v123 = 32;
            }

            else if (v92[3])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, a11, v120, v122, *v35.val, *&v34);
              v95 = 2 * a11;
              v123 = v128;
            }

            else
            {
              v123 = 0;
              *v121 = 0;
              *(v121 + a11) = 0;
              *(v121 + v95) = 0;
              *(v121 + 3 * a11) = 0;
            }

            v129 = (v120 + v123);
            v130 = v93 + 2;
            v131 = v92[4];
            if (v131 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v129, 0);
              *v130 = v35.val[0];
              *(v130 + a11) = v35.val[0];
              *(v130 + v95) = v35.val[0];
              *(v130 + 3 * a11) = v35.val[0];
              v132 = 1;
            }

            else if (v131 == 31)
            {
              v133 = &v129[2];
              v35 = vld2_f32(v133);
              v134 = *v129;
              v135 = v129[1];
              *v130 = vzip1_s32(*v129, v135);
              *(v130 + a11) = vzip2_s32(v134, v135);
              v136 = (v130 + v95);
              *v136 = v35.val[0];
              *(v136 + a11) = v34;
              v132 = 32;
            }

            else if (v92[4])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, a11, v129, v131, *v35.val, *&v34);
              v95 = 2 * a11;
              v132 = v137;
            }

            else
            {
              v132 = 0;
              *v130 = 0;
              *(v130 + a11) = 0;
              *(v130 + v95) = 0;
              *(v130 + 3 * a11) = 0;
            }

            v138 = (v129 + v132);
            v139 = v93 + 3;
            v140 = v92[5];
            if (v140 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v138, 0);
              *v139 = v35.val[0];
              *(v139 + a11) = v35.val[0];
              *(v139 + v95) = v35.val[0];
              *(v139 + 3 * a11) = v35.val[0];
              v141 = 1;
            }

            else if (v140 == 31)
            {
              v142 = &v138[2];
              v35 = vld2_f32(v142);
              v143 = *v138;
              v144 = v138[1];
              *v139 = vzip1_s32(*v138, v144);
              *(v139 + a11) = vzip2_s32(v143, v144);
              v145 = (v139 + v95);
              *v145 = v35.val[0];
              *(v145 + a11) = v34;
              v141 = 32;
            }

            else if (v92[5])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, a11, v138, v140, *v35.val, *&v34);
              v95 = 2 * a11;
              v141 = v146;
            }

            else
            {
              v141 = 0;
              *v139 = 0;
              *(v139 + a11) = 0;
              *(v139 + v95) = 0;
              *(v139 + 3 * a11) = 0;
            }

            v147 = (v138 + v141);
            v148 = v113 + 2;
            v149 = v92[6];
            if (v149 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v147, 0);
              *v148 = v35.val[0];
              *(v148 + a11) = v35.val[0];
              *(v148 + v95) = v35.val[0];
              *(v148 + 3 * a11) = v35.val[0];
              v150 = 1;
              a8 = v206;
            }

            else
            {
              a8 = v206;
              if (v149 == 31)
              {
                v151 = &v147[2];
                v35 = vld2_f32(v151);
                v152 = *v147;
                v153 = v147[1];
                *v148 = vzip1_s32(*v147, v153);
                *(v148 + a11) = vzip2_s32(v152, v153);
                v154 = (v148 + v95);
                *v154 = v35.val[0];
                *(v154 + a11) = v34;
                v150 = 32;
              }

              else if (v92[6])
              {
                v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, a11, v147, v149, *v35.val, *&v34);
                v95 = 2 * a11;
                v150 = v155;
              }

              else
              {
                v150 = 0;
                *v148 = 0;
                *(v148 + a11) = 0;
                *(v148 + v95) = 0;
                *(v148 + 3 * a11) = 0;
              }
            }

            v156 = (v147 + v150);
            v157 = v113 + 3;
            v158 = v92[7];
            if (v158 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v156, 0);
              *v157 = v35.val[0];
              *(v157 + a11) = v35.val[0];
              *(v157 + v95) = v35.val[0];
              *(v157 + 3 * a11) = v35.val[0];
              goto LABEL_172;
            }

            v159 = v42 + 1;
            if (v158 == 31)
            {
              v45 = *v156;
              *&v34 = v156[1];
              v46 = &v156[2];
              v263 = vld2_f32(v46);
              *v157 = vzip1_s32(*v156, *&v34);
              v35.val[0] = vzip2_s32(v45, *&v34);
              *(v157 + a11) = v35.val[0];
              v47 = (v157 + v95);
              *v47 = v263.val[0];
              *(v47 + a11) = v263.val[1];
            }

            else if (v158)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v157, a11, v156, v158, *v35.val, *&v34);
            }

            else
            {
              *v157 = 0;
              *(v157 + a11) = 0;
              *(v157 + v95) = 0;
              *(v157 + 3 * a11) = 0;
            }
          }

LABEL_50:
          v21 = v42 == v212 >> 4;
          v42 = v159;
        }

        while (!v21);
        v21 = v18++ == v198;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v262 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v199 = a8 + a10 - 1;
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
  v198 = v199 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v214 = v24;
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
      v213 = 0;
LABEL_32:
      v210 = v26 - 4;
      v202 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v196 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v213 = v31 >= v25;
    goto LABEL_32;
  }

  v213 = 0;
  v196 = 0;
  v202 = 0;
  v210 = 0;
LABEL_33:
  if (v18 <= v198)
  {
    v212 = a7 + a9 - 1;
    if (a7 >> 4 <= v212 >> 4)
    {
      v219 = v19 >> 4;
      v205 = v19 & 0xF;
      v211 = (v19 & 0xF) + 1;
      v194 = v20 & 7;
      v195 = v20 >> 3;
      v204 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v35.val[0] = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v34);
      v201 = v35.val[0];
      v203 = v35.val[0].i32[0] | v35.val[0].i32[1];
      v200 = v34;
      v206 = a8;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v199 < v36)
        {
          v36 = v199;
        }

        v209 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v208 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v194 + 1;
        if (v18 != v195)
        {
          v43 = 8;
        }

        v218 = v43;
        if (v18 == v195)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v207 = v44;
        v217 = a2 + (v37 - a8) * a11;
        do
        {
          v48 = 16 * v42;
          v49 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= a7)
          {
            v50 = a7;
          }

          else
          {
            v50 = 16 * v42;
          }

          if (v212 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v49 - v50 + 1;
          if (v42 == v219)
          {
            v53 = v211;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (8 * v18 >= a8 && v48 >= a7)
          {
            v55 = v51 != v205;
            if (v42 != v219)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v207;
          }

          if (v213)
          {
            if (v210 | v202)
            {
              v56 = 0;
              v57 = 0;
              v58 = v210 != 0;
              v59 = 1;
              v60 = v202 != 0;
              v61 = v202;
              v62 = v210;
              do
              {
                --v61;
                if (v60)
                {
                  v57 |= (v18 & ~(-1 << v202) & v59) << v56++;
                }

                else
                {
                  v61 = 0;
                }

                --v62;
                if (v58)
                {
                  v57 |= (v42 & ~(-1 << v210) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v62 != 0;
                v60 = v61 != 0;
              }

              while (v62 | v61);
              v63 = v57 << 8;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(a1 + 336) * ((v42 >> v210) + (v18 >> v202) * v196);
          }

          else if (v203)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v68 = v200;
            v67 = BYTE4(v200);
            v69 = v201.i32[0];
            v70 = v201.i32[1];
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v18) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v42) << v64++;
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
            v71 = v65 << 8;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v75 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 7;
          if (v76 < 0x10)
          {
            v77 = 0;
            if (!v74)
            {
LABEL_107:
              v83 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 3) - 1)));
            if (!(v77 | v74))
            {
              goto LABEL_107;
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
              v79 |= (v82 & v18) << v78++;
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
LABEL_108:
          v84 = (a3 + v71);
          if (v214)
          {
            v85 = v84[13];
            v229[12] = v84[12];
            v229[13] = v85;
            v86 = v84[15];
            v229[14] = v84[14];
            v229[15] = v86;
            v87 = v84[9];
            v229[8] = v84[8];
            v229[9] = v87;
            v88 = v84[11];
            v229[10] = v84[10];
            v229[11] = v88;
            v89 = v84[5];
            v229[4] = v84[4];
            v229[5] = v89;
            v90 = v84[7];
            v229[6] = v84[6];
            v229[7] = v90;
            v91 = v84[1];
            v229[0] = *v84;
            v229[1] = v91;
            v35 = v84[2];
            v34 = v84[3];
            v84 = v229;
            v229[2] = v35;
            v229[3] = v34;
          }

          v92 = (a4 + v83);
          v93 = (v217 + 2 * (v50 - a7));
          if (v54 & 1 | (v53 < 0x10u) || v218 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v84;
            v227 = v53;
            v228 = v218;
            v223 = v209;
            v224 = v50 - v48;
            block[6] = a4 + v83;
            v221 = v217 + 2 * (v50 - a7);
            v222 = a11;
            v225 = v208;
            v226 = v52;
            if (v54)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v159 = v42 + 1;
              goto LABEL_50;
            }

            v97 = *v92;
            if (v97 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v84, 0);
              v230 = v35.val[0];
              v234 = v35.val[0];
              v238 = v35.val[0];
              v242 = v35.val[0];
              v98 = 1;
            }

            else if (v97 == 31)
            {
              *&v34 = *(v84 + 1);
              v160 = (v84 + 1);
              v264 = vld2_f32(v160);
              v35.val[0] = vzip2_s32(*v84, *&v34);
              v230 = vzip1_s32(*v84, *&v34);
              v234 = v35.val[0];
              v238 = v264.val[0];
              v242 = v264.val[1];
              v98 = 32;
            }

            else if (*v92)
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v84, v97, *v35.val, *&v34);
            }

            else
            {
              v98 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
            }

            v161 = (v84 + v98);
            v162 = v92[1];
            if (v162 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v161, 0);
              v231 = v35.val[0];
              v235 = v35.val[0];
              v239 = v35.val[0];
              v243 = v35.val[0];
              v163 = 1;
            }

            else if (v162 == 31)
            {
              *&v34 = v161[1];
              v164 = &v161[2];
              v265 = vld2_f32(v164);
              v35.val[0] = vzip2_s32(*v161, *&v34);
              v231 = vzip1_s32(*v161, *&v34);
              v235 = v35.val[0];
              v239 = v265.val[0];
              v243 = v265.val[1];
              v163 = 32;
            }

            else if (v92[1])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 32, v161, v162, *v35.val, *&v34);
            }

            else
            {
              v163 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
            }

            v165 = (v161 + v163);
            v166 = v92[2];
            if (v166 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v165, 0);
              v246 = v35.val[0];
              v250 = v35.val[0];
              v254 = v35.val[0];
              v258 = v35.val[0];
              v167 = 1;
            }

            else if (v166 == 31)
            {
              *&v34 = v165[1];
              v168 = &v165[2];
              v266 = vld2_f32(v168);
              v35.val[0] = vzip2_s32(*v165, *&v34);
              v246 = vzip1_s32(*v165, *&v34);
              v250 = v35.val[0];
              v254 = v266.val[0];
              v258 = v266.val[1];
              v167 = 32;
            }

            else if (v92[2])
            {
              v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v165, v166, *v35.val, *&v34);
            }

            else
            {
              v167 = 0;
              v246 = 0;
              v250 = 0;
              v254 = 0;
              v258 = 0;
            }

            v169 = (v165 + v167);
            v170 = v92[3];
            if (v170 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v169, 0);
              v247 = v35.val[0];
              v251 = v35.val[0];
              v255 = v35.val[0];
              v259 = v35.val[0];
              v171 = 1;
            }

            else if (v170 == 31)
            {
              *&v34 = v169[1];
              v172 = &v169[2];
              v267 = vld2_f32(v172);
              v35.val[0] = vzip2_s32(*v169, *&v34);
              v247 = vzip1_s32(*v169, *&v34);
              v251 = v35.val[0];
              v255 = v267.val[0];
              v259 = v267.val[1];
              v171 = 32;
            }

            else if (v92[3])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v169, v170, *v35.val, *&v34);
            }

            else
            {
              v171 = 0;
              v247 = 0;
              v251 = 0;
              v255 = 0;
              v259 = 0;
            }

            v173 = (v169 + v171);
            v174 = v92[4];
            if (v174 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v173, 0);
              v232 = v35.val[0];
              v236 = v35.val[0];
              v240 = v35.val[0];
              v244 = v35.val[0];
              v175 = 1;
            }

            else if (v174 == 31)
            {
              *&v34 = v173[1];
              v176 = &v173[2];
              v268 = vld2_f32(v176);
              v35.val[0] = vzip2_s32(*v173, *&v34);
              v232 = vzip1_s32(*v173, *&v34);
              v236 = v35.val[0];
              v240 = v268.val[0];
              v244 = v268.val[1];
              v175 = 32;
            }

            else if (v92[4])
            {
              v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v173, v174, *v35.val, *&v34);
            }

            else
            {
              v175 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
            }

            v177 = (v173 + v175);
            v178 = v92[5];
            if (v178 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v177, 0);
              v233 = v35.val[0];
              v237 = v35.val[0];
              v241 = v35.val[0];
              v245 = v35.val[0];
              v179 = 1;
            }

            else if (v178 == 31)
            {
              *&v34 = v177[1];
              v180 = &v177[2];
              v269 = vld2_f32(v180);
              v35.val[0] = vzip2_s32(*v177, *&v34);
              v233 = vzip1_s32(*v177, *&v34);
              v237 = v35.val[0];
              v241 = v269.val[0];
              v245 = v269.val[1];
              v179 = 32;
            }

            else if (v92[5])
            {
              v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v177, v178, *v35.val, *&v34);
            }

            else
            {
              v179 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v181 = (v177 + v179);
            v182 = v92[6];
            if (v182 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v181, 0);
              v248 = v35.val[0];
              v252 = v35.val[0];
              v256 = v35.val[0];
              v260 = v35.val[0];
              v183 = 1;
            }

            else if (v182 == 31)
            {
              *&v34 = v181[1];
              v184 = &v181[2];
              v270 = vld2_f32(v184);
              v35.val[0] = vzip2_s32(*v181, *&v34);
              v248 = vzip1_s32(*v181, *&v34);
              v252 = v35.val[0];
              v256 = v270.val[0];
              v260 = v270.val[1];
              v183 = 32;
            }

            else if (v92[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v181, v182, *v35.val, *&v34);
            }

            else
            {
              v183 = 0;
              v248 = 0;
              v252 = 0;
              v256 = 0;
              v260 = 0;
            }

            v185 = (v181 + v183);
            v186 = v92[7];
            if (v186 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v185, 0);
              v249 = v35.val[0];
              v253 = v35.val[0];
              v257 = v35.val[0];
              v261 = v35.val[0];
              v159 = v42 + 1;
              v187 = v225;
              if (!v225)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v159 = v42 + 1;
              if (v186 == 31)
              {
                *&v34 = v185[1];
                v188 = &v185[2];
                v271 = vld2_f32(v188);
                v35.val[0] = vzip2_s32(*v185, *&v34);
                v249 = vzip1_s32(*v185, *&v34);
                v253 = v35.val[0];
                v257 = v271.val[0];
                v261 = v271.val[1];
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }

              else if (v186)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v185, v186, *v35.val, *&v34);
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v249 = 0;
                v253 = 0;
                v257 = 0;
                v261 = 0;
                v187 = v225;
                if (!v225)
                {
                  goto LABEL_50;
                }
              }
            }

            v189 = 0;
            v190 = &v230 + 32 * v223 + 2 * v224;
            v191 = v226;
            do
            {
              if (v191)
              {
                v192 = 0;
                v193 = v221 + v222 * v189;
                do
                {
                  *(v193 + v192) = v190[v192];
                  ++v192;
                  v191 = v226;
                }

                while (2 * v226 > v192);
                v187 = v225;
              }

              ++v189;
              v190 += 32;
            }

            while (v189 < v187);
          }

          else
          {
            v94 = *v92;
            if (v94 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v84, 0);
              *v93 = v35.val[0];
              *(v93 + a11) = v35.val[0];
              v95 = 2 * a11;
              *(v93 + 2 * a11) = v35.val[0];
              *(v93 + 3 * a11) = v35.val[0];
              v96 = 1;
            }

            else
            {
              v95 = 2 * a11;
              if (v94 == 31)
              {
                v99 = (v84 + 1);
                v35 = vld2_f32(v99);
                v100 = *v84;
                v101 = *(v84 + 8);
                *v93 = vzip1_s32(*v84, v101);
                *(v93 + a11) = vzip2_s32(v100, v101);
                v102 = (v93 + 2 * a11);
                *v102 = v35.val[0];
                *(v102 + a11) = v34;
                v96 = 32;
              }

              else if (*v92)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v217 + 2 * (v50 - a7)), a11, v84, v94, *v35.val, *&v34);
                v95 = 2 * a11;
              }

              else
              {
                v96 = 0;
                *v93 = 0;
                *(v93 + a11) = 0;
                *(v93 + 2 * a11) = 0;
                *(v93 + 3 * a11) = 0;
              }
            }

            v103 = (v84 + v96);
            v104 = v93 + 1;
            v105 = v92[1];
            if (v105 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v103, 0);
              *v104 = v35.val[0];
              *(v104 + a11) = v35.val[0];
              *(v104 + v95) = v35.val[0];
              *(v104 + 3 * a11) = v35.val[0];
              v106 = 1;
            }

            else if (v105 == 31)
            {
              v107 = &v103[2];
              v35 = vld2_f32(v107);
              v108 = *v103;
              v109 = v103[1];
              *v104 = vzip1_s32(*v103, v109);
              *(v104 + a11) = vzip2_s32(v108, v109);
              v110 = (v104 + v95);
              *v110 = v35.val[0];
              *(v110 + a11) = v34;
              v106 = 32;
            }

            else if (v92[1])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v104, a11, v103, v105, *v35.val, *&v34);
              v95 = 2 * a11;
              v106 = v111;
            }

            else
            {
              v106 = 0;
              *v104 = 0;
              *(v104 + a11) = 0;
              *(v104 + v95) = 0;
              *(v104 + 3 * a11) = 0;
            }

            v112 = (v103 + v106);
            v113 = (v93 + v204);
            v114 = v92[2];
            if (v114 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v112, 0);
              *v113 = v35.val[0];
              *(v113 + a11) = v35.val[0];
              *(v113 + v95) = v35.val[0];
              *(v113 + 3 * a11) = v35.val[0];
              v115 = 1;
            }

            else if (v114 == 31)
            {
              v116 = &v112[2];
              v35 = vld2_f32(v116);
              v117 = *v112;
              v118 = v112[1];
              *v113 = vzip1_s32(*v112, v118);
              *(v113 + a11) = vzip2_s32(v117, v118);
              v119 = (v113 + v95);
              *v119 = v35.val[0];
              *(v119 + a11) = v34;
              v115 = 32;
            }

            else if (v92[2])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v93 + v204), a11, v112, v114, *v35.val, *&v34);
              v95 = 2 * a11;
            }

            else
            {
              v115 = 0;
              *v113 = 0;
              *(v113 + a11) = 0;
              *(v113 + v95) = 0;
              *(v113 + 3 * a11) = 0;
            }

            v120 = (v112 + v115);
            v121 = v113 + 1;
            v122 = v92[3];
            if (v122 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v120, 0);
              *v121 = v35.val[0];
              *(v121 + a11) = v35.val[0];
              *(v121 + v95) = v35.val[0];
              *(v121 + 3 * a11) = v35.val[0];
              v123 = 1;
            }

            else if (v122 == 31)
            {
              v124 = &v120[2];
              v35 = vld2_f32(v124);
              v125 = *v120;
              v126 = v120[1];
              *v121 = vzip1_s32(*v120, v126);
              *(v121 + a11) = vzip2_s32(v125, v126);
              v127 = (v121 + v95);
              *v127 = v35.val[0];
              *(v127 + a11) = v34;
              v123 = 32;
            }

            else if (v92[3])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, a11, v120, v122, *v35.val, *&v34);
              v95 = 2 * a11;
              v123 = v128;
            }

            else
            {
              v123 = 0;
              *v121 = 0;
              *(v121 + a11) = 0;
              *(v121 + v95) = 0;
              *(v121 + 3 * a11) = 0;
            }

            v129 = (v120 + v123);
            v130 = v93 + 2;
            v131 = v92[4];
            if (v131 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v129, 0);
              *v130 = v35.val[0];
              *(v130 + a11) = v35.val[0];
              *(v130 + v95) = v35.val[0];
              *(v130 + 3 * a11) = v35.val[0];
              v132 = 1;
            }

            else if (v131 == 31)
            {
              v133 = &v129[2];
              v35 = vld2_f32(v133);
              v134 = *v129;
              v135 = v129[1];
              *v130 = vzip1_s32(*v129, v135);
              *(v130 + a11) = vzip2_s32(v134, v135);
              v136 = (v130 + v95);
              *v136 = v35.val[0];
              *(v136 + a11) = v34;
              v132 = 32;
            }

            else if (v92[4])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, a11, v129, v131, *v35.val, *&v34);
              v95 = 2 * a11;
              v132 = v137;
            }

            else
            {
              v132 = 0;
              *v130 = 0;
              *(v130 + a11) = 0;
              *(v130 + v95) = 0;
              *(v130 + 3 * a11) = 0;
            }

            v138 = (v129 + v132);
            v139 = v93 + 3;
            v140 = v92[5];
            if (v140 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v138, 0);
              *v139 = v35.val[0];
              *(v139 + a11) = v35.val[0];
              *(v139 + v95) = v35.val[0];
              *(v139 + 3 * a11) = v35.val[0];
              v141 = 1;
            }

            else if (v140 == 31)
            {
              v142 = &v138[2];
              v35 = vld2_f32(v142);
              v143 = *v138;
              v144 = v138[1];
              *v139 = vzip1_s32(*v138, v144);
              *(v139 + a11) = vzip2_s32(v143, v144);
              v145 = (v139 + v95);
              *v145 = v35.val[0];
              *(v145 + a11) = v34;
              v141 = 32;
            }

            else if (v92[5])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, a11, v138, v140, *v35.val, *&v34);
              v95 = 2 * a11;
              v141 = v146;
            }

            else
            {
              v141 = 0;
              *v139 = 0;
              *(v139 + a11) = 0;
              *(v139 + v95) = 0;
              *(v139 + 3 * a11) = 0;
            }

            v147 = (v138 + v141);
            v148 = v113 + 2;
            v149 = v92[6];
            if (v149 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v147, 0);
              *v148 = v35.val[0];
              *(v148 + a11) = v35.val[0];
              *(v148 + v95) = v35.val[0];
              *(v148 + 3 * a11) = v35.val[0];
              v150 = 1;
              a8 = v206;
            }

            else
            {
              a8 = v206;
              if (v149 == 31)
              {
                v151 = &v147[2];
                v35 = vld2_f32(v151);
                v152 = *v147;
                v153 = v147[1];
                *v148 = vzip1_s32(*v147, v153);
                *(v148 + a11) = vzip2_s32(v152, v153);
                v154 = (v148 + v95);
                *v154 = v35.val[0];
                *(v154 + a11) = v34;
                v150 = 32;
              }

              else if (v92[6])
              {
                v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, a11, v147, v149, *v35.val, *&v34);
                v95 = 2 * a11;
                v150 = v155;
              }

              else
              {
                v150 = 0;
                *v148 = 0;
                *(v148 + a11) = 0;
                *(v148 + v95) = 0;
                *(v148 + 3 * a11) = 0;
              }
            }

            v156 = (v147 + v150);
            v157 = v113 + 3;
            v158 = v92[7];
            if (v158 == 96)
            {
              v35.val[0] = vdup_lane_s8(*v156, 0);
              *v157 = v35.val[0];
              *(v157 + a11) = v35.val[0];
              *(v157 + v95) = v35.val[0];
              *(v157 + 3 * a11) = v35.val[0];
              goto LABEL_172;
            }

            v159 = v42 + 1;
            if (v158 == 31)
            {
              v45 = *v156;
              *&v34 = v156[1];
              v46 = &v156[2];
              v263 = vld2_f32(v46);
              *v157 = vzip1_s32(*v156, *&v34);
              v35.val[0] = vzip2_s32(v45, *&v34);
              *(v157 + a11) = v35.val[0];
              v47 = (v157 + v95);
              *v47 = v263.val[0];
              *(v47 + a11) = v263.val[1];
            }

            else if (v158)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v157, a11, v156, v158, *v35.val, *&v34);
            }

            else
            {
              *v157 = 0;
              *(v157 + a11) = 0;
              *(v157 + v95) = 0;
              *(v157 + 3 * a11) = 0;
            }
          }

LABEL_50:
          v21 = v42 == v212 >> 4;
          v42 = v159;
        }

        while (!v21);
        v21 = v18++ == v198;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v262 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 + a10 - 1;
  v218 = a8;
  v18 = a8 >> 3;
  v199 = v17;
  v201 = v17 >> 3;
  v19 = *(*(a1 + 208) + 88);
  v20 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v213 = v25;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v18 <= v201)
  {
    v211 = a7 + a9 - 1;
    if (a7 >> 4 <= v211 >> 4)
    {
      v26 = (a5 - 1) >> 4;
      v196 = a5 - 1;
      v203 = (a5 - 1) & 0xF;
      v197 = (a6 - 1) & 7;
      v198 = (a6 - 1) >> 3;
      v202 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v28 = vcgt_u32(v27, 0x1F0000000FLL);
      v29.val[0] = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v28);
      v208 = v29.val[0];
      v210 = v29.val[0].i32[0] | v29.val[0].i32[1];
      v207 = v28;
      v195 = 8 * v20 * v19;
      v209 = v26;
      do
      {
        v30 = (8 * v18) | 7;
        if (8 * v18 <= v218)
        {
          v31 = v218;
        }

        else
        {
          v31 = 8 * v18;
        }

        if (v199 < v30)
        {
          v30 = v199;
        }

        v217 = 8 * v18;
        v206 = v31 - 8 * v18;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v197;
        v205 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 4;
        v37 = v197 + 1;
        if (v18 != v198)
        {
          v37 = 8;
        }

        v219 = v37;
        if (v18 != v198)
        {
          v34 = v35;
        }

        v204 = v34;
        v216 = a2 + (v31 - v218) * a11;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v40 = a7;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v211 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          if (v36 == v26)
          {
            v43 = v203 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v217 >= v218 && v38 >= a7)
          {
            v45 = v41 != v203;
            if (v36 != v26)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v204;
          }

          if (isLevelTiled)
          {
            v66 = 0;
            v67 = v195 >> (*(a1 + 57) != 0);
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

            v183 = (v66 >> 4) - 1;
            if (v68)
            {
              v184 = 0;
            }

            else
            {
              v184 = 32 - __clz(~(-1 << -__clz(v183)));
            }

            v185 = (v70 >> 3) - 1;
            if (v69)
            {
              v186 = 0;
              if (v184)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v186 = 32 - __clz(~(-1 << -__clz(v185)));
              if (v186 | v184)
              {
LABEL_226:
                v187 = 0;
                v188 = 0;
                v189 = v36 & v183;
                v190 = v18 & v185;
                v191 = v186 != 0;
                v192 = v184 != 0;
                v193 = 1;
                do
                {
                  --v186;
                  if (v191)
                  {
                    v188 |= (v193 & v190) << v187++;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  --v184;
                  if (v192)
                  {
                    v188 |= (v193 & v189) << v187++;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v193 *= 2;
                  --v187;
                  v192 = v184 != 0;
                  v191 = v186 != 0;
                }

                while (v184 | v186);
                v194 = v188 << 8;
                goto LABEL_238;
              }
            }

            v194 = 0;
LABEL_238:
            v53 = v194 + ((v38 / v66 + v217 / v70 * ((v66 + v196) / v66)) << 14);
            goto LABEL_55;
          }

          if (v210)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v207;
            v49 = BYTE4(v207);
            v51 = v208.i32[0];
            v52 = v208.i32[1];
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v18) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v36) << v46++;
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
            v53 = v47 << 8;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v57 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_80:
              v65 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
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
              v61 |= (v64 & v18) << v60++;
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
          v71 = (a3 + v53);
          if (v213)
          {
            v72 = v71[13];
            v229[12] = v71[12];
            v229[13] = v72;
            v73 = v71[15];
            v229[14] = v71[14];
            v229[15] = v73;
            v74 = v71[9];
            v229[8] = v71[8];
            v229[9] = v74;
            v75 = v71[11];
            v229[10] = v71[10];
            v229[11] = v75;
            v76 = v71[5];
            v229[4] = v71[4];
            v229[5] = v76;
            v77 = v71[7];
            v229[6] = v71[6];
            v229[7] = v77;
            v78 = v71[1];
            v229[0] = *v71;
            v229[1] = v78;
            v29 = v71[2];
            v28 = v71[3];
            v71 = v229;
            v229[2] = v29;
            v229[3] = v28;
          }

          v79 = (a4 + v65);
          v80 = (v216 + 2 * (v40 - a7));
          if (v44 & 1 | (v43 < 0x10u) || v219 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v71;
            v227 = v43;
            v228 = v219;
            v223 = v206;
            v224 = v40 - v38;
            block[6] = a4 + v65;
            v221 = v216 + 2 * (v40 - a7);
            v222 = a11;
            v225 = v205;
            v226 = v42;
            if (v44)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v84 = *v79;
            if (v84 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v71, 0);
              v230 = v29.val[0];
              v234 = v29.val[0];
              v238 = v29.val[0];
              v242 = v29.val[0];
              v85 = 1;
            }

            else if (v84 == 31)
            {
              *&v28 = *(v71 + 1);
              v149 = (v71 + 1);
              v264 = vld2_f32(v149);
              v29.val[0] = vzip2_s32(*v71, *&v28);
              v230 = vzip1_s32(*v71, *&v28);
              v234 = v29.val[0];
              v238 = v264.val[0];
              v242 = v264.val[1];
              v85 = 32;
            }

            else if (*v79)
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v71, v84, *v29.val, *&v28);
            }

            else
            {
              v85 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
            }

            v150 = (v71 + v85);
            v151 = v79[1];
            if (v151 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v150, 0);
              v231 = v29.val[0];
              v235 = v29.val[0];
              v239 = v29.val[0];
              v243 = v29.val[0];
              v152 = 1;
            }

            else if (v151 == 31)
            {
              *&v28 = v150[1];
              v153 = &v150[2];
              v265 = vld2_f32(v153);
              v29.val[0] = vzip2_s32(*v150, *&v28);
              v231 = vzip1_s32(*v150, *&v28);
              v235 = v29.val[0];
              v239 = v265.val[0];
              v243 = v265.val[1];
              v152 = 32;
            }

            else if (v79[1])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 32, v150, v151, *v29.val, *&v28);
            }

            else
            {
              v152 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
            }

            v154 = (v150 + v152);
            v155 = v79[2];
            if (v155 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v154, 0);
              v246 = v29.val[0];
              v250 = v29.val[0];
              v254 = v29.val[0];
              v258 = v29.val[0];
              v156 = 1;
            }

            else if (v155 == 31)
            {
              *&v28 = v154[1];
              v157 = &v154[2];
              v266 = vld2_f32(v157);
              v29.val[0] = vzip2_s32(*v154, *&v28);
              v246 = vzip1_s32(*v154, *&v28);
              v250 = v29.val[0];
              v254 = v266.val[0];
              v258 = v266.val[1];
              v156 = 32;
            }

            else if (v79[2])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v154, v155, *v29.val, *&v28);
            }

            else
            {
              v156 = 0;
              v246 = 0;
              v250 = 0;
              v254 = 0;
              v258 = 0;
            }

            v158 = (v154 + v156);
            v159 = v79[3];
            if (v159 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v158, 0);
              v247 = v29.val[0];
              v251 = v29.val[0];
              v255 = v29.val[0];
              v259 = v29.val[0];
              v160 = 1;
            }

            else if (v159 == 31)
            {
              *&v28 = v158[1];
              v161 = &v158[2];
              v267 = vld2_f32(v161);
              v29.val[0] = vzip2_s32(*v158, *&v28);
              v247 = vzip1_s32(*v158, *&v28);
              v251 = v29.val[0];
              v255 = v267.val[0];
              v259 = v267.val[1];
              v160 = 32;
            }

            else if (v79[3])
            {
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v158, v159, *v29.val, *&v28);
            }

            else
            {
              v160 = 0;
              v247 = 0;
              v251 = 0;
              v255 = 0;
              v259 = 0;
            }

            v162 = (v158 + v160);
            v163 = v79[4];
            if (v163 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v162, 0);
              v232 = v29.val[0];
              v236 = v29.val[0];
              v240 = v29.val[0];
              v244 = v29.val[0];
              v164 = 1;
            }

            else if (v163 == 31)
            {
              *&v28 = v162[1];
              v165 = &v162[2];
              v268 = vld2_f32(v165);
              v29.val[0] = vzip2_s32(*v162, *&v28);
              v232 = vzip1_s32(*v162, *&v28);
              v236 = v29.val[0];
              v240 = v268.val[0];
              v244 = v268.val[1];
              v164 = 32;
            }

            else if (v79[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v162, v163, *v29.val, *&v28);
            }

            else
            {
              v164 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
            }

            v166 = (v162 + v164);
            v167 = v79[5];
            if (v167 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v166, 0);
              v233 = v29.val[0];
              v237 = v29.val[0];
              v241 = v29.val[0];
              v245 = v29.val[0];
              v168 = 1;
            }

            else if (v167 == 31)
            {
              *&v28 = v166[1];
              v169 = &v166[2];
              v269 = vld2_f32(v169);
              v29.val[0] = vzip2_s32(*v166, *&v28);
              v233 = vzip1_s32(*v166, *&v28);
              v237 = v29.val[0];
              v241 = v269.val[0];
              v245 = v269.val[1];
              v168 = 32;
            }

            else if (v79[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v166, v167, *v29.val, *&v28);
            }

            else
            {
              v168 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v170 = (v166 + v168);
            v171 = v79[6];
            if (v171 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v170, 0);
              v248 = v29.val[0];
              v252 = v29.val[0];
              v256 = v29.val[0];
              v260 = v29.val[0];
              v172 = 1;
            }

            else if (v171 == 31)
            {
              *&v28 = v170[1];
              v173 = &v170[2];
              v270 = vld2_f32(v173);
              v29.val[0] = vzip2_s32(*v170, *&v28);
              v248 = vzip1_s32(*v170, *&v28);
              v252 = v29.val[0];
              v256 = v270.val[0];
              v260 = v270.val[1];
              v172 = 32;
            }

            else if (v79[6])
            {
              v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v170, v171, *v29.val, *&v28);
            }

            else
            {
              v172 = 0;
              v248 = 0;
              v252 = 0;
              v256 = 0;
              v260 = 0;
            }

            v174 = (v170 + v172);
            v175 = v79[7];
            if (v175 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v174, 0);
              v249 = v29.val[0];
              v253 = v29.val[0];
              v257 = v29.val[0];
              v261 = v29.val[0];
              v26 = v209;
              v176 = v225;
              if (!v225)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v26 = v209;
              if (v175 == 31)
              {
                *&v28 = v174[1];
                v177 = &v174[2];
                v271 = vld2_f32(v177);
                v29.val[0] = vzip2_s32(*v174, *&v28);
                v249 = vzip1_s32(*v174, *&v28);
                v253 = v29.val[0];
                v257 = v271.val[0];
                v261 = v271.val[1];
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }

              else if (v79[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v174, v175, *v29.val, *&v28);
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v249 = 0;
                v253 = 0;
                v257 = 0;
                v261 = 0;
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }
            }

            v178 = 0;
            v179 = &v230 + 32 * v223 + 2 * v224;
            v180 = v226;
            do
            {
              if (v180)
              {
                v181 = 0;
                v182 = v221 + v222 * v178;
                do
                {
                  *(v182 + v181) = v179[v181];
                  ++v181;
                  v180 = v226;
                }

                while (2 * v226 > v181);
                v176 = v225;
              }

              ++v178;
              v179 += 32;
            }

            while (v178 < v176);
          }

          else
          {
            v81 = *v79;
            if (v81 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v71, 0);
              *v80 = v29.val[0];
              *(v80 + a11) = v29.val[0];
              v82 = 2 * a11;
              *(v80 + 2 * a11) = v29.val[0];
              *(v80 + 3 * a11) = v29.val[0];
              v83 = 1;
            }

            else
            {
              v82 = 2 * a11;
              if (v81 == 31)
              {
                v86 = (v71 + 1);
                v29 = vld2_f32(v86);
                v87 = *v71;
                v88 = *(v71 + 8);
                *v80 = vzip1_s32(*v71, v88);
                *(v80 + a11) = vzip2_s32(v87, v88);
                v89 = (v80 + 2 * a11);
                *v89 = v29.val[0];
                *(v89 + a11) = v28;
                v83 = 32;
              }

              else if (*v79)
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v216 + 2 * (v40 - a7)), a11, v71, v81, *v29.val, *&v28);
                v82 = 2 * a11;
              }

              else
              {
                v83 = 0;
                *v80 = 0;
                *(v80 + a11) = 0;
                *(v80 + 2 * a11) = 0;
                *(v80 + 3 * a11) = 0;
              }
            }

            v90 = (v71 + v83);
            v91 = v80 + 1;
            v92 = v79[1];
            if (v92 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v90, 0);
              *v91 = v29.val[0];
              *(v91 + a11) = v29.val[0];
              *(v91 + v82) = v29.val[0];
              *(v91 + 3 * a11) = v29.val[0];
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v94 = &v90[2];
              v29 = vld2_f32(v94);
              v95 = *v90;
              v96 = v90[1];
              *v91 = vzip1_s32(*v90, v96);
              *(v91 + a11) = vzip2_s32(v95, v96);
              v97 = (v91 + v82);
              *v97 = v29.val[0];
              *(v97 + a11) = v28;
              v93 = 32;
            }

            else if (v79[1])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v91, a11, v90, v92, *v29.val, *&v28);
              v82 = 2 * a11;
              v93 = v98;
            }

            else
            {
              v93 = 0;
              *v91 = 0;
              *(v91 + a11) = 0;
              *(v91 + v82) = 0;
              *(v91 + 3 * a11) = 0;
            }

            v99 = (v90 + v93);
            v100 = (v80 + v202);
            v101 = v79[2];
            if (v101 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v99, 0);
              *v100 = v29.val[0];
              *(v100 + a11) = v29.val[0];
              *(v100 + v82) = v29.val[0];
              *(v100 + 3 * a11) = v29.val[0];
              v102 = 1;
            }

            else if (v101 == 31)
            {
              v103 = &v99[2];
              v29 = vld2_f32(v103);
              v104 = *v99;
              v105 = v99[1];
              *v100 = vzip1_s32(*v99, v105);
              *(v100 + a11) = vzip2_s32(v104, v105);
              v106 = (v100 + v82);
              *v106 = v29.val[0];
              *(v106 + a11) = v28;
              v102 = 32;
            }

            else if (v79[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v80 + v202), a11, v99, v101, *v29.val, *&v28);
              v82 = 2 * a11;
            }

            else
            {
              v102 = 0;
              *v100 = 0;
              *(v100 + a11) = 0;
              *(v100 + v82) = 0;
              *(v100 + 3 * a11) = 0;
            }

            v107 = (v99 + v102);
            v108 = v100 + 1;
            v109 = v79[3];
            if (v109 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v107, 0);
              *v108 = v29.val[0];
              *(v108 + a11) = v29.val[0];
              *(v108 + v82) = v29.val[0];
              *(v108 + 3 * a11) = v29.val[0];
              v110 = 1;
            }

            else if (v109 == 31)
            {
              v111 = &v107[2];
              v29 = vld2_f32(v111);
              v112 = *v107;
              v113 = v107[1];
              *v108 = vzip1_s32(*v107, v113);
              *(v108 + a11) = vzip2_s32(v112, v113);
              v114 = (v108 + v82);
              *v114 = v29.val[0];
              *(v114 + a11) = v28;
              v110 = 32;
            }

            else if (v79[3])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, a11, v107, v109, *v29.val, *&v28);
              v82 = 2 * a11;
              v110 = v115;
            }

            else
            {
              v110 = 0;
              *v108 = 0;
              *(v108 + a11) = 0;
              *(v108 + v82) = 0;
              *(v108 + 3 * a11) = 0;
            }

            v116 = (v107 + v110);
            v117 = v80 + 2;
            v118 = v79[4];
            if (v118 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v116, 0);
              *v117 = v29.val[0];
              *(v117 + a11) = v29.val[0];
              *(v117 + v82) = v29.val[0];
              *(v117 + 3 * a11) = v29.val[0];
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v120 = &v116[2];
              v29 = vld2_f32(v120);
              v121 = *v116;
              v122 = v116[1];
              *v117 = vzip1_s32(*v116, v122);
              *(v117 + a11) = vzip2_s32(v121, v122);
              v123 = (v117 + v82);
              *v123 = v29.val[0];
              *(v123 + a11) = v28;
              v119 = 32;
            }

            else if (v79[4])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v29.val, *&v28);
              v82 = 2 * a11;
              v119 = v124;
            }

            else
            {
              v119 = 0;
              *v117 = 0;
              *(v117 + a11) = 0;
              *(v117 + v82) = 0;
              *(v117 + 3 * a11) = 0;
            }

            v125 = (v116 + v119);
            v126 = v80 + 3;
            v127 = v79[5];
            if (v127 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v125, 0);
              *v126 = v29.val[0];
              *(v126 + a11) = v29.val[0];
              *(v126 + v82) = v29.val[0];
              *(v126 + 3 * a11) = v29.val[0];
              v128 = 1;
            }

            else if (v127 == 31)
            {
              v129 = &v125[2];
              v29 = vld2_f32(v129);
              v130 = *v125;
              v131 = v125[1];
              *v126 = vzip1_s32(*v125, v131);
              *(v126 + a11) = vzip2_s32(v130, v131);
              v132 = (v126 + v82);
              *v132 = v29.val[0];
              *(v132 + a11) = v28;
              v128 = 32;
            }

            else if (v79[5])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *v29.val, *&v28);
              v82 = 2 * a11;
              v128 = v133;
            }

            else
            {
              v128 = 0;
              *v126 = 0;
              *(v126 + a11) = 0;
              *(v126 + v82) = 0;
              *(v126 + 3 * a11) = 0;
            }

            v134 = (v125 + v128);
            v135 = v100 + 2;
            v136 = v79[6];
            if (v136 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v134, 0);
              *v135 = v29.val[0];
              *(v135 + a11) = v29.val[0];
              *(v135 + v82) = v29.val[0];
              *(v135 + 3 * a11) = v29.val[0];
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v138 = &v134[2];
              v29 = vld2_f32(v138);
              v139 = *v134;
              v140 = v134[1];
              *v135 = vzip1_s32(*v134, v140);
              *(v135 + a11) = vzip2_s32(v139, v140);
              v141 = (v135 + v82);
              *v141 = v29.val[0];
              *(v141 + a11) = v28;
              v137 = 32;
            }

            else if (v79[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *v29.val, *&v28);
              v82 = 2 * a11;
              v137 = v142;
            }

            else
            {
              v137 = 0;
              *v135 = 0;
              *(v135 + a11) = 0;
              *(v135 + v82) = 0;
              *(v135 + 3 * a11) = 0;
            }

            v143 = (v134 + v137);
            v144 = v100 + 3;
            v145 = v79[7];
            if (v145 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v143, 0);
              *v144 = v29.val[0];
              *(v144 + a11) = v29.val[0];
              *(v144 + v82) = v29.val[0];
              *(v144 + 3 * a11) = v29.val[0];
              v26 = v209;
            }

            else
            {
              v26 = v209;
              if (v145 == 31)
              {
                v146 = *v143;
                *&v28 = v143[1];
                v147 = &v143[2];
                v263 = vld2_f32(v147);
                *v144 = vzip1_s32(*v143, *&v28);
                v29.val[0] = vzip2_s32(v146, *&v28);
                *(v144 + a11) = v29.val[0];
                v148 = (v144 + v82);
                *v148 = v263.val[0];
                *(v148 + a11) = v263.val[1];
              }

              else if (v79[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, a11, v143, v145, *v29.val, *&v28);
              }

              else
              {
                *v144 = 0;
                *(v144 + a11) = 0;
                *(v144 + v82) = 0;
                *(v144 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v22 = v36++ == v211 >> 4;
        }

        while (!v22);
        v22 = v18++ == v201;
      }

      while (!v22);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v262 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 + a10 - 1;
  v218 = a8;
  v18 = a8 >> 3;
  v199 = v17;
  v201 = v17 >> 3;
  v19 = *(*(a1 + 208) + 88);
  v20 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v213 = v25;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v18 <= v201)
  {
    v211 = a7 + a9 - 1;
    if (a7 >> 4 <= v211 >> 4)
    {
      v26 = (a5 - 1) >> 4;
      v196 = a5 - 1;
      v203 = (a5 - 1) & 0xF;
      v197 = (a6 - 1) & 7;
      v198 = (a6 - 1) >> 3;
      v202 = 4 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v28 = vcgt_u32(v27, 0x1F0000000FLL);
      v29.val[0] = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v28);
      v208 = v29.val[0];
      v210 = v29.val[0].i32[0] | v29.val[0].i32[1];
      v207 = v28;
      v195 = 8 * v20 * v19;
      v209 = v26;
      do
      {
        v30 = (8 * v18) | 7;
        if (8 * v18 <= v218)
        {
          v31 = v218;
        }

        else
        {
          v31 = 8 * v18;
        }

        if (v199 < v30)
        {
          v30 = v199;
        }

        v217 = 8 * v18;
        v206 = v31 - 8 * v18;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v197;
        v205 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 4;
        v37 = v197 + 1;
        if (v18 != v198)
        {
          v37 = 8;
        }

        v219 = v37;
        if (v18 != v198)
        {
          v34 = v35;
        }

        v204 = v34;
        v216 = a2 + (v31 - v218) * a11;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v40 = a7;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v211 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          if (v36 == v26)
          {
            v43 = v203 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v217 >= v218 && v38 >= a7)
          {
            v45 = v41 != v203;
            if (v36 != v26)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v204;
          }

          if (isLevelTiled)
          {
            v66 = 0;
            v67 = v195 >> (*(a1 + 57) != 0);
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

            v183 = (v66 >> 4) - 1;
            if (v68)
            {
              v184 = 0;
            }

            else
            {
              v184 = 32 - __clz(~(-1 << -__clz(v183)));
            }

            v185 = (v70 >> 3) - 1;
            if (v69)
            {
              v186 = 0;
              if (v184)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v186 = 32 - __clz(~(-1 << -__clz(v185)));
              if (v186 | v184)
              {
LABEL_226:
                v187 = 0;
                v188 = 0;
                v189 = v36 & v183;
                v190 = v18 & v185;
                v191 = v186 != 0;
                v192 = v184 != 0;
                v193 = 1;
                do
                {
                  --v186;
                  if (v191)
                  {
                    v188 |= (v193 & v190) << v187++;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  --v184;
                  if (v192)
                  {
                    v188 |= (v193 & v189) << v187++;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v193 *= 2;
                  --v187;
                  v192 = v184 != 0;
                  v191 = v186 != 0;
                }

                while (v184 | v186);
                v194 = v188 << 8;
                goto LABEL_238;
              }
            }

            v194 = 0;
LABEL_238:
            v53 = v194 + ((v38 / v66 + v217 / v70 * ((v66 + v196) / v66)) << 14);
            goto LABEL_55;
          }

          if (v210)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v207;
            v49 = BYTE4(v207);
            v51 = v208.i32[0];
            v52 = v208.i32[1];
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v18) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v36) << v46++;
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
            v53 = v47 << 8;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v57 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_80:
              v65 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
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
              v61 |= (v64 & v18) << v60++;
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
          v71 = (a3 + v53);
          if (v213)
          {
            v72 = v71[13];
            v229[12] = v71[12];
            v229[13] = v72;
            v73 = v71[15];
            v229[14] = v71[14];
            v229[15] = v73;
            v74 = v71[9];
            v229[8] = v71[8];
            v229[9] = v74;
            v75 = v71[11];
            v229[10] = v71[10];
            v229[11] = v75;
            v76 = v71[5];
            v229[4] = v71[4];
            v229[5] = v76;
            v77 = v71[7];
            v229[6] = v71[6];
            v229[7] = v77;
            v78 = v71[1];
            v229[0] = *v71;
            v229[1] = v78;
            v29 = v71[2];
            v28 = v71[3];
            v71 = v229;
            v229[2] = v29;
            v229[3] = v28;
          }

          v79 = (a4 + v65);
          v80 = (v216 + 2 * (v40 - a7));
          if (v44 & 1 | (v43 < 0x10u) || v219 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v71;
            v227 = v43;
            v228 = v219;
            v223 = v206;
            v224 = v40 - v38;
            block[6] = a4 + v65;
            v221 = v216 + 2 * (v40 - a7);
            v222 = a11;
            v225 = v205;
            v226 = v42;
            if (v44)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v84 = *v79;
            if (v84 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v71, 0);
              v230 = v29.val[0];
              v234 = v29.val[0];
              v238 = v29.val[0];
              v242 = v29.val[0];
              v85 = 1;
            }

            else if (v84 == 31)
            {
              *&v28 = *(v71 + 1);
              v149 = (v71 + 1);
              v264 = vld2_f32(v149);
              v29.val[0] = vzip2_s32(*v71, *&v28);
              v230 = vzip1_s32(*v71, *&v28);
              v234 = v29.val[0];
              v238 = v264.val[0];
              v242 = v264.val[1];
              v85 = 32;
            }

            else if (*v79)
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v71, v84, *v29.val, *&v28);
            }

            else
            {
              v85 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
            }

            v150 = (v71 + v85);
            v151 = v79[1];
            if (v151 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v150, 0);
              v231 = v29.val[0];
              v235 = v29.val[0];
              v239 = v29.val[0];
              v243 = v29.val[0];
              v152 = 1;
            }

            else if (v151 == 31)
            {
              *&v28 = v150[1];
              v153 = &v150[2];
              v265 = vld2_f32(v153);
              v29.val[0] = vzip2_s32(*v150, *&v28);
              v231 = vzip1_s32(*v150, *&v28);
              v235 = v29.val[0];
              v239 = v265.val[0];
              v243 = v265.val[1];
              v152 = 32;
            }

            else if (v79[1])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 32, v150, v151, *v29.val, *&v28);
            }

            else
            {
              v152 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
            }

            v154 = (v150 + v152);
            v155 = v79[2];
            if (v155 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v154, 0);
              v246 = v29.val[0];
              v250 = v29.val[0];
              v254 = v29.val[0];
              v258 = v29.val[0];
              v156 = 1;
            }

            else if (v155 == 31)
            {
              *&v28 = v154[1];
              v157 = &v154[2];
              v266 = vld2_f32(v157);
              v29.val[0] = vzip2_s32(*v154, *&v28);
              v246 = vzip1_s32(*v154, *&v28);
              v250 = v29.val[0];
              v254 = v266.val[0];
              v258 = v266.val[1];
              v156 = 32;
            }

            else if (v79[2])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v154, v155, *v29.val, *&v28);
            }

            else
            {
              v156 = 0;
              v246 = 0;
              v250 = 0;
              v254 = 0;
              v258 = 0;
            }

            v158 = (v154 + v156);
            v159 = v79[3];
            if (v159 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v158, 0);
              v247 = v29.val[0];
              v251 = v29.val[0];
              v255 = v29.val[0];
              v259 = v29.val[0];
              v160 = 1;
            }

            else if (v159 == 31)
            {
              *&v28 = v158[1];
              v161 = &v158[2];
              v267 = vld2_f32(v161);
              v29.val[0] = vzip2_s32(*v158, *&v28);
              v247 = vzip1_s32(*v158, *&v28);
              v251 = v29.val[0];
              v255 = v267.val[0];
              v259 = v267.val[1];
              v160 = 32;
            }

            else if (v79[3])
            {
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v158, v159, *v29.val, *&v28);
            }

            else
            {
              v160 = 0;
              v247 = 0;
              v251 = 0;
              v255 = 0;
              v259 = 0;
            }

            v162 = (v158 + v160);
            v163 = v79[4];
            if (v163 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v162, 0);
              v232 = v29.val[0];
              v236 = v29.val[0];
              v240 = v29.val[0];
              v244 = v29.val[0];
              v164 = 1;
            }

            else if (v163 == 31)
            {
              *&v28 = v162[1];
              v165 = &v162[2];
              v268 = vld2_f32(v165);
              v29.val[0] = vzip2_s32(*v162, *&v28);
              v232 = vzip1_s32(*v162, *&v28);
              v236 = v29.val[0];
              v240 = v268.val[0];
              v244 = v268.val[1];
              v164 = 32;
            }

            else if (v79[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v162, v163, *v29.val, *&v28);
            }

            else
            {
              v164 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
            }

            v166 = (v162 + v164);
            v167 = v79[5];
            if (v167 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v166, 0);
              v233 = v29.val[0];
              v237 = v29.val[0];
              v241 = v29.val[0];
              v245 = v29.val[0];
              v168 = 1;
            }

            else if (v167 == 31)
            {
              *&v28 = v166[1];
              v169 = &v166[2];
              v269 = vld2_f32(v169);
              v29.val[0] = vzip2_s32(*v166, *&v28);
              v233 = vzip1_s32(*v166, *&v28);
              v237 = v29.val[0];
              v241 = v269.val[0];
              v245 = v269.val[1];
              v168 = 32;
            }

            else if (v79[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v166, v167, *v29.val, *&v28);
            }

            else
            {
              v168 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v170 = (v166 + v168);
            v171 = v79[6];
            if (v171 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v170, 0);
              v248 = v29.val[0];
              v252 = v29.val[0];
              v256 = v29.val[0];
              v260 = v29.val[0];
              v172 = 1;
            }

            else if (v171 == 31)
            {
              *&v28 = v170[1];
              v173 = &v170[2];
              v270 = vld2_f32(v173);
              v29.val[0] = vzip2_s32(*v170, *&v28);
              v248 = vzip1_s32(*v170, *&v28);
              v252 = v29.val[0];
              v256 = v270.val[0];
              v260 = v270.val[1];
              v172 = 32;
            }

            else if (v79[6])
            {
              v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v170, v171, *v29.val, *&v28);
            }

            else
            {
              v172 = 0;
              v248 = 0;
              v252 = 0;
              v256 = 0;
              v260 = 0;
            }

            v174 = (v170 + v172);
            v175 = v79[7];
            if (v175 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v174, 0);
              v249 = v29.val[0];
              v253 = v29.val[0];
              v257 = v29.val[0];
              v261 = v29.val[0];
              v26 = v209;
              v176 = v225;
              if (!v225)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v26 = v209;
              if (v175 == 31)
              {
                *&v28 = v174[1];
                v177 = &v174[2];
                v271 = vld2_f32(v177);
                v29.val[0] = vzip2_s32(*v174, *&v28);
                v249 = vzip1_s32(*v174, *&v28);
                v253 = v29.val[0];
                v257 = v271.val[0];
                v261 = v271.val[1];
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }

              else if (v79[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v174, v175, *v29.val, *&v28);
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v249 = 0;
                v253 = 0;
                v257 = 0;
                v261 = 0;
                v176 = v225;
                if (!v225)
                {
                  goto LABEL_29;
                }
              }
            }

            v178 = 0;
            v179 = &v230 + 32 * v223 + 2 * v224;
            v180 = v226;
            do
            {
              if (v180)
              {
                v181 = 0;
                v182 = v221 + v222 * v178;
                do
                {
                  *(v182 + v181) = v179[v181];
                  ++v181;
                  v180 = v226;
                }

                while (2 * v226 > v181);
                v176 = v225;
              }

              ++v178;
              v179 += 32;
            }

            while (v178 < v176);
          }

          else
          {
            v81 = *v79;
            if (v81 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v71, 0);
              *v80 = v29.val[0];
              *(v80 + a11) = v29.val[0];
              v82 = 2 * a11;
              *(v80 + 2 * a11) = v29.val[0];
              *(v80 + 3 * a11) = v29.val[0];
              v83 = 1;
            }

            else
            {
              v82 = 2 * a11;
              if (v81 == 31)
              {
                v86 = (v71 + 1);
                v29 = vld2_f32(v86);
                v87 = *v71;
                v88 = *(v71 + 8);
                *v80 = vzip1_s32(*v71, v88);
                *(v80 + a11) = vzip2_s32(v87, v88);
                v89 = (v80 + 2 * a11);
                *v89 = v29.val[0];
                *(v89 + a11) = v28;
                v83 = 32;
              }

              else if (*v79)
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v216 + 2 * (v40 - a7)), a11, v71, v81, *v29.val, *&v28);
                v82 = 2 * a11;
              }

              else
              {
                v83 = 0;
                *v80 = 0;
                *(v80 + a11) = 0;
                *(v80 + 2 * a11) = 0;
                *(v80 + 3 * a11) = 0;
              }
            }

            v90 = (v71 + v83);
            v91 = v80 + 1;
            v92 = v79[1];
            if (v92 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v90, 0);
              *v91 = v29.val[0];
              *(v91 + a11) = v29.val[0];
              *(v91 + v82) = v29.val[0];
              *(v91 + 3 * a11) = v29.val[0];
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v94 = &v90[2];
              v29 = vld2_f32(v94);
              v95 = *v90;
              v96 = v90[1];
              *v91 = vzip1_s32(*v90, v96);
              *(v91 + a11) = vzip2_s32(v95, v96);
              v97 = (v91 + v82);
              *v97 = v29.val[0];
              *(v97 + a11) = v28;
              v93 = 32;
            }

            else if (v79[1])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v91, a11, v90, v92, *v29.val, *&v28);
              v82 = 2 * a11;
              v93 = v98;
            }

            else
            {
              v93 = 0;
              *v91 = 0;
              *(v91 + a11) = 0;
              *(v91 + v82) = 0;
              *(v91 + 3 * a11) = 0;
            }

            v99 = (v90 + v93);
            v100 = (v80 + v202);
            v101 = v79[2];
            if (v101 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v99, 0);
              *v100 = v29.val[0];
              *(v100 + a11) = v29.val[0];
              *(v100 + v82) = v29.val[0];
              *(v100 + 3 * a11) = v29.val[0];
              v102 = 1;
            }

            else if (v101 == 31)
            {
              v103 = &v99[2];
              v29 = vld2_f32(v103);
              v104 = *v99;
              v105 = v99[1];
              *v100 = vzip1_s32(*v99, v105);
              *(v100 + a11) = vzip2_s32(v104, v105);
              v106 = (v100 + v82);
              *v106 = v29.val[0];
              *(v106 + a11) = v28;
              v102 = 32;
            }

            else if (v79[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v80 + v202), a11, v99, v101, *v29.val, *&v28);
              v82 = 2 * a11;
            }

            else
            {
              v102 = 0;
              *v100 = 0;
              *(v100 + a11) = 0;
              *(v100 + v82) = 0;
              *(v100 + 3 * a11) = 0;
            }

            v107 = (v99 + v102);
            v108 = v100 + 1;
            v109 = v79[3];
            if (v109 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v107, 0);
              *v108 = v29.val[0];
              *(v108 + a11) = v29.val[0];
              *(v108 + v82) = v29.val[0];
              *(v108 + 3 * a11) = v29.val[0];
              v110 = 1;
            }

            else if (v109 == 31)
            {
              v111 = &v107[2];
              v29 = vld2_f32(v111);
              v112 = *v107;
              v113 = v107[1];
              *v108 = vzip1_s32(*v107, v113);
              *(v108 + a11) = vzip2_s32(v112, v113);
              v114 = (v108 + v82);
              *v114 = v29.val[0];
              *(v114 + a11) = v28;
              v110 = 32;
            }

            else if (v79[3])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, a11, v107, v109, *v29.val, *&v28);
              v82 = 2 * a11;
              v110 = v115;
            }

            else
            {
              v110 = 0;
              *v108 = 0;
              *(v108 + a11) = 0;
              *(v108 + v82) = 0;
              *(v108 + 3 * a11) = 0;
            }

            v116 = (v107 + v110);
            v117 = v80 + 2;
            v118 = v79[4];
            if (v118 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v116, 0);
              *v117 = v29.val[0];
              *(v117 + a11) = v29.val[0];
              *(v117 + v82) = v29.val[0];
              *(v117 + 3 * a11) = v29.val[0];
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v120 = &v116[2];
              v29 = vld2_f32(v120);
              v121 = *v116;
              v122 = v116[1];
              *v117 = vzip1_s32(*v116, v122);
              *(v117 + a11) = vzip2_s32(v121, v122);
              v123 = (v117 + v82);
              *v123 = v29.val[0];
              *(v123 + a11) = v28;
              v119 = 32;
            }

            else if (v79[4])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v29.val, *&v28);
              v82 = 2 * a11;
              v119 = v124;
            }

            else
            {
              v119 = 0;
              *v117 = 0;
              *(v117 + a11) = 0;
              *(v117 + v82) = 0;
              *(v117 + 3 * a11) = 0;
            }

            v125 = (v116 + v119);
            v126 = v80 + 3;
            v127 = v79[5];
            if (v127 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v125, 0);
              *v126 = v29.val[0];
              *(v126 + a11) = v29.val[0];
              *(v126 + v82) = v29.val[0];
              *(v126 + 3 * a11) = v29.val[0];
              v128 = 1;
            }

            else if (v127 == 31)
            {
              v129 = &v125[2];
              v29 = vld2_f32(v129);
              v130 = *v125;
              v131 = v125[1];
              *v126 = vzip1_s32(*v125, v131);
              *(v126 + a11) = vzip2_s32(v130, v131);
              v132 = (v126 + v82);
              *v132 = v29.val[0];
              *(v132 + a11) = v28;
              v128 = 32;
            }

            else if (v79[5])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *v29.val, *&v28);
              v82 = 2 * a11;
              v128 = v133;
            }

            else
            {
              v128 = 0;
              *v126 = 0;
              *(v126 + a11) = 0;
              *(v126 + v82) = 0;
              *(v126 + 3 * a11) = 0;
            }

            v134 = (v125 + v128);
            v135 = v100 + 2;
            v136 = v79[6];
            if (v136 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v134, 0);
              *v135 = v29.val[0];
              *(v135 + a11) = v29.val[0];
              *(v135 + v82) = v29.val[0];
              *(v135 + 3 * a11) = v29.val[0];
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v138 = &v134[2];
              v29 = vld2_f32(v138);
              v139 = *v134;
              v140 = v134[1];
              *v135 = vzip1_s32(*v134, v140);
              *(v135 + a11) = vzip2_s32(v139, v140);
              v141 = (v135 + v82);
              *v141 = v29.val[0];
              *(v141 + a11) = v28;
              v137 = 32;
            }

            else if (v79[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *v29.val, *&v28);
              v82 = 2 * a11;
              v137 = v142;
            }

            else
            {
              v137 = 0;
              *v135 = 0;
              *(v135 + a11) = 0;
              *(v135 + v82) = 0;
              *(v135 + 3 * a11) = 0;
            }

            v143 = (v134 + v137);
            v144 = v100 + 3;
            v145 = v79[7];
            if (v145 == 96)
            {
              v29.val[0] = vdup_lane_s8(*v143, 0);
              *v144 = v29.val[0];
              *(v144 + a11) = v29.val[0];
              *(v144 + v82) = v29.val[0];
              *(v144 + 3 * a11) = v29.val[0];
              v26 = v209;
            }

            else
            {
              v26 = v209;
              if (v145 == 31)
              {
                v146 = *v143;
                *&v28 = v143[1];
                v147 = &v143[2];
                v263 = vld2_f32(v147);
                *v144 = vzip1_s32(*v143, *&v28);
                v29.val[0] = vzip2_s32(v146, *&v28);
                *(v144 + a11) = v29.val[0];
                v148 = (v144 + v82);
                *v148 = v263.val[0];
                *(v148 + a11) = v263.val[1];
              }

              else if (v79[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, a11, v143, v145, *v29.val, *&v28);
              }

              else
              {
                *v144 = 0;
                *(v144 + a11) = 0;
                *(v144 + v82) = 0;
                *(v144 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v22 = v36++ == v211 >> 4;
        }

        while (!v22);
        v22 = v18++ == v201;
      }

      while (!v22);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v447 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v369 = a8;
  v16 = a1;
  v349 = a8 + a10 - 1;
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
  v348 = v349 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v364 = v24;
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
      v363 = 0;
LABEL_32:
      v360 = v26 - 4;
      v352 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v346 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v363 = v31 >= v25;
    goto LABEL_32;
  }

  v363 = 0;
  v346 = 0;
  v352 = 0;
  v360 = 0;
LABEL_33:
  if (v18 <= v348)
  {
    v362 = a7 + a9 - 1;
    if (a7 >> 4 <= v362 >> 4)
    {
      v33 = a11;
      v372 = v19 >> 4;
      v356 = v19 & 0xF;
      v361 = (v19 & 0xF) + 1;
      v344 = v20 & 7;
      v345 = v20 >> 3;
      v355 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v351 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v350 = v35;
      v370 = a1;
      v353 = 3 * a11;
      v354 = 2 * a11;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v369)
        {
          v37 = v369;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v349 < v36)
        {
          v36 = v349;
        }

        v359 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v344;
        v358 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v344 + 1;
        if (v18 != v345)
        {
          v43 = 8;
        }

        v371 = v43;
        if (v18 != v345)
        {
          v40 = v41;
        }

        v357 = v40;
        v44 = v18 & ~(-1 << v352);
        v367 = a2 + (v37 - v369) * v33;
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

          if (v362 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v372)
          {
            v51 = v361;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v369 && v46 >= v45)
          {
            v53 = v49 != v356;
            if (v42 != v372)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v357;
          }

          if (v363)
          {
            if (v360 | v352)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v352 != 0;
              v58 = v360 != 0;
              v59 = v352;
              v60 = v360;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v44 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v42 & ~(-1 << v360) & v56) << v54++;
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

            v69 = v61 + *(v16 + 336) * ((v42 >> v360) + (v18 >> v352) * v346);
          }

          else if (v351)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v350.i8[0];
            v66 = v350.i8[4];
            v67 = v351.i32[0];
            v68 = v351.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
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

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_106:
              v81 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_106;
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
LABEL_107:
          v82 = (a3 + v69);
          if (v364)
          {
            v83 = v44;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v44 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v367 + 8 * (v48 - v45);
          if (v52 & 1 | (v51 < 0x10u) || v371 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v370;
            block[5] = v82;
            v380 = v51;
            v381 = v371;
            v376 = v359;
            v377 = v48 - v46;
            block[6] = v86;
            v374 = v87;
            v33 = a11;
            v375 = a11;
            v378 = v358;
            v379 = v50;
            if (v52)
            {
              dispatch_sync(*(*(v370 + 8) + 16552), block);
              v45 = a7;
              v16 = v370;
              goto LABEL_49;
            }

            v95 = *v86;
            if (v95 == 127)
            {
              v255 = v82[1];
              v256 = v82[2];
              v257 = v82[3];
              v258 = v82[4];
              v259 = v82[5];
              v260 = v82[6];
              v261 = v82[7];
              v383 = *v82;
              v384 = v256;
              v391 = v255;
              v392 = v257;
              v399 = v258;
              v400 = v260;
              v407 = v259;
              v408 = v261;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v254 = vld1q_dup_f32(v82->f32);
              v383 = v254;
              v384 = v254;
              v391 = v254;
              v392 = v254;
              v399 = v254;
              v400 = v254;
              v407 = v254;
              v408 = v254;
              v96 = 4;
            }

            else if (*v86)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
            }

            else
            {
              v96 = 0;
              v384 = 0u;
              v383 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v407 = 0u;
              v408 = 0u;
            }

            v262 = v82 + v96;
            v263 = v86[1];
            if (v263 == 127)
            {
              v266 = *(v262 + 16);
              v267 = *(v262 + 32);
              v268 = *(v262 + 48);
              v269 = *(v262 + 64);
              v270 = *(v262 + 80);
              v271 = *(v262 + 96);
              v272 = *(v262 + 112);
              v385 = *v262;
              v386 = v267;
              v393 = v266;
              v394 = v268;
              v401 = v269;
              v402 = v271;
              v409 = v270;
              v410 = v272;
              v264 = 128;
            }

            else if (v263 == 3)
            {
              v265 = vld1q_dup_f32(v262);
              v385 = v265;
              v386 = v265;
              v393 = v265;
              v394 = v265;
              v401 = v265;
              v402 = v265;
              v409 = v265;
              v410 = v265;
              v264 = 4;
            }

            else if (v86[1])
            {
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
            }

            else
            {
              v264 = 0;
              v385 = 0u;
              v386 = 0u;
              v393 = 0u;
              v394 = 0u;
              v401 = 0u;
              v402 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v273 = v262 + v264;
            v274 = v86[2];
            if (v274 == 127)
            {
              v277 = *(v273 + 16);
              v278 = *(v273 + 32);
              v279 = *(v273 + 48);
              v280 = *(v273 + 64);
              v281 = *(v273 + 80);
              v282 = *(v273 + 96);
              v283 = *(v273 + 112);
              v415 = *v273;
              v416 = v278;
              v423 = v277;
              v424 = v279;
              v431 = v280;
              v432 = v282;
              v439 = v281;
              v440 = v283;
              v275 = 128;
            }

            else if (v274 == 3)
            {
              v276 = vld1q_dup_f32(v273);
              v415 = v276;
              v416 = v276;
              v423 = v276;
              v424 = v276;
              v431 = v276;
              v432 = v276;
              v439 = v276;
              v440 = v276;
              v275 = 4;
            }

            else if (v86[2])
            {
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
            }

            else
            {
              v275 = 0;
              v415 = 0u;
              v416 = 0u;
              v423 = 0u;
              v424 = 0u;
              v431 = 0u;
              v432 = 0u;
              v439 = 0u;
              v440 = 0u;
            }

            v284 = v273 + v275;
            v285 = v86[3];
            if (v285 == 127)
            {
              v288 = *(v284 + 16);
              v289 = *(v284 + 32);
              v290 = *(v284 + 48);
              v291 = *(v284 + 64);
              v292 = *(v284 + 80);
              v293 = *(v284 + 96);
              v294 = *(v284 + 112);
              v417 = *v284;
              v418 = v289;
              v425 = v288;
              v426 = v290;
              v433 = v291;
              v434 = v293;
              v441 = v292;
              v442 = v294;
              v286 = 128;
            }

            else if (v285 == 3)
            {
              v287 = vld1q_dup_f32(v284);
              v417 = v287;
              v418 = v287;
              v425 = v287;
              v426 = v287;
              v433 = v287;
              v434 = v287;
              v441 = v287;
              v442 = v287;
              v286 = 4;
            }

            else if (v86[3])
            {
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
            }

            else
            {
              v286 = 0;
              v417 = 0u;
              v418 = 0u;
              v425 = 0u;
              v426 = 0u;
              v433 = 0u;
              v434 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v295 = v284 + v286;
            v296 = v86[4];
            if (v296 == 127)
            {
              v299 = *(v295 + 16);
              v300 = *(v295 + 32);
              v301 = *(v295 + 48);
              v302 = *(v295 + 64);
              v303 = *(v295 + 80);
              v304 = *(v295 + 96);
              v305 = *(v295 + 112);
              v387 = *v295;
              v388 = v300;
              v395 = v299;
              v396 = v301;
              v403 = v302;
              v404 = v304;
              v411 = v303;
              v412 = v305;
              v297 = 128;
            }

            else if (v296 == 3)
            {
              v298 = vld1q_dup_f32(v295);
              v387 = v298;
              v388 = v298;
              v395 = v298;
              v396 = v298;
              v403 = v298;
              v404 = v298;
              v411 = v298;
              v412 = v298;
              v297 = 4;
            }

            else if (v86[4])
            {
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
            }

            else
            {
              v297 = 0;
              v387 = 0u;
              v388 = 0u;
              v395 = 0u;
              v396 = 0u;
              v403 = 0u;
              v404 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v306 = v295 + v297;
            v307 = v86[5];
            if (v307 == 127)
            {
              v310 = *(v306 + 16);
              v311 = *(v306 + 32);
              v312 = *(v306 + 48);
              v313 = *(v306 + 64);
              v314 = *(v306 + 80);
              v315 = *(v306 + 96);
              v316 = *(v306 + 112);
              v389 = *v306;
              v390 = v311;
              v397 = v310;
              v398 = v312;
              v405 = v313;
              v406 = v315;
              v413 = v314;
              v414 = v316;
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v389 = v309;
              v390 = v309;
              v397 = v309;
              v398 = v309;
              v405 = v309;
              v406 = v309;
              v413 = v309;
              v414 = v309;
              v308 = 4;
            }

            else if (v86[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
            }

            else
            {
              v308 = 0;
              v389 = 0u;
              v390 = 0u;
              v397 = 0u;
              v398 = 0u;
              v405 = 0u;
              v406 = 0u;
              v413 = 0u;
              v414 = 0u;
            }

            v317 = v306 + v308;
            v318 = v86[6];
            if (v318 == 127)
            {
              v321 = *(v317 + 16);
              v322 = *(v317 + 32);
              v323 = *(v317 + 48);
              v324 = *(v317 + 64);
              v325 = *(v317 + 80);
              v326 = *(v317 + 96);
              v327 = *(v317 + 112);
              v419 = *v317;
              v420 = v322;
              v427 = v321;
              v428 = v323;
              v435 = v324;
              v436 = v326;
              v443 = v325;
              v444 = v327;
              v319 = 128;
            }

            else if (v318 == 3)
            {
              v320 = vld1q_dup_f32(v317);
              v419 = v320;
              v420 = v320;
              v427 = v320;
              v428 = v320;
              v435 = v320;
              v436 = v320;
              v443 = v320;
              v444 = v320;
              v319 = 4;
            }

            else if (v86[6])
            {
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
            }

            else
            {
              v319 = 0;
              v419 = 0u;
              v420 = 0u;
              v427 = 0u;
              v428 = 0u;
              v435 = 0u;
              v436 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v328 = v317 + v319;
            v329 = v86[7];
            if (v329 == 127)
            {
              v332 = *(v328 + 16);
              v333 = *(v328 + 32);
              v334 = *(v328 + 48);
              v335 = *(v328 + 80);
              v336 = *(v328 + 96);
              v337 = *(v328 + 112);
              v338 = *(v328 + 64);
              v421 = *v328;
              v422 = v333;
              v429 = v332;
              v430 = v334;
              v437 = v338;
              v438 = v336;
              v445 = v335;
              v446 = v337;
              v45 = a7;
              v16 = v370;
              v330 = v378;
              if (!v378)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v329 == 3)
              {
                v331 = vld1q_dup_f32(v328);
                v421 = v331;
                v422 = v331;
                v429 = v331;
                v430 = v331;
                v437 = v331;
                v438 = v331;
                v445 = v331;
                v446 = v331;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else if (v329)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v421 = 0u;
                v422 = 0u;
                v429 = 0u;
                v430 = 0u;
                v437 = 0u;
                v438 = 0u;
                v445 = 0u;
                v446 = 0u;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }
            }

            v339 = 0;
            v340 = &v383.i8[128 * v376 + 8 * v377];
            v341 = v379;
            do
            {
              if (v341)
              {
                v342 = 0;
                v343 = v374 + v375 * v339;
                do
                {
                  *(v343 + v342) = v340[v342];
                  ++v342;
                  v341 = v379;
                }

                while (8 * v379 > v342);
                v330 = v378;
              }

              ++v339;
              v340 += 128;
            }

            while (v339 < v330);
          }

          else
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v101 = v82[1];
              v102 = v82[2];
              v103 = v82[3];
              v104 = v82[5];
              v105 = v82[6];
              v106 = v82[7];
              v107 = v82[4];
              v89 = 2 * a11;
              *v87 = *v82;
              *(v87 + 16) = v102;
              v108 = (v87 + v354);
              v33 = a11;
              v109 = (v87 + a11);
              *v109 = v101;
              v109[1] = v103;
              *v108 = v107;
              v108[1] = v105;
              v110 = (v87 + v354 + a11);
              *v110 = v104;
              v110[1] = v106;
              v91 = 128;
              v90 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 3)
              {
                v97 = vld1q_dup_f32(v82->f32);
                *v87 = v97;
                *(v87 + 16) = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v99 = (v87 + v354);
                *v99 = v97;
                v99[1] = v97;
                v100 = (v87 + v353);
                *v100 = v97;
                v100[1] = v97;
                v91 = 4;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v92 = (v87 + a11);
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87 + v354);
                *v93 = 0u;
                v93[1] = 0u;
                v94 = (v87 + v353);
                *v94 = 0u;
                v94[1] = 0u;
              }
            }

            v111 = v82 + v91;
            v112 = (v87 + 32);
            v113 = v86[1];
            if (v113 == 127)
            {
              v122 = *(v111 + 16);
              v123 = *(v111 + 32);
              v124 = *(v111 + 48);
              v125 = *(v111 + 80);
              v126 = *(v111 + 96);
              v127 = *(v111 + 112);
              v128 = *(v111 + 64);
              *v112 = *v111;
              *(v87 + 48) = v123;
              v129 = &v112->i8[v89];
              v130 = &v112->i8[v33];
              *v130 = v122;
              *(v130 + 1) = v124;
              *v129 = v128;
              *(v129 + 1) = v126;
              v131 = &v112->i8[v89 + v33];
              *v131 = v125;
              *(v131 + 1) = v127;
              v114 = 128;
            }

            else if (v113 == 3)
            {
              v118 = vld1q_dup_f32(v111);
              *(v87 + 32) = v118;
              *(v87 + 48) = v118;
              v119 = &v112->i8[v33];
              *v119 = v118;
              v119[1] = v118;
              v120 = &v112->i8[v89];
              *v120 = v118;
              v120[1] = v118;
              v121 = &v112->i8[v90];
              *v121 = v118;
              v121[1] = v118;
              v114 = 4;
            }

            else if (v86[1])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
            }

            else
            {
              v114 = 0;
              *v112 = 0u;
              *(v87 + 48) = 0u;
              v115 = &v112->i8[v33];
              *v115 = 0u;
              *(v115 + 1) = 0u;
              v116 = &v112->i8[v89];
              *v116 = 0u;
              *(v116 + 1) = 0u;
              v117 = &v112->i8[v90];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v132 = v111 + v114;
            v133 = (v87 + v355);
            v134 = v86[2];
            if (v134 == 127)
            {
              v143 = *(v132 + 16);
              v144 = *(v132 + 32);
              v145 = *(v132 + 48);
              v146 = *(v132 + 80);
              v147 = *(v132 + 96);
              v148 = *(v132 + 112);
              v149 = *(v132 + 64);
              *v133 = *v132;
              v133[1] = v144;
              v150 = &v133->i8[v89];
              v151 = &v133->i8[v33];
              *v151 = v143;
              *(v151 + 1) = v145;
              *v150 = v149;
              *(v150 + 1) = v147;
              v152 = &v133->i8[v89 + v33];
              *v152 = v146;
              *(v152 + 1) = v148;
              v135 = 128;
            }

            else if (v134 == 3)
            {
              v139 = vld1q_dup_f32(v132);
              *v133 = v139;
              v133[1] = v139;
              v140 = &v133->i8[v33];
              *v140 = v139;
              v140[1] = v139;
              v141 = &v133->i8[v89];
              *v141 = v139;
              v141[1] = v139;
              v142 = &v133->i8[v90];
              *v142 = v139;
              v142[1] = v139;
              v135 = 4;
            }

            else if (v86[2])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
            }

            else
            {
              v135 = 0;
              *v133 = 0u;
              v133[1] = 0u;
              v136 = &v133->i8[v33];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v133->i8[v89];
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v138 = &v133->i8[v90];
              *v138 = 0u;
              *(v138 + 1) = 0u;
            }

            v153 = v132 + v135;
            v154 = v133 + 2;
            v155 = v86[3];
            if (v155 == 127)
            {
              v164 = *(v153 + 16);
              v165 = *(v153 + 32);
              v166 = *(v153 + 48);
              v167 = *(v153 + 80);
              v168 = *(v153 + 96);
              v169 = *(v153 + 112);
              v170 = *(v153 + 64);
              *v154 = *v153;
              v133[3] = v165;
              v171 = &v154->i8[v89];
              v172 = &v154->i8[v33];
              *v172 = v164;
              *(v172 + 1) = v166;
              *v171 = v170;
              *(v171 + 1) = v168;
              v173 = &v154->i8[v89 + v33];
              *v173 = v167;
              *(v173 + 1) = v169;
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v133[2] = v160;
              v133[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v89];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v90];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v86[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v133[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v89];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v90];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v174 = v153 + v156;
            v175 = (v87 + 64);
            v176 = v86[4];
            if (v176 == 127)
            {
              v185 = *(v174 + 16);
              v186 = *(v174 + 32);
              v187 = *(v174 + 48);
              v188 = *(v174 + 80);
              v189 = *(v174 + 96);
              v190 = *(v174 + 112);
              v191 = *(v174 + 64);
              *v175 = *v174;
              *(v87 + 80) = v186;
              v192 = &v175->i8[v89];
              v193 = &v175->i8[v33];
              *v193 = v185;
              *(v193 + 1) = v187;
              *v192 = v191;
              *(v192 + 1) = v189;
              v194 = &v175->i8[v89 + v33];
              *v194 = v188;
              *(v194 + 1) = v190;
              v177 = 128;
            }

            else if (v176 == 3)
            {
              v181 = vld1q_dup_f32(v174);
              *(v87 + 64) = v181;
              *(v87 + 80) = v181;
              v182 = &v175->i8[v33];
              *v182 = v181;
              v182[1] = v181;
              v183 = &v175->i8[v89];
              *v183 = v181;
              v183[1] = v181;
              v184 = &v175->i8[v90];
              *v184 = v181;
              v184[1] = v181;
              v177 = 4;
            }

            else if (v86[4])
            {
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
            }

            else
            {
              v177 = 0;
              *v175 = 0u;
              *(v87 + 80) = 0u;
              v178 = &v175->i8[v33];
              *v178 = 0u;
              *(v178 + 1) = 0u;
              v179 = &v175->i8[v89];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v175->i8[v90];
              *v180 = 0u;
              *(v180 + 1) = 0u;
            }

            v195 = v174 + v177;
            v196 = (v87 + 96);
            v197 = v86[5];
            if (v197 == 127)
            {
              v206 = *(v195 + 16);
              v207 = *(v195 + 32);
              v208 = *(v195 + 48);
              v209 = *(v195 + 80);
              v210 = *(v195 + 96);
              v211 = *(v195 + 112);
              v212 = *(v195 + 64);
              *v196 = *v195;
              *(v87 + 112) = v207;
              v213 = &v196->i8[v89];
              v214 = &v196->i8[v33];
              *v214 = v206;
              *(v214 + 1) = v208;
              *v213 = v212;
              *(v213 + 1) = v210;
              v215 = &v196->i8[v89 + v33];
              *v215 = v209;
              *(v215 + 1) = v211;
              v198 = 128;
            }

            else if (v197 == 3)
            {
              v202 = vld1q_dup_f32(v195);
              *(v87 + 96) = v202;
              *(v87 + 112) = v202;
              v203 = &v196->i8[v33];
              *v203 = v202;
              v203[1] = v202;
              v204 = &v196->i8[v89];
              *v204 = v202;
              v204[1] = v202;
              v205 = &v196->i8[v90];
              *v205 = v202;
              v205[1] = v202;
              v198 = 4;
            }

            else if (v86[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              *v196 = 0u;
              *(v87 + 112) = 0u;
              v199 = &v196->i8[v33];
              *v199 = 0u;
              *(v199 + 1) = 0u;
              v200 = &v196->i8[v89];
              *v200 = 0u;
              *(v200 + 1) = 0u;
              v201 = &v196->i8[v90];
              *v201 = 0u;
              *(v201 + 1) = 0u;
            }

            v216 = v195 + v198;
            v217 = v133 + 4;
            v218 = v86[6];
            if (v218 == 127)
            {
              v227 = *(v216 + 16);
              v228 = *(v216 + 32);
              v229 = *(v216 + 48);
              v230 = *(v216 + 80);
              v231 = *(v216 + 96);
              v232 = *(v216 + 112);
              v233 = *(v216 + 64);
              *v217 = *v216;
              v133[5] = v228;
              v234 = &v217->i8[v89];
              v235 = &v217->i8[v33];
              *v235 = v227;
              *(v235 + 1) = v229;
              *v234 = v233;
              *(v234 + 1) = v231;
              v236 = &v217->i8[v89 + v33];
              *v236 = v230;
              *(v236 + 1) = v232;
              v219 = 128;
            }

            else if (v218 == 3)
            {
              v223 = vld1q_dup_f32(v216);
              v133[4] = v223;
              v133[5] = v223;
              v224 = &v217->i8[v33];
              *v224 = v223;
              v224[1] = v223;
              v225 = &v217->i8[v89];
              *v225 = v223;
              v225[1] = v223;
              v226 = &v217->i8[v90];
              *v226 = v223;
              v226[1] = v223;
              v219 = 4;
            }

            else if (v86[6])
            {
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
            }

            else
            {
              v219 = 0;
              *v217 = 0u;
              v133[5] = 0u;
              v220 = &v217->i8[v33];
              *v220 = 0u;
              *(v220 + 1) = 0u;
              v221 = &v217->i8[v89];
              *v221 = 0u;
              *(v221 + 1) = 0u;
              v222 = &v217->i8[v90];
              *v222 = 0u;
              *(v222 + 1) = 0u;
            }

            v237 = v216 + v219;
            v238 = v133 + 6;
            v239 = v86[7];
            if (v239 == 127)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              *v238 = *v237;
              v133[7] = v245;
              v251 = &v238->i8[v89];
              v252 = &v238->i8[v33];
              *v252 = v244;
              *(v252 + 1) = v246;
              *v251 = v247;
              *(v251 + 1) = v249;
              v253 = &v238->i8[v89 + v33];
              *v253 = v248;
              *(v253 + 1) = v250;
              v45 = a7;
              v16 = v370;
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v239 == 3)
              {
                v240 = vld1q_dup_f32(v237);
                v133[6] = v240;
                v133[7] = v240;
                goto LABEL_170;
              }

              if (!v239)
              {
                v240 = 0uLL;
                *v238 = 0u;
                v133[7] = 0u;
LABEL_170:
                v241 = &v238->i8[v33];
                *v241 = v240;
                v241[1] = v240;
                v242 = &v238->i8[v89];
                *v242 = v240;
                v242[1] = v240;
                v243 = &v238->i8[v90];
                *v243 = v240;
                v243[1] = v240;
                goto LABEL_49;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
            }
          }

LABEL_49:
          v21 = v42++ == v362 >> 4;
        }

        while (!v21);
        v21 = v18++ == v348;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v447 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v369 = a8;
  v16 = a1;
  v349 = a8 + a10 - 1;
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
  v348 = v349 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v364 = v24;
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
      v363 = 0;
LABEL_32:
      v360 = v26 - 4;
      v352 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v346 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v363 = v31 >= v25;
    goto LABEL_32;
  }

  v363 = 0;
  v346 = 0;
  v352 = 0;
  v360 = 0;
LABEL_33:
  if (v18 <= v348)
  {
    v362 = a7 + a9 - 1;
    if (a7 >> 4 <= v362 >> 4)
    {
      v33 = a11;
      v372 = v19 >> 4;
      v356 = v19 & 0xF;
      v361 = (v19 & 0xF) + 1;
      v344 = v20 & 7;
      v345 = v20 >> 3;
      v355 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v351 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v350 = v35;
      v370 = a1;
      v353 = 3 * a11;
      v354 = 2 * a11;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v369)
        {
          v37 = v369;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v349 < v36)
        {
          v36 = v349;
        }

        v359 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v344;
        v358 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v344 + 1;
        if (v18 != v345)
        {
          v43 = 8;
        }

        v371 = v43;
        if (v18 != v345)
        {
          v40 = v41;
        }

        v357 = v40;
        v44 = v18 & ~(-1 << v352);
        v367 = a2 + (v37 - v369) * v33;
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

          if (v362 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v372)
          {
            v51 = v361;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v369 && v46 >= v45)
          {
            v53 = v49 != v356;
            if (v42 != v372)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v357;
          }

          if (v363)
          {
            if (v360 | v352)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v352 != 0;
              v58 = v360 != 0;
              v59 = v352;
              v60 = v360;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v44 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v42 & ~(-1 << v360) & v56) << v54++;
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

            v69 = v61 + *(v16 + 336) * ((v42 >> v360) + (v18 >> v352) * v346);
          }

          else if (v351)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v350.i8[0];
            v66 = v350.i8[4];
            v67 = v351.i32[0];
            v68 = v351.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
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

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_106:
              v81 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_106;
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
LABEL_107:
          v82 = (a3 + v69);
          if (v364)
          {
            v83 = v44;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v44 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v367 + 8 * (v48 - v45);
          if (v52 & 1 | (v51 < 0x10u) || v371 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v370;
            block[5] = v82;
            v380 = v51;
            v381 = v371;
            v376 = v359;
            v377 = v48 - v46;
            block[6] = v86;
            v374 = v87;
            v33 = a11;
            v375 = a11;
            v378 = v358;
            v379 = v50;
            if (v52)
            {
              dispatch_sync(*(*(v370 + 8) + 16552), block);
              v45 = a7;
              v16 = v370;
              goto LABEL_49;
            }

            v95 = *v86;
            if (v95 == 127)
            {
              v255 = v82[1];
              v256 = v82[2];
              v257 = v82[3];
              v258 = v82[4];
              v259 = v82[5];
              v260 = v82[6];
              v261 = v82[7];
              v383 = *v82;
              v384 = v256;
              v391 = v255;
              v392 = v257;
              v399 = v258;
              v400 = v260;
              v407 = v259;
              v408 = v261;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v254 = vld1q_dup_f32(v82->f32);
              v383 = v254;
              v384 = v254;
              v391 = v254;
              v392 = v254;
              v399 = v254;
              v400 = v254;
              v407 = v254;
              v408 = v254;
              v96 = 4;
            }

            else if (*v86)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
            }

            else
            {
              v96 = 0;
              v384 = 0u;
              v383 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v407 = 0u;
              v408 = 0u;
            }

            v262 = v82 + v96;
            v263 = v86[1];
            if (v263 == 127)
            {
              v266 = *(v262 + 16);
              v267 = *(v262 + 32);
              v268 = *(v262 + 48);
              v269 = *(v262 + 64);
              v270 = *(v262 + 80);
              v271 = *(v262 + 96);
              v272 = *(v262 + 112);
              v385 = *v262;
              v386 = v267;
              v393 = v266;
              v394 = v268;
              v401 = v269;
              v402 = v271;
              v409 = v270;
              v410 = v272;
              v264 = 128;
            }

            else if (v263 == 3)
            {
              v265 = vld1q_dup_f32(v262);
              v385 = v265;
              v386 = v265;
              v393 = v265;
              v394 = v265;
              v401 = v265;
              v402 = v265;
              v409 = v265;
              v410 = v265;
              v264 = 4;
            }

            else if (v86[1])
            {
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
            }

            else
            {
              v264 = 0;
              v385 = 0u;
              v386 = 0u;
              v393 = 0u;
              v394 = 0u;
              v401 = 0u;
              v402 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v273 = v262 + v264;
            v274 = v86[2];
            if (v274 == 127)
            {
              v277 = *(v273 + 16);
              v278 = *(v273 + 32);
              v279 = *(v273 + 48);
              v280 = *(v273 + 64);
              v281 = *(v273 + 80);
              v282 = *(v273 + 96);
              v283 = *(v273 + 112);
              v415 = *v273;
              v416 = v278;
              v423 = v277;
              v424 = v279;
              v431 = v280;
              v432 = v282;
              v439 = v281;
              v440 = v283;
              v275 = 128;
            }

            else if (v274 == 3)
            {
              v276 = vld1q_dup_f32(v273);
              v415 = v276;
              v416 = v276;
              v423 = v276;
              v424 = v276;
              v431 = v276;
              v432 = v276;
              v439 = v276;
              v440 = v276;
              v275 = 4;
            }

            else if (v86[2])
            {
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
            }

            else
            {
              v275 = 0;
              v415 = 0u;
              v416 = 0u;
              v423 = 0u;
              v424 = 0u;
              v431 = 0u;
              v432 = 0u;
              v439 = 0u;
              v440 = 0u;
            }

            v284 = v273 + v275;
            v285 = v86[3];
            if (v285 == 127)
            {
              v288 = *(v284 + 16);
              v289 = *(v284 + 32);
              v290 = *(v284 + 48);
              v291 = *(v284 + 64);
              v292 = *(v284 + 80);
              v293 = *(v284 + 96);
              v294 = *(v284 + 112);
              v417 = *v284;
              v418 = v289;
              v425 = v288;
              v426 = v290;
              v433 = v291;
              v434 = v293;
              v441 = v292;
              v442 = v294;
              v286 = 128;
            }

            else if (v285 == 3)
            {
              v287 = vld1q_dup_f32(v284);
              v417 = v287;
              v418 = v287;
              v425 = v287;
              v426 = v287;
              v433 = v287;
              v434 = v287;
              v441 = v287;
              v442 = v287;
              v286 = 4;
            }

            else if (v86[3])
            {
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
            }

            else
            {
              v286 = 0;
              v417 = 0u;
              v418 = 0u;
              v425 = 0u;
              v426 = 0u;
              v433 = 0u;
              v434 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v295 = v284 + v286;
            v296 = v86[4];
            if (v296 == 127)
            {
              v299 = *(v295 + 16);
              v300 = *(v295 + 32);
              v301 = *(v295 + 48);
              v302 = *(v295 + 64);
              v303 = *(v295 + 80);
              v304 = *(v295 + 96);
              v305 = *(v295 + 112);
              v387 = *v295;
              v388 = v300;
              v395 = v299;
              v396 = v301;
              v403 = v302;
              v404 = v304;
              v411 = v303;
              v412 = v305;
              v297 = 128;
            }

            else if (v296 == 3)
            {
              v298 = vld1q_dup_f32(v295);
              v387 = v298;
              v388 = v298;
              v395 = v298;
              v396 = v298;
              v403 = v298;
              v404 = v298;
              v411 = v298;
              v412 = v298;
              v297 = 4;
            }

            else if (v86[4])
            {
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
            }

            else
            {
              v297 = 0;
              v387 = 0u;
              v388 = 0u;
              v395 = 0u;
              v396 = 0u;
              v403 = 0u;
              v404 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v306 = v295 + v297;
            v307 = v86[5];
            if (v307 == 127)
            {
              v310 = *(v306 + 16);
              v311 = *(v306 + 32);
              v312 = *(v306 + 48);
              v313 = *(v306 + 64);
              v314 = *(v306 + 80);
              v315 = *(v306 + 96);
              v316 = *(v306 + 112);
              v389 = *v306;
              v390 = v311;
              v397 = v310;
              v398 = v312;
              v405 = v313;
              v406 = v315;
              v413 = v314;
              v414 = v316;
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v389 = v309;
              v390 = v309;
              v397 = v309;
              v398 = v309;
              v405 = v309;
              v406 = v309;
              v413 = v309;
              v414 = v309;
              v308 = 4;
            }

            else if (v86[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
            }

            else
            {
              v308 = 0;
              v389 = 0u;
              v390 = 0u;
              v397 = 0u;
              v398 = 0u;
              v405 = 0u;
              v406 = 0u;
              v413 = 0u;
              v414 = 0u;
            }

            v317 = v306 + v308;
            v318 = v86[6];
            if (v318 == 127)
            {
              v321 = *(v317 + 16);
              v322 = *(v317 + 32);
              v323 = *(v317 + 48);
              v324 = *(v317 + 64);
              v325 = *(v317 + 80);
              v326 = *(v317 + 96);
              v327 = *(v317 + 112);
              v419 = *v317;
              v420 = v322;
              v427 = v321;
              v428 = v323;
              v435 = v324;
              v436 = v326;
              v443 = v325;
              v444 = v327;
              v319 = 128;
            }

            else if (v318 == 3)
            {
              v320 = vld1q_dup_f32(v317);
              v419 = v320;
              v420 = v320;
              v427 = v320;
              v428 = v320;
              v435 = v320;
              v436 = v320;
              v443 = v320;
              v444 = v320;
              v319 = 4;
            }

            else if (v86[6])
            {
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
            }

            else
            {
              v319 = 0;
              v419 = 0u;
              v420 = 0u;
              v427 = 0u;
              v428 = 0u;
              v435 = 0u;
              v436 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v328 = v317 + v319;
            v329 = v86[7];
            if (v329 == 127)
            {
              v332 = *(v328 + 16);
              v333 = *(v328 + 32);
              v334 = *(v328 + 48);
              v335 = *(v328 + 80);
              v336 = *(v328 + 96);
              v337 = *(v328 + 112);
              v338 = *(v328 + 64);
              v421 = *v328;
              v422 = v333;
              v429 = v332;
              v430 = v334;
              v437 = v338;
              v438 = v336;
              v445 = v335;
              v446 = v337;
              v45 = a7;
              v16 = v370;
              v330 = v378;
              if (!v378)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v329 == 3)
              {
                v331 = vld1q_dup_f32(v328);
                v421 = v331;
                v422 = v331;
                v429 = v331;
                v430 = v331;
                v437 = v331;
                v438 = v331;
                v445 = v331;
                v446 = v331;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else if (v329)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v421 = 0u;
                v422 = 0u;
                v429 = 0u;
                v430 = 0u;
                v437 = 0u;
                v438 = 0u;
                v445 = 0u;
                v446 = 0u;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }
            }

            v339 = 0;
            v340 = &v383.i8[128 * v376 + 8 * v377];
            v341 = v379;
            do
            {
              if (v341)
              {
                v342 = 0;
                v343 = v374 + v375 * v339;
                do
                {
                  *(v343 + v342) = v340[v342];
                  ++v342;
                  v341 = v379;
                }

                while (8 * v379 > v342);
                v330 = v378;
              }

              ++v339;
              v340 += 128;
            }

            while (v339 < v330);
          }

          else
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v101 = v82[1];
              v102 = v82[2];
              v103 = v82[3];
              v104 = v82[5];
              v105 = v82[6];
              v106 = v82[7];
              v107 = v82[4];
              v89 = 2 * a11;
              *v87 = *v82;
              *(v87 + 16) = v102;
              v108 = (v87 + v354);
              v33 = a11;
              v109 = (v87 + a11);
              *v109 = v101;
              v109[1] = v103;
              *v108 = v107;
              v108[1] = v105;
              v110 = (v87 + v354 + a11);
              *v110 = v104;
              v110[1] = v106;
              v91 = 128;
              v90 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 3)
              {
                v97 = vld1q_dup_f32(v82->f32);
                *v87 = v97;
                *(v87 + 16) = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v99 = (v87 + v354);
                *v99 = v97;
                v99[1] = v97;
                v100 = (v87 + v353);
                *v100 = v97;
                v100[1] = v97;
                v91 = 4;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v92 = (v87 + a11);
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87 + v354);
                *v93 = 0u;
                v93[1] = 0u;
                v94 = (v87 + v353);
                *v94 = 0u;
                v94[1] = 0u;
              }
            }

            v111 = v82 + v91;
            v112 = (v87 + 32);
            v113 = v86[1];
            if (v113 == 127)
            {
              v122 = *(v111 + 16);
              v123 = *(v111 + 32);
              v124 = *(v111 + 48);
              v125 = *(v111 + 80);
              v126 = *(v111 + 96);
              v127 = *(v111 + 112);
              v128 = *(v111 + 64);
              *v112 = *v111;
              *(v87 + 48) = v123;
              v129 = &v112->i8[v89];
              v130 = &v112->i8[v33];
              *v130 = v122;
              *(v130 + 1) = v124;
              *v129 = v128;
              *(v129 + 1) = v126;
              v131 = &v112->i8[v89 + v33];
              *v131 = v125;
              *(v131 + 1) = v127;
              v114 = 128;
            }

            else if (v113 == 3)
            {
              v118 = vld1q_dup_f32(v111);
              *(v87 + 32) = v118;
              *(v87 + 48) = v118;
              v119 = &v112->i8[v33];
              *v119 = v118;
              v119[1] = v118;
              v120 = &v112->i8[v89];
              *v120 = v118;
              v120[1] = v118;
              v121 = &v112->i8[v90];
              *v121 = v118;
              v121[1] = v118;
              v114 = 4;
            }

            else if (v86[1])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
            }

            else
            {
              v114 = 0;
              *v112 = 0u;
              *(v87 + 48) = 0u;
              v115 = &v112->i8[v33];
              *v115 = 0u;
              *(v115 + 1) = 0u;
              v116 = &v112->i8[v89];
              *v116 = 0u;
              *(v116 + 1) = 0u;
              v117 = &v112->i8[v90];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v132 = v111 + v114;
            v133 = (v87 + v355);
            v134 = v86[2];
            if (v134 == 127)
            {
              v143 = *(v132 + 16);
              v144 = *(v132 + 32);
              v145 = *(v132 + 48);
              v146 = *(v132 + 80);
              v147 = *(v132 + 96);
              v148 = *(v132 + 112);
              v149 = *(v132 + 64);
              *v133 = *v132;
              v133[1] = v144;
              v150 = &v133->i8[v89];
              v151 = &v133->i8[v33];
              *v151 = v143;
              *(v151 + 1) = v145;
              *v150 = v149;
              *(v150 + 1) = v147;
              v152 = &v133->i8[v89 + v33];
              *v152 = v146;
              *(v152 + 1) = v148;
              v135 = 128;
            }

            else if (v134 == 3)
            {
              v139 = vld1q_dup_f32(v132);
              *v133 = v139;
              v133[1] = v139;
              v140 = &v133->i8[v33];
              *v140 = v139;
              v140[1] = v139;
              v141 = &v133->i8[v89];
              *v141 = v139;
              v141[1] = v139;
              v142 = &v133->i8[v90];
              *v142 = v139;
              v142[1] = v139;
              v135 = 4;
            }

            else if (v86[2])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
            }

            else
            {
              v135 = 0;
              *v133 = 0u;
              v133[1] = 0u;
              v136 = &v133->i8[v33];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v133->i8[v89];
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v138 = &v133->i8[v90];
              *v138 = 0u;
              *(v138 + 1) = 0u;
            }

            v153 = v132 + v135;
            v154 = v133 + 2;
            v155 = v86[3];
            if (v155 == 127)
            {
              v164 = *(v153 + 16);
              v165 = *(v153 + 32);
              v166 = *(v153 + 48);
              v167 = *(v153 + 80);
              v168 = *(v153 + 96);
              v169 = *(v153 + 112);
              v170 = *(v153 + 64);
              *v154 = *v153;
              v133[3] = v165;
              v171 = &v154->i8[v89];
              v172 = &v154->i8[v33];
              *v172 = v164;
              *(v172 + 1) = v166;
              *v171 = v170;
              *(v171 + 1) = v168;
              v173 = &v154->i8[v89 + v33];
              *v173 = v167;
              *(v173 + 1) = v169;
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v133[2] = v160;
              v133[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v89];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v90];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v86[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v133[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v89];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v90];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v174 = v153 + v156;
            v175 = (v87 + 64);
            v176 = v86[4];
            if (v176 == 127)
            {
              v185 = *(v174 + 16);
              v186 = *(v174 + 32);
              v187 = *(v174 + 48);
              v188 = *(v174 + 80);
              v189 = *(v174 + 96);
              v190 = *(v174 + 112);
              v191 = *(v174 + 64);
              *v175 = *v174;
              *(v87 + 80) = v186;
              v192 = &v175->i8[v89];
              v193 = &v175->i8[v33];
              *v193 = v185;
              *(v193 + 1) = v187;
              *v192 = v191;
              *(v192 + 1) = v189;
              v194 = &v175->i8[v89 + v33];
              *v194 = v188;
              *(v194 + 1) = v190;
              v177 = 128;
            }

            else if (v176 == 3)
            {
              v181 = vld1q_dup_f32(v174);
              *(v87 + 64) = v181;
              *(v87 + 80) = v181;
              v182 = &v175->i8[v33];
              *v182 = v181;
              v182[1] = v181;
              v183 = &v175->i8[v89];
              *v183 = v181;
              v183[1] = v181;
              v184 = &v175->i8[v90];
              *v184 = v181;
              v184[1] = v181;
              v177 = 4;
            }

            else if (v86[4])
            {
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
            }

            else
            {
              v177 = 0;
              *v175 = 0u;
              *(v87 + 80) = 0u;
              v178 = &v175->i8[v33];
              *v178 = 0u;
              *(v178 + 1) = 0u;
              v179 = &v175->i8[v89];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v175->i8[v90];
              *v180 = 0u;
              *(v180 + 1) = 0u;
            }

            v195 = v174 + v177;
            v196 = (v87 + 96);
            v197 = v86[5];
            if (v197 == 127)
            {
              v206 = *(v195 + 16);
              v207 = *(v195 + 32);
              v208 = *(v195 + 48);
              v209 = *(v195 + 80);
              v210 = *(v195 + 96);
              v211 = *(v195 + 112);
              v212 = *(v195 + 64);
              *v196 = *v195;
              *(v87 + 112) = v207;
              v213 = &v196->i8[v89];
              v214 = &v196->i8[v33];
              *v214 = v206;
              *(v214 + 1) = v208;
              *v213 = v212;
              *(v213 + 1) = v210;
              v215 = &v196->i8[v89 + v33];
              *v215 = v209;
              *(v215 + 1) = v211;
              v198 = 128;
            }

            else if (v197 == 3)
            {
              v202 = vld1q_dup_f32(v195);
              *(v87 + 96) = v202;
              *(v87 + 112) = v202;
              v203 = &v196->i8[v33];
              *v203 = v202;
              v203[1] = v202;
              v204 = &v196->i8[v89];
              *v204 = v202;
              v204[1] = v202;
              v205 = &v196->i8[v90];
              *v205 = v202;
              v205[1] = v202;
              v198 = 4;
            }

            else if (v86[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              *v196 = 0u;
              *(v87 + 112) = 0u;
              v199 = &v196->i8[v33];
              *v199 = 0u;
              *(v199 + 1) = 0u;
              v200 = &v196->i8[v89];
              *v200 = 0u;
              *(v200 + 1) = 0u;
              v201 = &v196->i8[v90];
              *v201 = 0u;
              *(v201 + 1) = 0u;
            }

            v216 = v195 + v198;
            v217 = v133 + 4;
            v218 = v86[6];
            if (v218 == 127)
            {
              v227 = *(v216 + 16);
              v228 = *(v216 + 32);
              v229 = *(v216 + 48);
              v230 = *(v216 + 80);
              v231 = *(v216 + 96);
              v232 = *(v216 + 112);
              v233 = *(v216 + 64);
              *v217 = *v216;
              v133[5] = v228;
              v234 = &v217->i8[v89];
              v235 = &v217->i8[v33];
              *v235 = v227;
              *(v235 + 1) = v229;
              *v234 = v233;
              *(v234 + 1) = v231;
              v236 = &v217->i8[v89 + v33];
              *v236 = v230;
              *(v236 + 1) = v232;
              v219 = 128;
            }

            else if (v218 == 3)
            {
              v223 = vld1q_dup_f32(v216);
              v133[4] = v223;
              v133[5] = v223;
              v224 = &v217->i8[v33];
              *v224 = v223;
              v224[1] = v223;
              v225 = &v217->i8[v89];
              *v225 = v223;
              v225[1] = v223;
              v226 = &v217->i8[v90];
              *v226 = v223;
              v226[1] = v223;
              v219 = 4;
            }

            else if (v86[6])
            {
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
            }

            else
            {
              v219 = 0;
              *v217 = 0u;
              v133[5] = 0u;
              v220 = &v217->i8[v33];
              *v220 = 0u;
              *(v220 + 1) = 0u;
              v221 = &v217->i8[v89];
              *v221 = 0u;
              *(v221 + 1) = 0u;
              v222 = &v217->i8[v90];
              *v222 = 0u;
              *(v222 + 1) = 0u;
            }

            v237 = v216 + v219;
            v238 = v133 + 6;
            v239 = v86[7];
            if (v239 == 127)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              *v238 = *v237;
              v133[7] = v245;
              v251 = &v238->i8[v89];
              v252 = &v238->i8[v33];
              *v252 = v244;
              *(v252 + 1) = v246;
              *v251 = v247;
              *(v251 + 1) = v249;
              v253 = &v238->i8[v89 + v33];
              *v253 = v248;
              *(v253 + 1) = v250;
              v45 = a7;
              v16 = v370;
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v239 == 3)
              {
                v240 = vld1q_dup_f32(v237);
                v133[6] = v240;
                v133[7] = v240;
                goto LABEL_170;
              }

              if (!v239)
              {
                v240 = 0uLL;
                *v238 = 0u;
                v133[7] = 0u;
LABEL_170:
                v241 = &v238->i8[v33];
                *v241 = v240;
                v241[1] = v240;
                v242 = &v238->i8[v89];
                *v242 = v240;
                v242[1] = v240;
                v243 = &v238->i8[v90];
                *v243 = v240;
                v243[1] = v240;
                goto LABEL_49;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
            }
          }

LABEL_49:
          v21 = v42++ == v362 >> 4;
        }

        while (!v21);
        v21 = v18++ == v348;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
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

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
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
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
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

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
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

          v60 = v59 + 7;
          if (v60 < 0x10)
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
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
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
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}