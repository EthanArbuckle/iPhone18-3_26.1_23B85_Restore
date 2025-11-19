uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
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
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
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

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = v215 + 2 * (v47 - a7);
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = *(v83 + 2);
            v93 = *(v83 + 3);
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234.i8[v160 + v161];
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + v226 * (v152 - 1) + 2 * v230 && v225 < &__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161;
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = (v225 + 16);
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = (v163 + v159 * v164);
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = *(v182 - 1);
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 += v164;
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
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
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
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

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = (v215 + 2 * (v47 - a7));
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = v83[1];
            v92 = v83[2];
            v93 = v83[3];
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83->i16);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83->i64 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234 + v160 + v161;
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + 2 * v230 + v226 * (v152 - 1) && v225 < (&__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161);
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = v225 + 1;
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = v163 + v159 * v164;
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = v182[-1];
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 = (v177 + v164);
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
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
          v70 = a7;
          v71 = v201 + 2 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221.i8[v139 + v140];
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + v213 * (v131 - 1) + 2 * v217 && v212 < &__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140;
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = (v212 + 16);
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = (v142 + v138 * v143);
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = *(v161 - 1);
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 += v143;
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
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
          v70 = a7;
          v71 = (v201 + 2 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72->i16);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72->i64 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221 + v139 + v140;
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + 2 * v217 + v213 * (v131 - 1) && v212 < (&__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140);
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = v212 + 1;
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = v142 + v138 * v143;
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = v161[-1];
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 = (v156 + v143);
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
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
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
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

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = v215 + 2 * (v47 - a7);
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = *(v83 + 2);
            v93 = *(v83 + 3);
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234.i8[v160 + v161];
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + v226 * (v152 - 1) + 2 * v230 && v225 < &__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161;
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = (v225 + 16);
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = (v163 + v159 * v164);
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = *(v182 - 1);
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 += v164;
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
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
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
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

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = (v215 + 2 * (v47 - a7));
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = v83[1];
            v92 = v83[2];
            v93 = v83[3];
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83->i16);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83->i64 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234 + v160 + v161;
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + 2 * v230 + v226 * (v152 - 1) && v225 < (&__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161);
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = v225 + 1;
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = v163 + v159 * v164;
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = v182[-1];
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 = (v177 + v164);
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
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
          v70 = a7;
          v71 = v201 + 2 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221.i8[v139 + v140];
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + v213 * (v131 - 1) + 2 * v217 && v212 < &__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140;
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = (v212 + 16);
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = (v142 + v138 * v143);
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = *(v161 - 1);
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 += v143;
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
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
          v70 = a7;
          v71 = (v201 + 2 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72->i16);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72->i64 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221 + v139 + v140;
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + 2 * v217 + v213 * (v131 - 1) && v212 < (&__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140);
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = v212 + 1;
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = v142 + v138 * v143;
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = v161[-1];
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 = (v156 + v143);
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v134 = a8 + a10 - 1;
  v152 = a1;
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
  v133 = v134 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v156 = v24;
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
      v145 = 0;
LABEL_32:
      v142 = v27 - 4;
      v137 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v131 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v145 = v32 >= v26;
    goto LABEL_32;
  }

  v145 = 0;
  v131 = 0;
  v137 = 0;
  v142 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v144 = a7 + a9 - 1;
    v130 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      v154 = v19 >> 4;
      v138 = v19 & 0xF;
      v128 = v20 & 0xF;
      v129 = v20 >> 4;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v135 = v35;
      v143 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v151)
        {
          v37 = v151;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v141 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v140 = v39;
        v41 = v39 != 16;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 16;
          v40 = v41;
        }

        v139 = v40;
        v43 = v130;
        v149 = a3 + (v37 - v151) * a11;
        v150 = v42;
        v148 = v42;
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

          if (v144 < v45)
          {
            v45 = v144;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v138 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (16 * v18 >= v151 && v44 >= a7)
          {
            v51 = v47 != v138;
            if (v43 != v154)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v139;
          }

          if (v145)
          {
            if (v142 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v142 != 0;
              v56 = v137;
              v58 = v142;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v142) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v56;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v137) & v55) << v52++;
                }

                else
                {
                  v56 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v56 != 0;
                v57 = v58 != 0;
              }

              while (v56 | v58);
              v59 = v53 << 10;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v142) + (v18 >> v137) * v131);
          }

          else if (v136)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v135.i8[0];
            v64 = v135.i8[4];
            v66 = v136.i32[0];
            v65 = v136.i32[1];
            do
            {
              --v65;
              if (v64)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v63)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v63 = v66 != 0;
              v64 = v65 != 0;
            }

            while (v66 | v65);
            v67 = v61 << 10;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(result + 128) >> (*(result + 144) + a12);
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

          v71 = *(result + 132) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          if (v73 | v70)
          {
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
          }

          else
          {
            v79 = 0;
          }

          v80 = (a4 + v79);
          v81 = v149 + 4 * (v46 - a7);
          v155 = (a2 + v67);
          if (v156)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              v83 = __dst;
LABEL_110:
              __src = v83;
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v83, v80, v49, v150);
LABEL_111:
              a7 = v143;
              v84 = v43 + 1;
              goto LABEL_145;
            }

            v82 = v49;
            memcpy(__dst, (a2 + v67), sizeof(__dst));
            LOBYTE(v49) = v82;
            v83 = __dst;
            result = v152;
          }

          else
          {
            v83 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v83;
          v166 = v49;
          v167 = v150;
          v162 = v141;
          v163 = v46 - v44;
          v159 = v80;
          v160 = v81;
          v161 = a11;
          v164 = v140;
          v165 = v48;
          __src = v83;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_111;
          }

          v85 = (v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v83, *v80));
          v86 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 64, v85, v80[1]));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 64, v86, v80[2]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 64, v87, v80[3]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 64, v88, v80[4]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v175, 64, v89, v80[5]));
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v174, 64, v90, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 64, (v90 + v91), v80[7]);
          v92 = v164;
          a7 = v143;
          v84 = v43 + 1;
          if (v164)
          {
            v93 = v165;
            if (v165)
            {
              v94 = 0;
              v95 = v162 << 6;
              v96 = 4 * v163;
              v97 = &v169[v95 + v96];
              v98 = v160;
              v99 = v161;
              v100 = 4 * v165;
              if (4 * v165)
              {
                v101 = (4 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v160 + v161 * (v164 - 1) + 4 * v165 && v160 < &__dst[64 * v164 + 960 + 64 * v162 + 4 * v165 + v96];
              v105 = v104 || v161 < 0;
              v106 = v100 & 0x1FFFFFFE0;
              v107 = v100 & 0x1FFFFFFF8;
              v108 = (v165 == 1) | v102 | v105;
              v109 = &v169[v95 + 16 + v96];
              v110 = (v160 + 16);
              v111 = v97;
              v112 = v160;
              do
              {
                v113 = (v98 + v94 * v99);
                v114 = &v97[64 * v94];
                if (v108)
                {
                  v115 = 0;
                  goto LABEL_141;
                }

                if (v93 >= 8)
                {
                  v117 = v110;
                  v118 = v109;
                  v119 = v100 & 0x1FFFFFFE0;
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
                  if (v100 == v106)
                  {
                    goto LABEL_127;
                  }

                  v116 = v100 & 0x1FFFFFFE0;
                  if ((v93 & 6) == 0)
                  {
                    v113 += v106;
                    v114 += v106;
                    v115 = v100 & 0xFFFFFFE0;
                    goto LABEL_141;
                  }
                }

                else
                {
                  v116 = 0;
                }

                v114 += v107;
                v121 = -8 * ((v93 >> 1) & 0x3FFFFFFF) + v116;
                v122 = (v112 + v116);
                v123 = &v111[v116];
                do
                {
                  v124 = *v122++;
                  *v123++ = v124;
                  v121 += 8;
                }

                while (v121);
                if (v100 == v107)
                {
                  goto LABEL_127;
                }

                v113 += v107;
                v115 = v100 & 0xFFFFFFF8;
LABEL_141:
                v125 = v115 + 1;
                do
                {
                  v126 = *v113++;
                  *v114++ = v126;
                }

                while (v100 > v125++);
LABEL_127:
                ++v94;
                v109 += 64;
                v110 = (v110 + v99);
                v112 += v99;
                v111 += 64;
              }

              while (v94 != v92);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 64, v158, v159, v166, v167);
LABEL_145:
          if (v156)
          {
            memcpy(v155, __src, 0x400uLL);
          }

          v21 = v43 == v144 >> 4;
          v43 = v84;
          result = v152;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v231[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v208 = a8;
  v189 = a8 + a10 - 1;
  v209 = a1;
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
  v188 = v189 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v211 = v24;
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
      v203 = 0;
LABEL_32:
      v199 = v27 - 4;
      v193 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v186 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v186 = 0;
  v193 = 0;
  v199 = 0;
LABEL_33:
  if (v18 <= v188)
  {
    v202 = a7 + a9 - 1;
    v185 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v34 = a11;
      v210 = v19 >> 4;
      v195 = v19 & 0xF;
      v183 = v20 & 0xF;
      v184 = v20 >> 4;
      v182 = ~(-1 << v193);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v36 = vcgt_u32(v35, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 4uLL))))))), v36);
      v191 = v36;
      v37 = 4 * a11;
      v38 = 2 * a11;
      v201 = a7;
      do
      {
        v39 = (16 * v18) | 0xF;
        if (16 * v18 <= v208)
        {
          v40 = v208;
        }

        else
        {
          v40 = 16 * v18;
        }

        if (v189 < v39)
        {
          v39 = v189;
        }

        v198 = v40 - 16 * v18;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v183;
        v197 = v42;
        v44 = v185;
        if (v18 == v184)
        {
          v45 = v183 + 1;
        }

        else
        {
          v45 = 16;
        }

        if (v18 != v184)
        {
          v43 = v42 != 16;
        }

        v196 = v43;
        v46 = v18 & v182;
        v207 = a3 + (v40 - v208) * v34;
        v206 = v45;
        v190 = v45;
        do
        {
          v47 = 16 * v44;
          v48 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 16 * v44;
          }

          if (v202 < v48)
          {
            v48 = v202;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v44 == v210)
          {
            v52 = v195 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (16 * v18 >= v208 && v47 >= a7)
          {
            v54 = v50 != v195;
            if (v44 != v210)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v196;
          }

          if (v203)
          {
            if (v199 | v193)
            {
              v55 = 0;
              v56 = 0;
              v57 = v193 != 0;
              v58 = 1;
              v60 = v199 != 0;
              v59 = v193;
              v61 = v199;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v44 & ~(-1 << v199) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v46 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                v58 *= 2;
                --v55;
                v57 = v59 != 0;
                v60 = v61 != 0;
              }

              while (v59 | v61);
              v62 = v56 << 10;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(result + 336) * ((v44 >> v199) + (v18 >> v193) * v186);
          }

          else if (v192)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v191.i8[0];
            v67 = v191.i8[4];
            v69 = v192.i32[0];
            v68 = v192.i32[1];
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v44) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v18) << v63++;
              }

              else
              {
                v69 = 0;
              }

              v65 *= 2;
              --v63;
              v66 = v69 != 0;
              v67 = v68 != 0;
            }

            while (v69 | v68);
            v70 = v64 << 10;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(result + 128) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          v74 = *(result + 132) >> (*(result + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_107:
              v82 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_107;
            }
          }

          v77 = 0;
          v78 = 0;
          v79 = v73 != 0;
          v80 = v76 != 0;
          v81 = 1;
          do
          {
            --v73;
            if (v79)
            {
              v78 |= (v81 & v44) << v77++;
            }

            else
            {
              v73 = 0;
            }

            --v76;
            if (v80)
            {
              v78 |= (v81 & v18) << v77++;
            }

            else
            {
              v76 = 0;
            }

            v81 *= 2;
            --v77;
            v80 = v76 != 0;
            v79 = v73 != 0;
          }

          while (v76 | v73);
          v82 = 8 * v78;
LABEL_108:
          v83 = (a4 + v82);
          v84 = v207 + 4 * (v49 - a7);
          v85 = (a2 + v70);
          if (v211)
          {
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              v86 = (a2 + v70);
              v87 = v51;
              v88 = v53;
              memcpy(v223, v85, sizeof(v223));
              v47 = 16 * v44;
              v53 = v88;
              v34 = a11;
              v51 = v87;
              v46 = v18 & v182;
              v45 = v190;
              v89 = v223;
              v85 = v86;
              result = v209;
LABEL_112:
              __dst = v85;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v213 = v89;
              v221 = v52;
              v222 = v45;
              v217 = v198;
              v218 = v49 - v47;
              v214 = v83;
              v215 = v84;
              v216 = v34;
              v219 = v197;
              v220 = v51;
              if (v53)
              {
                v90 = v89;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v89 = v90;
                result = v209;
                a7 = v201;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                goto LABEL_114;
              }

              v194 = v89;
              v115 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, v89, *v83));
              v116 = (v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v226, 64, v115, v83[1]));
              v117 = (v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v225, 64, v116, v83[2]));
              v118 = (v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v227, 64, v117, v83[3]));
              v119 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v228, 64, v118, v83[4]));
              v120 = (v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v230, 64, v119, v83[5]));
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v229, 64, v120, v83[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v231, 64, (v120 + v121), v83[7]);
              v122 = v219;
              if (!v219 || (v123 = v220) == 0)
              {
LABEL_159:
                v159 = v213;
                v160 = v214;
                v161 = v221;
                v162 = &byte_29D2F2FD5;
                v163 = 16;
                v164 = v222;
                a7 = v201;
                result = v209;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                v89 = v194;
                do
                {
                  v179 = *v162;
                  v180 = *(v162 - 1);
                  if (v161 <= 8 * v180 || 4 * v179 >= v164)
                  {
                    v178 = 0;
                  }

                  else
                  {
                    v165 = &v224[256 * v179 + 32 * v180];
                    v166 = v165[1];
                    v167 = v165[4];
                    v168 = v165[5];
                    v169 = vzip1q_s64(*v165, v167);
                    v170 = vzip2q_s64(*v165, v167);
                    v171 = vzip1q_s64(v166, v168);
                    v172 = vzip2q_s64(v166, v168);
                    v173 = v165[8];
                    v174 = v165[9];
                    v165 += 12;
                    v175 = v165[1];
                    v176 = vzip1q_s64(v173, *v165);
                    v177 = vzip2q_s64(v173, *v165);
                    *v159 = v169;
                    v159[1] = v170;
                    v159[2] = v176;
                    v159[3] = v177;
                    v159[4] = v171;
                    v159[5] = v172;
                    v159[6] = vzip1q_s64(v174, v175);
                    v159[7] = vzip2q_s64(v174, v175);
                    v159 += 8;
                    v178 = 127;
                  }

                  *v160++ = v178;
                  v162 += 2;
                  v163 -= 2;
                }

                while (v163);
LABEL_114:
                v85 = __dst;
                if (v211)
                {
                  goto LABEL_49;
                }

                goto LABEL_50;
              }

              v124 = 0;
              v125 = v217 << 6;
              v126 = 4 * v218;
              v127 = &v224[v125 + v126];
              v128 = v215;
              v129 = v216;
              v130 = 4 * v220;
              if (4 * v220)
              {
                v131 = (4 * v220 - 1) >> 32 == 0;
              }

              else
              {
                v131 = 0;
              }

              v132 = !v131;
              v134 = v127 < v215 + v216 * (v219 - 1) + 4 * v220 && v215 < &v223[64 * v219 + 960 + 64 * v217 + 4 * v220 + v126];
              v135 = v134 || v216 < 0;
              v136 = v130 & 0x1FFFFFFE0;
              v137 = v130 & 0x1FFFFFFF8;
              v138 = (v220 == 1) | v132 | v135;
              v139 = &v224[v125 + 16 + v126];
              v140 = (v215 + 16);
              v141 = -8 * ((v220 >> 1) & 0x3FFFFFFF);
              v142 = v127;
              v143 = v215;
              while (2)
              {
                v144 = (v128 + v124 * v129);
                v145 = &v127[64 * v124];
                if (v138)
                {
                  v146 = 0;
LABEL_156:
                  v156 = v146 + 1;
                  do
                  {
                    v157 = *v144++;
                    *v145++ = v157;
                  }

                  while (v130 > v156++);
                }

                else
                {
                  if (v123 >= 8)
                  {
                    v148 = v140;
                    v149 = v139;
                    v150 = v130 & 0x1FFFFFFE0;
                    do
                    {
                      v151 = *v148;
                      *(v149 - 1) = *(v148 - 1);
                      *v149 = v151;
                      v149 += 2;
                      v148 += 2;
                      v150 -= 32;
                    }

                    while (v150);
                    if (v130 == v136)
                    {
                      goto LABEL_142;
                    }

                    v147 = v130 & 0x1FFFFFFE0;
                    if ((v123 & 6) == 0)
                    {
                      v144 += v136;
                      v145 += v136;
                      v146 = v130 & 0xFFFFFFE0;
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v145 += v137;
                  v152 = v141 + v147;
                  v153 = (v143 + v147);
                  v154 = &v142[v147];
                  do
                  {
                    v155 = *v153++;
                    *v154++ = v155;
                    v152 += 8;
                  }

                  while (v152);
                  if (v130 != v137)
                  {
                    v144 += v137;
                    v146 = v130 & 0xFFFFFFF8;
                    goto LABEL_156;
                  }
                }

LABEL_142:
                ++v124;
                v139 += 64;
                v140 = (v140 + v129);
                v143 += v129;
                v142 += 64;
                if (v124 == v122)
                {
                  goto LABEL_159;
                }

                continue;
              }
            }

            v89 = v223;
          }

          else
          {
            v89 = (a2 + v70);
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              goto LABEL_112;
            }
          }

          v92 = &byte_29D2F2FD5;
          v93 = 16;
          v94 = v89;
          do
          {
            v112 = *v92;
            v113 = *(v92 - 1);
            if (v52 <= 8 * v113 || 4 * v112 >= v45)
            {
              v111 = 0;
            }

            else
            {
              v95 = (v84 + v37 * v112 + 32 * v113);
              v96 = (v95 + v34);
              v98 = *v95;
              v99 = v95[1];
              v97 = (v95 + v38);
              v100 = v96[1];
              v101 = vzip1q_s64(v98, *v96);
              v102 = vzip2q_s64(v98, *v96);
              v103 = vzip1q_s64(v99, v100);
              v104 = vzip2q_s64(v99, v100);
              v106 = *v97;
              v107 = v97[1];
              v105 = (v97 + v34);
              v108 = v105[1];
              v109 = vzip1q_s64(v106, *v105);
              v110 = vzip2q_s64(v106, *v105);
              *v94 = v101;
              v94[1] = v102;
              v94[2] = v109;
              v94[3] = v110;
              v94[4] = v103;
              v94[5] = v104;
              v94[6] = vzip1q_s64(v107, v108);
              v94[7] = vzip2q_s64(v107, v108);
              v94 += 8;
              v111 = 127;
            }

            *v83++ = v111;
            v92 += 2;
            v93 -= 2;
          }

          while (v93);
          a7 = v201;
          v91 = v44 + 1;
          if (v211)
          {
LABEL_49:
            memcpy(v85, v89, 0x400uLL);
            v38 = 2 * a11;
            v37 = 4 * a11;
            result = v209;
          }

LABEL_50:
          v21 = v44 == v202 >> 4;
          v44 = v91;
        }

        while (!v21);
        v21 = v18++ == v188;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v17 = a8 >> 4;
  v134 = a8 + a10 - 1;
  v136 = v134 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v153 = a1;
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
  v155 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v145 = result;
  if (v17 <= v136)
  {
    v144 = a7 + a9 - 1;
    v133 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      result = a1;
      v154 = (a5 - 1) >> 4;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 0xF;
      v131 = (a6 - 1) & 0xF;
      v132 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v141 = v27;
      v129 = 8 * v19 * v18;
      v143 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v152)
        {
          v29 = v152;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v134 < v28)
        {
          v28 = v134;
        }

        v151 = 16 * v17;
        v140 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v131;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v133;
        v35 = v131 + 1;
        if (v17 != v132)
        {
          v35 = 16;
          v32 = v33;
        }

        v138 = v32;
        v149 = a3 + (v29 - v152) * a11;
        v150 = v35;
        v148 = v35;
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

          if (v144 < v37)
          {
            v37 = v144;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v154)
          {
            v41 = v137 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v151 >= v152 && v36 >= a7)
          {
            v43 = v39 != v137;
            if (v34 != v154)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v138;
          }

          if (v145)
          {
            v64 = 0;
            v65 = v129 >> (*(result + 57) != 0);
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

            v119 = (v64 >> 4) - 1;
            if (v66)
            {
              v120 = 0;
              if (v67)
              {
                goto LABEL_150;
              }

LABEL_139:
              v121 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v121 | v120)
              {
                goto LABEL_140;
              }

LABEL_151:
              v128 = 0;
            }

            else
            {
              v120 = 32 - __clz(~(-1 << -__clz(v119)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v121 = 0;
              if (!v120)
              {
                goto LABEL_151;
              }

LABEL_140:
              v122 = 0;
              v123 = 0;
              v124 = v34 & v119;
              v125 = v120 != 0;
              v126 = v121 != 0;
              v127 = 1;
              do
              {
                --v120;
                if (v125)
                {
                  v123 |= (v127 & v124) << v122++;
                }

                else
                {
                  v120 = 0;
                }

                --v121;
                if (v126)
                {
                  v123 |= (v127 & v17 & ((v68 >> 4) - 1)) << v122++;
                }

                else
                {
                  v121 = 0;
                }

                v127 *= 2;
                --v122;
                v126 = v121 != 0;
                v125 = v120 != 0;
              }

              while (v121 | v120);
              v128 = v123 << 10;
              result = v153;
            }

            v51 = v128 + ((v36 / v64 + v151 / v68 * ((v64 + v130) / v64)) << 14);
            goto LABEL_52;
          }

          if (v142)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v141.i8[0];
            v48 = v141.i8[4];
            v50 = v142.i32[0];
            v49 = v142.i32[1];
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
            v51 = v45 << 10;
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
          v70 = v149 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v75, v69, v41, v150);
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
            result = v153;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v75;
          v165 = v41;
          v166 = v150;
          v161 = v140;
          v162 = v38 - v36;
          v158 = v69;
          v159 = v70;
          v160 = a11;
          v163 = v139;
          v164 = v40;
          if ((v42 & 1) == 0)
          {
            v76 = (v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v75, *v69));
            v77 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v170, 64, v76, v69[1]));
            v78 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v169, 64, v77, v69[2]));
            v79 = (v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v171, 64, v78, v69[3]));
            v80 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v172, 64, v79, v69[4]));
            v81 = (v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v174, 64, v80, v69[5]));
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v173, 64, v81, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, (v81 + v82), v69[7]);
            v83 = v163;
            a7 = v143;
            if (!v163 || (v84 = v164) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
              if (!v155)
              {
                goto LABEL_26;
              }

              goto LABEL_121;
            }

            v85 = 0;
            v86 = v161 << 6;
            v87 = 4 * v162;
            v88 = &v168[v86 + v87];
            v89 = v159;
            v90 = v160;
            v91 = 4 * v164;
            if (4 * v164)
            {
              v92 = (4 * v164 - 1) >> 32 == 0;
            }

            else
            {
              v92 = 0;
            }

            v93 = !v92;
            v95 = v88 < v159 + v160 * (v163 - 1) + 4 * v164 && v159 < &__dst[64 * v163 + 960 + 64 * v161 + 4 * v164 + v87];
            v96 = v95 || v160 < 0;
            v97 = v91 & 0x1FFFFFFE0;
            v98 = v91 & 0x1FFFFFFF8;
            v99 = (v164 == 1) | v93 | v96;
            v100 = &v168[v86 + 16 + v87];
            v101 = (v159 + 16);
            v102 = v88;
            v103 = v159;
            while (2)
            {
              v104 = (v89 + v85 * v90);
              v105 = &v88[64 * v85];
              if (v99)
              {
                v106 = 0;
LABEL_117:
                v116 = v106 + 1;
                do
                {
                  v117 = *v104++;
                  *v105++ = v117;
                }

                while (v91 > v116++);
              }

              else
              {
                if (v84 >= 8)
                {
                  v108 = v101;
                  v109 = v100;
                  v110 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 2;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v91 == v97)
                  {
                    goto LABEL_103;
                  }

                  v107 = v91 & 0x1FFFFFFE0;
                  if ((v84 & 6) == 0)
                  {
                    v104 += v97;
                    v105 += v97;
                    v106 = v91 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v107 = 0;
                }

                v105 += v98;
                v112 = -8 * ((v84 >> 1) & 0x3FFFFFFF) + v107;
                v113 = (v103 + v107);
                v114 = &v102[v107];
                do
                {
                  v115 = *v113++;
                  *v114++ = v115;
                  v112 += 8;
                }

                while (v112);
                if (v91 != v98)
                {
                  v104 += v98;
                  v106 = v91 & 0xFFFFFFF8;
                  goto LABEL_117;
                }
              }

LABEL_103:
              ++v85;
              v100 += 64;
              v101 = (v101 + v90);
              v103 += v90;
              v102 += 64;
              if (v85 == v83)
              {
                goto LABEL_120;
              }

              continue;
            }
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v143;
          if (!v155)
          {
            goto LABEL_26;
          }

LABEL_121:
          memcpy(v71, v75, 0x400uLL);
LABEL_26:
          v21 = v34++ == v144 >> 4;
          result = v153;
        }

        while (!v21);
        v21 = v17++ == v136;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v224[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8;
  v16 = a8 >> 4;
  v182 = a8 + a10 - 1;
  v184 = v182 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v202 = a1;
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
  v204 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v194 = isLevelTiled;
  v26 = a7;
  if (v16 <= v184)
  {
    v193 = a7 + a9 - 1;
    if (a7 >> 4 <= v193 >> 4)
    {
      v27 = a11;
      v203 = (a5 - 1) >> 4;
      v179 = a5 - 1;
      v187 = (a5 - 1) & 0xF;
      v180 = (a6 - 1) & 0xF;
      v181 = (a6 - 1) >> 4;
      v28 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v29 = vcgt_u32(v28, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v28, 4uLL))))))), v29);
      v191 = v29;
      v178 = 8 * v18 * v17;
      v30 = 2 * a11;
      do
      {
        v31 = (16 * v16) | 0xF;
        if (16 * v16 <= v201)
        {
          v32 = v201;
        }

        else
        {
          v32 = 16 * v16;
        }

        if (v182 < v31)
        {
          v31 = v182;
        }

        v200 = 16 * v16;
        v190 = v32 - 16 * v16;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v180;
        v189 = v34;
        v36 = a7 >> 4;
        if (v16 == v181)
        {
          v37 = v180 + 1;
        }

        else
        {
          v37 = 16;
        }

        if (v16 != v181)
        {
          v35 = v34 != 16;
        }

        v188 = v35;
        v199 = a3 + (v32 - v201) * v27;
        v198 = v37;
        v185 = v37;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v26)
          {
            v40 = v26;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v193 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v36 == v203)
          {
            v43 = v187 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v200 >= v201 && v38 >= v26)
          {
            v45 = v41 != v187;
            if (v36 != v203)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v188;
          }

          if (v194)
          {
            v66 = 0;
            v67 = v178 >> (*(v25 + 57) != 0);
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

            v168 = (v66 >> 4) - 1;
            if (v68)
            {
              v169 = 0;
              if (v69)
              {
                goto LABEL_168;
              }

LABEL_157:
              v170 = 32 - __clz(~(-1 << -__clz(((v70 + 15) >> 4) - 1)));
              if (v170 | v169)
              {
                goto LABEL_158;
              }

LABEL_169:
              v177 = 0;
            }

            else
            {
              v169 = 32 - __clz(~(-1 << -__clz(v168)));
              if ((v69 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_168:
              v170 = 0;
              if (!v169)
              {
                goto LABEL_169;
              }

LABEL_158:
              v171 = 0;
              v172 = 0;
              v173 = v36 & v168;
              v174 = v169 != 0;
              v175 = v170 != 0;
              v176 = 1;
              do
              {
                --v169;
                if (v174)
                {
                  v172 |= (v176 & v173) << v171++;
                }

                else
                {
                  v169 = 0;
                }

                --v170;
                if (v175)
                {
                  v172 |= (v176 & v16 & ((v70 >> 4) - 1)) << v171++;
                }

                else
                {
                  v170 = 0;
                }

                v176 *= 2;
                --v171;
                v175 = v170 != 0;
                v174 = v169 != 0;
              }

              while (v170 | v169);
              v177 = v172 << 10;
            }

            v53 = v177 + ((v38 / v66 + v200 / v70 * ((v66 + v179) / v66)) << 14);
            goto LABEL_55;
          }

          if (v192)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v191.i8[0];
            v50 = v191.i8[4];
            v52 = v192.i32[0];
            v51 = v192.i32[1];
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v36) << v46++;
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
            v53 = v47 << 10;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(v25 + 128) >> (*(v25 + 144) + a12);
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

          v57 = *(v25 + 132) >> (*(v25 + 144) + a12);
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
LABEL_80:
              v65 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
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
LABEL_81:
          v71 = (a4 + v65);
          v72 = v199 + 4 * (v40 - v26);
          v73 = (a2 + v53);
          if (v204)
          {
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              v77 = __dst;
LABEL_90:
              v79 = &byte_29D2F2FD5;
              v80 = 16;
              v81 = v77;
              do
              {
                v99 = *v79;
                v100 = *(v79 - 1);
                if (v43 <= 8 * v100 || 4 * v99 >= v37)
                {
                  v98 = 0;
                }

                else
                {
                  v82 = (v72 + 4 * a11 * v99 + 32 * v100);
                  v83 = (v82 + v27);
                  v85 = *v82;
                  v86 = v82[1];
                  v84 = (v82 + v30);
                  v87 = v83[1];
                  v88 = vzip1q_s64(v85, *v83);
                  v89 = vzip2q_s64(v85, *v83);
                  v90 = vzip1q_s64(v86, v87);
                  v91 = vzip2q_s64(v86, v87);
                  v93 = *v84;
                  v94 = v84[1];
                  v92 = (v84 + v27);
                  v95 = v92[1];
                  v96 = vzip1q_s64(v93, *v92);
                  v97 = vzip2q_s64(v93, *v92);
                  *v81 = v88;
                  v81[1] = v89;
                  v81[2] = v96;
                  v81[3] = v97;
                  v81[4] = v90;
                  v81[5] = v91;
                  v81[6] = vzip1q_s64(v94, v95);
                  v81[7] = vzip2q_s64(v94, v95);
                  v81 += 8;
                  v98 = 127;
                }

                *v71++ = v98;
                v79 += 2;
                v80 -= 2;
              }

              while (v80);
              goto LABEL_87;
            }

            v74 = v42;
            v75 = v44;
            v76 = v40;
            memcpy(__dst, v73, sizeof(__dst));
            v77 = __dst;
            v40 = v76;
            v44 = v75;
            v37 = v185;
            v42 = v74;
            v27 = a11;
            v30 = 2 * a11;
            v25 = v202;
          }

          else
          {
            v77 = (a2 + v53);
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v206 = v77;
          v214 = v43;
          v215 = v37;
          v210 = v190;
          v211 = v40 - v38;
          v207 = v71;
          v208 = v72;
          v209 = v27;
          v212 = v189;
          v213 = v42;
          if (v44)
          {
            v78 = v77;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v77 = v78;
            v25 = v202;
            v26 = a7;
LABEL_87:
            if (!v204)
            {
              goto LABEL_29;
            }

LABEL_139:
            memcpy(v73, v77, 0x400uLL);
            v25 = v202;
            v26 = a7;
            goto LABEL_29;
          }

          v186 = v77;
          v102 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v217, 64, v77, *v71));
          v103 = (v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v219, 64, v102, v71[1]));
          v104 = (v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v218, 64, v103, v71[2]));
          v105 = (v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v220, 64, v104, v71[3]));
          v106 = (v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v221, 64, v105, v71[4]));
          v107 = (v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v223, 64, v106, v71[5]));
          v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v222, 64, v107, v71[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, (v107 + v108), v71[7]);
          v109 = v212;
          if (v212)
          {
            v110 = v213;
            if (v213)
            {
              v111 = 0;
              v112 = v210 << 6;
              v113 = 4 * v211;
              v114 = &v217[v112 + v113];
              v115 = v208;
              v116 = v209;
              v117 = 4 * v213;
              if (4 * v213)
              {
                v118 = (4 * v213 - 1) >> 32 == 0;
              }

              else
              {
                v118 = 0;
              }

              v119 = !v118;
              v121 = v114 < v208 + v209 * (v212 - 1) + 4 * v213 && v208 < &__dst[64 * v212 + 960 + 64 * v210 + 4 * v213 + v113];
              v122 = v121 || v209 < 0;
              v123 = v117 & 0x1FFFFFFE0;
              v124 = v117 & 0x1FFFFFFF8;
              v125 = (v213 == 1) | v119 | v122;
              v126 = &v217[v112 + 16 + v113];
              v127 = (v208 + 16);
              v128 = v114;
              v129 = v208;
              do
              {
                v130 = (v115 + v111 * v116);
                v131 = &v114[64 * v111];
                if (v125)
                {
                  v132 = 0;
                  goto LABEL_127;
                }

                if (v110 >= 8)
                {
                  v134 = v127;
                  v135 = v126;
                  v136 = v117 & 0x1FFFFFFE0;
                  do
                  {
                    v137 = *v134;
                    *(v135 - 1) = *(v134 - 1);
                    *v135 = v137;
                    v135 += 2;
                    v134 += 2;
                    v136 -= 32;
                  }

                  while (v136);
                  if (v117 == v123)
                  {
                    goto LABEL_113;
                  }

                  v133 = v117 & 0x1FFFFFFE0;
                  if ((v110 & 6) == 0)
                  {
                    v130 += v123;
                    v131 += v123;
                    v132 = v117 & 0xFFFFFFE0;
                    goto LABEL_127;
                  }
                }

                else
                {
                  v133 = 0;
                }

                v131 += v124;
                v138 = -8 * ((v110 >> 1) & 0x3FFFFFFF) + v133;
                v139 = (v129 + v133);
                v140 = &v128[v133];
                do
                {
                  v141 = *v139++;
                  *v140++ = v141;
                  v138 += 8;
                }

                while (v138);
                if (v117 == v124)
                {
                  goto LABEL_113;
                }

                v130 += v124;
                v132 = v117 & 0xFFFFFFF8;
LABEL_127:
                v142 = v132 + 1;
                do
                {
                  v143 = *v130++;
                  *v131++ = v143;
                }

                while (v117 > v142++);
LABEL_113:
                ++v111;
                v126 += 64;
                v127 = (v127 + v116);
                v129 += v116;
                v128 += 64;
              }

              while (v111 != v109);
            }
          }

          v145 = v206;
          v146 = v207;
          v147 = v214;
          v148 = &byte_29D2F2FD5;
          v149 = 16;
          v150 = v215;
          v26 = a7;
          v25 = v202;
          do
          {
            v165 = *v148;
            v166 = *(v148 - 1);
            if (v147 <= 8 * v166 || 4 * v165 >= v150)
            {
              v164 = 0;
            }

            else
            {
              v151 = &v217[256 * v165 + 32 * v166];
              v152 = v151[1];
              v153 = v151[4];
              v154 = v151[5];
              v155 = vzip1q_s64(*v151, v153);
              v156 = vzip2q_s64(*v151, v153);
              v157 = vzip1q_s64(v152, v154);
              v158 = vzip2q_s64(v152, v154);
              v159 = v151[8];
              v160 = v151[9];
              v151 += 12;
              v161 = v151[1];
              v162 = vzip1q_s64(v159, *v151);
              v163 = vzip2q_s64(v159, *v151);
              *v145 = v155;
              v145[1] = v156;
              v145[2] = v162;
              v145[3] = v163;
              v145[4] = v157;
              v145[5] = v158;
              v145[6] = vzip1q_s64(v160, v161);
              v145[7] = vzip2q_s64(v160, v161);
              v145 += 8;
              v164 = 127;
            }

            *v146++ = v164;
            v148 += 2;
            v149 -= 2;
          }

          while (v149);
          v77 = v186;
          if (v204)
          {
            goto LABEL_139;
          }

LABEL_29:
          v20 = v36++ == v193 >> 4;
        }

        while (!v20);
        v20 = v16++ == v184;
      }

      while (!v20);
    }
  }
}