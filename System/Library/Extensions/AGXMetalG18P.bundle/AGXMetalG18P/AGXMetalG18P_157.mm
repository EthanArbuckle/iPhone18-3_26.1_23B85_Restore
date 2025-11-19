void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v284 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v219 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v218 = v219 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v234 = v23;
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
      v233 = 0;
LABEL_32:
      v230 = v25 - 3;
      v222 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v216 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v233 = v30 >= v24;
    goto LABEL_32;
  }

  v233 = 0;
  v216 = 0;
  v222 = 0;
  v230 = 0;
LABEL_33:
  if (v17 <= v218)
  {
    v232 = a7 + a9 - 1;
    if (a7 >> 3 <= v232 >> 3)
    {
      v32 = a11;
      v241 = v18 >> 3;
      v226 = v18 & 7;
      v231 = (v18 & 7) + 1;
      v214 = v19 & 7;
      v215 = v19 >> 3;
      v224 = 4 * a11;
      v225 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v221 = v35.i64[0];
      v223 = v35.i32[0] | v35.i32[1];
      v220 = v34.i64[0];
      v239 = v15;
      do
      {
        v36 = (8 * v17) | 7;
        if (8 * v17 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v17;
        }

        if (v219 < v36)
        {
          v36 = a8 + a10 - 1;
        }

        v229 = v37 - 8 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v214;
        v228 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 3;
        v43 = v214 + 1;
        if (v17 != v215)
        {
          v43 = 8;
        }

        v240 = v43;
        if (v17 != v215)
        {
          v40 = v41;
        }

        v227 = v40;
        v237 = a2 + (v37 - a8) * v32;
        v44 = a7;
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

          if (v232 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v241)
          {
            v51 = v231;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v17 >= a8 && v46 >= v44)
          {
            v53 = v49 != v226;
            if (v42 != v241)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v227;
          }

          if (v233)
          {
            if (v230 | v222)
            {
              v54 = 0;
              v55 = 0;
              v56 = v222 != 0;
              v57 = 1;
              v59 = v230 != 0;
              v58 = v222;
              v60 = v230;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v42 & ~(-1 << v230) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v17 & ~(-1 << v222) & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v58 != 0;
                v59 = v60 != 0;
              }

              while (v58 | v60);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v15 + 336) * ((v42 >> v230) + (v17 >> v222) * v216);
          }

          else if (v223)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v220;
            v66 = BYTE4(v220);
            v68 = v221;
            v67 = HIDWORD(v221);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v17) << v62++;
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
            v69 = v63 << 9;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 7;
          if (v71 < 0x10)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 3) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v81 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
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
              v77 |= (v80 & v17) << v76++;
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
          if (v234)
          {
            v83 = v50;
            v84 = v51;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v51 = v84;
            v50 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v237 + 8 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 8u)) && v240 > 7)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v90 = *v82;
              v34 = v82[1];
              v96 = v82[2];
              v97 = v82[3];
              *v87 = *v82;
              *(v87 + 16) = v96;
              v32 = a11;
              v98 = (v87 + a11);
              *v98 = v34;
              v98[1] = v97;
              v89 = 64;
            }

            else
            {
              v32 = a11;
              if (v88 == 1)
              {
                v90 = vld1q_dup_s16(v82->i16);
                *v87 = v90;
                *(v87 + 16) = v90;
                v95 = (v87 + a11);
                *v95 = v90;
                v95[1] = v90;
                v89 = 2;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88, *v35.i8, *v34.i8);
              }

              else
              {
                v89 = 0;
                v90.i64[0] = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v91 = (v87 + a11);
                *v91 = 0u;
                v91[1] = 0u;
              }
            }

            v99 = v82->i64 + v89;
            v100 = (v87 + v225);
            v101 = v86[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v106 = *(v99 + 32);
              v107 = *(v99 + 48);
              *v100 = *v99;
              v100[1] = v106;
              v108 = &v100->i8[v32];
              *v108 = v34;
              *(v108 + 1) = v107;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v103 = vld1q_dup_s16(v99);
              *v100 = v103;
              v100[1] = v103;
              v105 = (v100 + v32);
              *v105 = v103;
              v105[1] = v103;
              v102 = 2;
            }

            else if (v86[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v225), v32, v99, v101, *v90.i8, *v34.i8);
            }

            else
            {
              v102 = 0;
              v103.i64[0] = 0;
              *v100 = 0u;
              v100[1] = 0u;
              v104 = &v100->i8[v32];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v109 = v99 + v102;
            v110 = (v87 + 32);
            v111 = v86[2];
            if (v111 == 63)
            {
              v113 = *v109;
              v34 = *(v109 + 16);
              v116 = *(v109 + 32);
              v117 = *(v109 + 48);
              *(v87 + 32) = *v109;
              *(v87 + 48) = v116;
              v118 = &v110->i8[v32];
              *v118 = v34;
              *(v118 + 1) = v117;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v109);
              *(v87 + 32) = v113;
              *(v87 + 48) = v113;
              v115 = &v110->i8[v32];
              *v115 = v113;
              v115[1] = v113;
              v112 = 2;
            }

            else if (v86[2])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, v32, v109, v111, *v103.i8, *v34.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              *v110 = 0u;
              *(v87 + 48) = 0u;
              v114 = &v110->i8[v32];
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v119 = v109 + v112;
            v120 = &v100[2];
            v121 = v86[3];
            if (v121 == 63)
            {
              v123 = *v119;
              v34 = *(v119 + 16);
              v126 = *(v119 + 32);
              v127 = *(v119 + 48);
              v100[2] = *v119;
              v100[3] = v126;
              v128 = &v120->i8[v32];
              *v128 = v34;
              *(v128 + 1) = v127;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v123 = vld1q_dup_s16(v119);
              v100[2] = v123;
              v100[3] = v123;
              v125 = &v120->i8[v32];
              *v125 = v123;
              v125[1] = v123;
              v122 = 2;
            }

            else if (v86[3])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v32, v119, v121, *v113.i8, *v34.i8);
            }

            else
            {
              v122 = 0;
              v123.i64[0] = 0;
              *v120 = 0u;
              v100[3] = 0u;
              v124 = &v120->i8[v32];
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v129 = v119 + v122;
            v130 = (v87 + v224);
            v131 = v86[4];
            if (v131 == 63)
            {
              v133 = *v129;
              v34 = *(v129 + 16);
              v136 = *(v129 + 32);
              v137 = *(v129 + 48);
              *v130 = *v129;
              v130[1] = v136;
              v138 = &v130->i8[v32];
              *v138 = v34;
              *(v138 + 1) = v137;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v133 = vld1q_dup_s16(v129);
              *v130 = v133;
              v130[1] = v133;
              v135 = (v130 + v32);
              *v135 = v133;
              v135[1] = v133;
              v132 = 2;
            }

            else if (v86[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v224), v32, v129, v131, *v123.i8, *v34.i8);
            }

            else
            {
              v132 = 0;
              v133.i64[0] = 0;
              *v130 = 0u;
              v130[1] = 0u;
              v134 = &v130->i8[v32];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v139 = v129 + v132;
            v140 = v87 + 6 * a11;
            v141 = v86[5];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v146 = *(v139 + 32);
              v147 = *(v139 + 48);
              *v140 = *v139;
              *(v140 + 16) = v146;
              v148 = (v140 + v32);
              *v148 = v34;
              v148[1] = v147;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              *v140 = v143;
              *(v140 + 16) = v143;
              v145 = (v140 + v32);
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v86[5])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v133.i8, *v34.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              *(v140 + 16) = 0u;
              v144 = (v140 + v32);
              *v144 = 0u;
              v144[1] = 0u;
            }

            v149 = v139 + v142;
            v150 = &v130[2];
            v151 = v86[6];
            if (v151 == 63)
            {
              v153 = *v149;
              v34 = *(v149 + 16);
              v156 = *(v149 + 32);
              v157 = *(v149 + 48);
              v130[2] = *v149;
              v130[3] = v156;
              v158 = &v150->i8[v32];
              *v158 = v34;
              *(v158 + 1) = v157;
              v152 = 64;
            }

            else if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v149);
              v130[2] = v153;
              v130[3] = v153;
              v155 = &v150->i8[v32];
              *v155 = v153;
              v155[1] = v153;
              v152 = 2;
            }

            else if (v86[6])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v150, v32, v149, v151, *v143.i8, *v34.i8);
            }

            else
            {
              v152 = 0;
              v153.i64[0] = 0;
              *v150 = 0u;
              v130[3] = 0u;
              v154 = &v150->i8[v32];
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v159 = v149 + v152;
            v160 = (v140 + 32);
            v161 = v86[7];
            if (v161 == 63)
            {
              v35 = *v159;
              v34 = *(v159 + 16);
              v163 = *(v159 + 32);
              v164 = *(v159 + 48);
              *(v140 + 32) = *v159;
              *(v140 + 48) = v163;
              v165 = &v160->i8[v32];
              *v165 = v34;
              *(v165 + 1) = v164;
              v44 = a7;
              v15 = v239;
            }

            else
            {
              v15 = v239;
              if (v161 == 1)
              {
                v35 = vld1q_dup_s16(v159);
                *(v140 + 32) = v35;
                *(v140 + 48) = v35;
LABEL_171:
                v162 = (v160 + v32);
                *v162 = v35;
                v162[1] = v35;
              }

              else
              {
                if (!v161)
                {
                  v35 = 0uLL;
                  *v160 = 0u;
                  *(v140 + 48) = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v32, v159, v161, *v153.i8, *v34.i8);
              }

              v44 = a7;
            }

LABEL_49:
            v45 = v42 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v239;
          block[5] = v82;
          v249 = v51;
          v250 = v240;
          v245 = v229;
          v246 = v48 - v46;
          block[6] = v86;
          v243 = v87;
          v32 = a11;
          v244 = a11;
          v247 = v228;
          v248 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v239 + 8) + 16552), block);
            v44 = a7;
            v15 = v239;
            goto LABEL_49;
          }

          v92 = *v86;
          if (v92 == 63)
          {
            v94 = *v82;
            v34 = v82[1];
            v166 = v82[2];
            v167 = v82[3];
            v252 = *v82;
            v253 = v166;
            v256 = v34;
            v257 = v167;
            v93 = 64;
          }

          else if (v92 == 1)
          {
            v94 = vld1q_dup_s16(v82->i16);
            v252 = v94;
            v253 = v94;
            v256 = v94;
            v257 = v94;
            v93 = 2;
          }

          else if (*v86)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v82, v92, *v35.i8, *v34.i8);
          }

          else
          {
            v93 = 0;
            v94.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v168 = v82->i64 + v93;
          v169 = v86[1];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v172 = *(v168 + 32);
            v173 = *(v168 + 48);
            v260 = *v168;
            v261 = v172;
            v264 = v34;
            v265 = v173;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v260 = v171;
            v261 = v171;
            v264 = v171;
            v265 = v171;
            v170 = 2;
          }

          else if (v86[1])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 64, v168, v169, *v94.i8, *v34.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v174 = v168 + v170;
          v175 = v86[2];
          if (v175 == 63)
          {
            v177 = *v174;
            v34 = *(v174 + 16);
            v178 = *(v174 + 32);
            v179 = *(v174 + 48);
            v254 = *v174;
            v255 = v178;
            v258 = v34;
            v259 = v179;
            v176 = 64;
          }

          else if (v175 == 1)
          {
            v177 = vld1q_dup_s16(v174);
            v254 = v177;
            v255 = v177;
            v258 = v177;
            v259 = v177;
            v176 = 2;
          }

          else if (v86[2])
          {
            v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v174, v175, *v171.i8, *v34.i8);
          }

          else
          {
            v176 = 0;
            v177.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
          }

          v180 = v174 + v176;
          v181 = v86[3];
          if (v181 == 63)
          {
            v183 = *v180;
            v34 = *(v180 + 16);
            v184 = *(v180 + 32);
            v185 = *(v180 + 48);
            v262 = *v180;
            v263 = v184;
            v266 = v34;
            v267 = v185;
            v182 = 64;
          }

          else if (v181 == 1)
          {
            v183 = vld1q_dup_s16(v180);
            v262 = v183;
            v263 = v183;
            v266 = v183;
            v267 = v183;
            v182 = 2;
          }

          else if (v86[3])
          {
            v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 64, v180, v181, *v177.i8, *v34.i8);
          }

          else
          {
            v182 = 0;
            v183.i64[0] = 0;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v186 = v180 + v182;
          v187 = v86[4];
          if (v187 == 63)
          {
            v189 = *v186;
            v34 = *(v186 + 16);
            v190 = *(v186 + 32);
            v191 = *(v186 + 48);
            v268 = *v186;
            v269 = v190;
            v272 = v34;
            v273 = v191;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v189 = vld1q_dup_s16(v186);
            v268 = v189;
            v269 = v189;
            v272 = v189;
            v273 = v189;
            v188 = 2;
          }

          else if (v86[4])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v186, v187, *v183.i8, *v34.i8);
          }

          else
          {
            v188 = 0;
            v189.i64[0] = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v192 = v186 + v188;
          v193 = v86[5];
          if (v193 == 63)
          {
            v195 = *v192;
            v34 = *(v192 + 16);
            v196 = *(v192 + 32);
            v197 = *(v192 + 48);
            v276 = *v192;
            v277 = v196;
            v280 = v34;
            v281 = v197;
            v194 = 64;
          }

          else if (v193 == 1)
          {
            v195 = vld1q_dup_s16(v192);
            v276 = v195;
            v277 = v195;
            v280 = v195;
            v281 = v195;
            v194 = 2;
          }

          else if (v86[5])
          {
            v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 64, v192, v193, *v189.i8, *v34.i8);
          }

          else
          {
            v194 = 0;
            v195.i64[0] = 0;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v198 = v192 + v194;
          v199 = v86[6];
          if (v199 == 63)
          {
            v201 = *v198;
            v34 = *(v198 + 16);
            v202 = *(v198 + 32);
            v203 = *(v198 + 48);
            v270 = *v198;
            v271 = v202;
            v274 = v34;
            v275 = v203;
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v270 = v201;
            v271 = v201;
            v274 = v201;
            v275 = v201;
            v200 = 2;
          }

          else if (v86[6])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v198, v199, *v195.i8, *v34.i8);
          }

          else
          {
            v200 = 0;
            v201.i64[0] = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v204 = v198 + v200;
          v205 = v86[7];
          if (v205 == 63)
          {
            v35 = *v204;
            v34 = *(v204 + 16);
            v206 = *(v204 + 32);
            v207 = *(v204 + 48);
            v278 = *v204;
            v279 = v206;
            v282 = v34;
            v283 = v207;
            v44 = a7;
            v15 = v239;
          }

          else
          {
            v44 = a7;
            v15 = v239;
            if (v205 == 1)
            {
              v35 = vld1q_dup_s16(v204);
              v278 = v35;
              v279 = v35;
              v282 = v35;
              v283 = v35;
            }

            else if (v205)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v204, v205, *v201.i8, *v34.i8);
            }

            else
            {
              v35.i64[0] = 0;
              v278 = 0u;
              v279 = 0u;
              v282 = 0u;
              v283 = 0u;
            }
          }

          v208 = v247;
          v45 = v42 + 1;
          if (v247)
          {
            v209 = 0;
            v210 = &v252.i8[64 * v245 + 8 * v246];
            v211 = v248;
            do
            {
              if (v211)
              {
                v212 = 0;
                v213 = v243 + v244 * v209;
                do
                {
                  *(v213 + v212) = v210[v212];
                  ++v212;
                  v211 = v248;
                }

                while (8 * v248 > v212);
                v208 = v247;
              }

              ++v209;
              v210 += 64;
            }

            while (v209 < v208);
          }

LABEL_50:
          v20 = v42 == v232 >> 3;
          v42 = v45;
        }

        while (!v20);
        v20 = v17++ == v218;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v282 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v16 = a8 >> 3;
  v216 = a8 + a10 - 1;
  v218 = v216 >> 3;
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
  v230 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v218)
  {
    v228 = a7 + a9 - 1;
    if (a7 >> 3 <= v228 >> 3)
    {
      v24 = a11;
      v239 = (a5 - 1) >> 3;
      v213 = a5 - 1;
      v221 = (a5 - 1) & 7;
      v214 = (a6 - 1) & 7;
      v215 = (a6 - 1) >> 3;
      v219 = 4 * a11;
      v220 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v226 = v27.i64[0];
      v227 = v27.i32[0] | v27.i32[1];
      v225 = v26.i64[0];
      v212 = 8 * v18 * v17;
      v237 = v15;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v216 < v28)
        {
          v28 = v216;
        }

        v234 = 8 * v16;
        v224 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v223 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 3;
        v35 = v214 + 1;
        if (v16 != v215)
        {
          v35 = 8;
        }

        v238 = v35;
        if (v16 != v215)
        {
          v32 = v33;
        }

        v222 = v32;
        v233 = a2 + (v29 - v235) * v24;
        v36 = a7;
        do
        {
          v38 = 8 * v34;
          v39 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = 8 * v34;
          }

          if (v228 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v239)
          {
            v43 = v221 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v234 >= v235 && v38 >= v36)
          {
            v45 = v41 != v221;
            if (v34 != v239)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v222;
          }

          if (isLevelTiled)
          {
            v195 = 0;
            v196 = v212 >> (*(v15 + 57) != 0);
            v197 = 1;
            if (v196 <= 63)
            {
              if (v196 > 15)
              {
                if (v196 == 16)
                {
                  v197 = 0;
                  v198 = 0;
                  v199 = 64;
                  v195 = 128;
                }

                else
                {
                  v198 = 1;
                  v199 = 0;
                  if (v196 == 32)
                  {
                    v197 = 0;
                    v198 = 0;
                    v195 = 64;
                    v199 = 64;
                  }
                }
              }

              else if (v196 == 4)
              {
                v197 = 0;
                v198 = 0;
                v199 = 128;
                v195 = 256;
              }

              else
              {
                v198 = 1;
                v199 = 0;
                if (v196 == 8)
                {
                  v197 = 0;
                  v198 = 0;
                  v195 = 128;
                  v199 = 128;
                }
              }
            }

            else if (v196 <= 255)
            {
              if (v196 == 64)
              {
                v197 = 0;
                v198 = 0;
                v199 = 32;
                v195 = 64;
              }

              else
              {
                v198 = 1;
                v199 = 0;
                if (v196 == 128)
                {
                  v197 = 0;
                  v198 = 0;
                  v195 = 32;
                  v199 = 32;
                }
              }
            }

            else if (v196 == 256)
            {
              v197 = 0;
              v198 = 0;
              v199 = 16;
              v195 = 32;
            }

            else if (v196 == 512)
            {
              v197 = 0;
              v198 = 0;
              v195 = 16;
              v199 = 16;
            }

            else
            {
              v198 = 1;
              v199 = 0;
              if (v196 == 1024)
              {
                v197 = 0;
                v199 = 8;
                v195 = 16;
              }
            }

            v200 = (v195 >> 3) - 1;
            if (v197)
            {
              v201 = 0;
            }

            else
            {
              v201 = 32 - __clz(~(-1 << -__clz(v200)));
            }

            v202 = (v199 >> 3) - 1;
            if (v198)
            {
              v203 = 0;
              if (v201)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if (v203 | v201)
              {
LABEL_227:
                v204 = 0;
                v205 = 0;
                v206 = v34 & v200;
                v207 = v16 & v202;
                v208 = v201 != 0;
                v209 = v203 != 0;
                v210 = 1;
                do
                {
                  --v201;
                  if (v208)
                  {
                    v205 |= (v210 & v206) << v204++;
                  }

                  else
                  {
                    v201 = 0;
                  }

                  --v203;
                  if (v209)
                  {
                    v205 |= (v210 & v207) << v204++;
                  }

                  else
                  {
                    v203 = 0;
                  }

                  v210 *= 2;
                  --v204;
                  v209 = v203 != 0;
                  v208 = v201 != 0;
                }

                while (v203 | v201);
                v211 = v205 << 9;
                goto LABEL_239;
              }
            }

            v211 = 0;
LABEL_239:
            v53 = v211 + ((v38 / v195 + v234 / v199 * ((v195 + v213) / v195)) << 14);
            goto LABEL_55;
          }

          if (v227)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v225;
            v50 = BYTE4(v225);
            v52 = v226;
            v51 = HIDWORD(v226);
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v34) << v46++;
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
            v53 = v47 << 9;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 7;
          if (v55 < 0x10)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 3) - 1)));
          }

          v57 = *(v15 + 132) >> (*(v15 + 144) + a12);
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

          if (v59 | v56)
          {
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
          }

          else
          {
            v65 = 0;
          }

          v66 = (a3 + v53);
          if (v230)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v66 = __dst;
          }

          v67 = (a4 + v65);
          v68 = v233 + 8 * (v40 - v36);
          if (!(v44 & 1 | (v43 < 8u)) && v238 > 7)
          {
            v69 = *v67;
            if (v69 == 63)
            {
              v71 = *v66;
              v26 = v66[1];
              v77 = v66[2];
              v78 = v66[3];
              *v68 = *v66;
              *(v68 + 16) = v77;
              v24 = a11;
              v79 = (v68 + a11);
              *v79 = v26;
              v79[1] = v78;
              v70 = 64;
            }

            else
            {
              v24 = a11;
              if (v69 == 1)
              {
                v71 = vld1q_dup_s16(v66->i16);
                *v68 = v71;
                *(v68 + 16) = v71;
                v76 = (v68 + a11);
                *v76 = v71;
                v76[1] = v71;
                v70 = 2;
              }

              else if (*v67)
              {
                v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v68, a11, v66, v69, *v27.i8, *v26.i8);
              }

              else
              {
                v70 = 0;
                v71.i64[0] = 0;
                *v68 = 0u;
                *(v68 + 16) = 0u;
                v72 = (v68 + a11);
                *v72 = 0u;
                v72[1] = 0u;
              }
            }

            v80 = v66->i64 + v70;
            v81 = (v68 + v220);
            v82 = v67[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v87 = *(v80 + 32);
              v88 = *(v80 + 48);
              *v81 = *v80;
              v81[1] = v87;
              v89 = &v81->i8[v24];
              *v89 = v26;
              v89[1] = v88;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              *v81 = v84;
              v81[1] = v84;
              v86 = (v81 + v24);
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v67[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v220), v24, v80, v82, *v71.i8, *v26.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v81[1] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v90 = v80 + v83;
            v91 = (v68 + 32);
            v92 = v67[2];
            if (v92 == 63)
            {
              v94 = *v90;
              v26 = *(v90 + 16);
              v97 = *(v90 + 32);
              v98 = *(v90 + 48);
              *(v68 + 32) = *v90;
              *(v68 + 48) = v97;
              v99 = &v91->i8[v24];
              *v99 = v26;
              *(v99 + 1) = v98;
              v93 = 64;
            }

            else if (v92 == 1)
            {
              v94 = vld1q_dup_s16(v90);
              *(v68 + 32) = v94;
              *(v68 + 48) = v94;
              v96 = &v91->i8[v24];
              *v96 = v94;
              v96[1] = v94;
              v93 = 2;
            }

            else if (v67[2])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v91, v24, v90, v92, *v84.i8, *v26.i8);
            }

            else
            {
              v93 = 0;
              v94.i64[0] = 0;
              *v91 = 0u;
              *(v68 + 48) = 0u;
              v95 = &v91->i8[v24];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v100 = v90 + v93;
            v101 = &v81[2];
            v102 = v67[3];
            if (v102 == 63)
            {
              v104 = *v100;
              v26 = *(v100 + 16);
              v107 = *(v100 + 32);
              v108 = *(v100 + 48);
              v81[2] = *v100;
              v81[3] = v107;
              v109 = &v101->i8[v24];
              *v109 = v26;
              *(v109 + 1) = v108;
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v100);
              v81[2] = v104;
              v81[3] = v104;
              v106 = &v101->i8[v24];
              *v106 = v104;
              v106[1] = v104;
              v103 = 2;
            }

            else if (v67[3])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v24, v100, v102, *v94.i8, *v26.i8);
            }

            else
            {
              v103 = 0;
              v104.i64[0] = 0;
              *v101 = 0u;
              v81[3] = 0u;
              v105 = &v101->i8[v24];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v110 = v100 + v103;
            v111 = (v68 + v219);
            v112 = v67[4];
            if (v112 == 63)
            {
              v114 = *v110;
              v26 = *(v110 + 16);
              v117 = *(v110 + 32);
              v118 = *(v110 + 48);
              *v111 = *v110;
              v111[1] = v117;
              v119 = &v111->i8[v24];
              *v119 = v26;
              v119[1] = v118;
              v113 = 64;
            }

            else if (v112 == 1)
            {
              v114 = vld1q_dup_s16(v110);
              *v111 = v114;
              v111[1] = v114;
              v116 = (v111 + v24);
              *v116 = v114;
              v116[1] = v114;
              v113 = 2;
            }

            else if (v67[4])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v219), v24, v110, v112, *v104.i8, *v26.i8);
            }

            else
            {
              v113 = 0;
              v114.i64[0] = 0;
              *v111 = 0u;
              v111[1] = 0u;
              v115 = &v111->i8[v24];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v120 = v110 + v113;
            v121 = v68 + 6 * a11;
            v122 = v67[5];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v127 = *(v120 + 32);
              v128 = *(v120 + 48);
              *v121 = *v120;
              *(v121 + 16) = v127;
              v129 = (v121 + v24);
              *v129 = v26;
              v129[1] = v128;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              *v121 = v124;
              *(v121 + 16) = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v67[5])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v114.i8, *v26.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              *(v121 + 16) = 0u;
              v125 = (v121 + v24);
              *v125 = 0u;
              v125[1] = 0u;
            }

            v130 = v120 + v123;
            v131 = &v111[2];
            v132 = v67[6];
            if (v132 == 63)
            {
              v134 = *v130;
              v26 = *(v130 + 16);
              v137 = *(v130 + 32);
              v138 = *(v130 + 48);
              v111[2] = *v130;
              v111[3] = v137;
              v139 = &v131->i8[v24];
              *v139 = v26;
              *(v139 + 1) = v138;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v134 = vld1q_dup_s16(v130);
              v111[2] = v134;
              v111[3] = v134;
              v136 = &v131->i8[v24];
              *v136 = v134;
              v136[1] = v134;
              v133 = 2;
            }

            else if (v67[6])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v124.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v134.i64[0] = 0;
              *v131 = 0u;
              v111[3] = 0u;
              v135 = &v131->i8[v24];
              *v135 = 0u;
              *(v135 + 1) = 0u;
            }

            v37 = v34 + 1;
            v140 = v130 + v133;
            v141 = (v121 + 32);
            v142 = v67[7];
            if (v142 == 63)
            {
              v27 = *v140;
              v26 = *(v140 + 16);
              v144 = *(v140 + 32);
              v145 = *(v140 + 48);
              *(v121 + 32) = *v140;
              *(v121 + 48) = v144;
              v146 = &v141->i8[v24];
              *v146 = v26;
              *(v146 + 1) = v145;
              v36 = a7;
              v15 = v237;
              goto LABEL_29;
            }

            v15 = v237;
            if (v142 == 1)
            {
              v27 = vld1q_dup_s16(v140);
              *(v121 + 32) = v27;
              *(v121 + 48) = v27;
LABEL_137:
              v143 = (v141 + v24);
              *v143 = v27;
              v143[1] = v27;
            }

            else
            {
              if (!v142)
              {
                v27 = 0uLL;
                *v141 = 0u;
                *(v121 + 48) = 0u;
                goto LABEL_137;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v134.i8, *v26.i8);
            }

            v36 = a7;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v237;
          block[5] = v66;
          v247 = v43;
          v248 = v238;
          v243 = v224;
          v244 = v40 - v38;
          block[6] = v67;
          v241 = v68;
          v24 = a11;
          v242 = a11;
          v245 = v223;
          v246 = v42;
          if (v44)
          {
            dispatch_sync(*(*(v237 + 8) + 16552), block);
            v36 = a7;
            v15 = v237;
            v37 = v34 + 1;
          }

          else
          {
            v73 = *v67;
            v36 = a7;
            if (v73 == 63)
            {
              v75 = *v66;
              v26 = v66[1];
              v147 = v66[2];
              v148 = v66[3];
              v250 = *v66;
              v251 = v147;
              v254 = v26;
              v255 = v148;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v75 = vld1q_dup_s16(v66->i16);
              v250 = v75;
              v251 = v75;
              v254 = v75;
              v255 = v75;
              v74 = 2;
            }

            else if (*v67)
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 64, v66, v73, *v27.i8, *v26.i8);
            }

            else
            {
              v74 = 0;
              v75.i64[0] = 0;
              v250 = 0u;
              v251 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v149 = v66->i64 + v74;
            v150 = v67[1];
            if (v150 == 63)
            {
              v152 = *v149;
              v26 = *(v149 + 16);
              v153 = *(v149 + 32);
              v154 = *(v149 + 48);
              v258 = *v149;
              v259 = v153;
              v262 = v26;
              v263 = v154;
              v151 = 64;
              v37 = v34 + 1;
            }

            else
            {
              v37 = v34 + 1;
              if (v150 == 1)
              {
                v152 = vld1q_dup_s16(v149);
                v258 = v152;
                v259 = v152;
                v262 = v152;
                v263 = v152;
                v151 = 2;
              }

              else if (v67[1])
              {
                v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 64, v149, v150, *v75.i8, *v26.i8);
              }

              else
              {
                v151 = 0;
                v152.i64[0] = 0;
                v258 = 0u;
                v259 = 0u;
                v262 = 0u;
                v263 = 0u;
              }
            }

            v155 = v149 + v151;
            v156 = v67[2];
            if (v156 == 63)
            {
              v158 = *v155;
              v26 = *(v155 + 16);
              v159 = *(v155 + 32);
              v160 = *(v155 + 48);
              v252 = *v155;
              v253 = v159;
              v256 = v26;
              v257 = v160;
              v157 = 64;
            }

            else if (v156 == 1)
            {
              v158 = vld1q_dup_s16(v155);
              v252 = v158;
              v253 = v158;
              v256 = v158;
              v257 = v158;
              v157 = 2;
            }

            else if (v67[2])
            {
              v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v155, v156, *v152.i8, *v26.i8);
            }

            else
            {
              v157 = 0;
              v158.i64[0] = 0;
              v252 = 0u;
              v253 = 0u;
              v256 = 0u;
              v257 = 0u;
            }

            v161 = v155 + v157;
            v162 = v67[3];
            if (v162 == 63)
            {
              v164 = *v161;
              v26 = *(v161 + 16);
              v165 = *(v161 + 32);
              v166 = *(v161 + 48);
              v260 = *v161;
              v261 = v165;
              v264 = v26;
              v265 = v166;
              v163 = 64;
            }

            else if (v162 == 1)
            {
              v164 = vld1q_dup_s16(v161);
              v260 = v164;
              v261 = v164;
              v264 = v164;
              v265 = v164;
              v163 = 2;
            }

            else if (v67[3])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 64, v161, v162, *v158.i8, *v26.i8);
            }

            else
            {
              v163 = 0;
              v164.i64[0] = 0;
              v260 = 0u;
              v261 = 0u;
              v264 = 0u;
              v265 = 0u;
            }

            v167 = v161 + v163;
            v168 = v67[4];
            if (v168 == 63)
            {
              v170 = *v167;
              v26 = *(v167 + 16);
              v171 = *(v167 + 32);
              v172 = *(v167 + 48);
              v266 = *v167;
              v267 = v171;
              v270 = v26;
              v271 = v172;
              v169 = 64;
            }

            else if (v168 == 1)
            {
              v170 = vld1q_dup_s16(v167);
              v266 = v170;
              v267 = v170;
              v270 = v170;
              v271 = v170;
              v169 = 2;
            }

            else if (v67[4])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 64, v167, v168, *v164.i8, *v26.i8);
            }

            else
            {
              v169 = 0;
              v170.i64[0] = 0;
              v266 = 0u;
              v267 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v173 = v167 + v169;
            v174 = v67[5];
            if (v174 == 63)
            {
              v176 = *v173;
              v26 = *(v173 + 16);
              v177 = *(v173 + 32);
              v178 = *(v173 + 48);
              v274 = *v173;
              v275 = v177;
              v278 = v26;
              v279 = v178;
              v175 = 64;
            }

            else if (v174 == 1)
            {
              v176 = vld1q_dup_s16(v173);
              v274 = v176;
              v275 = v176;
              v278 = v176;
              v279 = v176;
              v175 = 2;
            }

            else if (v67[5])
            {
              v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v274, 64, v173, v174, *v170.i8, *v26.i8);
            }

            else
            {
              v175 = 0;
              v176.i64[0] = 0;
              v274 = 0u;
              v275 = 0u;
              v278 = 0u;
              v279 = 0u;
            }

            v179 = v173 + v175;
            v180 = v67[6];
            if (v180 == 63)
            {
              v182 = *v179;
              v26 = *(v179 + 16);
              v183 = *(v179 + 32);
              v184 = *(v179 + 48);
              v268 = *v179;
              v269 = v183;
              v272 = v26;
              v273 = v184;
              v181 = 64;
            }

            else if (v180 == 1)
            {
              v182 = vld1q_dup_s16(v179);
              v268 = v182;
              v269 = v182;
              v272 = v182;
              v273 = v182;
              v181 = 2;
            }

            else if (v67[6])
            {
              v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v179, v180, *v176.i8, *v26.i8);
            }

            else
            {
              v181 = 0;
              v182.i64[0] = 0;
              v268 = 0u;
              v269 = 0u;
              v272 = 0u;
              v273 = 0u;
            }

            v185 = v179 + v181;
            v186 = v67[7];
            if (v186 == 63)
            {
              v27 = *v185;
              v26 = *(v185 + 16);
              v187 = *(v185 + 32);
              v188 = *(v185 + 48);
              v276 = *v185;
              v277 = v187;
              v280 = v26;
              v281 = v188;
              v15 = v237;
            }

            else
            {
              v15 = v237;
              if (v186 == 1)
              {
                v27 = vld1q_dup_s16(v185);
                v276 = v27;
                v277 = v27;
                v280 = v27;
                v281 = v27;
              }

              else if (v186)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 64, v185, v186, *v182.i8, *v26.i8);
              }

              else
              {
                v27.i64[0] = 0;
                v276 = 0u;
                v277 = 0u;
                v280 = 0u;
                v281 = 0u;
              }
            }

            v189 = v245;
            if (v245)
            {
              v190 = 0;
              v191 = &v250.i8[64 * v243 + 8 * v244];
              v192 = v246;
              do
              {
                if (v192)
                {
                  v193 = 0;
                  v194 = v241 + v242 * v190;
                  do
                  {
                    *(v194 + v193) = v191[v193];
                    ++v193;
                    v192 = v246;
                  }

                  while (8 * v246 > v193);
                  v189 = v245;
                }

                ++v190;
                v191 += 64;
              }

              while (v190 < v189);
            }
          }

LABEL_29:
          v20 = v34 == v228 >> 3;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v218;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v282 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v16 = a8 >> 3;
  v216 = a8 + a10 - 1;
  v218 = v216 >> 3;
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
  v230 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v218)
  {
    v228 = a7 + a9 - 1;
    if (a7 >> 3 <= v228 >> 3)
    {
      v24 = a11;
      v239 = (a5 - 1) >> 3;
      v213 = a5 - 1;
      v221 = (a5 - 1) & 7;
      v214 = (a6 - 1) & 7;
      v215 = (a6 - 1) >> 3;
      v219 = 4 * a11;
      v220 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v226 = v27.i64[0];
      v227 = v27.i32[0] | v27.i32[1];
      v225 = v26.i64[0];
      v212 = 8 * v18 * v17;
      v237 = v15;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v216 < v28)
        {
          v28 = v216;
        }

        v234 = 8 * v16;
        v224 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v223 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 3;
        v35 = v214 + 1;
        if (v16 != v215)
        {
          v35 = 8;
        }

        v238 = v35;
        if (v16 != v215)
        {
          v32 = v33;
        }

        v222 = v32;
        v233 = a2 + (v29 - v235) * v24;
        v36 = a7;
        do
        {
          v38 = 8 * v34;
          v39 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = 8 * v34;
          }

          if (v228 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v239)
          {
            v43 = v221 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v234 >= v235 && v38 >= v36)
          {
            v45 = v41 != v221;
            if (v34 != v239)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v222;
          }

          if (isLevelTiled)
          {
            v195 = 0;
            v196 = v212 >> (*(v15 + 57) != 0);
            v197 = 1;
            if (v196 <= 63)
            {
              if (v196 > 15)
              {
                if (v196 == 16)
                {
                  v197 = 0;
                  v198 = 0;
                  v199 = 64;
                  v195 = 128;
                }

                else
                {
                  v198 = 1;
                  v199 = 0;
                  if (v196 == 32)
                  {
                    v197 = 0;
                    v198 = 0;
                    v195 = 64;
                    v199 = 64;
                  }
                }
              }

              else if (v196 == 4)
              {
                v197 = 0;
                v198 = 0;
                v199 = 128;
                v195 = 256;
              }

              else
              {
                v198 = 1;
                v199 = 0;
                if (v196 == 8)
                {
                  v197 = 0;
                  v198 = 0;
                  v195 = 128;
                  v199 = 128;
                }
              }
            }

            else if (v196 <= 255)
            {
              if (v196 == 64)
              {
                v197 = 0;
                v198 = 0;
                v199 = 32;
                v195 = 64;
              }

              else
              {
                v198 = 1;
                v199 = 0;
                if (v196 == 128)
                {
                  v197 = 0;
                  v198 = 0;
                  v195 = 32;
                  v199 = 32;
                }
              }
            }

            else if (v196 == 256)
            {
              v197 = 0;
              v198 = 0;
              v199 = 16;
              v195 = 32;
            }

            else if (v196 == 512)
            {
              v197 = 0;
              v198 = 0;
              v195 = 16;
              v199 = 16;
            }

            else
            {
              v198 = 1;
              v199 = 0;
              if (v196 == 1024)
              {
                v197 = 0;
                v199 = 8;
                v195 = 16;
              }
            }

            v200 = (v195 >> 3) - 1;
            if (v197)
            {
              v201 = 0;
            }

            else
            {
              v201 = 32 - __clz(~(-1 << -__clz(v200)));
            }

            v202 = (v199 >> 3) - 1;
            if (v198)
            {
              v203 = 0;
              if (v201)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if (v203 | v201)
              {
LABEL_227:
                v204 = 0;
                v205 = 0;
                v206 = v34 & v200;
                v207 = v16 & v202;
                v208 = v201 != 0;
                v209 = v203 != 0;
                v210 = 1;
                do
                {
                  --v201;
                  if (v208)
                  {
                    v205 |= (v210 & v206) << v204++;
                  }

                  else
                  {
                    v201 = 0;
                  }

                  --v203;
                  if (v209)
                  {
                    v205 |= (v210 & v207) << v204++;
                  }

                  else
                  {
                    v203 = 0;
                  }

                  v210 *= 2;
                  --v204;
                  v209 = v203 != 0;
                  v208 = v201 != 0;
                }

                while (v203 | v201);
                v211 = v205 << 9;
                goto LABEL_239;
              }
            }

            v211 = 0;
LABEL_239:
            v53 = v211 + ((v38 / v195 + v234 / v199 * ((v195 + v213) / v195)) << 14);
            goto LABEL_55;
          }

          if (v227)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v225;
            v50 = BYTE4(v225);
            v52 = v226;
            v51 = HIDWORD(v226);
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v34) << v46++;
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
            v53 = v47 << 9;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 7;
          if (v55 < 0x10)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 3) - 1)));
          }

          v57 = *(v15 + 132) >> (*(v15 + 144) + a12);
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

          if (v59 | v56)
          {
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
          }

          else
          {
            v65 = 0;
          }

          v66 = (a3 + v53);
          if (v230)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v66 = __dst;
          }

          v67 = (a4 + v65);
          v68 = v233 + 8 * (v40 - v36);
          if (!(v44 & 1 | (v43 < 8u)) && v238 > 7)
          {
            v69 = *v67;
            if (v69 == 63)
            {
              v71 = *v66;
              v26 = v66[1];
              v77 = v66[2];
              v78 = v66[3];
              *v68 = *v66;
              *(v68 + 16) = v77;
              v24 = a11;
              v79 = (v68 + a11);
              *v79 = v26;
              v79[1] = v78;
              v70 = 64;
            }

            else
            {
              v24 = a11;
              if (v69 == 1)
              {
                v71 = vld1q_dup_s16(v66->i16);
                *v68 = v71;
                *(v68 + 16) = v71;
                v76 = (v68 + a11);
                *v76 = v71;
                v76[1] = v71;
                v70 = 2;
              }

              else if (*v67)
              {
                v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v68, a11, v66, v69, *v27.i8, *v26.i8);
              }

              else
              {
                v70 = 0;
                v71.i64[0] = 0;
                *v68 = 0u;
                *(v68 + 16) = 0u;
                v72 = (v68 + a11);
                *v72 = 0u;
                v72[1] = 0u;
              }
            }

            v80 = v66->i64 + v70;
            v81 = (v68 + v220);
            v82 = v67[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v87 = *(v80 + 32);
              v88 = *(v80 + 48);
              *v81 = *v80;
              v81[1] = v87;
              v89 = &v81->i8[v24];
              *v89 = v26;
              v89[1] = v88;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              *v81 = v84;
              v81[1] = v84;
              v86 = (v81 + v24);
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v67[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v220), v24, v80, v82, *v71.i8, *v26.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v81[1] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v90 = v80 + v83;
            v91 = (v68 + 32);
            v92 = v67[2];
            if (v92 == 63)
            {
              v94 = *v90;
              v26 = *(v90 + 16);
              v97 = *(v90 + 32);
              v98 = *(v90 + 48);
              *(v68 + 32) = *v90;
              *(v68 + 48) = v97;
              v99 = &v91->i8[v24];
              *v99 = v26;
              *(v99 + 1) = v98;
              v93 = 64;
            }

            else if (v92 == 1)
            {
              v94 = vld1q_dup_s16(v90);
              *(v68 + 32) = v94;
              *(v68 + 48) = v94;
              v96 = &v91->i8[v24];
              *v96 = v94;
              v96[1] = v94;
              v93 = 2;
            }

            else if (v67[2])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v91, v24, v90, v92, *v84.i8, *v26.i8);
            }

            else
            {
              v93 = 0;
              v94.i64[0] = 0;
              *v91 = 0u;
              *(v68 + 48) = 0u;
              v95 = &v91->i8[v24];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v100 = v90 + v93;
            v101 = &v81[2];
            v102 = v67[3];
            if (v102 == 63)
            {
              v104 = *v100;
              v26 = *(v100 + 16);
              v107 = *(v100 + 32);
              v108 = *(v100 + 48);
              v81[2] = *v100;
              v81[3] = v107;
              v109 = &v101->i8[v24];
              *v109 = v26;
              *(v109 + 1) = v108;
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v100);
              v81[2] = v104;
              v81[3] = v104;
              v106 = &v101->i8[v24];
              *v106 = v104;
              v106[1] = v104;
              v103 = 2;
            }

            else if (v67[3])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v24, v100, v102, *v94.i8, *v26.i8);
            }

            else
            {
              v103 = 0;
              v104.i64[0] = 0;
              *v101 = 0u;
              v81[3] = 0u;
              v105 = &v101->i8[v24];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v110 = v100 + v103;
            v111 = (v68 + v219);
            v112 = v67[4];
            if (v112 == 63)
            {
              v114 = *v110;
              v26 = *(v110 + 16);
              v117 = *(v110 + 32);
              v118 = *(v110 + 48);
              *v111 = *v110;
              v111[1] = v117;
              v119 = &v111->i8[v24];
              *v119 = v26;
              v119[1] = v118;
              v113 = 64;
            }

            else if (v112 == 1)
            {
              v114 = vld1q_dup_s16(v110);
              *v111 = v114;
              v111[1] = v114;
              v116 = (v111 + v24);
              *v116 = v114;
              v116[1] = v114;
              v113 = 2;
            }

            else if (v67[4])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v219), v24, v110, v112, *v104.i8, *v26.i8);
            }

            else
            {
              v113 = 0;
              v114.i64[0] = 0;
              *v111 = 0u;
              v111[1] = 0u;
              v115 = &v111->i8[v24];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v120 = v110 + v113;
            v121 = v68 + 6 * a11;
            v122 = v67[5];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v127 = *(v120 + 32);
              v128 = *(v120 + 48);
              *v121 = *v120;
              *(v121 + 16) = v127;
              v129 = (v121 + v24);
              *v129 = v26;
              v129[1] = v128;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              *v121 = v124;
              *(v121 + 16) = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v67[5])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v114.i8, *v26.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              *(v121 + 16) = 0u;
              v125 = (v121 + v24);
              *v125 = 0u;
              v125[1] = 0u;
            }

            v130 = v120 + v123;
            v131 = &v111[2];
            v132 = v67[6];
            if (v132 == 63)
            {
              v134 = *v130;
              v26 = *(v130 + 16);
              v137 = *(v130 + 32);
              v138 = *(v130 + 48);
              v111[2] = *v130;
              v111[3] = v137;
              v139 = &v131->i8[v24];
              *v139 = v26;
              *(v139 + 1) = v138;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v134 = vld1q_dup_s16(v130);
              v111[2] = v134;
              v111[3] = v134;
              v136 = &v131->i8[v24];
              *v136 = v134;
              v136[1] = v134;
              v133 = 2;
            }

            else if (v67[6])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v124.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v134.i64[0] = 0;
              *v131 = 0u;
              v111[3] = 0u;
              v135 = &v131->i8[v24];
              *v135 = 0u;
              *(v135 + 1) = 0u;
            }

            v37 = v34 + 1;
            v140 = v130 + v133;
            v141 = (v121 + 32);
            v142 = v67[7];
            if (v142 == 63)
            {
              v27 = *v140;
              v26 = *(v140 + 16);
              v144 = *(v140 + 32);
              v145 = *(v140 + 48);
              *(v121 + 32) = *v140;
              *(v121 + 48) = v144;
              v146 = &v141->i8[v24];
              *v146 = v26;
              *(v146 + 1) = v145;
              v36 = a7;
              v15 = v237;
              goto LABEL_29;
            }

            v15 = v237;
            if (v142 == 1)
            {
              v27 = vld1q_dup_s16(v140);
              *(v121 + 32) = v27;
              *(v121 + 48) = v27;
LABEL_137:
              v143 = (v141 + v24);
              *v143 = v27;
              v143[1] = v27;
            }

            else
            {
              if (!v142)
              {
                v27 = 0uLL;
                *v141 = 0u;
                *(v121 + 48) = 0u;
                goto LABEL_137;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v134.i8, *v26.i8);
            }

            v36 = a7;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v237;
          block[5] = v66;
          v247 = v43;
          v248 = v238;
          v243 = v224;
          v244 = v40 - v38;
          block[6] = v67;
          v241 = v68;
          v24 = a11;
          v242 = a11;
          v245 = v223;
          v246 = v42;
          if (v44)
          {
            dispatch_sync(*(*(v237 + 8) + 16552), block);
            v36 = a7;
            v15 = v237;
            v37 = v34 + 1;
          }

          else
          {
            v73 = *v67;
            v36 = a7;
            if (v73 == 63)
            {
              v75 = *v66;
              v26 = v66[1];
              v147 = v66[2];
              v148 = v66[3];
              v250 = *v66;
              v251 = v147;
              v254 = v26;
              v255 = v148;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v75 = vld1q_dup_s16(v66->i16);
              v250 = v75;
              v251 = v75;
              v254 = v75;
              v255 = v75;
              v74 = 2;
            }

            else if (*v67)
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 64, v66, v73, *v27.i8, *v26.i8);
            }

            else
            {
              v74 = 0;
              v75.i64[0] = 0;
              v250 = 0u;
              v251 = 0u;
              v254 = 0u;
              v255 = 0u;
            }

            v149 = v66->i64 + v74;
            v150 = v67[1];
            if (v150 == 63)
            {
              v152 = *v149;
              v26 = *(v149 + 16);
              v153 = *(v149 + 32);
              v154 = *(v149 + 48);
              v258 = *v149;
              v259 = v153;
              v262 = v26;
              v263 = v154;
              v151 = 64;
              v37 = v34 + 1;
            }

            else
            {
              v37 = v34 + 1;
              if (v150 == 1)
              {
                v152 = vld1q_dup_s16(v149);
                v258 = v152;
                v259 = v152;
                v262 = v152;
                v263 = v152;
                v151 = 2;
              }

              else if (v67[1])
              {
                v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 64, v149, v150, *v75.i8, *v26.i8);
              }

              else
              {
                v151 = 0;
                v152.i64[0] = 0;
                v258 = 0u;
                v259 = 0u;
                v262 = 0u;
                v263 = 0u;
              }
            }

            v155 = v149 + v151;
            v156 = v67[2];
            if (v156 == 63)
            {
              v158 = *v155;
              v26 = *(v155 + 16);
              v159 = *(v155 + 32);
              v160 = *(v155 + 48);
              v252 = *v155;
              v253 = v159;
              v256 = v26;
              v257 = v160;
              v157 = 64;
            }

            else if (v156 == 1)
            {
              v158 = vld1q_dup_s16(v155);
              v252 = v158;
              v253 = v158;
              v256 = v158;
              v257 = v158;
              v157 = 2;
            }

            else if (v67[2])
            {
              v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v155, v156, *v152.i8, *v26.i8);
            }

            else
            {
              v157 = 0;
              v158.i64[0] = 0;
              v252 = 0u;
              v253 = 0u;
              v256 = 0u;
              v257 = 0u;
            }

            v161 = v155 + v157;
            v162 = v67[3];
            if (v162 == 63)
            {
              v164 = *v161;
              v26 = *(v161 + 16);
              v165 = *(v161 + 32);
              v166 = *(v161 + 48);
              v260 = *v161;
              v261 = v165;
              v264 = v26;
              v265 = v166;
              v163 = 64;
            }

            else if (v162 == 1)
            {
              v164 = vld1q_dup_s16(v161);
              v260 = v164;
              v261 = v164;
              v264 = v164;
              v265 = v164;
              v163 = 2;
            }

            else if (v67[3])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 64, v161, v162, *v158.i8, *v26.i8);
            }

            else
            {
              v163 = 0;
              v164.i64[0] = 0;
              v260 = 0u;
              v261 = 0u;
              v264 = 0u;
              v265 = 0u;
            }

            v167 = v161 + v163;
            v168 = v67[4];
            if (v168 == 63)
            {
              v170 = *v167;
              v26 = *(v167 + 16);
              v171 = *(v167 + 32);
              v172 = *(v167 + 48);
              v266 = *v167;
              v267 = v171;
              v270 = v26;
              v271 = v172;
              v169 = 64;
            }

            else if (v168 == 1)
            {
              v170 = vld1q_dup_s16(v167);
              v266 = v170;
              v267 = v170;
              v270 = v170;
              v271 = v170;
              v169 = 2;
            }

            else if (v67[4])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 64, v167, v168, *v164.i8, *v26.i8);
            }

            else
            {
              v169 = 0;
              v170.i64[0] = 0;
              v266 = 0u;
              v267 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v173 = v167 + v169;
            v174 = v67[5];
            if (v174 == 63)
            {
              v176 = *v173;
              v26 = *(v173 + 16);
              v177 = *(v173 + 32);
              v178 = *(v173 + 48);
              v274 = *v173;
              v275 = v177;
              v278 = v26;
              v279 = v178;
              v175 = 64;
            }

            else if (v174 == 1)
            {
              v176 = vld1q_dup_s16(v173);
              v274 = v176;
              v275 = v176;
              v278 = v176;
              v279 = v176;
              v175 = 2;
            }

            else if (v67[5])
            {
              v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v274, 64, v173, v174, *v170.i8, *v26.i8);
            }

            else
            {
              v175 = 0;
              v176.i64[0] = 0;
              v274 = 0u;
              v275 = 0u;
              v278 = 0u;
              v279 = 0u;
            }

            v179 = v173 + v175;
            v180 = v67[6];
            if (v180 == 63)
            {
              v182 = *v179;
              v26 = *(v179 + 16);
              v183 = *(v179 + 32);
              v184 = *(v179 + 48);
              v268 = *v179;
              v269 = v183;
              v272 = v26;
              v273 = v184;
              v181 = 64;
            }

            else if (v180 == 1)
            {
              v182 = vld1q_dup_s16(v179);
              v268 = v182;
              v269 = v182;
              v272 = v182;
              v273 = v182;
              v181 = 2;
            }

            else if (v67[6])
            {
              v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v179, v180, *v176.i8, *v26.i8);
            }

            else
            {
              v181 = 0;
              v182.i64[0] = 0;
              v268 = 0u;
              v269 = 0u;
              v272 = 0u;
              v273 = 0u;
            }

            v185 = v179 + v181;
            v186 = v67[7];
            if (v186 == 63)
            {
              v27 = *v185;
              v26 = *(v185 + 16);
              v187 = *(v185 + 32);
              v188 = *(v185 + 48);
              v276 = *v185;
              v277 = v187;
              v280 = v26;
              v281 = v188;
              v15 = v237;
            }

            else
            {
              v15 = v237;
              if (v186 == 1)
              {
                v27 = vld1q_dup_s16(v185);
                v276 = v27;
                v277 = v27;
                v280 = v27;
                v281 = v27;
              }

              else if (v186)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 64, v185, v186, *v182.i8, *v26.i8);
              }

              else
              {
                v27.i64[0] = 0;
                v276 = 0u;
                v277 = 0u;
                v280 = 0u;
                v281 = 0u;
              }
            }

            v189 = v245;
            if (v245)
            {
              v190 = 0;
              v191 = &v250.i8[64 * v243 + 8 * v244];
              v192 = v246;
              do
              {
                if (v192)
                {
                  v193 = 0;
                  v194 = v241 + v242 * v190;
                  do
                  {
                    *(v194 + v193) = v191[v193];
                    ++v193;
                    v192 = v246;
                  }

                  while (8 * v246 > v193);
                  v189 = v245;
                }

                ++v190;
                v191 += 64;
              }

              while (v190 < v189);
            }
          }

LABEL_29:
          v20 = v34 == v228 >> 3;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v218;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v461 = v15;
  v17 = v16;
  v19 = v18;
  v458 = v20;
  v459 = v21;
  v441 = v22;
  v23 = v12;
  v604 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v462 = v14;
  v443 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v442 = v443 >> 3;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v457 = v31;
  if (*(v23 + 232) == 1)
  {
    v32 = *(v23 + 273);
    v33 = *(v23 + 272);
    v34 = __clz(v26);
    if (1 << v32 >= v17 || v19 >> v33)
    {
      if (!(v17 >> v32) && 1 << v33 < v19)
      {
        if (v17 < 2)
        {
          v37 = 0;
        }

        else
        {
          v37 = __clz(~(-1 << -__clz(v27))) | 0xFFFFFFE0;
        }

        v33 += v32 + v37;
        v32 = -v37;
      }
    }

    else
    {
      v35 = 32 - __clz(~(-1 << -v34));
      v36 = v33 + v32;
      if (v19 < 2)
      {
        v35 = 0;
      }

      v32 = v36 - v35;
      v33 = v35;
    }

    if (v19 < 2)
    {
      if (v33)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v34)) < v33)
    {
LABEL_27:
      v456 = 0;
LABEL_32:
      v453 = v33 - 3;
      v446 = v32 - 3;
      v39 = -1 << *(*(v23 + 208) + 48);
      v440 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = 32 - __clz(~(-1 << -__clz(v27)));
    }

    v456 = v38 >= v32;
    goto LABEL_32;
  }

  v456 = 0;
  v440 = 0;
  v446 = 0;
  v453 = 0;
LABEL_33:
  if (v25 <= v442)
  {
    v455 = v461 + a9 - 1;
    if (v461 >> 3 <= v455 >> 3)
    {
      v40 = a11;
      v465 = v26 >> 3;
      v449 = v26 & 7;
      v454 = (v26 & 7) + 1;
      v438 = v27 & 7;
      v439 = v27 >> 3;
      v437 = ~(-1 << v446);
      v447 = 4 * a11;
      v448 = 2 * a11;
      v41 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v42 = vcgt_u32(v41, 0xF0000000FLL);
      v445 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v41, 3uLL))))))), v42);
      v444 = v42;
      v463 = v23;
      do
      {
        v43 = (8 * v25) | 7;
        if (8 * v25 <= v462)
        {
          v44 = v462;
        }

        else
        {
          v44 = 8 * v25;
        }

        if (v443 < v43)
        {
          v43 = v443;
        }

        v452 = v44 - 8 * v25;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v438;
        v451 = v46;
        v48 = v46 != 8;
        v49 = v461 >> 3;
        v50 = v438 + 1;
        if (v25 != v439)
        {
          v50 = 8;
        }

        v464 = v50;
        if (v25 != v439)
        {
          v47 = v48;
        }

        v450 = v47;
        v51 = v25 & v437;
        v460 = v441 + (v44 - v462) * v40;
        v52 = v461;
        do
        {
          v54 = 8 * v49;
          v55 = 8 * (v49 + 1) - 1;
          if (8 * v49 <= v52)
          {
            v56 = v52;
          }

          else
          {
            v56 = 8 * v49;
          }

          if (v455 < v55)
          {
            v55 = v461 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v49 == v465)
          {
            v59 = v454;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (8 * v25 >= v462 && v54 >= v52)
          {
            v61 = v57 != v449;
            if (v49 != v465)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v450;
          }

          if (v456)
          {
            if (v453 | v446)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v453 != 0;
              v66 = v446 != 0;
              v67 = v453;
              v68 = v446;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v49 & ~(-1 << v453) & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v51 & v64) << v62++;
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
              v69 = v63 << 11;
            }

            else
            {
              v69 = 0;
            }

            v77 = v69 + *(v23 + 336) * ((v49 >> v453) + (v25 >> v446) * v440);
          }

          else if (v445)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v444.i8[4];
            v74 = v444.i8[0];
            v75 = v445.i32[1];
            v76 = v445.i32[0];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v49) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v25) << v70++;
              }

              else
              {
                v76 = 0;
              }

              v72 *= 2;
              --v70;
              v74 = v76 != 0;
              v73 = v75 != 0;
            }

            while (v76 | v75);
            v77 = v71 << 11;
          }

          else
          {
            v77 = 0;
          }

          v78 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v78 <= 1)
          {
            v78 = 1;
          }

          v79 = v78 + 7;
          if (v79 < 0x10)
          {
            v80 = 0;
          }

          else
          {
            v80 = 32 - __clz(~(-1 << -__clz((v79 >> 3) - 1)));
          }

          v81 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v81 <= 1)
          {
            v81 = 1;
          }

          v82 = v81 + 7;
          if (v82 < 0x10)
          {
            v83 = 0;
            if (!v80)
            {
LABEL_107:
              v89 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 3) - 1)));
            if (!(v83 | v80))
            {
              goto LABEL_107;
            }
          }

          v84 = 0;
          v85 = 0;
          v86 = v80 != 0;
          v87 = v83 != 0;
          v88 = 1;
          do
          {
            --v80;
            if (v86)
            {
              v85 |= (v88 & v49) << v84++;
            }

            else
            {
              v80 = 0;
            }

            --v83;
            if (v87)
            {
              v85 |= (v88 & v25) << v84++;
            }

            else
            {
              v83 = 0;
            }

            v88 *= 2;
            --v84;
            v87 = v83 != 0;
            v86 = v80 != 0;
          }

          while (v83 | v80);
          v89 = 8 * v85;
LABEL_108:
          v90 = (v458 + v77);
          if (v457)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v459 + v89);
          v92 = (v460 + 32 * (v56 - v52));
          if (!(v60 & 1 | (v59 < 8u)) && v464 > 7)
          {
            v93 = *v91;
            if (v93 == 255)
            {
              v102 = v90[1];
              v103 = v90[2];
              v104 = v90[3];
              v105 = v90[4];
              v106 = v90[5];
              v107 = v90[6];
              v108 = v90[7];
              v109 = v90[8];
              v110 = v90[9];
              v111 = v90[10];
              v112 = v90[11];
              v113 = v90[12];
              v114 = v90[13];
              v115 = v90[14];
              v116 = v90[15];
              v40 = a11;
              *v92 = *v90;
              v92[1] = v102;
              v92[2] = v103;
              v92[3] = v104;
              v117 = (v92 + a11);
              v92[4] = v109;
              v92[5] = v110;
              v92[6] = v111;
              v92[7] = v112;
              *v117 = v105;
              v117[1] = v106;
              v117[2] = v107;
              v117[3] = v108;
              v118 = (v92 + a11 + 64);
              v94 = 256;
              *v118 = v113;
              v118[1] = v114;
              v118[2] = v115;
              v118[3] = v116;
            }

            else
            {
              v40 = a11;
              if (v93 == 7)
              {
                v100 = vld1q_dup_f64(v90->f64);
                *v92 = v100;
                v92[1] = v100;
                v92[2] = v100;
                v92[3] = v100;
                v92[4] = v100;
                v92[5] = v100;
                v92[6] = v100;
                v92[7] = v100;
                v101 = (v92 + a11);
                *v101 = v100;
                v101[1] = v100;
                v101[2] = v100;
                v101[3] = v100;
                v101[4] = v100;
                v101[5] = v100;
                v101[6] = v100;
                v101[7] = v100;
                v94 = 8;
              }

              else if (*v91)
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
              }

              else
              {
                v94 = 0;
                v92[6] = 0u;
                v92[7] = 0u;
                v92[4] = 0u;
                v92[5] = 0u;
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v95 = (v92->f64 + a11);
                v95[6] = 0u;
                v95[7] = 0u;
                v95[4] = 0u;
                v95[5] = 0u;
                v95[2] = 0u;
                v95[3] = 0u;
                *v95 = 0u;
                v95[1] = 0u;
              }
            }

            v119 = v90 + v94;
            v120 = (v92 + v448);
            v121 = v91[1];
            if (v121 == 255)
            {
              v126 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              v129 = *(v119 + 64);
              v130 = *(v119 + 80);
              v131 = *(v119 + 96);
              v132 = *(v119 + 112);
              v133 = *(v119 + 128);
              v134 = *(v119 + 144);
              v135 = *(v119 + 160);
              v136 = *(v119 + 176);
              v137 = *(v119 + 192);
              v138 = *(v119 + 208);
              v139 = *(v119 + 224);
              v140 = *(v119 + 240);
              *v120 = *v119;
              v120[1] = v126;
              v120[2] = v127;
              v120[3] = v128;
              v141 = (v120->f64 + v40);
              v120[4] = v133;
              v120[5] = v134;
              v120[6] = v135;
              v120[7] = v136;
              *v141 = v129;
              v141[1] = v130;
              v141[2] = v131;
              v141[3] = v132;
              v142 = (v120[4].f64 + v40);
              v122 = 256;
              *v142 = v137;
              v142[1] = v138;
              v142[2] = v139;
              v142[3] = v140;
            }

            else if (v121 == 7)
            {
              v124 = vld1q_dup_f64(v119);
              *v120 = v124;
              v120[1] = v124;
              v120[2] = v124;
              v120[3] = v124;
              v120[4] = v124;
              v120[5] = v124;
              v120[6] = v124;
              v120[7] = v124;
              v125 = (v120 + v40);
              *v125 = v124;
              v125[1] = v124;
              v125[2] = v124;
              v125[3] = v124;
              v125[4] = v124;
              v125[5] = v124;
              v125[6] = v124;
              v125[7] = v124;
              v122 = 8;
            }

            else if (v91[1])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v448, v40, v119, v121);
            }

            else
            {
              v122 = 0;
              v120[6] = 0u;
              v120[7] = 0u;
              v120[4] = 0u;
              v120[5] = 0u;
              v120[2] = 0u;
              v120[3] = 0u;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = (v120->f64 + v40);
              v123[6] = 0u;
              v123[7] = 0u;
              v123[4] = 0u;
              v123[5] = 0u;
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
            }

            v143 = v119 + v122;
            f64 = v92[8].f64;
            v145 = v91[2];
            if (v145 == 255)
            {
              v150 = *(v143 + 16);
              v151 = *(v143 + 32);
              v152 = *(v143 + 48);
              v153 = *(v143 + 64);
              v154 = *(v143 + 80);
              v155 = *(v143 + 96);
              v156 = *(v143 + 112);
              v157 = *(v143 + 128);
              v158 = *(v143 + 144);
              v159 = *(v143 + 160);
              v160 = *(v143 + 176);
              v161 = *(v143 + 192);
              v162 = *(v143 + 208);
              v163 = *(v143 + 224);
              v164 = *(v143 + 240);
              *f64 = *v143;
              v92[9] = v150;
              v92[10] = v151;
              v92[11] = v152;
              v165 = (f64 + v40);
              v92[12] = v157;
              v92[13] = v158;
              v92[14] = v159;
              v92[15] = v160;
              *v165 = v153;
              v165[1] = v154;
              v165[2] = v155;
              v165[3] = v156;
              v165 += 4;
              v146 = 256;
              *v165 = v161;
              v165[1] = v162;
              v165[2] = v163;
              v165[3] = v164;
            }

            else if (v145 == 7)
            {
              v148 = vld1q_dup_f64(v143);
              v92[8] = v148;
              v92[9] = v148;
              v92[10] = v148;
              v92[11] = v148;
              v92[12] = v148;
              v92[13] = v148;
              v92[14] = v148;
              v92[15] = v148;
              v149 = (f64 + v40);
              *v149 = v148;
              v149[1] = v148;
              v149[2] = v148;
              v149[3] = v148;
              v149[4] = v148;
              v149[5] = v148;
              v149[6] = v148;
              v149[7] = v148;
              v146 = 8;
            }

            else if (v91[2])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v40, v143, v145);
            }

            else
            {
              v146 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              v92[12] = 0u;
              v92[13] = 0u;
              v92[10] = 0u;
              v92[11] = 0u;
              *f64 = 0u;
              v92[9] = 0u;
              v147 = (f64 + v40);
              v147[6] = 0u;
              v147[7] = 0u;
              v147[4] = 0u;
              v147[5] = 0u;
              v147[2] = 0u;
              v147[3] = 0u;
              *v147 = 0u;
              v147[1] = 0u;
            }

            v166 = v143 + v146;
            v167 = v120[8].f64;
            v168 = v91[3];
            if (v168 == 255)
            {
              v173 = *(v166 + 16);
              v174 = *(v166 + 32);
              v175 = *(v166 + 48);
              v176 = *(v166 + 64);
              v177 = *(v166 + 80);
              v178 = *(v166 + 96);
              v179 = *(v166 + 112);
              v180 = *(v166 + 128);
              v181 = *(v166 + 144);
              v182 = *(v166 + 160);
              v183 = *(v166 + 176);
              v184 = *(v166 + 192);
              v185 = *(v166 + 208);
              v186 = *(v166 + 224);
              v187 = *(v166 + 240);
              *v167 = *v166;
              v120[9] = v173;
              v120[10] = v174;
              v120[11] = v175;
              v188 = (v167 + v40);
              v120[12] = v180;
              v120[13] = v181;
              v120[14] = v182;
              v120[15] = v183;
              *v188 = v176;
              v188[1] = v177;
              v188[2] = v178;
              v188[3] = v179;
              v188 += 4;
              v169 = 256;
              *v188 = v184;
              v188[1] = v185;
              v188[2] = v186;
              v188[3] = v187;
            }

            else if (v168 == 7)
            {
              v171 = vld1q_dup_f64(v166);
              v120[8] = v171;
              v120[9] = v171;
              v120[10] = v171;
              v120[11] = v171;
              v120[12] = v171;
              v120[13] = v171;
              v120[14] = v171;
              v120[15] = v171;
              v172 = (v167 + v40);
              *v172 = v171;
              v172[1] = v171;
              v172[2] = v171;
              v172[3] = v171;
              v172[4] = v171;
              v172[5] = v171;
              v169 = 8;
              v172[6] = v171;
              v172[7] = v171;
            }

            else if (v91[3])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v40, v166, v168);
            }

            else
            {
              v169 = 0;
              v120[14] = 0u;
              v120[15] = 0u;
              v120[12] = 0u;
              v120[13] = 0u;
              v120[10] = 0u;
              v120[11] = 0u;
              *v167 = 0u;
              v120[9] = 0u;
              v170 = (v167 + v40);
              v170[6] = 0u;
              v170[7] = 0u;
              v170[4] = 0u;
              v170[5] = 0u;
              v170[2] = 0u;
              v170[3] = 0u;
              *v170 = 0u;
              v170[1] = 0u;
            }

            v189 = v166 + v169;
            v190 = (v92 + v447);
            v191 = v91[4];
            if (v191 == 255)
            {
              v196 = *(v189 + 16);
              v197 = *(v189 + 32);
              v198 = *(v189 + 48);
              v199 = *(v189 + 64);
              v200 = *(v189 + 80);
              v201 = *(v189 + 96);
              v202 = *(v189 + 112);
              v203 = *(v189 + 128);
              v204 = *(v189 + 144);
              v205 = *(v189 + 160);
              v206 = *(v189 + 176);
              v207 = *(v189 + 192);
              v208 = *(v189 + 208);
              v209 = *(v189 + 224);
              v210 = *(v189 + 240);
              *v190 = *v189;
              v190[1] = v196;
              v190[2] = v197;
              v190[3] = v198;
              v211 = (v190->f64 + v40);
              v190[4] = v203;
              v190[5] = v204;
              v190[6] = v205;
              v190[7] = v206;
              *v211 = v199;
              v211[1] = v200;
              v211[2] = v201;
              v211[3] = v202;
              v212 = (v190[4].f64 + v40);
              v192 = 256;
              *v212 = v207;
              v212[1] = v208;
              v212[2] = v209;
              v212[3] = v210;
            }

            else if (v191 == 7)
            {
              v194 = vld1q_dup_f64(v189);
              *v190 = v194;
              v190[1] = v194;
              v190[2] = v194;
              v190[3] = v194;
              v190[4] = v194;
              v190[5] = v194;
              v190[6] = v194;
              v190[7] = v194;
              v195 = (v190 + v40);
              *v195 = v194;
              v195[1] = v194;
              v195[2] = v194;
              v195[3] = v194;
              v195[4] = v194;
              v195[5] = v194;
              v195[6] = v194;
              v195[7] = v194;
              v192 = 8;
            }

            else if (v91[4])
            {
              v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v447, v40, v189, v191);
            }

            else
            {
              v192 = 0;
              v190[6] = 0u;
              v190[7] = 0u;
              v190[4] = 0u;
              v190[5] = 0u;
              v190[2] = 0u;
              v190[3] = 0u;
              *v190 = 0u;
              v190[1] = 0u;
              v193 = (v190->f64 + v40);
              v193[6] = 0u;
              v193[7] = 0u;
              v193[4] = 0u;
              v193[5] = 0u;
              v193[2] = 0u;
              v193[3] = 0u;
              *v193 = 0u;
              v193[1] = 0u;
            }

            v213 = v189 + v192;
            v214 = (v92 + 6 * a11);
            v215 = v91[5];
            if (v215 == 255)
            {
              v220 = *(v213 + 16);
              v221 = *(v213 + 32);
              v222 = *(v213 + 48);
              v223 = *(v213 + 64);
              v224 = *(v213 + 80);
              v225 = *(v213 + 96);
              v226 = *(v213 + 112);
              v227 = *(v213 + 128);
              v228 = *(v213 + 144);
              v229 = *(v213 + 160);
              v230 = *(v213 + 176);
              v231 = *(v213 + 192);
              v232 = *(v213 + 208);
              v233 = *(v213 + 224);
              v234 = *(v213 + 240);
              *v214 = *v213;
              v214[1] = v220;
              v214[2] = v221;
              v214[3] = v222;
              v235 = (v214->f64 + v40);
              v214[4] = v227;
              v214[5] = v228;
              v214[6] = v229;
              v214[7] = v230;
              *v235 = v223;
              v235[1] = v224;
              v235[2] = v225;
              v235[3] = v226;
              v236 = (v214[4].f64 + v40);
              v216 = 256;
              *v236 = v231;
              v236[1] = v232;
              v236[2] = v233;
              v236[3] = v234;
            }

            else if (v215 == 7)
            {
              v218 = vld1q_dup_f64(v213);
              *v214 = v218;
              v214[1] = v218;
              v214[2] = v218;
              v214[3] = v218;
              v214[4] = v218;
              v214[5] = v218;
              v214[6] = v218;
              v214[7] = v218;
              v219 = (v214 + v40);
              *v219 = v218;
              v219[1] = v218;
              v219[2] = v218;
              v219[3] = v218;
              v219[4] = v218;
              v219[5] = v218;
              v219[6] = v218;
              v219[7] = v218;
              v216 = 8;
            }

            else if (v91[5])
            {
              v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v214, v40, v213, v215);
            }

            else
            {
              v216 = 0;
              v214[6] = 0u;
              v214[7] = 0u;
              v214[4] = 0u;
              v214[5] = 0u;
              v214[2] = 0u;
              v214[3] = 0u;
              *v214 = 0u;
              v214[1] = 0u;
              v217 = (v214->f64 + v40);
              v217[6] = 0u;
              v217[7] = 0u;
              v217[4] = 0u;
              v217[5] = 0u;
              v217[2] = 0u;
              v217[3] = 0u;
              *v217 = 0u;
              v217[1] = 0u;
            }

            v237 = v213 + v216;
            v238 = v190[8].f64;
            v239 = v91[6];
            if (v239 == 255)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              v251 = *(v237 + 128);
              v252 = *(v237 + 144);
              v253 = *(v237 + 160);
              v254 = *(v237 + 176);
              v255 = *(v237 + 192);
              v256 = *(v237 + 208);
              v257 = *(v237 + 224);
              v258 = *(v237 + 240);
              *v238 = *v237;
              v190[9] = v244;
              v190[10] = v245;
              v190[11] = v246;
              v259 = (v238 + v40);
              v190[12] = v251;
              v190[13] = v252;
              v190[14] = v253;
              v190[15] = v254;
              *v259 = v247;
              v259[1] = v248;
              v259[2] = v249;
              v259[3] = v250;
              v259 += 4;
              v240 = 256;
              *v259 = v255;
              v259[1] = v256;
              v259[2] = v257;
              v259[3] = v258;
            }

            else if (v239 == 7)
            {
              v242 = vld1q_dup_f64(v237);
              v190[8] = v242;
              v190[9] = v242;
              v190[10] = v242;
              v190[11] = v242;
              v190[12] = v242;
              v190[13] = v242;
              v190[14] = v242;
              v190[15] = v242;
              v243 = (v238 + v40);
              *v243 = v242;
              v243[1] = v242;
              v243[2] = v242;
              v243[3] = v242;
              v243[4] = v242;
              v243[5] = v242;
              v240 = 8;
              v243[6] = v242;
              v243[7] = v242;
            }

            else if (v91[6])
            {
              v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v40, v237, v239);
            }

            else
            {
              v240 = 0;
              v190[14] = 0u;
              v190[15] = 0u;
              v190[12] = 0u;
              v190[13] = 0u;
              v190[10] = 0u;
              v190[11] = 0u;
              *v238 = 0u;
              v190[9] = 0u;
              v241 = (v238 + v40);
              v241[6] = 0u;
              v241[7] = 0u;
              v241[4] = 0u;
              v241[5] = 0u;
              v241[2] = 0u;
              v241[3] = 0u;
              *v241 = 0u;
              v241[1] = 0u;
            }

            v260 = v237 + v240;
            v261 = v214[8].f64;
            v262 = v91[7];
            if (v262 == 255)
            {
              v266 = *(v260 + 16);
              v267 = *(v260 + 32);
              v268 = *(v260 + 48);
              v269 = *(v260 + 64);
              v270 = *(v260 + 80);
              v271 = *(v260 + 96);
              v272 = *(v260 + 112);
              v273 = *(v260 + 128);
              v274 = *(v260 + 144);
              v275 = *(v260 + 160);
              v276 = *(v260 + 176);
              v277 = *(v260 + 192);
              v278 = *(v260 + 208);
              v279 = *(v260 + 224);
              v280 = *(v260 + 240);
              *v261 = *v260;
              v214[9] = v266;
              v214[10] = v267;
              v214[11] = v268;
              v281 = (v261 + v40);
              v214[12] = v273;
              v214[13] = v274;
              v214[14] = v275;
              v214[15] = v276;
              *v281 = v269;
              v281[1] = v270;
              v281[2] = v271;
              v281[3] = v272;
              v281 += 4;
              *v281 = v277;
              v281[1] = v278;
              v281[2] = v279;
              v281[3] = v280;
              v52 = v461;
              v23 = v463;
            }

            else
            {
              v23 = v463;
              if (v262 == 7)
              {
                v264 = vld1q_dup_f64(v260);
                v214[8] = v264;
                v214[9] = v264;
                v214[10] = v264;
                v214[11] = v264;
                v214[12] = v264;
                v214[13] = v264;
                v214[14] = v264;
                v214[15] = v264;
                v265 = (v261 + v40);
                *v265 = v264;
                v265[1] = v264;
                v265[2] = v264;
                v265[3] = v264;
                v265[4] = v264;
                v265[5] = v264;
                v265[6] = v264;
                v265[7] = v264;
              }

              else if (v262)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v261, v40, v260, v262);
              }

              else
              {
                v214[14] = 0u;
                v214[15] = 0u;
                v214[12] = 0u;
                v214[13] = 0u;
                v214[10] = 0u;
                v214[11] = 0u;
                *v261 = 0u;
                v214[9] = 0u;
                v263 = (v261 + v40);
                v263[6] = 0u;
                v263[7] = 0u;
                v263[4] = 0u;
                v263[5] = 0u;
                v263[2] = 0u;
                v263[3] = 0u;
                *v263 = 0u;
                v263[1] = 0u;
              }

              v52 = v461;
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v96 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v463;
          block[5] = v90;
          v473 = v59;
          v474 = v464;
          v469 = v452;
          v470 = v56 - v54;
          block[6] = v91;
          v467 = v92;
          v40 = a11;
          v468 = a11;
          v471 = v451;
          v472 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v463 + 8) + 16552), block);
            v52 = v461;
            v23 = v463;
LABEL_49:
            v51 = v25 & v437;
            v53 = v49 + 1;
            goto LABEL_50;
          }

          v97 = v96;
          v98 = *v91;
          if (v98 == 255)
          {
            v283 = v90[1];
            v284 = v90[2];
            v285 = v90[3];
            v286 = v90[4];
            v287 = v90[5];
            v288 = v90[6];
            v289 = v90[7];
            v290 = v90[8];
            v291 = v90[9];
            v292 = v90[10];
            v293 = v90[11];
            v294 = v90[12];
            v295 = v90[13];
            v296 = v90[14];
            v297 = v90[15];
            v476 = *v90;
            v477 = v283;
            v478 = v284;
            v479 = v285;
            v480 = v290;
            v481 = v291;
            v482 = v292;
            v483 = v293;
            v492 = v286;
            v493 = v287;
            v494 = v288;
            v495 = v289;
            v99 = 256;
            v496 = v294;
            v497 = v295;
            v498 = v296;
            v499 = v297;
          }

          else if (v98 == 7)
          {
            v282 = vld1q_dup_f64(v90->f64);
            v476 = v282;
            v477 = v282;
            v478 = v282;
            v479 = v282;
            v480 = v282;
            v481 = v282;
            v482 = v282;
            v483 = v282;
            v492 = v282;
            v493 = v282;
            v494 = v282;
            v495 = v282;
            v496 = v282;
            v497 = v282;
            v99 = 8;
            v498 = v282;
            v499 = v282;
          }

          else if (*v91)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v476, 256, v90, v98);
          }

          else
          {
            v99 = 0;
            v483 = 0u;
            v482 = 0u;
            v481 = 0u;
            v480 = 0u;
            v479 = 0u;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v492 = 0u;
            v493 = 0u;
            v494 = 0u;
            v495 = 0u;
            v496 = 0u;
            v497 = 0u;
            v498 = 0u;
            v499 = 0u;
          }

          v298 = v90 + v99;
          v299 = v91[1];
          if (v299 == 255)
          {
            v302 = *(v298 + 16);
            v303 = *(v298 + 32);
            v304 = *(v298 + 48);
            v305 = *(v298 + 64);
            v306 = *(v298 + 80);
            v307 = *(v298 + 96);
            v308 = *(v298 + 112);
            v309 = *(v298 + 128);
            v310 = *(v298 + 144);
            v311 = *(v298 + 160);
            v312 = *(v298 + 176);
            v313 = *(v298 + 192);
            v314 = *(v298 + 208);
            v315 = *(v298 + 224);
            v316 = *(v298 + 240);
            v508 = *v298;
            v509 = v302;
            v510 = v303;
            v511 = v304;
            v512 = v309;
            v513 = v310;
            v514 = v311;
            v515 = v312;
            v524 = v305;
            v525 = v306;
            v526 = v307;
            v527 = v308;
            v300 = 256;
            v528 = v313;
            v529 = v314;
            v530 = v315;
            v531 = v316;
          }

          else if (v299 == 7)
          {
            v301 = vld1q_dup_f64(v298);
            v508 = v301;
            v509 = v301;
            v510 = v301;
            v511 = v301;
            v512 = v301;
            v513 = v301;
            v514 = v301;
            v515 = v301;
            v524 = v301;
            v525 = v301;
            v526 = v301;
            v527 = v301;
            v528 = v301;
            v529 = v301;
            v300 = 8;
            v530 = v301;
            v531 = v301;
          }

          else if (v91[1])
          {
            v300 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v508, 256, v298, v299);
          }

          else
          {
            v300 = 0;
            v514 = 0u;
            v515 = 0u;
            v512 = 0u;
            v513 = 0u;
            v510 = 0u;
            v511 = 0u;
            v508 = 0u;
            v509 = 0u;
            v524 = 0u;
            v525 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
          }

          v317 = v298 + v300;
          v318 = v91[2];
          if (v318 == 255)
          {
            v321 = *(v317 + 16);
            v322 = *(v317 + 32);
            v323 = *(v317 + 48);
            v324 = *(v317 + 64);
            v325 = *(v317 + 80);
            v326 = *(v317 + 96);
            v327 = *(v317 + 112);
            v328 = *(v317 + 128);
            v329 = *(v317 + 144);
            v330 = *(v317 + 160);
            v331 = *(v317 + 176);
            v332 = *(v317 + 192);
            v333 = *(v317 + 208);
            v334 = *(v317 + 224);
            v335 = *(v317 + 240);
            v484 = *v317;
            v485 = v321;
            v486 = v322;
            v487 = v323;
            v488 = v328;
            v489 = v329;
            v490 = v330;
            v491 = v331;
            v500 = v324;
            v501 = v325;
            v502 = v326;
            v503 = v327;
            v319 = 256;
            v504 = v332;
            v505 = v333;
            v506 = v334;
            v507 = v335;
          }

          else if (v318 == 7)
          {
            v320 = vld1q_dup_f64(v317);
            v484 = v320;
            v485 = v320;
            v486 = v320;
            v487 = v320;
            v488 = v320;
            v489 = v320;
            v490 = v320;
            v491 = v320;
            v500 = v320;
            v501 = v320;
            v502 = v320;
            v503 = v320;
            v504 = v320;
            v505 = v320;
            v319 = 8;
            v506 = v320;
            v507 = v320;
          }

          else if (v91[2])
          {
            v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v484, 256, v317, v318);
          }

          else
          {
            v319 = 0;
            v490 = 0u;
            v491 = 0u;
            v488 = 0u;
            v489 = 0u;
            v486 = 0u;
            v487 = 0u;
            v484 = 0u;
            v485 = 0u;
            v500 = 0u;
            v501 = 0u;
            v502 = 0u;
            v503 = 0u;
            v504 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
          }

          v336 = v317 + v319;
          v337 = v91[3];
          if (v337 == 255)
          {
            v340 = *(v336 + 16);
            v341 = *(v336 + 32);
            v342 = *(v336 + 48);
            v343 = *(v336 + 64);
            v344 = *(v336 + 80);
            v345 = *(v336 + 96);
            v346 = *(v336 + 112);
            v347 = *(v336 + 128);
            v348 = *(v336 + 144);
            v349 = *(v336 + 160);
            v350 = *(v336 + 176);
            v351 = *(v336 + 192);
            v352 = *(v336 + 208);
            v353 = *(v336 + 224);
            v354 = *(v336 + 240);
            v516 = *v336;
            v517 = v340;
            v518 = v341;
            v519 = v342;
            v520 = v347;
            v521 = v348;
            v522 = v349;
            v523 = v350;
            v532 = v343;
            v533 = v344;
            v534 = v345;
            v535 = v346;
            v338 = 256;
            v536 = v351;
            v537 = v352;
            v538 = v353;
            v539 = v354;
          }

          else if (v337 == 7)
          {
            v339 = vld1q_dup_f64(v336);
            v516 = v339;
            v517 = v339;
            v518 = v339;
            v519 = v339;
            v520 = v339;
            v521 = v339;
            v522 = v339;
            v523 = v339;
            v532 = v339;
            v533 = v339;
            v534 = v339;
            v535 = v339;
            v536 = v339;
            v537 = v339;
            v338 = 8;
            v538 = v339;
            v539 = v339;
          }

          else if (v91[3])
          {
            v338 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v516, 256, v336, v337);
          }

          else
          {
            v338 = 0;
            v522 = 0u;
            v523 = 0u;
            v520 = 0u;
            v521 = 0u;
            v518 = 0u;
            v519 = 0u;
            v516 = 0u;
            v517 = 0u;
            v532 = 0u;
            v533 = 0u;
            v534 = 0u;
            v535 = 0u;
            v536 = 0u;
            v537 = 0u;
            v538 = 0u;
            v539 = 0u;
          }

          v355 = v336 + v338;
          v356 = v91[4];
          if (v356 == 255)
          {
            v359 = *(v355 + 16);
            v360 = *(v355 + 32);
            v361 = *(v355 + 48);
            v362 = *(v355 + 64);
            v363 = *(v355 + 80);
            v364 = *(v355 + 96);
            v365 = *(v355 + 112);
            v366 = *(v355 + 128);
            v367 = *(v355 + 144);
            v368 = *(v355 + 160);
            v369 = *(v355 + 176);
            v370 = *(v355 + 192);
            v371 = *(v355 + 208);
            v372 = *(v355 + 224);
            v373 = *(v355 + 240);
            v540 = *v355;
            v541 = v359;
            v542 = v360;
            v543 = v361;
            v544 = v366;
            v545 = v367;
            v546 = v368;
            v547 = v369;
            v556 = v362;
            v557 = v363;
            v558 = v364;
            v559 = v365;
            v357 = 256;
            v560 = v370;
            v561 = v371;
            v562 = v372;
            v563 = v373;
          }

          else if (v356 == 7)
          {
            v358 = vld1q_dup_f64(v355);
            v540 = v358;
            v541 = v358;
            v542 = v358;
            v543 = v358;
            v544 = v358;
            v545 = v358;
            v546 = v358;
            v547 = v358;
            v556 = v358;
            v557 = v358;
            v558 = v358;
            v559 = v358;
            v560 = v358;
            v561 = v358;
            v562 = v358;
            v357 = 8;
            v563 = v358;
          }

          else if (v91[4])
          {
            v357 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v540, 256, v355, v356);
          }

          else
          {
            v357 = 0;
            v546 = 0u;
            v547 = 0u;
            v544 = 0u;
            v545 = 0u;
            v542 = 0u;
            v543 = 0u;
            v540 = 0u;
            v541 = 0u;
            v556 = 0u;
            v557 = 0u;
            v558 = 0u;
            v559 = 0u;
            v560 = 0u;
            v561 = 0u;
            v562 = 0u;
            v563 = 0u;
          }

          v374 = v355 + v357;
          v375 = v91[5];
          if (v375 == 255)
          {
            v378 = *(v374 + 16);
            v379 = *(v374 + 32);
            v380 = *(v374 + 48);
            v381 = *(v374 + 64);
            v382 = *(v374 + 80);
            v383 = *(v374 + 96);
            v384 = *(v374 + 112);
            v385 = *(v374 + 128);
            v386 = *(v374 + 144);
            v387 = *(v374 + 160);
            v388 = *(v374 + 176);
            v389 = *(v374 + 192);
            v390 = *(v374 + 208);
            v391 = *(v374 + 224);
            v392 = *(v374 + 240);
            v572 = *v374;
            v573 = v378;
            v574 = v379;
            v575 = v380;
            v576 = v385;
            v577 = v386;
            v578 = v387;
            v579 = v388;
            v588 = v381;
            v589 = v382;
            v590 = v383;
            v591 = v384;
            v376 = 256;
            v592 = v389;
            v593 = v390;
            v594 = v391;
            v595 = v392;
          }

          else if (v375 == 7)
          {
            v377 = vld1q_dup_f64(v374);
            v572 = v377;
            v573 = v377;
            v574 = v377;
            v575 = v377;
            v576 = v377;
            v577 = v377;
            v578 = v377;
            v579 = v377;
            v588 = v377;
            v589 = v377;
            v590 = v377;
            v591 = v377;
            v592 = v377;
            v593 = v377;
            v594 = v377;
            v376 = 8;
            v595 = v377;
          }

          else if (v91[5])
          {
            v376 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v572, 256, v374, v375);
          }

          else
          {
            v376 = 0;
            v578 = 0u;
            v579 = 0u;
            v576 = 0u;
            v577 = 0u;
            v574 = 0u;
            v575 = 0u;
            v572 = 0u;
            v573 = 0u;
            v588 = 0u;
            v589 = 0u;
            v590 = 0u;
            v591 = 0u;
            v592 = 0u;
            v593 = 0u;
            v594 = 0u;
            v595 = 0u;
          }

          v393 = v374 + v376;
          v394 = v91[6];
          if (v394 == 255)
          {
            v397 = *(v393 + 16);
            v398 = *(v393 + 32);
            v399 = *(v393 + 48);
            v400 = *(v393 + 64);
            v401 = *(v393 + 80);
            v402 = *(v393 + 96);
            v403 = *(v393 + 112);
            v404 = *(v393 + 128);
            v405 = *(v393 + 144);
            v406 = *(v393 + 160);
            v407 = *(v393 + 176);
            v408 = *(v393 + 192);
            v409 = *(v393 + 208);
            v410 = *(v393 + 224);
            v411 = *(v393 + 240);
            v548 = *v393;
            v549 = v397;
            v550 = v398;
            v551 = v399;
            v552 = v404;
            v553 = v405;
            v554 = v406;
            v555 = v407;
            v564 = v400;
            v565 = v401;
            v566 = v402;
            v567 = v403;
            v395 = 256;
            v568 = v408;
            v569 = v409;
            v570 = v410;
            v571 = v411;
          }

          else if (v394 == 7)
          {
            v396 = vld1q_dup_f64(v393);
            v548 = v396;
            v549 = v396;
            v550 = v396;
            v551 = v396;
            v552 = v396;
            v553 = v396;
            v554 = v396;
            v555 = v396;
            v564 = v396;
            v565 = v396;
            v566 = v396;
            v567 = v396;
            v568 = v396;
            v569 = v396;
            v570 = v396;
            v395 = 8;
            v571 = v396;
          }

          else if (v91[6])
          {
            v395 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v548, 256, v393, v394);
          }

          else
          {
            v395 = 0;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            v550 = 0u;
            v551 = 0u;
            v548 = 0u;
            v549 = 0u;
            v564 = 0u;
            v565 = 0u;
            v566 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
          }

          v412 = v393 + v395;
          v413 = v91[7];
          if (v413 == 255)
          {
            v417 = *(v412 + 16);
            v418 = *(v412 + 32);
            v419 = *(v412 + 48);
            v420 = *(v412 + 64);
            v421 = *(v412 + 80);
            v422 = *(v412 + 96);
            v423 = *(v412 + 112);
            v424 = *(v412 + 128);
            v425 = *(v412 + 144);
            v426 = *(v412 + 160);
            v427 = *(v412 + 176);
            v428 = *(v412 + 192);
            v429 = *(v412 + 208);
            v430 = *(v412 + 224);
            v431 = *(v412 + 240);
            v580 = *v412;
            v581 = v417;
            v582 = v418;
            v583 = v419;
            v584 = v424;
            v585 = v425;
            v586 = v426;
            v587 = v427;
            v596 = v420;
            v597 = v421;
            v598 = v422;
            v599 = v423;
            v414 = v451;
            v415 = v452;
            v600 = v428;
            v601 = v429;
            v602 = v430;
            v603 = v431;
            v52 = v461;
            v23 = v463;
          }

          else
          {
            v52 = v461;
            v23 = v463;
            if (v413 == 7)
            {
              v416 = vld1q_dup_f64(v412);
              v580 = v416;
              v581 = v416;
              v582 = v416;
              v583 = v416;
              v584 = v416;
              v585 = v416;
              v586 = v416;
              v587 = v416;
              v596 = v416;
              v597 = v416;
              v598 = v416;
              v599 = v416;
              v600 = v416;
              v601 = v416;
              v602 = v416;
              v414 = v451;
              v415 = v452;
              v603 = v416;
            }

            else if (v413)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v580, 256, v412, v413);
              v415 = v469;
              v97 = v470;
              v414 = v471;
            }

            else
            {
              v586 = 0u;
              v587 = 0u;
              v584 = 0u;
              v585 = 0u;
              v582 = 0u;
              v583 = 0u;
              v580 = 0u;
              v581 = 0u;
              v596 = 0u;
              v597 = 0u;
              v598 = 0u;
              v599 = 0u;
              v600 = 0u;
              v601 = 0u;
              v414 = v451;
              v415 = v452;
              v602 = 0u;
              v603 = 0u;
            }
          }

          v51 = v25 & v437;
          v53 = v49 + 1;
          if (v414)
          {
            v432 = 0;
            v433 = &v476.f64[32 * v415 + 4 * v97];
            v434 = v472;
            do
            {
              if (v434)
              {
                v435 = 0;
                v436 = v467 + v468 * v432;
                do
                {
                  v436[v435] = *(v433 + v435);
                  ++v435;
                  v434 = v472;
                }

                while (32 * v472 > v435);
                v414 = v471;
              }

              ++v432;
              v433 += 16;
            }

            while (v432 < v414);
          }

LABEL_50:
          v28 = v49 == v455 >> 3;
          v49 = v53;
        }

        while (!v28);
        v28 = v25++ == v442;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v461 = v15;
  v17 = v16;
  v19 = v18;
  v458 = v20;
  v459 = v21;
  v441 = v22;
  v23 = v12;
  v604 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v462 = v14;
  v443 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v442 = v443 >> 3;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v457 = v31;
  if (*(v23 + 232) == 1)
  {
    v32 = *(v23 + 273);
    v33 = *(v23 + 272);
    v34 = __clz(v26);
    if (1 << v32 >= v17 || v19 >> v33)
    {
      if (!(v17 >> v32) && 1 << v33 < v19)
      {
        if (v17 < 2)
        {
          v37 = 0;
        }

        else
        {
          v37 = __clz(~(-1 << -__clz(v27))) | 0xFFFFFFE0;
        }

        v33 += v32 + v37;
        v32 = -v37;
      }
    }

    else
    {
      v35 = 32 - __clz(~(-1 << -v34));
      v36 = v33 + v32;
      if (v19 < 2)
      {
        v35 = 0;
      }

      v32 = v36 - v35;
      v33 = v35;
    }

    if (v19 < 2)
    {
      if (v33)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v34)) < v33)
    {
LABEL_27:
      v456 = 0;
LABEL_32:
      v453 = v33 - 3;
      v446 = v32 - 3;
      v39 = -1 << *(*(v23 + 208) + 48);
      v440 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = 32 - __clz(~(-1 << -__clz(v27)));
    }

    v456 = v38 >= v32;
    goto LABEL_32;
  }

  v456 = 0;
  v440 = 0;
  v446 = 0;
  v453 = 0;
LABEL_33:
  if (v25 <= v442)
  {
    v455 = v461 + a9 - 1;
    if (v461 >> 3 <= v455 >> 3)
    {
      v40 = a11;
      v465 = v26 >> 3;
      v449 = v26 & 7;
      v454 = (v26 & 7) + 1;
      v438 = v27 & 7;
      v439 = v27 >> 3;
      v437 = ~(-1 << v446);
      v447 = 4 * a11;
      v448 = 2 * a11;
      v41 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v42 = vcgt_u32(v41, 0xF0000000FLL);
      v445 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v41, 3uLL))))))), v42);
      v444 = v42;
      v463 = v23;
      do
      {
        v43 = (8 * v25) | 7;
        if (8 * v25 <= v462)
        {
          v44 = v462;
        }

        else
        {
          v44 = 8 * v25;
        }

        if (v443 < v43)
        {
          v43 = v443;
        }

        v452 = v44 - 8 * v25;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v438;
        v451 = v46;
        v48 = v46 != 8;
        v49 = v461 >> 3;
        v50 = v438 + 1;
        if (v25 != v439)
        {
          v50 = 8;
        }

        v464 = v50;
        if (v25 != v439)
        {
          v47 = v48;
        }

        v450 = v47;
        v51 = v25 & v437;
        v460 = v441 + (v44 - v462) * v40;
        v52 = v461;
        do
        {
          v54 = 8 * v49;
          v55 = 8 * (v49 + 1) - 1;
          if (8 * v49 <= v52)
          {
            v56 = v52;
          }

          else
          {
            v56 = 8 * v49;
          }

          if (v455 < v55)
          {
            v55 = v461 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v49 == v465)
          {
            v59 = v454;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (8 * v25 >= v462 && v54 >= v52)
          {
            v61 = v57 != v449;
            if (v49 != v465)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v450;
          }

          if (v456)
          {
            if (v453 | v446)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v453 != 0;
              v66 = v446 != 0;
              v67 = v453;
              v68 = v446;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v49 & ~(-1 << v453) & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v51 & v64) << v62++;
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
              v69 = v63 << 11;
            }

            else
            {
              v69 = 0;
            }

            v77 = v69 + *(v23 + 336) * ((v49 >> v453) + (v25 >> v446) * v440);
          }

          else if (v445)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v444.i8[4];
            v74 = v444.i8[0];
            v75 = v445.i32[1];
            v76 = v445.i32[0];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v49) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v25) << v70++;
              }

              else
              {
                v76 = 0;
              }

              v72 *= 2;
              --v70;
              v74 = v76 != 0;
              v73 = v75 != 0;
            }

            while (v76 | v75);
            v77 = v71 << 11;
          }

          else
          {
            v77 = 0;
          }

          v78 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v78 <= 1)
          {
            v78 = 1;
          }

          v79 = v78 + 7;
          if (v79 < 0x10)
          {
            v80 = 0;
          }

          else
          {
            v80 = 32 - __clz(~(-1 << -__clz((v79 >> 3) - 1)));
          }

          v81 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v81 <= 1)
          {
            v81 = 1;
          }

          v82 = v81 + 7;
          if (v82 < 0x10)
          {
            v83 = 0;
            if (!v80)
            {
LABEL_107:
              v89 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 3) - 1)));
            if (!(v83 | v80))
            {
              goto LABEL_107;
            }
          }

          v84 = 0;
          v85 = 0;
          v86 = v80 != 0;
          v87 = v83 != 0;
          v88 = 1;
          do
          {
            --v80;
            if (v86)
            {
              v85 |= (v88 & v49) << v84++;
            }

            else
            {
              v80 = 0;
            }

            --v83;
            if (v87)
            {
              v85 |= (v88 & v25) << v84++;
            }

            else
            {
              v83 = 0;
            }

            v88 *= 2;
            --v84;
            v87 = v83 != 0;
            v86 = v80 != 0;
          }

          while (v83 | v80);
          v89 = 8 * v85;
LABEL_108:
          v90 = (v458 + v77);
          if (v457)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v459 + v89);
          v92 = (v460 + 32 * (v56 - v52));
          if (!(v60 & 1 | (v59 < 8u)) && v464 > 7)
          {
            v93 = *v91;
            if (v93 == 255)
            {
              v102 = v90[1];
              v103 = v90[2];
              v104 = v90[3];
              v105 = v90[4];
              v106 = v90[5];
              v107 = v90[6];
              v108 = v90[7];
              v109 = v90[8];
              v110 = v90[9];
              v111 = v90[10];
              v112 = v90[11];
              v113 = v90[12];
              v114 = v90[13];
              v115 = v90[14];
              v116 = v90[15];
              v40 = a11;
              *v92 = *v90;
              v92[1] = v102;
              v92[2] = v103;
              v92[3] = v104;
              v117 = (v92 + a11);
              v92[4] = v109;
              v92[5] = v110;
              v92[6] = v111;
              v92[7] = v112;
              *v117 = v105;
              v117[1] = v106;
              v117[2] = v107;
              v117[3] = v108;
              v118 = (v92 + a11 + 64);
              v94 = 256;
              *v118 = v113;
              v118[1] = v114;
              v118[2] = v115;
              v118[3] = v116;
            }

            else
            {
              v40 = a11;
              if (v93 == 7)
              {
                v100 = vld1q_dup_f64(v90->f64);
                *v92 = v100;
                v92[1] = v100;
                v92[2] = v100;
                v92[3] = v100;
                v92[4] = v100;
                v92[5] = v100;
                v92[6] = v100;
                v92[7] = v100;
                v101 = (v92 + a11);
                *v101 = v100;
                v101[1] = v100;
                v101[2] = v100;
                v101[3] = v100;
                v101[4] = v100;
                v101[5] = v100;
                v101[6] = v100;
                v101[7] = v100;
                v94 = 8;
              }

              else if (*v91)
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
              }

              else
              {
                v94 = 0;
                v92[6] = 0u;
                v92[7] = 0u;
                v92[4] = 0u;
                v92[5] = 0u;
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v95 = (v92->f64 + a11);
                v95[6] = 0u;
                v95[7] = 0u;
                v95[4] = 0u;
                v95[5] = 0u;
                v95[2] = 0u;
                v95[3] = 0u;
                *v95 = 0u;
                v95[1] = 0u;
              }
            }

            v119 = v90 + v94;
            v120 = (v92 + v448);
            v121 = v91[1];
            if (v121 == 255)
            {
              v126 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              v129 = *(v119 + 64);
              v130 = *(v119 + 80);
              v131 = *(v119 + 96);
              v132 = *(v119 + 112);
              v133 = *(v119 + 128);
              v134 = *(v119 + 144);
              v135 = *(v119 + 160);
              v136 = *(v119 + 176);
              v137 = *(v119 + 192);
              v138 = *(v119 + 208);
              v139 = *(v119 + 224);
              v140 = *(v119 + 240);
              *v120 = *v119;
              v120[1] = v126;
              v120[2] = v127;
              v120[3] = v128;
              v141 = (v120->f64 + v40);
              v120[4] = v133;
              v120[5] = v134;
              v120[6] = v135;
              v120[7] = v136;
              *v141 = v129;
              v141[1] = v130;
              v141[2] = v131;
              v141[3] = v132;
              v142 = (v120[4].f64 + v40);
              v122 = 256;
              *v142 = v137;
              v142[1] = v138;
              v142[2] = v139;
              v142[3] = v140;
            }

            else if (v121 == 7)
            {
              v124 = vld1q_dup_f64(v119);
              *v120 = v124;
              v120[1] = v124;
              v120[2] = v124;
              v120[3] = v124;
              v120[4] = v124;
              v120[5] = v124;
              v120[6] = v124;
              v120[7] = v124;
              v125 = (v120 + v40);
              *v125 = v124;
              v125[1] = v124;
              v125[2] = v124;
              v125[3] = v124;
              v125[4] = v124;
              v125[5] = v124;
              v125[6] = v124;
              v125[7] = v124;
              v122 = 8;
            }

            else if (v91[1])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v448, v40, v119, v121);
            }

            else
            {
              v122 = 0;
              v120[6] = 0u;
              v120[7] = 0u;
              v120[4] = 0u;
              v120[5] = 0u;
              v120[2] = 0u;
              v120[3] = 0u;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = (v120->f64 + v40);
              v123[6] = 0u;
              v123[7] = 0u;
              v123[4] = 0u;
              v123[5] = 0u;
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
            }

            v143 = v119 + v122;
            f64 = v92[8].f64;
            v145 = v91[2];
            if (v145 == 255)
            {
              v150 = *(v143 + 16);
              v151 = *(v143 + 32);
              v152 = *(v143 + 48);
              v153 = *(v143 + 64);
              v154 = *(v143 + 80);
              v155 = *(v143 + 96);
              v156 = *(v143 + 112);
              v157 = *(v143 + 128);
              v158 = *(v143 + 144);
              v159 = *(v143 + 160);
              v160 = *(v143 + 176);
              v161 = *(v143 + 192);
              v162 = *(v143 + 208);
              v163 = *(v143 + 224);
              v164 = *(v143 + 240);
              *f64 = *v143;
              v92[9] = v150;
              v92[10] = v151;
              v92[11] = v152;
              v165 = (f64 + v40);
              v92[12] = v157;
              v92[13] = v158;
              v92[14] = v159;
              v92[15] = v160;
              *v165 = v153;
              v165[1] = v154;
              v165[2] = v155;
              v165[3] = v156;
              v165 += 4;
              v146 = 256;
              *v165 = v161;
              v165[1] = v162;
              v165[2] = v163;
              v165[3] = v164;
            }

            else if (v145 == 7)
            {
              v148 = vld1q_dup_f64(v143);
              v92[8] = v148;
              v92[9] = v148;
              v92[10] = v148;
              v92[11] = v148;
              v92[12] = v148;
              v92[13] = v148;
              v92[14] = v148;
              v92[15] = v148;
              v149 = (f64 + v40);
              *v149 = v148;
              v149[1] = v148;
              v149[2] = v148;
              v149[3] = v148;
              v149[4] = v148;
              v149[5] = v148;
              v149[6] = v148;
              v149[7] = v148;
              v146 = 8;
            }

            else if (v91[2])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v40, v143, v145);
            }

            else
            {
              v146 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              v92[12] = 0u;
              v92[13] = 0u;
              v92[10] = 0u;
              v92[11] = 0u;
              *f64 = 0u;
              v92[9] = 0u;
              v147 = (f64 + v40);
              v147[6] = 0u;
              v147[7] = 0u;
              v147[4] = 0u;
              v147[5] = 0u;
              v147[2] = 0u;
              v147[3] = 0u;
              *v147 = 0u;
              v147[1] = 0u;
            }

            v166 = v143 + v146;
            v167 = v120[8].f64;
            v168 = v91[3];
            if (v168 == 255)
            {
              v173 = *(v166 + 16);
              v174 = *(v166 + 32);
              v175 = *(v166 + 48);
              v176 = *(v166 + 64);
              v177 = *(v166 + 80);
              v178 = *(v166 + 96);
              v179 = *(v166 + 112);
              v180 = *(v166 + 128);
              v181 = *(v166 + 144);
              v182 = *(v166 + 160);
              v183 = *(v166 + 176);
              v184 = *(v166 + 192);
              v185 = *(v166 + 208);
              v186 = *(v166 + 224);
              v187 = *(v166 + 240);
              *v167 = *v166;
              v120[9] = v173;
              v120[10] = v174;
              v120[11] = v175;
              v188 = (v167 + v40);
              v120[12] = v180;
              v120[13] = v181;
              v120[14] = v182;
              v120[15] = v183;
              *v188 = v176;
              v188[1] = v177;
              v188[2] = v178;
              v188[3] = v179;
              v188 += 4;
              v169 = 256;
              *v188 = v184;
              v188[1] = v185;
              v188[2] = v186;
              v188[3] = v187;
            }

            else if (v168 == 7)
            {
              v171 = vld1q_dup_f64(v166);
              v120[8] = v171;
              v120[9] = v171;
              v120[10] = v171;
              v120[11] = v171;
              v120[12] = v171;
              v120[13] = v171;
              v120[14] = v171;
              v120[15] = v171;
              v172 = (v167 + v40);
              *v172 = v171;
              v172[1] = v171;
              v172[2] = v171;
              v172[3] = v171;
              v172[4] = v171;
              v172[5] = v171;
              v169 = 8;
              v172[6] = v171;
              v172[7] = v171;
            }

            else if (v91[3])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v40, v166, v168);
            }

            else
            {
              v169 = 0;
              v120[14] = 0u;
              v120[15] = 0u;
              v120[12] = 0u;
              v120[13] = 0u;
              v120[10] = 0u;
              v120[11] = 0u;
              *v167 = 0u;
              v120[9] = 0u;
              v170 = (v167 + v40);
              v170[6] = 0u;
              v170[7] = 0u;
              v170[4] = 0u;
              v170[5] = 0u;
              v170[2] = 0u;
              v170[3] = 0u;
              *v170 = 0u;
              v170[1] = 0u;
            }

            v189 = v166 + v169;
            v190 = (v92 + v447);
            v191 = v91[4];
            if (v191 == 255)
            {
              v196 = *(v189 + 16);
              v197 = *(v189 + 32);
              v198 = *(v189 + 48);
              v199 = *(v189 + 64);
              v200 = *(v189 + 80);
              v201 = *(v189 + 96);
              v202 = *(v189 + 112);
              v203 = *(v189 + 128);
              v204 = *(v189 + 144);
              v205 = *(v189 + 160);
              v206 = *(v189 + 176);
              v207 = *(v189 + 192);
              v208 = *(v189 + 208);
              v209 = *(v189 + 224);
              v210 = *(v189 + 240);
              *v190 = *v189;
              v190[1] = v196;
              v190[2] = v197;
              v190[3] = v198;
              v211 = (v190->f64 + v40);
              v190[4] = v203;
              v190[5] = v204;
              v190[6] = v205;
              v190[7] = v206;
              *v211 = v199;
              v211[1] = v200;
              v211[2] = v201;
              v211[3] = v202;
              v212 = (v190[4].f64 + v40);
              v192 = 256;
              *v212 = v207;
              v212[1] = v208;
              v212[2] = v209;
              v212[3] = v210;
            }

            else if (v191 == 7)
            {
              v194 = vld1q_dup_f64(v189);
              *v190 = v194;
              v190[1] = v194;
              v190[2] = v194;
              v190[3] = v194;
              v190[4] = v194;
              v190[5] = v194;
              v190[6] = v194;
              v190[7] = v194;
              v195 = (v190 + v40);
              *v195 = v194;
              v195[1] = v194;
              v195[2] = v194;
              v195[3] = v194;
              v195[4] = v194;
              v195[5] = v194;
              v195[6] = v194;
              v195[7] = v194;
              v192 = 8;
            }

            else if (v91[4])
            {
              v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v447, v40, v189, v191);
            }

            else
            {
              v192 = 0;
              v190[6] = 0u;
              v190[7] = 0u;
              v190[4] = 0u;
              v190[5] = 0u;
              v190[2] = 0u;
              v190[3] = 0u;
              *v190 = 0u;
              v190[1] = 0u;
              v193 = (v190->f64 + v40);
              v193[6] = 0u;
              v193[7] = 0u;
              v193[4] = 0u;
              v193[5] = 0u;
              v193[2] = 0u;
              v193[3] = 0u;
              *v193 = 0u;
              v193[1] = 0u;
            }

            v213 = v189 + v192;
            v214 = (v92 + 6 * a11);
            v215 = v91[5];
            if (v215 == 255)
            {
              v220 = *(v213 + 16);
              v221 = *(v213 + 32);
              v222 = *(v213 + 48);
              v223 = *(v213 + 64);
              v224 = *(v213 + 80);
              v225 = *(v213 + 96);
              v226 = *(v213 + 112);
              v227 = *(v213 + 128);
              v228 = *(v213 + 144);
              v229 = *(v213 + 160);
              v230 = *(v213 + 176);
              v231 = *(v213 + 192);
              v232 = *(v213 + 208);
              v233 = *(v213 + 224);
              v234 = *(v213 + 240);
              *v214 = *v213;
              v214[1] = v220;
              v214[2] = v221;
              v214[3] = v222;
              v235 = (v214->f64 + v40);
              v214[4] = v227;
              v214[5] = v228;
              v214[6] = v229;
              v214[7] = v230;
              *v235 = v223;
              v235[1] = v224;
              v235[2] = v225;
              v235[3] = v226;
              v236 = (v214[4].f64 + v40);
              v216 = 256;
              *v236 = v231;
              v236[1] = v232;
              v236[2] = v233;
              v236[3] = v234;
            }

            else if (v215 == 7)
            {
              v218 = vld1q_dup_f64(v213);
              *v214 = v218;
              v214[1] = v218;
              v214[2] = v218;
              v214[3] = v218;
              v214[4] = v218;
              v214[5] = v218;
              v214[6] = v218;
              v214[7] = v218;
              v219 = (v214 + v40);
              *v219 = v218;
              v219[1] = v218;
              v219[2] = v218;
              v219[3] = v218;
              v219[4] = v218;
              v219[5] = v218;
              v219[6] = v218;
              v219[7] = v218;
              v216 = 8;
            }

            else if (v91[5])
            {
              v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v214, v40, v213, v215);
            }

            else
            {
              v216 = 0;
              v214[6] = 0u;
              v214[7] = 0u;
              v214[4] = 0u;
              v214[5] = 0u;
              v214[2] = 0u;
              v214[3] = 0u;
              *v214 = 0u;
              v214[1] = 0u;
              v217 = (v214->f64 + v40);
              v217[6] = 0u;
              v217[7] = 0u;
              v217[4] = 0u;
              v217[5] = 0u;
              v217[2] = 0u;
              v217[3] = 0u;
              *v217 = 0u;
              v217[1] = 0u;
            }

            v237 = v213 + v216;
            v238 = v190[8].f64;
            v239 = v91[6];
            if (v239 == 255)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              v251 = *(v237 + 128);
              v252 = *(v237 + 144);
              v253 = *(v237 + 160);
              v254 = *(v237 + 176);
              v255 = *(v237 + 192);
              v256 = *(v237 + 208);
              v257 = *(v237 + 224);
              v258 = *(v237 + 240);
              *v238 = *v237;
              v190[9] = v244;
              v190[10] = v245;
              v190[11] = v246;
              v259 = (v238 + v40);
              v190[12] = v251;
              v190[13] = v252;
              v190[14] = v253;
              v190[15] = v254;
              *v259 = v247;
              v259[1] = v248;
              v259[2] = v249;
              v259[3] = v250;
              v259 += 4;
              v240 = 256;
              *v259 = v255;
              v259[1] = v256;
              v259[2] = v257;
              v259[3] = v258;
            }

            else if (v239 == 7)
            {
              v242 = vld1q_dup_f64(v237);
              v190[8] = v242;
              v190[9] = v242;
              v190[10] = v242;
              v190[11] = v242;
              v190[12] = v242;
              v190[13] = v242;
              v190[14] = v242;
              v190[15] = v242;
              v243 = (v238 + v40);
              *v243 = v242;
              v243[1] = v242;
              v243[2] = v242;
              v243[3] = v242;
              v243[4] = v242;
              v243[5] = v242;
              v240 = 8;
              v243[6] = v242;
              v243[7] = v242;
            }

            else if (v91[6])
            {
              v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v40, v237, v239);
            }

            else
            {
              v240 = 0;
              v190[14] = 0u;
              v190[15] = 0u;
              v190[12] = 0u;
              v190[13] = 0u;
              v190[10] = 0u;
              v190[11] = 0u;
              *v238 = 0u;
              v190[9] = 0u;
              v241 = (v238 + v40);
              v241[6] = 0u;
              v241[7] = 0u;
              v241[4] = 0u;
              v241[5] = 0u;
              v241[2] = 0u;
              v241[3] = 0u;
              *v241 = 0u;
              v241[1] = 0u;
            }

            v260 = v237 + v240;
            v261 = v214[8].f64;
            v262 = v91[7];
            if (v262 == 255)
            {
              v266 = *(v260 + 16);
              v267 = *(v260 + 32);
              v268 = *(v260 + 48);
              v269 = *(v260 + 64);
              v270 = *(v260 + 80);
              v271 = *(v260 + 96);
              v272 = *(v260 + 112);
              v273 = *(v260 + 128);
              v274 = *(v260 + 144);
              v275 = *(v260 + 160);
              v276 = *(v260 + 176);
              v277 = *(v260 + 192);
              v278 = *(v260 + 208);
              v279 = *(v260 + 224);
              v280 = *(v260 + 240);
              *v261 = *v260;
              v214[9] = v266;
              v214[10] = v267;
              v214[11] = v268;
              v281 = (v261 + v40);
              v214[12] = v273;
              v214[13] = v274;
              v214[14] = v275;
              v214[15] = v276;
              *v281 = v269;
              v281[1] = v270;
              v281[2] = v271;
              v281[3] = v272;
              v281 += 4;
              *v281 = v277;
              v281[1] = v278;
              v281[2] = v279;
              v281[3] = v280;
              v52 = v461;
              v23 = v463;
            }

            else
            {
              v23 = v463;
              if (v262 == 7)
              {
                v264 = vld1q_dup_f64(v260);
                v214[8] = v264;
                v214[9] = v264;
                v214[10] = v264;
                v214[11] = v264;
                v214[12] = v264;
                v214[13] = v264;
                v214[14] = v264;
                v214[15] = v264;
                v265 = (v261 + v40);
                *v265 = v264;
                v265[1] = v264;
                v265[2] = v264;
                v265[3] = v264;
                v265[4] = v264;
                v265[5] = v264;
                v265[6] = v264;
                v265[7] = v264;
              }

              else if (v262)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v261, v40, v260, v262);
              }

              else
              {
                v214[14] = 0u;
                v214[15] = 0u;
                v214[12] = 0u;
                v214[13] = 0u;
                v214[10] = 0u;
                v214[11] = 0u;
                *v261 = 0u;
                v214[9] = 0u;
                v263 = (v261 + v40);
                v263[6] = 0u;
                v263[7] = 0u;
                v263[4] = 0u;
                v263[5] = 0u;
                v263[2] = 0u;
                v263[3] = 0u;
                *v263 = 0u;
                v263[1] = 0u;
              }

              v52 = v461;
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v96 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v463;
          block[5] = v90;
          v473 = v59;
          v474 = v464;
          v469 = v452;
          v470 = v56 - v54;
          block[6] = v91;
          v467 = v92;
          v40 = a11;
          v468 = a11;
          v471 = v451;
          v472 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v463 + 8) + 16552), block);
            v52 = v461;
            v23 = v463;
LABEL_49:
            v51 = v25 & v437;
            v53 = v49 + 1;
            goto LABEL_50;
          }

          v97 = v96;
          v98 = *v91;
          if (v98 == 255)
          {
            v283 = v90[1];
            v284 = v90[2];
            v285 = v90[3];
            v286 = v90[4];
            v287 = v90[5];
            v288 = v90[6];
            v289 = v90[7];
            v290 = v90[8];
            v291 = v90[9];
            v292 = v90[10];
            v293 = v90[11];
            v294 = v90[12];
            v295 = v90[13];
            v296 = v90[14];
            v297 = v90[15];
            v476 = *v90;
            v477 = v283;
            v478 = v284;
            v479 = v285;
            v480 = v290;
            v481 = v291;
            v482 = v292;
            v483 = v293;
            v492 = v286;
            v493 = v287;
            v494 = v288;
            v495 = v289;
            v99 = 256;
            v496 = v294;
            v497 = v295;
            v498 = v296;
            v499 = v297;
          }

          else if (v98 == 7)
          {
            v282 = vld1q_dup_f64(v90->f64);
            v476 = v282;
            v477 = v282;
            v478 = v282;
            v479 = v282;
            v480 = v282;
            v481 = v282;
            v482 = v282;
            v483 = v282;
            v492 = v282;
            v493 = v282;
            v494 = v282;
            v495 = v282;
            v496 = v282;
            v497 = v282;
            v99 = 8;
            v498 = v282;
            v499 = v282;
          }

          else if (*v91)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v476, 256, v90, v98);
          }

          else
          {
            v99 = 0;
            v483 = 0u;
            v482 = 0u;
            v481 = 0u;
            v480 = 0u;
            v479 = 0u;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v492 = 0u;
            v493 = 0u;
            v494 = 0u;
            v495 = 0u;
            v496 = 0u;
            v497 = 0u;
            v498 = 0u;
            v499 = 0u;
          }

          v298 = v90 + v99;
          v299 = v91[1];
          if (v299 == 255)
          {
            v302 = *(v298 + 16);
            v303 = *(v298 + 32);
            v304 = *(v298 + 48);
            v305 = *(v298 + 64);
            v306 = *(v298 + 80);
            v307 = *(v298 + 96);
            v308 = *(v298 + 112);
            v309 = *(v298 + 128);
            v310 = *(v298 + 144);
            v311 = *(v298 + 160);
            v312 = *(v298 + 176);
            v313 = *(v298 + 192);
            v314 = *(v298 + 208);
            v315 = *(v298 + 224);
            v316 = *(v298 + 240);
            v508 = *v298;
            v509 = v302;
            v510 = v303;
            v511 = v304;
            v512 = v309;
            v513 = v310;
            v514 = v311;
            v515 = v312;
            v524 = v305;
            v525 = v306;
            v526 = v307;
            v527 = v308;
            v300 = 256;
            v528 = v313;
            v529 = v314;
            v530 = v315;
            v531 = v316;
          }

          else if (v299 == 7)
          {
            v301 = vld1q_dup_f64(v298);
            v508 = v301;
            v509 = v301;
            v510 = v301;
            v511 = v301;
            v512 = v301;
            v513 = v301;
            v514 = v301;
            v515 = v301;
            v524 = v301;
            v525 = v301;
            v526 = v301;
            v527 = v301;
            v528 = v301;
            v529 = v301;
            v300 = 8;
            v530 = v301;
            v531 = v301;
          }

          else if (v91[1])
          {
            v300 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v508, 256, v298, v299);
          }

          else
          {
            v300 = 0;
            v514 = 0u;
            v515 = 0u;
            v512 = 0u;
            v513 = 0u;
            v510 = 0u;
            v511 = 0u;
            v508 = 0u;
            v509 = 0u;
            v524 = 0u;
            v525 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
          }

          v317 = v298 + v300;
          v318 = v91[2];
          if (v318 == 255)
          {
            v321 = *(v317 + 16);
            v322 = *(v317 + 32);
            v323 = *(v317 + 48);
            v324 = *(v317 + 64);
            v325 = *(v317 + 80);
            v326 = *(v317 + 96);
            v327 = *(v317 + 112);
            v328 = *(v317 + 128);
            v329 = *(v317 + 144);
            v330 = *(v317 + 160);
            v331 = *(v317 + 176);
            v332 = *(v317 + 192);
            v333 = *(v317 + 208);
            v334 = *(v317 + 224);
            v335 = *(v317 + 240);
            v484 = *v317;
            v485 = v321;
            v486 = v322;
            v487 = v323;
            v488 = v328;
            v489 = v329;
            v490 = v330;
            v491 = v331;
            v500 = v324;
            v501 = v325;
            v502 = v326;
            v503 = v327;
            v319 = 256;
            v504 = v332;
            v505 = v333;
            v506 = v334;
            v507 = v335;
          }

          else if (v318 == 7)
          {
            v320 = vld1q_dup_f64(v317);
            v484 = v320;
            v485 = v320;
            v486 = v320;
            v487 = v320;
            v488 = v320;
            v489 = v320;
            v490 = v320;
            v491 = v320;
            v500 = v320;
            v501 = v320;
            v502 = v320;
            v503 = v320;
            v504 = v320;
            v505 = v320;
            v319 = 8;
            v506 = v320;
            v507 = v320;
          }

          else if (v91[2])
          {
            v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v484, 256, v317, v318);
          }

          else
          {
            v319 = 0;
            v490 = 0u;
            v491 = 0u;
            v488 = 0u;
            v489 = 0u;
            v486 = 0u;
            v487 = 0u;
            v484 = 0u;
            v485 = 0u;
            v500 = 0u;
            v501 = 0u;
            v502 = 0u;
            v503 = 0u;
            v504 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
          }

          v336 = v317 + v319;
          v337 = v91[3];
          if (v337 == 255)
          {
            v340 = *(v336 + 16);
            v341 = *(v336 + 32);
            v342 = *(v336 + 48);
            v343 = *(v336 + 64);
            v344 = *(v336 + 80);
            v345 = *(v336 + 96);
            v346 = *(v336 + 112);
            v347 = *(v336 + 128);
            v348 = *(v336 + 144);
            v349 = *(v336 + 160);
            v350 = *(v336 + 176);
            v351 = *(v336 + 192);
            v352 = *(v336 + 208);
            v353 = *(v336 + 224);
            v354 = *(v336 + 240);
            v516 = *v336;
            v517 = v340;
            v518 = v341;
            v519 = v342;
            v520 = v347;
            v521 = v348;
            v522 = v349;
            v523 = v350;
            v532 = v343;
            v533 = v344;
            v534 = v345;
            v535 = v346;
            v338 = 256;
            v536 = v351;
            v537 = v352;
            v538 = v353;
            v539 = v354;
          }

          else if (v337 == 7)
          {
            v339 = vld1q_dup_f64(v336);
            v516 = v339;
            v517 = v339;
            v518 = v339;
            v519 = v339;
            v520 = v339;
            v521 = v339;
            v522 = v339;
            v523 = v339;
            v532 = v339;
            v533 = v339;
            v534 = v339;
            v535 = v339;
            v536 = v339;
            v537 = v339;
            v338 = 8;
            v538 = v339;
            v539 = v339;
          }

          else if (v91[3])
          {
            v338 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v516, 256, v336, v337);
          }

          else
          {
            v338 = 0;
            v522 = 0u;
            v523 = 0u;
            v520 = 0u;
            v521 = 0u;
            v518 = 0u;
            v519 = 0u;
            v516 = 0u;
            v517 = 0u;
            v532 = 0u;
            v533 = 0u;
            v534 = 0u;
            v535 = 0u;
            v536 = 0u;
            v537 = 0u;
            v538 = 0u;
            v539 = 0u;
          }

          v355 = v336 + v338;
          v356 = v91[4];
          if (v356 == 255)
          {
            v359 = *(v355 + 16);
            v360 = *(v355 + 32);
            v361 = *(v355 + 48);
            v362 = *(v355 + 64);
            v363 = *(v355 + 80);
            v364 = *(v355 + 96);
            v365 = *(v355 + 112);
            v366 = *(v355 + 128);
            v367 = *(v355 + 144);
            v368 = *(v355 + 160);
            v369 = *(v355 + 176);
            v370 = *(v355 + 192);
            v371 = *(v355 + 208);
            v372 = *(v355 + 224);
            v373 = *(v355 + 240);
            v540 = *v355;
            v541 = v359;
            v542 = v360;
            v543 = v361;
            v544 = v366;
            v545 = v367;
            v546 = v368;
            v547 = v369;
            v556 = v362;
            v557 = v363;
            v558 = v364;
            v559 = v365;
            v357 = 256;
            v560 = v370;
            v561 = v371;
            v562 = v372;
            v563 = v373;
          }

          else if (v356 == 7)
          {
            v358 = vld1q_dup_f64(v355);
            v540 = v358;
            v541 = v358;
            v542 = v358;
            v543 = v358;
            v544 = v358;
            v545 = v358;
            v546 = v358;
            v547 = v358;
            v556 = v358;
            v557 = v358;
            v558 = v358;
            v559 = v358;
            v560 = v358;
            v561 = v358;
            v562 = v358;
            v357 = 8;
            v563 = v358;
          }

          else if (v91[4])
          {
            v357 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v540, 256, v355, v356);
          }

          else
          {
            v357 = 0;
            v546 = 0u;
            v547 = 0u;
            v544 = 0u;
            v545 = 0u;
            v542 = 0u;
            v543 = 0u;
            v540 = 0u;
            v541 = 0u;
            v556 = 0u;
            v557 = 0u;
            v558 = 0u;
            v559 = 0u;
            v560 = 0u;
            v561 = 0u;
            v562 = 0u;
            v563 = 0u;
          }

          v374 = v355 + v357;
          v375 = v91[5];
          if (v375 == 255)
          {
            v378 = *(v374 + 16);
            v379 = *(v374 + 32);
            v380 = *(v374 + 48);
            v381 = *(v374 + 64);
            v382 = *(v374 + 80);
            v383 = *(v374 + 96);
            v384 = *(v374 + 112);
            v385 = *(v374 + 128);
            v386 = *(v374 + 144);
            v387 = *(v374 + 160);
            v388 = *(v374 + 176);
            v389 = *(v374 + 192);
            v390 = *(v374 + 208);
            v391 = *(v374 + 224);
            v392 = *(v374 + 240);
            v572 = *v374;
            v573 = v378;
            v574 = v379;
            v575 = v380;
            v576 = v385;
            v577 = v386;
            v578 = v387;
            v579 = v388;
            v588 = v381;
            v589 = v382;
            v590 = v383;
            v591 = v384;
            v376 = 256;
            v592 = v389;
            v593 = v390;
            v594 = v391;
            v595 = v392;
          }

          else if (v375 == 7)
          {
            v377 = vld1q_dup_f64(v374);
            v572 = v377;
            v573 = v377;
            v574 = v377;
            v575 = v377;
            v576 = v377;
            v577 = v377;
            v578 = v377;
            v579 = v377;
            v588 = v377;
            v589 = v377;
            v590 = v377;
            v591 = v377;
            v592 = v377;
            v593 = v377;
            v594 = v377;
            v376 = 8;
            v595 = v377;
          }

          else if (v91[5])
          {
            v376 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v572, 256, v374, v375);
          }

          else
          {
            v376 = 0;
            v578 = 0u;
            v579 = 0u;
            v576 = 0u;
            v577 = 0u;
            v574 = 0u;
            v575 = 0u;
            v572 = 0u;
            v573 = 0u;
            v588 = 0u;
            v589 = 0u;
            v590 = 0u;
            v591 = 0u;
            v592 = 0u;
            v593 = 0u;
            v594 = 0u;
            v595 = 0u;
          }

          v393 = v374 + v376;
          v394 = v91[6];
          if (v394 == 255)
          {
            v397 = *(v393 + 16);
            v398 = *(v393 + 32);
            v399 = *(v393 + 48);
            v400 = *(v393 + 64);
            v401 = *(v393 + 80);
            v402 = *(v393 + 96);
            v403 = *(v393 + 112);
            v404 = *(v393 + 128);
            v405 = *(v393 + 144);
            v406 = *(v393 + 160);
            v407 = *(v393 + 176);
            v408 = *(v393 + 192);
            v409 = *(v393 + 208);
            v410 = *(v393 + 224);
            v411 = *(v393 + 240);
            v548 = *v393;
            v549 = v397;
            v550 = v398;
            v551 = v399;
            v552 = v404;
            v553 = v405;
            v554 = v406;
            v555 = v407;
            v564 = v400;
            v565 = v401;
            v566 = v402;
            v567 = v403;
            v395 = 256;
            v568 = v408;
            v569 = v409;
            v570 = v410;
            v571 = v411;
          }

          else if (v394 == 7)
          {
            v396 = vld1q_dup_f64(v393);
            v548 = v396;
            v549 = v396;
            v550 = v396;
            v551 = v396;
            v552 = v396;
            v553 = v396;
            v554 = v396;
            v555 = v396;
            v564 = v396;
            v565 = v396;
            v566 = v396;
            v567 = v396;
            v568 = v396;
            v569 = v396;
            v570 = v396;
            v395 = 8;
            v571 = v396;
          }

          else if (v91[6])
          {
            v395 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v548, 256, v393, v394);
          }

          else
          {
            v395 = 0;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            v550 = 0u;
            v551 = 0u;
            v548 = 0u;
            v549 = 0u;
            v564 = 0u;
            v565 = 0u;
            v566 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
          }

          v412 = v393 + v395;
          v413 = v91[7];
          if (v413 == 255)
          {
            v417 = *(v412 + 16);
            v418 = *(v412 + 32);
            v419 = *(v412 + 48);
            v420 = *(v412 + 64);
            v421 = *(v412 + 80);
            v422 = *(v412 + 96);
            v423 = *(v412 + 112);
            v424 = *(v412 + 128);
            v425 = *(v412 + 144);
            v426 = *(v412 + 160);
            v427 = *(v412 + 176);
            v428 = *(v412 + 192);
            v429 = *(v412 + 208);
            v430 = *(v412 + 224);
            v431 = *(v412 + 240);
            v580 = *v412;
            v581 = v417;
            v582 = v418;
            v583 = v419;
            v584 = v424;
            v585 = v425;
            v586 = v426;
            v587 = v427;
            v596 = v420;
            v597 = v421;
            v598 = v422;
            v599 = v423;
            v414 = v451;
            v415 = v452;
            v600 = v428;
            v601 = v429;
            v602 = v430;
            v603 = v431;
            v52 = v461;
            v23 = v463;
          }

          else
          {
            v52 = v461;
            v23 = v463;
            if (v413 == 7)
            {
              v416 = vld1q_dup_f64(v412);
              v580 = v416;
              v581 = v416;
              v582 = v416;
              v583 = v416;
              v584 = v416;
              v585 = v416;
              v586 = v416;
              v587 = v416;
              v596 = v416;
              v597 = v416;
              v598 = v416;
              v599 = v416;
              v600 = v416;
              v601 = v416;
              v602 = v416;
              v414 = v451;
              v415 = v452;
              v603 = v416;
            }

            else if (v413)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v580, 256, v412, v413);
              v415 = v469;
              v97 = v470;
              v414 = v471;
            }

            else
            {
              v586 = 0u;
              v587 = 0u;
              v584 = 0u;
              v585 = 0u;
              v582 = 0u;
              v583 = 0u;
              v580 = 0u;
              v581 = 0u;
              v596 = 0u;
              v597 = 0u;
              v598 = 0u;
              v599 = 0u;
              v600 = 0u;
              v601 = 0u;
              v414 = v451;
              v415 = v452;
              v602 = 0u;
              v603 = 0u;
            }
          }

          v51 = v25 & v437;
          v53 = v49 + 1;
          if (v414)
          {
            v432 = 0;
            v433 = &v476.f64[32 * v415 + 4 * v97];
            v434 = v472;
            do
            {
              if (v434)
              {
                v435 = 0;
                v436 = v467 + v468 * v432;
                do
                {
                  v436[v435] = *(v433 + v435);
                  ++v435;
                  v434 = v472;
                }

                while (32 * v472 > v435);
                v414 = v471;
              }

              ++v432;
              v433 += 16;
            }

            while (v432 < v414);
          }

LABEL_50:
          v28 = v49 == v455 >> 3;
          v49 = v53;
        }

        while (!v28);
        v28 = v25++ == v442;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v456 = v21;
  v457 = v22;
  v442 = v23;
  v24 = v12;
  v602 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v460 = v14;
  v25 = v14 >> 3;
  v441 = v14 + a10 - 1;
  v443 = v441 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
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
  v455 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v443)
  {
    v453 = v16 + a9 - 1;
    v440 = v16 >> 3;
    if (v16 >> 3 <= v453 >> 3)
    {
      v33 = a11;
      v463 = (v20 - 1) >> 3;
      v437 = v20 - 1;
      v446 = (v20 - 1) & 7;
      v438 = (v18 - 1) & 7;
      v439 = (v18 - 1) >> 3;
      v444 = 4 * a11;
      v445 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v449 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v448 = v35;
      v436 = 8 * v27 * v26;
      v461 = v24;
      v452 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v460)
        {
          v37 = v460;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v441 < v36)
        {
          v36 = v441;
        }

        v459 = 8 * v25;
        v451 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v438;
        v450 = v39;
        v41 = v39 != 8;
        v42 = v440;
        v43 = v438 + 1;
        if (v25 != v439)
        {
          v43 = 8;
        }

        v462 = v43;
        if (v25 != v439)
        {
          v40 = v41;
        }

        v447 = v40;
        v458 = v442 + (v37 - v460) * v33;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v453 < v46)
          {
            v46 = v453;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v463)
          {
            v50 = v446 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v459 >= v460 && v45 >= v16)
          {
            v52 = v48 != v446;
            if (v42 != v463)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v447;
          }

          if (isLevelTiled)
          {
            v419 = 0;
            v420 = v436 >> (*(v24 + 57) != 0);
            v421 = 1;
            if (v420 <= 63)
            {
              if (v420 > 15)
              {
                if (v420 == 16)
                {
                  v421 = 0;
                  v422 = 0;
                  v423 = 64;
                  v419 = 128;
                }

                else
                {
                  v422 = 1;
                  v423 = 0;
                  if (v420 == 32)
                  {
                    v421 = 0;
                    v422 = 0;
                    v419 = 64;
                    v423 = 64;
                  }
                }
              }

              else if (v420 == 4)
              {
                v421 = 0;
                v422 = 0;
                v423 = 128;
                v419 = 256;
              }

              else
              {
                v422 = 1;
                v423 = 0;
                if (v420 == 8)
                {
                  v421 = 0;
                  v422 = 0;
                  v419 = 128;
                  v423 = 128;
                }
              }
            }

            else if (v420 <= 255)
            {
              if (v420 == 64)
              {
                v421 = 0;
                v422 = 0;
                v423 = 32;
                v419 = 64;
              }

              else
              {
                v422 = 1;
                v423 = 0;
                if (v420 == 128)
                {
                  v421 = 0;
                  v422 = 0;
                  v419 = 32;
                  v423 = 32;
                }
              }
            }

            else if (v420 == 256)
            {
              v421 = 0;
              v422 = 0;
              v423 = 16;
              v419 = 32;
            }

            else if (v420 == 512)
            {
              v421 = 0;
              v422 = 0;
              v419 = 16;
              v423 = 16;
            }

            else
            {
              v422 = 1;
              v423 = 0;
              if (v420 == 1024)
              {
                v421 = 0;
                v423 = 8;
                v419 = 16;
              }
            }

            v424 = (v419 >> 3) - 1;
            if (v421)
            {
              v425 = 0;
            }

            else
            {
              v425 = 32 - __clz(~(-1 << -__clz(v424)));
            }

            v426 = (v423 >> 3) - 1;
            if (v422)
            {
              v427 = 0;
              if (v425)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v427 = 32 - __clz(~(-1 << -__clz(v426)));
              if (v427 | v425)
              {
LABEL_226:
                v428 = 0;
                v429 = 0;
                v430 = v42 & v424;
                v431 = v25 & v426;
                v432 = v425 != 0;
                v433 = v427 != 0;
                v434 = 1;
                do
                {
                  --v425;
                  if (v432)
                  {
                    v429 |= (v434 & v430) << v428++;
                  }

                  else
                  {
                    v425 = 0;
                  }

                  --v427;
                  if (v433)
                  {
                    v429 |= (v434 & v431) << v428++;
                  }

                  else
                  {
                    v427 = 0;
                  }

                  v434 *= 2;
                  --v428;
                  v433 = v427 != 0;
                  v432 = v425 != 0;
                }

                while (v427 | v425);
                v435 = v429 << 11;
                goto LABEL_238;
              }
            }

            v435 = 0;
LABEL_238:
            v60 = v435 + ((v45 / v419 + v459 / v423 * ((v419 + v437) / v419)) << 14);
            goto LABEL_55;
          }

          if (v449)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v448.i8[4];
            v57 = v448.i8[0];
            v58 = v449.i32[1];
            v59 = v449.i32[0];
            do
            {
              --v58;
              if (v56)
              {
                v54 |= (v55 & v42) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v57)
              {
                v54 |= (v55 & v25) << v53++;
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
            v60 = v54 << 11;
          }

          else
          {
            v60 = 0;
          }

LABEL_55:
          v61 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v24 + 132) >> (*(v24 + 144) + a12);
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

          if (v66 | v63)
          {
            v67 = 0;
            v68 = 0;
            v69 = v63 != 0;
            v70 = v66 != 0;
            v71 = 1;
            do
            {
              --v63;
              if (v69)
              {
                v68 |= (v71 & v42) << v67++;
              }

              else
              {
                v63 = 0;
              }

              --v66;
              if (v70)
              {
                v68 |= (v71 & v25) << v67++;
              }

              else
              {
                v66 = 0;
              }

              v71 *= 2;
              --v67;
              v70 = v66 != 0;
              v69 = v63 != 0;
            }

            while (v66 | v63);
            v72 = 8 * v68;
          }

          else
          {
            v72 = 0;
          }

          v73 = (v456 + v60);
          if (v455)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v73 = __dst;
          }

          v74 = (v457 + v72);
          v75 = (v458 + 32 * (v47 - v16));
          if (v51 & 1 | (v50 < 8u) || v462 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            v79 = v47 - v45;
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v461;
            block[5] = v73;
            v471 = v50;
            v472 = v462;
            v467 = v451;
            v468 = v79;
            block[6] = v74;
            v465 = v75;
            v33 = a11;
            v466 = a11;
            v469 = v450;
            v470 = v49;
            if (v51)
            {
              dispatch_sync(*(*(v461 + 8) + 16552), block);
              v16 = v452;
              v24 = v461;
              v44 = v42 + 1;
            }

            else
            {
              v80 = *v74;
              v16 = v452;
              if (v80 == 255)
              {
                v265 = v73[1];
                v266 = v73[2];
                v267 = v73[3];
                v268 = v73[4];
                v269 = v73[5];
                v270 = v73[6];
                v271 = v73[7];
                v272 = v73[8];
                v273 = v73[9];
                v274 = v73[10];
                v275 = v73[11];
                v276 = v73[12];
                v277 = v73[13];
                v278 = v73[14];
                v279 = v73[15];
                v474 = *v73;
                v475 = v265;
                v476 = v266;
                v477 = v267;
                v478 = v272;
                v479 = v273;
                v480 = v274;
                v481 = v275;
                v490 = v268;
                v491 = v269;
                v492 = v270;
                v493 = v271;
                v81 = 256;
                v494 = v276;
                v495 = v277;
                v496 = v278;
                v497 = v279;
              }

              else if (v80 == 7)
              {
                v264 = vld1q_dup_f64(v73->f64);
                v474 = v264;
                v475 = v264;
                v476 = v264;
                v477 = v264;
                v478 = v264;
                v479 = v264;
                v480 = v264;
                v481 = v264;
                v490 = v264;
                v491 = v264;
                v492 = v264;
                v493 = v264;
                v494 = v264;
                v495 = v264;
                v81 = 8;
                v496 = v264;
                v497 = v264;
              }

              else if (*v74)
              {
                v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v474, 256, v73, v80);
              }

              else
              {
                v81 = 0;
                v481 = 0u;
                v480 = 0u;
                v479 = 0u;
                v478 = 0u;
                v477 = 0u;
                v476 = 0u;
                v475 = 0u;
                v474 = 0u;
                v490 = 0u;
                v491 = 0u;
                v492 = 0u;
                v493 = 0u;
                v494 = 0u;
                v495 = 0u;
                v496 = 0u;
                v497 = 0u;
              }

              v280 = v73 + v81;
              v281 = v74[1];
              if (v281 == 255)
              {
                v284 = *(v280 + 16);
                v285 = *(v280 + 32);
                v286 = *(v280 + 48);
                v287 = *(v280 + 64);
                v288 = *(v280 + 80);
                v289 = *(v280 + 96);
                v290 = *(v280 + 112);
                v291 = *(v280 + 128);
                v292 = *(v280 + 144);
                v293 = *(v280 + 160);
                v294 = *(v280 + 176);
                v295 = *(v280 + 192);
                v296 = *(v280 + 208);
                v297 = *(v280 + 224);
                v298 = *(v280 + 240);
                v506 = *v280;
                v507 = v284;
                v508 = v285;
                v509 = v286;
                v510 = v291;
                v511 = v292;
                v512 = v293;
                v513 = v294;
                v522 = v287;
                v523 = v288;
                v524 = v289;
                v525 = v290;
                v282 = 256;
                v526 = v295;
                v527 = v296;
                v528 = v297;
                v529 = v298;
              }

              else if (v281 == 7)
              {
                v283 = vld1q_dup_f64(v280);
                v506 = v283;
                v507 = v283;
                v508 = v283;
                v509 = v283;
                v510 = v283;
                v511 = v283;
                v512 = v283;
                v513 = v283;
                v522 = v283;
                v523 = v283;
                v524 = v283;
                v525 = v283;
                v526 = v283;
                v527 = v283;
                v282 = 8;
                v528 = v283;
                v529 = v283;
              }

              else if (v74[1])
              {
                v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v506, 256, v280, v281);
              }

              else
              {
                v282 = 0;
                v512 = 0u;
                v513 = 0u;
                v510 = 0u;
                v511 = 0u;
                v508 = 0u;
                v509 = 0u;
                v506 = 0u;
                v507 = 0u;
                v522 = 0u;
                v523 = 0u;
                v524 = 0u;
                v525 = 0u;
                v526 = 0u;
                v527 = 0u;
                v528 = 0u;
                v529 = 0u;
              }

              v299 = v280 + v282;
              v300 = v74[2];
              if (v300 == 255)
              {
                v303 = *(v299 + 16);
                v304 = *(v299 + 32);
                v305 = *(v299 + 48);
                v306 = *(v299 + 64);
                v307 = *(v299 + 80);
                v308 = *(v299 + 96);
                v309 = *(v299 + 112);
                v310 = *(v299 + 128);
                v311 = *(v299 + 144);
                v312 = *(v299 + 160);
                v313 = *(v299 + 176);
                v314 = *(v299 + 192);
                v315 = *(v299 + 208);
                v316 = *(v299 + 224);
                v317 = *(v299 + 240);
                v482 = *v299;
                v483 = v303;
                v484 = v304;
                v485 = v305;
                v486 = v310;
                v487 = v311;
                v488 = v312;
                v489 = v313;
                v498 = v306;
                v499 = v307;
                v500 = v308;
                v501 = v309;
                v301 = 256;
                v502 = v314;
                v503 = v315;
                v504 = v316;
                v505 = v317;
              }

              else if (v300 == 7)
              {
                v302 = vld1q_dup_f64(v299);
                v482 = v302;
                v483 = v302;
                v484 = v302;
                v485 = v302;
                v486 = v302;
                v487 = v302;
                v488 = v302;
                v489 = v302;
                v498 = v302;
                v499 = v302;
                v500 = v302;
                v501 = v302;
                v502 = v302;
                v503 = v302;
                v301 = 8;
                v504 = v302;
                v505 = v302;
              }

              else if (v74[2])
              {
                v301 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v482, 256, v299, v300);
              }

              else
              {
                v301 = 0;
                v488 = 0u;
                v489 = 0u;
                v486 = 0u;
                v487 = 0u;
                v484 = 0u;
                v485 = 0u;
                v482 = 0u;
                v483 = 0u;
                v498 = 0u;
                v499 = 0u;
                v500 = 0u;
                v501 = 0u;
                v502 = 0u;
                v503 = 0u;
                v504 = 0u;
                v505 = 0u;
              }

              v318 = v299 + v301;
              v319 = v74[3];
              if (v319 == 255)
              {
                v322 = *(v318 + 16);
                v323 = *(v318 + 32);
                v324 = *(v318 + 48);
                v325 = *(v318 + 64);
                v326 = *(v318 + 80);
                v327 = *(v318 + 96);
                v328 = *(v318 + 112);
                v329 = *(v318 + 128);
                v330 = *(v318 + 144);
                v331 = *(v318 + 160);
                v332 = *(v318 + 176);
                v333 = *(v318 + 192);
                v334 = *(v318 + 208);
                v335 = *(v318 + 224);
                v336 = *(v318 + 240);
                v514 = *v318;
                v515 = v322;
                v516 = v323;
                v517 = v324;
                v518 = v329;
                v519 = v330;
                v520 = v331;
                v521 = v332;
                v530 = v325;
                v531 = v326;
                v532 = v327;
                v533 = v328;
                v320 = 256;
                v534 = v333;
                v535 = v334;
                v536 = v335;
                v537 = v336;
              }

              else if (v319 == 7)
              {
                v321 = vld1q_dup_f64(v318);
                v514 = v321;
                v515 = v321;
                v516 = v321;
                v517 = v321;
                v518 = v321;
                v519 = v321;
                v520 = v321;
                v521 = v321;
                v530 = v321;
                v531 = v321;
                v532 = v321;
                v533 = v321;
                v534 = v321;
                v535 = v321;
                v320 = 8;
                v536 = v321;
                v537 = v321;
              }

              else if (v74[3])
              {
                v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v514, 256, v318, v319);
              }

              else
              {
                v320 = 0;
                v520 = 0u;
                v521 = 0u;
                v518 = 0u;
                v519 = 0u;
                v516 = 0u;
                v517 = 0u;
                v514 = 0u;
                v515 = 0u;
                v530 = 0u;
                v531 = 0u;
                v532 = 0u;
                v533 = 0u;
                v534 = 0u;
                v535 = 0u;
                v536 = 0u;
                v537 = 0u;
              }

              v337 = v318 + v320;
              v338 = v74[4];
              if (v338 == 255)
              {
                v341 = *(v337 + 16);
                v342 = *(v337 + 32);
                v343 = *(v337 + 48);
                v344 = *(v337 + 64);
                v345 = *(v337 + 80);
                v346 = *(v337 + 96);
                v347 = *(v337 + 112);
                v348 = *(v337 + 128);
                v349 = *(v337 + 144);
                v350 = *(v337 + 160);
                v351 = *(v337 + 176);
                v352 = *(v337 + 192);
                v353 = *(v337 + 208);
                v354 = *(v337 + 224);
                v355 = *(v337 + 240);
                v538 = *v337;
                v539 = v341;
                v540 = v342;
                v541 = v343;
                v542 = v348;
                v543 = v349;
                v544 = v350;
                v545 = v351;
                v554 = v344;
                v555 = v345;
                v556 = v346;
                v557 = v347;
                v339 = 256;
                v558 = v352;
                v559 = v353;
                v560 = v354;
                v561 = v355;
              }

              else if (v338 == 7)
              {
                v340 = vld1q_dup_f64(v337);
                v538 = v340;
                v539 = v340;
                v540 = v340;
                v541 = v340;
                v542 = v340;
                v543 = v340;
                v544 = v340;
                v545 = v340;
                v554 = v340;
                v555 = v340;
                v556 = v340;
                v557 = v340;
                v558 = v340;
                v559 = v340;
                v560 = v340;
                v339 = 8;
                v561 = v340;
              }

              else if (v74[4])
              {
                v339 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v538, 256, v337, v338);
              }

              else
              {
                v339 = 0;
                v544 = 0u;
                v545 = 0u;
                v542 = 0u;
                v543 = 0u;
                v540 = 0u;
                v541 = 0u;
                v538 = 0u;
                v539 = 0u;
                v554 = 0u;
                v555 = 0u;
                v556 = 0u;
                v557 = 0u;
                v558 = 0u;
                v559 = 0u;
                v560 = 0u;
                v561 = 0u;
              }

              v356 = v337 + v339;
              v357 = v74[5];
              if (v357 == 255)
              {
                v360 = *(v356 + 16);
                v361 = *(v356 + 32);
                v362 = *(v356 + 48);
                v363 = *(v356 + 64);
                v364 = *(v356 + 80);
                v365 = *(v356 + 96);
                v366 = *(v356 + 112);
                v367 = *(v356 + 128);
                v368 = *(v356 + 144);
                v369 = *(v356 + 160);
                v370 = *(v356 + 176);
                v371 = *(v356 + 192);
                v372 = *(v356 + 208);
                v373 = *(v356 + 224);
                v374 = *(v356 + 240);
                v570 = *v356;
                v571 = v360;
                v572 = v361;
                v573 = v362;
                v574 = v367;
                v575 = v368;
                v576 = v369;
                v577 = v370;
                v586 = v363;
                v587 = v364;
                v588 = v365;
                v589 = v366;
                v358 = 256;
                v590 = v371;
                v591 = v372;
                v592 = v373;
                v593 = v374;
              }

              else if (v357 == 7)
              {
                v359 = vld1q_dup_f64(v356);
                v570 = v359;
                v571 = v359;
                v572 = v359;
                v573 = v359;
                v574 = v359;
                v575 = v359;
                v576 = v359;
                v577 = v359;
                v586 = v359;
                v587 = v359;
                v588 = v359;
                v589 = v359;
                v590 = v359;
                v591 = v359;
                v592 = v359;
                v358 = 8;
                v593 = v359;
              }

              else if (v74[5])
              {
                v358 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v570, 256, v356, v357);
              }

              else
              {
                v358 = 0;
                v576 = 0u;
                v577 = 0u;
                v574 = 0u;
                v575 = 0u;
                v572 = 0u;
                v573 = 0u;
                v570 = 0u;
                v571 = 0u;
                v586 = 0u;
                v587 = 0u;
                v588 = 0u;
                v589 = 0u;
                v590 = 0u;
                v591 = 0u;
                v592 = 0u;
                v593 = 0u;
              }

              v375 = v356 + v358;
              v376 = v74[6];
              if (v376 == 255)
              {
                v379 = *(v375 + 16);
                v380 = *(v375 + 32);
                v381 = *(v375 + 48);
                v382 = *(v375 + 64);
                v383 = *(v375 + 80);
                v384 = *(v375 + 96);
                v385 = *(v375 + 112);
                v386 = *(v375 + 128);
                v387 = *(v375 + 144);
                v388 = *(v375 + 160);
                v389 = *(v375 + 176);
                v390 = *(v375 + 192);
                v391 = *(v375 + 208);
                v392 = *(v375 + 224);
                v393 = *(v375 + 240);
                v546 = *v375;
                v547 = v379;
                v548 = v380;
                v549 = v381;
                v550 = v386;
                v551 = v387;
                v552 = v388;
                v553 = v389;
                v562 = v382;
                v563 = v383;
                v564 = v384;
                v565 = v385;
                v377 = 256;
                v566 = v390;
                v567 = v391;
                v568 = v392;
                v569 = v393;
              }

              else if (v376 == 7)
              {
                v378 = vld1q_dup_f64(v375);
                v546 = v378;
                v547 = v378;
                v548 = v378;
                v549 = v378;
                v550 = v378;
                v551 = v378;
                v552 = v378;
                v553 = v378;
                v562 = v378;
                v563 = v378;
                v564 = v378;
                v565 = v378;
                v566 = v378;
                v567 = v378;
                v568 = v378;
                v377 = 8;
                v569 = v378;
              }

              else if (v74[6])
              {
                v377 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v546, 256, v375, v376);
              }

              else
              {
                v377 = 0;
                v552 = 0u;
                v553 = 0u;
                v550 = 0u;
                v551 = 0u;
                v548 = 0u;
                v549 = 0u;
                v546 = 0u;
                v547 = 0u;
                v562 = 0u;
                v563 = 0u;
                v564 = 0u;
                v565 = 0u;
                v566 = 0u;
                v567 = 0u;
                v568 = 0u;
                v569 = 0u;
              }

              v394 = v375 + v377;
              v395 = v74[7];
              if (v395 == 255)
              {
                v399 = *(v394 + 16);
                v400 = *(v394 + 32);
                v401 = *(v394 + 48);
                v402 = *(v394 + 64);
                v403 = *(v394 + 80);
                v404 = *(v394 + 96);
                v405 = *(v394 + 112);
                v406 = *(v394 + 128);
                v407 = *(v394 + 144);
                v408 = *(v394 + 160);
                v409 = *(v394 + 176);
                v410 = *(v394 + 192);
                v411 = *(v394 + 208);
                v412 = *(v394 + 224);
                v413 = *(v394 + 240);
                v578 = *v394;
                v579 = v399;
                v580 = v400;
                v581 = v401;
                v582 = v406;
                v583 = v407;
                v584 = v408;
                v585 = v409;
                v594 = v402;
                v595 = v403;
                v596 = v404;
                v597 = v405;
                v396 = v450;
                v397 = v451;
                v598 = v410;
                v599 = v411;
                v600 = v412;
                v601 = v413;
                v24 = v461;
                v44 = v42 + 1;
              }

              else
              {
                v24 = v461;
                v44 = v42 + 1;
                if (v395 == 7)
                {
                  v398 = vld1q_dup_f64(v394);
                  v578 = v398;
                  v579 = v398;
                  v580 = v398;
                  v581 = v398;
                  v582 = v398;
                  v583 = v398;
                  v584 = v398;
                  v585 = v398;
                  v594 = v398;
                  v595 = v398;
                  v596 = v398;
                  v597 = v398;
                  v598 = v398;
                  v599 = v398;
                  v600 = v398;
                  v396 = v450;
                  v397 = v451;
                  v601 = v398;
                }

                else if (v395)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v578, 256, v394, v395);
                  v397 = v467;
                  v79 = v468;
                  v396 = v469;
                }

                else
                {
                  v584 = 0u;
                  v585 = 0u;
                  v582 = 0u;
                  v583 = 0u;
                  v580 = 0u;
                  v581 = 0u;
                  v578 = 0u;
                  v579 = 0u;
                  v594 = 0u;
                  v595 = 0u;
                  v596 = 0u;
                  v597 = 0u;
                  v598 = 0u;
                  v599 = 0u;
                  v396 = v450;
                  v397 = v451;
                  v600 = 0u;
                  v601 = 0u;
                }
              }

              if (v396)
              {
                v414 = 0;
                v415 = &v474.f64[32 * v397 + 4 * v79];
                v416 = v470;
                do
                {
                  if (v416)
                  {
                    v417 = 0;
                    v418 = v465 + v466 * v414;
                    do
                    {
                      v418[v417] = *(v415 + v417);
                      ++v417;
                      v416 = v470;
                    }

                    while (32 * v470 > v417);
                    v396 = v469;
                  }

                  ++v414;
                  v415 += 16;
                }

                while (v414 < v396);
              }
            }
          }

          else
          {
            v76 = *v74;
            if (v76 == 255)
            {
              v84 = v73[1];
              v85 = v73[2];
              v86 = v73[3];
              v87 = v73[4];
              v88 = v73[5];
              v89 = v73[6];
              v90 = v73[7];
              v91 = v73[8];
              v92 = v73[9];
              v93 = v73[10];
              v94 = v73[11];
              v95 = v73[12];
              v96 = v73[13];
              v97 = v73[14];
              v98 = v73[15];
              v33 = a11;
              *v75 = *v73;
              v75[1] = v84;
              v75[2] = v85;
              v75[3] = v86;
              v99 = (v75 + a11);
              v75[4] = v91;
              v75[5] = v92;
              v75[6] = v93;
              v75[7] = v94;
              *v99 = v87;
              v99[1] = v88;
              v99[2] = v89;
              v99[3] = v90;
              v100 = (v75 + a11 + 64);
              v77 = 256;
              *v100 = v95;
              v100[1] = v96;
              v100[2] = v97;
              v100[3] = v98;
            }

            else
            {
              v33 = a11;
              if (v76 == 7)
              {
                v82 = vld1q_dup_f64(v73->f64);
                *v75 = v82;
                v75[1] = v82;
                v75[2] = v82;
                v75[3] = v82;
                v75[4] = v82;
                v75[5] = v82;
                v75[6] = v82;
                v75[7] = v82;
                v83 = (v75 + a11);
                *v83 = v82;
                v83[1] = v82;
                v83[2] = v82;
                v83[3] = v82;
                v83[4] = v82;
                v83[5] = v82;
                v83[6] = v82;
                v83[7] = v82;
                v77 = 8;
              }

              else if (*v74)
              {
                v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v77 = 0;
                v75[6] = 0u;
                v75[7] = 0u;
                v75[4] = 0u;
                v75[5] = 0u;
                v75[2] = 0u;
                v75[3] = 0u;
                *v75 = 0u;
                v75[1] = 0u;
                v78 = (v75->f64 + a11);
                v78[6] = 0u;
                v78[7] = 0u;
                v78[4] = 0u;
                v78[5] = 0u;
                v78[2] = 0u;
                v78[3] = 0u;
                *v78 = 0u;
                v78[1] = 0u;
              }
            }

            v101 = v73 + v77;
            v102 = (v75 + v445);
            v103 = v74[1];
            if (v103 == 255)
            {
              v108 = *(v101 + 16);
              v109 = *(v101 + 32);
              v110 = *(v101 + 48);
              v111 = *(v101 + 64);
              v112 = *(v101 + 80);
              v113 = *(v101 + 96);
              v114 = *(v101 + 112);
              v115 = *(v101 + 128);
              v116 = *(v101 + 144);
              v117 = *(v101 + 160);
              v118 = *(v101 + 176);
              v119 = *(v101 + 192);
              v120 = *(v101 + 208);
              v121 = *(v101 + 224);
              v122 = *(v101 + 240);
              *v102 = *v101;
              v102[1] = v108;
              v102[2] = v109;
              v102[3] = v110;
              v123 = (v102->f64 + v33);
              v102[4] = v115;
              v102[5] = v116;
              v102[6] = v117;
              v102[7] = v118;
              *v123 = v111;
              v123[1] = v112;
              v123[2] = v113;
              v123[3] = v114;
              v124 = (v102[4].f64 + v33);
              v104 = 256;
              *v124 = v119;
              v124[1] = v120;
              v124[2] = v121;
              v124[3] = v122;
            }

            else if (v103 == 7)
            {
              v106 = vld1q_dup_f64(v101);
              *v102 = v106;
              v102[1] = v106;
              v102[2] = v106;
              v102[3] = v106;
              v102[4] = v106;
              v102[5] = v106;
              v102[6] = v106;
              v102[7] = v106;
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

            else if (v74[1])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v445, v33, v101, v103);
            }

            else
            {
              v104 = 0;
              v102[6] = 0u;
              v102[7] = 0u;
              v102[4] = 0u;
              v102[5] = 0u;
              v102[2] = 0u;
              v102[3] = 0u;
              *v102 = 0u;
              v102[1] = 0u;
              v105 = (v102->f64 + v33);
              v105[6] = 0u;
              v105[7] = 0u;
              v105[4] = 0u;
              v105[5] = 0u;
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
            }

            v125 = v101 + v104;
            f64 = v75[8].f64;
            v127 = v74[2];
            if (v127 == 255)
            {
              v132 = *(v125 + 16);
              v133 = *(v125 + 32);
              v134 = *(v125 + 48);
              v135 = *(v125 + 64);
              v136 = *(v125 + 80);
              v137 = *(v125 + 96);
              v138 = *(v125 + 112);
              v139 = *(v125 + 128);
              v140 = *(v125 + 144);
              v141 = *(v125 + 160);
              v142 = *(v125 + 176);
              v143 = *(v125 + 192);
              v144 = *(v125 + 208);
              v145 = *(v125 + 224);
              v146 = *(v125 + 240);
              *f64 = *v125;
              v75[9] = v132;
              v75[10] = v133;
              v75[11] = v134;
              v147 = (f64 + v33);
              v75[12] = v139;
              v75[13] = v140;
              v75[14] = v141;
              v75[15] = v142;
              *v147 = v135;
              v147[1] = v136;
              v147[2] = v137;
              v147[3] = v138;
              v147 += 4;
              v128 = 256;
              *v147 = v143;
              v147[1] = v144;
              v147[2] = v145;
              v147[3] = v146;
            }

            else if (v127 == 7)
            {
              v130 = vld1q_dup_f64(v125);
              v75[8] = v130;
              v75[9] = v130;
              v75[10] = v130;
              v75[11] = v130;
              v75[12] = v130;
              v75[13] = v130;
              v75[14] = v130;
              v75[15] = v130;
              v131 = (f64 + v33);
              *v131 = v130;
              v131[1] = v130;
              v131[2] = v130;
              v131[3] = v130;
              v131[4] = v130;
              v131[5] = v130;
              v131[6] = v130;
              v131[7] = v130;
              v128 = 8;
            }

            else if (v74[2])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v33, v125, v127);
            }

            else
            {
              v128 = 0;
              v75[14] = 0u;
              v75[15] = 0u;
              v75[12] = 0u;
              v75[13] = 0u;
              v75[10] = 0u;
              v75[11] = 0u;
              *f64 = 0u;
              v75[9] = 0u;
              v129 = (f64 + v33);
              v129[6] = 0u;
              v129[7] = 0u;
              v129[4] = 0u;
              v129[5] = 0u;
              v129[2] = 0u;
              v129[3] = 0u;
              *v129 = 0u;
              v129[1] = 0u;
            }

            v148 = v125 + v128;
            v149 = v102[8].f64;
            v150 = v74[3];
            if (v150 == 255)
            {
              v155 = *(v148 + 16);
              v156 = *(v148 + 32);
              v157 = *(v148 + 48);
              v158 = *(v148 + 64);
              v159 = *(v148 + 80);
              v160 = *(v148 + 96);
              v161 = *(v148 + 112);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 160);
              v165 = *(v148 + 176);
              v166 = *(v148 + 192);
              v167 = *(v148 + 208);
              v168 = *(v148 + 224);
              v169 = *(v148 + 240);
              *v149 = *v148;
              v102[9] = v155;
              v102[10] = v156;
              v102[11] = v157;
              v170 = (v149 + v33);
              v102[12] = v162;
              v102[13] = v163;
              v102[14] = v164;
              v102[15] = v165;
              *v170 = v158;
              v170[1] = v159;
              v170[2] = v160;
              v170[3] = v161;
              v170 += 4;
              v151 = 256;
              *v170 = v166;
              v170[1] = v167;
              v170[2] = v168;
              v170[3] = v169;
            }

            else if (v150 == 7)
            {
              v153 = vld1q_dup_f64(v148);
              v102[8] = v153;
              v102[9] = v153;
              v102[10] = v153;
              v102[11] = v153;
              v102[12] = v153;
              v102[13] = v153;
              v102[14] = v153;
              v102[15] = v153;
              v154 = (v149 + v33);
              *v154 = v153;
              v154[1] = v153;
              v154[2] = v153;
              v154[3] = v153;
              v154[4] = v153;
              v154[5] = v153;
              v151 = 8;
              v154[6] = v153;
              v154[7] = v153;
            }

            else if (v74[3])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, v33, v148, v150);
            }

            else
            {
              v151 = 0;
              v102[14] = 0u;
              v102[15] = 0u;
              v102[12] = 0u;
              v102[13] = 0u;
              v102[10] = 0u;
              v102[11] = 0u;
              *v149 = 0u;
              v102[9] = 0u;
              v152 = (v149 + v33);
              v152[6] = 0u;
              v152[7] = 0u;
              v152[4] = 0u;
              v152[5] = 0u;
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
            }

            v171 = v148 + v151;
            v172 = (v75 + v444);
            v173 = v74[4];
            if (v173 == 255)
            {
              v178 = *(v171 + 16);
              v179 = *(v171 + 32);
              v180 = *(v171 + 48);
              v181 = *(v171 + 64);
              v182 = *(v171 + 80);
              v183 = *(v171 + 96);
              v184 = *(v171 + 112);
              v185 = *(v171 + 128);
              v186 = *(v171 + 144);
              v187 = *(v171 + 160);
              v188 = *(v171 + 176);
              v189 = *(v171 + 192);
              v190 = *(v171 + 208);
              v191 = *(v171 + 224);
              v192 = *(v171 + 240);
              *v172 = *v171;
              v172[1] = v178;
              v172[2] = v179;
              v172[3] = v180;
              v193 = (v172->f64 + v33);
              v172[4] = v185;
              v172[5] = v186;
              v172[6] = v187;
              v172[7] = v188;
              *v193 = v181;
              v193[1] = v182;
              v193[2] = v183;
              v193[3] = v184;
              v194 = (v172[4].f64 + v33);
              v174 = 256;
              *v194 = v189;
              v194[1] = v190;
              v194[2] = v191;
              v194[3] = v192;
            }

            else if (v173 == 7)
            {
              v176 = vld1q_dup_f64(v171);
              *v172 = v176;
              v172[1] = v176;
              v172[2] = v176;
              v172[3] = v176;
              v172[4] = v176;
              v172[5] = v176;
              v172[6] = v176;
              v172[7] = v176;
              v177 = (v172 + v33);
              *v177 = v176;
              v177[1] = v176;
              v177[2] = v176;
              v177[3] = v176;
              v177[4] = v176;
              v177[5] = v176;
              v177[6] = v176;
              v177[7] = v176;
              v174 = 8;
            }

            else if (v74[4])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v444, v33, v171, v173);
            }

            else
            {
              v174 = 0;
              v172[6] = 0u;
              v172[7] = 0u;
              v172[4] = 0u;
              v172[5] = 0u;
              v172[2] = 0u;
              v172[3] = 0u;
              *v172 = 0u;
              v172[1] = 0u;
              v175 = (v172->f64 + v33);
              v175[6] = 0u;
              v175[7] = 0u;
              v175[4] = 0u;
              v175[5] = 0u;
              v175[2] = 0u;
              v175[3] = 0u;
              *v175 = 0u;
              v175[1] = 0u;
            }

            v195 = v171 + v174;
            v196 = (v75 + 6 * a11);
            v197 = v74[5];
            if (v197 == 255)
            {
              v202 = *(v195 + 16);
              v203 = *(v195 + 32);
              v204 = *(v195 + 48);
              v205 = *(v195 + 64);
              v206 = *(v195 + 80);
              v207 = *(v195 + 96);
              v208 = *(v195 + 112);
              v209 = *(v195 + 128);
              v210 = *(v195 + 144);
              v211 = *(v195 + 160);
              v212 = *(v195 + 176);
              v213 = *(v195 + 192);
              v214 = *(v195 + 208);
              v215 = *(v195 + 224);
              v216 = *(v195 + 240);
              *v196 = *v195;
              v196[1] = v202;
              v196[2] = v203;
              v196[3] = v204;
              v217 = (v196->f64 + v33);
              v196[4] = v209;
              v196[5] = v210;
              v196[6] = v211;
              v196[7] = v212;
              *v217 = v205;
              v217[1] = v206;
              v217[2] = v207;
              v217[3] = v208;
              v218 = (v196[4].f64 + v33);
              v198 = 256;
              *v218 = v213;
              v218[1] = v214;
              v218[2] = v215;
              v218[3] = v216;
            }

            else if (v197 == 7)
            {
              v200 = vld1q_dup_f64(v195);
              *v196 = v200;
              v196[1] = v200;
              v196[2] = v200;
              v196[3] = v200;
              v196[4] = v200;
              v196[5] = v200;
              v196[6] = v200;
              v196[7] = v200;
              v201 = (v196 + v33);
              *v201 = v200;
              v201[1] = v200;
              v201[2] = v200;
              v201[3] = v200;
              v201[4] = v200;
              v201[5] = v200;
              v201[6] = v200;
              v201[7] = v200;
              v198 = 8;
            }

            else if (v74[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              v196[6] = 0u;
              v196[7] = 0u;
              v196[4] = 0u;
              v196[5] = 0u;
              v196[2] = 0u;
              v196[3] = 0u;
              *v196 = 0u;
              v196[1] = 0u;
              v199 = (v196->f64 + v33);
              v199[6] = 0u;
              v199[7] = 0u;
              v199[4] = 0u;
              v199[5] = 0u;
              v199[2] = 0u;
              v199[3] = 0u;
              *v199 = 0u;
              v199[1] = 0u;
            }

            v219 = v195 + v198;
            v220 = v172[8].f64;
            v221 = v74[6];
            if (v221 == 255)
            {
              v226 = *(v219 + 16);
              v227 = *(v219 + 32);
              v228 = *(v219 + 48);
              v229 = *(v219 + 64);
              v230 = *(v219 + 80);
              v231 = *(v219 + 96);
              v232 = *(v219 + 112);
              v233 = *(v219 + 128);
              v234 = *(v219 + 144);
              v235 = *(v219 + 160);
              v236 = *(v219 + 176);
              v237 = *(v219 + 192);
              v238 = *(v219 + 208);
              v239 = *(v219 + 224);
              v240 = *(v219 + 240);
              *v220 = *v219;
              v172[9] = v226;
              v172[10] = v227;
              v172[11] = v228;
              v241 = (v220 + v33);
              v172[12] = v233;
              v172[13] = v234;
              v172[14] = v235;
              v172[15] = v236;
              *v241 = v229;
              v241[1] = v230;
              v241[2] = v231;
              v241[3] = v232;
              v241 += 4;
              v222 = 256;
              *v241 = v237;
              v241[1] = v238;
              v241[2] = v239;
              v241[3] = v240;
            }

            else if (v221 == 7)
            {
              v224 = vld1q_dup_f64(v219);
              v172[8] = v224;
              v172[9] = v224;
              v172[10] = v224;
              v172[11] = v224;
              v172[12] = v224;
              v172[13] = v224;
              v172[14] = v224;
              v172[15] = v224;
              v225 = (v220 + v33);
              *v225 = v224;
              v225[1] = v224;
              v225[2] = v224;
              v225[3] = v224;
              v225[4] = v224;
              v225[5] = v224;
              v222 = 8;
              v225[6] = v224;
              v225[7] = v224;
            }

            else if (v74[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              v172[14] = 0u;
              v172[15] = 0u;
              v172[12] = 0u;
              v172[13] = 0u;
              v172[10] = 0u;
              v172[11] = 0u;
              *v220 = 0u;
              v172[9] = 0u;
              v223 = (v220 + v33);
              v223[6] = 0u;
              v223[7] = 0u;
              v223[4] = 0u;
              v223[5] = 0u;
              v223[2] = 0u;
              v223[3] = 0u;
              *v223 = 0u;
              v223[1] = 0u;
            }

            v44 = v42 + 1;
            v242 = v219 + v222;
            v243 = v196[8].f64;
            v244 = v74[7];
            if (v244 == 255)
            {
              v248 = *(v242 + 16);
              v249 = *(v242 + 32);
              v250 = *(v242 + 48);
              v251 = *(v242 + 64);
              v252 = *(v242 + 80);
              v253 = *(v242 + 96);
              v254 = *(v242 + 112);
              v255 = *(v242 + 128);
              v256 = *(v242 + 144);
              v257 = *(v242 + 160);
              v258 = *(v242 + 176);
              v259 = *(v242 + 192);
              v260 = *(v242 + 208);
              v261 = *(v242 + 224);
              v262 = *(v242 + 240);
              *v243 = *v242;
              v196[9] = v248;
              v196[10] = v249;
              v196[11] = v250;
              v263 = (v243 + v33);
              v196[12] = v255;
              v196[13] = v256;
              v196[14] = v257;
              v196[15] = v258;
              *v263 = v251;
              v263[1] = v252;
              v263[2] = v253;
              v263[3] = v254;
              v263 += 4;
              *v263 = v259;
              v263[1] = v260;
              v263[2] = v261;
              v263[3] = v262;
              v16 = v452;
              v24 = v461;
            }

            else
            {
              v24 = v461;
              if (v244 == 7)
              {
                v246 = vld1q_dup_f64(v242);
                v196[8] = v246;
                v196[9] = v246;
                v196[10] = v246;
                v196[11] = v246;
                v196[12] = v246;
                v196[13] = v246;
                v196[14] = v246;
                v196[15] = v246;
                v247 = (v243 + v33);
                *v247 = v246;
                v247[1] = v246;
                v247[2] = v246;
                v247[3] = v246;
                v247[4] = v246;
                v247[5] = v246;
                v247[6] = v246;
                v247[7] = v246;
              }

              else if (v244)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v243, v33, v242, v244);
              }

              else
              {
                v196[14] = 0u;
                v196[15] = 0u;
                v196[12] = 0u;
                v196[13] = 0u;
                v196[10] = 0u;
                v196[11] = 0u;
                *v243 = 0u;
                v196[9] = 0u;
                v245 = (v243 + v33);
                v245[6] = 0u;
                v245[7] = 0u;
                v245[4] = 0u;
                v245[5] = 0u;
                v245[2] = 0u;
                v245[3] = 0u;
                *v245 = 0u;
                v245[1] = 0u;
              }

              v16 = v452;
            }
          }

          v29 = v42 == v453 >> 3;
          v42 = v44;
        }

        while (!v29);
        v29 = v25++ == v443;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v456 = v21;
  v457 = v22;
  v442 = v23;
  v24 = v12;
  v602 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v460 = v14;
  v25 = v14 >> 3;
  v441 = v14 + a10 - 1;
  v443 = v441 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
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
  v455 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v443)
  {
    v453 = v16 + a9 - 1;
    v440 = v16 >> 3;
    if (v16 >> 3 <= v453 >> 3)
    {
      v33 = a11;
      v463 = (v20 - 1) >> 3;
      v437 = v20 - 1;
      v446 = (v20 - 1) & 7;
      v438 = (v18 - 1) & 7;
      v439 = (v18 - 1) >> 3;
      v444 = 4 * a11;
      v445 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v449 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v448 = v35;
      v436 = 8 * v27 * v26;
      v461 = v24;
      v452 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v460)
        {
          v37 = v460;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v441 < v36)
        {
          v36 = v441;
        }

        v459 = 8 * v25;
        v451 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v438;
        v450 = v39;
        v41 = v39 != 8;
        v42 = v440;
        v43 = v438 + 1;
        if (v25 != v439)
        {
          v43 = 8;
        }

        v462 = v43;
        if (v25 != v439)
        {
          v40 = v41;
        }

        v447 = v40;
        v458 = v442 + (v37 - v460) * v33;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v453 < v46)
          {
            v46 = v453;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v463)
          {
            v50 = v446 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v459 >= v460 && v45 >= v16)
          {
            v52 = v48 != v446;
            if (v42 != v463)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v447;
          }

          if (isLevelTiled)
          {
            v419 = 0;
            v420 = v436 >> (*(v24 + 57) != 0);
            v421 = 1;
            if (v420 <= 63)
            {
              if (v420 > 15)
              {
                if (v420 == 16)
                {
                  v421 = 0;
                  v422 = 0;
                  v423 = 64;
                  v419 = 128;
                }

                else
                {
                  v422 = 1;
                  v423 = 0;
                  if (v420 == 32)
                  {
                    v421 = 0;
                    v422 = 0;
                    v419 = 64;
                    v423 = 64;
                  }
                }
              }

              else if (v420 == 4)
              {
                v421 = 0;
                v422 = 0;
                v423 = 128;
                v419 = 256;
              }

              else
              {
                v422 = 1;
                v423 = 0;
                if (v420 == 8)
                {
                  v421 = 0;
                  v422 = 0;
                  v419 = 128;
                  v423 = 128;
                }
              }
            }

            else if (v420 <= 255)
            {
              if (v420 == 64)
              {
                v421 = 0;
                v422 = 0;
                v423 = 32;
                v419 = 64;
              }

              else
              {
                v422 = 1;
                v423 = 0;
                if (v420 == 128)
                {
                  v421 = 0;
                  v422 = 0;
                  v419 = 32;
                  v423 = 32;
                }
              }
            }

            else if (v420 == 256)
            {
              v421 = 0;
              v422 = 0;
              v423 = 16;
              v419 = 32;
            }

            else if (v420 == 512)
            {
              v421 = 0;
              v422 = 0;
              v419 = 16;
              v423 = 16;
            }

            else
            {
              v422 = 1;
              v423 = 0;
              if (v420 == 1024)
              {
                v421 = 0;
                v423 = 8;
                v419 = 16;
              }
            }

            v424 = (v419 >> 3) - 1;
            if (v421)
            {
              v425 = 0;
            }

            else
            {
              v425 = 32 - __clz(~(-1 << -__clz(v424)));
            }

            v426 = (v423 >> 3) - 1;
            if (v422)
            {
              v427 = 0;
              if (v425)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v427 = 32 - __clz(~(-1 << -__clz(v426)));
              if (v427 | v425)
              {
LABEL_226:
                v428 = 0;
                v429 = 0;
                v430 = v42 & v424;
                v431 = v25 & v426;
                v432 = v425 != 0;
                v433 = v427 != 0;
                v434 = 1;
                do
                {
                  --v425;
                  if (v432)
                  {
                    v429 |= (v434 & v430) << v428++;
                  }

                  else
                  {
                    v425 = 0;
                  }

                  --v427;
                  if (v433)
                  {
                    v429 |= (v434 & v431) << v428++;
                  }

                  else
                  {
                    v427 = 0;
                  }

                  v434 *= 2;
                  --v428;
                  v433 = v427 != 0;
                  v432 = v425 != 0;
                }

                while (v427 | v425);
                v435 = v429 << 11;
                goto LABEL_238;
              }
            }

            v435 = 0;
LABEL_238:
            v60 = v435 + ((v45 / v419 + v459 / v423 * ((v419 + v437) / v419)) << 14);
            goto LABEL_55;
          }

          if (v449)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v448.i8[4];
            v57 = v448.i8[0];
            v58 = v449.i32[1];
            v59 = v449.i32[0];
            do
            {
              --v58;
              if (v56)
              {
                v54 |= (v55 & v42) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v57)
              {
                v54 |= (v55 & v25) << v53++;
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
            v60 = v54 << 11;
          }

          else
          {
            v60 = 0;
          }

LABEL_55:
          v61 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v24 + 132) >> (*(v24 + 144) + a12);
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

          if (v66 | v63)
          {
            v67 = 0;
            v68 = 0;
            v69 = v63 != 0;
            v70 = v66 != 0;
            v71 = 1;
            do
            {
              --v63;
              if (v69)
              {
                v68 |= (v71 & v42) << v67++;
              }

              else
              {
                v63 = 0;
              }

              --v66;
              if (v70)
              {
                v68 |= (v71 & v25) << v67++;
              }

              else
              {
                v66 = 0;
              }

              v71 *= 2;
              --v67;
              v70 = v66 != 0;
              v69 = v63 != 0;
            }

            while (v66 | v63);
            v72 = 8 * v68;
          }

          else
          {
            v72 = 0;
          }

          v73 = (v456 + v60);
          if (v455)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v73 = __dst;
          }

          v74 = (v457 + v72);
          v75 = (v458 + 32 * (v47 - v16));
          if (v51 & 1 | (v50 < 8u) || v462 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            v79 = v47 - v45;
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v461;
            block[5] = v73;
            v471 = v50;
            v472 = v462;
            v467 = v451;
            v468 = v79;
            block[6] = v74;
            v465 = v75;
            v33 = a11;
            v466 = a11;
            v469 = v450;
            v470 = v49;
            if (v51)
            {
              dispatch_sync(*(*(v461 + 8) + 16552), block);
              v16 = v452;
              v24 = v461;
              v44 = v42 + 1;
            }

            else
            {
              v80 = *v74;
              v16 = v452;
              if (v80 == 255)
              {
                v265 = v73[1];
                v266 = v73[2];
                v267 = v73[3];
                v268 = v73[4];
                v269 = v73[5];
                v270 = v73[6];
                v271 = v73[7];
                v272 = v73[8];
                v273 = v73[9];
                v274 = v73[10];
                v275 = v73[11];
                v276 = v73[12];
                v277 = v73[13];
                v278 = v73[14];
                v279 = v73[15];
                v474 = *v73;
                v475 = v265;
                v476 = v266;
                v477 = v267;
                v478 = v272;
                v479 = v273;
                v480 = v274;
                v481 = v275;
                v490 = v268;
                v491 = v269;
                v492 = v270;
                v493 = v271;
                v81 = 256;
                v494 = v276;
                v495 = v277;
                v496 = v278;
                v497 = v279;
              }

              else if (v80 == 7)
              {
                v264 = vld1q_dup_f64(v73->f64);
                v474 = v264;
                v475 = v264;
                v476 = v264;
                v477 = v264;
                v478 = v264;
                v479 = v264;
                v480 = v264;
                v481 = v264;
                v490 = v264;
                v491 = v264;
                v492 = v264;
                v493 = v264;
                v494 = v264;
                v495 = v264;
                v81 = 8;
                v496 = v264;
                v497 = v264;
              }

              else if (*v74)
              {
                v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v474, 256, v73, v80);
              }

              else
              {
                v81 = 0;
                v481 = 0u;
                v480 = 0u;
                v479 = 0u;
                v478 = 0u;
                v477 = 0u;
                v476 = 0u;
                v475 = 0u;
                v474 = 0u;
                v490 = 0u;
                v491 = 0u;
                v492 = 0u;
                v493 = 0u;
                v494 = 0u;
                v495 = 0u;
                v496 = 0u;
                v497 = 0u;
              }

              v280 = v73 + v81;
              v281 = v74[1];
              if (v281 == 255)
              {
                v284 = *(v280 + 16);
                v285 = *(v280 + 32);
                v286 = *(v280 + 48);
                v287 = *(v280 + 64);
                v288 = *(v280 + 80);
                v289 = *(v280 + 96);
                v290 = *(v280 + 112);
                v291 = *(v280 + 128);
                v292 = *(v280 + 144);
                v293 = *(v280 + 160);
                v294 = *(v280 + 176);
                v295 = *(v280 + 192);
                v296 = *(v280 + 208);
                v297 = *(v280 + 224);
                v298 = *(v280 + 240);
                v506 = *v280;
                v507 = v284;
                v508 = v285;
                v509 = v286;
                v510 = v291;
                v511 = v292;
                v512 = v293;
                v513 = v294;
                v522 = v287;
                v523 = v288;
                v524 = v289;
                v525 = v290;
                v282 = 256;
                v526 = v295;
                v527 = v296;
                v528 = v297;
                v529 = v298;
              }

              else if (v281 == 7)
              {
                v283 = vld1q_dup_f64(v280);
                v506 = v283;
                v507 = v283;
                v508 = v283;
                v509 = v283;
                v510 = v283;
                v511 = v283;
                v512 = v283;
                v513 = v283;
                v522 = v283;
                v523 = v283;
                v524 = v283;
                v525 = v283;
                v526 = v283;
                v527 = v283;
                v282 = 8;
                v528 = v283;
                v529 = v283;
              }

              else if (v74[1])
              {
                v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v506, 256, v280, v281);
              }

              else
              {
                v282 = 0;
                v512 = 0u;
                v513 = 0u;
                v510 = 0u;
                v511 = 0u;
                v508 = 0u;
                v509 = 0u;
                v506 = 0u;
                v507 = 0u;
                v522 = 0u;
                v523 = 0u;
                v524 = 0u;
                v525 = 0u;
                v526 = 0u;
                v527 = 0u;
                v528 = 0u;
                v529 = 0u;
              }

              v299 = v280 + v282;
              v300 = v74[2];
              if (v300 == 255)
              {
                v303 = *(v299 + 16);
                v304 = *(v299 + 32);
                v305 = *(v299 + 48);
                v306 = *(v299 + 64);
                v307 = *(v299 + 80);
                v308 = *(v299 + 96);
                v309 = *(v299 + 112);
                v310 = *(v299 + 128);
                v311 = *(v299 + 144);
                v312 = *(v299 + 160);
                v313 = *(v299 + 176);
                v314 = *(v299 + 192);
                v315 = *(v299 + 208);
                v316 = *(v299 + 224);
                v317 = *(v299 + 240);
                v482 = *v299;
                v483 = v303;
                v484 = v304;
                v485 = v305;
                v486 = v310;
                v487 = v311;
                v488 = v312;
                v489 = v313;
                v498 = v306;
                v499 = v307;
                v500 = v308;
                v501 = v309;
                v301 = 256;
                v502 = v314;
                v503 = v315;
                v504 = v316;
                v505 = v317;
              }

              else if (v300 == 7)
              {
                v302 = vld1q_dup_f64(v299);
                v482 = v302;
                v483 = v302;
                v484 = v302;
                v485 = v302;
                v486 = v302;
                v487 = v302;
                v488 = v302;
                v489 = v302;
                v498 = v302;
                v499 = v302;
                v500 = v302;
                v501 = v302;
                v502 = v302;
                v503 = v302;
                v301 = 8;
                v504 = v302;
                v505 = v302;
              }

              else if (v74[2])
              {
                v301 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v482, 256, v299, v300);
              }

              else
              {
                v301 = 0;
                v488 = 0u;
                v489 = 0u;
                v486 = 0u;
                v487 = 0u;
                v484 = 0u;
                v485 = 0u;
                v482 = 0u;
                v483 = 0u;
                v498 = 0u;
                v499 = 0u;
                v500 = 0u;
                v501 = 0u;
                v502 = 0u;
                v503 = 0u;
                v504 = 0u;
                v505 = 0u;
              }

              v318 = v299 + v301;
              v319 = v74[3];
              if (v319 == 255)
              {
                v322 = *(v318 + 16);
                v323 = *(v318 + 32);
                v324 = *(v318 + 48);
                v325 = *(v318 + 64);
                v326 = *(v318 + 80);
                v327 = *(v318 + 96);
                v328 = *(v318 + 112);
                v329 = *(v318 + 128);
                v330 = *(v318 + 144);
                v331 = *(v318 + 160);
                v332 = *(v318 + 176);
                v333 = *(v318 + 192);
                v334 = *(v318 + 208);
                v335 = *(v318 + 224);
                v336 = *(v318 + 240);
                v514 = *v318;
                v515 = v322;
                v516 = v323;
                v517 = v324;
                v518 = v329;
                v519 = v330;
                v520 = v331;
                v521 = v332;
                v530 = v325;
                v531 = v326;
                v532 = v327;
                v533 = v328;
                v320 = 256;
                v534 = v333;
                v535 = v334;
                v536 = v335;
                v537 = v336;
              }

              else if (v319 == 7)
              {
                v321 = vld1q_dup_f64(v318);
                v514 = v321;
                v515 = v321;
                v516 = v321;
                v517 = v321;
                v518 = v321;
                v519 = v321;
                v520 = v321;
                v521 = v321;
                v530 = v321;
                v531 = v321;
                v532 = v321;
                v533 = v321;
                v534 = v321;
                v535 = v321;
                v320 = 8;
                v536 = v321;
                v537 = v321;
              }

              else if (v74[3])
              {
                v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v514, 256, v318, v319);
              }

              else
              {
                v320 = 0;
                v520 = 0u;
                v521 = 0u;
                v518 = 0u;
                v519 = 0u;
                v516 = 0u;
                v517 = 0u;
                v514 = 0u;
                v515 = 0u;
                v530 = 0u;
                v531 = 0u;
                v532 = 0u;
                v533 = 0u;
                v534 = 0u;
                v535 = 0u;
                v536 = 0u;
                v537 = 0u;
              }

              v337 = v318 + v320;
              v338 = v74[4];
              if (v338 == 255)
              {
                v341 = *(v337 + 16);
                v342 = *(v337 + 32);
                v343 = *(v337 + 48);
                v344 = *(v337 + 64);
                v345 = *(v337 + 80);
                v346 = *(v337 + 96);
                v347 = *(v337 + 112);
                v348 = *(v337 + 128);
                v349 = *(v337 + 144);
                v350 = *(v337 + 160);
                v351 = *(v337 + 176);
                v352 = *(v337 + 192);
                v353 = *(v337 + 208);
                v354 = *(v337 + 224);
                v355 = *(v337 + 240);
                v538 = *v337;
                v539 = v341;
                v540 = v342;
                v541 = v343;
                v542 = v348;
                v543 = v349;
                v544 = v350;
                v545 = v351;
                v554 = v344;
                v555 = v345;
                v556 = v346;
                v557 = v347;
                v339 = 256;
                v558 = v352;
                v559 = v353;
                v560 = v354;
                v561 = v355;
              }

              else if (v338 == 7)
              {
                v340 = vld1q_dup_f64(v337);
                v538 = v340;
                v539 = v340;
                v540 = v340;
                v541 = v340;
                v542 = v340;
                v543 = v340;
                v544 = v340;
                v545 = v340;
                v554 = v340;
                v555 = v340;
                v556 = v340;
                v557 = v340;
                v558 = v340;
                v559 = v340;
                v560 = v340;
                v339 = 8;
                v561 = v340;
              }

              else if (v74[4])
              {
                v339 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v538, 256, v337, v338);
              }

              else
              {
                v339 = 0;
                v544 = 0u;
                v545 = 0u;
                v542 = 0u;
                v543 = 0u;
                v540 = 0u;
                v541 = 0u;
                v538 = 0u;
                v539 = 0u;
                v554 = 0u;
                v555 = 0u;
                v556 = 0u;
                v557 = 0u;
                v558 = 0u;
                v559 = 0u;
                v560 = 0u;
                v561 = 0u;
              }

              v356 = v337 + v339;
              v357 = v74[5];
              if (v357 == 255)
              {
                v360 = *(v356 + 16);
                v361 = *(v356 + 32);
                v362 = *(v356 + 48);
                v363 = *(v356 + 64);
                v364 = *(v356 + 80);
                v365 = *(v356 + 96);
                v366 = *(v356 + 112);
                v367 = *(v356 + 128);
                v368 = *(v356 + 144);
                v369 = *(v356 + 160);
                v370 = *(v356 + 176);
                v371 = *(v356 + 192);
                v372 = *(v356 + 208);
                v373 = *(v356 + 224);
                v374 = *(v356 + 240);
                v570 = *v356;
                v571 = v360;
                v572 = v361;
                v573 = v362;
                v574 = v367;
                v575 = v368;
                v576 = v369;
                v577 = v370;
                v586 = v363;
                v587 = v364;
                v588 = v365;
                v589 = v366;
                v358 = 256;
                v590 = v371;
                v591 = v372;
                v592 = v373;
                v593 = v374;
              }

              else if (v357 == 7)
              {
                v359 = vld1q_dup_f64(v356);
                v570 = v359;
                v571 = v359;
                v572 = v359;
                v573 = v359;
                v574 = v359;
                v575 = v359;
                v576 = v359;
                v577 = v359;
                v586 = v359;
                v587 = v359;
                v588 = v359;
                v589 = v359;
                v590 = v359;
                v591 = v359;
                v592 = v359;
                v358 = 8;
                v593 = v359;
              }

              else if (v74[5])
              {
                v358 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v570, 256, v356, v357);
              }

              else
              {
                v358 = 0;
                v576 = 0u;
                v577 = 0u;
                v574 = 0u;
                v575 = 0u;
                v572 = 0u;
                v573 = 0u;
                v570 = 0u;
                v571 = 0u;
                v586 = 0u;
                v587 = 0u;
                v588 = 0u;
                v589 = 0u;
                v590 = 0u;
                v591 = 0u;
                v592 = 0u;
                v593 = 0u;
              }

              v375 = v356 + v358;
              v376 = v74[6];
              if (v376 == 255)
              {
                v379 = *(v375 + 16);
                v380 = *(v375 + 32);
                v381 = *(v375 + 48);
                v382 = *(v375 + 64);
                v383 = *(v375 + 80);
                v384 = *(v375 + 96);
                v385 = *(v375 + 112);
                v386 = *(v375 + 128);
                v387 = *(v375 + 144);
                v388 = *(v375 + 160);
                v389 = *(v375 + 176);
                v390 = *(v375 + 192);
                v391 = *(v375 + 208);
                v392 = *(v375 + 224);
                v393 = *(v375 + 240);
                v546 = *v375;
                v547 = v379;
                v548 = v380;
                v549 = v381;
                v550 = v386;
                v551 = v387;
                v552 = v388;
                v553 = v389;
                v562 = v382;
                v563 = v383;
                v564 = v384;
                v565 = v385;
                v377 = 256;
                v566 = v390;
                v567 = v391;
                v568 = v392;
                v569 = v393;
              }

              else if (v376 == 7)
              {
                v378 = vld1q_dup_f64(v375);
                v546 = v378;
                v547 = v378;
                v548 = v378;
                v549 = v378;
                v550 = v378;
                v551 = v378;
                v552 = v378;
                v553 = v378;
                v562 = v378;
                v563 = v378;
                v564 = v378;
                v565 = v378;
                v566 = v378;
                v567 = v378;
                v568 = v378;
                v377 = 8;
                v569 = v378;
              }

              else if (v74[6])
              {
                v377 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v546, 256, v375, v376);
              }

              else
              {
                v377 = 0;
                v552 = 0u;
                v553 = 0u;
                v550 = 0u;
                v551 = 0u;
                v548 = 0u;
                v549 = 0u;
                v546 = 0u;
                v547 = 0u;
                v562 = 0u;
                v563 = 0u;
                v564 = 0u;
                v565 = 0u;
                v566 = 0u;
                v567 = 0u;
                v568 = 0u;
                v569 = 0u;
              }

              v394 = v375 + v377;
              v395 = v74[7];
              if (v395 == 255)
              {
                v399 = *(v394 + 16);
                v400 = *(v394 + 32);
                v401 = *(v394 + 48);
                v402 = *(v394 + 64);
                v403 = *(v394 + 80);
                v404 = *(v394 + 96);
                v405 = *(v394 + 112);
                v406 = *(v394 + 128);
                v407 = *(v394 + 144);
                v408 = *(v394 + 160);
                v409 = *(v394 + 176);
                v410 = *(v394 + 192);
                v411 = *(v394 + 208);
                v412 = *(v394 + 224);
                v413 = *(v394 + 240);
                v578 = *v394;
                v579 = v399;
                v580 = v400;
                v581 = v401;
                v582 = v406;
                v583 = v407;
                v584 = v408;
                v585 = v409;
                v594 = v402;
                v595 = v403;
                v596 = v404;
                v597 = v405;
                v396 = v450;
                v397 = v451;
                v598 = v410;
                v599 = v411;
                v600 = v412;
                v601 = v413;
                v24 = v461;
                v44 = v42 + 1;
              }

              else
              {
                v24 = v461;
                v44 = v42 + 1;
                if (v395 == 7)
                {
                  v398 = vld1q_dup_f64(v394);
                  v578 = v398;
                  v579 = v398;
                  v580 = v398;
                  v581 = v398;
                  v582 = v398;
                  v583 = v398;
                  v584 = v398;
                  v585 = v398;
                  v594 = v398;
                  v595 = v398;
                  v596 = v398;
                  v597 = v398;
                  v598 = v398;
                  v599 = v398;
                  v600 = v398;
                  v396 = v450;
                  v397 = v451;
                  v601 = v398;
                }

                else if (v395)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v578, 256, v394, v395);
                  v397 = v467;
                  v79 = v468;
                  v396 = v469;
                }

                else
                {
                  v584 = 0u;
                  v585 = 0u;
                  v582 = 0u;
                  v583 = 0u;
                  v580 = 0u;
                  v581 = 0u;
                  v578 = 0u;
                  v579 = 0u;
                  v594 = 0u;
                  v595 = 0u;
                  v596 = 0u;
                  v597 = 0u;
                  v598 = 0u;
                  v599 = 0u;
                  v396 = v450;
                  v397 = v451;
                  v600 = 0u;
                  v601 = 0u;
                }
              }

              if (v396)
              {
                v414 = 0;
                v415 = &v474.f64[32 * v397 + 4 * v79];
                v416 = v470;
                do
                {
                  if (v416)
                  {
                    v417 = 0;
                    v418 = v465 + v466 * v414;
                    do
                    {
                      v418[v417] = *(v415 + v417);
                      ++v417;
                      v416 = v470;
                    }

                    while (32 * v470 > v417);
                    v396 = v469;
                  }

                  ++v414;
                  v415 += 16;
                }

                while (v414 < v396);
              }
            }
          }

          else
          {
            v76 = *v74;
            if (v76 == 255)
            {
              v84 = v73[1];
              v85 = v73[2];
              v86 = v73[3];
              v87 = v73[4];
              v88 = v73[5];
              v89 = v73[6];
              v90 = v73[7];
              v91 = v73[8];
              v92 = v73[9];
              v93 = v73[10];
              v94 = v73[11];
              v95 = v73[12];
              v96 = v73[13];
              v97 = v73[14];
              v98 = v73[15];
              v33 = a11;
              *v75 = *v73;
              v75[1] = v84;
              v75[2] = v85;
              v75[3] = v86;
              v99 = (v75 + a11);
              v75[4] = v91;
              v75[5] = v92;
              v75[6] = v93;
              v75[7] = v94;
              *v99 = v87;
              v99[1] = v88;
              v99[2] = v89;
              v99[3] = v90;
              v100 = (v75 + a11 + 64);
              v77 = 256;
              *v100 = v95;
              v100[1] = v96;
              v100[2] = v97;
              v100[3] = v98;
            }

            else
            {
              v33 = a11;
              if (v76 == 7)
              {
                v82 = vld1q_dup_f64(v73->f64);
                *v75 = v82;
                v75[1] = v82;
                v75[2] = v82;
                v75[3] = v82;
                v75[4] = v82;
                v75[5] = v82;
                v75[6] = v82;
                v75[7] = v82;
                v83 = (v75 + a11);
                *v83 = v82;
                v83[1] = v82;
                v83[2] = v82;
                v83[3] = v82;
                v83[4] = v82;
                v83[5] = v82;
                v83[6] = v82;
                v83[7] = v82;
                v77 = 8;
              }

              else if (*v74)
              {
                v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v77 = 0;
                v75[6] = 0u;
                v75[7] = 0u;
                v75[4] = 0u;
                v75[5] = 0u;
                v75[2] = 0u;
                v75[3] = 0u;
                *v75 = 0u;
                v75[1] = 0u;
                v78 = (v75->f64 + a11);
                v78[6] = 0u;
                v78[7] = 0u;
                v78[4] = 0u;
                v78[5] = 0u;
                v78[2] = 0u;
                v78[3] = 0u;
                *v78 = 0u;
                v78[1] = 0u;
              }
            }

            v101 = v73 + v77;
            v102 = (v75 + v445);
            v103 = v74[1];
            if (v103 == 255)
            {
              v108 = *(v101 + 16);
              v109 = *(v101 + 32);
              v110 = *(v101 + 48);
              v111 = *(v101 + 64);
              v112 = *(v101 + 80);
              v113 = *(v101 + 96);
              v114 = *(v101 + 112);
              v115 = *(v101 + 128);
              v116 = *(v101 + 144);
              v117 = *(v101 + 160);
              v118 = *(v101 + 176);
              v119 = *(v101 + 192);
              v120 = *(v101 + 208);
              v121 = *(v101 + 224);
              v122 = *(v101 + 240);
              *v102 = *v101;
              v102[1] = v108;
              v102[2] = v109;
              v102[3] = v110;
              v123 = (v102->f64 + v33);
              v102[4] = v115;
              v102[5] = v116;
              v102[6] = v117;
              v102[7] = v118;
              *v123 = v111;
              v123[1] = v112;
              v123[2] = v113;
              v123[3] = v114;
              v124 = (v102[4].f64 + v33);
              v104 = 256;
              *v124 = v119;
              v124[1] = v120;
              v124[2] = v121;
              v124[3] = v122;
            }

            else if (v103 == 7)
            {
              v106 = vld1q_dup_f64(v101);
              *v102 = v106;
              v102[1] = v106;
              v102[2] = v106;
              v102[3] = v106;
              v102[4] = v106;
              v102[5] = v106;
              v102[6] = v106;
              v102[7] = v106;
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

            else if (v74[1])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v445, v33, v101, v103);
            }

            else
            {
              v104 = 0;
              v102[6] = 0u;
              v102[7] = 0u;
              v102[4] = 0u;
              v102[5] = 0u;
              v102[2] = 0u;
              v102[3] = 0u;
              *v102 = 0u;
              v102[1] = 0u;
              v105 = (v102->f64 + v33);
              v105[6] = 0u;
              v105[7] = 0u;
              v105[4] = 0u;
              v105[5] = 0u;
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
            }

            v125 = v101 + v104;
            f64 = v75[8].f64;
            v127 = v74[2];
            if (v127 == 255)
            {
              v132 = *(v125 + 16);
              v133 = *(v125 + 32);
              v134 = *(v125 + 48);
              v135 = *(v125 + 64);
              v136 = *(v125 + 80);
              v137 = *(v125 + 96);
              v138 = *(v125 + 112);
              v139 = *(v125 + 128);
              v140 = *(v125 + 144);
              v141 = *(v125 + 160);
              v142 = *(v125 + 176);
              v143 = *(v125 + 192);
              v144 = *(v125 + 208);
              v145 = *(v125 + 224);
              v146 = *(v125 + 240);
              *f64 = *v125;
              v75[9] = v132;
              v75[10] = v133;
              v75[11] = v134;
              v147 = (f64 + v33);
              v75[12] = v139;
              v75[13] = v140;
              v75[14] = v141;
              v75[15] = v142;
              *v147 = v135;
              v147[1] = v136;
              v147[2] = v137;
              v147[3] = v138;
              v147 += 4;
              v128 = 256;
              *v147 = v143;
              v147[1] = v144;
              v147[2] = v145;
              v147[3] = v146;
            }

            else if (v127 == 7)
            {
              v130 = vld1q_dup_f64(v125);
              v75[8] = v130;
              v75[9] = v130;
              v75[10] = v130;
              v75[11] = v130;
              v75[12] = v130;
              v75[13] = v130;
              v75[14] = v130;
              v75[15] = v130;
              v131 = (f64 + v33);
              *v131 = v130;
              v131[1] = v130;
              v131[2] = v130;
              v131[3] = v130;
              v131[4] = v130;
              v131[5] = v130;
              v131[6] = v130;
              v131[7] = v130;
              v128 = 8;
            }

            else if (v74[2])
            {
              v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v33, v125, v127);
            }

            else
            {
              v128 = 0;
              v75[14] = 0u;
              v75[15] = 0u;
              v75[12] = 0u;
              v75[13] = 0u;
              v75[10] = 0u;
              v75[11] = 0u;
              *f64 = 0u;
              v75[9] = 0u;
              v129 = (f64 + v33);
              v129[6] = 0u;
              v129[7] = 0u;
              v129[4] = 0u;
              v129[5] = 0u;
              v129[2] = 0u;
              v129[3] = 0u;
              *v129 = 0u;
              v129[1] = 0u;
            }

            v148 = v125 + v128;
            v149 = v102[8].f64;
            v150 = v74[3];
            if (v150 == 255)
            {
              v155 = *(v148 + 16);
              v156 = *(v148 + 32);
              v157 = *(v148 + 48);
              v158 = *(v148 + 64);
              v159 = *(v148 + 80);
              v160 = *(v148 + 96);
              v161 = *(v148 + 112);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 160);
              v165 = *(v148 + 176);
              v166 = *(v148 + 192);
              v167 = *(v148 + 208);
              v168 = *(v148 + 224);
              v169 = *(v148 + 240);
              *v149 = *v148;
              v102[9] = v155;
              v102[10] = v156;
              v102[11] = v157;
              v170 = (v149 + v33);
              v102[12] = v162;
              v102[13] = v163;
              v102[14] = v164;
              v102[15] = v165;
              *v170 = v158;
              v170[1] = v159;
              v170[2] = v160;
              v170[3] = v161;
              v170 += 4;
              v151 = 256;
              *v170 = v166;
              v170[1] = v167;
              v170[2] = v168;
              v170[3] = v169;
            }

            else if (v150 == 7)
            {
              v153 = vld1q_dup_f64(v148);
              v102[8] = v153;
              v102[9] = v153;
              v102[10] = v153;
              v102[11] = v153;
              v102[12] = v153;
              v102[13] = v153;
              v102[14] = v153;
              v102[15] = v153;
              v154 = (v149 + v33);
              *v154 = v153;
              v154[1] = v153;
              v154[2] = v153;
              v154[3] = v153;
              v154[4] = v153;
              v154[5] = v153;
              v151 = 8;
              v154[6] = v153;
              v154[7] = v153;
            }

            else if (v74[3])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, v33, v148, v150);
            }

            else
            {
              v151 = 0;
              v102[14] = 0u;
              v102[15] = 0u;
              v102[12] = 0u;
              v102[13] = 0u;
              v102[10] = 0u;
              v102[11] = 0u;
              *v149 = 0u;
              v102[9] = 0u;
              v152 = (v149 + v33);
              v152[6] = 0u;
              v152[7] = 0u;
              v152[4] = 0u;
              v152[5] = 0u;
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
            }

            v171 = v148 + v151;
            v172 = (v75 + v444);
            v173 = v74[4];
            if (v173 == 255)
            {
              v178 = *(v171 + 16);
              v179 = *(v171 + 32);
              v180 = *(v171 + 48);
              v181 = *(v171 + 64);
              v182 = *(v171 + 80);
              v183 = *(v171 + 96);
              v184 = *(v171 + 112);
              v185 = *(v171 + 128);
              v186 = *(v171 + 144);
              v187 = *(v171 + 160);
              v188 = *(v171 + 176);
              v189 = *(v171 + 192);
              v190 = *(v171 + 208);
              v191 = *(v171 + 224);
              v192 = *(v171 + 240);
              *v172 = *v171;
              v172[1] = v178;
              v172[2] = v179;
              v172[3] = v180;
              v193 = (v172->f64 + v33);
              v172[4] = v185;
              v172[5] = v186;
              v172[6] = v187;
              v172[7] = v188;
              *v193 = v181;
              v193[1] = v182;
              v193[2] = v183;
              v193[3] = v184;
              v194 = (v172[4].f64 + v33);
              v174 = 256;
              *v194 = v189;
              v194[1] = v190;
              v194[2] = v191;
              v194[3] = v192;
            }

            else if (v173 == 7)
            {
              v176 = vld1q_dup_f64(v171);
              *v172 = v176;
              v172[1] = v176;
              v172[2] = v176;
              v172[3] = v176;
              v172[4] = v176;
              v172[5] = v176;
              v172[6] = v176;
              v172[7] = v176;
              v177 = (v172 + v33);
              *v177 = v176;
              v177[1] = v176;
              v177[2] = v176;
              v177[3] = v176;
              v177[4] = v176;
              v177[5] = v176;
              v177[6] = v176;
              v177[7] = v176;
              v174 = 8;
            }

            else if (v74[4])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v444, v33, v171, v173);
            }

            else
            {
              v174 = 0;
              v172[6] = 0u;
              v172[7] = 0u;
              v172[4] = 0u;
              v172[5] = 0u;
              v172[2] = 0u;
              v172[3] = 0u;
              *v172 = 0u;
              v172[1] = 0u;
              v175 = (v172->f64 + v33);
              v175[6] = 0u;
              v175[7] = 0u;
              v175[4] = 0u;
              v175[5] = 0u;
              v175[2] = 0u;
              v175[3] = 0u;
              *v175 = 0u;
              v175[1] = 0u;
            }

            v195 = v171 + v174;
            v196 = (v75 + 6 * a11);
            v197 = v74[5];
            if (v197 == 255)
            {
              v202 = *(v195 + 16);
              v203 = *(v195 + 32);
              v204 = *(v195 + 48);
              v205 = *(v195 + 64);
              v206 = *(v195 + 80);
              v207 = *(v195 + 96);
              v208 = *(v195 + 112);
              v209 = *(v195 + 128);
              v210 = *(v195 + 144);
              v211 = *(v195 + 160);
              v212 = *(v195 + 176);
              v213 = *(v195 + 192);
              v214 = *(v195 + 208);
              v215 = *(v195 + 224);
              v216 = *(v195 + 240);
              *v196 = *v195;
              v196[1] = v202;
              v196[2] = v203;
              v196[3] = v204;
              v217 = (v196->f64 + v33);
              v196[4] = v209;
              v196[5] = v210;
              v196[6] = v211;
              v196[7] = v212;
              *v217 = v205;
              v217[1] = v206;
              v217[2] = v207;
              v217[3] = v208;
              v218 = (v196[4].f64 + v33);
              v198 = 256;
              *v218 = v213;
              v218[1] = v214;
              v218[2] = v215;
              v218[3] = v216;
            }

            else if (v197 == 7)
            {
              v200 = vld1q_dup_f64(v195);
              *v196 = v200;
              v196[1] = v200;
              v196[2] = v200;
              v196[3] = v200;
              v196[4] = v200;
              v196[5] = v200;
              v196[6] = v200;
              v196[7] = v200;
              v201 = (v196 + v33);
              *v201 = v200;
              v201[1] = v200;
              v201[2] = v200;
              v201[3] = v200;
              v201[4] = v200;
              v201[5] = v200;
              v201[6] = v200;
              v201[7] = v200;
              v198 = 8;
            }

            else if (v74[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              v196[6] = 0u;
              v196[7] = 0u;
              v196[4] = 0u;
              v196[5] = 0u;
              v196[2] = 0u;
              v196[3] = 0u;
              *v196 = 0u;
              v196[1] = 0u;
              v199 = (v196->f64 + v33);
              v199[6] = 0u;
              v199[7] = 0u;
              v199[4] = 0u;
              v199[5] = 0u;
              v199[2] = 0u;
              v199[3] = 0u;
              *v199 = 0u;
              v199[1] = 0u;
            }

            v219 = v195 + v198;
            v220 = v172[8].f64;
            v221 = v74[6];
            if (v221 == 255)
            {
              v226 = *(v219 + 16);
              v227 = *(v219 + 32);
              v228 = *(v219 + 48);
              v229 = *(v219 + 64);
              v230 = *(v219 + 80);
              v231 = *(v219 + 96);
              v232 = *(v219 + 112);
              v233 = *(v219 + 128);
              v234 = *(v219 + 144);
              v235 = *(v219 + 160);
              v236 = *(v219 + 176);
              v237 = *(v219 + 192);
              v238 = *(v219 + 208);
              v239 = *(v219 + 224);
              v240 = *(v219 + 240);
              *v220 = *v219;
              v172[9] = v226;
              v172[10] = v227;
              v172[11] = v228;
              v241 = (v220 + v33);
              v172[12] = v233;
              v172[13] = v234;
              v172[14] = v235;
              v172[15] = v236;
              *v241 = v229;
              v241[1] = v230;
              v241[2] = v231;
              v241[3] = v232;
              v241 += 4;
              v222 = 256;
              *v241 = v237;
              v241[1] = v238;
              v241[2] = v239;
              v241[3] = v240;
            }

            else if (v221 == 7)
            {
              v224 = vld1q_dup_f64(v219);
              v172[8] = v224;
              v172[9] = v224;
              v172[10] = v224;
              v172[11] = v224;
              v172[12] = v224;
              v172[13] = v224;
              v172[14] = v224;
              v172[15] = v224;
              v225 = (v220 + v33);
              *v225 = v224;
              v225[1] = v224;
              v225[2] = v224;
              v225[3] = v224;
              v225[4] = v224;
              v225[5] = v224;
              v222 = 8;
              v225[6] = v224;
              v225[7] = v224;
            }

            else if (v74[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              v172[14] = 0u;
              v172[15] = 0u;
              v172[12] = 0u;
              v172[13] = 0u;
              v172[10] = 0u;
              v172[11] = 0u;
              *v220 = 0u;
              v172[9] = 0u;
              v223 = (v220 + v33);
              v223[6] = 0u;
              v223[7] = 0u;
              v223[4] = 0u;
              v223[5] = 0u;
              v223[2] = 0u;
              v223[3] = 0u;
              *v223 = 0u;
              v223[1] = 0u;
            }

            v44 = v42 + 1;
            v242 = v219 + v222;
            v243 = v196[8].f64;
            v244 = v74[7];
            if (v244 == 255)
            {
              v248 = *(v242 + 16);
              v249 = *(v242 + 32);
              v250 = *(v242 + 48);
              v251 = *(v242 + 64);
              v252 = *(v242 + 80);
              v253 = *(v242 + 96);
              v254 = *(v242 + 112);
              v255 = *(v242 + 128);
              v256 = *(v242 + 144);
              v257 = *(v242 + 160);
              v258 = *(v242 + 176);
              v259 = *(v242 + 192);
              v260 = *(v242 + 208);
              v261 = *(v242 + 224);
              v262 = *(v242 + 240);
              *v243 = *v242;
              v196[9] = v248;
              v196[10] = v249;
              v196[11] = v250;
              v263 = (v243 + v33);
              v196[12] = v255;
              v196[13] = v256;
              v196[14] = v257;
              v196[15] = v258;
              *v263 = v251;
              v263[1] = v252;
              v263[2] = v253;
              v263[3] = v254;
              v263 += 4;
              *v263 = v259;
              v263[1] = v260;
              v263[2] = v261;
              v263[3] = v262;
              v16 = v452;
              v24 = v461;
            }

            else
            {
              v24 = v461;
              if (v244 == 7)
              {
                v246 = vld1q_dup_f64(v242);
                v196[8] = v246;
                v196[9] = v246;
                v196[10] = v246;
                v196[11] = v246;
                v196[12] = v246;
                v196[13] = v246;
                v196[14] = v246;
                v196[15] = v246;
                v247 = (v243 + v33);
                *v247 = v246;
                v247[1] = v246;
                v247[2] = v246;
                v247[3] = v246;
                v247[4] = v246;
                v247[5] = v246;
                v247[6] = v246;
                v247[7] = v246;
              }

              else if (v244)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v243, v33, v242, v244);
              }

              else
              {
                v196[14] = 0u;
                v196[15] = 0u;
                v196[12] = 0u;
                v196[13] = 0u;
                v196[10] = 0u;
                v196[11] = 0u;
                *v243 = 0u;
                v196[9] = 0u;
                v245 = (v243 + v33);
                v245[6] = 0u;
                v245[7] = 0u;
                v245[4] = 0u;
                v245[5] = 0u;
                v245[2] = 0u;
                v245[3] = 0u;
                *v245 = 0u;
                v245[1] = 0u;
              }

              v16 = v452;
            }
          }

          v29 = v42 == v453 >> 3;
          v42 = v44;
        }

        while (!v29);
        v29 = v25++ == v443;
      }

      while (!v29);
    }
  }
}