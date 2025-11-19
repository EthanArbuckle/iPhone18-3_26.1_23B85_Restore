void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v16 = a1;
  v259 = *MEMORY[0x29EDCA608];
  v196 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v20 = a8 >> 4;
  v195 = a8 + a10 - 1;
  v21 = v195 >> 4;
  if (*(v16 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v209 = v26;
  if (v20 <= v21)
  {
    v208 = a7 + a9 - 1;
    if (a7 >> 4 <= v208 >> 4)
    {
      v215 = (a5 - 1) >> 4;
      v194 = (a6 - 1) >> 4;
      v202 = (a5 - 1) & 0xF;
      v192 = ((a6 - 1) & 0xF) + 1;
      v193 = (a6 - 1) & 0xF;
      v201 = 4 * a11;
      v200 = 8 * a11;
      v206 = a7;
      v190 = v21 + 1;
      v191 = a7 >> 4;
      v213 = v16;
      v207 = a7;
      v199 = 2 * a11;
      do
      {
        v27 = (16 * v20) | 0xF;
        if (16 * v20 <= v212)
        {
          v28 = v212;
        }

        else
        {
          v28 = 16 * v20;
        }

        if (v195 < v27)
        {
          v27 = v195;
        }

        v205 = v28 - 16 * v20;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v193;
        v204 = v30;
        v32 = v30 != 16;
        v33 = v192;
        if (v20 != v194)
        {
          v33 = 16;
        }

        v214 = v33;
        if (v20 != v194)
        {
          v31 = v32;
        }

        v203 = v31;
        v211 = a2 + (v28 - v212) * a11;
        v34 = v191;
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

          if (v208 < v37)
          {
            v37 = v208;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v215)
          {
            v41 = v202 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v20 >= v212 && v36 >= v206)
          {
            v43 = v39 != v202;
            if (v34 != v215)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v203;
          }

          v44 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_63:
              v55 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_63;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v20) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_64:
          v56 = (a3 + v20 * v196 + (v34 << 9));
          v216 = v34 + 1;
          if (v209)
          {
            memcpy(__dst, v56, sizeof(__dst));
            v56 = __dst;
          }

          v57 = (a4 + v55);
          v58 = (v211 + 2 * (v38 - a7));
          if (!(v42 & 1 | (v41 < 0x10u)) && v214 > 0xF)
          {
            v59 = *v57;
            if (v59 == 63)
            {
              v68 = *v56;
              v18 = v56[1];
              v19 = v56[2];
              v69 = v56[3];
              *v58 = vuzp1q_s32(*v56, v19);
              *(v58 + a11) = vuzp2q_s32(v68, v19);
              v61 = 3 * a11;
              v60 = 2 * a11;
              v70 = (v58 + v199);
              *v70 = vuzp1q_s32(v18, v69);
              v17 = vuzp2q_s32(v18, v69);
              *(v70 + a11) = v17;
              v62 = 64;
            }

            else
            {
              v60 = 2 * a11;
              if (v59 == 1)
              {
                v17 = vld1q_dup_s16(v56->i16);
                *v58 = v17;
                *(v58 + a11) = v17;
                *(v58 + 2 * a11) = v17;
                v61 = 3 * a11;
                *(v58 + 3 * a11) = v17;
                v62 = 2;
              }

              else
              {
                v61 = 3 * a11;
                if (*v57)
                {
                  v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v58, a11, v56, v59, *v17.i8, *v18.i64, *v19.i8);
                }

                else
                {
                  v62 = 0;
                  v58->i64[0] = 0;
                  v58->i64[1] = 0;
                  v63 = (v58->i64 + a11);
                  *v63 = 0;
                  v63[1] = 0;
                  v64 = (v58->i64 + v199);
                  *v64 = 0;
                  v64[1] = 0;
                  v65 = (v58->i64 + 3 * a11);
                  *v65 = 0;
                  v65[1] = 0;
                }
              }
            }

            v71 = v56->i64 + v62;
            v72 = v58 + 1;
            v73 = v57[1];
            if (v73 == 63)
            {
              v78 = *v71;
              v18 = *(v71 + 16);
              v19 = *(v71 + 32);
              v79 = *(v71 + 48);
              *v72 = vuzp1q_s32(*v71, v19);
              *(v72 + a11) = vuzp2q_s32(v78, v19);
              v80 = (v72 + v60);
              *v80 = vuzp1q_s32(v18, v79);
              v17 = vuzp2q_s32(v18, v79);
              *(v80 + a11) = v17;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v17 = vld1q_dup_s16(v71);
              *v72 = v17;
              *(v72 + a11) = v17;
              *(v72 + v60) = v17;
              *(v72 + v61) = v17;
              v74 = 2;
            }

            else if (v57[1])
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v71, v73, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v74 = 0;
              v72->i64[0] = 0;
              v58[1].i64[1] = 0;
              v75 = (v72->i64 + a11);
              *v75 = 0;
              v75[1] = 0;
              v76 = (v72->i64 + v60);
              *v76 = 0;
              v76[1] = 0;
              v77 = (v72->i64 + v61);
              *v77 = 0;
              v77[1] = 0;
            }

            v81 = v71 + v74;
            v82 = (v58 + v201);
            v83 = v57[2];
            if (v83 == 63)
            {
              v88 = *v81;
              v18 = *(v81 + 16);
              v19 = *(v81 + 32);
              v89 = *(v81 + 48);
              *v82 = vuzp1q_s32(*v81, v19);
              *(v82 + a11) = vuzp2q_s32(v88, v19);
              v90 = (v82 + v60);
              *v90 = vuzp1q_s32(v18, v89);
              v17 = vuzp2q_s32(v18, v89);
              *(v90 + a11) = v17;
              v84 = 64;
            }

            else if (v83 == 1)
            {
              v17 = vld1q_dup_s16(v81);
              *v82 = v17;
              *(v82 + a11) = v17;
              *(v82 + v60) = v17;
              *(v82 + v61) = v17;
              v84 = 2;
            }

            else if (v57[2])
            {
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v58 + v201), a11, v81, v83, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v84 = 0;
              v82->i64[0] = 0;
              v82->i64[1] = 0;
              v85 = (v82->i64 + a11);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v82->i64 + v60);
              *v86 = 0;
              v86[1] = 0;
              v87 = (v82->i64 + v61);
              *v87 = 0;
              v87[1] = 0;
            }

            v91 = v81 + v84;
            v92 = v82 + 1;
            v93 = v57[3];
            if (v93 == 63)
            {
              v98 = *v91;
              v18 = *(v91 + 16);
              v19 = *(v91 + 32);
              v99 = *(v91 + 48);
              *v92 = vuzp1q_s32(*v91, v19);
              *(v92 + a11) = vuzp2q_s32(v98, v19);
              v100 = (v92 + v60);
              *v100 = vuzp1q_s32(v18, v99);
              v17 = vuzp2q_s32(v18, v99);
              *(v100 + a11) = v17;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v17 = vld1q_dup_s16(v91);
              *v92 = v17;
              *(v92 + a11) = v17;
              *(v92 + v60) = v17;
              *(v92 + v61) = v17;
              v94 = 2;
            }

            else if (v57[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v91, v93, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v94 = 0;
              v92->i64[0] = 0;
              v82[1].i64[1] = 0;
              v95 = (v92->i64 + a11);
              *v95 = 0;
              v95[1] = 0;
              v96 = (v92->i64 + v60);
              *v96 = 0;
              v96[1] = 0;
              v97 = (v92->i64 + v61);
              *v97 = 0;
              v97[1] = 0;
            }

            v101 = v91 + v94;
            v102 = (v58 + v200);
            v103 = v57[4];
            if (v103 == 63)
            {
              v108 = *v101;
              v18 = *(v101 + 16);
              v19 = *(v101 + 32);
              v109 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v19);
              *(v102 + a11) = vuzp2q_s32(v108, v19);
              v110 = (v102 + v60);
              *v110 = vuzp1q_s32(v18, v109);
              v17 = vuzp2q_s32(v18, v109);
              *(v110 + a11) = v17;
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v17 = vld1q_dup_s16(v101);
              *v102 = v17;
              *(v102 + a11) = v17;
              *(v102 + v60) = v17;
              *(v102 + v61) = v17;
              v104 = 2;
            }

            else if (v57[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v58 + v200), a11, v101, v103, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v102->i64[1] = 0;
              v105 = (v102->i64 + a11);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v60);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v61);
              *v107 = 0;
              v107[1] = 0;
            }

            v111 = v101 + v104;
            v112 = v102 + 1;
            v113 = v57[5];
            if (v113 == 63)
            {
              v118 = *v111;
              v18 = *(v111 + 16);
              v19 = *(v111 + 32);
              v119 = *(v111 + 48);
              *v112 = vuzp1q_s32(*v111, v19);
              *(v112 + a11) = vuzp2q_s32(v118, v19);
              v120 = (v112 + v60);
              *v120 = vuzp1q_s32(v18, v119);
              v17 = vuzp2q_s32(v18, v119);
              *(v120 + a11) = v17;
              v114 = 64;
              v16 = v213;
            }

            else
            {
              v16 = v213;
              if (v113 == 1)
              {
                v17 = vld1q_dup_s16(v111);
                *v112 = v17;
                *(v112 + a11) = v17;
                *(v112 + v60) = v17;
                *(v112 + v61) = v17;
                v114 = 2;
              }

              else if (v57[5])
              {
                v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, a11, v111, v113, *v17.i8, *v18.i64, *v19.i8);
              }

              else
              {
                v114 = 0;
                v112->i64[0] = 0;
                v112->i64[1] = 0;
                v115 = (v112->i64 + a11);
                *v115 = 0;
                v115[1] = 0;
                v116 = (v112->i64 + v60);
                *v116 = 0;
                v116[1] = 0;
                v117 = (v112->i64 + v61);
                *v117 = 0;
                v117[1] = 0;
              }
            }

            v121 = v111 + v114;
            v122 = (v58 + 12 * a11);
            v123 = v57[6];
            if (v123 == 63)
            {
              v128 = *v121;
              v18 = *(v121 + 16);
              v19 = *(v121 + 32);
              v129 = *(v121 + 48);
              *v122 = vuzp1q_s32(*v121, v19);
              *(v122 + a11) = vuzp2q_s32(v128, v19);
              v130 = (v122 + v60);
              *v130 = vuzp1q_s32(v18, v129);
              v17 = vuzp2q_s32(v18, v129);
              *(v130 + a11) = v17;
              v124 = 64;
            }

            else if (v123 == 1)
            {
              v17 = vld1q_dup_s16(v121);
              *v122 = v17;
              *(v122 + a11) = v17;
              *(v122 + v60) = v17;
              *(v122 + v61) = v17;
              v124 = 2;
            }

            else if (v57[6])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, a11, v121, v123, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v124 = 0;
              v122->i64[0] = 0;
              v122->i64[1] = 0;
              v125 = (v122->i64 + a11);
              *v125 = 0;
              v125[1] = 0;
              v126 = (v122->i64 + v60);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v122->i64 + v61);
              *v127 = 0;
              v127[1] = 0;
            }

            v131 = v121 + v124;
            v132 = v122 + 1;
            v133 = v57[7];
            if (v133 == 63)
            {
              v137 = *v131;
              v18 = *(v131 + 16);
              v19 = *(v131 + 32);
              v138 = *(v131 + 48);
              *v132 = vuzp1q_s32(*v131, v19);
              *(v132 + a11) = vuzp2q_s32(v137, v19);
              v139 = (v132 + v60);
              *v139 = vuzp1q_s32(v18, v138);
              v17 = vuzp2q_s32(v18, v138);
              *(v139 + a11) = v17;
              a7 = v207;
            }

            else
            {
              a7 = v207;
              if (v133 == 1)
              {
                v17 = vld1q_dup_s16(v131);
                *v132 = v17;
                *(v132 + a11) = v17;
                *(v132 + v60) = v17;
                *(v132 + v61) = v17;
              }

              else if (v57[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, a11, v131, v133, *v17.i8, *v18.i64, *v19.i8);
              }

              else
              {
                v132->i64[0] = 0;
                v132->i64[1] = 0;
                v134 = (v132->i64 + a11);
                *v134 = 0;
                v134[1] = 0;
                v135 = (v132->i64 + v60);
                *v135 = 0;
                v135[1] = 0;
                v136 = (v132->i64 + v61);
                *v136 = 0;
                v136[1] = 0;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v213;
          block[5] = v56;
          v224 = v41;
          v225 = v214;
          v220 = v205;
          v221 = v38 - v36;
          block[6] = v57;
          v218 = v58;
          v219 = a11;
          v222 = v204;
          v223 = v40;
          if (v42)
          {
            dispatch_sync(*(*(v213 + 8) + 16552), block);
            a7 = v207;
            v16 = v213;
LABEL_29:
            v35 = v216;
            goto LABEL_30;
          }

          v66 = *v57;
          a7 = v207;
          if (v66 == 63)
          {
            v140 = v56[1];
            v19 = v56[2];
            v141 = v56[3];
            v142 = vuzp2q_s32(*v56, v19);
            v227 = vuzp1q_s32(*v56, v19);
            v229 = v142;
            v17 = vuzp1q_s32(v140, v141);
            v18 = vuzp2q_s32(v140, v141);
            v231 = v17;
            v233 = v18;
            v67 = 64;
          }

          else if (v66 == 1)
          {
            v17 = vld1q_dup_s16(v56->i16);
            v227 = v17;
            v229 = v17;
            v231 = v17;
            v233 = v17;
            v67 = 2;
          }

          else if (*v57)
          {
            v67 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 32, v56, v66, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v67 = 0;
            v227 = 0uLL;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
          }

          v143 = v56->i64 + v67;
          v144 = v57[1];
          if (v144 == 63)
          {
            v146 = *(v143 + 16);
            v19 = *(v143 + 32);
            v147 = *(v143 + 48);
            v148 = vuzp2q_s32(*v143, v19);
            v228 = vuzp1q_s32(*v143, v19);
            v230 = v148;
            v17 = vuzp1q_s32(v146, v147);
            v18 = vuzp2q_s32(v146, v147);
            v232 = v17;
            v234 = v18;
            v145 = 64;
            v16 = v213;
          }

          else
          {
            v16 = v213;
            if (v144 == 1)
            {
              v17 = vld1q_dup_s16(v143);
              v228 = v17;
              v230 = v17;
              v232 = v17;
              v234 = v17;
              v145 = 2;
            }

            else if (v57[1])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v143, v144, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v145 = 0;
              v228 = 0uLL;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
            }
          }

          v149 = v143 + v145;
          v150 = v57[2];
          if (v150 == 63)
          {
            v152 = *(v149 + 16);
            v19 = *(v149 + 32);
            v153 = *(v149 + 48);
            v154 = vuzp2q_s32(*v149, v19);
            v235 = vuzp1q_s32(*v149, v19);
            v237 = v154;
            v17 = vuzp1q_s32(v152, v153);
            v18 = vuzp2q_s32(v152, v153);
            v239 = v17;
            v241 = v18;
            v151 = 64;
          }

          else if (v150 == 1)
          {
            v17 = vld1q_dup_s16(v149);
            v235 = v17;
            v237 = v17;
            v239 = v17;
            v241 = v17;
            v151 = 2;
          }

          else if (v57[2])
          {
            v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v149, v150, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v151 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v155 = v149 + v151;
          v156 = v57[3];
          if (v156 == 63)
          {
            v158 = *(v155 + 16);
            v19 = *(v155 + 32);
            v159 = *(v155 + 48);
            v160 = vuzp2q_s32(*v155, v19);
            v236 = vuzp1q_s32(*v155, v19);
            v238 = v160;
            v17 = vuzp1q_s32(v158, v159);
            v18 = vuzp2q_s32(v158, v159);
            v240 = v17;
            v242 = v18;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v17 = vld1q_dup_s16(v155);
            v236 = v17;
            v238 = v17;
            v240 = v17;
            v242 = v17;
            v157 = 2;
          }

          else if (v57[3])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 32, v155, v156, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v157 = 0;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
          }

          v161 = v155 + v157;
          v162 = v57[4];
          if (v162 == 63)
          {
            v164 = *(v161 + 16);
            v19 = *(v161 + 32);
            v165 = *(v161 + 48);
            v166 = vuzp2q_s32(*v161, v19);
            v243 = vuzp1q_s32(*v161, v19);
            v245 = v166;
            v17 = vuzp1q_s32(v164, v165);
            v18 = vuzp2q_s32(v164, v165);
            v247 = v17;
            v249 = v18;
            v163 = 64;
          }

          else if (v162 == 1)
          {
            v17 = vld1q_dup_s16(v161);
            v243 = v17;
            v245 = v17;
            v247 = v17;
            v249 = v17;
            v163 = 2;
          }

          else if (v57[4])
          {
            v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v161, v162, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v163 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v167 = v161 + v163;
          v168 = v57[5];
          if (v168 == 63)
          {
            v170 = *(v167 + 16);
            v19 = *(v167 + 32);
            v171 = *(v167 + 48);
            v172 = vuzp2q_s32(*v167, v19);
            v244 = vuzp1q_s32(*v167, v19);
            v246 = v172;
            v17 = vuzp1q_s32(v170, v171);
            v18 = vuzp2q_s32(v170, v171);
            v248 = v17;
            v250 = v18;
            v169 = 64;
          }

          else if (v168 == 1)
          {
            v17 = vld1q_dup_s16(v167);
            v244 = v17;
            v246 = v17;
            v248 = v17;
            v250 = v17;
            v169 = 2;
          }

          else if (v57[5])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 32, v167, v168, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v169 = 0;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
          }

          v173 = v167 + v169;
          v174 = v57[6];
          if (v174 == 63)
          {
            v176 = *(v173 + 16);
            v19 = *(v173 + 32);
            v177 = *(v173 + 48);
            v178 = vuzp2q_s32(*v173, v19);
            v251 = vuzp1q_s32(*v173, v19);
            v253 = v178;
            v17 = vuzp1q_s32(v176, v177);
            v18 = vuzp2q_s32(v176, v177);
            v255 = v17;
            v257 = v18;
            v175 = 64;
          }

          else if (v174 == 1)
          {
            v17 = vld1q_dup_s16(v173);
            v251 = v17;
            v253 = v17;
            v255 = v17;
            v257 = v17;
            v175 = 2;
          }

          else if (v57[6])
          {
            v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v173, v174, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v175 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v179 = v173 + v175;
          v180 = v57[7];
          if (v180 == 63)
          {
            v181 = *(v179 + 16);
            v19 = *(v179 + 32);
            v182 = *(v179 + 48);
            v183 = vuzp2q_s32(*v179, v19);
            v252 = vuzp1q_s32(*v179, v19);
            v254 = v183;
            v17 = vuzp1q_s32(v181, v182);
            v18 = vuzp2q_s32(v181, v182);
            v256 = v17;
            v258 = v18;
          }

          else if (v180 == 1)
          {
            v17 = vld1q_dup_s16(v179);
            v252 = v17;
            v254 = v17;
            v256 = v17;
            v258 = v17;
          }

          else if (v57[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 32, v179, v180, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
            v258 = 0uLL;
          }

          v184 = v222;
          v35 = v216;
          if (v222)
          {
            v185 = 0;
            v186 = &v227.i8[32 * v220 + 2 * v221];
            v187 = v223;
            do
            {
              if (v187)
              {
                v188 = 0;
                v189 = &v218->i8[v219 * v185];
                do
                {
                  v189[v188] = v186[v188];
                  ++v188;
                  v187 = v223;
                }

                while (2 * v223 > v188);
                v184 = v222;
              }

              ++v185;
              v186 += 32;
            }

            while (v185 < v184);
          }

LABEL_30:
          v34 = v35;
        }

        while (v35 != (v208 >> 4) + 1);
        ++v20;
      }

      while (v20 != v190);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v168[14] = *MEMORY[0x29EDCA608];
  v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v146 = a8;
  v20 = a8 >> 4;
  v130 = a8 + a10 - 1;
  v21 = v130 >> 4;
  v149 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v143 = v26;
  result = a1;
  if (v20 <= v21)
  {
    v142 = a7 + a9 - 1;
    if (a7 >> 4 <= v142 >> 4)
    {
      v148 = (a5 - 1) >> 4;
      v129 = (a6 - 1) >> 4;
      v137 = (a5 - 1) & 0xF;
      v127 = ((a6 - 1) & 0xF) + 1;
      v128 = (a6 - 1) & 0xF;
      v136 = 4 * a11;
      v135 = 8 * a11;
      v134 = 12 * a11;
      v141 = a7;
      v125 = v21 + 1;
      v126 = a7 >> 4;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= v146)
        {
          v29 = v146;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v130 < v28)
        {
          v28 = v130;
        }

        v140 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v128;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v127;
        if (v20 != v129)
        {
          v34 = 16;
        }

        v147 = v34;
        if (v20 != v129)
        {
          v32 = v33;
        }

        v138 = v32;
        v145 = a2 + (v29 - v146) * a11;
        v35 = v126;
        do
        {
          v66 = 16 * v35;
          v67 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v68 = a7;
          }

          else
          {
            v68 = 16 * v35;
          }

          if (v142 < v67)
          {
            v67 = v142;
          }

          v69 = v67 - v68;
          v70 = v69 + 1;
          if (v35 == v148)
          {
            v71 = v137 + 1;
          }

          else
          {
            v71 = 16;
          }

          v72 = 1;
          if (16 * v20 >= v146 && v66 >= v141)
          {
            v73 = v69 != v137;
            if (v35 != v148)
            {
              v73 = v70 != 16;
            }

            v72 = v73 || v138;
          }

          v74 = *(result + 128) >> (*(result + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
          }

          v77 = *(result + 132) >> (*(result + 144) + a12);
          if (v77 <= 1)
          {
            v77 = 1;
          }

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
            if (!v76)
            {
LABEL_63:
              v85 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
            if (!(v79 | v76))
            {
              goto LABEL_63;
            }
          }

          v80 = 0;
          v81 = 0;
          v82 = v76 != 0;
          v83 = v79 != 0;
          v84 = 1;
          do
          {
            --v76;
            if (v82)
            {
              v81 |= (v84 & v35) << v80++;
            }

            else
            {
              v76 = 0;
            }

            --v79;
            if (v83)
            {
              v81 |= (v84 & v20) << v80++;
            }

            else
            {
              v79 = 0;
            }

            v84 *= 2;
            --v80;
            v83 = v79 != 0;
            v82 = v76 != 0;
          }

          while (v79 | v76);
          v85 = 8 * v81;
LABEL_64:
          v86 = (a3 + v20 * v131 + 384 * v35);
          v150 = v35 + 1;
          if (v143)
          {
            memcpy(__dst, v86, sizeof(__dst));
            result = v149;
            v86 = __dst;
          }

          v87 = (a4 + v85);
          v88 = a7;
          v89 = v145 + 2 * (v68 - a7);
          if (!(v72 & 1 | (v71 < 0x10u)) && v147 > 0xF)
          {
            v36 = *(*(result + 208) + 52);
            v37 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89, a11, v86, *v87, v36, v17, v18, v19)];
            v41 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + 16, a11, v37, v87[1], v36, v38, v39, v40);
            v45 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v136, a11, v41, v87[2], v36, v42, v43, v44);
            v49 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v136 + 16, a11, v45, v87[3], v36, v46, v47, v48);
            v53 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v135, a11, v49, v87[4], v36, v50, v51, v52);
            v57 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v135 + 16, a11, v53, v87[5], v36, v54, v55, v56);
            v61 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v134, a11, v57, v87[6], v36, v58, v59, v60);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v89 + v134 + 16, a11, v57 + v61, v87[7], v36, v62, v63, v64);
LABEL_29:
            a7 = v88;
            v65 = v150;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v86;
          v158 = v71;
          v159 = v147;
          v154 = v140;
          v155 = v68 - v66;
          block[6] = v87;
          v152 = v89;
          v153 = a11;
          v156 = v139;
          v157 = v70;
          if (v72)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v90 = *(*(result + 208) + 52);
          v91 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v161, 32, v86, *v87, v90, v17, v18, v19)];
          v95 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v162, 32, v91, v87[1], v90, v92, v93, v94);
          v99 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v163, 32, v95, v87[2], v90, v96, v97, v98);
          v103 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v164, 32, v99, v87[3], v90, v100, v101, v102);
          v107 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v165, 32, v103, v87[4], v90, v104, v105, v106);
          v111 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v166, 32, v107, v87[5], v90, v108, v109, v110);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v167, 32, v111, v87[6], v90, v112, v113, v114);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v168, 32, v111 + v115, v87[7], v90, v116, v117, v118);
          v119 = v156;
          a7 = v88;
          v65 = v150;
          if (v156)
          {
            v120 = 0;
            v121 = &v161[32 * v154 + 2 * v155];
            v122 = v157;
            do
            {
              if (v122)
              {
                v123 = 0;
                v124 = v152 + v153 * v120;
                do
                {
                  *(v124 + v123) = v121[v123];
                  ++v123;
                  v122 = v157;
                }

                while (2 * v157 > v123);
                v119 = v156;
              }

              ++v120;
              v121 += 32;
            }

            while (v120 < v119);
          }

LABEL_30:
          v35 = v65;
          result = v149;
        }

        while (v65 != (v142 >> 4) + 1);
        ++v20;
      }

      while (v20 != v125);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v168[14] = *MEMORY[0x29EDCA608];
  v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v146 = a8;
  v20 = a8 >> 4;
  v130 = a8 + a10 - 1;
  v21 = v130 >> 4;
  v149 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v143 = v26;
  result = a1;
  if (v20 <= v21)
  {
    v142 = a7 + a9 - 1;
    if (a7 >> 4 <= v142 >> 4)
    {
      v148 = (a5 - 1) >> 4;
      v129 = (a6 - 1) >> 4;
      v137 = (a5 - 1) & 0xF;
      v127 = ((a6 - 1) & 0xF) + 1;
      v128 = (a6 - 1) & 0xF;
      v136 = 4 * a11;
      v135 = 8 * a11;
      v134 = 12 * a11;
      v141 = a7;
      v125 = v21 + 1;
      v126 = a7 >> 4;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= v146)
        {
          v29 = v146;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v130 < v28)
        {
          v28 = v130;
        }

        v140 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v128;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v127;
        if (v20 != v129)
        {
          v34 = 16;
        }

        v147 = v34;
        if (v20 != v129)
        {
          v32 = v33;
        }

        v138 = v32;
        v145 = a2 + (v29 - v146) * a11;
        v35 = v126;
        do
        {
          v66 = 16 * v35;
          v67 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v68 = a7;
          }

          else
          {
            v68 = 16 * v35;
          }

          if (v142 < v67)
          {
            v67 = v142;
          }

          v69 = v67 - v68;
          v70 = v69 + 1;
          if (v35 == v148)
          {
            v71 = v137 + 1;
          }

          else
          {
            v71 = 16;
          }

          v72 = 1;
          if (16 * v20 >= v146 && v66 >= v141)
          {
            v73 = v69 != v137;
            if (v35 != v148)
            {
              v73 = v70 != 16;
            }

            v72 = v73 || v138;
          }

          v74 = *(result + 128) >> (*(result + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
          }

          v77 = *(result + 132) >> (*(result + 144) + a12);
          if (v77 <= 1)
          {
            v77 = 1;
          }

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
            if (!v76)
            {
LABEL_63:
              v85 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
            if (!(v79 | v76))
            {
              goto LABEL_63;
            }
          }

          v80 = 0;
          v81 = 0;
          v82 = v76 != 0;
          v83 = v79 != 0;
          v84 = 1;
          do
          {
            --v76;
            if (v82)
            {
              v81 |= (v84 & v35) << v80++;
            }

            else
            {
              v76 = 0;
            }

            --v79;
            if (v83)
            {
              v81 |= (v84 & v20) << v80++;
            }

            else
            {
              v79 = 0;
            }

            v84 *= 2;
            --v80;
            v83 = v79 != 0;
            v82 = v76 != 0;
          }

          while (v79 | v76);
          v85 = 8 * v81;
LABEL_64:
          v86 = (a3 + v20 * v131 + (v35 << 8));
          v150 = v35 + 1;
          if (v143)
          {
            memcpy(__dst, v86, sizeof(__dst));
            result = v149;
            v86 = __dst;
          }

          v87 = (a4 + v85);
          v88 = a7;
          v89 = v145 + 2 * (v68 - a7);
          if (!(v72 & 1 | (v71 < 0x10u)) && v147 > 0xF)
          {
            v36 = *(*(result + 208) + 52);
            v37 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89, a11, v86, *v87, v36, v17, v18, v19)];
            v41 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + 16, a11, v37, v87[1], v36, v38, v39, v40);
            v45 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v136, a11, v41, v87[2], v36, v42, v43, v44);
            v49 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v136 + 16, a11, v45, v87[3], v36, v46, v47, v48);
            v53 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v135, a11, v49, v87[4], v36, v50, v51, v52);
            v57 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v135 + 16, a11, v53, v87[5], v36, v54, v55, v56);
            v61 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v134, a11, v57, v87[6], v36, v58, v59, v60);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v89 + v134 + 16, a11, v57 + v61, v87[7], v36, v62, v63, v64);
LABEL_29:
            a7 = v88;
            v65 = v150;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v86;
          v158 = v71;
          v159 = v147;
          v154 = v140;
          v155 = v68 - v66;
          block[6] = v87;
          v152 = v89;
          v153 = a11;
          v156 = v139;
          v157 = v70;
          if (v72)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v90 = *(*(result + 208) + 52);
          v91 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v161, 32, v86, *v87, v90, v17, v18, v19)];
          v95 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v162, 32, v91, v87[1], v90, v92, v93, v94);
          v99 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v163, 32, v95, v87[2], v90, v96, v97, v98);
          v103 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v164, 32, v99, v87[3], v90, v100, v101, v102);
          v107 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v165, 32, v103, v87[4], v90, v104, v105, v106);
          v111 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v166, 32, v107, v87[5], v90, v108, v109, v110);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v167, 32, v111, v87[6], v90, v112, v113, v114);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v168, 32, v111 + v115, v87[7], v90, v116, v117, v118);
          v119 = v156;
          a7 = v88;
          v65 = v150;
          if (v156)
          {
            v120 = 0;
            v121 = &v161[32 * v154 + 2 * v155];
            v122 = v157;
            do
            {
              if (v122)
              {
                v123 = 0;
                v124 = v152 + v153 * v120;
                do
                {
                  *(v124 + v123) = v121[v123];
                  ++v123;
                  v122 = v157;
                }

                while (2 * v157 > v123);
                v119 = v156;
              }

              ++v120;
              v121 += 32;
            }

            while (v120 < v119);
          }

LABEL_30:
          v35 = v65;
          result = v149;
        }

        while (v65 != (v142 >> 4) + 1);
        ++v20;
      }

      while (v20 != v125);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v168[14] = *MEMORY[0x29EDCA608];
  v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v146 = a8;
  v20 = a8 >> 4;
  v130 = a8 + a10 - 1;
  v21 = v130 >> 4;
  v149 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v143 = v26;
  result = a1;
  if (v20 <= v21)
  {
    v142 = a7 + a9 - 1;
    if (a7 >> 4 <= v142 >> 4)
    {
      v148 = (a5 - 1) >> 4;
      v129 = (a6 - 1) >> 4;
      v137 = (a5 - 1) & 0xF;
      v127 = ((a6 - 1) & 0xF) + 1;
      v128 = (a6 - 1) & 0xF;
      v136 = 4 * a11;
      v135 = 8 * a11;
      v134 = 12 * a11;
      v141 = a7;
      v125 = v21 + 1;
      v126 = a7 >> 4;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= v146)
        {
          v29 = v146;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v130 < v28)
        {
          v28 = v130;
        }

        v140 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v128;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v127;
        if (v20 != v129)
        {
          v34 = 16;
        }

        v147 = v34;
        if (v20 != v129)
        {
          v32 = v33;
        }

        v138 = v32;
        v145 = a2 + (v29 - v146) * a11;
        v35 = v126;
        do
        {
          v66 = 16 * v35;
          v67 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v68 = a7;
          }

          else
          {
            v68 = 16 * v35;
          }

          if (v142 < v67)
          {
            v67 = v142;
          }

          v69 = v67 - v68;
          v70 = v69 + 1;
          if (v35 == v148)
          {
            v71 = v137 + 1;
          }

          else
          {
            v71 = 16;
          }

          v72 = 1;
          if (16 * v20 >= v146 && v66 >= v141)
          {
            v73 = v69 != v137;
            if (v35 != v148)
            {
              v73 = v70 != 16;
            }

            v72 = v73 || v138;
          }

          v74 = *(result + 128) >> (*(result + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
          }

          v77 = *(result + 132) >> (*(result + 144) + a12);
          if (v77 <= 1)
          {
            v77 = 1;
          }

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
            if (!v76)
            {
LABEL_63:
              v85 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
            if (!(v79 | v76))
            {
              goto LABEL_63;
            }
          }

          v80 = 0;
          v81 = 0;
          v82 = v76 != 0;
          v83 = v79 != 0;
          v84 = 1;
          do
          {
            --v76;
            if (v82)
            {
              v81 |= (v84 & v35) << v80++;
            }

            else
            {
              v76 = 0;
            }

            --v79;
            if (v83)
            {
              v81 |= (v84 & v20) << v80++;
            }

            else
            {
              v79 = 0;
            }

            v84 *= 2;
            --v80;
            v83 = v79 != 0;
            v82 = v76 != 0;
          }

          while (v79 | v76);
          v85 = 8 * v81;
LABEL_64:
          v86 = (a3 + v20 * v131 + (v35 << 8));
          v150 = v35 + 1;
          if (v143)
          {
            memcpy(__dst, v86, sizeof(__dst));
            result = v149;
            v86 = __dst;
          }

          v87 = (a4 + v85);
          v88 = a7;
          v89 = v145 + 2 * (v68 - a7);
          if (!(v72 & 1 | (v71 < 0x10u)) && v147 > 0xF)
          {
            v36 = *(*(result + 208) + 52);
            v37 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89, a11, v86, *v87, v36, v17, v18, v19)];
            v41 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + 16, a11, v37, v87[1], v36, v38, v39, v40);
            v45 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v136, a11, v41, v87[2], v36, v42, v43, v44);
            v49 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v136 + 16, a11, v45, v87[3], v36, v46, v47, v48);
            v53 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v135, a11, v49, v87[4], v36, v50, v51, v52);
            v57 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v135 + 16, a11, v53, v87[5], v36, v54, v55, v56);
            v61 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v134, a11, v57, v87[6], v36, v58, v59, v60);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v89 + v134 + 16, a11, v57 + v61, v87[7], v36, v62, v63, v64);
LABEL_29:
            a7 = v88;
            v65 = v150;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v86;
          v158 = v71;
          v159 = v147;
          v154 = v140;
          v155 = v68 - v66;
          block[6] = v87;
          v152 = v89;
          v153 = a11;
          v156 = v139;
          v157 = v70;
          if (v72)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v90 = *(*(result + 208) + 52);
          v91 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v161, 32, v86, *v87, v90, v17, v18, v19)];
          v95 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v162, 32, v91, v87[1], v90, v92, v93, v94);
          v99 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v163, 32, v95, v87[2], v90, v96, v97, v98);
          v103 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v164, 32, v99, v87[3], v90, v100, v101, v102);
          v107 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v165, 32, v103, v87[4], v90, v104, v105, v106);
          v111 = v107 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v166, 32, v107, v87[5], v90, v108, v109, v110);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v167, 32, v111, v87[6], v90, v112, v113, v114);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v168, 32, v111 + v115, v87[7], v90, v116, v117, v118);
          v119 = v156;
          a7 = v88;
          v65 = v150;
          if (v156)
          {
            v120 = 0;
            v121 = &v161[32 * v154 + 2 * v155];
            v122 = v157;
            do
            {
              if (v122)
              {
                v123 = 0;
                v124 = v152 + v153 * v120;
                do
                {
                  *(v124 + v123) = v121[v123];
                  ++v123;
                  v122 = v157;
                }

                while (2 * v157 > v123);
                v119 = v156;
              }

              ++v120;
              v121 += 32;
            }

            while (v120 < v119);
          }

LABEL_30:
          v35 = v65;
          result = v149;
        }

        while (v65 != (v142 >> 4) + 1);
        ++v20;
      }

      while (v20 != v125);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v116[28] = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = v94 + 4 * (v42 - a7);
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[64 * v102 + 4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v94 + 4 * (v42 - a7), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 32, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v85, a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v85 + 32, a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v84, a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v84 + 32, a11, v35, v61[5]));
            v37 = v62 + 12 * a11;
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 32, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v116[28] = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = v94 + 4 * (v42 - a7);
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(&v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[64 * v102 + 4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v94 + 4 * (v42 - a7), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 32, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v85, a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v85 + 32, a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v84, a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + v84 + 32, a11, v35, v61[5]));
            v37 = v62 + 12 * a11;
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 32, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 768 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 640 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + (v32 << 9));
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 896 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 640 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v123[28] = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + (v32 << 9));
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = v100 + 4 * (v44 - a7);
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + 32, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v91, a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v91 + 32, a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v90, a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v90 + 32, a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v89, a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v65 + v89 + 32, a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[64 * v109 + 4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = v107 + v108 * v75;
                do
                {
                  *(v79 + v78) = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v81 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v95 = a8;
  v16 = a8 >> 4;
  v80 = a8 + a10 - 1;
  v17 = v80 >> 4;
  if (*(v15 + 168))
  {
    v18 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 & 0xD00) == 0 || v18 == 768;
  v20 = v18 & 0xE00;
  v22 = !v19 && v20 != 1024;
  v92 = v22;
  if (v16 <= v17)
  {
    v91 = a7 + a9 - 1;
    if (a7 >> 4 <= v91 >> 4)
    {
      v97 = (a5 - 1) >> 4;
      v79 = (a6 - 1) >> 4;
      v86 = (a5 - 1) & 0xF;
      v77 = ((a6 - 1) & 0xF) + 1;
      v78 = (a6 - 1) & 0xF;
      v85 = 4 * a11;
      v84 = 8 * a11;
      v76 = v17 + 1;
      v90 = v15;
      do
      {
        v23 = (16 * v16) | 0xF;
        if (16 * v16 <= v95)
        {
          v24 = v95;
        }

        else
        {
          v24 = 16 * v16;
        }

        if (v80 < v23)
        {
          v23 = v80;
        }

        v89 = v24 - 16 * v16;
        v25 = v23 - v24;
        v26 = v25 + 1;
        v27 = v25 != v78;
        v88 = v26;
        v28 = v26 != 16;
        v29 = v77;
        if (v16 != v79)
        {
          v29 = 16;
        }

        v96 = v29;
        if (v16 != v79)
        {
          v27 = v28;
        }

        v87 = v27;
        v94 = a2 + (v24 - v95) * a11;
        v30 = a7 >> 4;
        do
        {
          v39 = 16 * v30;
          v40 = v30 + 1;
          v41 = 16 * (v30 + 1) - 1;
          if (16 * v30 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v30;
          }

          if (v91 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v30 == v97)
          {
            v45 = v86 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (16 * v16 >= v95 && v39 >= a7)
          {
            v47 = v43 != v86;
            if (v30 != v97)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v87;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 15;
          if (v52 < 0x20)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 4) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v30) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v16) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 8 * v55;
LABEL_63:
          v60 = (a3 + v16 * v81 + (v30 << 10));
          if (v92)
          {
            memcpy(__dst, v60, sizeof(__dst));
            v60 = __dst;
          }

          v61 = (a4 + v59);
          v62 = (v94 + 4 * (v42 - a7));
          if (v46 & 1 | (v45 < 0x10u) || v96 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v90;
            block[5] = v60;
            v106 = v45;
            v107 = v96;
            v102 = v89;
            v103 = v42 - v39;
            block[6] = v61;
            v100 = v94 + 4 * (v42 - a7);
            v101 = a11;
            v104 = v88;
            v105 = v44;
            if (v46)
            {
              dispatch_sync(*(*(v90 + 8) + 16552), block);
              v15 = v90;
            }

            else
            {
              v63 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v109, 64, v60, *v61));
              v64 = (v63 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v110, 64, v63, v61[1]));
              v65 = (v64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v111, 64, v64, v61[2]));
              v66 = (v65 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v112, 64, v65, v61[3]));
              v67 = (v66 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v113, 64, v66, v61[4]));
              v68 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v114, 64, v67, v61[5]));
              v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v115, 64, v68, v61[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v116, 64, (v68 + v69), v61[7]);
              v70 = v104;
              v15 = v90;
              if (v104)
              {
                v71 = 0;
                v72 = &v109[4 * v102].i8[4 * v103];
                v73 = v105;
                do
                {
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v100 + v101 * v71;
                    do
                    {
                      *(v75 + v74) = v72[v74];
                      ++v74;
                      v73 = v105;
                    }

                    while (4 * v105 > v74);
                    v70 = v104;
                  }

                  ++v71;
                  v72 += 64;
                }

                while (v71 < v70);
              }
            }
          }

          else
          {
            v31 = (v60 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v94 + 4 * (v42 - a7)), a11, v60, *v61));
            v32 = (v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v62 + 2, a11, v31, v61[1]));
            v33 = (v32 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85), a11, v32, v61[2]));
            v34 = (v33 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v85 + 32), a11, v33, v61[3]));
            v35 = (v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84), a11, v34, v61[4]));
            v36 = (v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock((v62 + v84 + 32), a11, v35, v61[5]));
            v37 = (v62 + 12 * a11);
            v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37, a11, v36, v61[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(v37 + 2, a11, (v36 + v38), v61[7]);
            v15 = v90;
          }

          v30 = v40;
        }

        while (v40 != (v91 >> 4) + 1);
        ++v16;
      }

      while (v16 != v76);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + (v32 << 9));
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 384 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v124 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v101 = a8;
  v17 = a8 >> 4;
  v85 = a8 + a10 - 1;
  v18 = v85 >> 4;
  v104 = a1;
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
  v98 = v23;
  result = a1;
  if (v17 <= v18)
  {
    v97 = a7 + a9 - 1;
    if (a7 >> 4 <= v97 >> 4)
    {
      v103 = (a5 - 1) >> 4;
      v84 = (a6 - 1) >> 4;
      v92 = (a5 - 1) & 0xF;
      v82 = ((a6 - 1) & 0xF) + 1;
      v83 = (a6 - 1) & 0xF;
      v91 = 4 * a11;
      v90 = 8 * a11;
      v89 = 12 * a11;
      v96 = a7;
      v80 = v18 + 1;
      v81 = a7 >> 4;
      do
      {
        v25 = (16 * v17) | 0xF;
        if (16 * v17 <= v101)
        {
          v26 = v101;
        }

        else
        {
          v26 = 16 * v17;
        }

        if (v85 < v25)
        {
          v25 = v85;
        }

        v95 = v26 - 16 * v17;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != v83;
        v94 = v28;
        v30 = v28 != 16;
        v31 = v82;
        if (v17 != v84)
        {
          v31 = 16;
        }

        v102 = v31;
        if (v17 != v84)
        {
          v29 = v30;
        }

        v93 = v29;
        v100 = a2 + (v26 - v101) * a11;
        v32 = v81;
        do
        {
          v42 = 16 * v32;
          v43 = 16 * (v32 + 1) - 1;
          if (16 * v32 <= a7)
          {
            v44 = a7;
          }

          else
          {
            v44 = 16 * v32;
          }

          if (v97 < v43)
          {
            v43 = v97;
          }

          v45 = v43 - v44;
          v46 = v45 + 1;
          if (v32 == v103)
          {
            v47 = v92 + 1;
          }

          else
          {
            v47 = 16;
          }

          v48 = 1;
          if (16 * v17 >= v101 && v42 >= v96)
          {
            v49 = v45 != v92;
            if (v32 != v103)
            {
              v49 = v46 != 16;
            }

            v48 = v49 || v93;
          }

          v50 = *(result + 128) >> (*(result + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
          }

          v53 = *(result + 132) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
            if (!v52)
            {
LABEL_63:
              v61 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
            if (!(v55 | v52))
            {
              goto LABEL_63;
            }
          }

          v56 = 0;
          v57 = 0;
          v58 = v52 != 0;
          v59 = v55 != 0;
          v60 = 1;
          do
          {
            --v52;
            if (v58)
            {
              v57 |= (v60 & v32) << v56++;
            }

            else
            {
              v52 = 0;
            }

            --v55;
            if (v59)
            {
              v57 |= (v60 & v17) << v56++;
            }

            else
            {
              v55 = 0;
            }

            v60 *= 2;
            --v56;
            v59 = v55 != 0;
            v58 = v52 != 0;
          }

          while (v55 | v52);
          v61 = 8 * v57;
LABEL_64:
          v62 = (a3 + v17 * v86 + 384 * v32);
          v105 = v32 + 1;
          if (v98)
          {
            memcpy(__dst, v62, sizeof(__dst));
            result = v104;
            v62 = __dst;
          }

          v63 = (a4 + v61);
          v64 = a7;
          v65 = (v100 + 4 * (v44 - a7));
          if (!(v48 & 1 | (v47 < 0x10u)) && v102 > 0xF)
          {
            v33 = *(*(result + 208) + 52);
            v34 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65, a11, v62, *v63, v33)];
            v35 = v34 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v65 + 2, a11, v34, v63[1], v33);
            v36 = v35 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91), a11, v35, v63[2], v33);
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v91 + 32), a11, v36, v63[3], v33);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90), a11, v37, v63[4], v33);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v90 + 32), a11, v38, v63[5], v33);
            v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89), a11, v39, v63[6], v33);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v65 + v89 + 32), a11, v39 + v40, v63[7], v33);
LABEL_29:
            a7 = v64;
            v41 = v105;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v62;
          v113 = v47;
          v114 = v102;
          v109 = v95;
          v110 = v44 - v42;
          block[6] = v63;
          v107 = v65;
          v108 = a11;
          v111 = v94;
          v112 = v46;
          if (v48)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v66 = *(*(result + 208) + 52);
          v67 = &v62[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v116, 64, v62, *v63, v66)];
          v68 = v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v117, 64, v67, v63[1], v66);
          v69 = v68 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v118, 64, v68, v63[2], v66);
          v70 = v69 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v119, 64, v69, v63[3], v66);
          v71 = v70 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v120, 64, v70, v63[4], v66);
          v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v121, 64, v71, v63[5], v66);
          v73 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v122, 64, v72, v63[6], v66);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v123, 64, v72 + v73, v63[7], v66);
          v74 = v111;
          a7 = v64;
          v41 = v105;
          if (v111)
          {
            v75 = 0;
            v76 = &v116[4 * v109].i8[4 * v110];
            v77 = v112;
            do
            {
              if (v77)
              {
                v78 = 0;
                v79 = &v107->i8[v108 * v75];
                do
                {
                  v79[v78] = v76[v78];
                  ++v78;
                  v77 = v112;
                }

                while (4 * v112 > v78);
                v74 = v111;
              }

              ++v75;
              v76 += 64;
            }

            while (v75 < v74);
          }

LABEL_30:
          v32 = v41;
          result = v104;
        }

        while (v41 != (v97 >> 4) + 1);
        ++v17;
      }

      while (v17 != v80);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v106 = v15;
  v17 = v16;
  v19 = v18;
  v101 = v20;
  v90 = v21;
  v91 = v22;
  v23 = v12;
  v125 = *MEMORY[0x29EDCA608];
  v89 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v103 = v14;
  v24 = v14 >> 4;
  v88 = v14 + a10 - 1;
  v25 = v88 >> 4;
  if (*(v23 + 168))
  {
    v26 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  v100 = v30;
  if (v24 <= v25)
  {
    v99 = v106 + a9 - 1;
    if (v106 >> 4 <= v99 >> 4)
    {
      v105 = (v19 - 1) >> 4;
      v87 = (v17 - 1) >> 4;
      v94 = (v19 - 1) & 0xF;
      v85 = ((v17 - 1) & 0xF) + 1;
      v86 = (v17 - 1) & 0xF;
      v93 = 4 * a11;
      v92 = 8 * a11;
      v84 = v25 + 1;
      v98 = v23;
      do
      {
        v31 = (16 * v24) | 0xF;
        if (16 * v24 <= v103)
        {
          v32 = v103;
        }

        else
        {
          v32 = 16 * v24;
        }

        if (v88 < v31)
        {
          v31 = v88;
        }

        v97 = v32 - 16 * v24;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v86;
        v96 = v34;
        v36 = v34 != 16;
        v37 = v85;
        if (v24 != v87)
        {
          v37 = 16;
        }

        v104 = v37;
        if (v24 != v87)
        {
          v35 = v36;
        }

        v95 = v35;
        v102 = v90 + (v32 - v103) * a11;
        v38 = v106 >> 4;
        do
        {
          v47 = 16 * v38;
          v48 = v38 + 1;
          v49 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= v106)
          {
            v50 = v106;
          }

          else
          {
            v50 = 16 * v38;
          }

          if (v99 < v49)
          {
            v49 = v106 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v38 == v105)
          {
            v53 = v94 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (16 * v24 >= v103 && v47 >= v106)
          {
            v55 = v51 != v94;
            if (v38 != v105)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v95;
          }

          v56 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v59 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_62:
              v67 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_62;
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
              v63 |= (v66 & v24) << v62++;
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
LABEL_63:
          v68 = (v91 + v24 * v89 + (v38 << 11));
          if (v100)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (v101 + v67);
          v70 = (v102 + 8 * (v50 - v106));
          if (v54 & 1 | (v53 < 0x10u) || v104 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v98;
            block[5] = v68;
            v114 = v53;
            v115 = v104;
            v110 = v97;
            v111 = v50 - v47;
            block[6] = v69;
            v108 = v102 + 8 * (v50 - v106);
            v109 = a11;
            v112 = v96;
            v113 = v52;
            if (v54)
            {
              dispatch_sync(*(*(v98 + 8) + 16552), block);
              v23 = v98;
            }

            else
            {
              v71 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v117, 128, v68, *v69)];
              v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v118, 128, v71, v69[1]);
              v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v119, 128, v72, v69[2]);
              v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v120, 128, v73, v69[3]);
              v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v121, 128, v74, v69[4]);
              v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v122, 128, v75, v69[5]);
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v123, 128, v76, v69[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v124, 128, v76 + v77, v69[7]);
              v78 = v112;
              v23 = v98;
              if (v112)
              {
                v79 = 0;
                v80 = &v117[8 * v110].i8[8 * v111];
                v81 = v113;
                do
                {
                  if (v81)
                  {
                    v82 = 0;
                    v83 = v108 + v109 * v79;
                    do
                    {
                      *(v83 + v82) = v80[v82];
                      ++v82;
                      v81 = v113;
                    }

                    while (8 * v113 > v82);
                    v78 = v112;
                  }

                  ++v79;
                  v80 += 128;
                }

                while (v79 < v78);
              }
            }
          }

          else
          {
            v39 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v102 + 8 * (v50 - v106)), a11, v68, *v69)];
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v70 + 4, a11, v39, v69[1]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93), a11, v40, v69[2]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93 + 64), a11, v41, v69[3]);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92), a11, v42, v69[4]);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92 + 64), a11, v43, v69[5]);
            v45 = (v70 + 12 * a11);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45, a11, v44, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v44 + v46, v69[7]);
            v23 = v98;
          }

          v38 = v48;
        }

        while (v48 != (v99 >> 4) + 1);
        ++v24;
      }

      while (v24 != v84);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v106 = v15;
  v17 = v16;
  v19 = v18;
  v101 = v20;
  v90 = v21;
  v91 = v22;
  v23 = v12;
  v125 = *MEMORY[0x29EDCA608];
  v89 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v103 = v14;
  v24 = v14 >> 4;
  v88 = v14 + a10 - 1;
  v25 = v88 >> 4;
  if (*(v23 + 168))
  {
    v26 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  v100 = v30;
  if (v24 <= v25)
  {
    v99 = v106 + a9 - 1;
    if (v106 >> 4 <= v99 >> 4)
    {
      v105 = (v19 - 1) >> 4;
      v87 = (v17 - 1) >> 4;
      v94 = (v19 - 1) & 0xF;
      v85 = ((v17 - 1) & 0xF) + 1;
      v86 = (v17 - 1) & 0xF;
      v93 = 4 * a11;
      v92 = 8 * a11;
      v84 = v25 + 1;
      v98 = v23;
      do
      {
        v31 = (16 * v24) | 0xF;
        if (16 * v24 <= v103)
        {
          v32 = v103;
        }

        else
        {
          v32 = 16 * v24;
        }

        if (v88 < v31)
        {
          v31 = v88;
        }

        v97 = v32 - 16 * v24;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v86;
        v96 = v34;
        v36 = v34 != 16;
        v37 = v85;
        if (v24 != v87)
        {
          v37 = 16;
        }

        v104 = v37;
        if (v24 != v87)
        {
          v35 = v36;
        }

        v95 = v35;
        v102 = v90 + (v32 - v103) * a11;
        v38 = v106 >> 4;
        do
        {
          v47 = 16 * v38;
          v48 = v38 + 1;
          v49 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= v106)
          {
            v50 = v106;
          }

          else
          {
            v50 = 16 * v38;
          }

          if (v99 < v49)
          {
            v49 = v106 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v38 == v105)
          {
            v53 = v94 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (16 * v24 >= v103 && v47 >= v106)
          {
            v55 = v51 != v94;
            if (v38 != v105)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v95;
          }

          v56 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v59 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_62:
              v67 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_62;
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
              v63 |= (v66 & v24) << v62++;
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
LABEL_63:
          v68 = (v91 + v24 * v89 + (v38 << 11));
          if (v100)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (v101 + v67);
          v70 = (v102 + 8 * (v50 - v106));
          if (v54 & 1 | (v53 < 0x10u) || v104 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v98;
            block[5] = v68;
            v114 = v53;
            v115 = v104;
            v110 = v97;
            v111 = v50 - v47;
            block[6] = v69;
            v108 = v102 + 8 * (v50 - v106);
            v109 = a11;
            v112 = v96;
            v113 = v52;
            if (v54)
            {
              dispatch_sync(*(*(v98 + 8) + 16552), block);
              v23 = v98;
            }

            else
            {
              v71 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v117, 128, v68, *v69)];
              v72 = v71 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v118, 128, v71, v69[1]);
              v73 = v72 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v119, 128, v72, v69[2]);
              v74 = v73 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v120, 128, v73, v69[3]);
              v75 = v74 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v121, 128, v74, v69[4]);
              v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v122, 128, v75, v69[5]);
              v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v123, 128, v76, v69[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v124, 128, v76 + v77, v69[7]);
              v78 = v112;
              v23 = v98;
              if (v112)
              {
                v79 = 0;
                v80 = &v117[8 * v110].i8[8 * v111];
                v81 = v113;
                do
                {
                  if (v81)
                  {
                    v82 = 0;
                    v83 = v108 + v109 * v79;
                    do
                    {
                      *(v83 + v82) = v80[v82];
                      ++v82;
                      v81 = v113;
                    }

                    while (8 * v113 > v82);
                    v78 = v112;
                  }

                  ++v79;
                  v80 += 128;
                }

                while (v79 < v78);
              }
            }
          }

          else
          {
            v39 = &v68[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v102 + 8 * (v50 - v106)), a11, v68, *v69)];
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v70 + 4, a11, v39, v69[1]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93), a11, v40, v69[2]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v93 + 64), a11, v41, v69[3]);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92), a11, v42, v69[4]);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v70 + v92 + 64), a11, v43, v69[5]);
            v45 = (v70 + 12 * a11);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45, a11, v44, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v44 + v46, v69[7]);
            v23 = v98;
          }

          v38 = v48;
        }

        while (v48 != (v99 >> 4) + 1);
        ++v24;
      }

      while (v24 != v84);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v132 = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

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
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
LABEL_64:
          v70 = (v96 + v25 * v94 + (v40 << 10));
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = (v108 + 8 * (v52 - v16));
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v73 + 4, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v99), a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v99 + 64), a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v98), a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v98 + 64), a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v97), a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v73 + v97 + 64), a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[8 * v117] + 8 * v118;
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  v87[v86] = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v132 = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

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
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
LABEL_64:
          v70 = (v96 + v25 * v94 + 768 * v40);
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = (v108 + 8 * (v52 - v16));
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v73 + 4, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v99), a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v99 + 64), a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v98), a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v98 + 64), a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v97), a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v73 + v97 + 64), a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[8 * v117] + 8 * v118;
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  v87[v86] = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v107 = v21;
  v95 = v22;
  v96 = v23;
  v24 = v12;
  v132 = *MEMORY[0x29EDCA608];
  v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v109 = v14;
  v25 = v14 >> 4;
  v93 = v14 + a10 - 1;
  v26 = v93 >> 4;
  v112 = v24;
  if (*(v24 + 168))
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
  v106 = v31;
  result = v24;
  if (v25 <= v26)
  {
    v105 = v16 + a9 - 1;
    if (v16 >> 4 <= v105 >> 4)
    {
      v111 = (v20 - 1) >> 4;
      v92 = (v18 - 1) >> 4;
      v100 = (v20 - 1) & 0xF;
      v90 = ((v18 - 1) & 0xF) + 1;
      v91 = (v18 - 1) & 0xF;
      v99 = 4 * a11;
      v98 = 8 * a11;
      v97 = 12 * a11;
      v104 = v16;
      v88 = v26 + 1;
      v89 = v16 >> 4;
      do
      {
        v33 = (16 * v25) | 0xF;
        if (16 * v25 <= v109)
        {
          v34 = v109;
        }

        else
        {
          v34 = 16 * v25;
        }

        if (v93 < v33)
        {
          v33 = v93;
        }

        v103 = v34 - 16 * v25;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v91;
        v102 = v36;
        v38 = v36 != 16;
        v39 = v90;
        if (v25 != v92)
        {
          v39 = 16;
        }

        v110 = v39;
        if (v25 != v92)
        {
          v37 = v38;
        }

        v101 = v37;
        v108 = v95 + (v34 - v109) * a11;
        v40 = v89;
        do
        {
          v50 = 16 * v40;
          v51 = 16 * (v40 + 1) - 1;
          if (16 * v40 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 16 * v40;
          }

          if (v105 < v51)
          {
            v51 = v105;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v40 == v111)
          {
            v55 = v100 + 1;
          }

          else
          {
            v55 = 16;
          }

          v56 = 1;
          if (16 * v25 >= v109 && v50 >= v104)
          {
            v57 = v53 != v100;
            if (v40 != v111)
            {
              v57 = v54 != 16;
            }

            v56 = v57 || v101;
          }

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
LABEL_63:
              v69 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_63;
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
              v65 |= (v68 & v40) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v25) << v64++;
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
LABEL_64:
          v70 = (v96 + v25 * v94 + 768 * v40);
          v113 = v40 + 1;
          if (v106)
          {
            memcpy(__dst, v70, sizeof(__dst));
            result = v112;
            v70 = __dst;
          }

          v71 = (v107 + v69);
          v72 = v16;
          v73 = (v108 + 8 * (v52 - v16));
          if (!(v56 & 1 | (v55 < 0x10u)) && v110 > 0xF)
          {
            v41 = *(*(result + 208) + 52);
            v42 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73, a11, v70, *v71, v41)];
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v73 + 4, a11, v42, v71[1], v41);
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v99), a11, v43, v71[2], v41);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v99 + 64), a11, v44, v71[3], v41);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v98), a11, v45, v71[4], v41);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v98 + 64), a11, v46, v71[5], v41);
            v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v97), a11, v47, v71[6], v41);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v73 + v97 + 64), a11, v47 + v48, v71[7], v41);
LABEL_29:
            v16 = v72;
            v49 = v113;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v70;
          v121 = v55;
          v122 = v110;
          v117 = v103;
          v118 = v52 - v50;
          block[6] = v71;
          v115 = v73;
          v116 = a11;
          v119 = v102;
          v120 = v54;
          if (v56)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v74 = *(*(result + 208) + 52);
          v75 = &v70[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v124, 128, v70, *v71, v74)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v125, 128, v75, v71[1], v74);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v126, 128, v76, v71[2], v74);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v127, 128, v77, v71[3], v74);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v128, 128, v78, v71[4], v74);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v129, 128, v79, v71[5], v74);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v130, 128, v80, v71[6], v74);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v131, 128, v80 + v81, v71[7], v74);
          v82 = v119;
          v16 = v72;
          v49 = v113;
          if (v119)
          {
            v83 = 0;
            v84 = &v124[8 * v117] + 8 * v118;
            v85 = v120;
            do
            {
              if (v85)
              {
                v86 = 0;
                v87 = v115 + v116 * v83;
                do
                {
                  v87[v86] = v84[v86];
                  ++v86;
                  v85 = v120;
                }

                while (8 * v120 > v86);
                v82 = v119;
              }

              ++v83;
              v84 += 128;
            }

            while (v83 < v82);
          }

LABEL_30:
          v40 = v49;
          result = v112;
        }

        while (v49 != (v105 >> 4) + 1);
        ++v25;
      }

      while (v25 != v88);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v16 = a1;
  v244 = *MEMORY[0x29EDCA608];
  v181 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v197 = a8;
  v21 = a8 >> 4;
  v180 = a8 + a10 - 1;
  v22 = v180 >> 4;
  if (*(v16 + 168))
  {
    v23 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 & 0xD00) == 0 || v23 == 768;
  v25 = v23 & 0xE00;
  v27 = !v24 && v25 != 1024;
  v194 = v27;
  if (v21 <= v22)
  {
    v193 = a7 + a9 - 1;
    if (a7 >> 4 <= v193 >> 4)
    {
      v200 = (a5 - 1) >> 4;
      v179 = (a6 - 1) >> 4;
      v187 = (a5 - 1) & 0xF;
      v177 = ((a6 - 1) & 0xF) + 1;
      v178 = (a6 - 1) & 0xF;
      v186 = 4 * a11;
      v185 = 8 * a11;
      v191 = a7;
      v175 = v22 + 1;
      v176 = a7 >> 4;
      v198 = v16;
      v192 = a7;
      v184 = 2 * a11;
      do
      {
        v28 = (16 * v21) | 0xF;
        if (16 * v21 <= v197)
        {
          v29 = v197;
        }

        else
        {
          v29 = 16 * v21;
        }

        if (v180 < v28)
        {
          v28 = v180;
        }

        v190 = v29 - 16 * v21;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v189 = v31;
        v33 = v31 != 16;
        v34 = v177;
        if (v21 != v179)
        {
          v34 = 16;
        }

        v199 = v34;
        if (v21 != v179)
        {
          v32 = v33;
        }

        v188 = v32;
        v196 = a2 + (v29 - v197) * a11;
        v35 = v176;
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

          if (v193 < v38)
          {
            v38 = v193;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v200)
          {
            v42 = v187 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (16 * v21 >= v197 && v37 >= v191)
          {
            v44 = v40 != v187;
            if (v35 != v200)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v188;
          }

          v45 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
          }

          v48 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
            if (!v47)
            {
LABEL_63:
              v56 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
            if (!(v50 | v47))
            {
              goto LABEL_63;
            }
          }

          v51 = 0;
          v52 = 0;
          v53 = v47 != 0;
          v54 = v50 != 0;
          v55 = 1;
          do
          {
            --v47;
            if (v53)
            {
              v52 |= (v55 & v35) << v51++;
            }

            else
            {
              v47 = 0;
            }

            --v50;
            if (v54)
            {
              v52 |= (v55 & v21) << v51++;
            }

            else
            {
              v50 = 0;
            }

            v55 *= 2;
            --v51;
            v54 = v50 != 0;
            v53 = v47 != 0;
          }

          while (v50 | v47);
          v56 = 8 * v52;
LABEL_64:
          v57 = (a3 + v21 * v181 + (v35 << 9));
          v201 = v35 + 1;
          if (v194)
          {
            memcpy(__dst, v57, sizeof(__dst));
            v57 = __dst;
          }

          v58 = (a4 + v56);
          v59 = (v196 + 2 * (v39 - a7));
          if (!(v43 & 1 | (v42 < 0x10u)) && v199 > 0xF)
          {
            v60 = *v58;
            if (v60 == 63)
            {
              v69 = *v57;
              v18 = v57[1];
              v19 = v57[2];
              v20 = v57[3];
              *v59 = vuzp1q_s32(*v57, v19);
              *(v59 + a11) = vuzp2q_s32(v69, v19);
              v62 = 3 * a11;
              v61 = 2 * a11;
              v70 = (v59 + v184);
              *v70 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v70 + a11) = v17;
              v63 = 64;
            }

            else
            {
              v61 = 2 * a11;
              if (v60 == 1)
              {
                v17 = vld1q_dup_s16(v57->i16);
                *v59 = v17;
                *(v59 + a11) = v17;
                *(v59 + 2 * a11) = v17;
                v62 = 3 * a11;
                *(v59 + 3 * a11) = v17;
                v63 = 2;
              }

              else
              {
                v62 = 3 * a11;
                if (*v58)
                {
                  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v59, a11, v57, v60, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
                }

                else
                {
                  v63 = 0;
                  v59->i64[0] = 0;
                  v59->i64[1] = 0;
                  v64 = (v59->i64 + a11);
                  *v64 = 0;
                  v64[1] = 0;
                  v65 = (v59->i64 + v184);
                  *v65 = 0;
                  v65[1] = 0;
                  v66 = (v59->i64 + 3 * a11);
                  *v66 = 0;
                  v66[1] = 0;
                }
              }
            }

            v71 = v57->i64 + v63;
            v72 = v59 + 1;
            v73 = v58[1];
            if (v73 == 63)
            {
              v78 = *v71;
              v18 = *(v71 + 16);
              v19 = *(v71 + 32);
              v20 = *(v71 + 48);
              *v72 = vuzp1q_s32(*v71, v19);
              *(v72 + a11) = vuzp2q_s32(v78, v19);
              v79 = (v72 + v61);
              *v79 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v79 + a11) = v17;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v17 = vld1q_dup_s16(v71);
              *v72 = v17;
              *(v72 + a11) = v17;
              *(v72 + v61) = v17;
              *(v72 + v62) = v17;
              v74 = 2;
            }

            else if (v58[1])
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v71, v73, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v74 = 0;
              v72->i64[0] = 0;
              v59[1].i64[1] = 0;
              v75 = (v72->i64 + a11);
              *v75 = 0;
              v75[1] = 0;
              v76 = (v72->i64 + v61);
              *v76 = 0;
              v76[1] = 0;
              v77 = (v72->i64 + v62);
              *v77 = 0;
              v77[1] = 0;
            }

            v80 = v71 + v74;
            v81 = (v59 + v186);
            v82 = v58[2];
            if (v82 == 63)
            {
              v87 = *v80;
              v18 = *(v80 + 16);
              v19 = *(v80 + 32);
              v20 = *(v80 + 48);
              *v81 = vuzp1q_s32(*v80, v19);
              *(v81 + a11) = vuzp2q_s32(v87, v19);
              v88 = (v81 + v61);
              *v88 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v88 + a11) = v17;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v17 = vld1q_dup_s16(v80);
              *v81 = v17;
              *(v81 + a11) = v17;
              *(v81 + v61) = v17;
              *(v81 + v62) = v17;
              v83 = 2;
            }

            else if (v58[2])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v59 + v186), a11, v80, v82, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v83 = 0;
              v81->i64[0] = 0;
              v81->i64[1] = 0;
              v84 = (v81->i64 + a11);
              *v84 = 0;
              v84[1] = 0;
              v85 = (v81->i64 + v61);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v81->i64 + v62);
              *v86 = 0;
              v86[1] = 0;
            }

            v89 = v80 + v83;
            v90 = v81 + 1;
            v91 = v58[3];
            if (v91 == 63)
            {
              v96 = *v89;
              v18 = *(v89 + 16);
              v19 = *(v89 + 32);
              v20 = *(v89 + 48);
              *v90 = vuzp1q_s32(*v89, v19);
              *(v90 + a11) = vuzp2q_s32(v96, v19);
              v97 = (v90 + v61);
              *v97 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v97 + a11) = v17;
              v92 = 64;
            }

            else if (v91 == 1)
            {
              v17 = vld1q_dup_s16(v89);
              *v90 = v17;
              *(v90 + a11) = v17;
              *(v90 + v61) = v17;
              *(v90 + v62) = v17;
              v92 = 2;
            }

            else if (v58[3])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v90, a11, v89, v91, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v92 = 0;
              v90->i64[0] = 0;
              v81[1].i64[1] = 0;
              v93 = (v90->i64 + a11);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v90->i64 + v61);
              *v94 = 0;
              v94[1] = 0;
              v95 = (v90->i64 + v62);
              *v95 = 0;
              v95[1] = 0;
            }

            v98 = v89 + v92;
            v99 = (v59 + v185);
            v100 = v58[4];
            if (v100 == 63)
            {
              v105 = *v98;
              v18 = *(v98 + 16);
              v19 = *(v98 + 32);
              v20 = *(v98 + 48);
              *v99 = vuzp1q_s32(*v98, v19);
              *(v99 + a11) = vuzp2q_s32(v105, v19);
              v106 = (v99 + v61);
              *v106 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v106 + a11) = v17;
              v101 = 64;
            }

            else if (v100 == 1)
            {
              v17 = vld1q_dup_s16(v98);
              *v99 = v17;
              *(v99 + a11) = v17;
              *(v99 + v61) = v17;
              *(v99 + v62) = v17;
              v101 = 2;
            }

            else if (v58[4])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v59 + v185), a11, v98, v100, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v101 = 0;
              v99->i64[0] = 0;
              v99->i64[1] = 0;
              v102 = (v99->i64 + a11);
              *v102 = 0;
              v102[1] = 0;
              v103 = (v99->i64 + v61);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v99->i64 + v62);
              *v104 = 0;
              v104[1] = 0;
            }

            v107 = v98 + v101;
            v108 = v99 + 1;
            v109 = v58[5];
            if (v109 == 63)
            {
              v114 = *v107;
              v18 = *(v107 + 16);
              v19 = *(v107 + 32);
              v20 = *(v107 + 48);
              *v108 = vuzp1q_s32(*v107, v19);
              *(v108 + a11) = vuzp2q_s32(v114, v19);
              v115 = (v108 + v61);
              *v115 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v115 + a11) = v17;
              v110 = 64;
              v16 = v198;
            }

            else
            {
              v16 = v198;
              if (v109 == 1)
              {
                v17 = vld1q_dup_s16(v107);
                *v108 = v17;
                *(v108 + a11) = v17;
                *(v108 + v61) = v17;
                *(v108 + v62) = v17;
                v110 = 2;
              }

              else if (v58[5])
              {
                v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, a11, v107, v109, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
              }

              else
              {
                v110 = 0;
                v108->i64[0] = 0;
                v108->i64[1] = 0;
                v111 = (v108->i64 + a11);
                *v111 = 0;
                v111[1] = 0;
                v112 = (v108->i64 + v61);
                *v112 = 0;
                v112[1] = 0;
                v113 = (v108->i64 + v62);
                *v113 = 0;
                v113[1] = 0;
              }
            }

            v116 = v107 + v110;
            v117 = (v59 + 12 * a11);
            v118 = v58[6];
            if (v118 == 63)
            {
              v123 = *v116;
              v18 = *(v116 + 16);
              v19 = *(v116 + 32);
              v20 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v19);
              *(v117 + a11) = vuzp2q_s32(v123, v19);
              v124 = (v117 + v61);
              *v124 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v124 + a11) = v17;
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v17 = vld1q_dup_s16(v116);
              *v117 = v17;
              *(v117 + a11) = v17;
              *(v117 + v61) = v17;
              *(v117 + v62) = v17;
              v119 = 2;
            }

            else if (v58[6])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v117->i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v61);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v62);
              *v122 = 0;
              v122[1] = 0;
            }

            v125 = v116 + v119;
            v126 = v117 + 1;
            v127 = v58[7];
            if (v127 == 63)
            {
              v131 = *v125;
              v18 = *(v125 + 16);
              v19 = *(v125 + 32);
              v20 = *(v125 + 48);
              *v126 = vuzp1q_s32(*v125, v19);
              *(v126 + a11) = vuzp2q_s32(v131, v19);
              v132 = (v126 + v61);
              *v132 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v132 + a11) = v17;
              a7 = v192;
            }

            else
            {
              a7 = v192;
              if (v127 == 1)
              {
                v17 = vld1q_dup_s16(v125);
                *v126 = v17;
                *(v126 + a11) = v17;
                *(v126 + v61) = v17;
                *(v126 + v62) = v17;
              }

              else if (v58[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
              }

              else
              {
                v126->i64[0] = 0;
                v126->i64[1] = 0;
                v128 = (v126->i64 + a11);
                *v128 = 0;
                v128[1] = 0;
                v129 = (v126->i64 + v61);
                *v129 = 0;
                v129[1] = 0;
                v130 = (v126->i64 + v62);
                *v130 = 0;
                v130[1] = 0;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v198;
          block[5] = v57;
          v209 = v42;
          v210 = v199;
          v205 = v190;
          v206 = v39 - v37;
          block[6] = v58;
          v203 = v59;
          v204 = a11;
          v207 = v189;
          v208 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v198 + 8) + 16552), block);
            a7 = v192;
            v16 = v198;
LABEL_29:
            v36 = v201;
            goto LABEL_30;
          }

          v67 = *v58;
          a7 = v192;
          if (v67 == 63)
          {
            v133 = v57[1];
            v19 = v57[2];
            v20 = v57[3];
            v134 = vuzp2q_s32(*v57, v19);
            v212 = vuzp1q_s32(*v57, v19);
            v214 = v134;
            v17 = vuzp1q_s32(v133, v20);
            v18 = vuzp2q_s32(v133, v20);
            v216 = v17;
            v218 = v18;
            v68 = 64;
          }

          else if (v67 == 1)
          {
            v17 = vld1q_dup_s16(v57->i16);
            v212 = v17;
            v214 = v17;
            v216 = v17;
            v218 = v17;
            v68 = 2;
          }

          else if (*v58)
          {
            v68 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v57, v67, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v68 = 0;
            v212 = 0uLL;
            v214 = 0uLL;
            v216 = 0uLL;
            v218 = 0uLL;
          }

          v135 = v57->i64 + v68;
          v136 = v58[1];
          if (v136 == 63)
          {
            v138 = *(v135 + 16);
            v19 = *(v135 + 32);
            v20 = *(v135 + 48);
            v139 = vuzp2q_s32(*v135, v19);
            v213 = vuzp1q_s32(*v135, v19);
            v215 = v139;
            v17 = vuzp1q_s32(v138, v20);
            v18 = vuzp2q_s32(v138, v20);
            v217 = v17;
            v219 = v18;
            v137 = 64;
            v16 = v198;
          }

          else
          {
            v16 = v198;
            if (v136 == 1)
            {
              v17 = vld1q_dup_s16(v135);
              v213 = v17;
              v215 = v17;
              v217 = v17;
              v219 = v17;
              v137 = 2;
            }

            else if (v58[1])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v135, v136, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v137 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
              v217 = 0uLL;
              v219 = 0uLL;
            }
          }

          v140 = v135 + v137;
          v141 = v58[2];
          if (v141 == 63)
          {
            v143 = *(v140 + 16);
            v19 = *(v140 + 32);
            v20 = *(v140 + 48);
            v144 = vuzp2q_s32(*v140, v19);
            v220 = vuzp1q_s32(*v140, v19);
            v222 = v144;
            v17 = vuzp1q_s32(v143, v20);
            v18 = vuzp2q_s32(v143, v20);
            v224 = v17;
            v226 = v18;
            v142 = 64;
          }

          else if (v141 == 1)
          {
            v17 = vld1q_dup_s16(v140);
            v220 = v17;
            v222 = v17;
            v224 = v17;
            v226 = v17;
            v142 = 2;
          }

          else if (v58[2])
          {
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v140, v141, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v142 = 0;
            v220 = 0uLL;
            v222 = 0uLL;
            v224 = 0uLL;
            v226 = 0uLL;
          }

          v145 = v140 + v142;
          v146 = v58[3];
          if (v146 == 63)
          {
            v148 = *(v145 + 16);
            v19 = *(v145 + 32);
            v20 = *(v145 + 48);
            v149 = vuzp2q_s32(*v145, v19);
            v221 = vuzp1q_s32(*v145, v19);
            v223 = v149;
            v17 = vuzp1q_s32(v148, v20);
            v18 = vuzp2q_s32(v148, v20);
            v225 = v17;
            v227 = v18;
            v147 = 64;
          }

          else if (v146 == 1)
          {
            v17 = vld1q_dup_s16(v145);
            v221 = v17;
            v223 = v17;
            v225 = v17;
            v227 = v17;
            v147 = 2;
          }

          else if (v58[3])
          {
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v145, v146, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v147 = 0;
            v221 = 0uLL;
            v223 = 0uLL;
            v225 = 0uLL;
            v227 = 0uLL;
          }

          v150 = v145 + v147;
          v151 = v58[4];
          if (v151 == 63)
          {
            v153 = *(v150 + 16);
            v19 = *(v150 + 32);
            v20 = *(v150 + 48);
            v154 = vuzp2q_s32(*v150, v19);
            v228 = vuzp1q_s32(*v150, v19);
            v230 = v154;
            v17 = vuzp1q_s32(v153, v20);
            v18 = vuzp2q_s32(v153, v20);
            v232 = v17;
            v234 = v18;
            v152 = 64;
          }

          else if (v151 == 1)
          {
            v17 = vld1q_dup_s16(v150);
            v228 = v17;
            v230 = v17;
            v232 = v17;
            v234 = v17;
            v152 = 2;
          }

          else if (v58[4])
          {
            v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v150, v151, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v152 = 0;
            v228 = 0uLL;
            v230 = 0uLL;
            v232 = 0uLL;
            v234 = 0uLL;
          }

          v155 = v150 + v152;
          v156 = v58[5];
          if (v156 == 63)
          {
            v158 = *(v155 + 16);
            v19 = *(v155 + 32);
            v20 = *(v155 + 48);
            v159 = vuzp2q_s32(*v155, v19);
            v229 = vuzp1q_s32(*v155, v19);
            v231 = v159;
            v17 = vuzp1q_s32(v158, v20);
            v18 = vuzp2q_s32(v158, v20);
            v233 = v17;
            v235 = v18;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v17 = vld1q_dup_s16(v155);
            v229 = v17;
            v231 = v17;
            v233 = v17;
            v235 = v17;
            v157 = 2;
          }

          else if (v58[5])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v155, v156, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v157 = 0;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
            v235 = 0uLL;
          }

          v160 = v155 + v157;
          v161 = v58[6];
          if (v161 == 63)
          {
            v163 = *(v160 + 16);
            v19 = *(v160 + 32);
            v20 = *(v160 + 48);
            v164 = vuzp2q_s32(*v160, v19);
            v236 = vuzp1q_s32(*v160, v19);
            v238 = v164;
            v17 = vuzp1q_s32(v163, v20);
            v18 = vuzp2q_s32(v163, v20);
            v240 = v17;
            v242 = v18;
            v162 = 64;
          }

          else if (v161 == 1)
          {
            v17 = vld1q_dup_s16(v160);
            v236 = v17;
            v238 = v17;
            v240 = v17;
            v242 = v17;
            v162 = 2;
          }

          else if (v58[6])
          {
            v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 32, v160, v161, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v162 = 0;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
          }

          v165 = v160 + v162;
          v166 = v58[7];
          if (v166 == 63)
          {
            v167 = *(v165 + 16);
            v19 = *(v165 + 32);
            v20 = *(v165 + 48);
            v168 = vuzp2q_s32(*v165, v19);
            v237 = vuzp1q_s32(*v165, v19);
            v239 = v168;
            v17 = vuzp1q_s32(v167, v20);
            v18 = vuzp2q_s32(v167, v20);
            v241 = v17;
            v243 = v18;
          }

          else if (v166 == 1)
          {
            v17 = vld1q_dup_s16(v165);
            v237 = v17;
            v239 = v17;
            v241 = v17;
            v243 = v17;
          }

          else if (v58[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v165, v166, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
            v243 = 0uLL;
          }

          v169 = v207;
          v36 = v201;
          if (v207)
          {
            v170 = 0;
            v171 = &v212.i8[32 * v205 + 2 * v206];
            v172 = v208;
            do
            {
              if (v172)
              {
                v173 = 0;
                v174 = &v203->i8[v204 * v170];
                do
                {
                  v174[v173] = v171[v173];
                  ++v173;
                  v172 = v208;
                }

                while (2 * v208 > v173);
                v169 = v207;
              }

              ++v170;
              v171 += 32;
            }

            while (v170 < v169);
          }

LABEL_30:
          v35 = v36;
        }

        while (v36 != (v193 >> 4) + 1);
        ++v21;
      }

      while (v21 != v175);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v16 = a1;
  v244 = *MEMORY[0x29EDCA608];
  v181 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v197 = a8;
  v21 = a8 >> 4;
  v180 = a8 + a10 - 1;
  v22 = v180 >> 4;
  if (*(v16 + 168))
  {
    v23 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 & 0xD00) == 0 || v23 == 768;
  v25 = v23 & 0xE00;
  v27 = !v24 && v25 != 1024;
  v194 = v27;
  if (v21 <= v22)
  {
    v193 = a7 + a9 - 1;
    if (a7 >> 4 <= v193 >> 4)
    {
      v200 = (a5 - 1) >> 4;
      v179 = (a6 - 1) >> 4;
      v187 = (a5 - 1) & 0xF;
      v177 = ((a6 - 1) & 0xF) + 1;
      v178 = (a6 - 1) & 0xF;
      v186 = 4 * a11;
      v185 = 8 * a11;
      v191 = a7;
      v175 = v22 + 1;
      v176 = a7 >> 4;
      v198 = v16;
      v192 = a7;
      v184 = 2 * a11;
      do
      {
        v28 = (16 * v21) | 0xF;
        if (16 * v21 <= v197)
        {
          v29 = v197;
        }

        else
        {
          v29 = 16 * v21;
        }

        if (v180 < v28)
        {
          v28 = v180;
        }

        v190 = v29 - 16 * v21;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v189 = v31;
        v33 = v31 != 16;
        v34 = v177;
        if (v21 != v179)
        {
          v34 = 16;
        }

        v199 = v34;
        if (v21 != v179)
        {
          v32 = v33;
        }

        v188 = v32;
        v196 = a2 + (v29 - v197) * a11;
        v35 = v176;
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

          if (v193 < v38)
          {
            v38 = v193;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v200)
          {
            v42 = v187 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (16 * v21 >= v197 && v37 >= v191)
          {
            v44 = v40 != v187;
            if (v35 != v200)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v188;
          }

          v45 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 15;
          if (v46 < 0x20)
          {
            v47 = 0;
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 4) - 1)));
          }

          v48 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 15;
          if (v49 < 0x20)
          {
            v50 = 0;
            if (!v47)
            {
LABEL_63:
              v56 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 4) - 1)));
            if (!(v50 | v47))
            {
              goto LABEL_63;
            }
          }

          v51 = 0;
          v52 = 0;
          v53 = v47 != 0;
          v54 = v50 != 0;
          v55 = 1;
          do
          {
            --v47;
            if (v53)
            {
              v52 |= (v55 & v35) << v51++;
            }

            else
            {
              v47 = 0;
            }

            --v50;
            if (v54)
            {
              v52 |= (v55 & v21) << v51++;
            }

            else
            {
              v50 = 0;
            }

            v55 *= 2;
            --v51;
            v54 = v50 != 0;
            v53 = v47 != 0;
          }

          while (v50 | v47);
          v56 = 8 * v52;
LABEL_64:
          v57 = (a3 + v21 * v181 + (v35 << 9));
          v201 = v35 + 1;
          if (v194)
          {
            memcpy(__dst, v57, sizeof(__dst));
            v57 = __dst;
          }

          v58 = (a4 + v56);
          v59 = (v196 + 2 * (v39 - a7));
          if (!(v43 & 1 | (v42 < 0x10u)) && v199 > 0xF)
          {
            v60 = *v58;
            if (v60 == 63)
            {
              v69 = *v57;
              v18 = v57[1];
              v19 = v57[2];
              v20 = v57[3];
              *v59 = vuzp1q_s32(*v57, v19);
              *(v59 + a11) = vuzp2q_s32(v69, v19);
              v62 = 3 * a11;
              v61 = 2 * a11;
              v70 = (v59 + v184);
              *v70 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v70 + a11) = v17;
              v63 = 64;
            }

            else
            {
              v61 = 2 * a11;
              if (v60 == 1)
              {
                v17 = vld1q_dup_s16(v57->i16);
                *v59 = v17;
                *(v59 + a11) = v17;
                *(v59 + 2 * a11) = v17;
                v62 = 3 * a11;
                *(v59 + 3 * a11) = v17;
                v63 = 2;
              }

              else
              {
                v62 = 3 * a11;
                if (*v58)
                {
                  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v59, a11, v57, v60, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
                }

                else
                {
                  v63 = 0;
                  v59->i64[0] = 0;
                  v59->i64[1] = 0;
                  v64 = (v59->i64 + a11);
                  *v64 = 0;
                  v64[1] = 0;
                  v65 = (v59->i64 + v184);
                  *v65 = 0;
                  v65[1] = 0;
                  v66 = (v59->i64 + 3 * a11);
                  *v66 = 0;
                  v66[1] = 0;
                }
              }
            }

            v71 = v57->i64 + v63;
            v72 = v59 + 1;
            v73 = v58[1];
            if (v73 == 63)
            {
              v78 = *v71;
              v18 = *(v71 + 16);
              v19 = *(v71 + 32);
              v20 = *(v71 + 48);
              *v72 = vuzp1q_s32(*v71, v19);
              *(v72 + a11) = vuzp2q_s32(v78, v19);
              v79 = (v72 + v61);
              *v79 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v79 + a11) = v17;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v17 = vld1q_dup_s16(v71);
              *v72 = v17;
              *(v72 + a11) = v17;
              *(v72 + v61) = v17;
              *(v72 + v62) = v17;
              v74 = 2;
            }

            else if (v58[1])
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v71, v73, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v74 = 0;
              v72->i64[0] = 0;
              v59[1].i64[1] = 0;
              v75 = (v72->i64 + a11);
              *v75 = 0;
              v75[1] = 0;
              v76 = (v72->i64 + v61);
              *v76 = 0;
              v76[1] = 0;
              v77 = (v72->i64 + v62);
              *v77 = 0;
              v77[1] = 0;
            }

            v80 = v71 + v74;
            v81 = (v59 + v186);
            v82 = v58[2];
            if (v82 == 63)
            {
              v87 = *v80;
              v18 = *(v80 + 16);
              v19 = *(v80 + 32);
              v20 = *(v80 + 48);
              *v81 = vuzp1q_s32(*v80, v19);
              *(v81 + a11) = vuzp2q_s32(v87, v19);
              v88 = (v81 + v61);
              *v88 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v88 + a11) = v17;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v17 = vld1q_dup_s16(v80);
              *v81 = v17;
              *(v81 + a11) = v17;
              *(v81 + v61) = v17;
              *(v81 + v62) = v17;
              v83 = 2;
            }

            else if (v58[2])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v59 + v186), a11, v80, v82, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v83 = 0;
              v81->i64[0] = 0;
              v81->i64[1] = 0;
              v84 = (v81->i64 + a11);
              *v84 = 0;
              v84[1] = 0;
              v85 = (v81->i64 + v61);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v81->i64 + v62);
              *v86 = 0;
              v86[1] = 0;
            }

            v89 = v80 + v83;
            v90 = v81 + 1;
            v91 = v58[3];
            if (v91 == 63)
            {
              v96 = *v89;
              v18 = *(v89 + 16);
              v19 = *(v89 + 32);
              v20 = *(v89 + 48);
              *v90 = vuzp1q_s32(*v89, v19);
              *(v90 + a11) = vuzp2q_s32(v96, v19);
              v97 = (v90 + v61);
              *v97 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v97 + a11) = v17;
              v92 = 64;
            }

            else if (v91 == 1)
            {
              v17 = vld1q_dup_s16(v89);
              *v90 = v17;
              *(v90 + a11) = v17;
              *(v90 + v61) = v17;
              *(v90 + v62) = v17;
              v92 = 2;
            }

            else if (v58[3])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v90, a11, v89, v91, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v92 = 0;
              v90->i64[0] = 0;
              v81[1].i64[1] = 0;
              v93 = (v90->i64 + a11);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v90->i64 + v61);
              *v94 = 0;
              v94[1] = 0;
              v95 = (v90->i64 + v62);
              *v95 = 0;
              v95[1] = 0;
            }

            v98 = v89 + v92;
            v99 = (v59 + v185);
            v100 = v58[4];
            if (v100 == 63)
            {
              v105 = *v98;
              v18 = *(v98 + 16);
              v19 = *(v98 + 32);
              v20 = *(v98 + 48);
              *v99 = vuzp1q_s32(*v98, v19);
              *(v99 + a11) = vuzp2q_s32(v105, v19);
              v106 = (v99 + v61);
              *v106 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v106 + a11) = v17;
              v101 = 64;
            }

            else if (v100 == 1)
            {
              v17 = vld1q_dup_s16(v98);
              *v99 = v17;
              *(v99 + a11) = v17;
              *(v99 + v61) = v17;
              *(v99 + v62) = v17;
              v101 = 2;
            }

            else if (v58[4])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v59 + v185), a11, v98, v100, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v101 = 0;
              v99->i64[0] = 0;
              v99->i64[1] = 0;
              v102 = (v99->i64 + a11);
              *v102 = 0;
              v102[1] = 0;
              v103 = (v99->i64 + v61);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v99->i64 + v62);
              *v104 = 0;
              v104[1] = 0;
            }

            v107 = v98 + v101;
            v108 = v99 + 1;
            v109 = v58[5];
            if (v109 == 63)
            {
              v114 = *v107;
              v18 = *(v107 + 16);
              v19 = *(v107 + 32);
              v20 = *(v107 + 48);
              *v108 = vuzp1q_s32(*v107, v19);
              *(v108 + a11) = vuzp2q_s32(v114, v19);
              v115 = (v108 + v61);
              *v115 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v115 + a11) = v17;
              v110 = 64;
              v16 = v198;
            }

            else
            {
              v16 = v198;
              if (v109 == 1)
              {
                v17 = vld1q_dup_s16(v107);
                *v108 = v17;
                *(v108 + a11) = v17;
                *(v108 + v61) = v17;
                *(v108 + v62) = v17;
                v110 = 2;
              }

              else if (v58[5])
              {
                v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, a11, v107, v109, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
              }

              else
              {
                v110 = 0;
                v108->i64[0] = 0;
                v108->i64[1] = 0;
                v111 = (v108->i64 + a11);
                *v111 = 0;
                v111[1] = 0;
                v112 = (v108->i64 + v61);
                *v112 = 0;
                v112[1] = 0;
                v113 = (v108->i64 + v62);
                *v113 = 0;
                v113[1] = 0;
              }
            }

            v116 = v107 + v110;
            v117 = (v59 + 12 * a11);
            v118 = v58[6];
            if (v118 == 63)
            {
              v123 = *v116;
              v18 = *(v116 + 16);
              v19 = *(v116 + 32);
              v20 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v19);
              *(v117 + a11) = vuzp2q_s32(v123, v19);
              v124 = (v117 + v61);
              *v124 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v124 + a11) = v17;
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v17 = vld1q_dup_s16(v116);
              *v117 = v17;
              *(v117 + a11) = v17;
              *(v117 + v61) = v17;
              *(v117 + v62) = v17;
              v119 = 2;
            }

            else if (v58[6])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v117->i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v61);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v62);
              *v122 = 0;
              v122[1] = 0;
            }

            v125 = v116 + v119;
            v126 = v117 + 1;
            v127 = v58[7];
            if (v127 == 63)
            {
              v131 = *v125;
              v18 = *(v125 + 16);
              v19 = *(v125 + 32);
              v20 = *(v125 + 48);
              *v126 = vuzp1q_s32(*v125, v19);
              *(v126 + a11) = vuzp2q_s32(v131, v19);
              v132 = (v126 + v61);
              *v132 = vuzp1q_s32(v18, v20);
              v17 = vuzp2q_s32(v18, v20);
              *(v132 + a11) = v17;
              a7 = v192;
            }

            else
            {
              a7 = v192;
              if (v127 == 1)
              {
                v17 = vld1q_dup_s16(v125);
                *v126 = v17;
                *(v126 + a11) = v17;
                *(v126 + v61) = v17;
                *(v126 + v62) = v17;
              }

              else if (v58[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
              }

              else
              {
                v126->i64[0] = 0;
                v126->i64[1] = 0;
                v128 = (v126->i64 + a11);
                *v128 = 0;
                v128[1] = 0;
                v129 = (v126->i64 + v61);
                *v129 = 0;
                v129[1] = 0;
                v130 = (v126->i64 + v62);
                *v130 = 0;
                v130[1] = 0;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v198;
          block[5] = v57;
          v209 = v42;
          v210 = v199;
          v205 = v190;
          v206 = v39 - v37;
          block[6] = v58;
          v203 = v59;
          v204 = a11;
          v207 = v189;
          v208 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v198 + 8) + 16552), block);
            a7 = v192;
            v16 = v198;
LABEL_29:
            v36 = v201;
            goto LABEL_30;
          }

          v67 = *v58;
          a7 = v192;
          if (v67 == 63)
          {
            v133 = v57[1];
            v19 = v57[2];
            v20 = v57[3];
            v134 = vuzp2q_s32(*v57, v19);
            v212 = vuzp1q_s32(*v57, v19);
            v214 = v134;
            v17 = vuzp1q_s32(v133, v20);
            v18 = vuzp2q_s32(v133, v20);
            v216 = v17;
            v218 = v18;
            v68 = 64;
          }

          else if (v67 == 1)
          {
            v17 = vld1q_dup_s16(v57->i16);
            v212 = v17;
            v214 = v17;
            v216 = v17;
            v218 = v17;
            v68 = 2;
          }

          else if (*v58)
          {
            v68 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v57, v67, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v68 = 0;
            v212 = 0uLL;
            v214 = 0uLL;
            v216 = 0uLL;
            v218 = 0uLL;
          }

          v135 = v57->i64 + v68;
          v136 = v58[1];
          if (v136 == 63)
          {
            v138 = *(v135 + 16);
            v19 = *(v135 + 32);
            v20 = *(v135 + 48);
            v139 = vuzp2q_s32(*v135, v19);
            v213 = vuzp1q_s32(*v135, v19);
            v215 = v139;
            v17 = vuzp1q_s32(v138, v20);
            v18 = vuzp2q_s32(v138, v20);
            v217 = v17;
            v219 = v18;
            v137 = 64;
            v16 = v198;
          }

          else
          {
            v16 = v198;
            if (v136 == 1)
            {
              v17 = vld1q_dup_s16(v135);
              v213 = v17;
              v215 = v17;
              v217 = v17;
              v219 = v17;
              v137 = 2;
            }

            else if (v58[1])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v135, v136, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
            }

            else
            {
              v137 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
              v217 = 0uLL;
              v219 = 0uLL;
            }
          }

          v140 = v135 + v137;
          v141 = v58[2];
          if (v141 == 63)
          {
            v143 = *(v140 + 16);
            v19 = *(v140 + 32);
            v20 = *(v140 + 48);
            v144 = vuzp2q_s32(*v140, v19);
            v220 = vuzp1q_s32(*v140, v19);
            v222 = v144;
            v17 = vuzp1q_s32(v143, v20);
            v18 = vuzp2q_s32(v143, v20);
            v224 = v17;
            v226 = v18;
            v142 = 64;
          }

          else if (v141 == 1)
          {
            v17 = vld1q_dup_s16(v140);
            v220 = v17;
            v222 = v17;
            v224 = v17;
            v226 = v17;
            v142 = 2;
          }

          else if (v58[2])
          {
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v140, v141, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v142 = 0;
            v220 = 0uLL;
            v222 = 0uLL;
            v224 = 0uLL;
            v226 = 0uLL;
          }

          v145 = v140 + v142;
          v146 = v58[3];
          if (v146 == 63)
          {
            v148 = *(v145 + 16);
            v19 = *(v145 + 32);
            v20 = *(v145 + 48);
            v149 = vuzp2q_s32(*v145, v19);
            v221 = vuzp1q_s32(*v145, v19);
            v223 = v149;
            v17 = vuzp1q_s32(v148, v20);
            v18 = vuzp2q_s32(v148, v20);
            v225 = v17;
            v227 = v18;
            v147 = 64;
          }

          else if (v146 == 1)
          {
            v17 = vld1q_dup_s16(v145);
            v221 = v17;
            v223 = v17;
            v225 = v17;
            v227 = v17;
            v147 = 2;
          }

          else if (v58[3])
          {
            v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v145, v146, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v147 = 0;
            v221 = 0uLL;
            v223 = 0uLL;
            v225 = 0uLL;
            v227 = 0uLL;
          }

          v150 = v145 + v147;
          v151 = v58[4];
          if (v151 == 63)
          {
            v153 = *(v150 + 16);
            v19 = *(v150 + 32);
            v20 = *(v150 + 48);
            v154 = vuzp2q_s32(*v150, v19);
            v228 = vuzp1q_s32(*v150, v19);
            v230 = v154;
            v17 = vuzp1q_s32(v153, v20);
            v18 = vuzp2q_s32(v153, v20);
            v232 = v17;
            v234 = v18;
            v152 = 64;
          }

          else if (v151 == 1)
          {
            v17 = vld1q_dup_s16(v150);
            v228 = v17;
            v230 = v17;
            v232 = v17;
            v234 = v17;
            v152 = 2;
          }

          else if (v58[4])
          {
            v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v150, v151, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v152 = 0;
            v228 = 0uLL;
            v230 = 0uLL;
            v232 = 0uLL;
            v234 = 0uLL;
          }

          v155 = v150 + v152;
          v156 = v58[5];
          if (v156 == 63)
          {
            v158 = *(v155 + 16);
            v19 = *(v155 + 32);
            v20 = *(v155 + 48);
            v159 = vuzp2q_s32(*v155, v19);
            v229 = vuzp1q_s32(*v155, v19);
            v231 = v159;
            v17 = vuzp1q_s32(v158, v20);
            v18 = vuzp2q_s32(v158, v20);
            v233 = v17;
            v235 = v18;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v17 = vld1q_dup_s16(v155);
            v229 = v17;
            v231 = v17;
            v233 = v17;
            v235 = v17;
            v157 = 2;
          }

          else if (v58[5])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v155, v156, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v157 = 0;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
            v235 = 0uLL;
          }

          v160 = v155 + v157;
          v161 = v58[6];
          if (v161 == 63)
          {
            v163 = *(v160 + 16);
            v19 = *(v160 + 32);
            v20 = *(v160 + 48);
            v164 = vuzp2q_s32(*v160, v19);
            v236 = vuzp1q_s32(*v160, v19);
            v238 = v164;
            v17 = vuzp1q_s32(v163, v20);
            v18 = vuzp2q_s32(v163, v20);
            v240 = v17;
            v242 = v18;
            v162 = 64;
          }

          else if (v161 == 1)
          {
            v17 = vld1q_dup_s16(v160);
            v236 = v17;
            v238 = v17;
            v240 = v17;
            v242 = v17;
            v162 = 2;
          }

          else if (v58[6])
          {
            v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 32, v160, v161, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v162 = 0;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
          }

          v165 = v160 + v162;
          v166 = v58[7];
          if (v166 == 63)
          {
            v167 = *(v165 + 16);
            v19 = *(v165 + 32);
            v20 = *(v165 + 48);
            v168 = vuzp2q_s32(*v165, v19);
            v237 = vuzp1q_s32(*v165, v19);
            v239 = v168;
            v17 = vuzp1q_s32(v167, v20);
            v18 = vuzp2q_s32(v167, v20);
            v241 = v17;
            v243 = v18;
          }

          else if (v166 == 1)
          {
            v17 = vld1q_dup_s16(v165);
            v237 = v17;
            v239 = v17;
            v241 = v17;
            v243 = v17;
          }

          else if (v58[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v165, v166, *v17.i64, *v18.i64, *v19.i64, *v20.i8);
          }

          else
          {
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
            v243 = 0uLL;
          }

          v169 = v207;
          v36 = v201;
          if (v207)
          {
            v170 = 0;
            v171 = &v212.i8[32 * v205 + 2 * v206];
            v172 = v208;
            do
            {
              if (v172)
              {
                v173 = 0;
                v174 = &v203->i8[v204 * v170];
                do
                {
                  v174[v173] = v171[v173];
                  ++v173;
                  v172 = v208;
                }

                while (2 * v208 > v173);
                v169 = v207;
              }

              ++v170;
              v171 += 32;
            }

            while (v170 < v169);
          }

LABEL_30:
          v35 = v36;
        }

        while (v36 != (v193 >> 4) + 1);
        ++v21;
      }

      while (v21 != v175);
    }
  }
}