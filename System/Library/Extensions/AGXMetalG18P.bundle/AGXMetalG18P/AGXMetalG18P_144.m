uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v404 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v325 = a8;
  v16 = a8 >> 3;
  v307 = a8 + a10 - 1;
  v309 = v307 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v329 = a1;
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
  v320 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v319 = result;
  v25 = a7;
  if (v16 <= v309)
  {
    v318 = a7 + a9 - 1;
    if (a7 >> 3 <= v318 >> 3)
    {
      result = a1;
      v26 = a11;
      v327 = (a5 - 1) >> 3;
      v304 = a5 - 1;
      v312 = (a5 - 1) & 7;
      v305 = (a6 - 1) & 7;
      v306 = (a6 - 1) >> 3;
      v310 = 4 * a11;
      v311 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v317 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v316 = v28;
      v303 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v325)
        {
          v30 = v325;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v307 < v29)
        {
          v29 = v307;
        }

        v324 = 8 * v16;
        v315 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v305;
        v314 = v32;
        v34 = v32 != 8;
        v35 = a7 >> 3;
        v36 = v305 + 1;
        if (v16 != v306)
        {
          v36 = 8;
        }

        v326 = v36;
        if (v16 != v306)
        {
          v33 = v34;
        }

        v313 = v33;
        v323 = a2 + (v30 - v325) * v26;
        do
        {
          v39 = 8 * v35;
          v40 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= v25)
          {
            v41 = v25;
          }

          else
          {
            v41 = 8 * v35;
          }

          if (v318 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v35 == v327)
          {
            v44 = v312 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v324 >= v325 && v39 >= v25)
          {
            v46 = v42 != v312;
            if (v35 != v327)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v313;
          }

          if (v319)
          {
            v67 = 0;
            v68 = v303 >> (*(result + 57) != 0);
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

            v291 = (v67 >> 3) - 1;
            if (v69)
            {
              v292 = 0;
            }

            else
            {
              v292 = 32 - __clz(~(-1 << -__clz(v291)));
            }

            v293 = (v71 >> 3) - 1;
            if (v70)
            {
              v294 = 0;
              if (v292)
              {
                goto LABEL_260;
              }
            }

            else
            {
              v294 = 32 - __clz(~(-1 << -__clz(v293)));
              if (v294 | v292)
              {
LABEL_260:
                v295 = 0;
                v296 = 0;
                v297 = v35 & v291;
                v298 = v16 & v293;
                v299 = v292 != 0;
                v300 = v294 != 0;
                v301 = 1;
                do
                {
                  --v292;
                  if (v299)
                  {
                    v296 |= (v301 & v297) << v295++;
                  }

                  else
                  {
                    v292 = 0;
                  }

                  --v294;
                  if (v300)
                  {
                    v296 |= (v301 & v298) << v295++;
                  }

                  else
                  {
                    v294 = 0;
                  }

                  v301 *= 2;
                  --v295;
                  v300 = v294 != 0;
                  v299 = v292 != 0;
                }

                while (v294 | v292);
                v302 = v296 << 9;
                result = v329;
                goto LABEL_272;
              }
            }

            v302 = 0;
LABEL_272:
            v54 = v302 + ((v39 / v67 + v324 / v71 * ((v67 + v304) / v67)) << 14);
            goto LABEL_57;
          }

          if (v317)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v316.i8[4];
            v51 = v316.i8[0];
            v52 = v317.i32[1];
            v53 = v317.i32[0];
            do
            {
              --v52;
              if (v50)
              {
                v48 |= (v49 & v35) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v51)
              {
                v48 |= (v49 & v16) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v51 = v53 != 0;
              v50 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

LABEL_57:
          v55 = *(result + 128) >> (*(result + 144) + a12);
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
LABEL_82:
              v66 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_82;
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
              v62 |= (v65 & v35) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v16) << v61++;
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
LABEL_83:
          v72 = (a3 + v54);
          if (v320)
          {
            memcpy(__dst, v72, sizeof(__dst));
            result = v329;
            v25 = a7;
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = (v323 + 16 * (v41 - v25));
          if (!(v45 & 1 | (v44 < 8u)) && v326 > 7)
          {
            v75 = *(result + 208);
            v76 = *(v75 + 52);
            v77 = *v73;
            if (*v73)
            {
              v26 = a11;
              if (v77 < 0xF0)
              {
                if (v77 == 127)
                {
                  v87 = v72[1];
                  v88 = v72[2];
                  v89 = v72[3];
                  v90 = v72[4];
                  v91 = v72[5];
                  v92 = v72[6];
                  v93 = v72[7];
                  *v74 = *v72;
                  v74[1] = v87;
                  v94 = (v74 + a11);
                  v74[2] = v90;
                  v74[3] = v91;
                  *v94 = v88;
                  v94[1] = v89;
                  v95 = (v74 + a11 + 32);
                  *v95 = v92;
                  v95[1] = v93;
                  v78 = 128;
                }

                else if (v77 == 3)
                {
                  v84 = vld1q_dup_f32(v72->f32);
                  *v74 = v84;
                  v74[1] = v84;
                  v74[2] = v84;
                  v74[3] = v84;
                  v85 = (v74 + a11);
                  *v85 = v84;
                  v85[1] = v84;
                  v85[2] = v84;
                  v85[3] = v84;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v323 + 16 * (v41 - v25)), a11, v72, v77);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v323 + 16 * (v41 - v25)), a11, v72, v77, *(v75 + 52));
                v78 = 64;
              }
            }

            else
            {
              v78 = 0;
              v74[2] = 0u;
              v74[3] = 0u;
              *v74 = 0u;
              v74[1] = 0u;
              v26 = a11;
              v83 = (v74->f32 + a11);
              v83[2] = 0u;
              v83[3] = 0u;
              *v83 = 0u;
              v83[1] = 0u;
            }

            v96 = v72 + v78;
            v97 = (v74 + v311);
            v98 = v73[1];
            if (v73[1])
            {
              if (v98 < 0xF0)
              {
                if (v98 == 127)
                {
                  v103 = *(v96 + 16);
                  v104 = *(v96 + 32);
                  v105 = *(v96 + 48);
                  v106 = *(v96 + 64);
                  v107 = *(v96 + 80);
                  v108 = *(v96 + 96);
                  v109 = *(v96 + 112);
                  *v97 = *v96;
                  v97[1] = v103;
                  v110 = (v97->f32 + v26);
                  v97[2] = v106;
                  v97[3] = v107;
                  *v110 = v104;
                  v110[1] = v105;
                  v111 = (v97[2].f32 + v26);
                  *v111 = v108;
                  v111[1] = v109;
                  v99 = 128;
                }

                else if (v98 == 3)
                {
                  v101 = vld1q_dup_f32(v96);
                  *v97 = v101;
                  v97[1] = v101;
                  v97[2] = v101;
                  v97[3] = v101;
                  v102 = (v97 + v26);
                  *v102 = v101;
                  v102[1] = v101;
                  v102[2] = v101;
                  v102[3] = v101;
                  v99 = 4;
                }

                else
                {
                  v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v311), v26, v96, v98);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v74->f32 + v311), v26, v96, v98, v76);
                v99 = 64;
              }
            }

            else
            {
              v99 = 0;
              v97[2] = 0u;
              v97[3] = 0u;
              *v97 = 0u;
              v97[1] = 0u;
              v100 = (v97->f32 + v26);
              v100[2] = 0u;
              v100[3] = 0u;
              *v100 = 0u;
              v100[1] = 0u;
            }

            v112 = v96 + v99;
            v113 = &v74[4];
            v114 = v73[2];
            if (v73[2])
            {
              if (v114 < 0xF0)
              {
                if (v114 == 127)
                {
                  v119 = *(v112 + 16);
                  v120 = *(v112 + 32);
                  v121 = *(v112 + 48);
                  v122 = *(v112 + 64);
                  v123 = *(v112 + 80);
                  v124 = *(v112 + 96);
                  v125 = *(v112 + 112);
                  *v113 = *v112;
                  v74[5] = v119;
                  v126 = &v113->i8[v26];
                  v74[6] = v122;
                  v74[7] = v123;
                  *v126 = v120;
                  *(v126 + 1) = v121;
                  v126 += 32;
                  *v126 = v124;
                  *(v126 + 1) = v125;
                  v115 = 128;
                }

                else if (v114 == 3)
                {
                  v117 = vld1q_dup_f32(v112);
                  v74[4] = v117;
                  v74[5] = v117;
                  v74[6] = v117;
                  v74[7] = v117;
                  v118 = &v113->i8[v26];
                  *v118 = v117;
                  v118[1] = v117;
                  v118[2] = v117;
                  v118[3] = v117;
                  v115 = 4;
                }

                else
                {
                  v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v113, v26, v112, v114);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v113, v26, v112, v114, v76);
                v115 = 64;
              }
            }

            else
            {
              v115 = 0;
              v74[6] = 0u;
              v74[7] = 0u;
              *v113 = 0u;
              v74[5] = 0u;
              v116 = &v113->i8[v26];
              *(v116 + 2) = 0u;
              *(v116 + 3) = 0u;
              *v116 = 0u;
              *(v116 + 1) = 0u;
            }

            v127 = v112 + v115;
            v128 = &v97[4];
            v129 = v73[3];
            if (v73[3])
            {
              if (v129 < 0xF0)
              {
                if (v129 == 127)
                {
                  v134 = *(v127 + 16);
                  v135 = *(v127 + 32);
                  v136 = *(v127 + 48);
                  v137 = *(v127 + 64);
                  v138 = *(v127 + 80);
                  v139 = *(v127 + 96);
                  v140 = *(v127 + 112);
                  *v128 = *v127;
                  v97[5] = v134;
                  v141 = &v128->i8[v26];
                  v97[6] = v137;
                  v97[7] = v138;
                  *v141 = v135;
                  *(v141 + 1) = v136;
                  v141 += 32;
                  *v141 = v139;
                  *(v141 + 1) = v140;
                  v130 = 128;
                }

                else if (v129 == 3)
                {
                  v132 = vld1q_dup_f32(v127);
                  v97[4] = v132;
                  v97[5] = v132;
                  v97[6] = v132;
                  v97[7] = v132;
                  v133 = &v128->i8[v26];
                  *v133 = v132;
                  v133[1] = v132;
                  v133[2] = v132;
                  v133[3] = v132;
                  v130 = 4;
                }

                else
                {
                  v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v128, v26, v127, v129);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v128, v26, v127, v129, v76);
                v130 = 64;
              }
            }

            else
            {
              v130 = 0;
              v97[6] = 0u;
              v97[7] = 0u;
              *v128 = 0u;
              v97[5] = 0u;
              v131 = &v128->i8[v26];
              *(v131 + 2) = 0u;
              *(v131 + 3) = 0u;
              *v131 = 0u;
              *(v131 + 1) = 0u;
            }

            v142 = v127 + v130;
            v143 = (v74 + v310);
            v144 = v73[4];
            if (v73[4])
            {
              if (v144 < 0xF0)
              {
                if (v144 == 127)
                {
                  v149 = *(v142 + 16);
                  v150 = *(v142 + 32);
                  v151 = *(v142 + 48);
                  v152 = *(v142 + 64);
                  v153 = *(v142 + 80);
                  v154 = *(v142 + 96);
                  v155 = *(v142 + 112);
                  *v143 = *v142;
                  v143[1] = v149;
                  v156 = (v143->f32 + v26);
                  v143[2] = v152;
                  v143[3] = v153;
                  *v156 = v150;
                  v156[1] = v151;
                  v157 = (v143[2].f32 + v26);
                  *v157 = v154;
                  v157[1] = v155;
                  v145 = 128;
                }

                else if (v144 == 3)
                {
                  v147 = vld1q_dup_f32(v142);
                  *v143 = v147;
                  v143[1] = v147;
                  v143[2] = v147;
                  v143[3] = v147;
                  v148 = (v143 + v26);
                  *v148 = v147;
                  v148[1] = v147;
                  v148[2] = v147;
                  v148[3] = v147;
                  v145 = 4;
                }

                else
                {
                  v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v310), v26, v142, v144);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v74->f32[v310 / 4], v26, v142, v144, v76);
                v145 = 64;
              }
            }

            else
            {
              v145 = 0;
              v143[2] = 0u;
              v143[3] = 0u;
              *v143 = 0u;
              v143[1] = 0u;
              v146 = (v143->f32 + v26);
              v146[2] = 0u;
              v146[3] = 0u;
              *v146 = 0u;
              v146[1] = 0u;
            }

            v158 = v142 + v145;
            v159 = v74 + 6 * a11;
            v160 = v73[5];
            if (v73[5])
            {
              if (v160 < 0xF0)
              {
                if (v160 == 127)
                {
                  v165 = *(v158 + 16);
                  v166 = *(v158 + 32);
                  v167 = *(v158 + 48);
                  v168 = *(v158 + 64);
                  v169 = *(v158 + 80);
                  v170 = *(v158 + 96);
                  v171 = *(v158 + 112);
                  *v159 = *v158;
                  *(v159 + 1) = v165;
                  v172 = &v159[v26];
                  *(v159 + 2) = v168;
                  *(v159 + 3) = v169;
                  *v172 = v166;
                  *(v172 + 1) = v167;
                  v173 = &v159[v26 + 32];
                  *v173 = v170;
                  *(v173 + 1) = v171;
                  v161 = 128;
                }

                else if (v160 == 3)
                {
                  v163 = vld1q_dup_f32(v158);
                  *v159 = v163;
                  *(v159 + 1) = v163;
                  *(v159 + 2) = v163;
                  *(v159 + 3) = v163;
                  v164 = &v159[v26];
                  *v164 = v163;
                  v164[1] = v163;
                  v164[2] = v163;
                  v164[3] = v163;
                  v161 = 4;
                }

                else
                {
                  v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v159, v26, v158, v160);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v159, v26, v158, v160, v76);
                v161 = 64;
              }
            }

            else
            {
              v161 = 0;
              *(v159 + 2) = 0u;
              *(v159 + 3) = 0u;
              *v159 = 0u;
              *(v159 + 1) = 0u;
              v162 = &v159[v26];
              *(v162 + 2) = 0u;
              *(v162 + 3) = 0u;
              *v162 = 0u;
              *(v162 + 1) = 0u;
            }

            v174 = v158 + v161;
            v175 = &v143[4];
            v176 = v73[6];
            if (v73[6])
            {
              if (v176 < 0xF0)
              {
                if (v176 == 127)
                {
                  v181 = *(v174 + 16);
                  v182 = *(v174 + 32);
                  v183 = *(v174 + 48);
                  v184 = *(v174 + 64);
                  v185 = *(v174 + 80);
                  v186 = *(v174 + 96);
                  v187 = *(v174 + 112);
                  *v175 = *v174;
                  v143[5] = v181;
                  v188 = &v175->i8[v26];
                  v143[6] = v184;
                  v143[7] = v185;
                  *v188 = v182;
                  *(v188 + 1) = v183;
                  v188 += 32;
                  *v188 = v186;
                  *(v188 + 1) = v187;
                  v177 = 128;
                }

                else if (v176 == 3)
                {
                  v179 = vld1q_dup_f32(v174);
                  v143[4] = v179;
                  v143[5] = v179;
                  v143[6] = v179;
                  v143[7] = v179;
                  v180 = &v175->i8[v26];
                  *v180 = v179;
                  v180[1] = v179;
                  v180[2] = v179;
                  v180[3] = v179;
                  v177 = 4;
                }

                else
                {
                  v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v175, v26, v174, v176);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v175, v26, v174, v176, v76);
                v177 = 64;
              }
            }

            else
            {
              v177 = 0;
              v143[6] = 0u;
              v143[7] = 0u;
              *v175 = 0u;
              v143[5] = 0u;
              v178 = &v175->i8[v26];
              *(v178 + 2) = 0u;
              *(v178 + 3) = 0u;
              *v178 = 0u;
              *(v178 + 1) = 0u;
            }

            v189 = (v159 + 64);
            v190 = v73[7];
            if (v73[7])
            {
              v191 = v174 + v177;
              if (v190 < 0xF0)
              {
                if (v190 == 127)
                {
                  v194 = *(v191 + 16);
                  v195 = *(v191 + 32);
                  v196 = *(v191 + 48);
                  v197 = *(v191 + 64);
                  v198 = *(v191 + 80);
                  v199 = *(v191 + 96);
                  v200 = *(v191 + 112);
                  *v189 = *v191;
                  *(v159 + 5) = v194;
                  v201 = &v189->i8[v26];
                  *(v159 + 6) = v197;
                  *(v159 + 7) = v198;
                  *v201 = v195;
                  *(v201 + 1) = v196;
                  v201 += 32;
                  *v201 = v199;
                  *(v201 + 1) = v200;
                }

                else if (v190 == 3)
                {
                  v192 = vld1q_dup_f32(v191);
                  *(v159 + 4) = v192;
                  *(v159 + 5) = v192;
                  *(v159 + 6) = v192;
                  *(v159 + 7) = v192;
                  v193 = &v189->i8[v26];
                  *v193 = v192;
                  v193[1] = v192;
                  v193[2] = v192;
                  v193[3] = v192;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v189, v26, v191, v190);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v189, v26, v191, v190, v76);
              }
            }

            else
            {
              *(v159 + 6) = 0u;
              *(v159 + 7) = 0u;
              *v189 = 0u;
              *(v159 + 5) = 0u;
              v37 = &v189->i8[v26];
              *(v37 + 2) = 0u;
              *(v37 + 3) = 0u;
              *v37 = 0u;
              *(v37 + 1) = 0u;
            }

            v25 = a7;
            result = v329;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v72;
          v337 = v44;
          v338 = v326;
          v333 = v315;
          v334 = v41 - v39;
          block[6] = v73;
          v331 = v323 + 16 * (v41 - v25);
          v26 = a11;
          v332 = a11;
          v335 = v314;
          v336 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v329;
            v25 = a7;
LABEL_30:
            v38 = v35 + 1;
            goto LABEL_31;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v73;
          if (*v73)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 127)
              {
                v202 = v72[1];
                v203 = v72[2];
                v204 = v72[3];
                v205 = v72[4];
                v206 = v72[5];
                v207 = v72[6];
                v208 = v72[7];
                v340 = *v72;
                v341 = v202;
                v342 = v205;
                v343 = v206;
                v348 = v203;
                v349 = v204;
                v350 = v207;
                v351 = v208;
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v86 = vld1q_dup_f32(v72->f32);
                v340 = v86;
                v341 = v86;
                v342 = v86;
                v343 = v86;
                v348 = v86;
                v349 = v86;
                v350 = v86;
                v351 = v86;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v340, 128, v72, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v340, 128, v72, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v209 = v72 + v82;
          v210 = v73[1];
          if (v73[1])
          {
            if (v210 < 0xF0)
            {
              if (v210 == 127)
              {
                v213 = *(v209 + 16);
                v214 = *(v209 + 32);
                v215 = *(v209 + 48);
                v216 = *(v209 + 64);
                v217 = *(v209 + 80);
                v218 = *(v209 + 96);
                v219 = *(v209 + 112);
                v356 = *v209;
                v357 = v213;
                v358 = v216;
                v359 = v217;
                v364 = v214;
                v365 = v215;
                v366 = v218;
                v367 = v219;
                v211 = 128;
              }

              else if (v210 == 3)
              {
                v212 = vld1q_dup_f32(v209);
                v356 = v212;
                v357 = v212;
                v358 = v212;
                v359 = v212;
                v364 = v212;
                v365 = v212;
                v366 = v212;
                v367 = v212;
                v211 = 4;
              }

              else
              {
                v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v356, 128, v209, v210);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v356, 128, v209, v210, v80);
              v211 = 64;
            }
          }

          else
          {
            v211 = 0;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v220 = v209 + v211;
          v221 = v73[2];
          if (v73[2])
          {
            if (v221 < 0xF0)
            {
              if (v221 == 127)
              {
                v224 = *(v220 + 16);
                v225 = *(v220 + 32);
                v226 = *(v220 + 48);
                v227 = *(v220 + 64);
                v228 = *(v220 + 80);
                v229 = *(v220 + 96);
                v230 = *(v220 + 112);
                v344 = *v220;
                v345 = v224;
                v346 = v227;
                v347 = v228;
                v352 = v225;
                v353 = v226;
                v354 = v229;
                v355 = v230;
                v222 = 128;
              }

              else if (v221 == 3)
              {
                v223 = vld1q_dup_f32(v220);
                v344 = v223;
                v345 = v223;
                v346 = v223;
                v347 = v223;
                v352 = v223;
                v353 = v223;
                v354 = v223;
                v355 = v223;
                v222 = 4;
              }

              else
              {
                v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v344, 128, v220, v221);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v344, 128, v220, v221, v80);
              v222 = 64;
            }
          }

          else
          {
            v222 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v231 = v220 + v222;
          v232 = v73[3];
          if (v73[3])
          {
            if (v232 < 0xF0)
            {
              if (v232 == 127)
              {
                v235 = *(v231 + 16);
                v236 = *(v231 + 32);
                v237 = *(v231 + 48);
                v238 = *(v231 + 64);
                v239 = *(v231 + 80);
                v240 = *(v231 + 96);
                v241 = *(v231 + 112);
                v360 = *v231;
                v361 = v235;
                v362 = v238;
                v363 = v239;
                v368 = v236;
                v369 = v237;
                v370 = v240;
                v371 = v241;
                v233 = 128;
              }

              else if (v232 == 3)
              {
                v234 = vld1q_dup_f32(v231);
                v360 = v234;
                v361 = v234;
                v362 = v234;
                v363 = v234;
                v368 = v234;
                v369 = v234;
                v370 = v234;
                v371 = v234;
                v233 = 4;
              }

              else
              {
                v233 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v360, 128, v231, v232);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v360, 128, v231, v232, v80);
              v233 = 64;
            }
          }

          else
          {
            v233 = 0;
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
          }

          v242 = v231 + v233;
          v243 = v73[4];
          if (v73[4])
          {
            if (v243 < 0xF0)
            {
              if (v243 == 127)
              {
                v246 = *(v242 + 16);
                v247 = *(v242 + 32);
                v248 = *(v242 + 48);
                v249 = *(v242 + 64);
                v250 = *(v242 + 80);
                v251 = *(v242 + 96);
                v252 = *(v242 + 112);
                v372 = *v242;
                v373 = v246;
                v374 = v249;
                v375 = v250;
                v380 = v247;
                v381 = v248;
                v382 = v251;
                v383 = v252;
                v244 = 128;
              }

              else if (v243 == 3)
              {
                v245 = vld1q_dup_f32(v242);
                v372 = v245;
                v373 = v245;
                v374 = v245;
                v375 = v245;
                v380 = v245;
                v381 = v245;
                v382 = v245;
                v383 = v245;
                v244 = 4;
              }

              else
              {
                v244 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v372, 128, v242, v243);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v372, 128, v242, v243, v80);
              v244 = 64;
            }
          }

          else
          {
            v244 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v253 = v242 + v244;
          v254 = v73[5];
          if (v73[5])
          {
            if (v254 < 0xF0)
            {
              if (v254 == 127)
              {
                v257 = *(v253 + 16);
                v258 = *(v253 + 32);
                v259 = *(v253 + 48);
                v260 = *(v253 + 64);
                v261 = *(v253 + 80);
                v262 = *(v253 + 96);
                v263 = *(v253 + 112);
                v388 = *v253;
                v389 = v257;
                v390 = v260;
                v391 = v261;
                v396 = v258;
                v397 = v259;
                v398 = v262;
                v399 = v263;
                v255 = 128;
              }

              else if (v254 == 3)
              {
                v256 = vld1q_dup_f32(v253);
                v388 = v256;
                v389 = v256;
                v390 = v256;
                v391 = v256;
                v396 = v256;
                v397 = v256;
                v398 = v256;
                v399 = v256;
                v255 = 4;
              }

              else
              {
                v255 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v388, 128, v253, v254);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v388, 128, v253, v254, v80);
              v255 = 64;
            }
          }

          else
          {
            v255 = 0;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
          }

          v264 = v253 + v255;
          v265 = v73[6];
          if (v73[6])
          {
            if (v265 < 0xF0)
            {
              if (v265 == 127)
              {
                v269 = *(v264 + 16);
                v270 = *(v264 + 32);
                v271 = *(v264 + 48);
                v272 = *(v264 + 64);
                v273 = *(v264 + 80);
                v274 = *(v264 + 96);
                v275 = *(v264 + 112);
                v376 = *v264;
                v377 = v269;
                v378 = v272;
                v379 = v273;
                v384 = v270;
                v385 = v271;
                v386 = v274;
                v387 = v275;
                v266 = 128;
                v267 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v265 == 3)
              {
                v268 = vld1q_dup_f32(v264);
                v376 = v268;
                v377 = v268;
                v378 = v268;
                v379 = v268;
                v384 = v268;
                v385 = v268;
                v386 = v268;
                v387 = v268;
                v266 = 4;
                v267 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v266 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v376, 128, v264, v265);
                v267 = v73[7];
                if (!v73[7])
                {
LABEL_232:
                  v394 = 0u;
                  v395 = 0u;
                  v392 = 0u;
                  v393 = 0u;
                  v400 = 0u;
                  v401 = 0u;
                  v402 = 0u;
                  v403 = 0u;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v376, 128, v264, v265, v80);
              v266 = 64;
              v267 = v73[7];
              if (!v73[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v266 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
            v267 = v73[7];
            if (!v73[7])
            {
              goto LABEL_232;
            }
          }

          v276 = v264 + v266;
          if (v267 < 0xF0)
          {
            if (v267 == 127)
            {
              v278 = *(v276 + 16);
              v279 = *(v276 + 32);
              v280 = *(v276 + 48);
              v281 = *(v276 + 64);
              v282 = *(v276 + 80);
              v283 = *(v276 + 96);
              v284 = *(v276 + 112);
              v392 = *v276;
              v393 = v278;
              v394 = v281;
              v395 = v282;
              v400 = v279;
              v401 = v280;
              v402 = v283;
              v403 = v284;
            }

            else if (v267 == 3)
            {
              v277 = vld1q_dup_f32(v276);
              v392 = v277;
              v393 = v277;
              v394 = v277;
              v395 = v277;
              v400 = v277;
              v401 = v277;
              v402 = v277;
              v403 = v277;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v392, 128, v276, v267);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v392, 128, v276, v267, v80);
          }

LABEL_234:
          result = v329;
          v38 = v35 + 1;
          v285 = v335;
          v25 = a7;
          if (v335)
          {
            v286 = 0;
            v287 = &v340 + 8 * v333 + v334;
            v288 = v336;
            do
            {
              if (v288)
              {
                v289 = 0;
                v290 = v331 + v332 * v286;
                do
                {
                  *(v290 + v289) = v287->i8[v289];
                  ++v289;
                  v288 = v336;
                }

                while (16 * v336 > v289);
                v285 = v335;
              }

              ++v286;
              v287 += 8;
            }

            while (v286 < v285);
          }

LABEL_31:
          v20 = v35 == v318 >> 3;
          v35 = v38;
        }

        while (!v20);
        v20 = v16++ == v309;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v17 = a8 >> 3;
  v192 = a8 + a10 - 1;
  v194 = v192 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v215 = a1;
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
  v207 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v206 = result;
  if (v17 <= v194)
  {
    v205 = a7 + a9 - 1;
    v191 = a7 >> 3;
    if (a7 >> 3 <= v205 >> 3)
    {
      result = a1;
      v26 = a11;
      v214 = (a5 - 1) >> 3;
      v188 = a5 - 1;
      v197 = (a5 - 1) & 7;
      v189 = (a6 - 1) & 7;
      v190 = (a6 - 1) >> 3;
      v195 = 4 * a11;
      v196 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v28.i8 = vcgt_u32(v27, 0xF0000000FLL);
      v29.i64[0] = -1;
      v30.i64[0] = 0x2000000020;
      *v31.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), *v28.i8);
      v202 = v31.i64[0];
      v203 = v31.i32[0] | v31.i32[1];
      v201 = v28.i64[0];
      v187 = 8 * v19 * v18;
      v204 = a7;
      do
      {
        v32 = (8 * v17) | 7;
        if (8 * v17 <= v212)
        {
          v33 = v212;
        }

        else
        {
          v33 = 8 * v17;
        }

        if (v192 < v32)
        {
          v32 = v192;
        }

        v211 = 8 * v17;
        v200 = v33 - 8 * v17;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v189;
        v199 = v35;
        v37 = v35 != 8;
        v38 = v191;
        v39 = v189 + 1;
        if (v17 != v190)
        {
          v39 = 8;
        }

        v213 = v39;
        if (v17 != v190)
        {
          v36 = v37;
        }

        v198 = v36;
        v210 = a2 + (v33 - v212) * v26;
        do
        {
          v41 = 8 * v38;
          v42 = 8 * (v38 + 1) - 1;
          if (8 * v38 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 8 * v38;
          }

          if (v205 < v42)
          {
            v42 = v205;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v38 == v214)
          {
            v46 = v197 + 1;
          }

          else
          {
            v46 = 8;
          }

          v47 = 1;
          if (v211 >= v212 && v41 >= a7)
          {
            v48 = v44 != v197;
            if (v38 != v214)
            {
              v48 = v45 != 8;
            }

            v47 = v48 || v198;
          }

          if (v206)
          {
            v69 = 0;
            v70 = v187 >> (*(result + 57) != 0);
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
              v71 = 0;
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
                v71 = 0;
                v73 = 8;
                v69 = 16;
              }
            }

            v175 = (v69 >> 3) - 1;
            if (v71)
            {
              v176 = 0;
            }

            else
            {
              v176 = 32 - __clz(~(-1 << -__clz(v175)));
            }

            v177 = (v73 >> 3) - 1;
            if (v72)
            {
              v178 = 0;
              if (v176)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v178 = 32 - __clz(~(-1 << -__clz(v177)));
              if (v178 | v176)
              {
LABEL_261:
                v179 = 0;
                v180 = 0;
                v181 = v38 & v175;
                v182 = v17 & v177;
                v183 = v176 != 0;
                v184 = v178 != 0;
                v185 = 1;
                do
                {
                  --v176;
                  if (v183)
                  {
                    v180 |= (v185 & v181) << v179++;
                  }

                  else
                  {
                    v176 = 0;
                  }

                  --v178;
                  if (v184)
                  {
                    v180 |= (v185 & v182) << v179++;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v185 *= 2;
                  --v179;
                  v184 = v178 != 0;
                  v183 = v176 != 0;
                }

                while (v178 | v176);
                v186 = v180 << 8;
                result = v215;
                goto LABEL_273;
              }
            }

            v186 = 0;
LABEL_273:
            v56 = v186 + ((v41 / v69 + v211 / v73 * ((v69 + v188) / v69)) << 14);
            goto LABEL_57;
          }

          if (v203)
          {
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v52 = v201;
            v53 = BYTE4(v201);
            v55 = v202;
            v54 = HIDWORD(v202);
            do
            {
              --v54;
              if (v53)
              {
                v50 |= (v51 & v38) << v49++;
              }

              else
              {
                v54 = 0;
              }

              --v55;
              if (v52)
              {
                v50 |= (v51 & v17) << v49++;
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

LABEL_57:
          v57 = *(result + 128) >> (*(result + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
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
LABEL_82:
              v68 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_82;
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
LABEL_83:
          v74 = (a3 + v56);
          if (v207)
          {
            memcpy(__dst, v74, sizeof(__dst));
            result = v215;
            v74 = __dst;
          }

          v75 = (a4 + v68);
          v76 = (v210 + 8 * (v43 - a7));
          if (!(v47 & 1 | (v46 < 8u)) && v213 > 7)
          {
            v77 = *(result + 208);
            v78 = *(v77 + 52);
            v79 = *v75;
            if (*v75)
            {
              v26 = a11;
              if (v79 < 0xF0)
              {
                if (v79 == 63)
                {
                  v80 = *v74;
                  v28 = v74[1];
                  v29 = v74[2];
                  v30 = v74[3];
                  *v76 = *v74;
                  v76[1] = v29;
                  v89 = (v76 + a11);
                  *v89 = v28;
                  v89[1] = v30;
                  v81 = 64;
                }

                else if (v79 == 1)
                {
                  v80 = vld1q_dup_s16(v74->i16);
                  *v76 = v80;
                  v76[1] = v80;
                  v88 = (v76 + a11);
                  *v88 = v80;
                  v88[1] = v80;
                  v81 = 2;
                }

                else
                {
                  v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v76, a11, v74, v79, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v80.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v76, a11, v74, v79, *(v77 + 52)).u64[0];
                v81 = 32;
              }
            }

            else
            {
              v81 = 0;
              v80.i64[0] = 0;
              *v76 = 0u;
              v76[1] = 0u;
              v26 = a11;
              v87 = &v76->i8[a11];
              *v87 = 0u;
              *(v87 + 1) = 0u;
            }

            v90 = v74->u64 + v81;
            v91 = (v76 + v196);
            v92 = v75[1];
            if (v75[1])
            {
              if (v92 < 0xF0)
              {
                if (v92 == 63)
                {
                  v93 = *v90;
                  v28 = *(v90 + 16);
                  v29 = *(v90 + 32);
                  v30 = *(v90 + 48);
                  *v91 = *v90;
                  v91[1] = v29;
                  v97 = (v91 + v26);
                  *v97 = v28;
                  v97[1] = v30;
                  v94 = 64;
                }

                else if (v92 == 1)
                {
                  v93 = vld1q_dup_s16(v90);
                  *v91 = v93;
                  v91[1] = v93;
                  v96 = (v91 + v26);
                  *v96 = v93;
                  v96[1] = v93;
                  v94 = 2;
                }

                else
                {
                  v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v76 + v196), v26, v90, v92, *v80.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v93.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v76 + v196), v26, v90, v92, v78).u64[0];
                v94 = 32;
              }
            }

            else
            {
              v94 = 0;
              v93.i64[0] = 0;
              *v91 = 0u;
              v91[1] = 0u;
              v95 = &v91->i8[v26];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v98 = v90 + v94;
            v99 = v76 + 2;
            v100 = v75[2];
            if (v75[2])
            {
              if (v100 < 0xF0)
              {
                if (v100 == 63)
                {
                  v101 = *v98;
                  v28 = *(v98 + 16);
                  v29 = *(v98 + 32);
                  v30 = *(v98 + 48);
                  v76[2] = *v98;
                  v76[3] = v29;
                  v105 = &v99->i8[v26];
                  *v105 = v28;
                  *(v105 + 1) = v30;
                  v102 = 64;
                }

                else if (v100 == 1)
                {
                  v101 = vld1q_dup_s16(v98);
                  v76[2] = v101;
                  v76[3] = v101;
                  v104 = (v99 + v26);
                  *v104 = v101;
                  v104[1] = v101;
                  v102 = 2;
                }

                else
                {
                  v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v99, v26, v98, v100, *v93.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v101.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v99, v26, v98, v100, v78).u64[0];
                v102 = 32;
              }
            }

            else
            {
              v102 = 0;
              v101.i64[0] = 0;
              *v99 = 0u;
              v76[3] = 0u;
              v103 = &v99->i8[v26];
              *v103 = 0u;
              *(v103 + 1) = 0u;
            }

            v106 = v98 + v102;
            v107 = v91 + 2;
            v108 = v75[3];
            if (v75[3])
            {
              if (v108 < 0xF0)
              {
                if (v108 == 63)
                {
                  v109 = *v106;
                  v28 = *(v106 + 16);
                  v29 = *(v106 + 32);
                  v30 = *(v106 + 48);
                  v91[2] = *v106;
                  v91[3] = v29;
                  v113 = &v107->i8[v26];
                  *v113 = v28;
                  *(v113 + 1) = v30;
                  v110 = 64;
                }

                else if (v108 == 1)
                {
                  v109 = vld1q_dup_s16(v106);
                  v91[2] = v109;
                  v91[3] = v109;
                  v112 = (v107 + v26);
                  *v112 = v109;
                  v112[1] = v109;
                  v110 = 2;
                }

                else
                {
                  v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v107, v26, v106, v108, *v101.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v109.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v107, v26, v106, v108, v78).u64[0];
                v110 = 32;
              }
            }

            else
            {
              v110 = 0;
              v109.i64[0] = 0;
              *v107 = 0u;
              v91[3] = 0u;
              v111 = &v107->i8[v26];
              *v111 = 0u;
              *(v111 + 1) = 0u;
            }

            v114 = v106 + v110;
            v115 = (v76 + v195);
            v116 = v75[4];
            if (v75[4])
            {
              if (v116 < 0xF0)
              {
                if (v116 == 63)
                {
                  v117 = *v114;
                  v28 = *(v114 + 16);
                  v29 = *(v114 + 32);
                  v30 = *(v114 + 48);
                  *v115 = *v114;
                  v115[1] = v29;
                  v121 = (v115 + v26);
                  *v121 = v28;
                  v121[1] = v30;
                  v118 = 64;
                }

                else if (v116 == 1)
                {
                  v117 = vld1q_dup_s16(v114);
                  *v115 = v117;
                  v115[1] = v117;
                  v120 = (v115 + v26);
                  *v120 = v117;
                  v120[1] = v117;
                  v118 = 2;
                }

                else
                {
                  v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v76 + v195), v26, v114, v116, *v109.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v117.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v76 + v195), v26, v114, v116, v78).u64[0];
                v118 = 32;
              }
            }

            else
            {
              v118 = 0;
              v117.i64[0] = 0;
              *v115 = 0u;
              v115[1] = 0u;
              v119 = &v115->i8[v26];
              *v119 = 0u;
              *(v119 + 1) = 0u;
            }

            v122 = v114 + v118;
            v123 = (v76 + 6 * a11);
            v124 = v75[5];
            if (v75[5])
            {
              if (v124 < 0xF0)
              {
                if (v124 == 63)
                {
                  v125 = *v122;
                  v28 = *(v122 + 16);
                  v29 = *(v122 + 32);
                  v30 = *(v122 + 48);
                  *v123 = *v122;
                  v123[1] = v29;
                  v129 = (v123 + v26);
                  *v129 = v28;
                  v129[1] = v30;
                  v126 = 64;
                }

                else if (v124 == 1)
                {
                  v125 = vld1q_dup_s16(v122);
                  *v123 = v125;
                  v123[1] = v125;
                  v128 = (v123 + v26);
                  *v128 = v125;
                  v128[1] = v125;
                  v126 = 2;
                }

                else
                {
                  v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v26, v122, v124, *v117.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v125.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123, v26, v122, v124, v78).u64[0];
                v126 = 32;
              }
            }

            else
            {
              v126 = 0;
              v125.i64[0] = 0;
              *v123 = 0u;
              v123[1] = 0u;
              v127 = &v123->i8[v26];
              *v127 = 0u;
              *(v127 + 1) = 0u;
            }

            v130 = v122 + v126;
            v131 = v115 + 2;
            v132 = v75[6];
            if (v75[6])
            {
              if (v132 < 0xF0)
              {
                if (v132 == 63)
                {
                  v133 = *v130;
                  v28 = *(v130 + 16);
                  v29 = *(v130 + 32);
                  v30 = *(v130 + 48);
                  v115[2] = *v130;
                  v115[3] = v29;
                  v137 = &v131->i8[v26];
                  *v137 = v28;
                  *(v137 + 1) = v30;
                  v134 = 64;
                }

                else if (v132 == 1)
                {
                  v133 = vld1q_dup_s16(v130);
                  v115[2] = v133;
                  v115[3] = v133;
                  v136 = (v131 + v26);
                  *v136 = v133;
                  v136[1] = v133;
                  v134 = 2;
                }

                else
                {
                  v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v131, v26, v130, v132, *v125.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v133.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v131, v26, v130, v132, v78).u64[0];
                v134 = 32;
              }
            }

            else
            {
              v134 = 0;
              v133.i64[0] = 0;
              *v131 = 0u;
              v115[3] = 0u;
              v135 = &v131->i8[v26];
              *v135 = 0u;
              *(v135 + 1) = 0u;
            }

            v138 = v123 + 2;
            v139 = v75[7];
            if (v75[7])
            {
              v140 = v130 + v134;
              if (v139 >= 0xF0)
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v138, v26, v140, v139, v78).u64[0];
              }

              else if (v139 == 63)
              {
                v31 = *v140;
                v28 = *(v140 + 16);
                v29 = *(v140 + 32);
                v30 = *(v140 + 48);
                v123[2] = *v140;
                v123[3] = v29;
                v142 = &v138->i8[v26];
                *v142 = v28;
                *(v142 + 1) = v30;
              }

              else
              {
                if (v139 == 1)
                {
                  v31 = vld1q_dup_s16(v140);
                  v123[2] = v31;
                  v123[3] = v31;
                  goto LABEL_165;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v138, v26, v140, v139, *v133.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31 = 0uLL;
              *v138 = 0u;
              v123[3] = 0u;
LABEL_165:
              v141 = (v138 + v26);
              *v141 = v31;
              v141[1] = v31;
            }

            a7 = v204;
            result = v215;
LABEL_30:
            v40 = v38 + 1;
            goto LABEL_31;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v74;
          v223 = v46;
          v224 = v213;
          v219 = v200;
          v220 = v43 - v41;
          block[6] = v75;
          v217 = v76;
          v26 = a11;
          v218 = a11;
          v221 = v199;
          v222 = v45;
          if (v47)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v215;
            a7 = v204;
            goto LABEL_30;
          }

          v82 = *(result + 208);
          v83 = *(v82 + 52);
          v84 = *v75;
          a7 = v204;
          if (*v75)
          {
            if (v84 < 0xF0)
            {
              if (v84 == 63)
              {
                v85 = *v74;
                v28 = v74[1];
                v29 = v74[2];
                v30 = v74[3];
                v226 = *v74;
                v227 = v29;
                v230 = v28;
                v231 = v30;
                v86 = 64;
              }

              else if (v84 == 1)
              {
                v85 = vld1q_dup_s16(v74->i16);
                v226 = v85;
                v227 = v85;
                v230 = v85;
                v231 = v85;
                v86 = 2;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v226, 64, v74, v84, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v85.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v226, 64, v74, v84, *(v82 + 52)).u64[0];
              v86 = 32;
            }
          }

          else
          {
            v86 = 0;
            v85.i64[0] = 0;
            v226 = 0u;
            v227 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v143 = v74->u64 + v86;
          v144 = v75[1];
          if (v75[1])
          {
            if (v144 < 0xF0)
            {
              if (v144 == 63)
              {
                v145 = *v143;
                v28 = *(v143 + 16);
                v29 = *(v143 + 32);
                v30 = *(v143 + 48);
                v234 = *v143;
                v235 = v29;
                v238 = v28;
                v239 = v30;
                v146 = 64;
              }

              else if (v144 == 1)
              {
                v145 = vld1q_dup_s16(v143);
                v234 = v145;
                v235 = v145;
                v238 = v145;
                v239 = v145;
                v146 = 2;
              }

              else
              {
                v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v234, 64, v143, v144, *v85.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v145.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v234, 64, v143, v144, v83).u64[0];
              v146 = 32;
            }
          }

          else
          {
            v146 = 0;
            v145.i64[0] = 0;
            v234 = 0u;
            v235 = 0u;
            v238 = 0u;
            v239 = 0u;
          }

          v147 = v143 + v146;
          v148 = v75[2];
          if (v75[2])
          {
            if (v148 < 0xF0)
            {
              if (v148 == 63)
              {
                v149 = *v147;
                v28 = *(v147 + 16);
                v29 = *(v147 + 32);
                v30 = *(v147 + 48);
                v228 = *v147;
                v229 = v29;
                v232 = v28;
                v233 = v30;
                v150 = 64;
              }

              else if (v148 == 1)
              {
                v149 = vld1q_dup_s16(v147);
                v228 = v149;
                v229 = v149;
                v232 = v149;
                v233 = v149;
                v150 = 2;
              }

              else
              {
                v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v228, 64, v147, v148, *v145.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v149.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v228, 64, v147, v148, v83).u64[0];
              v150 = 32;
            }
          }

          else
          {
            v150 = 0;
            v149.i64[0] = 0;
            v228 = 0u;
            v229 = 0u;
            v232 = 0u;
            v233 = 0u;
          }

          v151 = v147 + v150;
          v152 = v75[3];
          if (v75[3])
          {
            if (v152 < 0xF0)
            {
              if (v152 == 63)
              {
                v153 = *v151;
                v28 = *(v151 + 16);
                v29 = *(v151 + 32);
                v30 = *(v151 + 48);
                v236 = *v151;
                v237 = v29;
                v240 = v28;
                v241 = v30;
                v154 = 64;
              }

              else if (v152 == 1)
              {
                v153 = vld1q_dup_s16(v151);
                v236 = v153;
                v237 = v153;
                v240 = v153;
                v241 = v153;
                v154 = 2;
              }

              else
              {
                v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v236, 64, v151, v152, *v149.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v153.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v236, 64, v151, v152, v83).u64[0];
              v154 = 32;
            }
          }

          else
          {
            v154 = 0;
            v153.i64[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v240 = 0u;
            v241 = 0u;
          }

          v155 = v151 + v154;
          v156 = v75[4];
          if (v75[4])
          {
            if (v156 < 0xF0)
            {
              if (v156 == 63)
              {
                v157 = *v155;
                v28 = *(v155 + 16);
                v29 = *(v155 + 32);
                v30 = *(v155 + 48);
                v242 = *v155;
                v243 = v29;
                v246 = v28;
                v247 = v30;
                v158 = 64;
              }

              else if (v156 == 1)
              {
                v157 = vld1q_dup_s16(v155);
                v242 = v157;
                v243 = v157;
                v246 = v157;
                v247 = v157;
                v158 = 2;
              }

              else
              {
                v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v242, 64, v155, v156, *v153.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v157.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v242, 64, v155, v156, v83).u64[0];
              v158 = 32;
            }
          }

          else
          {
            v158 = 0;
            v157.i64[0] = 0;
            v242 = 0u;
            v243 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v159 = v155 + v158;
          v160 = v75[5];
          if (v75[5])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 63)
              {
                v161 = *v159;
                v28 = *(v159 + 16);
                v29 = *(v159 + 32);
                v30 = *(v159 + 48);
                v250 = *v159;
                v251 = v29;
                v254 = v28;
                v255 = v30;
                v162 = 64;
              }

              else if (v160 == 1)
              {
                v161 = vld1q_dup_s16(v159);
                v250 = v161;
                v251 = v161;
                v254 = v161;
                v255 = v161;
                v162 = 2;
              }

              else
              {
                v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v250, 64, v159, v160, *v157.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v161.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v250, 64, v159, v160, v83).u64[0];
              v162 = 32;
            }
          }

          else
          {
            v162 = 0;
            v161.i64[0] = 0;
            v250 = 0u;
            v251 = 0u;
            v254 = 0u;
            v255 = 0u;
          }

          v163 = v159 + v162;
          v164 = v75[6];
          if (v75[6])
          {
            if (v164 < 0xF0)
            {
              if (v164 == 63)
              {
                v165 = *v163;
                v28 = *(v163 + 16);
                v29 = *(v163 + 32);
                v30 = *(v163 + 48);
                v244 = *v163;
                v245 = v29;
                v248 = v28;
                v249 = v30;
                v166 = 64;
                v167 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v164 == 1)
              {
                v165 = vld1q_dup_s16(v163);
                v244 = v165;
                v245 = v165;
                v248 = v165;
                v249 = v165;
                v166 = 2;
                v167 = v75[7];
                if (!v75[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v244, 64, v163, v164, *v161.i64, *v28.i64, *v29.i64, *v30.i8);
                v167 = v75[7];
                if (!v75[7])
                {
LABEL_218:
                  v31.i64[0] = 0;
                  v252 = 0u;
                  v253 = 0u;
                  v256 = 0u;
                  v257 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v165.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v244, 64, v163, v164, v83).u64[0];
              v166 = 32;
              v167 = v75[7];
              if (!v75[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v166 = 0;
            v165.i64[0] = 0;
            v244 = 0u;
            v245 = 0u;
            v248 = 0u;
            v249 = 0u;
            v167 = v75[7];
            if (!v75[7])
            {
              goto LABEL_218;
            }
          }

          v168 = v163 + v166;
          if (v167 < 0xF0)
          {
            if (v167 == 63)
            {
              v31 = *v168;
              v28 = *(v168 + 16);
              v29 = *(v168 + 32);
              v30 = *(v168 + 48);
              v252 = *v168;
              v253 = v29;
              v256 = v28;
              v257 = v30;
            }

            else if (v167 == 1)
            {
              v31 = vld1q_dup_s16(v168);
              v252 = v31;
              v253 = v31;
              v256 = v31;
              v257 = v31;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v252, 64, v168, v167, *v165.i64, *v28.i64, *v29.i64, *v30.i8);
            }
          }

          else
          {
            v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v252, 64, v168, v167, v83).u64[0];
          }

LABEL_235:
          result = v215;
          v40 = v38 + 1;
          v169 = v221;
          if (v221)
          {
            v170 = 0;
            v171 = &v226.i8[64 * v219 + 8 * v220];
            v172 = v222;
            do
            {
              if (v172)
              {
                v173 = 0;
                v174 = v217->i64 + v218 * v170;
                do
                {
                  *(v174 + v173) = v171[v173];
                  ++v173;
                  v172 = v222;
                }

                while (8 * v222 > v173);
                v169 = v221;
              }

              ++v170;
              v171 += 64;
            }

            while (v170 < v169);
          }

LABEL_31:
          v21 = v38 == v205 >> 3;
          v38 = v40;
        }

        while (!v21);
        v21 = v17++ == v194;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v38 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v135 + 16 * (v50 - v36), v25, v81, *v87, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v123, v25, v38, v87[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + 64, v25, v39, v87[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v123 + 64, v25, v40, v87[3], v37);
            v42 = v88 + v122;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v122, v25, v41, v87[4], v37);
            v44 = v88 + 6 * a11;
            v45 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44, v25, v43, v87[5], v37);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v42 + 64, v25, v45, v87[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44 + 64, v25, v45 + v46, v87[7], v37);
LABEL_29:
            v36 = a7;
            v47 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v90 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v152, 128, v81, *v87, v89)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 128, v90, v87[1], v89);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 128, v91, v87[2], v89);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 128, v92, v87[3], v89);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v156, 128, v93, v87[4], v89);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v158, 128, v94, v87[5], v89);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v157, 128, v95, v87[6], v89);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v159, 128, v95 + v96, v87[7], v89);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v404 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v325 = a8;
  v16 = a8 >> 3;
  v307 = a8 + a10 - 1;
  v309 = v307 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v329 = a1;
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
  v320 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v319 = result;
  v25 = a7;
  if (v16 <= v309)
  {
    v318 = a7 + a9 - 1;
    if (a7 >> 3 <= v318 >> 3)
    {
      result = a1;
      v26 = a11;
      v327 = (a5 - 1) >> 3;
      v304 = a5 - 1;
      v312 = (a5 - 1) & 7;
      v305 = (a6 - 1) & 7;
      v306 = (a6 - 1) >> 3;
      v310 = 4 * a11;
      v311 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v317 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v316 = v28;
      v303 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v325)
        {
          v30 = v325;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v307 < v29)
        {
          v29 = v307;
        }

        v324 = 8 * v16;
        v315 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v305;
        v314 = v32;
        v34 = v32 != 8;
        v35 = a7 >> 3;
        v36 = v305 + 1;
        if (v16 != v306)
        {
          v36 = 8;
        }

        v326 = v36;
        if (v16 != v306)
        {
          v33 = v34;
        }

        v313 = v33;
        v323 = a2 + (v30 - v325) * v26;
        do
        {
          v39 = 8 * v35;
          v40 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= v25)
          {
            v41 = v25;
          }

          else
          {
            v41 = 8 * v35;
          }

          if (v318 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v35 == v327)
          {
            v44 = v312 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v324 >= v325 && v39 >= v25)
          {
            v46 = v42 != v312;
            if (v35 != v327)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v313;
          }

          if (v319)
          {
            v67 = 0;
            v68 = v303 >> (*(result + 57) != 0);
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

            v291 = (v67 >> 3) - 1;
            if (v69)
            {
              v292 = 0;
            }

            else
            {
              v292 = 32 - __clz(~(-1 << -__clz(v291)));
            }

            v293 = (v71 >> 3) - 1;
            if (v70)
            {
              v294 = 0;
              if (v292)
              {
                goto LABEL_260;
              }
            }

            else
            {
              v294 = 32 - __clz(~(-1 << -__clz(v293)));
              if (v294 | v292)
              {
LABEL_260:
                v295 = 0;
                v296 = 0;
                v297 = v35 & v291;
                v298 = v16 & v293;
                v299 = v292 != 0;
                v300 = v294 != 0;
                v301 = 1;
                do
                {
                  --v292;
                  if (v299)
                  {
                    v296 |= (v301 & v297) << v295++;
                  }

                  else
                  {
                    v292 = 0;
                  }

                  --v294;
                  if (v300)
                  {
                    v296 |= (v301 & v298) << v295++;
                  }

                  else
                  {
                    v294 = 0;
                  }

                  v301 *= 2;
                  --v295;
                  v300 = v294 != 0;
                  v299 = v292 != 0;
                }

                while (v294 | v292);
                v302 = v296 << 9;
                result = v329;
                goto LABEL_272;
              }
            }

            v302 = 0;
LABEL_272:
            v54 = v302 + ((v39 / v67 + v324 / v71 * ((v67 + v304) / v67)) << 14);
            goto LABEL_57;
          }

          if (v317)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v316.i8[4];
            v51 = v316.i8[0];
            v52 = v317.i32[1];
            v53 = v317.i32[0];
            do
            {
              --v52;
              if (v50)
              {
                v48 |= (v49 & v35) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v51)
              {
                v48 |= (v49 & v16) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v51 = v53 != 0;
              v50 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

LABEL_57:
          v55 = *(result + 128) >> (*(result + 144) + a12);
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
LABEL_82:
              v66 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_82;
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
              v62 |= (v65 & v35) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v16) << v61++;
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
LABEL_83:
          v72 = (a3 + v54);
          if (v320)
          {
            memcpy(__dst, v72, sizeof(__dst));
            result = v329;
            v25 = a7;
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = (v323 + 16 * (v41 - v25));
          if (!(v45 & 1 | (v44 < 8u)) && v326 > 7)
          {
            v75 = *(result + 208);
            v76 = *(v75 + 52);
            v77 = *v73;
            if (*v73)
            {
              v26 = a11;
              if (v77 < 0xF0)
              {
                if (v77 == 127)
                {
                  v87 = v72[1];
                  v88 = v72[2];
                  v89 = v72[3];
                  v90 = v72[4];
                  v91 = v72[5];
                  v92 = v72[6];
                  v93 = v72[7];
                  *v74 = *v72;
                  v74[1] = v87;
                  v94 = (v74 + a11);
                  v74[2] = v90;
                  v74[3] = v91;
                  *v94 = v88;
                  v94[1] = v89;
                  v95 = (v74 + a11 + 32);
                  *v95 = v92;
                  v95[1] = v93;
                  v78 = 128;
                }

                else if (v77 == 3)
                {
                  v84 = vld1q_dup_f32(v72->f32);
                  *v74 = v84;
                  v74[1] = v84;
                  v74[2] = v84;
                  v74[3] = v84;
                  v85 = (v74 + a11);
                  *v85 = v84;
                  v85[1] = v84;
                  v85[2] = v84;
                  v85[3] = v84;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v323 + 16 * (v41 - v25)), a11, v72, v77);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v323 + 16 * (v41 - v25)), a11, v72, v77, *(v75 + 52));
                v78 = 64;
              }
            }

            else
            {
              v78 = 0;
              v74[2] = 0u;
              v74[3] = 0u;
              *v74 = 0u;
              v74[1] = 0u;
              v26 = a11;
              v83 = (v74->f32 + a11);
              v83[2] = 0u;
              v83[3] = 0u;
              *v83 = 0u;
              v83[1] = 0u;
            }

            v96 = v72 + v78;
            v97 = (v74 + v311);
            v98 = v73[1];
            if (v73[1])
            {
              if (v98 < 0xF0)
              {
                if (v98 == 127)
                {
                  v103 = *(v96 + 16);
                  v104 = *(v96 + 32);
                  v105 = *(v96 + 48);
                  v106 = *(v96 + 64);
                  v107 = *(v96 + 80);
                  v108 = *(v96 + 96);
                  v109 = *(v96 + 112);
                  *v97 = *v96;
                  v97[1] = v103;
                  v110 = (v97->f32 + v26);
                  v97[2] = v106;
                  v97[3] = v107;
                  *v110 = v104;
                  v110[1] = v105;
                  v111 = (v97[2].f32 + v26);
                  *v111 = v108;
                  v111[1] = v109;
                  v99 = 128;
                }

                else if (v98 == 3)
                {
                  v101 = vld1q_dup_f32(v96);
                  *v97 = v101;
                  v97[1] = v101;
                  v97[2] = v101;
                  v97[3] = v101;
                  v102 = (v97 + v26);
                  *v102 = v101;
                  v102[1] = v101;
                  v102[2] = v101;
                  v102[3] = v101;
                  v99 = 4;
                }

                else
                {
                  v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v311), v26, v96, v98);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v74 + v311), v26, v96, v98, v76);
                v99 = 64;
              }
            }

            else
            {
              v99 = 0;
              v97[2] = 0u;
              v97[3] = 0u;
              *v97 = 0u;
              v97[1] = 0u;
              v100 = (v97->f32 + v26);
              v100[2] = 0u;
              v100[3] = 0u;
              *v100 = 0u;
              v100[1] = 0u;
            }

            v112 = v96 + v99;
            v113 = &v74[4];
            v114 = v73[2];
            if (v73[2])
            {
              if (v114 < 0xF0)
              {
                if (v114 == 127)
                {
                  v119 = *(v112 + 16);
                  v120 = *(v112 + 32);
                  v121 = *(v112 + 48);
                  v122 = *(v112 + 64);
                  v123 = *(v112 + 80);
                  v124 = *(v112 + 96);
                  v125 = *(v112 + 112);
                  *v113 = *v112;
                  v74[5] = v119;
                  v126 = &v113->i8[v26];
                  v74[6] = v122;
                  v74[7] = v123;
                  *v126 = v120;
                  *(v126 + 1) = v121;
                  v126 += 32;
                  *v126 = v124;
                  *(v126 + 1) = v125;
                  v115 = 128;
                }

                else if (v114 == 3)
                {
                  v117 = vld1q_dup_f32(v112);
                  v74[4] = v117;
                  v74[5] = v117;
                  v74[6] = v117;
                  v74[7] = v117;
                  v118 = &v113->i8[v26];
                  *v118 = v117;
                  v118[1] = v117;
                  v118[2] = v117;
                  v118[3] = v117;
                  v115 = 4;
                }

                else
                {
                  v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v113, v26, v112, v114);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v113->i32, v26, v112, v114, v76);
                v115 = 64;
              }
            }

            else
            {
              v115 = 0;
              v74[6] = 0u;
              v74[7] = 0u;
              *v113 = 0u;
              v74[5] = 0u;
              v116 = &v113->i8[v26];
              *(v116 + 2) = 0u;
              *(v116 + 3) = 0u;
              *v116 = 0u;
              *(v116 + 1) = 0u;
            }

            v127 = v112 + v115;
            v128 = &v97[4];
            v129 = v73[3];
            if (v73[3])
            {
              if (v129 < 0xF0)
              {
                if (v129 == 127)
                {
                  v134 = *(v127 + 16);
                  v135 = *(v127 + 32);
                  v136 = *(v127 + 48);
                  v137 = *(v127 + 64);
                  v138 = *(v127 + 80);
                  v139 = *(v127 + 96);
                  v140 = *(v127 + 112);
                  *v128 = *v127;
                  v97[5] = v134;
                  v141 = &v128->i8[v26];
                  v97[6] = v137;
                  v97[7] = v138;
                  *v141 = v135;
                  *(v141 + 1) = v136;
                  v141 += 32;
                  *v141 = v139;
                  *(v141 + 1) = v140;
                  v130 = 128;
                }

                else if (v129 == 3)
                {
                  v132 = vld1q_dup_f32(v127);
                  v97[4] = v132;
                  v97[5] = v132;
                  v97[6] = v132;
                  v97[7] = v132;
                  v133 = &v128->i8[v26];
                  *v133 = v132;
                  v133[1] = v132;
                  v133[2] = v132;
                  v133[3] = v132;
                  v130 = 4;
                }

                else
                {
                  v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v128, v26, v127, v129);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v128->i32, v26, v127, v129, v76);
                v130 = 64;
              }
            }

            else
            {
              v130 = 0;
              v97[6] = 0u;
              v97[7] = 0u;
              *v128 = 0u;
              v97[5] = 0u;
              v131 = &v128->i8[v26];
              *(v131 + 2) = 0u;
              *(v131 + 3) = 0u;
              *v131 = 0u;
              *(v131 + 1) = 0u;
            }

            v142 = v127 + v130;
            v143 = (v74 + v310);
            v144 = v73[4];
            if (v73[4])
            {
              if (v144 < 0xF0)
              {
                if (v144 == 127)
                {
                  v149 = *(v142 + 16);
                  v150 = *(v142 + 32);
                  v151 = *(v142 + 48);
                  v152 = *(v142 + 64);
                  v153 = *(v142 + 80);
                  v154 = *(v142 + 96);
                  v155 = *(v142 + 112);
                  *v143 = *v142;
                  v143[1] = v149;
                  v156 = (v143->f32 + v26);
                  v143[2] = v152;
                  v143[3] = v153;
                  *v156 = v150;
                  v156[1] = v151;
                  v157 = (v143[2].f32 + v26);
                  *v157 = v154;
                  v157[1] = v155;
                  v145 = 128;
                }

                else if (v144 == 3)
                {
                  v147 = vld1q_dup_f32(v142);
                  *v143 = v147;
                  v143[1] = v147;
                  v143[2] = v147;
                  v143[3] = v147;
                  v148 = (v143 + v26);
                  *v148 = v147;
                  v148[1] = v147;
                  v148[2] = v147;
                  v148[3] = v147;
                  v145 = 4;
                }

                else
                {
                  v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v310), v26, v142, v144);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v74 + v310), v26, v142, v144, v76);
                v145 = 64;
              }
            }

            else
            {
              v145 = 0;
              v143[2] = 0u;
              v143[3] = 0u;
              *v143 = 0u;
              v143[1] = 0u;
              v146 = (v143->f32 + v26);
              v146[2] = 0u;
              v146[3] = 0u;
              *v146 = 0u;
              v146[1] = 0u;
            }

            v158 = v142 + v145;
            v159 = v74 + 6 * a11;
            v160 = v73[5];
            if (v73[5])
            {
              if (v160 < 0xF0)
              {
                if (v160 == 127)
                {
                  v165 = *(v158 + 16);
                  v166 = *(v158 + 32);
                  v167 = *(v158 + 48);
                  v168 = *(v158 + 64);
                  v169 = *(v158 + 80);
                  v170 = *(v158 + 96);
                  v171 = *(v158 + 112);
                  *v159 = *v158;
                  *(v159 + 1) = v165;
                  v172 = &v159[v26];
                  *(v159 + 2) = v168;
                  *(v159 + 3) = v169;
                  *v172 = v166;
                  *(v172 + 1) = v167;
                  v173 = &v159[v26 + 32];
                  *v173 = v170;
                  *(v173 + 1) = v171;
                  v161 = 128;
                }

                else if (v160 == 3)
                {
                  v163 = vld1q_dup_f32(v158);
                  *v159 = v163;
                  *(v159 + 1) = v163;
                  *(v159 + 2) = v163;
                  *(v159 + 3) = v163;
                  v164 = &v159[v26];
                  *v164 = v163;
                  v164[1] = v163;
                  v164[2] = v163;
                  v164[3] = v163;
                  v161 = 4;
                }

                else
                {
                  v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v159, v26, v158, v160);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v159, v26, v158, v160, v76);
                v161 = 64;
              }
            }

            else
            {
              v161 = 0;
              *(v159 + 2) = 0u;
              *(v159 + 3) = 0u;
              *v159 = 0u;
              *(v159 + 1) = 0u;
              v162 = &v159[v26];
              *(v162 + 2) = 0u;
              *(v162 + 3) = 0u;
              *v162 = 0u;
              *(v162 + 1) = 0u;
            }

            v174 = v158 + v161;
            v175 = &v143[4];
            v176 = v73[6];
            if (v73[6])
            {
              if (v176 < 0xF0)
              {
                if (v176 == 127)
                {
                  v181 = *(v174 + 16);
                  v182 = *(v174 + 32);
                  v183 = *(v174 + 48);
                  v184 = *(v174 + 64);
                  v185 = *(v174 + 80);
                  v186 = *(v174 + 96);
                  v187 = *(v174 + 112);
                  *v175 = *v174;
                  v143[5] = v181;
                  v188 = &v175->i8[v26];
                  v143[6] = v184;
                  v143[7] = v185;
                  *v188 = v182;
                  *(v188 + 1) = v183;
                  v188 += 32;
                  *v188 = v186;
                  *(v188 + 1) = v187;
                  v177 = 128;
                }

                else if (v176 == 3)
                {
                  v179 = vld1q_dup_f32(v174);
                  v143[4] = v179;
                  v143[5] = v179;
                  v143[6] = v179;
                  v143[7] = v179;
                  v180 = &v175->i8[v26];
                  *v180 = v179;
                  v180[1] = v179;
                  v180[2] = v179;
                  v180[3] = v179;
                  v177 = 4;
                }

                else
                {
                  v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v175, v26, v174, v176);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v175->i32, v26, v174, v176, v76);
                v177 = 64;
              }
            }

            else
            {
              v177 = 0;
              v143[6] = 0u;
              v143[7] = 0u;
              *v175 = 0u;
              v143[5] = 0u;
              v178 = &v175->i8[v26];
              *(v178 + 2) = 0u;
              *(v178 + 3) = 0u;
              *v178 = 0u;
              *(v178 + 1) = 0u;
            }

            v189 = (v159 + 64);
            v190 = v73[7];
            if (v73[7])
            {
              v191 = v174 + v177;
              if (v190 < 0xF0)
              {
                if (v190 == 127)
                {
                  v194 = *(v191 + 16);
                  v195 = *(v191 + 32);
                  v196 = *(v191 + 48);
                  v197 = *(v191 + 64);
                  v198 = *(v191 + 80);
                  v199 = *(v191 + 96);
                  v200 = *(v191 + 112);
                  *v189 = *v191;
                  *(v159 + 5) = v194;
                  v201 = &v189->i8[v26];
                  *(v159 + 6) = v197;
                  *(v159 + 7) = v198;
                  *v201 = v195;
                  *(v201 + 1) = v196;
                  v201 += 32;
                  *v201 = v199;
                  *(v201 + 1) = v200;
                }

                else if (v190 == 3)
                {
                  v192 = vld1q_dup_f32(v191);
                  *(v159 + 4) = v192;
                  *(v159 + 5) = v192;
                  *(v159 + 6) = v192;
                  *(v159 + 7) = v192;
                  v193 = &v189->i8[v26];
                  *v193 = v192;
                  v193[1] = v192;
                  v193[2] = v192;
                  v193[3] = v192;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v189, v26, v191, v190);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v189->i32, v26, v191, v190, v76);
              }
            }

            else
            {
              *(v159 + 6) = 0u;
              *(v159 + 7) = 0u;
              *v189 = 0u;
              *(v159 + 5) = 0u;
              v37 = &v189->i8[v26];
              *(v37 + 2) = 0u;
              *(v37 + 3) = 0u;
              *v37 = 0u;
              *(v37 + 1) = 0u;
            }

            v25 = a7;
            result = v329;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v72;
          v337 = v44;
          v338 = v326;
          v333 = v315;
          v334 = v41 - v39;
          block[6] = v73;
          v331 = v323 + 16 * (v41 - v25);
          v26 = a11;
          v332 = a11;
          v335 = v314;
          v336 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v329;
            v25 = a7;
LABEL_30:
            v38 = v35 + 1;
            goto LABEL_31;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v73;
          if (*v73)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 127)
              {
                v202 = v72[1];
                v203 = v72[2];
                v204 = v72[3];
                v205 = v72[4];
                v206 = v72[5];
                v207 = v72[6];
                v208 = v72[7];
                v340 = *v72;
                v341 = v202;
                v342 = v205;
                v343 = v206;
                v348 = v203;
                v349 = v204;
                v350 = v207;
                v351 = v208;
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v86 = vld1q_dup_f32(v72->f32);
                v340 = v86;
                v341 = v86;
                v342 = v86;
                v343 = v86;
                v348 = v86;
                v349 = v86;
                v350 = v86;
                v351 = v86;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v340, 128, v72, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v340.i32, 128, v72, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v209 = v72 + v82;
          v210 = v73[1];
          if (v73[1])
          {
            if (v210 < 0xF0)
            {
              if (v210 == 127)
              {
                v213 = *(v209 + 16);
                v214 = *(v209 + 32);
                v215 = *(v209 + 48);
                v216 = *(v209 + 64);
                v217 = *(v209 + 80);
                v218 = *(v209 + 96);
                v219 = *(v209 + 112);
                v356 = *v209;
                v357 = v213;
                v358 = v216;
                v359 = v217;
                v364 = v214;
                v365 = v215;
                v366 = v218;
                v367 = v219;
                v211 = 128;
              }

              else if (v210 == 3)
              {
                v212 = vld1q_dup_f32(v209);
                v356 = v212;
                v357 = v212;
                v358 = v212;
                v359 = v212;
                v364 = v212;
                v365 = v212;
                v366 = v212;
                v367 = v212;
                v211 = 4;
              }

              else
              {
                v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v356, 128, v209, v210);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v356.i32, 128, v209, v210, v80);
              v211 = 64;
            }
          }

          else
          {
            v211 = 0;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v220 = v209 + v211;
          v221 = v73[2];
          if (v73[2])
          {
            if (v221 < 0xF0)
            {
              if (v221 == 127)
              {
                v224 = *(v220 + 16);
                v225 = *(v220 + 32);
                v226 = *(v220 + 48);
                v227 = *(v220 + 64);
                v228 = *(v220 + 80);
                v229 = *(v220 + 96);
                v230 = *(v220 + 112);
                v344 = *v220;
                v345 = v224;
                v346 = v227;
                v347 = v228;
                v352 = v225;
                v353 = v226;
                v354 = v229;
                v355 = v230;
                v222 = 128;
              }

              else if (v221 == 3)
              {
                v223 = vld1q_dup_f32(v220);
                v344 = v223;
                v345 = v223;
                v346 = v223;
                v347 = v223;
                v352 = v223;
                v353 = v223;
                v354 = v223;
                v355 = v223;
                v222 = 4;
              }

              else
              {
                v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v344, 128, v220, v221);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v344.i32, 128, v220, v221, v80);
              v222 = 64;
            }
          }

          else
          {
            v222 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v231 = v220 + v222;
          v232 = v73[3];
          if (v73[3])
          {
            if (v232 < 0xF0)
            {
              if (v232 == 127)
              {
                v235 = *(v231 + 16);
                v236 = *(v231 + 32);
                v237 = *(v231 + 48);
                v238 = *(v231 + 64);
                v239 = *(v231 + 80);
                v240 = *(v231 + 96);
                v241 = *(v231 + 112);
                v360 = *v231;
                v361 = v235;
                v362 = v238;
                v363 = v239;
                v368 = v236;
                v369 = v237;
                v370 = v240;
                v371 = v241;
                v233 = 128;
              }

              else if (v232 == 3)
              {
                v234 = vld1q_dup_f32(v231);
                v360 = v234;
                v361 = v234;
                v362 = v234;
                v363 = v234;
                v368 = v234;
                v369 = v234;
                v370 = v234;
                v371 = v234;
                v233 = 4;
              }

              else
              {
                v233 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v360, 128, v231, v232);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v360.i32, 128, v231, v232, v80);
              v233 = 64;
            }
          }

          else
          {
            v233 = 0;
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
          }

          v242 = v231 + v233;
          v243 = v73[4];
          if (v73[4])
          {
            if (v243 < 0xF0)
            {
              if (v243 == 127)
              {
                v246 = *(v242 + 16);
                v247 = *(v242 + 32);
                v248 = *(v242 + 48);
                v249 = *(v242 + 64);
                v250 = *(v242 + 80);
                v251 = *(v242 + 96);
                v252 = *(v242 + 112);
                v372 = *v242;
                v373 = v246;
                v374 = v249;
                v375 = v250;
                v380 = v247;
                v381 = v248;
                v382 = v251;
                v383 = v252;
                v244 = 128;
              }

              else if (v243 == 3)
              {
                v245 = vld1q_dup_f32(v242);
                v372 = v245;
                v373 = v245;
                v374 = v245;
                v375 = v245;
                v380 = v245;
                v381 = v245;
                v382 = v245;
                v383 = v245;
                v244 = 4;
              }

              else
              {
                v244 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v372, 128, v242, v243);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v372.i32, 128, v242, v243, v80);
              v244 = 64;
            }
          }

          else
          {
            v244 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v253 = v242 + v244;
          v254 = v73[5];
          if (v73[5])
          {
            if (v254 < 0xF0)
            {
              if (v254 == 127)
              {
                v257 = *(v253 + 16);
                v258 = *(v253 + 32);
                v259 = *(v253 + 48);
                v260 = *(v253 + 64);
                v261 = *(v253 + 80);
                v262 = *(v253 + 96);
                v263 = *(v253 + 112);
                v388 = *v253;
                v389 = v257;
                v390 = v260;
                v391 = v261;
                v396 = v258;
                v397 = v259;
                v398 = v262;
                v399 = v263;
                v255 = 128;
              }

              else if (v254 == 3)
              {
                v256 = vld1q_dup_f32(v253);
                v388 = v256;
                v389 = v256;
                v390 = v256;
                v391 = v256;
                v396 = v256;
                v397 = v256;
                v398 = v256;
                v399 = v256;
                v255 = 4;
              }

              else
              {
                v255 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v388, 128, v253, v254);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v388.i32, 128, v253, v254, v80);
              v255 = 64;
            }
          }

          else
          {
            v255 = 0;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
          }

          v264 = v253 + v255;
          v265 = v73[6];
          if (v73[6])
          {
            if (v265 < 0xF0)
            {
              if (v265 == 127)
              {
                v269 = *(v264 + 16);
                v270 = *(v264 + 32);
                v271 = *(v264 + 48);
                v272 = *(v264 + 64);
                v273 = *(v264 + 80);
                v274 = *(v264 + 96);
                v275 = *(v264 + 112);
                v376 = *v264;
                v377 = v269;
                v378 = v272;
                v379 = v273;
                v384 = v270;
                v385 = v271;
                v386 = v274;
                v387 = v275;
                v266 = 128;
                v267 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v265 == 3)
              {
                v268 = vld1q_dup_f32(v264);
                v376 = v268;
                v377 = v268;
                v378 = v268;
                v379 = v268;
                v384 = v268;
                v385 = v268;
                v386 = v268;
                v387 = v268;
                v266 = 4;
                v267 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v266 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v376, 128, v264, v265);
                v267 = v73[7];
                if (!v73[7])
                {
LABEL_232:
                  v394 = 0u;
                  v395 = 0u;
                  v392 = 0u;
                  v393 = 0u;
                  v400 = 0u;
                  v401 = 0u;
                  v402 = 0u;
                  v403 = 0u;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v376.i32, 128, v264, v265, v80);
              v266 = 64;
              v267 = v73[7];
              if (!v73[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v266 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
            v267 = v73[7];
            if (!v73[7])
            {
              goto LABEL_232;
            }
          }

          v276 = v264 + v266;
          if (v267 < 0xF0)
          {
            if (v267 == 127)
            {
              v278 = *(v276 + 16);
              v279 = *(v276 + 32);
              v280 = *(v276 + 48);
              v281 = *(v276 + 64);
              v282 = *(v276 + 80);
              v283 = *(v276 + 96);
              v284 = *(v276 + 112);
              v392 = *v276;
              v393 = v278;
              v394 = v281;
              v395 = v282;
              v400 = v279;
              v401 = v280;
              v402 = v283;
              v403 = v284;
            }

            else if (v267 == 3)
            {
              v277 = vld1q_dup_f32(v276);
              v392 = v277;
              v393 = v277;
              v394 = v277;
              v395 = v277;
              v400 = v277;
              v401 = v277;
              v402 = v277;
              v403 = v277;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v392, 128, v276, v267);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v392.i32, 128, v276, v267, v80);
          }

LABEL_234:
          result = v329;
          v38 = v35 + 1;
          v285 = v335;
          v25 = a7;
          if (v335)
          {
            v286 = 0;
            v287 = &v340 + 8 * v333 + v334;
            v288 = v336;
            do
            {
              if (v288)
              {
                v289 = 0;
                v290 = v331 + v332 * v286;
                do
                {
                  *(v290 + v289) = v287->i8[v289];
                  ++v289;
                  v288 = v336;
                }

                while (16 * v336 > v289);
                v285 = v335;
              }

              ++v286;
              v287 += 8;
            }

            while (v286 < v285);
          }

LABEL_31:
          v20 = v35 == v318 >> 3;
          v35 = v38;
        }

        while (!v20);
        v20 = v16++ == v309;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v210 = v15;
  v17 = v16;
  v19 = v18;
  v205 = v20;
  v206 = v21;
  v192 = v22;
  v23 = v12;
  v352 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v209 = v14;
  v24 = v14 >> 3;
  v191 = v14 + a10 - 1;
  v193 = v191 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v213 = v23;
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
  v204 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v203 = result;
  if (v24 <= v193)
  {
    v202 = v210 + a9 - 1;
    if (v210 >> 3 <= v202 >> 3)
    {
      result = v23;
      v33 = a11;
      v212 = (v19 - 1) >> 3;
      v188 = v19 - 1;
      v196 = (v19 - 1) & 7;
      v189 = (v17 - 1) & 7;
      v190 = (v17 - 1) >> 3;
      v194 = 4 * a11;
      v195 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v201 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v200 = v35;
      v187 = 8 * v26 * v25;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v191 < v36)
        {
          v36 = v191;
        }

        v208 = 8 * v24;
        v199 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v189;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v210 >> 3;
        v43 = v189 + 1;
        if (v24 != v190)
        {
          v43 = 8;
        }

        v211 = v43;
        if (v24 != v190)
        {
          v40 = v41;
        }

        v197 = v40;
        v207 = v192 + (v37 - v209) * v33;
        v44 = v210;
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

          if (v202 < v47)
          {
            v47 = v210 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v212)
          {
            v51 = v196 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v208 >= v209 && v46 >= v44)
          {
            v53 = v49 != v196;
            if (v42 != v212)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v197;
          }

          if (v203)
          {
            v74 = 0;
            v75 = v187 >> (*(result + 57) != 0);
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
              v76 = 0;
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
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v175 = (v74 >> 3) - 1;
            if (v76)
            {
              v176 = 0;
            }

            else
            {
              v176 = 32 - __clz(~(-1 << -__clz(v175)));
            }

            v177 = (v78 >> 3) - 1;
            if (v77)
            {
              v178 = 0;
              if (v176)
              {
                goto LABEL_230;
              }
            }

            else
            {
              v178 = 32 - __clz(~(-1 << -__clz(v177)));
              if (v178 | v176)
              {
LABEL_230:
                v179 = 0;
                v180 = 0;
                v181 = v42 & v175;
                v182 = v24 & v177;
                v183 = v176 != 0;
                v184 = v178 != 0;
                v185 = 1;
                do
                {
                  --v176;
                  if (v183)
                  {
                    v180 |= (v185 & v181) << v179++;
                  }

                  else
                  {
                    v176 = 0;
                  }

                  --v178;
                  if (v184)
                  {
                    v180 |= (v185 & v182) << v179++;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v185 *= 2;
                  --v179;
                  v184 = v178 != 0;
                  v183 = v176 != 0;
                }

                while (v178 | v176);
                v186 = v180 << 10;
                result = v213;
                goto LABEL_242;
              }
            }

            v186 = 0;
LABEL_242:
            v61 = v186 + ((v46 / v74 + v208 / v78 * ((v74 + v188) / v74)) << 14);
            goto LABEL_56;
          }

          if (v201)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v200.i8[0];
            v58 = v200.i8[4];
            v60 = v201.i32[0];
            v59 = v201.i32[1];
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
          v79 = (v205 + v61);
          if (v204)
          {
            memcpy(__dst, v79, sizeof(__dst));
            result = v213;
            v79 = __dst;
          }

          v80 = (v206 + v73);
          v81 = v207 + 32 * (v48 - v44);
          if (v52 & 1 | (v51 < 8u) || v211 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = result;
            block[5] = v79;
            v221 = v51;
            v222 = v211;
            v217 = v199;
            v218 = v48 - v46;
            block[6] = v80;
            v215 = v81;
            v33 = a11;
            v216 = a11;
            v219 = v198;
            v220 = v50;
            if (v52)
            {
              dispatch_sync(*(*(result + 8) + 16552), block);
              result = v213;
              v44 = v210;
              goto LABEL_29;
            }

            v86 = *(result + 208);
            v87 = *(v86 + 52);
            v88 = *v80;
            v44 = v210;
            if (*v80)
            {
              if (v88 < 0xF0)
              {
                if (v88 == 7)
                {
                  v93 = vld1q_dup_f64(v79);
                  v224 = v93;
                  v225 = v93;
                  v226 = v93;
                  v227 = v93;
                  v228 = v93;
                  v229 = v93;
                  v230 = v93;
                  v231 = v93;
                  v240 = v93;
                  v241 = v93;
                  v242 = v93;
                  v243 = v93;
                  v244 = v93;
                  v245 = v93;
                  v89 = 8;
                  v246 = v93;
                  v247 = v93;
                }

                else
                {
                  v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v224, 256, v79, v88);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v224, 256, v79, v88, *(v86 + 52));
                v89 = 128;
              }
            }

            else
            {
              v89 = 0;
              v231 = 0u;
              v230 = 0u;
              v229 = 0u;
              v228 = 0u;
              v227 = 0u;
              v226 = 0u;
              v225 = 0u;
              v224 = 0u;
              v240 = 0u;
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
            }

            v142 = &v79[v89];
            v143 = v80[1];
            if (v80[1])
            {
              if (v143 < 0xF0)
              {
                if (v143 == 7)
                {
                  v145 = vld1q_dup_f64(v142);
                  v256 = v145;
                  v257 = v145;
                  v258 = v145;
                  v259 = v145;
                  v260 = v145;
                  v261 = v145;
                  v262 = v145;
                  v263 = v145;
                  v272 = v145;
                  v273 = v145;
                  v274 = v145;
                  v275 = v145;
                  v276 = v145;
                  v277 = v145;
                  v144 = 8;
                  v278 = v145;
                  v279 = v145;
                }

                else
                {
                  v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 256, v142, v143);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 256, v142, v143, v87);
                v144 = 128;
              }
            }

            else
            {
              v144 = 0;
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              v256 = 0u;
              v257 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
            }

            v146 = (v142 + v144);
            v147 = v80[2];
            if (v80[2])
            {
              if (v147 < 0xF0)
              {
                if (v147 == 7)
                {
                  v149 = vld1q_dup_f64(v146);
                  v232 = v149;
                  v233 = v149;
                  v234 = v149;
                  v235 = v149;
                  v236 = v149;
                  v237 = v149;
                  v238 = v149;
                  v239 = v149;
                  v248 = v149;
                  v249 = v149;
                  v250 = v149;
                  v251 = v149;
                  v252 = v149;
                  v253 = v149;
                  v148 = 8;
                  v254 = v149;
                  v255 = v149;
                }

                else
                {
                  v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v232, 256, v146, v147);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v232, 256, v146, v147, v87);
                v148 = 128;
              }
            }

            else
            {
              v148 = 0;
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v232 = 0u;
              v233 = 0u;
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v150 = (v146 + v148);
            v151 = v80[3];
            if (v80[3])
            {
              if (v151 < 0xF0)
              {
                if (v151 == 7)
                {
                  v153 = vld1q_dup_f64(v150);
                  v264 = v153;
                  v265 = v153;
                  v266 = v153;
                  v267 = v153;
                  v268 = v153;
                  v269 = v153;
                  v270 = v153;
                  v271 = v153;
                  v280 = v153;
                  v281 = v153;
                  v282 = v153;
                  v283 = v153;
                  v284 = v153;
                  v285 = v153;
                  v152 = 8;
                  v286 = v153;
                  v287 = v153;
                }

                else
                {
                  v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 256, v150, v151);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v264, 256, v150, v151, v87);
                v152 = 128;
              }
            }

            else
            {
              v152 = 0;
              v270 = 0u;
              v271 = 0u;
              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              v264 = 0u;
              v265 = 0u;
              v280 = 0u;
              v281 = 0u;
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
            }

            v154 = (v150 + v152);
            v155 = v80[4];
            if (v80[4])
            {
              if (v155 < 0xF0)
              {
                if (v155 == 7)
                {
                  v157 = vld1q_dup_f64(v154);
                  v288 = v157;
                  v289 = v157;
                  v290 = v157;
                  v291 = v157;
                  v292 = v157;
                  v293 = v157;
                  v294 = v157;
                  v295 = v157;
                  v304 = v157;
                  v305 = v157;
                  v306 = v157;
                  v307 = v157;
                  v308 = v157;
                  v309 = v157;
                  v310 = v157;
                  v156 = 8;
                  v311 = v157;
                }

                else
                {
                  v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v288, 256, v154, v155);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v288, 256, v154, v155, v87);
                v156 = 128;
              }
            }

            else
            {
              v156 = 0;
              v294 = 0u;
              v295 = 0u;
              v292 = 0u;
              v293 = 0u;
              v290 = 0u;
              v291 = 0u;
              v288 = 0u;
              v289 = 0u;
              v304 = 0u;
              v305 = 0u;
              v306 = 0u;
              v307 = 0u;
              v308 = 0u;
              v309 = 0u;
              v310 = 0u;
              v311 = 0u;
            }

            v158 = (v154 + v156);
            v159 = v80[5];
            if (v80[5])
            {
              if (v159 < 0xF0)
              {
                if (v159 == 7)
                {
                  v161 = vld1q_dup_f64(v158);
                  v320 = v161;
                  v321 = v161;
                  v322 = v161;
                  v323 = v161;
                  v324 = v161;
                  v325 = v161;
                  v326 = v161;
                  v327 = v161;
                  v336 = v161;
                  v337 = v161;
                  v338 = v161;
                  v339 = v161;
                  v340 = v161;
                  v341 = v161;
                  v342 = v161;
                  v160 = 8;
                  v343 = v161;
                }

                else
                {
                  v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v320, 256, v158, v159);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v320, 256, v158, v159, v87);
                v160 = 128;
              }
            }

            else
            {
              v160 = 0;
              v326 = 0u;
              v327 = 0u;
              v324 = 0u;
              v325 = 0u;
              v322 = 0u;
              v323 = 0u;
              v320 = 0u;
              v321 = 0u;
              v336 = 0u;
              v337 = 0u;
              v338 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v342 = 0u;
              v343 = 0u;
            }

            v162 = (v158 + v160);
            v163 = v80[6];
            if (v80[6])
            {
              if (v163 < 0xF0)
              {
                if (v163 == 7)
                {
                  v166 = vld1q_dup_f64(v162);
                  v296 = v166;
                  v297 = v166;
                  v298 = v166;
                  v299 = v166;
                  v300 = v166;
                  v301 = v166;
                  v302 = v166;
                  v303 = v166;
                  v312 = v166;
                  v313 = v166;
                  v314 = v166;
                  v315 = v166;
                  v316 = v166;
                  v317 = v166;
                  v318 = v166;
                  v164 = 8;
                  v319 = v166;
                  v165 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }

                else
                {
                  v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v296, 256, v162, v163);
                  v165 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v296, 256, v162, v163, v87);
                v164 = 128;
                v165 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_200;
                }
              }

LABEL_195:
              v167 = (v162 + v164);
              if (v165 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v328, 256, v167, v165, v87);
                goto LABEL_201;
              }

              v45 = v42 + 1;
              if (v165 == 7)
              {
                v168 = vld1q_dup_f64(v167);
                v328 = v168;
                v329 = v168;
                v330 = v168;
                v331 = v168;
                v332 = v168;
                v333 = v168;
                v334 = v168;
                v335 = v168;
                v344 = v168;
                v345 = v168;
                v346 = v168;
                v347 = v168;
                v348 = v168;
                v349 = v168;
                v350 = v168;
                v351 = v168;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v328, 256, v167, v165);
              }

              result = v213;
            }

            else
            {
              v164 = 0;
              v302 = 0u;
              v303 = 0u;
              v300 = 0u;
              v301 = 0u;
              v298 = 0u;
              v299 = 0u;
              v296 = 0u;
              v297 = 0u;
              v312 = 0u;
              v313 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v317 = 0u;
              v318 = 0u;
              v319 = 0u;
              v165 = v80[7];
              if (v80[7])
              {
                goto LABEL_195;
              }

LABEL_200:
              v334 = 0u;
              v335 = 0u;
              v332 = 0u;
              v333 = 0u;
              v330 = 0u;
              v331 = 0u;
              v328 = 0u;
              v329 = 0u;
              v344 = 0u;
              v345 = 0u;
              v346 = 0u;
              v347 = 0u;
              v348 = 0u;
              v349 = 0u;
              v350 = 0u;
              v351 = 0u;
LABEL_201:
              result = v213;
              v45 = v42 + 1;
            }

            v169 = v219;
            if (v219)
            {
              v170 = 0;
              v171 = &v224 + 16 * v217 + 2 * v218;
              v172 = v220;
              do
              {
                if (v172)
                {
                  v173 = 0;
                  v174 = v215 + v216 * v170;
                  do
                  {
                    *(v174 + v173) = v171->n128_u8[v173];
                    ++v173;
                    v172 = v220;
                  }

                  while (32 * v220 > v173);
                  v169 = v219;
                }

                ++v170;
                v171 += 16;
              }

              while (v170 < v169);
            }

            goto LABEL_30;
          }

          v82 = *(result + 208);
          v83 = *(v82 + 52);
          v84 = *v80;
          if (*v80)
          {
            v33 = a11;
            if (v84 < 0xF0)
            {
              if (v84 == 7)
              {
                v91 = vld1q_dup_f64(v79);
                *v81 = v91;
                *(v81 + 16) = v91;
                *(v81 + 32) = v91;
                *(v81 + 48) = v91;
                *(v81 + 64) = v91;
                *(v81 + 80) = v91;
                *(v81 + 96) = v91;
                *(v81 + 112) = v91;
                v92 = (v81 + a11);
                *v92 = v91;
                v92[1] = v91;
                v92[2] = v91;
                v92[3] = v91;
                v92[4] = v91;
                v92[5] = v91;
                v92[6] = v91;
                v92[7] = v91;
                v85 = 8;
              }

              else
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81, a11, v79, v84);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v81, a11, v79, v84, *(v82 + 52));
              v85 = 128;
            }
          }

          else
          {
            v85 = 0;
            *(v81 + 96) = 0u;
            *(v81 + 112) = 0u;
            *(v81 + 64) = 0u;
            *(v81 + 80) = 0u;
            *(v81 + 32) = 0u;
            *(v81 + 48) = 0u;
            *v81 = 0u;
            *(v81 + 16) = 0u;
            v33 = a11;
            v90 = (v81 + a11);
            v90[6] = 0u;
            v90[7] = 0u;
            v90[4] = 0u;
            v90[5] = 0u;
            v90[2] = 0u;
            v90[3] = 0u;
            *v90 = 0u;
            v90[1] = 0u;
          }

          v94 = &v79[v85];
          v95 = (v81 + v195);
          v96 = v80[1];
          if (v80[1])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 7)
              {
                v99 = vld1q_dup_f64(v94);
                *v95 = v99;
                v95[1] = v99;
                v95[2] = v99;
                v95[3] = v99;
                v95[4] = v99;
                v95[5] = v99;
                v95[6] = v99;
                v95[7] = v99;
                v100 = (v95 + v33);
                *v100 = v99;
                v100[1] = v99;
                v100[2] = v99;
                v100[3] = v99;
                v100[4] = v99;
                v100[5] = v99;
                v100[6] = v99;
                v100[7] = v99;
                v97 = 8;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81 + v195, v33, v94, v96);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v195), v33, v94, v96, v83);
              v97 = 128;
            }
          }

          else
          {
            v97 = 0;
            v95[6] = 0u;
            v95[7] = 0u;
            v95[4] = 0u;
            v95[5] = 0u;
            v95[2] = 0u;
            v95[3] = 0u;
            *v95 = 0u;
            v95[1] = 0u;
            v98 = (v95->f64 + v33);
            v98[6] = 0u;
            v98[7] = 0u;
            v98[4] = 0u;
            v98[5] = 0u;
            v98[2] = 0u;
            v98[3] = 0u;
            *v98 = 0u;
            v98[1] = 0u;
          }

          v101 = (v94 + v97);
          v102 = (v81 + 128);
          v103 = v80[2];
          if (v80[2])
          {
            if (v103 < 0xF0)
            {
              if (v103 == 7)
              {
                v106 = vld1q_dup_f64(v101);
                *(v81 + 128) = v106;
                *(v81 + 144) = v106;
                *(v81 + 160) = v106;
                *(v81 + 176) = v106;
                *(v81 + 192) = v106;
                *(v81 + 208) = v106;
                *(v81 + 224) = v106;
                *(v81 + 240) = v106;
                v107 = (v102 + v33);
                *v107 = v106;
                v107[1] = v106;
                v107[2] = v106;
                v107[3] = v106;
                v107[4] = v106;
                v107[5] = v106;
                v107[6] = v106;
                v107[7] = v106;
                v104 = 8;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v102, v33, v101, v103);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v102, v33, v101, v103, v83);
              v104 = 128;
            }
          }

          else
          {
            v104 = 0;
            *(v81 + 224) = 0u;
            *(v81 + 240) = 0u;
            *(v81 + 192) = 0u;
            *(v81 + 208) = 0u;
            *(v81 + 160) = 0u;
            *(v81 + 176) = 0u;
            *v102 = 0u;
            *(v81 + 144) = 0u;
            v105 = (v102->n128_u64 + v33);
            v105[6] = 0u;
            v105[7] = 0u;
            v105[4] = 0u;
            v105[5] = 0u;
            v105[2] = 0u;
            v105[3] = 0u;
            *v105 = 0u;
            v105[1] = 0u;
          }

          v108 = (v101 + v104);
          v109 = &v95[8];
          v110 = v80[3];
          if (v80[3])
          {
            if (v110 < 0xF0)
            {
              if (v110 == 7)
              {
                v113 = vld1q_dup_f64(v108);
                v95[8] = v113;
                v95[9] = v113;
                v95[10] = v113;
                v95[11] = v113;
                v95[12] = v113;
                v95[13] = v113;
                v95[14] = v113;
                v95[15] = v113;
                v114 = (v109 + v33);
                *v114 = v113;
                v114[1] = v113;
                v114[2] = v113;
                v114[3] = v113;
                v114[4] = v113;
                v114[5] = v113;
                v111 = 8;
                v114[6] = v113;
                v114[7] = v113;
              }

              else
              {
                v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v109, v33, v108, v110);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v109, v33, v108, v110, v83);
              v111 = 128;
            }
          }

          else
          {
            v111 = 0;
            v95[14] = 0u;
            v95[15] = 0u;
            v95[12] = 0u;
            v95[13] = 0u;
            v95[10] = 0u;
            v95[11] = 0u;
            *v109 = 0u;
            v95[9] = 0u;
            v112 = (v109->n128_u64 + v33);
            v112[6] = 0u;
            v112[7] = 0u;
            v112[4] = 0u;
            v112[5] = 0u;
            v112[2] = 0u;
            v112[3] = 0u;
            *v112 = 0u;
            v112[1] = 0u;
          }

          v115 = (v108 + v111);
          v116 = (v81 + v194);
          v117 = v80[4];
          if (v80[4])
          {
            if (v117 < 0xF0)
            {
              if (v117 == 7)
              {
                v120 = vld1q_dup_f64(v115);
                *v116 = v120;
                v116[1] = v120;
                v116[2] = v120;
                v116[3] = v120;
                v116[4] = v120;
                v116[5] = v120;
                v116[6] = v120;
                v116[7] = v120;
                v121 = (v116 + v33);
                *v121 = v120;
                v121[1] = v120;
                v121[2] = v120;
                v121[3] = v120;
                v121[4] = v120;
                v121[5] = v120;
                v121[6] = v120;
                v121[7] = v120;
                v118 = 8;
              }

              else
              {
                v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81 + v194, v33, v115, v117);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v194), v33, v115, v117, v83);
              v118 = 128;
            }
          }

          else
          {
            v118 = 0;
            v116[6] = 0u;
            v116[7] = 0u;
            v116[4] = 0u;
            v116[5] = 0u;
            v116[2] = 0u;
            v116[3] = 0u;
            *v116 = 0u;
            v116[1] = 0u;
            v119 = (v116->f64 + v33);
            v119[6] = 0u;
            v119[7] = 0u;
            v119[4] = 0u;
            v119[5] = 0u;
            v119[2] = 0u;
            v119[3] = 0u;
            *v119 = 0u;
            v119[1] = 0u;
          }

          v122 = (v115 + v118);
          v123 = v81 + 6 * a11;
          v124 = v80[5];
          if (v80[5])
          {
            if (v124 < 0xF0)
            {
              if (v124 == 7)
              {
                v127 = vld1q_dup_f64(v122);
                *v123 = v127;
                *(v123 + 16) = v127;
                *(v123 + 32) = v127;
                *(v123 + 48) = v127;
                *(v123 + 64) = v127;
                *(v123 + 80) = v127;
                *(v123 + 96) = v127;
                *(v123 + 112) = v127;
                v128 = (v123 + v33);
                *v128 = v127;
                v128[1] = v127;
                v128[2] = v127;
                v128[3] = v127;
                v128[4] = v127;
                v128[5] = v127;
                v128[6] = v127;
                v128[7] = v127;
                v125 = 8;
              }

              else
              {
                v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v33, v122, v124);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123, v33, v122, v124, v83);
              v125 = 128;
            }
          }

          else
          {
            v125 = 0;
            *(v123 + 96) = 0u;
            *(v123 + 112) = 0u;
            *(v123 + 64) = 0u;
            *(v123 + 80) = 0u;
            *(v123 + 32) = 0u;
            *(v123 + 48) = 0u;
            *v123 = 0u;
            *(v123 + 16) = 0u;
            v126 = (v123 + v33);
            v126[6] = 0u;
            v126[7] = 0u;
            v126[4] = 0u;
            v126[5] = 0u;
            v126[2] = 0u;
            v126[3] = 0u;
            *v126 = 0u;
            v126[1] = 0u;
          }

          v129 = (v122 + v125);
          v130 = &v116[8];
          v131 = v80[6];
          if (v80[6])
          {
            if (v131 < 0xF0)
            {
              if (v131 == 7)
              {
                v134 = vld1q_dup_f64(v129);
                v116[8] = v134;
                v116[9] = v134;
                v116[10] = v134;
                v116[11] = v134;
                v116[12] = v134;
                v116[13] = v134;
                v116[14] = v134;
                v116[15] = v134;
                v135 = (v130 + v33);
                *v135 = v134;
                v135[1] = v134;
                v135[2] = v134;
                v135[3] = v134;
                v135[4] = v134;
                v135[5] = v134;
                v132 = 8;
                v135[6] = v134;
                v135[7] = v134;
              }

              else
              {
                v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v130, v33, v129, v131);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v130, v33, v129, v131, v83);
              v132 = 128;
            }
          }

          else
          {
            v132 = 0;
            v116[14] = 0u;
            v116[15] = 0u;
            v116[12] = 0u;
            v116[13] = 0u;
            v116[10] = 0u;
            v116[11] = 0u;
            *v130 = 0u;
            v116[9] = 0u;
            v133 = (v130->n128_u64 + v33);
            v133[6] = 0u;
            v133[7] = 0u;
            v133[4] = 0u;
            v133[5] = 0u;
            v133[2] = 0u;
            v133[3] = 0u;
            *v133 = 0u;
            v133[1] = 0u;
          }

          v136 = (v123 + 128);
          v137 = v80[7];
          if (!v80[7])
          {
            *(v123 + 224) = 0u;
            *(v123 + 240) = 0u;
            *(v123 + 192) = 0u;
            *(v123 + 208) = 0u;
            *(v123 + 160) = 0u;
            *(v123 + 176) = 0u;
            *v136 = 0u;
            *(v123 + 144) = 0u;
            v139 = (v136->n128_u64 + v33);
            v139[6] = 0u;
            v139[7] = 0u;
            v139[4] = 0u;
            v139[5] = 0u;
            v139[2] = 0u;
            v139[3] = 0u;
            *v139 = 0u;
            v139[1] = 0u;
LABEL_146:
            v44 = v210;
            result = v213;
LABEL_29:
            v45 = v42 + 1;
            goto LABEL_30;
          }

          v138 = (v129 + v132);
          if (v137 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v136, v33, v138, v137, v83);
            goto LABEL_146;
          }

          v45 = v42 + 1;
          if (v137 == 7)
          {
            v140 = vld1q_dup_f64(v138);
            *(v123 + 128) = v140;
            *(v123 + 144) = v140;
            *(v123 + 160) = v140;
            *(v123 + 176) = v140;
            *(v123 + 192) = v140;
            *(v123 + 208) = v140;
            *(v123 + 224) = v140;
            *(v123 + 240) = v140;
            v141 = (v136 + v33);
            *v141 = v140;
            v141[1] = v140;
            v141[2] = v140;
            v141[3] = v140;
            v141[4] = v140;
            v141[5] = v140;
            v141[6] = v140;
            v141[7] = v140;
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v136, v33, v138, v137);
          }

          v44 = v210;
          result = v213;
LABEL_30:
          v28 = v42 == v202 >> 3;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v193;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v288 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v242 = a8;
  v17 = a8 >> 3;
  v222 = a8 + a10 - 1;
  v224 = v222 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v245 = a1;
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
  v237 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v236 = result;
  if (v17 <= v224)
  {
    v235 = a7 + a9 - 1;
    v221 = a7 >> 3;
    if (a7 >> 3 <= v235 >> 3)
    {
      result = a1;
      v26 = a11;
      v244 = (a5 - 1) >> 3;
      v218 = a5 - 1;
      v227 = (a5 - 1) & 7;
      v219 = (a6 - 1) & 7;
      v220 = (a6 - 1) >> 3;
      v225 = 4 * a11;
      v226 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v28.i8 = vcgt_u32(v27, 0xF0000000FLL);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), *v28.i8);
      v232 = v29.i64[0];
      v233 = v29.i32[0] | v29.i32[1];
      v231 = v28.i64[0];
      v217 = 8 * v19 * v18;
      v234 = a7;
      do
      {
        v30 = (8 * v17) | 7;
        if (8 * v17 <= v242)
        {
          v31 = v242;
        }

        else
        {
          v31 = 8 * v17;
        }

        if (v222 < v30)
        {
          v30 = v222;
        }

        v241 = 8 * v17;
        v230 = v31 - 8 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v219;
        v229 = v33;
        v35 = v33 != 8;
        v36 = v221;
        v37 = v219 + 1;
        if (v17 != v220)
        {
          v37 = 8;
        }

        v243 = v37;
        if (v17 != v220)
        {
          v34 = v35;
        }

        v228 = v34;
        v240 = a2 + (v31 - v242) * v26;
        do
        {
          v39 = 8 * v36;
          v40 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 8 * v36;
          }

          if (v235 < v40)
          {
            v40 = v235;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v36 == v244)
          {
            v44 = v227 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v241 >= v242 && v39 >= a7)
          {
            v46 = v42 != v227;
            if (v36 != v244)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v228;
          }

          if (v236)
          {
            v67 = 0;
            v68 = v217 >> (*(result + 57) != 0);
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

            v205 = (v67 >> 3) - 1;
            if (v69)
            {
              v206 = 0;
            }

            else
            {
              v206 = 32 - __clz(~(-1 << -__clz(v205)));
            }

            v207 = (v71 >> 3) - 1;
            if (v70)
            {
              v208 = 0;
              if (v206)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v208 = 32 - __clz(~(-1 << -__clz(v207)));
              if (v208 | v206)
              {
LABEL_261:
                v209 = 0;
                v210 = 0;
                v211 = v36 & v205;
                v212 = v17 & v207;
                v213 = v206 != 0;
                v214 = v208 != 0;
                v215 = 1;
                do
                {
                  --v206;
                  if (v213)
                  {
                    v210 |= (v215 & v211) << v209++;
                  }

                  else
                  {
                    v206 = 0;
                  }

                  --v208;
                  if (v214)
                  {
                    v210 |= (v215 & v212) << v209++;
                  }

                  else
                  {
                    v208 = 0;
                  }

                  v215 *= 2;
                  --v209;
                  v214 = v208 != 0;
                  v213 = v206 != 0;
                }

                while (v208 | v206);
                v216 = v210 << 8;
                result = v245;
                goto LABEL_273;
              }
            }

            v216 = 0;
LABEL_273:
            v54 = v216 + ((v39 / v67 + v241 / v71 * ((v67 + v218) / v67)) << 14);
            goto LABEL_57;
          }

          if (v233)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v231;
            v51 = BYTE4(v231);
            v53 = v232;
            v52 = HIDWORD(v232);
            do
            {
              --v52;
              if (v51)
              {
                v48 |= (v49 & v36) << v47++;
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
            v54 = v48 << 8;
          }

          else
          {
            v54 = 0;
          }

LABEL_57:
          v55 = *(result + 128) >> (*(result + 144) + a12);
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
LABEL_82:
              v66 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_82;
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
LABEL_83:
          v72 = (a3 + v54);
          if (v237)
          {
            memcpy(__dst, v72, sizeof(__dst));
            result = v245;
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = v240 + 8 * (v41 - a7);
          if (!(v45 & 1 | (v44 < 8u)) && v243 > 7)
          {
            v75 = *(result + 208);
            v76 = *(v75 + 52);
            v77 = *v73;
            if (*v73)
            {
              v26 = a11;
              if (v77 < 0xF0)
              {
                if (v77 == 63)
                {
                  v78 = *v72;
                  v28 = v72[1];
                  v87 = v72[2];
                  v88 = v72[3];
                  *v74 = *v72;
                  *(v74 + 16) = v87;
                  v89 = (v74 + a11);
                  *v89 = v28;
                  v89[1] = v88;
                  v79 = 64;
                }

                else if (v77 == 1)
                {
                  v78 = vld1q_dup_s16(v72->i16);
                  *v74 = v78;
                  *(v74 + 16) = v78;
                  v86 = (v74 + a11);
                  *v86 = v78;
                  v86[1] = v78;
                  v79 = 2;
                }

                else
                {
                  v79 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v74, a11, v72, v77, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v74, a11, v72, v77, *(v75 + 52));
                v79 = 32;
              }
            }

            else
            {
              v79 = 0;
              v78.i64[0] = 0;
              *v74 = 0u;
              *(v74 + 16) = 0u;
              v26 = a11;
              v85 = (v74 + a11);
              *v85 = 0u;
              v85[1] = 0u;
            }

            v90 = v72->i64 + v79;
            v91 = (v74 + v226);
            v92 = v73[1];
            if (v73[1])
            {
              if (v92 < 0xF0)
              {
                if (v92 == 63)
                {
                  v93 = *v90;
                  v28 = *(v90 + 16);
                  v97 = *(v90 + 32);
                  v98 = *(v90 + 48);
                  *v91 = *v90;
                  v91[1] = v97;
                  v99 = &v91->i8[v26];
                  *v99 = v28;
                  v99[1] = v98;
                  v94 = 64;
                }

                else if (v92 == 1)
                {
                  v93 = vld1q_dup_s16(v90);
                  *v91 = v93;
                  v91[1] = v93;
                  v96 = (v91 + v26);
                  *v96 = v93;
                  v96[1] = v93;
                  v94 = 2;
                }

                else
                {
                  v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v226), v26, v90, v92, *v78.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v74 + v226), v26, v90, v92, v76);
                v94 = 32;
              }
            }

            else
            {
              v94 = 0;
              v93.i64[0] = 0;
              *v91 = 0u;
              v91[1] = 0u;
              v95 = &v91->i8[v26];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v100 = v90 + v94;
            v101 = (v74 + 32);
            v102 = v73[2];
            if (v73[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 63)
                {
                  v103 = *v100;
                  v28 = *(v100 + 16);
                  v107 = *(v100 + 32);
                  v108 = *(v100 + 48);
                  *(v74 + 32) = *v100;
                  *(v74 + 48) = v107;
                  v109 = &v101->i8[v26];
                  *v109 = v28;
                  *(v109 + 1) = v108;
                  v104 = 64;
                }

                else if (v102 == 1)
                {
                  v103 = vld1q_dup_s16(v100);
                  *(v74 + 32) = v103;
                  *(v74 + 48) = v103;
                  v106 = &v101->i8[v26];
                  *v106 = v103;
                  v106[1] = v103;
                  v104 = 2;
                }

                else
                {
                  v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v101, v26, v100, v102, *v93.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v101, v26, v100, v102, v76);
                v104 = 32;
              }
            }

            else
            {
              v104 = 0;
              v103.i64[0] = 0;
              *v101 = 0u;
              *(v74 + 48) = 0u;
              v105 = &v101->i8[v26];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v110 = v100 + v104;
            v111 = &v91[2];
            v112 = v73[3];
            if (v73[3])
            {
              if (v112 < 0xF0)
              {
                if (v112 == 63)
                {
                  v113 = *v110;
                  v28 = *(v110 + 16);
                  v117 = *(v110 + 32);
                  v118 = *(v110 + 48);
                  v91[2] = *v110;
                  v91[3] = v117;
                  v119 = &v111->i8[v26];
                  *v119 = v28;
                  *(v119 + 1) = v118;
                  v114 = 64;
                }

                else if (v112 == 1)
                {
                  v113 = vld1q_dup_s16(v110);
                  v91[2] = v113;
                  v91[3] = v113;
                  v116 = &v111->i8[v26];
                  *v116 = v113;
                  v116[1] = v113;
                  v114 = 2;
                }

                else
                {
                  v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v111, v26, v110, v112, *v103.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v111, v26, v110, v112, v76);
                v114 = 32;
              }
            }

            else
            {
              v114 = 0;
              v113.i64[0] = 0;
              *v111 = 0u;
              v91[3] = 0u;
              v115 = &v111->i8[v26];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v120 = v110 + v114;
            v121 = (v74 + v225);
            v122 = v73[4];
            if (v73[4])
            {
              if (v122 < 0xF0)
              {
                if (v122 == 63)
                {
                  v123 = *v120;
                  v28 = *(v120 + 16);
                  v127 = *(v120 + 32);
                  v128 = *(v120 + 48);
                  *v121 = *v120;
                  v121[1] = v127;
                  v129 = &v121->i8[v26];
                  *v129 = v28;
                  v129[1] = v128;
                  v124 = 64;
                }

                else if (v122 == 1)
                {
                  v123 = vld1q_dup_s16(v120);
                  *v121 = v123;
                  v121[1] = v123;
                  v126 = (v121 + v26);
                  *v126 = v123;
                  v126[1] = v123;
                  v124 = 2;
                }

                else
                {
                  v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v74 + v225), v26, v120, v122, *v113.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v74 + v225), v26, v120, v122, v76);
                v124 = 32;
              }
            }

            else
            {
              v124 = 0;
              v123.i64[0] = 0;
              *v121 = 0u;
              v121[1] = 0u;
              v125 = &v121->i8[v26];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v130 = v120 + v124;
            v131 = v74 + 6 * a11;
            v132 = v73[5];
            if (v73[5])
            {
              if (v132 < 0xF0)
              {
                if (v132 == 63)
                {
                  v133 = *v130;
                  v28 = *(v130 + 16);
                  v137 = *(v130 + 32);
                  v138 = *(v130 + 48);
                  *v131 = *v130;
                  *(v131 + 16) = v137;
                  v139 = (v131 + v26);
                  *v139 = v28;
                  v139[1] = v138;
                  v134 = 64;
                }

                else if (v132 == 1)
                {
                  v133 = vld1q_dup_s16(v130);
                  *v131 = v133;
                  *(v131 + 16) = v133;
                  v136 = (v131 + v26);
                  *v136 = v133;
                  v136[1] = v133;
                  v134 = 2;
                }

                else
                {
                  v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v131, v26, v130, v132, *v123.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v131, v26, v130, v132, v76);
                v134 = 32;
              }
            }

            else
            {
              v134 = 0;
              v133.i64[0] = 0;
              *v131 = 0u;
              *(v131 + 16) = 0u;
              v135 = (v131 + v26);
              *v135 = 0u;
              v135[1] = 0u;
            }

            v140 = v130 + v134;
            v141 = &v121[2];
            v142 = v73[6];
            if (v73[6])
            {
              if (v142 < 0xF0)
              {
                if (v142 == 63)
                {
                  v143 = *v140;
                  v28 = *(v140 + 16);
                  v147 = *(v140 + 32);
                  v148 = *(v140 + 48);
                  v121[2] = *v140;
                  v121[3] = v147;
                  v149 = &v141->i8[v26];
                  *v149 = v28;
                  *(v149 + 1) = v148;
                  v144 = 64;
                }

                else if (v142 == 1)
                {
                  v143 = vld1q_dup_s16(v140);
                  v121[2] = v143;
                  v121[3] = v143;
                  v146 = &v141->i8[v26];
                  *v146 = v143;
                  v146[1] = v143;
                  v144 = 2;
                }

                else
                {
                  v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v141, v26, v140, v142, *v133.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v141, v26, v140, v142, v76);
                v144 = 32;
              }
            }

            else
            {
              v144 = 0;
              v143.i64[0] = 0;
              *v141 = 0u;
              v121[3] = 0u;
              v145 = &v141->i8[v26];
              *v145 = 0u;
              *(v145 + 1) = 0u;
            }

            v150 = (v131 + 32);
            v151 = v73[7];
            if (v73[7])
            {
              v152 = v140 + v144;
              if (v151 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v150, v26, v152, v151, v76);
              }

              else if (v151 == 63)
              {
                v29 = *v152;
                v28 = *(v152 + 16);
                v154 = *(v152 + 32);
                v155 = *(v152 + 48);
                *(v131 + 32) = *v152;
                *(v131 + 48) = v154;
                v156 = &v150->i8[v26];
                *v156 = v28;
                *(v156 + 1) = v155;
              }

              else
              {
                if (v151 == 1)
                {
                  v29 = vld1q_dup_s16(v152);
                  *(v131 + 32) = v29;
                  *(v131 + 48) = v29;
                  goto LABEL_165;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v150, v26, v152, v151, *v143.i8, *v28.i8);
              }
            }

            else
            {
              v29 = 0uLL;
              *v150 = 0u;
              *(v131 + 48) = 0u;
LABEL_165:
              v153 = (v150 + v26);
              *v153 = v29;
              v153[1] = v29;
            }

            a7 = v234;
            result = v245;
LABEL_30:
            v38 = v36 + 1;
            goto LABEL_31;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v72;
          v253 = v44;
          v254 = v243;
          v249 = v230;
          v250 = v41 - v39;
          block[6] = v73;
          v247 = v74;
          v26 = a11;
          v248 = a11;
          v251 = v229;
          v252 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v245;
            a7 = v234;
            goto LABEL_30;
          }

          v80 = *(result + 208);
          v81 = *(v80 + 52);
          v82 = *v73;
          a7 = v234;
          if (*v73)
          {
            if (v82 < 0xF0)
            {
              if (v82 == 63)
              {
                v83 = *v72;
                v28 = v72[1];
                v157 = v72[2];
                v158 = v72[3];
                v256 = *v72;
                v257 = v157;
                v260 = v28;
                v261 = v158;
                v84 = 64;
              }

              else if (v82 == 1)
              {
                v83 = vld1q_dup_s16(v72->i16);
                v256 = v83;
                v257 = v83;
                v260 = v83;
                v261 = v83;
                v84 = 2;
              }

              else
              {
                v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 64, v72, v82, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 64, v72, v82, *(v80 + 52));
              v84 = 32;
            }
          }

          else
          {
            v84 = 0;
            v83.i64[0] = 0;
            v256 = 0u;
            v257 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v159 = v72->i64 + v84;
          v160 = v73[1];
          if (v73[1])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 63)
              {
                v161 = *v159;
                v28 = *(v159 + 16);
                v163 = *(v159 + 32);
                v164 = *(v159 + 48);
                v264 = *v159;
                v265 = v163;
                v268 = v28;
                v269 = v164;
                v162 = 64;
              }

              else if (v160 == 1)
              {
                v161 = vld1q_dup_s16(v159);
                v264 = v161;
                v265 = v161;
                v268 = v161;
                v269 = v161;
                v162 = 2;
              }

              else
              {
                v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 64, v159, v160, *v83.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v264, 64, v159, v160, v81);
              v162 = 32;
            }
          }

          else
          {
            v162 = 0;
            v161.i64[0] = 0;
            v264 = 0u;
            v265 = 0u;
            v268 = 0u;
            v269 = 0u;
          }

          v165 = v159 + v162;
          v166 = v73[2];
          if (v73[2])
          {
            if (v166 < 0xF0)
            {
              if (v166 == 63)
              {
                v167 = *v165;
                v28 = *(v165 + 16);
                v169 = *(v165 + 32);
                v170 = *(v165 + 48);
                v258 = *v165;
                v259 = v169;
                v262 = v28;
                v263 = v170;
                v168 = 64;
              }

              else if (v166 == 1)
              {
                v167 = vld1q_dup_s16(v165);
                v258 = v167;
                v259 = v167;
                v262 = v167;
                v263 = v167;
                v168 = 2;
              }

              else
              {
                v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v258, 64, v165, v166, *v161.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v258, 64, v165, v166, v81);
              v168 = 32;
            }
          }

          else
          {
            v168 = 0;
            v167.i64[0] = 0;
            v258 = 0u;
            v259 = 0u;
            v262 = 0u;
            v263 = 0u;
          }

          v171 = v165 + v168;
          v172 = v73[3];
          if (v73[3])
          {
            if (v172 < 0xF0)
            {
              if (v172 == 63)
              {
                v173 = *v171;
                v28 = *(v171 + 16);
                v175 = *(v171 + 32);
                v176 = *(v171 + 48);
                v266 = *v171;
                v267 = v175;
                v270 = v28;
                v271 = v176;
                v174 = 64;
              }

              else if (v172 == 1)
              {
                v173 = vld1q_dup_s16(v171);
                v266 = v173;
                v267 = v173;
                v270 = v173;
                v271 = v173;
                v174 = 2;
              }

              else
              {
                v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v266, 64, v171, v172, *v167.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v266, 64, v171, v172, v81);
              v174 = 32;
            }
          }

          else
          {
            v174 = 0;
            v173.i64[0] = 0;
            v266 = 0u;
            v267 = 0u;
            v270 = 0u;
            v271 = 0u;
          }

          v177 = v171 + v174;
          v178 = v73[4];
          if (v73[4])
          {
            if (v178 < 0xF0)
            {
              if (v178 == 63)
              {
                v179 = *v177;
                v28 = *(v177 + 16);
                v181 = *(v177 + 32);
                v182 = *(v177 + 48);
                v272 = *v177;
                v273 = v181;
                v276 = v28;
                v277 = v182;
                v180 = 64;
              }

              else if (v178 == 1)
              {
                v179 = vld1q_dup_s16(v177);
                v272 = v179;
                v273 = v179;
                v276 = v179;
                v277 = v179;
                v180 = 2;
              }

              else
              {
                v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v272, 64, v177, v178, *v173.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v272, 64, v177, v178, v81);
              v180 = 32;
            }
          }

          else
          {
            v180 = 0;
            v179.i64[0] = 0;
            v272 = 0u;
            v273 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v183 = v177 + v180;
          v184 = v73[5];
          if (v73[5])
          {
            if (v184 < 0xF0)
            {
              if (v184 == 63)
              {
                v185 = *v183;
                v28 = *(v183 + 16);
                v187 = *(v183 + 32);
                v188 = *(v183 + 48);
                v280 = *v183;
                v281 = v187;
                v284 = v28;
                v285 = v188;
                v186 = 64;
              }

              else if (v184 == 1)
              {
                v185 = vld1q_dup_s16(v183);
                v280 = v185;
                v281 = v185;
                v284 = v185;
                v285 = v185;
                v186 = 2;
              }

              else
              {
                v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v280, 64, v183, v184, *v179.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v280, 64, v183, v184, v81);
              v186 = 32;
            }
          }

          else
          {
            v186 = 0;
            v185.i64[0] = 0;
            v280 = 0u;
            v281 = 0u;
            v284 = 0u;
            v285 = 0u;
          }

          v189 = v183 + v186;
          v190 = v73[6];
          if (v73[6])
          {
            if (v190 < 0xF0)
            {
              if (v190 == 63)
              {
                v191 = *v189;
                v28 = *(v189 + 16);
                v195 = *(v189 + 32);
                v196 = *(v189 + 48);
                v274 = *v189;
                v275 = v195;
                v278 = v28;
                v279 = v196;
                v192 = 64;
                v193 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v190 == 1)
              {
                v191 = vld1q_dup_s16(v189);
                v274 = v191;
                v275 = v191;
                v278 = v191;
                v279 = v191;
                v192 = 2;
                v193 = v73[7];
                if (!v73[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v274, 64, v189, v190, *v185.i8, *v28.i8);
                v193 = v73[7];
                if (!v73[7])
                {
LABEL_218:
                  v29.i64[0] = 0;
                  v282 = 0u;
                  v283 = 0u;
                  v286 = 0u;
                  v287 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v274, 64, v189, v190, v81);
              v192 = 32;
              v193 = v73[7];
              if (!v73[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v192 = 0;
            v191.i64[0] = 0;
            v274 = 0u;
            v275 = 0u;
            v278 = 0u;
            v279 = 0u;
            v193 = v73[7];
            if (!v73[7])
            {
              goto LABEL_218;
            }
          }

          v194 = v189 + v192;
          if (v193 < 0xF0)
          {
            if (v193 == 63)
            {
              v29 = *v194;
              v28 = *(v194 + 16);
              v197 = *(v194 + 32);
              v198 = *(v194 + 48);
              v282 = *v194;
              v283 = v197;
              v286 = v28;
              v287 = v198;
            }

            else if (v193 == 1)
            {
              v29 = vld1q_dup_s16(v194);
              v282 = v29;
              v283 = v29;
              v286 = v29;
              v287 = v29;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v282, 64, v194, v193, *v191.i8, *v28.i8);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v282, 64, v194, v193, v81);
          }

LABEL_235:
          result = v245;
          v38 = v36 + 1;
          v199 = v251;
          if (v251)
          {
            v200 = 0;
            v201 = &v256.i8[64 * v249 + 8 * v250];
            v202 = v252;
            do
            {
              if (v202)
              {
                v203 = 0;
                v204 = v247 + v248 * v200;
                do
                {
                  *(v204 + v203) = v201[v203];
                  ++v203;
                  v202 = v252;
                }

                while (8 * v252 > v203);
                v199 = v251;
              }

              ++v200;
              v201 += 64;
            }

            while (v200 < v199);
          }

LABEL_31:
          v21 = v36 == v235 >> 3;
          v36 = v38;
        }

        while (!v21);
        v21 = v17++ == v224;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v210 = v15;
  v17 = v16;
  v19 = v18;
  v205 = v20;
  v206 = v21;
  v192 = v22;
  v23 = v12;
  v352 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v209 = v14;
  v24 = v14 >> 3;
  v191 = v14 + a10 - 1;
  v193 = v191 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v213 = v23;
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
  v204 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v203 = result;
  if (v24 <= v193)
  {
    v202 = v210 + a9 - 1;
    if (v210 >> 3 <= v202 >> 3)
    {
      result = v23;
      v33 = a11;
      v212 = (v19 - 1) >> 3;
      v188 = v19 - 1;
      v196 = (v19 - 1) & 7;
      v189 = (v17 - 1) & 7;
      v190 = (v17 - 1) >> 3;
      v194 = 4 * a11;
      v195 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v201 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v200 = v35;
      v187 = 8 * v26 * v25;
      do
      {
        v36 = (8 * v24) | 7;
        if (8 * v24 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v24;
        }

        if (v191 < v36)
        {
          v36 = v191;
        }

        v208 = 8 * v24;
        v199 = v37 - 8 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v189;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v210 >> 3;
        v43 = v189 + 1;
        if (v24 != v190)
        {
          v43 = 8;
        }

        v211 = v43;
        if (v24 != v190)
        {
          v40 = v41;
        }

        v197 = v40;
        v207 = v192 + (v37 - v209) * v33;
        v44 = v210;
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

          if (v202 < v47)
          {
            v47 = v210 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v212)
          {
            v51 = v196 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v208 >= v209 && v46 >= v44)
          {
            v53 = v49 != v196;
            if (v42 != v212)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v197;
          }

          if (v203)
          {
            v74 = 0;
            v75 = v187 >> (*(result + 57) != 0);
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
              v76 = 0;
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
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v175 = (v74 >> 3) - 1;
            if (v76)
            {
              v176 = 0;
            }

            else
            {
              v176 = 32 - __clz(~(-1 << -__clz(v175)));
            }

            v177 = (v78 >> 3) - 1;
            if (v77)
            {
              v178 = 0;
              if (v176)
              {
                goto LABEL_230;
              }
            }

            else
            {
              v178 = 32 - __clz(~(-1 << -__clz(v177)));
              if (v178 | v176)
              {
LABEL_230:
                v179 = 0;
                v180 = 0;
                v181 = v42 & v175;
                v182 = v24 & v177;
                v183 = v176 != 0;
                v184 = v178 != 0;
                v185 = 1;
                do
                {
                  --v176;
                  if (v183)
                  {
                    v180 |= (v185 & v181) << v179++;
                  }

                  else
                  {
                    v176 = 0;
                  }

                  --v178;
                  if (v184)
                  {
                    v180 |= (v185 & v182) << v179++;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v185 *= 2;
                  --v179;
                  v184 = v178 != 0;
                  v183 = v176 != 0;
                }

                while (v178 | v176);
                v186 = v180 << 10;
                result = v213;
                goto LABEL_242;
              }
            }

            v186 = 0;
LABEL_242:
            v61 = v186 + ((v46 / v74 + v208 / v78 * ((v74 + v188) / v74)) << 14);
            goto LABEL_56;
          }

          if (v201)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v200.i8[0];
            v58 = v200.i8[4];
            v60 = v201.i32[0];
            v59 = v201.i32[1];
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
          v79 = (v205 + v61);
          if (v204)
          {
            memcpy(__dst, v79, sizeof(__dst));
            result = v213;
            v79 = __dst;
          }

          v80 = (v206 + v73);
          v81 = v207 + 32 * (v48 - v44);
          if (v52 & 1 | (v51 < 8u) || v211 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = result;
            block[5] = v79;
            v221 = v51;
            v222 = v211;
            v217 = v199;
            v218 = v48 - v46;
            block[6] = v80;
            v215 = v81;
            v33 = a11;
            v216 = a11;
            v219 = v198;
            v220 = v50;
            if (v52)
            {
              dispatch_sync(*(*(result + 8) + 16552), block);
              result = v213;
              v44 = v210;
              goto LABEL_29;
            }

            v86 = *(result + 208);
            v87 = *(v86 + 52);
            v88 = *v80;
            v44 = v210;
            if (*v80)
            {
              if (v88 < 0xF0)
              {
                if (v88 == 7)
                {
                  v93 = vld1q_dup_f64(v79);
                  v224 = v93;
                  v225 = v93;
                  v226 = v93;
                  v227 = v93;
                  v228 = v93;
                  v229 = v93;
                  v230 = v93;
                  v231 = v93;
                  v240 = v93;
                  v241 = v93;
                  v242 = v93;
                  v243 = v93;
                  v244 = v93;
                  v245 = v93;
                  v89 = 8;
                  v246 = v93;
                  v247 = v93;
                }

                else
                {
                  v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v224, 256, v79, v88);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v224, 256, v79, v88, *(v86 + 52));
                v89 = 128;
              }
            }

            else
            {
              v89 = 0;
              v231 = 0u;
              v230 = 0u;
              v229 = 0u;
              v228 = 0u;
              v227 = 0u;
              v226 = 0u;
              v225 = 0u;
              v224 = 0u;
              v240 = 0u;
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
            }

            v142 = &v79[v89];
            v143 = v80[1];
            if (v80[1])
            {
              if (v143 < 0xF0)
              {
                if (v143 == 7)
                {
                  v145 = vld1q_dup_f64(v142);
                  v256 = v145;
                  v257 = v145;
                  v258 = v145;
                  v259 = v145;
                  v260 = v145;
                  v261 = v145;
                  v262 = v145;
                  v263 = v145;
                  v272 = v145;
                  v273 = v145;
                  v274 = v145;
                  v275 = v145;
                  v276 = v145;
                  v277 = v145;
                  v144 = 8;
                  v278 = v145;
                  v279 = v145;
                }

                else
                {
                  v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 256, v142, v143);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 256, v142, v143, v87);
                v144 = 128;
              }
            }

            else
            {
              v144 = 0;
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              v256 = 0u;
              v257 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
            }

            v146 = (v142 + v144);
            v147 = v80[2];
            if (v80[2])
            {
              if (v147 < 0xF0)
              {
                if (v147 == 7)
                {
                  v149 = vld1q_dup_f64(v146);
                  v232 = v149;
                  v233 = v149;
                  v234 = v149;
                  v235 = v149;
                  v236 = v149;
                  v237 = v149;
                  v238 = v149;
                  v239 = v149;
                  v248 = v149;
                  v249 = v149;
                  v250 = v149;
                  v251 = v149;
                  v252 = v149;
                  v253 = v149;
                  v148 = 8;
                  v254 = v149;
                  v255 = v149;
                }

                else
                {
                  v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v232, 256, v146, v147);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v232, 256, v146, v147, v87);
                v148 = 128;
              }
            }

            else
            {
              v148 = 0;
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v232 = 0u;
              v233 = 0u;
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v150 = (v146 + v148);
            v151 = v80[3];
            if (v80[3])
            {
              if (v151 < 0xF0)
              {
                if (v151 == 7)
                {
                  v153 = vld1q_dup_f64(v150);
                  v264 = v153;
                  v265 = v153;
                  v266 = v153;
                  v267 = v153;
                  v268 = v153;
                  v269 = v153;
                  v270 = v153;
                  v271 = v153;
                  v280 = v153;
                  v281 = v153;
                  v282 = v153;
                  v283 = v153;
                  v284 = v153;
                  v285 = v153;
                  v152 = 8;
                  v286 = v153;
                  v287 = v153;
                }

                else
                {
                  v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 256, v150, v151);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v264, 256, v150, v151, v87);
                v152 = 128;
              }
            }

            else
            {
              v152 = 0;
              v270 = 0u;
              v271 = 0u;
              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              v264 = 0u;
              v265 = 0u;
              v280 = 0u;
              v281 = 0u;
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
            }

            v154 = (v150 + v152);
            v155 = v80[4];
            if (v80[4])
            {
              if (v155 < 0xF0)
              {
                if (v155 == 7)
                {
                  v157 = vld1q_dup_f64(v154);
                  v288 = v157;
                  v289 = v157;
                  v290 = v157;
                  v291 = v157;
                  v292 = v157;
                  v293 = v157;
                  v294 = v157;
                  v295 = v157;
                  v304 = v157;
                  v305 = v157;
                  v306 = v157;
                  v307 = v157;
                  v308 = v157;
                  v309 = v157;
                  v310 = v157;
                  v156 = 8;
                  v311 = v157;
                }

                else
                {
                  v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v288, 256, v154, v155);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v288, 256, v154, v155, v87);
                v156 = 128;
              }
            }

            else
            {
              v156 = 0;
              v294 = 0u;
              v295 = 0u;
              v292 = 0u;
              v293 = 0u;
              v290 = 0u;
              v291 = 0u;
              v288 = 0u;
              v289 = 0u;
              v304 = 0u;
              v305 = 0u;
              v306 = 0u;
              v307 = 0u;
              v308 = 0u;
              v309 = 0u;
              v310 = 0u;
              v311 = 0u;
            }

            v158 = (v154 + v156);
            v159 = v80[5];
            if (v80[5])
            {
              if (v159 < 0xF0)
              {
                if (v159 == 7)
                {
                  v161 = vld1q_dup_f64(v158);
                  v320 = v161;
                  v321 = v161;
                  v322 = v161;
                  v323 = v161;
                  v324 = v161;
                  v325 = v161;
                  v326 = v161;
                  v327 = v161;
                  v336 = v161;
                  v337 = v161;
                  v338 = v161;
                  v339 = v161;
                  v340 = v161;
                  v341 = v161;
                  v342 = v161;
                  v160 = 8;
                  v343 = v161;
                }

                else
                {
                  v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v320, 256, v158, v159);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v320, 256, v158, v159, v87);
                v160 = 128;
              }
            }

            else
            {
              v160 = 0;
              v326 = 0u;
              v327 = 0u;
              v324 = 0u;
              v325 = 0u;
              v322 = 0u;
              v323 = 0u;
              v320 = 0u;
              v321 = 0u;
              v336 = 0u;
              v337 = 0u;
              v338 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v342 = 0u;
              v343 = 0u;
            }

            v162 = (v158 + v160);
            v163 = v80[6];
            if (v80[6])
            {
              if (v163 < 0xF0)
              {
                if (v163 == 7)
                {
                  v166 = vld1q_dup_f64(v162);
                  v296 = v166;
                  v297 = v166;
                  v298 = v166;
                  v299 = v166;
                  v300 = v166;
                  v301 = v166;
                  v302 = v166;
                  v303 = v166;
                  v312 = v166;
                  v313 = v166;
                  v314 = v166;
                  v315 = v166;
                  v316 = v166;
                  v317 = v166;
                  v318 = v166;
                  v164 = 8;
                  v319 = v166;
                  v165 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }

                else
                {
                  v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v296, 256, v162, v163);
                  v165 = v80[7];
                  if (!v80[7])
                  {
                    goto LABEL_200;
                  }
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v296, 256, v162, v163, v87);
                v164 = 128;
                v165 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_200;
                }
              }

LABEL_195:
              v167 = (v162 + v164);
              if (v165 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v328, 256, v167, v165, v87);
                goto LABEL_201;
              }

              v45 = v42 + 1;
              if (v165 == 7)
              {
                v168 = vld1q_dup_f64(v167);
                v328 = v168;
                v329 = v168;
                v330 = v168;
                v331 = v168;
                v332 = v168;
                v333 = v168;
                v334 = v168;
                v335 = v168;
                v344 = v168;
                v345 = v168;
                v346 = v168;
                v347 = v168;
                v348 = v168;
                v349 = v168;
                v350 = v168;
                v351 = v168;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v328, 256, v167, v165);
              }

              result = v213;
            }

            else
            {
              v164 = 0;
              v302 = 0u;
              v303 = 0u;
              v300 = 0u;
              v301 = 0u;
              v298 = 0u;
              v299 = 0u;
              v296 = 0u;
              v297 = 0u;
              v312 = 0u;
              v313 = 0u;
              v314 = 0u;
              v315 = 0u;
              v316 = 0u;
              v317 = 0u;
              v318 = 0u;
              v319 = 0u;
              v165 = v80[7];
              if (v80[7])
              {
                goto LABEL_195;
              }

LABEL_200:
              v334 = 0u;
              v335 = 0u;
              v332 = 0u;
              v333 = 0u;
              v330 = 0u;
              v331 = 0u;
              v328 = 0u;
              v329 = 0u;
              v344 = 0u;
              v345 = 0u;
              v346 = 0u;
              v347 = 0u;
              v348 = 0u;
              v349 = 0u;
              v350 = 0u;
              v351 = 0u;
LABEL_201:
              result = v213;
              v45 = v42 + 1;
            }

            v169 = v219;
            if (v219)
            {
              v170 = 0;
              v171 = &v224.f64[32 * v217 + 4 * v218];
              v172 = v220;
              do
              {
                if (v172)
                {
                  v173 = 0;
                  v174 = v215 + v216 * v170;
                  do
                  {
                    *(v174 + v173) = *(v171 + v173);
                    ++v173;
                    v172 = v220;
                  }

                  while (32 * v220 > v173);
                  v169 = v219;
                }

                ++v170;
                v171 += 16;
              }

              while (v170 < v169);
            }

            goto LABEL_30;
          }

          v82 = *(result + 208);
          v83 = *(v82 + 52);
          v84 = *v80;
          if (*v80)
          {
            v33 = a11;
            if (v84 < 0xF0)
            {
              if (v84 == 7)
              {
                v91 = vld1q_dup_f64(v79);
                *v81 = v91;
                *(v81 + 16) = v91;
                *(v81 + 32) = v91;
                *(v81 + 48) = v91;
                *(v81 + 64) = v91;
                *(v81 + 80) = v91;
                *(v81 + 96) = v91;
                *(v81 + 112) = v91;
                v92 = (v81 + a11);
                *v92 = v91;
                v92[1] = v91;
                v92[2] = v91;
                v92[3] = v91;
                v92[4] = v91;
                v92[5] = v91;
                v92[6] = v91;
                v92[7] = v91;
                v85 = 8;
              }

              else
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81, a11, v79, v84);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v81, a11, v79, v84, *(v82 + 52));
              v85 = 128;
            }
          }

          else
          {
            v85 = 0;
            *(v81 + 96) = 0u;
            *(v81 + 112) = 0u;
            *(v81 + 64) = 0u;
            *(v81 + 80) = 0u;
            *(v81 + 32) = 0u;
            *(v81 + 48) = 0u;
            *v81 = 0u;
            *(v81 + 16) = 0u;
            v33 = a11;
            v90 = (v81 + a11);
            v90[6] = 0u;
            v90[7] = 0u;
            v90[4] = 0u;
            v90[5] = 0u;
            v90[2] = 0u;
            v90[3] = 0u;
            *v90 = 0u;
            v90[1] = 0u;
          }

          v94 = &v79[v85];
          v95 = (v81 + v195);
          v96 = v80[1];
          if (v80[1])
          {
            if (v96 < 0xF0)
            {
              if (v96 == 7)
              {
                v99 = vld1q_dup_f64(v94);
                *v95 = v99;
                v95[1] = v99;
                v95[2] = v99;
                v95[3] = v99;
                v95[4] = v99;
                v95[5] = v99;
                v95[6] = v99;
                v95[7] = v99;
                v100 = (v95 + v33);
                *v100 = v99;
                v100[1] = v99;
                v100[2] = v99;
                v100[3] = v99;
                v100[4] = v99;
                v100[5] = v99;
                v100[6] = v99;
                v100[7] = v99;
                v97 = 8;
              }

              else
              {
                v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81 + v195, v33, v94, v96);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v195), v33, v94, v96, v83);
              v97 = 128;
            }
          }

          else
          {
            v97 = 0;
            v95[6] = 0u;
            v95[7] = 0u;
            v95[4] = 0u;
            v95[5] = 0u;
            v95[2] = 0u;
            v95[3] = 0u;
            *v95 = 0u;
            v95[1] = 0u;
            v98 = (v95->f64 + v33);
            v98[6] = 0u;
            v98[7] = 0u;
            v98[4] = 0u;
            v98[5] = 0u;
            v98[2] = 0u;
            v98[3] = 0u;
            *v98 = 0u;
            v98[1] = 0u;
          }

          v101 = (v94 + v97);
          v102 = (v81 + 128);
          v103 = v80[2];
          if (v80[2])
          {
            if (v103 < 0xF0)
            {
              if (v103 == 7)
              {
                v106 = vld1q_dup_f64(v101);
                *(v81 + 128) = v106;
                *(v81 + 144) = v106;
                *(v81 + 160) = v106;
                *(v81 + 176) = v106;
                *(v81 + 192) = v106;
                *(v81 + 208) = v106;
                *(v81 + 224) = v106;
                *(v81 + 240) = v106;
                v107 = (v102 + v33);
                *v107 = v106;
                v107[1] = v106;
                v107[2] = v106;
                v107[3] = v106;
                v107[4] = v106;
                v107[5] = v106;
                v107[6] = v106;
                v107[7] = v106;
                v104 = 8;
              }

              else
              {
                v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v102, v33, v101, v103);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v102, v33, v101, v103, v83);
              v104 = 128;
            }
          }

          else
          {
            v104 = 0;
            *(v81 + 224) = 0u;
            *(v81 + 240) = 0u;
            *(v81 + 192) = 0u;
            *(v81 + 208) = 0u;
            *(v81 + 160) = 0u;
            *(v81 + 176) = 0u;
            *v102->i8 = 0u;
            *(v81 + 144) = 0u;
            v105 = (v102 + v33);
            v105[6] = 0u;
            v105[7] = 0u;
            v105[4] = 0u;
            v105[5] = 0u;
            v105[2] = 0u;
            v105[3] = 0u;
            *v105 = 0u;
            v105[1] = 0u;
          }

          v108 = (v101 + v104);
          v109 = &v95[8];
          v110 = v80[3];
          if (v80[3])
          {
            if (v110 < 0xF0)
            {
              if (v110 == 7)
              {
                v113 = vld1q_dup_f64(v108);
                v95[8] = v113;
                v95[9] = v113;
                v95[10] = v113;
                v95[11] = v113;
                v95[12] = v113;
                v95[13] = v113;
                v95[14] = v113;
                v95[15] = v113;
                v114 = (v109 + v33);
                *v114 = v113;
                v114[1] = v113;
                v114[2] = v113;
                v114[3] = v113;
                v114[4] = v113;
                v114[5] = v113;
                v111 = 8;
                v114[6] = v113;
                v114[7] = v113;
              }

              else
              {
                v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v109, v33, v108, v110);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v109, v33, v108, v110, v83);
              v111 = 128;
            }
          }

          else
          {
            v111 = 0;
            v95[14] = 0u;
            v95[15] = 0u;
            v95[12] = 0u;
            v95[13] = 0u;
            v95[10] = 0u;
            v95[11] = 0u;
            *v109->i8 = 0u;
            v95[9] = 0u;
            v112 = (v109 + v33);
            v112[6] = 0u;
            v112[7] = 0u;
            v112[4] = 0u;
            v112[5] = 0u;
            v112[2] = 0u;
            v112[3] = 0u;
            *v112 = 0u;
            v112[1] = 0u;
          }

          v115 = (v108 + v111);
          v116 = (v81 + v194);
          v117 = v80[4];
          if (v80[4])
          {
            if (v117 < 0xF0)
            {
              if (v117 == 7)
              {
                v120 = vld1q_dup_f64(v115);
                *v116 = v120;
                v116[1] = v120;
                v116[2] = v120;
                v116[3] = v120;
                v116[4] = v120;
                v116[5] = v120;
                v116[6] = v120;
                v116[7] = v120;
                v121 = (v116 + v33);
                *v121 = v120;
                v121[1] = v120;
                v121[2] = v120;
                v121[3] = v120;
                v121[4] = v120;
                v121[5] = v120;
                v121[6] = v120;
                v121[7] = v120;
                v118 = 8;
              }

              else
              {
                v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v81 + v194, v33, v115, v117);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v81 + v194), v33, v115, v117, v83);
              v118 = 128;
            }
          }

          else
          {
            v118 = 0;
            v116[6] = 0u;
            v116[7] = 0u;
            v116[4] = 0u;
            v116[5] = 0u;
            v116[2] = 0u;
            v116[3] = 0u;
            *v116 = 0u;
            v116[1] = 0u;
            v119 = (v116->f64 + v33);
            v119[6] = 0u;
            v119[7] = 0u;
            v119[4] = 0u;
            v119[5] = 0u;
            v119[2] = 0u;
            v119[3] = 0u;
            *v119 = 0u;
            v119[1] = 0u;
          }

          v122 = (v115 + v118);
          v123 = v81 + 6 * a11;
          v124 = v80[5];
          if (v80[5])
          {
            if (v124 < 0xF0)
            {
              if (v124 == 7)
              {
                v127 = vld1q_dup_f64(v122);
                *v123 = v127;
                *(v123 + 16) = v127;
                *(v123 + 32) = v127;
                *(v123 + 48) = v127;
                *(v123 + 64) = v127;
                *(v123 + 80) = v127;
                *(v123 + 96) = v127;
                *(v123 + 112) = v127;
                v128 = (v123 + v33);
                *v128 = v127;
                v128[1] = v127;
                v128[2] = v127;
                v128[3] = v127;
                v128[4] = v127;
                v128[5] = v127;
                v128[6] = v127;
                v128[7] = v127;
                v125 = 8;
              }

              else
              {
                v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v123, v33, v122, v124);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v123, v33, v122, v124, v83);
              v125 = 128;
            }
          }

          else
          {
            v125 = 0;
            *(v123 + 96) = 0u;
            *(v123 + 112) = 0u;
            *(v123 + 64) = 0u;
            *(v123 + 80) = 0u;
            *(v123 + 32) = 0u;
            *(v123 + 48) = 0u;
            *v123 = 0u;
            *(v123 + 16) = 0u;
            v126 = (v123 + v33);
            v126[6] = 0u;
            v126[7] = 0u;
            v126[4] = 0u;
            v126[5] = 0u;
            v126[2] = 0u;
            v126[3] = 0u;
            *v126 = 0u;
            v126[1] = 0u;
          }

          v129 = (v122 + v125);
          v130 = &v116[8];
          v131 = v80[6];
          if (v80[6])
          {
            if (v131 < 0xF0)
            {
              if (v131 == 7)
              {
                v134 = vld1q_dup_f64(v129);
                v116[8] = v134;
                v116[9] = v134;
                v116[10] = v134;
                v116[11] = v134;
                v116[12] = v134;
                v116[13] = v134;
                v116[14] = v134;
                v116[15] = v134;
                v135 = (v130 + v33);
                *v135 = v134;
                v135[1] = v134;
                v135[2] = v134;
                v135[3] = v134;
                v135[4] = v134;
                v135[5] = v134;
                v132 = 8;
                v135[6] = v134;
                v135[7] = v134;
              }

              else
              {
                v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v130, v33, v129, v131);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v130, v33, v129, v131, v83);
              v132 = 128;
            }
          }

          else
          {
            v132 = 0;
            v116[14] = 0u;
            v116[15] = 0u;
            v116[12] = 0u;
            v116[13] = 0u;
            v116[10] = 0u;
            v116[11] = 0u;
            *v130->i8 = 0u;
            v116[9] = 0u;
            v133 = (v130 + v33);
            v133[6] = 0u;
            v133[7] = 0u;
            v133[4] = 0u;
            v133[5] = 0u;
            v133[2] = 0u;
            v133[3] = 0u;
            *v133 = 0u;
            v133[1] = 0u;
          }

          v136 = (v123 + 128);
          v137 = v80[7];
          if (!v80[7])
          {
            *(v123 + 224) = 0u;
            *(v123 + 240) = 0u;
            *(v123 + 192) = 0u;
            *(v123 + 208) = 0u;
            *(v123 + 160) = 0u;
            *(v123 + 176) = 0u;
            *v136->i8 = 0u;
            *(v123 + 144) = 0u;
            v139 = (v136 + v33);
            v139[6] = 0u;
            v139[7] = 0u;
            v139[4] = 0u;
            v139[5] = 0u;
            v139[2] = 0u;
            v139[3] = 0u;
            *v139 = 0u;
            v139[1] = 0u;
LABEL_146:
            v44 = v210;
            result = v213;
LABEL_29:
            v45 = v42 + 1;
            goto LABEL_30;
          }

          v138 = (v129 + v132);
          if (v137 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v136, v33, v138, v137, v83);
            goto LABEL_146;
          }

          v45 = v42 + 1;
          if (v137 == 7)
          {
            v140 = vld1q_dup_f64(v138);
            *(v123 + 128) = v140;
            *(v123 + 144) = v140;
            *(v123 + 160) = v140;
            *(v123 + 176) = v140;
            *(v123 + 192) = v140;
            *(v123 + 208) = v140;
            *(v123 + 224) = v140;
            *(v123 + 240) = v140;
            v141 = (v136 + v33);
            *v141 = v140;
            v141[1] = v140;
            v141[2] = v140;
            v141[3] = v140;
            v141[4] = v140;
            v141[5] = v140;
            v141[6] = v140;
            v141[7] = v140;
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v136, v33, v138, v137);
          }

          v44 = v210;
          result = v213;
LABEL_30:
          v28 = v42 == v202 >> 3;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v193;
      }

      while (!v28);
    }
  }

  return result;
}