uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v239 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v190 = a8;
  v172 = a8 + a10 - 1;
  v191 = a1;
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
  v171 = v172 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v194 = v24;
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
      v184 = 0;
LABEL_32:
      v181 = v27 - 4;
      v175 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v169 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v184 = v32 >= v26;
    goto LABEL_32;
  }

  v184 = 0;
  v169 = 0;
  v175 = 0;
  v181 = 0;
LABEL_33:
  if (v18 <= v171)
  {
    v183 = a7 + a9 - 1;
    v168 = a7 >> 4;
    if (a7 >> 4 <= v183 >> 4)
    {
      v192 = v19 >> 4;
      v177 = v19 & 0xF;
      v166 = v20 & 7;
      v167 = v20 >> 3;
      v165 = ~(-1 << v175);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v35.i8 = vcgt_u32(v34, 0x1F0000000FLL);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v35.i8);
      v174 = v36.i64[0];
      v176 = v36.i32[0] | v36.i32[1];
      v173 = v35.i64[0];
      v182 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v190)
        {
          v38 = v190;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v172 < v37)
        {
          v37 = v172;
        }

        v180 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v166;
        v179 = v40;
        v42 = v40 != 8;
        v43 = v166 + 1;
        if (v18 != v167)
        {
          v43 = 8;
          v41 = v42;
        }

        v178 = v41;
        v44 = v168;
        v45 = v18 & v165;
        v188 = a3 + (v38 - v190) * a11;
        v189 = v43;
        v187 = v43;
        do
        {
          v46 = 16 * v44;
          v47 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 16 * v44;
          }

          if (v183 < v47)
          {
            v47 = v183;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v192)
          {
            v51 = v177 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v190 && v46 >= a7)
          {
            v53 = v49 != v177;
            if (v44 != v192)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v178;
          }

          if (v184)
          {
            if (v181 | v175)
            {
              v54 = 0;
              v55 = 0;
              v56 = v181 != 0;
              v57 = 1;
              v59 = v175 != 0;
              v58 = v175;
              v60 = v181;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v45 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v44 & ~(-1 << v181) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v60 != 0;
                v59 = v58 != 0;
              }

              while (v60 | v58);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v44 >> v181) + (v18 >> v175) * v169);
          }

          else if (v176)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v173;
            v65 = BYTE4(v173);
            v67 = v174;
            v68 = HIDWORD(v174);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v44) << v62++;
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
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
          }

          if (v75 | v72)
          {
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
                v77 |= (v80 & v44) << v76++;
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
          }

          else
          {
            v81 = 0;
          }

          v82 = (a4 + v81);
          v83 = (v188 + 4 * (v48 - a7));
          v193 = (a2 + v69);
          if (v194)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 0x10u) | (v187 < 8)))
            {
              goto LABEL_109;
            }

            v85 = v50;
            v86 = (a4 + v81);
            v87 = v51;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v85;
            v45 = v18 & v165;
            LOBYTE(v51) = v87;
            v82 = v86;
            result = v191;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 0x10u) | (v187 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v189);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v196 = v84;
          v204 = v51;
          v205 = v189;
          v200 = v180;
          v201 = v48 - v46;
          v197 = v82;
          v198 = v83;
          v199 = a11;
          v202 = v179;
          v203 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v182;
            v88 = v44 + 1;
            goto LABEL_202;
          }

          v89 = *v82;
          a7 = v182;
          if (v89 == 63)
          {
            v35 = *(v84 + 1);
            v91 = (v84 + 32);
            v240 = vld2q_f64(v91);
            v36 = vzip2q_s64(*v84, v35);
            v207 = vzip1q_s64(*v84, v35);
            v211 = v36;
            v215 = v240.val[0];
            v219 = v240.val[1];
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v36 = vld1q_dup_s16(v84);
            v207 = v36;
            v211 = v36;
            v215 = v36;
            v219 = v36;
            v90 = 2;
          }

          else if (*v82)
          {
            v92 = v82;
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 64, v84, v89, *v36.i8, *v35.i8);
            v82 = v92;
          }

          else
          {
            v90 = 0;
            v207 = 0uLL;
            v211 = 0uLL;
            v215 = 0uLL;
            v219 = 0uLL;
          }

          v93 = &v84[v90];
          v94 = v82[1];
          if (v94 == 63)
          {
            v35 = *(v93 + 16);
            v96 = (v93 + 32);
            v241 = vld2q_f64(v96);
            v36 = vzip2q_s64(*v93, v35);
            v208 = vzip1q_s64(*v93, v35);
            v212 = v36;
            v216 = v241.val[0];
            v220 = v241.val[1];
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v36 = vld1q_dup_s16(v93);
            v208 = v36;
            v212 = v36;
            v216 = v36;
            v220 = v36;
            v95 = 2;
          }

          else if (v82[1])
          {
            v97 = v82;
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 64, v93, v94, *v36.i8, *v35.i8);
            v82 = v97;
          }

          else
          {
            v95 = 0;
            v208 = 0uLL;
            v212 = 0uLL;
            v216 = 0uLL;
            v220 = 0uLL;
          }

          v98 = v93 + v95;
          v99 = v82[2];
          if (v99 == 63)
          {
            v35 = *(v98 + 16);
            v101 = (v98 + 32);
            v242 = vld2q_f64(v101);
            v36 = vzip2q_s64(*v98, v35);
            v223 = vzip1q_s64(*v98, v35);
            v227 = v36;
            v231 = v242.val[0];
            v235 = v242.val[1];
            v100 = 64;
          }

          else if (v99 == 1)
          {
            v36 = vld1q_dup_s16(v98);
            v223 = v36;
            v227 = v36;
            v231 = v36;
            v235 = v36;
            v100 = 2;
          }

          else if (v82[2])
          {
            v102 = v82;
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v223, 64, v98, v99, *v36.i8, *v35.i8);
            v82 = v102;
          }

          else
          {
            v100 = 0;
            v223 = 0uLL;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
          }

          v103 = v98 + v100;
          v104 = v82[3];
          if (v104 == 63)
          {
            v35 = *(v103 + 16);
            v106 = (v103 + 32);
            v243 = vld2q_f64(v106);
            v36 = vzip2q_s64(*v103, v35);
            v224 = vzip1q_s64(*v103, v35);
            v228 = v36;
            v232 = v243.val[0];
            v236 = v243.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v36 = vld1q_dup_s16(v103);
            v224 = v36;
            v228 = v36;
            v232 = v36;
            v236 = v36;
            v105 = 2;
          }

          else if (v82[3])
          {
            v107 = v82;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 64, v103, v104, *v36.i8, *v35.i8);
            v82 = v107;
          }

          else
          {
            v105 = 0;
            v224 = 0uLL;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
          }

          v108 = v103 + v105;
          v109 = v82[4];
          if (v109 == 63)
          {
            v35 = *(v108 + 16);
            v111 = (v108 + 32);
            v244 = vld2q_f64(v111);
            v36 = vzip2q_s64(*v108, v35);
            v209 = vzip1q_s64(*v108, v35);
            v213 = v36;
            v217 = v244.val[0];
            v221 = v244.val[1];
            v110 = 64;
          }

          else if (v109 == 1)
          {
            v36 = vld1q_dup_s16(v108);
            v209 = v36;
            v213 = v36;
            v217 = v36;
            v221 = v36;
            v110 = 2;
          }

          else if (v82[4])
          {
            v112 = v82;
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 64, v108, v109, *v36.i8, *v35.i8);
            v82 = v112;
          }

          else
          {
            v110 = 0;
            v209 = 0uLL;
            v213 = 0uLL;
            v217 = 0uLL;
            v221 = 0uLL;
          }

          v113 = v108 + v110;
          v114 = v82[5];
          if (v114 == 63)
          {
            v35 = *(v113 + 16);
            v116 = (v113 + 32);
            v245 = vld2q_f64(v116);
            v36 = vzip2q_s64(*v113, v35);
            v210 = vzip1q_s64(*v113, v35);
            v214 = v36;
            v218 = v245.val[0];
            v222 = v245.val[1];
            v115 = 64;
          }

          else if (v114 == 1)
          {
            v36 = vld1q_dup_s16(v113);
            v210 = v36;
            v214 = v36;
            v218 = v36;
            v222 = v36;
            v115 = 2;
          }

          else if (v82[5])
          {
            v117 = v82;
            v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 64, v113, v114, *v36.i8, *v35.i8);
            v82 = v117;
          }

          else
          {
            v115 = 0;
            v210 = 0uLL;
            v214 = 0uLL;
            v218 = 0uLL;
            v222 = 0uLL;
          }

          v118 = v113 + v115;
          v119 = v82[6];
          if (v119 == 63)
          {
            v35 = *(v118 + 16);
            v121 = (v118 + 32);
            v246 = vld2q_f64(v121);
            v36 = vzip2q_s64(*v118, v35);
            v225 = vzip1q_s64(*v118, v35);
            v229 = v36;
            v233 = v246.val[0];
            v237 = v246.val[1];
            v120 = 64;
          }

          else if (v119 == 1)
          {
            v36 = vld1q_dup_s16(v118);
            v225 = v36;
            v229 = v36;
            v233 = v36;
            v237 = v36;
            v120 = 2;
          }

          else if (v82[6])
          {
            v122 = v82;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 64, v118, v119, *v36.i8, *v35.i8);
            v82 = v122;
          }

          else
          {
            v120 = 0;
            v225 = 0uLL;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
          }

          v123 = v118 + v120;
          v124 = v82[7];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = (v123 + 32);
            v247 = vld2q_f64(v128);
            v129 = vzip2q_s64(*v123, v127);
            v226 = vzip1q_s64(*v123, v127);
            v230 = v129;
            v234 = v247.val[0];
            v238 = v247.val[1];
            v88 = v44 + 1;
            v125 = v202;
            if (!v202)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v88 = v44 + 1;
            if (v124 == 1)
            {
              v126 = vld1q_dup_s16(v123);
              v226 = v126;
              v230 = v126;
              v234 = v126;
              v238 = v126;
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }

            else if (v82[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v123, v124, *v36.i8, *v35.i8);
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v226 = 0uLL;
              v230 = 0uLL;
              v234 = 0uLL;
              v238 = 0uLL;
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }
          }

          v130 = v203;
          if (v203)
          {
            v131 = 0;
            v132 = v200 << 6;
            v133 = 4 * v201;
            v134 = &v207.i8[v132 + v133];
            v135 = v198;
            v136 = v199;
            v137 = 4 * v203;
            if (4 * v203)
            {
              v138 = (4 * v203 - 1) >> 32 == 0;
            }

            else
            {
              v138 = 0;
            }

            v139 = !v138;
            v141 = v134 < &v198->i8[4 * v203 + v199 * (v125 - 1)] && v198 < &__dst[64 * v125 + 448 + 64 * v200 + 4 * v203 + v133];
            v142 = v141 || v199 < 0;
            v143 = v137 & 0x1FFFFFFE0;
            v144 = v137 & 0x1FFFFFFF8;
            v145 = (v203 == 1) | v139 | v142;
            v146 = &v208.i8[v132 + v133];
            v147 = v198 + 1;
            v148 = v134;
            v149 = v198;
            do
            {
              v150 = &v135->i8[v131 * v136];
              v151 = &v134[64 * v131];
              if (v145)
              {
                v152 = 0;
                goto LABEL_198;
              }

              if (v130 >= 8)
              {
                v154 = v147;
                v155 = v146;
                v156 = v137 & 0x1FFFFFFE0;
                do
                {
                  v157 = *v154;
                  *(v155 - 1) = v154[-1];
                  *v155 = v157;
                  v155 += 32;
                  v154 += 2;
                  v156 -= 32;
                }

                while (v156);
                if (v137 == v143)
                {
                  goto LABEL_184;
                }

                v153 = v137 & 0x1FFFFFFE0;
                if ((v130 & 6) == 0)
                {
                  v150 += v143;
                  v151 += v143;
                  v152 = v137 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v153 = 0;
              }

              v151 += v144;
              v158 = -8 * ((v130 >> 1) & 0x3FFFFFFF) + v153;
              v159 = (v149->i64 + v153);
              v160 = &v148[v153];
              do
              {
                v161 = *v159++;
                *v160 = v161;
                v160 += 8;
                v158 += 8;
              }

              while (v158);
              if (v137 == v144)
              {
                goto LABEL_184;
              }

              v150 += v144;
              v152 = v137 & 0xFFFFFFF8;
LABEL_198:
              v162 = v152 + 1;
              do
              {
                v163 = *v150++;
                *v151++ = v163;
              }

              while (v137 > v162++);
LABEL_184:
              ++v131;
              v146 += 64;
              v147 = (v147 + v136);
              v149 = (v149 + v136);
              v148 += 64;
            }

            while (v131 != v125);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v207, 64, v196, v197, v204, v205);
LABEL_202:
          if (v194)
          {
            memcpy(v193, v84, 0x200uLL);
          }

          v21 = v44 == v183 >> 4;
          v44 = v88;
          result = v191;
        }

        while (!v21);
        v21 = v18++ == v171;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v228 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v17 = a8 >> 3;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v180 = a1;
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
  v183 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v172 = result;
  if (v17 <= v163)
  {
    v171 = a7 + a9 - 1;
    v160 = a7 >> 4;
    if (a7 >> 4 <= v171 >> 4)
    {
      result = a1;
      v181 = (a5 - 1) >> 4;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 0xF;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v27.i8 = vcgt_u32(v26, 0x1F0000000FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v27.i8);
      v169 = v28.i64[0];
      v170 = v28.i32[0] | v28.i32[1];
      v168 = v27.i64[0];
      v156 = 8 * v19 * v18;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v179)
        {
          v30 = v179;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v161 < v29)
        {
          v29 = v161;
        }

        v178 = 8 * v17;
        v167 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v166 = v32;
        v34 = v32 != 8;
        v35 = v160;
        v36 = v158 + 1;
        if (v17 != v159)
        {
          v36 = 8;
          v33 = v34;
        }

        v165 = v33;
        v176 = a3 + (v30 - v179) * a11;
        v177 = v36;
        v175 = v36;
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

          if (v171 < v38)
          {
            v38 = v171;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v181)
          {
            v42 = v164 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v178 >= v179 && v37 >= a7)
          {
            v44 = v40 != v164;
            if (v35 != v181)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v165;
          }

          if (v172)
          {
            v65 = 0;
            v66 = v156 >> (*(result + 57) != 0);
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
                v69 = 8;
                v65 = 16;
              }
            }

            v144 = (v65 >> 4) - 1;
            if (v67)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v69 >> 3) - 1;
            if (v68)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_199:
                v148 = 0;
                v149 = 0;
                v150 = v35 & v144;
                v151 = v17 & v146;
                v152 = v147 != 0;
                v153 = v145 != 0;
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

                  --v145;
                  if (v153)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v145 != 0;
                  v152 = v147 != 0;
                }

                while (v145 | v147);
                v155 = v149 << 9;
                result = v180;
                goto LABEL_211;
              }
            }

            v155 = 0;
LABEL_211:
            v52 = v155 + ((v37 / v65 + v178 / v69 * ((v65 + v157) / v65)) << 14);
            goto LABEL_52;
          }

          if (v170)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v168;
            v48 = BYTE4(v168);
            v50 = v169;
            v51 = HIDWORD(v169);
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
            v52 = v46 << 9;
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
          v71 = a7;
          v72 = v176 + 4 * (v39 - a7);
          v73 = (a2 + v52);
          __src = (a2 + v52);
          if (v183)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v175 < 8)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v177);
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v74;
            v73 = __dst;
            result = v180;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v175 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v73;
          v193 = v42;
          v194 = v177;
          v189 = v167;
          v190 = v39 - v37;
          v186 = v70;
          v187 = v72;
          v188 = a11;
          v191 = v166;
          v192 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v70;
            a7 = v71;
            if (v75 == 63)
            {
              v27 = *(v73 + 1);
              v77 = (v73 + 32);
              v229 = vld2q_f64(v77);
              v28 = vzip2q_s64(*v73, v27);
              v196 = vzip1q_s64(*v73, v27);
              v200 = v28;
              v204 = v229.val[0];
              v208 = v229.val[1];
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v28 = vld1q_dup_s16(v73);
              v196 = v28;
              v200 = v28;
              v204 = v28;
              v208 = v28;
              v76 = 2;
            }

            else if (*v70)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v196, 64, v73, v75, *v28.i8, *v27.i8);
            }

            else
            {
              v76 = 0;
              v196 = 0uLL;
              v200 = 0uLL;
              v204 = 0uLL;
              v208 = 0uLL;
            }

            v78 = &v73[v76];
            v79 = v70[1];
            if (v79 == 63)
            {
              v27 = *(v78 + 16);
              v81 = (v78 + 32);
              v230 = vld2q_f64(v81);
              v28 = vzip2q_s64(*v78, v27);
              v197 = vzip1q_s64(*v78, v27);
              v201 = v28;
              v205 = v230.val[0];
              v209 = v230.val[1];
              v80 = 64;
            }

            else if (v79 == 1)
            {
              v28 = vld1q_dup_s16(v78);
              v197 = v28;
              v201 = v28;
              v205 = v28;
              v209 = v28;
              v80 = 2;
            }

            else if (v70[1])
            {
              v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v197, 64, v78, v79, *v28.i8, *v27.i8);
            }

            else
            {
              v80 = 0;
              v197 = 0uLL;
              v201 = 0uLL;
              v205 = 0uLL;
              v209 = 0uLL;
            }

            v82 = v78 + v80;
            v83 = v70[2];
            if (v83 == 63)
            {
              v27 = *(v82 + 16);
              v85 = (v82 + 32);
              v231 = vld2q_f64(v85);
              v28 = vzip2q_s64(*v82, v27);
              v212 = vzip1q_s64(*v82, v27);
              v216 = v28;
              v220 = v231.val[0];
              v224 = v231.val[1];
              v84 = 64;
            }

            else if (v83 == 1)
            {
              v28 = vld1q_dup_s16(v82);
              v212 = v28;
              v216 = v28;
              v220 = v28;
              v224 = v28;
              v84 = 2;
            }

            else if (v70[2])
            {
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 64, v82, v83, *v28.i8, *v27.i8);
            }

            else
            {
              v84 = 0;
              v212 = 0uLL;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
            }

            v86 = v82 + v84;
            v87 = v70[3];
            if (v87 == 63)
            {
              v27 = *(v86 + 16);
              v89 = (v86 + 32);
              v232 = vld2q_f64(v89);
              v28 = vzip2q_s64(*v86, v27);
              v213 = vzip1q_s64(*v86, v27);
              v217 = v28;
              v221 = v232.val[0];
              v225 = v232.val[1];
              v88 = 64;
            }

            else if (v87 == 1)
            {
              v28 = vld1q_dup_s16(v86);
              v213 = v28;
              v217 = v28;
              v221 = v28;
              v225 = v28;
              v88 = 2;
            }

            else if (v70[3])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 64, v86, v87, *v28.i8, *v27.i8);
            }

            else
            {
              v88 = 0;
              v213 = 0uLL;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
            }

            v90 = v86 + v88;
            v91 = v70[4];
            if (v91 == 63)
            {
              v27 = *(v90 + 16);
              v93 = (v90 + 32);
              v233 = vld2q_f64(v93);
              v28 = vzip2q_s64(*v90, v27);
              v198 = vzip1q_s64(*v90, v27);
              v202 = v28;
              v206 = v233.val[0];
              v210 = v233.val[1];
              v92 = 64;
            }

            else if (v91 == 1)
            {
              v28 = vld1q_dup_s16(v90);
              v198 = v28;
              v202 = v28;
              v206 = v28;
              v210 = v28;
              v92 = 2;
            }

            else if (v70[4])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 64, v90, v91, *v28.i8, *v27.i8);
            }

            else
            {
              v92 = 0;
              v198 = 0uLL;
              v202 = 0uLL;
              v206 = 0uLL;
              v210 = 0uLL;
            }

            v94 = v90 + v92;
            v95 = v70[5];
            if (v95 == 63)
            {
              v27 = *(v94 + 16);
              v97 = (v94 + 32);
              v234 = vld2q_f64(v97);
              v28 = vzip2q_s64(*v94, v27);
              v199 = vzip1q_s64(*v94, v27);
              v203 = v28;
              v207 = v234.val[0];
              v211 = v234.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v28 = vld1q_dup_s16(v94);
              v199 = v28;
              v203 = v28;
              v207 = v28;
              v211 = v28;
              v96 = 2;
            }

            else if (v70[5])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 64, v94, v95, *v28.i8, *v27.i8);
            }

            else
            {
              v96 = 0;
              v199 = 0uLL;
              v203 = 0uLL;
              v207 = 0uLL;
              v211 = 0uLL;
            }

            v98 = v94 + v96;
            v99 = v70[6];
            if (v99 == 63)
            {
              v27 = *(v98 + 16);
              v101 = (v98 + 32);
              v235 = vld2q_f64(v101);
              v28 = vzip2q_s64(*v98, v27);
              v214 = vzip1q_s64(*v98, v27);
              v218 = v28;
              v222 = v235.val[0];
              v226 = v235.val[1];
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v28 = vld1q_dup_s16(v98);
              v214 = v28;
              v218 = v28;
              v222 = v28;
              v226 = v28;
              v100 = 2;
            }

            else if (v70[6])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 64, v98, v99, *v28.i8, *v27.i8);
            }

            else
            {
              v100 = 0;
              v214 = 0uLL;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
            }

            v102 = v98 + v100;
            v103 = v70[7];
            if (v103 == 63)
            {
              v106 = *(v102 + 16);
              v107 = (v102 + 32);
              v236 = vld2q_f64(v107);
              v108 = vzip2q_s64(*v102, v106);
              v215 = vzip1q_s64(*v102, v106);
              v219 = v108;
              v223 = v236.val[0];
              v227 = v236.val[1];
              v104 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v103 != 1)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v102, v103, *v28.i8, *v27.i8);
                  v104 = v191;
                  if (!v191)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v215 = 0uLL;
                  v219 = 0uLL;
                  v223 = 0uLL;
                  v227 = 0uLL;
                  v104 = v191;
                  if (!v191)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v109 = v192;
                if (!v192)
                {
                  goto LABEL_178;
                }

                v110 = 0;
                v111 = v189 << 6;
                v112 = 4 * v190;
                v113 = &v196.i8[v111 + v112];
                v114 = v187;
                v115 = v188;
                v116 = 4 * v192;
                if (4 * v192)
                {
                  v117 = (4 * v192 - 1) >> 32 == 0;
                }

                else
                {
                  v117 = 0;
                }

                v118 = !v117;
                v120 = v113 < v187 + v188 * (v104 - 1) + 4 * v192 && v187 < &__dst[64 * v104 + 448 + 64 * v189 + 4 * v192 + v112];
                v121 = v120 || v188 < 0;
                v122 = v116 & 0x1FFFFFFE0;
                v123 = v116 & 0x1FFFFFFF8;
                v124 = (v192 == 1) | v118 | v121;
                v125 = &v197.i8[v111 + v112];
                v126 = (v187 + 16);
                v127 = v113;
                v128 = v187;
                while (2)
                {
                  v129 = (v114 + v110 * v115);
                  v130 = &v113[64 * v110];
                  if (v124)
                  {
                    v131 = 0;
LABEL_175:
                    v141 = v131 + 1;
                    do
                    {
                      v142 = *v129++;
                      *v130++ = v142;
                    }

                    while (v116 > v141++);
                  }

                  else
                  {
                    if (v109 >= 8)
                    {
                      v133 = v126;
                      v134 = v125;
                      v135 = v116 & 0x1FFFFFFE0;
                      do
                      {
                        v136 = *v133;
                        *(v134 - 1) = *(v133 - 1);
                        *v134 = v136;
                        v134 += 32;
                        v133 += 2;
                        v135 -= 32;
                      }

                      while (v135);
                      if (v116 == v122)
                      {
                        goto LABEL_161;
                      }

                      v132 = v116 & 0x1FFFFFFE0;
                      if ((v109 & 6) == 0)
                      {
                        v129 += v122;
                        v130 += v122;
                        v131 = v116 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v130 += v123;
                    v137 = -8 * ((v109 >> 1) & 0x3FFFFFFF) + v132;
                    v138 = (v128 + v132);
                    v139 = &v127[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    if (v116 != v123)
                    {
                      v129 += v123;
                      v131 = v116 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v110;
                  v125 += 64;
                  v126 = (v126 + v115);
                  v128 += v115;
                  v127 += 64;
                  if (v110 == v104)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v105 = vld1q_dup_s16(v102);
              v215 = v105;
              v219 = v105;
              v223 = v105;
              v227 = v105;
              v104 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v196, 64, v185, v186, v193, v194);
            if (!v183)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v71;
          if (!v183)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v73, 0x200uLL);
LABEL_26:
          v21 = v35++ == v171 >> 4;
          result = v180;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v228 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v17 = a8 >> 3;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v180 = a1;
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
  v183 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v172 = result;
  if (v17 <= v163)
  {
    v171 = a7 + a9 - 1;
    v160 = a7 >> 4;
    if (a7 >> 4 <= v171 >> 4)
    {
      result = a1;
      v181 = (a5 - 1) >> 4;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 0xF;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v27.i8 = vcgt_u32(v26, 0x1F0000000FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v27.i8);
      v169 = v28.i64[0];
      v170 = v28.i32[0] | v28.i32[1];
      v168 = v27.i64[0];
      v156 = 8 * v19 * v18;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v179)
        {
          v30 = v179;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v161 < v29)
        {
          v29 = v161;
        }

        v178 = 8 * v17;
        v167 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v166 = v32;
        v34 = v32 != 8;
        v35 = v160;
        v36 = v158 + 1;
        if (v17 != v159)
        {
          v36 = 8;
          v33 = v34;
        }

        v165 = v33;
        v176 = a3 + (v30 - v179) * a11;
        v177 = v36;
        v175 = v36;
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

          if (v171 < v38)
          {
            v38 = v171;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v181)
          {
            v42 = v164 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v178 >= v179 && v37 >= a7)
          {
            v44 = v40 != v164;
            if (v35 != v181)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v165;
          }

          if (v172)
          {
            v65 = 0;
            v66 = v156 >> (*(result + 57) != 0);
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
                v69 = 8;
                v65 = 16;
              }
            }

            v144 = (v65 >> 4) - 1;
            if (v67)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v69 >> 3) - 1;
            if (v68)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_199:
                v148 = 0;
                v149 = 0;
                v150 = v35 & v144;
                v151 = v17 & v146;
                v152 = v147 != 0;
                v153 = v145 != 0;
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

                  --v145;
                  if (v153)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v145 != 0;
                  v152 = v147 != 0;
                }

                while (v145 | v147);
                v155 = v149 << 9;
                result = v180;
                goto LABEL_211;
              }
            }

            v155 = 0;
LABEL_211:
            v52 = v155 + ((v37 / v65 + v178 / v69 * ((v65 + v157) / v65)) << 14);
            goto LABEL_52;
          }

          if (v170)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v168;
            v48 = BYTE4(v168);
            v50 = v169;
            v51 = HIDWORD(v169);
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
            v52 = v46 << 9;
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
          v71 = a7;
          v72 = (v176 + 4 * (v39 - a7));
          v73 = (a2 + v52);
          __src = (a2 + v52);
          if (v183)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v175 < 8)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v177);
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v74;
            v73 = __dst;
            result = v180;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v175 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v73;
          v193 = v42;
          v194 = v177;
          v189 = v167;
          v190 = v39 - v37;
          v186 = v70;
          v187 = v72;
          v188 = a11;
          v191 = v166;
          v192 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v70;
            a7 = v71;
            if (v75 == 63)
            {
              v27 = *(v73 + 1);
              v77 = (v73 + 32);
              v229 = vld2q_f64(v77);
              v28 = vzip2q_s64(*v73, v27);
              v196 = vzip1q_s64(*v73, v27);
              v200 = v28;
              v204 = v229.val[0];
              v208 = v229.val[1];
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v28 = vld1q_dup_s16(v73);
              v196 = v28;
              v200 = v28;
              v204 = v28;
              v208 = v28;
              v76 = 2;
            }

            else if (*v70)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v196, 64, v73, v75, *v28.i8, *v27.i8);
            }

            else
            {
              v76 = 0;
              v196 = 0uLL;
              v200 = 0uLL;
              v204 = 0uLL;
              v208 = 0uLL;
            }

            v78 = &v73[v76];
            v79 = v70[1];
            if (v79 == 63)
            {
              v27 = *(v78 + 16);
              v81 = (v78 + 32);
              v230 = vld2q_f64(v81);
              v28 = vzip2q_s64(*v78, v27);
              v197 = vzip1q_s64(*v78, v27);
              v201 = v28;
              v205 = v230.val[0];
              v209 = v230.val[1];
              v80 = 64;
            }

            else if (v79 == 1)
            {
              v28 = vld1q_dup_s16(v78);
              v197 = v28;
              v201 = v28;
              v205 = v28;
              v209 = v28;
              v80 = 2;
            }

            else if (v70[1])
            {
              v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v197, 64, v78, v79, *v28.i8, *v27.i8);
            }

            else
            {
              v80 = 0;
              v197 = 0uLL;
              v201 = 0uLL;
              v205 = 0uLL;
              v209 = 0uLL;
            }

            v82 = v78 + v80;
            v83 = v70[2];
            if (v83 == 63)
            {
              v27 = *(v82 + 16);
              v85 = (v82 + 32);
              v231 = vld2q_f64(v85);
              v28 = vzip2q_s64(*v82, v27);
              v212 = vzip1q_s64(*v82, v27);
              v216 = v28;
              v220 = v231.val[0];
              v224 = v231.val[1];
              v84 = 64;
            }

            else if (v83 == 1)
            {
              v28 = vld1q_dup_s16(v82);
              v212 = v28;
              v216 = v28;
              v220 = v28;
              v224 = v28;
              v84 = 2;
            }

            else if (v70[2])
            {
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 64, v82, v83, *v28.i8, *v27.i8);
            }

            else
            {
              v84 = 0;
              v212 = 0uLL;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
            }

            v86 = v82 + v84;
            v87 = v70[3];
            if (v87 == 63)
            {
              v27 = *(v86 + 16);
              v89 = (v86 + 32);
              v232 = vld2q_f64(v89);
              v28 = vzip2q_s64(*v86, v27);
              v213 = vzip1q_s64(*v86, v27);
              v217 = v28;
              v221 = v232.val[0];
              v225 = v232.val[1];
              v88 = 64;
            }

            else if (v87 == 1)
            {
              v28 = vld1q_dup_s16(v86);
              v213 = v28;
              v217 = v28;
              v221 = v28;
              v225 = v28;
              v88 = 2;
            }

            else if (v70[3])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 64, v86, v87, *v28.i8, *v27.i8);
            }

            else
            {
              v88 = 0;
              v213 = 0uLL;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
            }

            v90 = v86 + v88;
            v91 = v70[4];
            if (v91 == 63)
            {
              v27 = *(v90 + 16);
              v93 = (v90 + 32);
              v233 = vld2q_f64(v93);
              v28 = vzip2q_s64(*v90, v27);
              v198 = vzip1q_s64(*v90, v27);
              v202 = v28;
              v206 = v233.val[0];
              v210 = v233.val[1];
              v92 = 64;
            }

            else if (v91 == 1)
            {
              v28 = vld1q_dup_s16(v90);
              v198 = v28;
              v202 = v28;
              v206 = v28;
              v210 = v28;
              v92 = 2;
            }

            else if (v70[4])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 64, v90, v91, *v28.i8, *v27.i8);
            }

            else
            {
              v92 = 0;
              v198 = 0uLL;
              v202 = 0uLL;
              v206 = 0uLL;
              v210 = 0uLL;
            }

            v94 = v90 + v92;
            v95 = v70[5];
            if (v95 == 63)
            {
              v27 = *(v94 + 16);
              v97 = (v94 + 32);
              v234 = vld2q_f64(v97);
              v28 = vzip2q_s64(*v94, v27);
              v199 = vzip1q_s64(*v94, v27);
              v203 = v28;
              v207 = v234.val[0];
              v211 = v234.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v28 = vld1q_dup_s16(v94);
              v199 = v28;
              v203 = v28;
              v207 = v28;
              v211 = v28;
              v96 = 2;
            }

            else if (v70[5])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 64, v94, v95, *v28.i8, *v27.i8);
            }

            else
            {
              v96 = 0;
              v199 = 0uLL;
              v203 = 0uLL;
              v207 = 0uLL;
              v211 = 0uLL;
            }

            v98 = v94 + v96;
            v99 = v70[6];
            if (v99 == 63)
            {
              v27 = *(v98 + 16);
              v101 = (v98 + 32);
              v235 = vld2q_f64(v101);
              v28 = vzip2q_s64(*v98, v27);
              v214 = vzip1q_s64(*v98, v27);
              v218 = v28;
              v222 = v235.val[0];
              v226 = v235.val[1];
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v28 = vld1q_dup_s16(v98);
              v214 = v28;
              v218 = v28;
              v222 = v28;
              v226 = v28;
              v100 = 2;
            }

            else if (v70[6])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 64, v98, v99, *v28.i8, *v27.i8);
            }

            else
            {
              v100 = 0;
              v214 = 0uLL;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
            }

            v102 = v98 + v100;
            v103 = v70[7];
            if (v103 == 63)
            {
              v106 = *(v102 + 16);
              v107 = (v102 + 32);
              v236 = vld2q_f64(v107);
              v108 = vzip2q_s64(*v102, v106);
              v215 = vzip1q_s64(*v102, v106);
              v219 = v108;
              v223 = v236.val[0];
              v227 = v236.val[1];
              v104 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v103 != 1)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v102, v103, *v28.i8, *v27.i8);
                  v104 = v191;
                  if (!v191)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v215 = 0uLL;
                  v219 = 0uLL;
                  v223 = 0uLL;
                  v227 = 0uLL;
                  v104 = v191;
                  if (!v191)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v109 = v192;
                if (!v192)
                {
                  goto LABEL_178;
                }

                v110 = 0;
                v111 = v189 << 6;
                v112 = 4 * v190;
                v113 = &v196.i8[v111 + v112];
                v114 = v187;
                v115 = v188;
                v116 = 4 * v192;
                if (4 * v192)
                {
                  v117 = (4 * v192 - 1) >> 32 == 0;
                }

                else
                {
                  v117 = 0;
                }

                v118 = !v117;
                v120 = v113 < &v187->i8[4 * v192 + v188 * (v104 - 1)] && v187 < &__dst[64 * v104 + 448 + 64 * v189 + 4 * v192 + v112];
                v121 = v120 || v188 < 0;
                v122 = v116 & 0x1FFFFFFE0;
                v123 = v116 & 0x1FFFFFFF8;
                v124 = (v192 == 1) | v118 | v121;
                v125 = &v197.i8[v111 + v112];
                v126 = v187 + 1;
                v127 = v113;
                v128 = v187;
                while (2)
                {
                  v129 = &v114->i8[v110 * v115];
                  v130 = &v113[64 * v110];
                  if (v124)
                  {
                    v131 = 0;
LABEL_175:
                    v141 = v131 + 1;
                    do
                    {
                      v142 = *v129++;
                      *v130++ = v142;
                    }

                    while (v116 > v141++);
                  }

                  else
                  {
                    if (v109 >= 8)
                    {
                      v133 = v126;
                      v134 = v125;
                      v135 = v116 & 0x1FFFFFFE0;
                      do
                      {
                        v136 = *v133;
                        *(v134 - 1) = v133[-1];
                        *v134 = v136;
                        v134 += 32;
                        v133 += 2;
                        v135 -= 32;
                      }

                      while (v135);
                      if (v116 == v122)
                      {
                        goto LABEL_161;
                      }

                      v132 = v116 & 0x1FFFFFFE0;
                      if ((v109 & 6) == 0)
                      {
                        v129 += v122;
                        v130 += v122;
                        v131 = v116 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v130 += v123;
                    v137 = -8 * ((v109 >> 1) & 0x3FFFFFFF) + v132;
                    v138 = (v128->i64 + v132);
                    v139 = &v127[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    if (v116 != v123)
                    {
                      v129 += v123;
                      v131 = v116 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v110;
                  v125 += 64;
                  v126 = (v126 + v115);
                  v128 = (v128 + v115);
                  v127 += 64;
                  if (v110 == v104)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v105 = vld1q_dup_s16(v102);
              v215 = v105;
              v219 = v105;
              v223 = v105;
              v227 = v105;
              v104 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v196, 64, v185, v186, v193, v194);
            if (!v183)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v71;
          if (!v183)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v73, 0x200uLL);
LABEL_26:
          v21 = v35++ == v171 >> 4;
          result = v180;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v311 = v21;
  v312 = v22;
  v295 = v23;
  v24 = v12;
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v317 = v14;
  v297 = v14 + a10 - 1;
  v318 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v296 = v297 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v321 = v32;
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
      v310 = 0;
LABEL_32:
      v307 = v35 - 4;
      v301 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v294 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v310 = v40 >= v34;
    goto LABEL_32;
  }

  v310 = 0;
  v294 = 0;
  v301 = 0;
  v307 = 0;
LABEL_33:
  if (v26 <= v296)
  {
    v309 = v16 + a9 - 1;
    v293 = v16 >> 4;
    if (v16 >> 4 <= v309 >> 4)
    {
      v319 = v27 >> 4;
      v302 = v27 & 0xF;
      v291 = v28 & 7;
      v292 = v28 >> 3;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v300 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v299 = v43;
      v308 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v317)
        {
          v45 = v317;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v297 < v44)
        {
          v44 = v297;
        }

        v316 = 8 * v26;
        v306 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v291;
        v305 = v47;
        v49 = v47 != 8;
        v50 = v291 + 1;
        if (v26 != v292)
        {
          v50 = 8;
          v48 = v49;
        }

        v304 = v48;
        v51 = v293;
        v303 = (v26 >> v301) * v294;
        v52 = v26 & ~(-1 << v301);
        v314 = v295 + (v45 - v317) * a11;
        v315 = v50;
        v313 = v50;
        v298 = v26;
        do
        {
          v53 = 16 * v51;
          v54 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v51;
          }

          if (v309 < v54)
          {
            v54 = v309;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v319)
          {
            v58 = v302 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v316 >= v317 && v53 >= v16)
          {
            v60 = v56 != v302;
            if (v51 != v319)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v304;
          }

          if (v310)
          {
            if (v307 | v301)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v301 != 0;
              v65 = v307 != 0;
              v66 = v301;
              v67 = v307;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v51 & ~(-1 << v307) & v63) << v61++;
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
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v307) + v303);
          }

          else if (v300)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v299.i8[0];
            v73 = v299.i8[4];
            v74 = v300.i32[0];
            v75 = v300.i32[1];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v73 = v75 != 0;
              v72 = v74 != 0;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_103:
              v88 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_103;
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
              v84 |= (v87 & v51) << v83++;
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
LABEL_104:
          v89 = (v312 + v88);
          v90 = v314 + 16 * (v55 - v16);
          v320 = (v311 + v76);
          if (v321)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 8)))
            {
              goto LABEL_110;
            }

            v92 = v57;
            v93 = v52;
            v94 = (v312 + v88);
            memcpy(__dst, (v311 + v76), sizeof(__dst));
            v53 = 16 * v51;
            v26 = v298;
            v57 = v92;
            v89 = v94;
            v52 = v93;
            result = v318;
          }

          else
          {
            v91 = (v311 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v315);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v95 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v323 = v91;
          v331 = v58;
          v332 = v315;
          v327 = v306;
          v328 = v55 - v53;
          v324 = v89;
          v325 = v90;
          v326 = a11;
          v329 = v305;
          v330 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v308;
            v96 = v51 + 1;
            goto LABEL_202;
          }

          v97 = *v89;
          v16 = v308;
          if (v97 == 255)
          {
            v100 = *(v91 + 1);
            v101 = *(v91 + 2);
            v102 = *(v91 + 3);
            v103 = *(v91 + 6);
            v104 = *(v91 + 7);
            v105 = *(v91 + 8);
            v106 = *(v91 + 9);
            v107 = *(v91 + 11);
            v108 = *(v91 + 4);
            v109 = *(v91 + 12);
            v110 = *(v91 + 13);
            v111 = *(v91 + 14);
            v112 = *(v91 + 15);
            v113 = *(v91 + 5);
            v114 = *(v91 + 10);
            v334 = *v91;
            v335 = v100;
            v336 = v108;
            v337 = v113;
            v350 = v101;
            v351 = v102;
            v352 = v103;
            v353 = v104;
            v366 = v105;
            v367 = v106;
            v368 = v109;
            v369 = v110;
            v98 = 256;
            v382 = v114;
            v383 = v107;
            v384 = v111;
            v385 = v112;
          }

          else if (v97 == 7)
          {
            v99 = vld1q_dup_f64(v91);
            v334 = v99;
            v335 = v99;
            v336 = v99;
            v337 = v99;
            v350 = v99;
            v351 = v99;
            v352 = v99;
            v353 = v99;
            v366 = v99;
            v367 = v99;
            v368 = v99;
            v369 = v99;
            v382 = v99;
            v383 = v99;
            v98 = 8;
            v384 = v99;
            v385 = v99;
          }

          else if (*v89)
          {
            v115 = v89;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 256, v91, v97);
            v89 = v115;
          }

          else
          {
            v98 = 0;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
          }

          v116 = &v91[v98];
          v117 = v89[1];
          if (v117 == 255)
          {
            v120 = *(v116 + 16);
            v121 = *(v116 + 32);
            v122 = *(v116 + 48);
            v123 = *(v116 + 96);
            v124 = *(v116 + 112);
            v125 = *(v116 + 128);
            v126 = *(v116 + 144);
            v127 = *(v116 + 176);
            v128 = *(v116 + 64);
            v129 = *(v116 + 192);
            v130 = *(v116 + 208);
            v131 = *(v116 + 224);
            v132 = *(v116 + 240);
            v133 = *(v116 + 80);
            v134 = *(v116 + 160);
            v338 = *v116;
            v339 = v120;
            v340 = v128;
            v341 = v133;
            v354 = v121;
            v355 = v122;
            v356 = v123;
            v357 = v124;
            v370 = v125;
            v371 = v126;
            v372 = v129;
            v373 = v130;
            v118 = 256;
            v386 = v134;
            v387 = v127;
            v388 = v131;
            v389 = v132;
          }

          else if (v117 == 7)
          {
            v119 = vld1q_dup_f64(v116);
            v338 = v119;
            v339 = v119;
            v340 = v119;
            v341 = v119;
            v354 = v119;
            v355 = v119;
            v356 = v119;
            v357 = v119;
            v370 = v119;
            v371 = v119;
            v372 = v119;
            v373 = v119;
            v386 = v119;
            v387 = v119;
            v118 = 8;
            v388 = v119;
            v389 = v119;
          }

          else if (v89[1])
          {
            v135 = v89;
            v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v338, 256, v116, v117);
            v89 = v135;
          }

          else
          {
            v118 = 0;
            v340 = 0u;
            v341 = 0u;
            v338 = 0u;
            v339 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v386 = 0u;
            v387 = 0u;
            v388 = 0u;
            v389 = 0u;
          }

          v136 = v116 + v118;
          v137 = v89[2];
          if (v137 == 255)
          {
            v140 = *(v136 + 16);
            v141 = *(v136 + 32);
            v142 = *(v136 + 48);
            v143 = *(v136 + 96);
            v144 = *(v136 + 112);
            v145 = *(v136 + 128);
            v146 = *(v136 + 144);
            v147 = *(v136 + 176);
            v148 = *(v136 + 64);
            v149 = *(v136 + 192);
            v150 = *(v136 + 208);
            v151 = *(v136 + 224);
            v152 = *(v136 + 240);
            v153 = *(v136 + 80);
            v154 = *(v136 + 160);
            v398 = *v136;
            v399 = v140;
            v400 = v148;
            v401 = v153;
            v414 = v141;
            v415 = v142;
            v416 = v143;
            v417 = v144;
            v430 = v145;
            v431 = v146;
            v432 = v149;
            v433 = v150;
            v138 = 256;
            v446 = v154;
            v447 = v147;
            v448 = v151;
            v449 = v152;
          }

          else if (v137 == 7)
          {
            v139 = vld1q_dup_f64(v136);
            v398 = v139;
            v399 = v139;
            v400 = v139;
            v401 = v139;
            v414 = v139;
            v415 = v139;
            v416 = v139;
            v417 = v139;
            v430 = v139;
            v431 = v139;
            v432 = v139;
            v433 = v139;
            v446 = v139;
            v447 = v139;
            v448 = v139;
            v138 = 8;
            v449 = v139;
          }

          else if (v89[2])
          {
            v155 = v89;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 256, v136, v137);
            v89 = v155;
          }

          else
          {
            v138 = 0;
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v449 = 0u;
          }

          v156 = v136 + v138;
          v157 = v89[3];
          if (v157 == 255)
          {
            v160 = *(v156 + 16);
            v161 = *(v156 + 32);
            v162 = *(v156 + 48);
            v163 = *(v156 + 96);
            v164 = *(v156 + 112);
            v165 = *(v156 + 128);
            v166 = *(v156 + 144);
            v167 = *(v156 + 176);
            v168 = *(v156 + 64);
            v169 = *(v156 + 192);
            v170 = *(v156 + 208);
            v171 = *(v156 + 224);
            v172 = *(v156 + 240);
            v173 = *(v156 + 80);
            v174 = *(v156 + 160);
            v402 = *v156;
            v403 = v160;
            v404 = v168;
            v405 = v173;
            v418 = v161;
            v419 = v162;
            v420 = v163;
            v421 = v164;
            v434 = v165;
            v435 = v166;
            v436 = v169;
            v437 = v170;
            v158 = 256;
            v450 = v174;
            v451 = v167;
            v452 = v171;
            v453 = v172;
          }

          else if (v157 == 7)
          {
            v159 = vld1q_dup_f64(v156);
            v402 = v159;
            v403 = v159;
            v404 = v159;
            v405 = v159;
            v418 = v159;
            v419 = v159;
            v420 = v159;
            v421 = v159;
            v434 = v159;
            v435 = v159;
            v436 = v159;
            v437 = v159;
            v450 = v159;
            v451 = v159;
            v452 = v159;
            v158 = 8;
            v453 = v159;
          }

          else if (v89[3])
          {
            v175 = v89;
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v402, 256, v156, v157);
            v89 = v175;
          }

          else
          {
            v158 = 0;
            v404 = 0u;
            v405 = 0u;
            v402 = 0u;
            v403 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v434 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v450 = 0u;
            v451 = 0u;
            v452 = 0u;
            v453 = 0u;
          }

          v176 = v156 + v158;
          v177 = v89[4];
          if (v177 == 255)
          {
            v180 = *(v176 + 16);
            v181 = *(v176 + 32);
            v182 = *(v176 + 48);
            v183 = *(v176 + 96);
            v184 = *(v176 + 112);
            v185 = *(v176 + 128);
            v186 = *(v176 + 144);
            v187 = *(v176 + 176);
            v188 = *(v176 + 64);
            v189 = *(v176 + 192);
            v190 = *(v176 + 208);
            v191 = *(v176 + 224);
            v192 = *(v176 + 240);
            v193 = *(v176 + 80);
            v194 = *(v176 + 160);
            v342 = *v176;
            v343 = v180;
            v344 = v188;
            v345 = v193;
            v358 = v181;
            v359 = v182;
            v360 = v183;
            v361 = v184;
            v374 = v185;
            v375 = v186;
            v376 = v189;
            v377 = v190;
            v178 = 256;
            v390 = v194;
            v391 = v187;
            v392 = v191;
            v393 = v192;
          }

          else if (v177 == 7)
          {
            v179 = vld1q_dup_f64(v176);
            v342 = v179;
            v343 = v179;
            v344 = v179;
            v345 = v179;
            v358 = v179;
            v359 = v179;
            v360 = v179;
            v361 = v179;
            v374 = v179;
            v375 = v179;
            v376 = v179;
            v377 = v179;
            v390 = v179;
            v391 = v179;
            v178 = 8;
            v392 = v179;
            v393 = v179;
          }

          else if (v89[4])
          {
            v195 = v89;
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v342, 256, v176, v177);
            v89 = v195;
          }

          else
          {
            v178 = 0;
            v344 = 0u;
            v345 = 0u;
            v342 = 0u;
            v343 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
          }

          v196 = v176 + v178;
          v197 = v89[5];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 32);
            v202 = *(v196 + 48);
            v203 = *(v196 + 96);
            v204 = *(v196 + 112);
            v205 = *(v196 + 128);
            v206 = *(v196 + 144);
            v207 = *(v196 + 176);
            v208 = *(v196 + 64);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 160);
            v346 = *v196;
            v347 = v200;
            v348 = v208;
            v349 = v213;
            v362 = v201;
            v363 = v202;
            v364 = v203;
            v365 = v204;
            v378 = v205;
            v379 = v206;
            v380 = v209;
            v381 = v210;
            v198 = 256;
            v394 = v214;
            v395 = v207;
            v396 = v211;
            v397 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v346 = v199;
            v347 = v199;
            v348 = v199;
            v349 = v199;
            v362 = v199;
            v363 = v199;
            v364 = v199;
            v365 = v199;
            v378 = v199;
            v379 = v199;
            v380 = v199;
            v381 = v199;
            v394 = v199;
            v395 = v199;
            v198 = 8;
            v396 = v199;
            v397 = v199;
          }

          else if (v89[5])
          {
            v215 = v89;
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v346, 256, v196, v197);
            v89 = v215;
          }

          else
          {
            v198 = 0;
            v348 = 0u;
            v349 = 0u;
            v346 = 0u;
            v347 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
          }

          v216 = v196 + v198;
          v217 = v89[6];
          if (v217 == 255)
          {
            v220 = *(v216 + 16);
            v221 = *(v216 + 32);
            v222 = *(v216 + 48);
            v223 = *(v216 + 96);
            v224 = *(v216 + 112);
            v225 = *(v216 + 128);
            v226 = *(v216 + 144);
            v227 = *(v216 + 176);
            v228 = *(v216 + 64);
            v229 = *(v216 + 192);
            v230 = *(v216 + 208);
            v231 = *(v216 + 224);
            v232 = *(v216 + 240);
            v233 = *(v216 + 80);
            v234 = *(v216 + 160);
            v406 = *v216;
            v407 = v220;
            v408 = v228;
            v409 = v233;
            v422 = v221;
            v423 = v222;
            v424 = v223;
            v425 = v224;
            v438 = v225;
            v439 = v226;
            v440 = v229;
            v441 = v230;
            v218 = 256;
            v454 = v234;
            v455 = v227;
            v456 = v231;
            v457 = v232;
          }

          else if (v217 == 7)
          {
            v219 = vld1q_dup_f64(v216);
            v406 = v219;
            v407 = v219;
            v408 = v219;
            v409 = v219;
            v422 = v219;
            v423 = v219;
            v424 = v219;
            v425 = v219;
            v438 = v219;
            v439 = v219;
            v440 = v219;
            v441 = v219;
            v454 = v219;
            v455 = v219;
            v456 = v219;
            v218 = 8;
            v457 = v219;
          }

          else if (v89[6])
          {
            v235 = v89;
            v218 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v406, 256, v216, v217);
            v89 = v235;
          }

          else
          {
            v218 = 0;
            v408 = 0u;
            v409 = 0u;
            v406 = 0u;
            v407 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v454 = 0u;
            v455 = 0u;
            v456 = 0u;
            v457 = 0u;
          }

          v236 = v216 + v218;
          v237 = v89[7];
          if (v237 == 255)
          {
            v241 = *(v236 + 16);
            v242 = *(v236 + 32);
            v243 = *(v236 + 48);
            v244 = *(v236 + 96);
            v245 = *(v236 + 112);
            v246 = *(v236 + 64);
            v247 = *(v236 + 128);
            v248 = *(v236 + 144);
            v249 = *(v236 + 80);
            v250 = *(v236 + 192);
            v251 = *(v236 + 208);
            v252 = *(v236 + 224);
            v253 = *(v236 + 240);
            v254 = *(v236 + 160);
            v255 = *(v236 + 176);
            v410 = *v236;
            v411 = v241;
            v412 = v246;
            v413 = v249;
            v426 = v242;
            v427 = v243;
            v428 = v244;
            v429 = v245;
            v442 = v247;
            v443 = v248;
            v444 = v250;
            v445 = v251;
            v238 = v305;
            v239 = v306;
            v458 = v254;
            v459 = v255;
            v460 = v252;
            v461 = v253;
            v96 = v51 + 1;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v96 = v51 + 1;
            if (v237 == 7)
            {
              v240 = vld1q_dup_f64(v236);
              v410 = v240;
              v411 = v240;
              v412 = v240;
              v413 = v240;
              v426 = v240;
              v427 = v240;
              v428 = v240;
              v429 = v240;
              v442 = v240;
              v443 = v240;
              v444 = v240;
              v445 = v240;
              v458 = v240;
              v459 = v240;
              v460 = v240;
              v238 = v305;
              v239 = v306;
              v461 = v240;
              if (!v305)
              {
                goto LABEL_201;
              }
            }

            else if (v89[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v410, 256, v236, v237);
              v239 = v327;
              v95 = v328;
              v238 = v329;
              if (!v329)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v412 = 0u;
              v413 = 0u;
              v410 = 0u;
              v411 = 0u;
              v426 = 0u;
              v427 = 0u;
              v428 = 0u;
              v429 = 0u;
              v442 = 0u;
              v443 = 0u;
              v444 = 0u;
              v445 = 0u;
              v458 = 0u;
              v459 = 0u;
              v238 = v305;
              v239 = v306;
              v460 = 0u;
              v461 = 0u;
              if (!v305)
              {
                goto LABEL_201;
              }
            }
          }

          v256 = v330;
          if (v330)
          {
            v257 = 0;
            v258 = v239;
            v259 = v239 << 8;
            v260 = 16 * v95;
            v261 = &v334 + v259 + v260;
            v262 = v325;
            v263 = v326;
            v264 = 16 * v330;
            v265 = &__dst[256 * v238 + 1792 + 256 * v258 + v264 + v260];
            if (16 * v330)
            {
              v266 = (16 * v330 - 1) >> 32 == 0;
            }

            else
            {
              v266 = 0;
            }

            v267 = !v266;
            v269 = v261 < v325 + v326 * (v238 - 1) + 16 * v330 && v325 < v265;
            v270 = v264 & 0x1FFFFFFE0;
            v271 = v267 | (v326 < 0) | v269;
            v272 = &v335 + v259 + v260;
            v273 = (v325 + 16);
            v274 = v261;
            v275 = v325;
            do
            {
              v276 = (v262 + v257 * v263);
              v277 = &v261[256 * v257];
              if (v271)
              {
                v278 = 0;
              }

              else
              {
                if (v256 == 1)
                {
                  v282 = 0;
LABEL_193:
                  v283 = -16 * v256 + v282;
                  v284 = (v275 + v282);
                  v285 = &v274[v282];
                  do
                  {
                    v286 = *v284++;
                    *v285 = v286;
                    v285 += 16;
                    v283 += 16;
                  }

                  while (v283);
                  goto LABEL_185;
                }

                v287 = v273;
                v288 = v272;
                v289 = v264 & 0x1FFFFFFE0;
                do
                {
                  v290 = *v287;
                  *(v288 - 1) = *(v287 - 1);
                  *v288 = v290;
                  v288 += 2;
                  v287 += 2;
                  v289 -= 32;
                }

                while (v289);
                if (v264 == v270)
                {
                  goto LABEL_185;
                }

                v282 = v264 & 0x1FFFFFFE0;
                if (v256)
                {
                  goto LABEL_193;
                }

                v276 += v270;
                v277 += v270;
                v278 = v264 & 0xFFFFFFE0;
              }

              v279 = v278 + 1;
              do
              {
                v280 = *v276++;
                *v277++ = v280;
              }

              while (v264 > v279++);
LABEL_185:
              ++v257;
              v272 += 256;
              v273 = (v273 + v263);
              v275 += v263;
              v274 += 256;
            }

            while (v257 != v238);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v334, 256, v323, v324, v331, v332);
LABEL_202:
          if (v321)
          {
            memcpy(v320, v91, 0x800uLL);
          }

          v29 = v51 == v309 >> 4;
          v51 = v96;
          result = v318;
        }

        while (!v29);
        v29 = v26++ == v296;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v311 = v21;
  v312 = v22;
  v295 = v23;
  v24 = v12;
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v317 = v14;
  v297 = v14 + a10 - 1;
  v318 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v296 = v297 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v321 = v32;
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
      v310 = 0;
LABEL_32:
      v307 = v35 - 4;
      v301 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v294 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v310 = v40 >= v34;
    goto LABEL_32;
  }

  v310 = 0;
  v294 = 0;
  v301 = 0;
  v307 = 0;
LABEL_33:
  if (v26 <= v296)
  {
    v309 = v16 + a9 - 1;
    v293 = v16 >> 4;
    if (v16 >> 4 <= v309 >> 4)
    {
      v319 = v27 >> 4;
      v302 = v27 & 0xF;
      v291 = v28 & 7;
      v292 = v28 >> 3;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v300 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v299 = v43;
      v308 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v317)
        {
          v45 = v317;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v297 < v44)
        {
          v44 = v297;
        }

        v316 = 8 * v26;
        v306 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v291;
        v305 = v47;
        v49 = v47 != 8;
        v50 = v291 + 1;
        if (v26 != v292)
        {
          v50 = 8;
          v48 = v49;
        }

        v304 = v48;
        v51 = v293;
        v303 = (v26 >> v301) * v294;
        v52 = v26 & ~(-1 << v301);
        v314 = v295 + (v45 - v317) * a11;
        v315 = v50;
        v313 = v50;
        v298 = v26;
        do
        {
          v53 = 16 * v51;
          v54 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v51;
          }

          if (v309 < v54)
          {
            v54 = v309;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v319)
          {
            v58 = v302 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v316 >= v317 && v53 >= v16)
          {
            v60 = v56 != v302;
            if (v51 != v319)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v304;
          }

          if (v310)
          {
            if (v307 | v301)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v301 != 0;
              v65 = v307 != 0;
              v66 = v301;
              v67 = v307;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v51 & ~(-1 << v307) & v63) << v61++;
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
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v307) + v303);
          }

          else if (v300)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v299.i8[0];
            v73 = v299.i8[4];
            v74 = v300.i32[0];
            v75 = v300.i32[1];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v73 = v75 != 0;
              v72 = v74 != 0;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_103:
              v88 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_103;
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
              v84 |= (v87 & v51) << v83++;
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
LABEL_104:
          v89 = (v312 + v88);
          v90 = (v314 + 16 * (v55 - v16));
          v320 = (v311 + v76);
          if (v321)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 8)))
            {
              goto LABEL_110;
            }

            v92 = v57;
            v93 = v52;
            v94 = (v312 + v88);
            memcpy(__dst, (v311 + v76), sizeof(__dst));
            v53 = 16 * v51;
            v26 = v298;
            v57 = v92;
            v89 = v94;
            v52 = v93;
            result = v318;
          }

          else
          {
            v91 = (v311 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v315);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v95 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v323 = v91;
          v331 = v58;
          v332 = v315;
          v327 = v306;
          v328 = v55 - v53;
          v324 = v89;
          v325 = v90;
          v326 = a11;
          v329 = v305;
          v330 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v308;
            v96 = v51 + 1;
            goto LABEL_202;
          }

          v97 = *v89;
          v16 = v308;
          if (v97 == 255)
          {
            v100 = *(v91 + 1);
            v101 = *(v91 + 2);
            v102 = *(v91 + 3);
            v103 = *(v91 + 6);
            v104 = *(v91 + 7);
            v105 = *(v91 + 8);
            v106 = *(v91 + 9);
            v107 = *(v91 + 11);
            v108 = *(v91 + 4);
            v109 = *(v91 + 12);
            v110 = *(v91 + 13);
            v111 = *(v91 + 14);
            v112 = *(v91 + 15);
            v113 = *(v91 + 5);
            v114 = *(v91 + 10);
            v334 = *v91;
            v335 = v100;
            v336 = v108;
            v337 = v113;
            v350 = v101;
            v351 = v102;
            v352 = v103;
            v353 = v104;
            v366 = v105;
            v367 = v106;
            v368 = v109;
            v369 = v110;
            v98 = 256;
            v382 = v114;
            v383 = v107;
            v384 = v111;
            v385 = v112;
          }

          else if (v97 == 7)
          {
            v99 = vld1q_dup_f64(v91);
            v334 = v99;
            v335 = v99;
            v336 = v99;
            v337 = v99;
            v350 = v99;
            v351 = v99;
            v352 = v99;
            v353 = v99;
            v366 = v99;
            v367 = v99;
            v368 = v99;
            v369 = v99;
            v382 = v99;
            v383 = v99;
            v98 = 8;
            v384 = v99;
            v385 = v99;
          }

          else if (*v89)
          {
            v115 = v89;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 256, v91, v97);
            v89 = v115;
          }

          else
          {
            v98 = 0;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
          }

          v116 = v91 + v98;
          v117 = v89[1];
          if (v117 == 255)
          {
            v120 = *(v116 + 16);
            v121 = *(v116 + 32);
            v122 = *(v116 + 48);
            v123 = *(v116 + 96);
            v124 = *(v116 + 112);
            v125 = *(v116 + 128);
            v126 = *(v116 + 144);
            v127 = *(v116 + 176);
            v128 = *(v116 + 64);
            v129 = *(v116 + 192);
            v130 = *(v116 + 208);
            v131 = *(v116 + 224);
            v132 = *(v116 + 240);
            v133 = *(v116 + 80);
            v134 = *(v116 + 160);
            v338 = *v116;
            v339 = v120;
            v340 = v128;
            v341 = v133;
            v354 = v121;
            v355 = v122;
            v356 = v123;
            v357 = v124;
            v370 = v125;
            v371 = v126;
            v372 = v129;
            v373 = v130;
            v118 = 256;
            v386 = v134;
            v387 = v127;
            v388 = v131;
            v389 = v132;
          }

          else if (v117 == 7)
          {
            v119 = vld1q_dup_f64(v116);
            v338 = v119;
            v339 = v119;
            v340 = v119;
            v341 = v119;
            v354 = v119;
            v355 = v119;
            v356 = v119;
            v357 = v119;
            v370 = v119;
            v371 = v119;
            v372 = v119;
            v373 = v119;
            v386 = v119;
            v387 = v119;
            v118 = 8;
            v388 = v119;
            v389 = v119;
          }

          else if (v89[1])
          {
            v135 = v89;
            v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v338, 256, v116, v117);
            v89 = v135;
          }

          else
          {
            v118 = 0;
            v340 = 0u;
            v341 = 0u;
            v338 = 0u;
            v339 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v386 = 0u;
            v387 = 0u;
            v388 = 0u;
            v389 = 0u;
          }

          v136 = v116 + v118;
          v137 = v89[2];
          if (v137 == 255)
          {
            v140 = *(v136 + 16);
            v141 = *(v136 + 32);
            v142 = *(v136 + 48);
            v143 = *(v136 + 96);
            v144 = *(v136 + 112);
            v145 = *(v136 + 128);
            v146 = *(v136 + 144);
            v147 = *(v136 + 176);
            v148 = *(v136 + 64);
            v149 = *(v136 + 192);
            v150 = *(v136 + 208);
            v151 = *(v136 + 224);
            v152 = *(v136 + 240);
            v153 = *(v136 + 80);
            v154 = *(v136 + 160);
            v398 = *v136;
            v399 = v140;
            v400 = v148;
            v401 = v153;
            v414 = v141;
            v415 = v142;
            v416 = v143;
            v417 = v144;
            v430 = v145;
            v431 = v146;
            v432 = v149;
            v433 = v150;
            v138 = 256;
            v446 = v154;
            v447 = v147;
            v448 = v151;
            v449 = v152;
          }

          else if (v137 == 7)
          {
            v139 = vld1q_dup_f64(v136);
            v398 = v139;
            v399 = v139;
            v400 = v139;
            v401 = v139;
            v414 = v139;
            v415 = v139;
            v416 = v139;
            v417 = v139;
            v430 = v139;
            v431 = v139;
            v432 = v139;
            v433 = v139;
            v446 = v139;
            v447 = v139;
            v448 = v139;
            v138 = 8;
            v449 = v139;
          }

          else if (v89[2])
          {
            v155 = v89;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 256, v136, v137);
            v89 = v155;
          }

          else
          {
            v138 = 0;
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v449 = 0u;
          }

          v156 = v136 + v138;
          v157 = v89[3];
          if (v157 == 255)
          {
            v160 = *(v156 + 16);
            v161 = *(v156 + 32);
            v162 = *(v156 + 48);
            v163 = *(v156 + 96);
            v164 = *(v156 + 112);
            v165 = *(v156 + 128);
            v166 = *(v156 + 144);
            v167 = *(v156 + 176);
            v168 = *(v156 + 64);
            v169 = *(v156 + 192);
            v170 = *(v156 + 208);
            v171 = *(v156 + 224);
            v172 = *(v156 + 240);
            v173 = *(v156 + 80);
            v174 = *(v156 + 160);
            v402 = *v156;
            v403 = v160;
            v404 = v168;
            v405 = v173;
            v418 = v161;
            v419 = v162;
            v420 = v163;
            v421 = v164;
            v434 = v165;
            v435 = v166;
            v436 = v169;
            v437 = v170;
            v158 = 256;
            v450 = v174;
            v451 = v167;
            v452 = v171;
            v453 = v172;
          }

          else if (v157 == 7)
          {
            v159 = vld1q_dup_f64(v156);
            v402 = v159;
            v403 = v159;
            v404 = v159;
            v405 = v159;
            v418 = v159;
            v419 = v159;
            v420 = v159;
            v421 = v159;
            v434 = v159;
            v435 = v159;
            v436 = v159;
            v437 = v159;
            v450 = v159;
            v451 = v159;
            v452 = v159;
            v158 = 8;
            v453 = v159;
          }

          else if (v89[3])
          {
            v175 = v89;
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v402, 256, v156, v157);
            v89 = v175;
          }

          else
          {
            v158 = 0;
            v404 = 0u;
            v405 = 0u;
            v402 = 0u;
            v403 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v434 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v450 = 0u;
            v451 = 0u;
            v452 = 0u;
            v453 = 0u;
          }

          v176 = v156 + v158;
          v177 = v89[4];
          if (v177 == 255)
          {
            v180 = *(v176 + 16);
            v181 = *(v176 + 32);
            v182 = *(v176 + 48);
            v183 = *(v176 + 96);
            v184 = *(v176 + 112);
            v185 = *(v176 + 128);
            v186 = *(v176 + 144);
            v187 = *(v176 + 176);
            v188 = *(v176 + 64);
            v189 = *(v176 + 192);
            v190 = *(v176 + 208);
            v191 = *(v176 + 224);
            v192 = *(v176 + 240);
            v193 = *(v176 + 80);
            v194 = *(v176 + 160);
            v342 = *v176;
            v343 = v180;
            v344 = v188;
            v345 = v193;
            v358 = v181;
            v359 = v182;
            v360 = v183;
            v361 = v184;
            v374 = v185;
            v375 = v186;
            v376 = v189;
            v377 = v190;
            v178 = 256;
            v390 = v194;
            v391 = v187;
            v392 = v191;
            v393 = v192;
          }

          else if (v177 == 7)
          {
            v179 = vld1q_dup_f64(v176);
            v342 = v179;
            v343 = v179;
            v344 = v179;
            v345 = v179;
            v358 = v179;
            v359 = v179;
            v360 = v179;
            v361 = v179;
            v374 = v179;
            v375 = v179;
            v376 = v179;
            v377 = v179;
            v390 = v179;
            v391 = v179;
            v178 = 8;
            v392 = v179;
            v393 = v179;
          }

          else if (v89[4])
          {
            v195 = v89;
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v342, 256, v176, v177);
            v89 = v195;
          }

          else
          {
            v178 = 0;
            v344 = 0u;
            v345 = 0u;
            v342 = 0u;
            v343 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
          }

          v196 = v176 + v178;
          v197 = v89[5];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 32);
            v202 = *(v196 + 48);
            v203 = *(v196 + 96);
            v204 = *(v196 + 112);
            v205 = *(v196 + 128);
            v206 = *(v196 + 144);
            v207 = *(v196 + 176);
            v208 = *(v196 + 64);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 160);
            v346 = *v196;
            v347 = v200;
            v348 = v208;
            v349 = v213;
            v362 = v201;
            v363 = v202;
            v364 = v203;
            v365 = v204;
            v378 = v205;
            v379 = v206;
            v380 = v209;
            v381 = v210;
            v198 = 256;
            v394 = v214;
            v395 = v207;
            v396 = v211;
            v397 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v346 = v199;
            v347 = v199;
            v348 = v199;
            v349 = v199;
            v362 = v199;
            v363 = v199;
            v364 = v199;
            v365 = v199;
            v378 = v199;
            v379 = v199;
            v380 = v199;
            v381 = v199;
            v394 = v199;
            v395 = v199;
            v198 = 8;
            v396 = v199;
            v397 = v199;
          }

          else if (v89[5])
          {
            v215 = v89;
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v346, 256, v196, v197);
            v89 = v215;
          }

          else
          {
            v198 = 0;
            v348 = 0u;
            v349 = 0u;
            v346 = 0u;
            v347 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
          }

          v216 = v196 + v198;
          v217 = v89[6];
          if (v217 == 255)
          {
            v220 = *(v216 + 16);
            v221 = *(v216 + 32);
            v222 = *(v216 + 48);
            v223 = *(v216 + 96);
            v224 = *(v216 + 112);
            v225 = *(v216 + 128);
            v226 = *(v216 + 144);
            v227 = *(v216 + 176);
            v228 = *(v216 + 64);
            v229 = *(v216 + 192);
            v230 = *(v216 + 208);
            v231 = *(v216 + 224);
            v232 = *(v216 + 240);
            v233 = *(v216 + 80);
            v234 = *(v216 + 160);
            v406 = *v216;
            v407 = v220;
            v408 = v228;
            v409 = v233;
            v422 = v221;
            v423 = v222;
            v424 = v223;
            v425 = v224;
            v438 = v225;
            v439 = v226;
            v440 = v229;
            v441 = v230;
            v218 = 256;
            v454 = v234;
            v455 = v227;
            v456 = v231;
            v457 = v232;
          }

          else if (v217 == 7)
          {
            v219 = vld1q_dup_f64(v216);
            v406 = v219;
            v407 = v219;
            v408 = v219;
            v409 = v219;
            v422 = v219;
            v423 = v219;
            v424 = v219;
            v425 = v219;
            v438 = v219;
            v439 = v219;
            v440 = v219;
            v441 = v219;
            v454 = v219;
            v455 = v219;
            v456 = v219;
            v218 = 8;
            v457 = v219;
          }

          else if (v89[6])
          {
            v235 = v89;
            v218 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v406, 256, v216, v217);
            v89 = v235;
          }

          else
          {
            v218 = 0;
            v408 = 0u;
            v409 = 0u;
            v406 = 0u;
            v407 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v454 = 0u;
            v455 = 0u;
            v456 = 0u;
            v457 = 0u;
          }

          v236 = v216 + v218;
          v237 = v89[7];
          if (v237 == 255)
          {
            v241 = *(v236 + 16);
            v242 = *(v236 + 32);
            v243 = *(v236 + 48);
            v244 = *(v236 + 96);
            v245 = *(v236 + 112);
            v246 = *(v236 + 64);
            v247 = *(v236 + 128);
            v248 = *(v236 + 144);
            v249 = *(v236 + 80);
            v250 = *(v236 + 192);
            v251 = *(v236 + 208);
            v252 = *(v236 + 224);
            v253 = *(v236 + 240);
            v254 = *(v236 + 160);
            v255 = *(v236 + 176);
            v410 = *v236;
            v411 = v241;
            v412 = v246;
            v413 = v249;
            v426 = v242;
            v427 = v243;
            v428 = v244;
            v429 = v245;
            v442 = v247;
            v443 = v248;
            v444 = v250;
            v445 = v251;
            v238 = v305;
            v239 = v306;
            v458 = v254;
            v459 = v255;
            v460 = v252;
            v461 = v253;
            v96 = v51 + 1;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v96 = v51 + 1;
            if (v237 == 7)
            {
              v240 = vld1q_dup_f64(v236);
              v410 = v240;
              v411 = v240;
              v412 = v240;
              v413 = v240;
              v426 = v240;
              v427 = v240;
              v428 = v240;
              v429 = v240;
              v442 = v240;
              v443 = v240;
              v444 = v240;
              v445 = v240;
              v458 = v240;
              v459 = v240;
              v460 = v240;
              v238 = v305;
              v239 = v306;
              v461 = v240;
              if (!v305)
              {
                goto LABEL_201;
              }
            }

            else if (v89[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v410, 256, v236, v237);
              v239 = v327;
              v95 = v328;
              v238 = v329;
              if (!v329)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v412 = 0u;
              v413 = 0u;
              v410 = 0u;
              v411 = 0u;
              v426 = 0u;
              v427 = 0u;
              v428 = 0u;
              v429 = 0u;
              v442 = 0u;
              v443 = 0u;
              v444 = 0u;
              v445 = 0u;
              v458 = 0u;
              v459 = 0u;
              v238 = v305;
              v239 = v306;
              v460 = 0u;
              v461 = 0u;
              if (!v305)
              {
                goto LABEL_201;
              }
            }
          }

          v256 = v330;
          if (v330)
          {
            v257 = 0;
            v258 = v239;
            v259 = v239 << 8;
            v260 = 16 * v95;
            v261 = &v334 + v259 + v260;
            v262 = v325;
            v263 = v326;
            v264 = 16 * v330;
            v265 = &__dst[256 * v238 + 1792 + 256 * v258 + v264 + v260];
            if (16 * v330)
            {
              v266 = (16 * v330 - 1) >> 32 == 0;
            }

            else
            {
              v266 = 0;
            }

            v267 = !v266;
            v269 = v261 < &v325[v330] + v326 * (v238 - 1) && v325 < v265;
            v270 = v264 & 0x1FFFFFFE0;
            v271 = v267 | (v326 < 0) | v269;
            v272 = &v335 + v259 + v260;
            v273 = v325 + 1;
            v274 = v261;
            v275 = v325;
            do
            {
              v276 = v262 + v257 * v263;
              v277 = &v261[256 * v257];
              if (v271)
              {
                v278 = 0;
              }

              else
              {
                if (v256 == 1)
                {
                  v282 = 0;
LABEL_193:
                  v283 = -16 * v256 + v282;
                  v284 = (v275 + v282);
                  v285 = &v274[v282];
                  do
                  {
                    v286 = *v284++;
                    *v285 = v286;
                    v285 += 16;
                    v283 += 16;
                  }

                  while (v283);
                  goto LABEL_185;
                }

                v287 = v273;
                v288 = v272;
                v289 = v264 & 0x1FFFFFFE0;
                do
                {
                  v290 = *v287;
                  *(v288 - 1) = *(v287 - 1);
                  *v288 = v290;
                  v288 += 2;
                  v287 += 2;
                  v289 -= 32;
                }

                while (v289);
                if (v264 == v270)
                {
                  goto LABEL_185;
                }

                v282 = v264 & 0x1FFFFFFE0;
                if (v256)
                {
                  goto LABEL_193;
                }

                v276 += v270;
                v277 += v270;
                v278 = v264 & 0xFFFFFFE0;
              }

              v279 = v278 + 1;
              do
              {
                v280 = *v276++;
                *v277++ = v280;
              }

              while (v264 > v279++);
LABEL_185:
              ++v257;
              v272 += 256;
              v273 = (v273 + v263);
              v275 = (v275 + v263);
              v274 += 256;
            }

            while (v257 != v238);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v334, 256, v323, v324, v331, v332);
LABEL_202:
          if (v321)
          {
            memcpy(v320, v91, 0x800uLL);
          }

          v29 = v51 == v309 >> 4;
          v51 = v96;
          result = v318;
        }

        while (!v29);
        v29 = v26++ == v296;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v288 = v23;
  v24 = v12;
  v450 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v305 = v14;
  v25 = v14 >> 3;
  v287 = v14 + a10 - 1;
  v289 = v287 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v306 = v24;
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
  v309 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v298 = result;
  if (v25 <= v289)
  {
    v297 = v16 + a9 - 1;
    v286 = v16 >> 4;
    if (v16 >> 4 <= v297 >> 4)
    {
      result = v24;
      v307 = (v20 - 1) >> 4;
      v283 = v20 - 1;
      v290 = (v20 - 1) & 0xF;
      v284 = (v18 - 1) & 7;
      v285 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v293 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v292 = v35;
      v282 = 8 * v27 * v26;
      v296 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v305)
        {
          v37 = v305;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v287 < v36)
        {
          v36 = v287;
        }

        v304 = 8 * v25;
        v295 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v284;
        v294 = v39;
        v41 = v39 != 8;
        v42 = v286;
        v43 = v284 + 1;
        if (v25 != v285)
        {
          v43 = 8;
          v40 = v41;
        }

        v291 = v40;
        v302 = v288 + (v37 - v305) * a11;
        v303 = v43;
        v301 = v43;
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

          if (v297 < v45)
          {
            v45 = v297;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v307)
          {
            v49 = v290 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v304 >= v305 && v44 >= v16)
          {
            v51 = v47 != v290;
            if (v42 != v307)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v291;
          }

          if (v298)
          {
            v72 = 0;
            v73 = v282 >> (*(result + 57) != 0);
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
                v76 = 8;
                v72 = 16;
              }
            }

            v270 = (v72 >> 4) - 1;
            if (v74)
            {
              v271 = 0;
            }

            else
            {
              v271 = 32 - __clz(~(-1 << -__clz(v270)));
            }

            v272 = (v76 >> 3) - 1;
            if (v75)
            {
              v273 = 0;
              if (v271)
              {
                goto LABEL_197;
              }
            }

            else
            {
              v273 = 32 - __clz(~(-1 << -__clz(v272)));
              if (v273 | v271)
              {
LABEL_197:
                v274 = 0;
                v275 = 0;
                v276 = v42 & v270;
                v277 = v25 & v272;
                v278 = v273 != 0;
                v279 = v271 != 0;
                v280 = 1;
                do
                {
                  --v273;
                  if (v278)
                  {
                    v275 |= (v280 & v277) << v274++;
                  }

                  else
                  {
                    v273 = 0;
                  }

                  --v271;
                  if (v279)
                  {
                    v275 |= (v280 & v276) << v274++;
                  }

                  else
                  {
                    v271 = 0;
                  }

                  v280 *= 2;
                  --v274;
                  v279 = v271 != 0;
                  v278 = v273 != 0;
                }

                while (v271 | v273);
                v281 = v275 << 11;
                result = v306;
                goto LABEL_209;
              }
            }

            v281 = 0;
LABEL_209:
            v59 = v281 + ((v44 / v72 + v304 / v76 * ((v72 + v283) / v72)) << 14);
            goto LABEL_52;
          }

          if (v293)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v292.i8[0];
            v56 = v292.i8[4];
            v57 = v293.i32[0];
            v58 = v293.i32[1];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
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
          v77 = (v300 + v71);
          v78 = v302 + 16 * (v46 - v16);
          v308 = (v299 + v59);
          if (v309)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 0x10u) | (v301 < 8)))
            {
              goto LABEL_84;
            }

            v80 = (v300 + v71);
            v81 = v48;
            memcpy(__dst, (v299 + v59), sizeof(__dst));
            v44 = 16 * v42;
            v48 = v81;
            v77 = v80;
            result = v306;
          }

          else
          {
            v79 = (v299 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v301 < 8)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v303);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v311 = v79;
          v319 = v49;
          v320 = v303;
          v315 = v295;
          v316 = v82;
          v312 = v77;
          v313 = v78;
          v314 = a11;
          v317 = v294;
          v318 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v296;
            goto LABEL_176;
          }

          v83 = *v77;
          v16 = v296;
          if (v83 == 255)
          {
            v86 = *(v79 + 1);
            v87 = *(v79 + 2);
            v88 = *(v79 + 3);
            v89 = *(v79 + 6);
            v90 = *(v79 + 7);
            v91 = *(v79 + 8);
            v92 = *(v79 + 9);
            v93 = *(v79 + 11);
            v94 = *(v79 + 4);
            v95 = *(v79 + 12);
            v96 = *(v79 + 13);
            v97 = *(v79 + 14);
            v98 = *(v79 + 15);
            v99 = *(v79 + 5);
            v100 = *(v79 + 10);
            v322 = *v79;
            v323 = v86;
            v324 = v94;
            v325 = v99;
            v338 = v87;
            v339 = v88;
            v340 = v89;
            v341 = v90;
            v354 = v91;
            v355 = v92;
            v356 = v95;
            v357 = v96;
            v84 = 256;
            v370 = v100;
            v371 = v93;
            v372 = v97;
            v373 = v98;
          }

          else if (v83 == 7)
          {
            v85 = vld1q_dup_f64(v79);
            v322 = v85;
            v323 = v85;
            v324 = v85;
            v325 = v85;
            v338 = v85;
            v339 = v85;
            v340 = v85;
            v341 = v85;
            v354 = v85;
            v355 = v85;
            v356 = v85;
            v357 = v85;
            v370 = v85;
            v371 = v85;
            v84 = 8;
            v372 = v85;
            v373 = v85;
          }

          else if (*v77)
          {
            v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 256, v79, v83);
          }

          else
          {
            v84 = 0;
            v325 = 0u;
            v324 = 0u;
            v323 = 0u;
            v322 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
          }

          v101 = &v79[v84];
          v102 = v77[1];
          if (v102 == 255)
          {
            v105 = *(v101 + 16);
            v106 = *(v101 + 32);
            v107 = *(v101 + 48);
            v108 = *(v101 + 96);
            v109 = *(v101 + 112);
            v110 = *(v101 + 128);
            v111 = *(v101 + 144);
            v112 = *(v101 + 176);
            v113 = *(v101 + 64);
            v114 = *(v101 + 192);
            v115 = *(v101 + 208);
            v116 = *(v101 + 224);
            v117 = *(v101 + 240);
            v118 = *(v101 + 80);
            v119 = *(v101 + 160);
            v326 = *v101;
            v327 = v105;
            v328 = v113;
            v329 = v118;
            v342 = v106;
            v343 = v107;
            v344 = v108;
            v345 = v109;
            v358 = v110;
            v359 = v111;
            v360 = v114;
            v361 = v115;
            v103 = 256;
            v374 = v119;
            v375 = v112;
            v376 = v116;
            v377 = v117;
          }

          else if (v102 == 7)
          {
            v104 = vld1q_dup_f64(v101);
            v326 = v104;
            v327 = v104;
            v328 = v104;
            v329 = v104;
            v342 = v104;
            v343 = v104;
            v344 = v104;
            v345 = v104;
            v358 = v104;
            v359 = v104;
            v360 = v104;
            v361 = v104;
            v374 = v104;
            v375 = v104;
            v103 = 8;
            v376 = v104;
            v377 = v104;
          }

          else if (v77[1])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v326, 256, v101, v102);
          }

          else
          {
            v103 = 0;
            v328 = 0u;
            v329 = 0u;
            v326 = 0u;
            v327 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
          }

          v120 = v101 + v103;
          v121 = v77[2];
          if (v121 == 255)
          {
            v124 = *(v120 + 16);
            v125 = *(v120 + 32);
            v126 = *(v120 + 48);
            v127 = *(v120 + 96);
            v128 = *(v120 + 112);
            v129 = *(v120 + 128);
            v130 = *(v120 + 144);
            v131 = *(v120 + 176);
            v132 = *(v120 + 64);
            v133 = *(v120 + 192);
            v134 = *(v120 + 208);
            v135 = *(v120 + 224);
            v136 = *(v120 + 240);
            v137 = *(v120 + 80);
            v138 = *(v120 + 160);
            v386 = *v120;
            v387 = v124;
            v388 = v132;
            v389 = v137;
            v402 = v125;
            v403 = v126;
            v404 = v127;
            v405 = v128;
            v418 = v129;
            v419 = v130;
            v420 = v133;
            v421 = v134;
            v122 = 256;
            v434 = v138;
            v435 = v131;
            v436 = v135;
            v437 = v136;
          }

          else if (v121 == 7)
          {
            v123 = vld1q_dup_f64(v120);
            v386 = v123;
            v387 = v123;
            v388 = v123;
            v389 = v123;
            v402 = v123;
            v403 = v123;
            v404 = v123;
            v405 = v123;
            v418 = v123;
            v419 = v123;
            v420 = v123;
            v421 = v123;
            v434 = v123;
            v435 = v123;
            v436 = v123;
            v122 = 8;
            v437 = v123;
          }

          else if (v77[2])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 256, v120, v121);
          }

          else
          {
            v122 = 0;
            v388 = 0u;
            v389 = 0u;
            v386 = 0u;
            v387 = 0u;
            v402 = 0u;
            v403 = 0u;
            v404 = 0u;
            v405 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v434 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
          }

          v139 = v120 + v122;
          v140 = v77[3];
          if (v140 == 255)
          {
            v143 = *(v139 + 16);
            v144 = *(v139 + 32);
            v145 = *(v139 + 48);
            v146 = *(v139 + 96);
            v147 = *(v139 + 112);
            v148 = *(v139 + 128);
            v149 = *(v139 + 144);
            v150 = *(v139 + 176);
            v151 = *(v139 + 64);
            v152 = *(v139 + 192);
            v153 = *(v139 + 208);
            v154 = *(v139 + 224);
            v155 = *(v139 + 240);
            v156 = *(v139 + 80);
            v157 = *(v139 + 160);
            v390 = *v139;
            v391 = v143;
            v392 = v151;
            v393 = v156;
            v406 = v144;
            v407 = v145;
            v408 = v146;
            v409 = v147;
            v422 = v148;
            v423 = v149;
            v424 = v152;
            v425 = v153;
            v141 = 256;
            v438 = v157;
            v439 = v150;
            v440 = v154;
            v441 = v155;
          }

          else if (v140 == 7)
          {
            v142 = vld1q_dup_f64(v139);
            v390 = v142;
            v391 = v142;
            v392 = v142;
            v393 = v142;
            v406 = v142;
            v407 = v142;
            v408 = v142;
            v409 = v142;
            v422 = v142;
            v423 = v142;
            v424 = v142;
            v425 = v142;
            v438 = v142;
            v439 = v142;
            v440 = v142;
            v141 = 8;
            v441 = v142;
          }

          else if (v77[3])
          {
            v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v390, 256, v139, v140);
          }

          else
          {
            v141 = 0;
            v392 = 0u;
            v393 = 0u;
            v390 = 0u;
            v391 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
          }

          v158 = v139 + v141;
          v159 = v77[4];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 96);
            v166 = *(v158 + 112);
            v167 = *(v158 + 128);
            v168 = *(v158 + 144);
            v169 = *(v158 + 176);
            v170 = *(v158 + 64);
            v171 = *(v158 + 192);
            v172 = *(v158 + 208);
            v173 = *(v158 + 224);
            v174 = *(v158 + 240);
            v175 = *(v158 + 80);
            v176 = *(v158 + 160);
            v330 = *v158;
            v331 = v162;
            v332 = v170;
            v333 = v175;
            v346 = v163;
            v347 = v164;
            v348 = v165;
            v349 = v166;
            v362 = v167;
            v363 = v168;
            v364 = v171;
            v365 = v172;
            v160 = 256;
            v378 = v176;
            v379 = v169;
            v380 = v173;
            v381 = v174;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v330 = v161;
            v331 = v161;
            v332 = v161;
            v333 = v161;
            v346 = v161;
            v347 = v161;
            v348 = v161;
            v349 = v161;
            v362 = v161;
            v363 = v161;
            v364 = v161;
            v365 = v161;
            v378 = v161;
            v379 = v161;
            v160 = 8;
            v380 = v161;
            v381 = v161;
          }

          else if (v77[4])
          {
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v330, 256, v158, v159);
          }

          else
          {
            v160 = 0;
            v332 = 0u;
            v333 = 0u;
            v330 = 0u;
            v331 = 0u;
            v346 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
          }

          v177 = v158 + v160;
          v178 = v77[5];
          if (v178 == 255)
          {
            v181 = *(v177 + 16);
            v182 = *(v177 + 32);
            v183 = *(v177 + 48);
            v184 = *(v177 + 96);
            v185 = *(v177 + 112);
            v186 = *(v177 + 128);
            v187 = *(v177 + 144);
            v188 = *(v177 + 176);
            v189 = *(v177 + 64);
            v190 = *(v177 + 192);
            v191 = *(v177 + 208);
            v192 = *(v177 + 224);
            v193 = *(v177 + 240);
            v194 = *(v177 + 80);
            v195 = *(v177 + 160);
            v334 = *v177;
            v335 = v181;
            v336 = v189;
            v337 = v194;
            v350 = v182;
            v351 = v183;
            v352 = v184;
            v353 = v185;
            v366 = v186;
            v367 = v187;
            v368 = v190;
            v369 = v191;
            v179 = 256;
            v382 = v195;
            v383 = v188;
            v384 = v192;
            v385 = v193;
          }

          else if (v178 == 7)
          {
            v180 = vld1q_dup_f64(v177);
            v334 = v180;
            v335 = v180;
            v336 = v180;
            v337 = v180;
            v350 = v180;
            v351 = v180;
            v352 = v180;
            v353 = v180;
            v366 = v180;
            v367 = v180;
            v368 = v180;
            v369 = v180;
            v382 = v180;
            v383 = v180;
            v179 = 8;
            v384 = v180;
            v385 = v180;
          }

          else if (v77[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 256, v177, v178);
          }

          else
          {
            v179 = 0;
            v336 = 0u;
            v337 = 0u;
            v334 = 0u;
            v335 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
          }

          v196 = v177 + v179;
          v197 = v77[6];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 32);
            v202 = *(v196 + 48);
            v203 = *(v196 + 96);
            v204 = *(v196 + 112);
            v205 = *(v196 + 128);
            v206 = *(v196 + 144);
            v207 = *(v196 + 176);
            v208 = *(v196 + 64);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 160);
            v394 = *v196;
            v395 = v200;
            v396 = v208;
            v397 = v213;
            v410 = v201;
            v411 = v202;
            v412 = v203;
            v413 = v204;
            v426 = v205;
            v427 = v206;
            v428 = v209;
            v429 = v210;
            v198 = 256;
            v442 = v214;
            v443 = v207;
            v444 = v211;
            v445 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v394 = v199;
            v395 = v199;
            v396 = v199;
            v397 = v199;
            v410 = v199;
            v411 = v199;
            v412 = v199;
            v413 = v199;
            v426 = v199;
            v427 = v199;
            v428 = v199;
            v429 = v199;
            v442 = v199;
            v443 = v199;
            v444 = v199;
            v198 = 8;
            v445 = v199;
          }

          else if (v77[6])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v394, 256, v196, v197);
          }

          else
          {
            v198 = 0;
            v396 = 0u;
            v397 = 0u;
            v394 = 0u;
            v395 = 0u;
            v410 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
            v442 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v215 = v196 + v198;
          v216 = v77[7];
          if (v216 == 255)
          {
            v220 = *(v215 + 16);
            v221 = *(v215 + 32);
            v222 = *(v215 + 48);
            v223 = *(v215 + 96);
            v224 = *(v215 + 112);
            v225 = *(v215 + 64);
            v226 = *(v215 + 128);
            v227 = *(v215 + 144);
            v228 = *(v215 + 80);
            v229 = *(v215 + 192);
            v230 = *(v215 + 208);
            v231 = *(v215 + 224);
            v232 = *(v215 + 240);
            v233 = *(v215 + 160);
            v234 = *(v215 + 176);
            v398 = *v215;
            v399 = v220;
            v400 = v225;
            v401 = v228;
            v414 = v221;
            v415 = v222;
            v416 = v223;
            v417 = v224;
            v430 = v226;
            v431 = v227;
            v432 = v229;
            v433 = v230;
            v217 = v294;
            v218 = v295;
            v446 = v233;
            v447 = v234;
            v448 = v231;
            v449 = v232;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          else if (v216 == 7)
          {
            v219 = vld1q_dup_f64(v215);
            v398 = v219;
            v399 = v219;
            v400 = v219;
            v401 = v219;
            v414 = v219;
            v415 = v219;
            v416 = v219;
            v417 = v219;
            v430 = v219;
            v431 = v219;
            v432 = v219;
            v433 = v219;
            v446 = v219;
            v447 = v219;
            v448 = v219;
            v217 = v294;
            v218 = v295;
            v449 = v219;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 256, v215, v216);
            v218 = v315;
            v82 = v316;
            v217 = v317;
            if (!v317)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v446 = 0u;
            v447 = 0u;
            v217 = v294;
            v218 = v295;
            v448 = 0u;
            v449 = 0u;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          v235 = v318;
          if (v318)
          {
            v236 = 0;
            v237 = v218;
            v238 = v218 << 8;
            v239 = 16 * v82;
            v240 = &v322 + v238 + v239;
            v241 = v313;
            v242 = v314;
            v243 = 16 * v318;
            v244 = &__dst[256 * v217 + 1792 + 256 * v237 + v243 + v239];
            if (16 * v318)
            {
              v245 = (16 * v318 - 1) >> 32 == 0;
            }

            else
            {
              v245 = 0;
            }

            v246 = !v245;
            v248 = v240 < v313 + v314 * (v217 - 1) + 16 * v318 && v313 < v244;
            v249 = v243 & 0x1FFFFFFE0;
            v250 = v246 | (v314 < 0) | v248;
            v251 = &v323 + v238 + v239;
            v252 = (v313 + 16);
            v253 = v240;
            v254 = v313;
            do
            {
              v255 = (v241 + v236 * v242);
              v256 = &v240[256 * v236];
              if (v250)
              {
                v257 = 0;
              }

              else
              {
                if (v235 == 1)
                {
                  v261 = 0;
LABEL_167:
                  v262 = -16 * v235 + v261;
                  v263 = (v254 + v261);
                  v264 = &v253[v261];
                  do
                  {
                    v265 = *v263++;
                    *v264 = v265;
                    v264 += 16;
                    v262 += 16;
                  }

                  while (v262);
                  goto LABEL_159;
                }

                v266 = v252;
                v267 = v251;
                v268 = v243 & 0x1FFFFFFE0;
                do
                {
                  v269 = *v266;
                  *(v267 - 1) = *(v266 - 1);
                  *v267 = v269;
                  v267 += 2;
                  v266 += 2;
                  v268 -= 32;
                }

                while (v268);
                if (v243 == v249)
                {
                  goto LABEL_159;
                }

                v261 = v243 & 0x1FFFFFFE0;
                if (v235)
                {
                  goto LABEL_167;
                }

                v255 += v249;
                v256 += v249;
                v257 = v243 & 0xFFFFFFE0;
              }

              v258 = v257 + 1;
              do
              {
                v259 = *v255++;
                *v256++ = v259;
              }

              while (v243 > v258++);
LABEL_159:
              ++v236;
              v251 += 256;
              v252 = (v252 + v242);
              v254 += v242;
              v253 += 256;
            }

            while (v236 != v217);
          }

LABEL_175:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v322, 256, v311, v312, v319, v320);
LABEL_176:
          if (v309)
          {
            memcpy(v308, v79, 0x800uLL);
          }

          v29 = v42++ == v297 >> 4;
          result = v306;
        }

        while (!v29);
        v29 = v25++ == v289;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v288 = v23;
  v24 = v12;
  v450 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v305 = v14;
  v25 = v14 >> 3;
  v287 = v14 + a10 - 1;
  v289 = v287 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v306 = v24;
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
  v309 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v298 = result;
  if (v25 <= v289)
  {
    v297 = v16 + a9 - 1;
    v286 = v16 >> 4;
    if (v16 >> 4 <= v297 >> 4)
    {
      result = v24;
      v307 = (v20 - 1) >> 4;
      v283 = v20 - 1;
      v290 = (v20 - 1) & 0xF;
      v284 = (v18 - 1) & 7;
      v285 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v293 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v292 = v35;
      v282 = 8 * v27 * v26;
      v296 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v305)
        {
          v37 = v305;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v287 < v36)
        {
          v36 = v287;
        }

        v304 = 8 * v25;
        v295 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v284;
        v294 = v39;
        v41 = v39 != 8;
        v42 = v286;
        v43 = v284 + 1;
        if (v25 != v285)
        {
          v43 = 8;
          v40 = v41;
        }

        v291 = v40;
        v302 = v288 + (v37 - v305) * a11;
        v303 = v43;
        v301 = v43;
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

          if (v297 < v45)
          {
            v45 = v297;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v307)
          {
            v49 = v290 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v304 >= v305 && v44 >= v16)
          {
            v51 = v47 != v290;
            if (v42 != v307)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v291;
          }

          if (v298)
          {
            v72 = 0;
            v73 = v282 >> (*(result + 57) != 0);
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
                v76 = 8;
                v72 = 16;
              }
            }

            v270 = (v72 >> 4) - 1;
            if (v74)
            {
              v271 = 0;
            }

            else
            {
              v271 = 32 - __clz(~(-1 << -__clz(v270)));
            }

            v272 = (v76 >> 3) - 1;
            if (v75)
            {
              v273 = 0;
              if (v271)
              {
                goto LABEL_197;
              }
            }

            else
            {
              v273 = 32 - __clz(~(-1 << -__clz(v272)));
              if (v273 | v271)
              {
LABEL_197:
                v274 = 0;
                v275 = 0;
                v276 = v42 & v270;
                v277 = v25 & v272;
                v278 = v273 != 0;
                v279 = v271 != 0;
                v280 = 1;
                do
                {
                  --v273;
                  if (v278)
                  {
                    v275 |= (v280 & v277) << v274++;
                  }

                  else
                  {
                    v273 = 0;
                  }

                  --v271;
                  if (v279)
                  {
                    v275 |= (v280 & v276) << v274++;
                  }

                  else
                  {
                    v271 = 0;
                  }

                  v280 *= 2;
                  --v274;
                  v279 = v271 != 0;
                  v278 = v273 != 0;
                }

                while (v271 | v273);
                v281 = v275 << 11;
                result = v306;
                goto LABEL_209;
              }
            }

            v281 = 0;
LABEL_209:
            v59 = v281 + ((v44 / v72 + v304 / v76 * ((v72 + v283) / v72)) << 14);
            goto LABEL_52;
          }

          if (v293)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v292.i8[0];
            v56 = v292.i8[4];
            v57 = v293.i32[0];
            v58 = v293.i32[1];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
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
          v77 = (v300 + v71);
          v78 = (v302 + 16 * (v46 - v16));
          v308 = (v299 + v59);
          if (v309)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 0x10u) | (v301 < 8)))
            {
              goto LABEL_84;
            }

            v80 = (v300 + v71);
            v81 = v48;
            memcpy(__dst, (v299 + v59), sizeof(__dst));
            v44 = 16 * v42;
            v48 = v81;
            v77 = v80;
            result = v306;
          }

          else
          {
            v79 = (v299 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v301 < 8)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v303);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v311 = v79;
          v319 = v49;
          v320 = v303;
          v315 = v295;
          v316 = v82;
          v312 = v77;
          v313 = v78;
          v314 = a11;
          v317 = v294;
          v318 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v296;
            goto LABEL_176;
          }

          v83 = *v77;
          v16 = v296;
          if (v83 == 255)
          {
            v86 = *(v79 + 1);
            v87 = *(v79 + 2);
            v88 = *(v79 + 3);
            v89 = *(v79 + 6);
            v90 = *(v79 + 7);
            v91 = *(v79 + 8);
            v92 = *(v79 + 9);
            v93 = *(v79 + 11);
            v94 = *(v79 + 4);
            v95 = *(v79 + 12);
            v96 = *(v79 + 13);
            v97 = *(v79 + 14);
            v98 = *(v79 + 15);
            v99 = *(v79 + 5);
            v100 = *(v79 + 10);
            v322 = *v79;
            v323 = v86;
            v324 = v94;
            v325 = v99;
            v338 = v87;
            v339 = v88;
            v340 = v89;
            v341 = v90;
            v354 = v91;
            v355 = v92;
            v356 = v95;
            v357 = v96;
            v84 = 256;
            v370 = v100;
            v371 = v93;
            v372 = v97;
            v373 = v98;
          }

          else if (v83 == 7)
          {
            v85 = vld1q_dup_f64(v79);
            v322 = v85;
            v323 = v85;
            v324 = v85;
            v325 = v85;
            v338 = v85;
            v339 = v85;
            v340 = v85;
            v341 = v85;
            v354 = v85;
            v355 = v85;
            v356 = v85;
            v357 = v85;
            v370 = v85;
            v371 = v85;
            v84 = 8;
            v372 = v85;
            v373 = v85;
          }

          else if (*v77)
          {
            v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 256, v79, v83);
          }

          else
          {
            v84 = 0;
            v325 = 0u;
            v324 = 0u;
            v323 = 0u;
            v322 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
          }

          v101 = v79 + v84;
          v102 = v77[1];
          if (v102 == 255)
          {
            v105 = *(v101 + 16);
            v106 = *(v101 + 32);
            v107 = *(v101 + 48);
            v108 = *(v101 + 96);
            v109 = *(v101 + 112);
            v110 = *(v101 + 128);
            v111 = *(v101 + 144);
            v112 = *(v101 + 176);
            v113 = *(v101 + 64);
            v114 = *(v101 + 192);
            v115 = *(v101 + 208);
            v116 = *(v101 + 224);
            v117 = *(v101 + 240);
            v118 = *(v101 + 80);
            v119 = *(v101 + 160);
            v326 = *v101;
            v327 = v105;
            v328 = v113;
            v329 = v118;
            v342 = v106;
            v343 = v107;
            v344 = v108;
            v345 = v109;
            v358 = v110;
            v359 = v111;
            v360 = v114;
            v361 = v115;
            v103 = 256;
            v374 = v119;
            v375 = v112;
            v376 = v116;
            v377 = v117;
          }

          else if (v102 == 7)
          {
            v104 = vld1q_dup_f64(v101);
            v326 = v104;
            v327 = v104;
            v328 = v104;
            v329 = v104;
            v342 = v104;
            v343 = v104;
            v344 = v104;
            v345 = v104;
            v358 = v104;
            v359 = v104;
            v360 = v104;
            v361 = v104;
            v374 = v104;
            v375 = v104;
            v103 = 8;
            v376 = v104;
            v377 = v104;
          }

          else if (v77[1])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v326, 256, v101, v102);
          }

          else
          {
            v103 = 0;
            v328 = 0u;
            v329 = 0u;
            v326 = 0u;
            v327 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
          }

          v120 = v101 + v103;
          v121 = v77[2];
          if (v121 == 255)
          {
            v124 = *(v120 + 16);
            v125 = *(v120 + 32);
            v126 = *(v120 + 48);
            v127 = *(v120 + 96);
            v128 = *(v120 + 112);
            v129 = *(v120 + 128);
            v130 = *(v120 + 144);
            v131 = *(v120 + 176);
            v132 = *(v120 + 64);
            v133 = *(v120 + 192);
            v134 = *(v120 + 208);
            v135 = *(v120 + 224);
            v136 = *(v120 + 240);
            v137 = *(v120 + 80);
            v138 = *(v120 + 160);
            v386 = *v120;
            v387 = v124;
            v388 = v132;
            v389 = v137;
            v402 = v125;
            v403 = v126;
            v404 = v127;
            v405 = v128;
            v418 = v129;
            v419 = v130;
            v420 = v133;
            v421 = v134;
            v122 = 256;
            v434 = v138;
            v435 = v131;
            v436 = v135;
            v437 = v136;
          }

          else if (v121 == 7)
          {
            v123 = vld1q_dup_f64(v120);
            v386 = v123;
            v387 = v123;
            v388 = v123;
            v389 = v123;
            v402 = v123;
            v403 = v123;
            v404 = v123;
            v405 = v123;
            v418 = v123;
            v419 = v123;
            v420 = v123;
            v421 = v123;
            v434 = v123;
            v435 = v123;
            v436 = v123;
            v122 = 8;
            v437 = v123;
          }

          else if (v77[2])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 256, v120, v121);
          }

          else
          {
            v122 = 0;
            v388 = 0u;
            v389 = 0u;
            v386 = 0u;
            v387 = 0u;
            v402 = 0u;
            v403 = 0u;
            v404 = 0u;
            v405 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v434 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
          }

          v139 = v120 + v122;
          v140 = v77[3];
          if (v140 == 255)
          {
            v143 = *(v139 + 16);
            v144 = *(v139 + 32);
            v145 = *(v139 + 48);
            v146 = *(v139 + 96);
            v147 = *(v139 + 112);
            v148 = *(v139 + 128);
            v149 = *(v139 + 144);
            v150 = *(v139 + 176);
            v151 = *(v139 + 64);
            v152 = *(v139 + 192);
            v153 = *(v139 + 208);
            v154 = *(v139 + 224);
            v155 = *(v139 + 240);
            v156 = *(v139 + 80);
            v157 = *(v139 + 160);
            v390 = *v139;
            v391 = v143;
            v392 = v151;
            v393 = v156;
            v406 = v144;
            v407 = v145;
            v408 = v146;
            v409 = v147;
            v422 = v148;
            v423 = v149;
            v424 = v152;
            v425 = v153;
            v141 = 256;
            v438 = v157;
            v439 = v150;
            v440 = v154;
            v441 = v155;
          }

          else if (v140 == 7)
          {
            v142 = vld1q_dup_f64(v139);
            v390 = v142;
            v391 = v142;
            v392 = v142;
            v393 = v142;
            v406 = v142;
            v407 = v142;
            v408 = v142;
            v409 = v142;
            v422 = v142;
            v423 = v142;
            v424 = v142;
            v425 = v142;
            v438 = v142;
            v439 = v142;
            v440 = v142;
            v141 = 8;
            v441 = v142;
          }

          else if (v77[3])
          {
            v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v390, 256, v139, v140);
          }

          else
          {
            v141 = 0;
            v392 = 0u;
            v393 = 0u;
            v390 = 0u;
            v391 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
          }

          v158 = v139 + v141;
          v159 = v77[4];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 96);
            v166 = *(v158 + 112);
            v167 = *(v158 + 128);
            v168 = *(v158 + 144);
            v169 = *(v158 + 176);
            v170 = *(v158 + 64);
            v171 = *(v158 + 192);
            v172 = *(v158 + 208);
            v173 = *(v158 + 224);
            v174 = *(v158 + 240);
            v175 = *(v158 + 80);
            v176 = *(v158 + 160);
            v330 = *v158;
            v331 = v162;
            v332 = v170;
            v333 = v175;
            v346 = v163;
            v347 = v164;
            v348 = v165;
            v349 = v166;
            v362 = v167;
            v363 = v168;
            v364 = v171;
            v365 = v172;
            v160 = 256;
            v378 = v176;
            v379 = v169;
            v380 = v173;
            v381 = v174;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v330 = v161;
            v331 = v161;
            v332 = v161;
            v333 = v161;
            v346 = v161;
            v347 = v161;
            v348 = v161;
            v349 = v161;
            v362 = v161;
            v363 = v161;
            v364 = v161;
            v365 = v161;
            v378 = v161;
            v379 = v161;
            v160 = 8;
            v380 = v161;
            v381 = v161;
          }

          else if (v77[4])
          {
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v330, 256, v158, v159);
          }

          else
          {
            v160 = 0;
            v332 = 0u;
            v333 = 0u;
            v330 = 0u;
            v331 = 0u;
            v346 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
          }

          v177 = v158 + v160;
          v178 = v77[5];
          if (v178 == 255)
          {
            v181 = *(v177 + 16);
            v182 = *(v177 + 32);
            v183 = *(v177 + 48);
            v184 = *(v177 + 96);
            v185 = *(v177 + 112);
            v186 = *(v177 + 128);
            v187 = *(v177 + 144);
            v188 = *(v177 + 176);
            v189 = *(v177 + 64);
            v190 = *(v177 + 192);
            v191 = *(v177 + 208);
            v192 = *(v177 + 224);
            v193 = *(v177 + 240);
            v194 = *(v177 + 80);
            v195 = *(v177 + 160);
            v334 = *v177;
            v335 = v181;
            v336 = v189;
            v337 = v194;
            v350 = v182;
            v351 = v183;
            v352 = v184;
            v353 = v185;
            v366 = v186;
            v367 = v187;
            v368 = v190;
            v369 = v191;
            v179 = 256;
            v382 = v195;
            v383 = v188;
            v384 = v192;
            v385 = v193;
          }

          else if (v178 == 7)
          {
            v180 = vld1q_dup_f64(v177);
            v334 = v180;
            v335 = v180;
            v336 = v180;
            v337 = v180;
            v350 = v180;
            v351 = v180;
            v352 = v180;
            v353 = v180;
            v366 = v180;
            v367 = v180;
            v368 = v180;
            v369 = v180;
            v382 = v180;
            v383 = v180;
            v179 = 8;
            v384 = v180;
            v385 = v180;
          }

          else if (v77[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 256, v177, v178);
          }

          else
          {
            v179 = 0;
            v336 = 0u;
            v337 = 0u;
            v334 = 0u;
            v335 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
          }

          v196 = v177 + v179;
          v197 = v77[6];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 32);
            v202 = *(v196 + 48);
            v203 = *(v196 + 96);
            v204 = *(v196 + 112);
            v205 = *(v196 + 128);
            v206 = *(v196 + 144);
            v207 = *(v196 + 176);
            v208 = *(v196 + 64);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 160);
            v394 = *v196;
            v395 = v200;
            v396 = v208;
            v397 = v213;
            v410 = v201;
            v411 = v202;
            v412 = v203;
            v413 = v204;
            v426 = v205;
            v427 = v206;
            v428 = v209;
            v429 = v210;
            v198 = 256;
            v442 = v214;
            v443 = v207;
            v444 = v211;
            v445 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v394 = v199;
            v395 = v199;
            v396 = v199;
            v397 = v199;
            v410 = v199;
            v411 = v199;
            v412 = v199;
            v413 = v199;
            v426 = v199;
            v427 = v199;
            v428 = v199;
            v429 = v199;
            v442 = v199;
            v443 = v199;
            v444 = v199;
            v198 = 8;
            v445 = v199;
          }

          else if (v77[6])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v394, 256, v196, v197);
          }

          else
          {
            v198 = 0;
            v396 = 0u;
            v397 = 0u;
            v394 = 0u;
            v395 = 0u;
            v410 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
            v442 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
          }

          v215 = v196 + v198;
          v216 = v77[7];
          if (v216 == 255)
          {
            v220 = *(v215 + 16);
            v221 = *(v215 + 32);
            v222 = *(v215 + 48);
            v223 = *(v215 + 96);
            v224 = *(v215 + 112);
            v225 = *(v215 + 64);
            v226 = *(v215 + 128);
            v227 = *(v215 + 144);
            v228 = *(v215 + 80);
            v229 = *(v215 + 192);
            v230 = *(v215 + 208);
            v231 = *(v215 + 224);
            v232 = *(v215 + 240);
            v233 = *(v215 + 160);
            v234 = *(v215 + 176);
            v398 = *v215;
            v399 = v220;
            v400 = v225;
            v401 = v228;
            v414 = v221;
            v415 = v222;
            v416 = v223;
            v417 = v224;
            v430 = v226;
            v431 = v227;
            v432 = v229;
            v433 = v230;
            v217 = v294;
            v218 = v295;
            v446 = v233;
            v447 = v234;
            v448 = v231;
            v449 = v232;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          else if (v216 == 7)
          {
            v219 = vld1q_dup_f64(v215);
            v398 = v219;
            v399 = v219;
            v400 = v219;
            v401 = v219;
            v414 = v219;
            v415 = v219;
            v416 = v219;
            v417 = v219;
            v430 = v219;
            v431 = v219;
            v432 = v219;
            v433 = v219;
            v446 = v219;
            v447 = v219;
            v448 = v219;
            v217 = v294;
            v218 = v295;
            v449 = v219;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 256, v215, v216);
            v218 = v315;
            v82 = v316;
            v217 = v317;
            if (!v317)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v446 = 0u;
            v447 = 0u;
            v217 = v294;
            v218 = v295;
            v448 = 0u;
            v449 = 0u;
            if (!v294)
            {
              goto LABEL_175;
            }
          }

          v235 = v318;
          if (v318)
          {
            v236 = 0;
            v237 = v218;
            v238 = v218 << 8;
            v239 = 16 * v82;
            v240 = &v322 + v238 + v239;
            v241 = v313;
            v242 = v314;
            v243 = 16 * v318;
            v244 = &__dst[256 * v217 + 1792 + 256 * v237 + v243 + v239];
            if (16 * v318)
            {
              v245 = (16 * v318 - 1) >> 32 == 0;
            }

            else
            {
              v245 = 0;
            }

            v246 = !v245;
            v248 = v240 < &v313[v318] + v314 * (v217 - 1) && v313 < v244;
            v249 = v243 & 0x1FFFFFFE0;
            v250 = v246 | (v314 < 0) | v248;
            v251 = &v323 + v238 + v239;
            v252 = v313 + 1;
            v253 = v240;
            v254 = v313;
            do
            {
              v255 = v241 + v236 * v242;
              v256 = &v240[256 * v236];
              if (v250)
              {
                v257 = 0;
              }

              else
              {
                if (v235 == 1)
                {
                  v261 = 0;
LABEL_167:
                  v262 = -16 * v235 + v261;
                  v263 = (v254 + v261);
                  v264 = &v253[v261];
                  do
                  {
                    v265 = *v263++;
                    *v264 = v265;
                    v264 += 16;
                    v262 += 16;
                  }

                  while (v262);
                  goto LABEL_159;
                }

                v266 = v252;
                v267 = v251;
                v268 = v243 & 0x1FFFFFFE0;
                do
                {
                  v269 = *v266;
                  *(v267 - 1) = *(v266 - 1);
                  *v267 = v269;
                  v267 += 2;
                  v266 += 2;
                  v268 -= 32;
                }

                while (v268);
                if (v243 == v249)
                {
                  goto LABEL_159;
                }

                v261 = v243 & 0x1FFFFFFE0;
                if (v235)
                {
                  goto LABEL_167;
                }

                v255 += v249;
                v256 += v249;
                v257 = v243 & 0xFFFFFFE0;
              }

              v258 = v257 + 1;
              do
              {
                v259 = *v255++;
                *v256++ = v259;
              }

              while (v243 > v258++);
LABEL_159:
              ++v236;
              v251 += 256;
              v252 = (v252 + v242);
              v254 = (v254 + v242);
              v253 += 256;
            }

            while (v236 != v217);
          }

LABEL_175:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v322, 256, v311, v312, v319, v320);
LABEL_176:
          if (v309)
          {
            memcpy(v308, v79, 0x800uLL);
          }

          v29 = v42++ == v297 >> 4;
          result = v306;
        }

        while (!v29);
        v29 = v25++ == v289;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v156 = v21;
  v157 = v22;
  v142 = v23;
  v24 = v12;
  v185 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v161 = v14;
  v144 = v14 + a10 - 1;
  v162 = v24;
  if (*(v24 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = v14 >> 3;
  v29 = v20 - 1;
  v30 = v18 - 1;
  v143 = v144 >> 3;
  v31 = (v27 & 0xD00) == 0 || v27 == 768;
  v32 = v27 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v164 = v34;
  result = v24;
  if (*(v24 + 232) == 1)
  {
    v36 = *(v24 + 273);
    v37 = *(v24 + 272);
    v38 = __clz(v29);
    if (1 << v36 >= v18 || v20 >> v37)
    {
      if (!(v18 >> v36) && 1 << v37 < v20)
      {
        if (v18 < 2)
        {
          v41 = 0;
        }

        else
        {
          v41 = __clz(~(-1 << -__clz(v30))) | 0xFFFFFFE0;
        }

        v37 += v36 + v41;
        v36 = -v41;
      }
    }

    else
    {
      v39 = 32 - __clz(~(-1 << -v38));
      v40 = v37 + v36;
      if (v20 < 2)
      {
        v39 = 0;
      }

      v36 = v40 - v39;
      v37 = v39;
    }

    if (v20 < 2)
    {
      if (v37)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v38)) < v37)
    {
LABEL_27:
      v155 = 0;
LABEL_32:
      v152 = v37 - 4;
      v147 = v36 - 3;
      v43 = -1 << *(*(v24 + 208) + 48);
      v141 = (((~v43 + v20) & v43) + ~(-1 << v37)) >> v37;
      goto LABEL_33;
    }

    if (v18 < 2)
    {
      v42 = 0;
    }

    else
    {
      v42 = 32 - __clz(~(-1 << -__clz(v30)));
    }

    v155 = v42 >= v36;
    goto LABEL_32;
  }

  v155 = 0;
  v141 = 0;
  v147 = 0;
  v152 = 0;
LABEL_33:
  if (v28 <= v143)
  {
    v154 = v16 + a9 - 1;
    v140 = v16 >> 4;
    if (v16 >> 4 <= v154 >> 4)
    {
      v163 = v29 >> 4;
      v148 = v29 & 0xF;
      v138 = v30 & 7;
      v139 = v30 >> 3;
      v137 = ~(-1 << v147);
      v44 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v45 = vcgt_u32(v44, 0x1F0000000FLL);
      v146 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v44, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v45);
      v145 = v45;
      v153 = v16;
      do
      {
        v46 = (8 * v28) | 7;
        if (8 * v28 <= v161)
        {
          v47 = v161;
        }

        else
        {
          v47 = 8 * v28;
        }

        if (v144 < v46)
        {
          v46 = v144;
        }

        v151 = v47 - 8 * v28;
        v48 = v46 - v47;
        v49 = v48 + 1;
        v50 = v48 != v138;
        v150 = v49;
        v51 = v49 != 8;
        v52 = v138 + 1;
        if (v28 != v139)
        {
          v52 = 8;
          v50 = v51;
        }

        v149 = v50;
        v53 = v140;
        v54 = v28 & v137;
        v159 = v142 + (v47 - v161) * a11;
        v160 = v52;
        v158 = v52;
        do
        {
          v55 = 16 * v53;
          v56 = 16 * (v53 + 1) - 1;
          if (16 * v53 <= v16)
          {
            v57 = v16;
          }

          else
          {
            v57 = 16 * v53;
          }

          if (v154 < v56)
          {
            v56 = v154;
          }

          v58 = v56 - v57;
          v59 = v58 + 1;
          if (v53 == v163)
          {
            v60 = (v148 + 1);
          }

          else
          {
            v60 = 16;
          }

          v61 = 1;
          if (8 * v28 >= v161 && v55 >= v16)
          {
            v62 = v58 != v148;
            if (v53 != v163)
            {
              v62 = v59 != 16;
            }

            v61 = v62 || v149;
          }

          if (v155)
          {
            if (v152 | v147)
            {
              v63 = 0;
              v64 = 0;
              v65 = v152 != 0;
              v66 = 1;
              v68 = v147 != 0;
              v67 = v147;
              v69 = v152;
              do
              {
                --v67;
                if (v68)
                {
                  v64 |= (v54 & v66) << v63++;
                }

                else
                {
                  v67 = 0;
                }

                --v69;
                if (v65)
                {
                  v64 |= (v53 & ~(-1 << v152) & v66) << v63++;
                }

                else
                {
                  v69 = 0;
                }

                v66 *= 2;
                --v63;
                v65 = v69 != 0;
                v68 = v67 != 0;
              }

              while (v69 | v67);
              v70 = v64 << 11;
            }

            else
            {
              v70 = 0;
            }

            v78 = v70 + *(result + 336) * ((v53 >> v152) + (v28 >> v147) * v141);
          }

          else if (v146)
          {
            v71 = 0;
            v72 = 0;
            v73 = 1;
            v75 = v145.i8[0];
            v74 = v145.i8[4];
            v76 = v146.i32[0];
            v77 = v146.i32[1];
            do
            {
              --v76;
              if (v75)
              {
                v72 |= (v73 & v28) << v71++;
              }

              else
              {
                v76 = 0;
              }

              --v77;
              if (v74)
              {
                v72 |= (v73 & v53) << v71++;
              }

              else
              {
                v77 = 0;
              }

              v73 *= 2;
              --v71;
              v74 = v77 != 0;
              v75 = v76 != 0;
            }

            while (v77 | v76);
            v78 = v72 << 11;
          }

          else
          {
            v78 = 0;
          }

          v79 = *(result + 128) >> (*(result + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 15;
          if (v80 < 0x20)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 4) - 1)));
          }

          v82 = *(result + 132) >> (*(result + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 7;
          if (v83 < 0x10)
          {
            v84 = 0;
            if (!v81)
            {
LABEL_104:
              v90 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 3) - 1)));
            if (!(v84 | v81))
            {
              goto LABEL_104;
            }
          }

          v85 = 0;
          v86 = 0;
          v87 = v81 != 0;
          v88 = v84 != 0;
          v89 = 1;
          do
          {
            --v81;
            if (v87)
            {
              v86 |= (v89 & v53) << v85++;
            }

            else
            {
              v81 = 0;
            }

            --v84;
            if (v88)
            {
              v86 |= (v89 & v28) << v85++;
            }

            else
            {
              v84 = 0;
            }

            v89 *= 2;
            --v85;
            v88 = v84 != 0;
            v87 = v81 != 0;
          }

          while (v84 | v81);
          v90 = 8 * v86;
LABEL_105:
          v91 = (v157 + v90);
          v92 = v159 + 16 * (v57 - v16);
          v93 = (v156 + v78);
          if (v164)
          {
            if (!(v61 & 1 | (v60 < 0x10u) | (v158 < 8)))
            {
              v97 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v92, a11, v97, v91, v60, v160, v25, v26);
LABEL_113:
              v16 = v153;
              if (v164)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v94 = v61;
            v95 = v60;
            v96 = v57;
            memcpy(__dst, v93, sizeof(__dst));
            v57 = v96;
            v97 = __dst;
            v61 = v94;
            v54 = v28 & v137;
            LOBYTE(v60) = v95;
            result = v162;
          }

          else
          {
            v97 = (v156 + v78);
            if (!(v61 & 1 | (v60 < 0x10u) | (v158 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v97;
          v174 = v60;
          v175 = v160;
          v170 = v151;
          v171 = v57 - v55;
          v167 = v91;
          v168 = v92;
          v169 = a11;
          v172 = v150;
          v173 = v59;
          if (v61)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v98 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 256, v97, *v91)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 256, v98, v91[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v181, 256, v99, v91[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v182, 256, v100, v91[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 256, v101, v91[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 256, v102, v91[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v183, 256, v103, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v184, 256, v103 + v104, v91[7]);
          v107 = v172;
          v16 = v153;
          if (v172)
          {
            v108 = v173;
            if (v173)
            {
              v109 = 0;
              v110 = v170 << 8;
              v111 = 16 * v171;
              v112 = &v177[0].i8[v110 + v111];
              v113 = v168;
              v114 = v169;
              v115 = 16 * v173;
              if (16 * v173)
              {
                v116 = (16 * v173 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v168 + v169 * (v172 - 1) + 16 * v173 && v168 < &__dst[256 * v172 + 1792 + 256 * v170 + 16 * v173 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v169 < 0) | v119;
              v122 = &v177[1].i8[v110 + v111];
              v123 = v168 + 16;
              v124 = v112;
              v125 = v168;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[256 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 == 1)
                  {
                    v131 = 0;
LABEL_138:
                    v132 = -16 * v108 + v131;
                    v133 = (v125 + v131);
                    v105 = &v124[v131];
                    do
                    {
                      v134 = *v133++;
                      *v105 = v134;
                      v105 += 16;
                      v132 += 16;
                    }

                    while (v132);
                    goto LABEL_130;
                  }

                  v105 = v123;
                  v106 = v122;
                  v135 = v115 & 0x1FFFFFFE0;
                  do
                  {
                    v136 = *v105;
                    *(v106 - 16) = *(v105 - 16);
                    *v106 = v136;
                    v106 += 32;
                    v105 += 32;
                    v135 -= 32;
                  }

                  while (v135);
                  if (v115 == v120)
                  {
                    goto LABEL_130;
                  }

                  v131 = v115 & 0x1FFFFFFE0;
                  if (v108)
                  {
                    goto LABEL_138;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                LODWORD(v105) = v128 + 1;
                do
                {
                  v129 = *v126++;
                  v106 = v129;
                  *v127++ = v129;
                  v130 = v115 > v105;
                  v105 = (v105 + 1);
                }

                while (v130);
LABEL_130:
                ++v109;
                v122 += 256;
                v123 += v114;
                v125 += v114;
                v124 += 256;
              }

              while (v109 != v107);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v177, 256, v166, v167, v174, v175, v105, v106);
          if (v164)
          {
LABEL_46:
            memcpy(v93, v97, 0x800uLL);
          }

LABEL_47:
          v31 = v53++ == v154 >> 4;
          result = v162;
        }

        while (!v31);
        v31 = v28++ == v143;
      }

      while (!v31);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v218 = v21;
  v219 = v22;
  v200 = v23;
  v24 = v12;
  v246 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v222 = v14;
  v202 = v14 + a10 - 1;
  v223 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v201 = v202 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v225 = v32;
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
      v217 = 0;
LABEL_32:
      v213 = v35 - 4;
      v206 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v199 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v217 = v40 >= v34;
    goto LABEL_32;
  }

  v217 = 0;
  v199 = 0;
  v206 = 0;
  v213 = 0;
LABEL_33:
  if (v26 <= v201)
  {
    v216 = v16 + a9 - 1;
    v198 = v16 >> 4;
    if (v16 >> 4 <= v216 >> 4)
    {
      v42 = a11;
      v224 = v27 >> 4;
      v209 = v27 & 0xF;
      v196 = v28 & 7;
      v197 = v28 >> 3;
      v195 = ~(-1 << v206);
      v43 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v44 = vcgt_u32(v43, 0x1F0000000FLL);
      v205 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v43, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v44);
      v204 = v44;
      v215 = v16;
      do
      {
        v45 = (8 * v26) | 7;
        if (8 * v26 <= v222)
        {
          v46 = v222;
        }

        else
        {
          v46 = 8 * v26;
        }

        if (v202 < v45)
        {
          v45 = v202;
        }

        v212 = v46 - 8 * v26;
        v47 = v45 - v46;
        v48 = v47 + 1;
        v49 = v47 != v196;
        v211 = v48;
        v50 = v198;
        if (v26 == v197)
        {
          v51 = v196 + 1;
        }

        else
        {
          v51 = 8;
        }

        if (v26 != v197)
        {
          v49 = v48 != 8;
        }

        v210 = v49;
        v52 = v26 & v195;
        v221 = v200 + (v46 - v222) * v42;
        v220 = v51;
        v203 = v51;
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

          if (v216 < v54)
          {
            v54 = v216;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v50 == v224)
          {
            v58 = v209 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (8 * v26 >= v222 && v53 >= v16)
          {
            v60 = v56 != v209;
            if (v50 != v224)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v210;
          }

          if (v217)
          {
            if (v213 | v206)
            {
              v61 = 0;
              v62 = 0;
              v63 = v213 != 0;
              v64 = 1;
              v66 = v206 != 0;
              v65 = v206;
              v67 = v213;
              do
              {
                --v65;
                if (v66)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                --v67;
                if (v63)
                {
                  v62 |= (v50 & ~(-1 << v213) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v67 != 0;
                v66 = v65 != 0;
              }

              while (v67 | v65);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v50 >> v213) + (v26 >> v206) * v199);
          }

          else if (v205)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v73 = v204.i8[0];
            v72 = v204.i8[4];
            v74 = v205.i32[0];
            v75 = v205.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v50) << v69++;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
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
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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
          v89 = (v219 + v88);
          v90 = v221 + 16 * (v55 - v16);
          v91 = (v218 + v76);
          if (v225)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v220 < 8)))
            {
              v95 = __dst;
LABEL_114:
              v97 = &byte_29D2F30D1;
              v98 = 16;
              v99 = v95;
              do
              {
                v123 = *v97;
                v124 = *(v97 - 1);
                if (v58 <= 4 * v124 || 4 * v123 >= v51)
                {
                  v122 = 0;
                }

                else
                {
                  v100 = (v90 + 4 * a11 * v123 + (v124 << 6));
                  v101 = (v100 + v42);
                  v103 = *v100;
                  v104 = v100[1];
                  v105 = v100[2];
                  v106 = v100[3];
                  v102 = (v100 + 2 * a11);
                  v107 = v105;
                  v108 = v106;
                  v110 = *v102;
                  v111 = v102[1];
                  v112 = v102[2];
                  v113 = v102[3];
                  v109 = (v102 + v42);
                  v114 = v101[2];
                  v115 = v101[3];
                  v116 = *v109;
                  v117 = v109[1];
                  v118 = *v101;
                  v119 = v101[1];
                  v120 = v109[2];
                  v121 = v109[3];
                  *v99 = v103;
                  v99[1] = v104;
                  v99[2] = v118;
                  v99[3] = v119;
                  v99[4] = v107;
                  v99[5] = v108;
                  v99[6] = v114;
                  v99[7] = v115;
                  v99[8] = v110;
                  v99[9] = v111;
                  v99[10] = v116;
                  v99[11] = v117;
                  v99[12] = v112;
                  v99[13] = v113;
                  v99[14] = v120;
                  v99[15] = v121;
                  v99 += 16;
                  v122 = -1;
                }

                *v89++ = v122;
                v97 += 2;
                v98 -= 2;
              }

              while (v98);
              v16 = v215;
              goto LABEL_123;
            }

            v92 = (v218 + v76);
            v207 = v57;
            v93 = v42;
            v94 = v59;
            memcpy(__dst, v91, sizeof(__dst));
            v53 = 16 * v50;
            v59 = v94;
            v42 = v93;
            v51 = v203;
            v52 = v26 & v195;
            v57 = v207;
            v95 = __dst;
            v91 = v92;
            result = v223;
          }

          else
          {
            v95 = (v218 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v220 < 8)))
            {
              goto LABEL_114;
            }
          }

          v214 = v91;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v227 = v95;
          v235 = v58;
          v236 = v51;
          v231 = v212;
          v232 = v55 - v53;
          v228 = v89;
          v229 = v90;
          v230 = v42;
          v233 = v211;
          v234 = v57;
          if (v59)
          {
            v96 = v95;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v95 = v96;
            result = v223;
            v16 = v215;
            v91 = v214;
            goto LABEL_123;
          }

          v208 = v95;
          v126 = &v95[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 256, v95, *v89)];
          v127 = v126 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 256, v126, v89[1]);
          v128 = v127 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 256, v127, v89[2]);
          v129 = v128 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 256, v128, v89[3]);
          v130 = v129 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 256, v129, v89[4]);
          v131 = v130 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 256, v130, v89[5]);
          v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 256, v131, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v245, 256, v131 + v132, v89[7]);
          v133 = v233;
          if (v233)
          {
            v134 = v234;
            if (v234)
            {
              v135 = 0;
              v136 = v231 << 8;
              v137 = 16 * v232;
              v138 = &v238[0].i8[v136 + v137];
              v139 = v229;
              v140 = v230;
              v141 = 16 * v234;
              if (16 * v234)
              {
                v142 = (16 * v234 - 1) >> 32 == 0;
              }

              else
              {
                v142 = 0;
              }

              v143 = !v142;
              v145 = v138 < v229 + v230 * (v233 - 1) + 16 * v234 && v229 < &__dst[256 * v233 + 1792 + 256 * v231 + 16 * v234 + v137];
              v146 = v141 & 0x1FFFFFFE0;
              v147 = v143 | (v230 < 0) | v145;
              v148 = &v238[1].i8[v136 + v137];
              v149 = (v229 + 16);
              v150 = v138;
              v151 = v229;
              do
              {
                v152 = (v139 + v135 * v140);
                v153 = &v138[256 * v135];
                if (v147)
                {
                  v154 = 0;
                }

                else
                {
                  if (v134 == 1)
                  {
                    v158 = 0;
LABEL_148:
                    v159 = -16 * v134 + v158;
                    v160 = (v151 + v158);
                    v161 = &v150[v158];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 16;
                      v159 += 16;
                    }

                    while (v159);
                    goto LABEL_140;
                  }

                  v163 = v149;
                  v164 = v148;
                  v165 = v141 & 0x1FFFFFFE0;
                  do
                  {
                    v166 = *v163;
                    *(v164 - 1) = *(v163 - 1);
                    *v164 = v166;
                    v164 += 32;
                    v163 += 2;
                    v165 -= 32;
                  }

                  while (v165);
                  if (v141 == v146)
                  {
                    goto LABEL_140;
                  }

                  v158 = v141 & 0x1FFFFFFE0;
                  if (v134)
                  {
                    goto LABEL_148;
                  }

                  v152 += v146;
                  v153 += v146;
                  v154 = v141 & 0xFFFFFFE0;
                }

                v155 = v154 + 1;
                do
                {
                  v156 = *v152++;
                  *v153++ = v156;
                }

                while (v141 > v155++);
LABEL_140:
                ++v135;
                v148 += 256;
                v149 = (v149 + v140);
                v151 += v140;
                v150 += 256;
              }

              while (v135 != v133);
            }
          }

          v167 = v227;
          v168 = v228;
          v169 = v235;
          v170 = &byte_29D2F30D1;
          v171 = 16;
          v172 = v236;
          v16 = v215;
          result = v223;
          v91 = v214;
          v95 = v208;
          do
          {
            v192 = *v170;
            v193 = *(v170 - 1);
            if (v169 <= 4 * v193 || 4 * v192 >= v172)
            {
              v191 = 0;
            }

            else
            {
              v173 = &v238[64 * v192 + 4 * v193];
              v174 = *v173;
              v175 = v173[1];
              v176 = v173[16];
              v177 = v173[17];
              v178 = v173[2];
              v179 = v173[3];
              v180 = v173[18];
              v181 = v173[32];
              v182 = v173[33];
              v183 = v173[34];
              v184 = v173[35];
              v185 = v173[19];
              v173 += 48;
              v186 = *v173;
              v187 = v173[1];
              v188 = v173[2];
              v189 = v173[3];
              *v167 = v174;
              v167[1] = v175;
              v167[2] = v176;
              v167[3] = v177;
              v167[4] = v178;
              v167[5] = v179;
              v167[6] = v180;
              v167[7] = v185;
              v167[8] = v181;
              v167[9] = v182;
              v167[10] = v186;
              v167[11] = v187;
              v190 = v167 + 12;
              v167 += 16;
              v191 = -1;
              *v190 = v183;
              v190[1] = v184;
              v190[2] = v188;
              v190[3] = v189;
            }

            *v168++ = v191;
            v170 += 2;
            v171 -= 2;
          }

          while (v171);
LABEL_123:
          if (v225)
          {
            memcpy(v91, v95, 0x800uLL);
            result = v223;
          }

          v29 = v50++ == v216 >> 4;
        }

        while (!v29);
        v29 = v26++ == v201;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
  v25 = v14 >> 3;
  v139 = v14 + a10 - 1;
  v141 = v139 >> 3;
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
      v136 = (v18 - 1) & 7;
      v137 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v147 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v146 = v35;
      v134 = 8 * v27 * v26;
      v148 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v157)
        {
          v37 = v157;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v139 < v36)
        {
          v36 = v139;
        }

        v156 = 8 * v25;
        v145 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v136;
        v144 = v39;
        v41 = v39 != 8;
        v42 = v138;
        v43 = v136 + 1;
        if (v25 != v137)
        {
          v43 = 8;
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
            v46 = v44;
          }

          if (v149 < v45)
          {
            v45 = v149;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v159)
          {
            v49 = (v142 + 1);
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

            v50 = v51 | v143;
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
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
                v76 = 8;
                v72 = 16;
              }
            }

            v122 = (v72 >> 4) - 1;
            if (v74)
            {
              v123 = 0;
            }

            else
            {
              v123 = 32 - __clz(~(-1 << -__clz(v122)));
            }

            v124 = (v76 >> 3) - 1;
            if (v75)
            {
              v125 = 0;
              if (v123)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v125 = 32 - __clz(~(-1 << -__clz(v124)));
              if (v125 | v123)
              {
LABEL_141:
                v126 = 0;
                v127 = 0;
                v128 = v42 & v122;
                v129 = v25 & v124;
                v130 = v125 != 0;
                v131 = v123 != 0;
                v132 = 1;
                do
                {
                  --v125;
                  if (v130)
                  {
                    v127 |= (v132 & v129) << v126++;
                  }

                  else
                  {
                    v125 = 0;
                  }

                  --v123;
                  if (v131)
                  {
                    v127 |= (v132 & v128) << v126++;
                  }

                  else
                  {
                    v123 = 0;
                  }

                  v132 *= 2;
                  --v126;
                  v131 = v123 != 0;
                  v130 = v125 != 0;
                }

                while (v123 | v125);
                v133 = v127 << 11;
                result = v158;
                goto LABEL_153;
              }
            }

            v133 = 0;
LABEL_153:
            v59 = v133 + ((v44 / v72 + v156 / v76 * ((v72 + v135) / v72)) << 14);
            goto LABEL_53;
          }

          if (v147)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v146.i8[0];
            v55 = v146.i8[4];
            v57 = v147.i32[0];
            v58 = v147.i32[1];
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

          v64 = v63 + 7;
          if (v64 < 0x10)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
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
          v78 = v154 + 16 * (v46 - v16);
          v79 = (v151 + v59);
          if (v160)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v153 < 8)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v155, v50, v46);
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
            LODWORD(v46) = v81;
            v44 = 16 * v42;
            v82 = __dst;
            LOBYTE(v50) = v80;
            result = v158;
          }

          else
          {
            v82 = (v151 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v153 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v83 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 256, v82, *v77)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 256, v88 + v89, v77[7]);
          v92 = v168;
          v16 = v148;
          if (v168)
          {
            v93 = v169;
            if (v169)
            {
              v94 = 0;
              v95 = v166 << 8;
              v96 = 16 * v167;
              v97 = &v173[0].i8[v95 + v96];
              v98 = v164;
              v99 = v165;
              v100 = 16 * v169;
              if (16 * v169)
              {
                v101 = (16 * v169 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v164 + v165 * (v168 - 1) + 16 * v169 && v164 < &__dst[256 * v168 + 1792 + 256 * v166 + 16 * v169 + v96];
              v105 = v100 & 0x1FFFFFFE0;
              v106 = v102 | (v165 < 0) | v104;
              v107 = &v173[1].i8[v95 + v96];
              v108 = v164 + 16;
              v109 = v97;
              v110 = v164;
              do
              {
                v111 = (v98 + v94 * v99);
                v112 = &v97[256 * v94];
                if (v106)
                {
                  v113 = 0;
                }

                else
                {
                  if (v93 == 1)
                  {
                    v116 = 0;
LABEL_112:
                    v117 = -16 * v93 + v116;
                    v118 = (v110 + v116);
                    v90 = &v109[v116];
                    do
                    {
                      v119 = *v118++;
                      *v90 = v119;
                      v90 += 16;
                      v117 += 16;
                    }

                    while (v117);
                    goto LABEL_104;
                  }

                  v90 = v108;
                  v91 = v107;
                  v120 = v100 & 0x1FFFFFFE0;
                  do
                  {
                    v121 = *v90;
                    *(v91 - 16) = *(v90 - 16);
                    *v91 = v121;
                    v91 += 32;
                    v90 += 32;
                    v120 -= 32;
                  }

                  while (v120);
                  if (v100 == v105)
                  {
                    goto LABEL_104;
                  }

                  v116 = v100 & 0x1FFFFFFE0;
                  if (v93)
                  {
                    goto LABEL_112;
                  }

                  v111 += v105;
                  v112 += v105;
                  v113 = v100 & 0xFFFFFFE0;
                }

                LODWORD(v90) = v113 + 1;
                do
                {
                  v114 = *v111++;
                  v91 = v114;
                  *v112++ = v114;
                  v115 = v100 > v90;
                  v90 = (v90 + 1);
                }

                while (v115);
LABEL_104:
                ++v94;
                v107 += 256;
                v108 += v99;
                v110 += v99;
                v109 += 256;
              }

              while (v94 != v92);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v173, 256, v162, v163, v170, v171, v90, v91);
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