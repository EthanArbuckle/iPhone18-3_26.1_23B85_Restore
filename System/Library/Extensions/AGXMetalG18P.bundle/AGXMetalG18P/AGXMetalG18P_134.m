void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v278 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v232 = a8;
  v211 = a8 + a10 - 1;
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
  v210 = v211 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v227 = v23;
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
      v226 = 0;
LABEL_32:
      v223 = v25 - 4;
      v214 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v208 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v226 = v30 >= v24;
    goto LABEL_32;
  }

  v226 = 0;
  v208 = 0;
  v214 = 0;
  v223 = 0;
LABEL_33:
  if (v17 <= v210)
  {
    v225 = a7 + a9 - 1;
    if (a7 >> 4 <= v225 >> 4)
    {
      v32 = a11;
      v235 = v18 >> 4;
      v219 = v18 & 0xF;
      v224 = (v18 & 0xF) + 1;
      v206 = v19 & 0xF;
      v207 = v19 >> 4;
      v217 = 8 * a11;
      v218 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v34.i8 = vcgt_u32(v33, 0x1F0000001FLL);
      v35.i64[0] = -1;
      v36.i64[0] = 0x2000000020;
      *v37.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *v34.i8);
      v213 = v37.i64[0];
      v216 = v37.i32[0] | v37.i32[1];
      v212 = v34.i64[0];
      v233 = v15;
      v215 = 2 * a11;
      do
      {
        v38 = (16 * v17) | 0xF;
        if (16 * v17 <= v232)
        {
          v39 = v232;
        }

        else
        {
          v39 = 16 * v17;
        }

        if (v211 < v38)
        {
          v38 = v211;
        }

        v222 = v39 - 16 * v17;
        v40 = v38 - v39;
        v41 = v40 + 1;
        v42 = v40 != v206;
        v221 = v41;
        v43 = v41 != 16;
        v44 = a7 >> 4;
        v45 = v206 + 1;
        if (v17 != v207)
        {
          v45 = 16;
        }

        v234 = v45;
        if (v17 != v207)
        {
          v42 = v43;
        }

        v220 = v42;
        v46 = v17 & ~(-1 << v214);
        v230 = a2 + (v39 - v232) * v32;
        v47 = a7;
        do
        {
          v49 = 16 * v44;
          v50 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= v47)
          {
            v51 = v47;
          }

          else
          {
            v51 = 16 * v44;
          }

          if (v225 < v50)
          {
            v50 = a7 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v44 == v235)
          {
            v54 = v224;
          }

          else
          {
            v54 = 16;
          }

          v55 = 1;
          if (16 * v17 >= v232 && v49 >= v47)
          {
            v56 = v52 != v219;
            if (v44 != v235)
            {
              v56 = v53 != 16;
            }

            v55 = v56 || v220;
          }

          if (v226)
          {
            if (v223 | v214)
            {
              v57 = 0;
              v58 = 0;
              v59 = v214 != 0;
              v60 = 1;
              v62 = v223 != 0;
              v61 = v214;
              v63 = v223;
              do
              {
                --v63;
                if (v62)
                {
                  v58 |= (v44 & ~(-1 << v223) & v60) << v57++;
                }

                else
                {
                  v63 = 0;
                }

                --v61;
                if (v59)
                {
                  v58 |= (v46 & v60) << v57++;
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
              v64 = v58 << 9;
            }

            else
            {
              v64 = 0;
            }

            v72 = v64 + *(v15 + 336) * ((v44 >> v223) + (v17 >> v214) * v208);
          }

          else if (v216)
          {
            v65 = 0;
            v66 = 0;
            v67 = 1;
            v68 = v212;
            v69 = BYTE4(v212);
            v71 = v213;
            v70 = HIDWORD(v213);
            do
            {
              --v70;
              if (v69)
              {
                v66 |= (v67 & v44) << v65++;
              }

              else
              {
                v70 = 0;
              }

              --v71;
              if (v68)
              {
                v66 |= (v67 & v17) << v65++;
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
            v72 = v66 << 9;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v76 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v80 |= (v83 & v44) << v79++;
            }

            else
            {
              v75 = 0;
            }

            --v78;
            if (v82)
            {
              v80 |= (v83 & v17) << v79++;
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
          if (v227)
          {
            v86 = v46;
            v87 = v53;
            v88 = v55;
            memcpy(__dst, (a3 + v72), sizeof(__dst));
            v55 = v88;
            v53 = v87;
            v46 = v86;
            v85 = __dst;
          }

          v89 = (a4 + v84);
          v90 = (v230 + 2 * (v51 - v47));
          if (!(v55 & 1 | (v54 < 0x10u)) && v234 > 0xF)
          {
            v91 = *v89;
            if (v91 == 63)
            {
              v100 = *v85;
              v34 = v85[1];
              v35 = v85[2];
              v36 = v85[3];
              *v90 = vuzp1q_s32(*v85, v35);
              v32 = a11;
              *(v90 + a11) = vuzp2q_s32(v100, v35);
              v93 = 3 * a11;
              v92 = 2 * a11;
              v101 = (v90 + v215);
              *v101 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v101 + a11) = v37;
              v94 = 64;
            }

            else
            {
              v32 = a11;
              v93 = 3 * a11;
              v92 = 2 * a11;
              if (v91 == 1)
              {
                v37 = vld1q_dup_s16(v85->i16);
                *v90 = v37;
                *(v90 + a11) = v37;
                *(v90 + 2 * a11) = v37;
                *(v90 + 3 * a11) = v37;
                v94 = 2;
              }

              else if (*v89)
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v90, a11, v85, v91, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v94 = 0;
                v90->i64[0] = 0;
                v90->i64[1] = 0;
                v95 = (v90->i64 + a11);
                *v95 = 0;
                v95[1] = 0;
                v96 = (v90->i64 + v215);
                *v96 = 0;
                v96[1] = 0;
                v97 = (v90->i64 + 3 * a11);
                *v97 = 0;
                v97[1] = 0;
              }
            }

            v102 = v85->i64 + v94;
            v103 = (v90 + v218);
            v104 = v89[1];
            if (v104 == 63)
            {
              v109 = *v102;
              v34 = *(v102 + 16);
              v35 = *(v102 + 32);
              v36 = *(v102 + 48);
              *v103 = vuzp1q_s32(*v102, v35);
              *(v103 + v32) = vuzp2q_s32(v109, v35);
              v110 = (v103 + v92);
              *v110 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v110 + v32) = v37;
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v37 = vld1q_dup_s16(v102);
              *v103 = v37;
              *(v103 + v32) = v37;
              *(v103 + v92) = v37;
              *(v103 + v93) = v37;
              v105 = 2;
            }

            else if (v89[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v90 + v218), v32, v102, v104, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v92);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v93);
              *v108 = 0;
              v108[1] = 0;
            }

            v111 = v102 + v105;
            v112 = v90 + 1;
            v113 = v89[2];
            if (v113 == 63)
            {
              v118 = *v111;
              v34 = *(v111 + 16);
              v35 = *(v111 + 32);
              v36 = *(v111 + 48);
              *v112 = vuzp1q_s32(*v111, v35);
              *(v112 + v32) = vuzp2q_s32(v118, v35);
              v119 = (v112 + v92);
              *v119 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v119 + v32) = v37;
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v37 = vld1q_dup_s16(v111);
              *v112 = v37;
              *(v112 + v32) = v37;
              *(v112 + v92) = v37;
              *(v112 + v93) = v37;
              v114 = 2;
            }

            else if (v89[2])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v32, v111, v113, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v90[1].i64[1] = 0;
              v115 = (v112->i64 + v32);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v92);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v93);
              *v117 = 0;
              v117[1] = 0;
            }

            v120 = v111 + v114;
            v121 = v103 + 1;
            v122 = v89[3];
            if (v122 == 63)
            {
              v127 = *v120;
              v34 = *(v120 + 16);
              v35 = *(v120 + 32);
              v36 = *(v120 + 48);
              *v121 = vuzp1q_s32(*v120, v35);
              *(v121 + v32) = vuzp2q_s32(v127, v35);
              v128 = (v121 + v92);
              *v128 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v128 + v32) = v37;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v37 = vld1q_dup_s16(v120);
              *v121 = v37;
              *(v121 + v32) = v37;
              *(v121 + v92) = v37;
              *(v121 + v93) = v37;
              v123 = 2;
            }

            else if (v89[3])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v32, v120, v122, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v123 = 0;
              v121->i64[0] = 0;
              v103[1].i64[1] = 0;
              v124 = (v121->i64 + v32);
              *v124 = 0;
              v124[1] = 0;
              v125 = (v121->i64 + v92);
              *v125 = 0;
              v125[1] = 0;
              v126 = (v121->i64 + v93);
              *v126 = 0;
              v126[1] = 0;
            }

            v129 = v120 + v123;
            v130 = (v90 + v217);
            v131 = v89[4];
            if (v131 == 63)
            {
              v136 = *v129;
              v34 = *(v129 + 16);
              v35 = *(v129 + 32);
              v36 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v35);
              *(v130 + v32) = vuzp2q_s32(v136, v35);
              v137 = (v130 + v92);
              *v137 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v137 + v32) = v37;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v37 = vld1q_dup_s16(v129);
              *v130 = v37;
              *(v130 + v32) = v37;
              *(v130 + v92) = v37;
              *(v130 + v93) = v37;
              v132 = 2;
            }

            else if (v89[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v90 + v217), v32, v129, v131, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v130->i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v92);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v93);
              *v135 = 0;
              v135[1] = 0;
            }

            v138 = v129 + v132;
            v139 = (v90 + 12 * a11);
            v140 = v89[5];
            if (v140 == 63)
            {
              v145 = *v138;
              v34 = *(v138 + 16);
              v35 = *(v138 + 32);
              v36 = *(v138 + 48);
              *v139 = vuzp1q_s32(*v138, v35);
              *(v139 + v32) = vuzp2q_s32(v145, v35);
              v146 = (v139 + v92);
              *v146 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v146 + v32) = v37;
              v141 = 64;
            }

            else if (v140 == 1)
            {
              v37 = vld1q_dup_s16(v138);
              *v139 = v37;
              *(v139 + v32) = v37;
              *(v139 + v92) = v37;
              *(v139 + v93) = v37;
              v141 = 2;
            }

            else if (v89[5])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, v32, v138, v140, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v139->i64[1] = 0;
              v142 = (v139->i64 + v32);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v92);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v93);
              *v144 = 0;
              v144[1] = 0;
            }

            v147 = v138 + v141;
            v148 = v130 + 1;
            v149 = v89[6];
            if (v149 == 63)
            {
              v154 = *v147;
              v34 = *(v147 + 16);
              v35 = *(v147 + 32);
              v36 = *(v147 + 48);
              *v148 = vuzp1q_s32(*v147, v35);
              *(v148 + v32) = vuzp2q_s32(v154, v35);
              v155 = (v148 + v92);
              *v155 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v155 + v32) = v37;
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v37 = vld1q_dup_s16(v147);
              *v148 = v37;
              *(v148 + v32) = v37;
              *(v148 + v92) = v37;
              *(v148 + v93) = v37;
              v150 = 2;
            }

            else if (v89[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v32, v147, v149, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v130[1].i64[1] = 0;
              v151 = (v148->i64 + v32);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v92);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v93);
              *v153 = 0;
              v153[1] = 0;
            }

            v156 = v147 + v150;
            v157 = v139 + 1;
            v158 = v89[7];
            if (v158 == 63)
            {
              v162 = *v156;
              v34 = *(v156 + 16);
              v35 = *(v156 + 32);
              v36 = *(v156 + 48);
              *v157 = vuzp1q_s32(*v156, v35);
              *(v157 + v32) = vuzp2q_s32(v162, v35);
              v163 = (v157 + v92);
              *v163 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v163 + v32) = v37;
              v47 = a7;
              v15 = v233;
            }

            else
            {
              v47 = a7;
              v15 = v233;
              if (v158 == 1)
              {
                v37 = vld1q_dup_s16(v156);
                *v157 = v37;
                *(v157 + v32) = v37;
                *(v157 + v92) = v37;
                *(v157 + v93) = v37;
              }

              else if (v158)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v157, v32, v156, v158, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v157->i64[0] = 0;
                v157->i64[1] = 0;
                v159 = (v157->i64 + v32);
                *v159 = 0;
                v159[1] = 0;
                v160 = (v157->i64 + v92);
                *v160 = 0;
                v160[1] = 0;
                v161 = (v157->i64 + v93);
                *v161 = 0;
                v161[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v233;
          block[5] = v85;
          v243 = v54;
          v244 = v234;
          v239 = v222;
          v240 = v51 - v49;
          block[6] = v89;
          v237 = v90;
          v32 = a11;
          v238 = a11;
          v241 = v221;
          v242 = v53;
          if (v55)
          {
            dispatch_sync(*(*(v233 + 8) + 16552), block);
            v47 = a7;
            v15 = v233;
LABEL_49:
            v48 = v44 + 1;
            goto LABEL_50;
          }

          v98 = *v89;
          if (v98 == 63)
          {
            v164 = v85[1];
            v35 = v85[2];
            v36 = v85[3];
            v165 = vuzp2q_s32(*v85, v35);
            v246 = vuzp1q_s32(*v85, v35);
            v248 = v165;
            v37 = vuzp1q_s32(v164, v36);
            v34 = vuzp2q_s32(v164, v36);
            v250 = v37;
            v252 = v34;
            v99 = 64;
          }

          else if (v98 == 1)
          {
            v37 = vld1q_dup_s16(v85->i16);
            v246 = v37;
            v248 = v37;
            v250 = v37;
            v252 = v37;
            v99 = 2;
          }

          else if (*v89)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v85, v98, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v99 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
            v252 = 0uLL;
          }

          v166 = v85->i64 + v99;
          v167 = v89[1];
          if (v167 == 63)
          {
            v169 = *(v166 + 16);
            v35 = *(v166 + 32);
            v36 = *(v166 + 48);
            v170 = vuzp2q_s32(*v166, v35);
            v254 = vuzp1q_s32(*v166, v35);
            v256 = v170;
            v37 = vuzp1q_s32(v169, v36);
            v34 = vuzp2q_s32(v169, v36);
            v258 = v37;
            v260 = v34;
            v168 = 64;
          }

          else if (v167 == 1)
          {
            v37 = vld1q_dup_s16(v166);
            v254 = v37;
            v256 = v37;
            v258 = v37;
            v260 = v37;
            v168 = 2;
          }

          else if (v89[1])
          {
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 32, v166, v167, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v168 = 0;
            v254 = 0uLL;
            v256 = 0uLL;
            v258 = 0uLL;
            v260 = 0uLL;
          }

          v171 = v166 + v168;
          v172 = v89[2];
          if (v172 == 63)
          {
            v174 = *(v171 + 16);
            v35 = *(v171 + 32);
            v36 = *(v171 + 48);
            v175 = vuzp2q_s32(*v171, v35);
            v247 = vuzp1q_s32(*v171, v35);
            v249 = v175;
            v37 = vuzp1q_s32(v174, v36);
            v34 = vuzp2q_s32(v174, v36);
            v251 = v37;
            v253 = v34;
            v173 = 64;
          }

          else if (v172 == 1)
          {
            v37 = vld1q_dup_s16(v171);
            v247 = v37;
            v249 = v37;
            v251 = v37;
            v253 = v37;
            v173 = 2;
          }

          else if (v89[2])
          {
            v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v171, v172, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v173 = 0;
            v247 = 0uLL;
            v249 = 0uLL;
            v251 = 0uLL;
            v253 = 0uLL;
          }

          v176 = v171 + v173;
          v177 = v89[3];
          if (v177 == 63)
          {
            v179 = *(v176 + 16);
            v35 = *(v176 + 32);
            v36 = *(v176 + 48);
            v180 = vuzp2q_s32(*v176, v35);
            v255 = vuzp1q_s32(*v176, v35);
            v257 = v180;
            v37 = vuzp1q_s32(v179, v36);
            v34 = vuzp2q_s32(v179, v36);
            v259 = v37;
            v261 = v34;
            v178 = 64;
          }

          else if (v177 == 1)
          {
            v37 = vld1q_dup_s16(v176);
            v255 = v37;
            v257 = v37;
            v259 = v37;
            v261 = v37;
            v178 = 2;
          }

          else if (v89[3])
          {
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 32, v176, v177, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v178 = 0;
            v255 = 0uLL;
            v257 = 0uLL;
            v259 = 0uLL;
            v261 = 0uLL;
          }

          v181 = v176 + v178;
          v182 = v89[4];
          if (v182 == 63)
          {
            v184 = *(v181 + 16);
            v35 = *(v181 + 32);
            v36 = *(v181 + 48);
            v185 = vuzp2q_s32(*v181, v35);
            v262 = vuzp1q_s32(*v181, v35);
            v264 = v185;
            v37 = vuzp1q_s32(v184, v36);
            v34 = vuzp2q_s32(v184, v36);
            v266 = v37;
            v268 = v34;
            v183 = 64;
          }

          else if (v182 == 1)
          {
            v37 = vld1q_dup_s16(v181);
            v262 = v37;
            v264 = v37;
            v266 = v37;
            v268 = v37;
            v183 = 2;
          }

          else if (v89[4])
          {
            v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 32, v181, v182, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v183 = 0;
            v262 = 0uLL;
            v264 = 0uLL;
            v266 = 0uLL;
            v268 = 0uLL;
          }

          v186 = v181 + v183;
          v187 = v89[5];
          if (v187 == 63)
          {
            v189 = *(v186 + 16);
            v35 = *(v186 + 32);
            v36 = *(v186 + 48);
            v190 = vuzp2q_s32(*v186, v35);
            v270 = vuzp1q_s32(*v186, v35);
            v272 = v190;
            v37 = vuzp1q_s32(v189, v36);
            v34 = vuzp2q_s32(v189, v36);
            v274 = v37;
            v276 = v34;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v37 = vld1q_dup_s16(v186);
            v270 = v37;
            v272 = v37;
            v274 = v37;
            v276 = v37;
            v188 = 2;
          }

          else if (v89[5])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 32, v186, v187, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v188 = 0;
            v270 = 0uLL;
            v272 = 0uLL;
            v274 = 0uLL;
            v276 = 0uLL;
          }

          v191 = v186 + v188;
          v192 = v89[6];
          if (v192 == 63)
          {
            v194 = *(v191 + 16);
            v35 = *(v191 + 32);
            v36 = *(v191 + 48);
            v195 = vuzp2q_s32(*v191, v35);
            v263 = vuzp1q_s32(*v191, v35);
            v265 = v195;
            v37 = vuzp1q_s32(v194, v36);
            v34 = vuzp2q_s32(v194, v36);
            v267 = v37;
            v269 = v34;
            v193 = 64;
          }

          else if (v192 == 1)
          {
            v37 = vld1q_dup_s16(v191);
            v263 = v37;
            v265 = v37;
            v267 = v37;
            v269 = v37;
            v193 = 2;
          }

          else if (v89[6])
          {
            v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 32, v191, v192, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v193 = 0;
            v263 = 0uLL;
            v265 = 0uLL;
            v267 = 0uLL;
            v269 = 0uLL;
          }

          v196 = v191 + v193;
          v197 = v89[7];
          if (v197 == 63)
          {
            v198 = *(v196 + 16);
            v35 = *(v196 + 32);
            v36 = *(v196 + 48);
            v199 = vuzp2q_s32(*v196, v35);
            v271 = vuzp1q_s32(*v196, v35);
            v273 = v199;
            v37 = vuzp1q_s32(v198, v36);
            v34 = vuzp2q_s32(v198, v36);
            v275 = v37;
            v277 = v34;
            v47 = a7;
            v15 = v233;
          }

          else
          {
            v47 = a7;
            v15 = v233;
            if (v197 == 1)
            {
              v37 = vld1q_dup_s16(v196);
              v271 = v37;
              v273 = v37;
              v275 = v37;
              v277 = v37;
            }

            else if (v197)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 32, v196, v197, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v271 = 0uLL;
              v273 = 0uLL;
              v275 = 0uLL;
              v277 = 0uLL;
            }
          }

          v200 = v241;
          v48 = v44 + 1;
          if (v241)
          {
            v201 = 0;
            v202 = &v246.i8[32 * v239 + 2 * v240];
            v203 = v242;
            do
            {
              if (v203)
              {
                v204 = 0;
                v205 = &v237->i8[v238 * v201];
                do
                {
                  v205[v204] = v202[v204];
                  ++v204;
                  v203 = v242;
                }

                while (2 * v242 > v204);
                v200 = v241;
              }

              ++v201;
              v202 += 32;
            }

            while (v201 < v200);
          }

LABEL_50:
          v20 = v44 == v225 >> 4;
          v44 = v48;
        }

        while (!v20);
        v20 = v17++ == v210;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v278 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v232 = a8;
  v211 = a8 + a10 - 1;
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
  v210 = v211 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v227 = v23;
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
      v226 = 0;
LABEL_32:
      v223 = v25 - 4;
      v214 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v208 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v226 = v30 >= v24;
    goto LABEL_32;
  }

  v226 = 0;
  v208 = 0;
  v214 = 0;
  v223 = 0;
LABEL_33:
  if (v17 <= v210)
  {
    v225 = a7 + a9 - 1;
    if (a7 >> 4 <= v225 >> 4)
    {
      v32 = a11;
      v235 = v18 >> 4;
      v219 = v18 & 0xF;
      v224 = (v18 & 0xF) + 1;
      v206 = v19 & 0xF;
      v207 = v19 >> 4;
      v217 = 8 * a11;
      v218 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v34.i8 = vcgt_u32(v33, 0x1F0000001FLL);
      v35.i64[0] = -1;
      v36.i64[0] = 0x2000000020;
      *v37.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *v34.i8);
      v213 = v37.i64[0];
      v216 = v37.i32[0] | v37.i32[1];
      v212 = v34.i64[0];
      v233 = v15;
      v215 = 2 * a11;
      do
      {
        v38 = (16 * v17) | 0xF;
        if (16 * v17 <= v232)
        {
          v39 = v232;
        }

        else
        {
          v39 = 16 * v17;
        }

        if (v211 < v38)
        {
          v38 = v211;
        }

        v222 = v39 - 16 * v17;
        v40 = v38 - v39;
        v41 = v40 + 1;
        v42 = v40 != v206;
        v221 = v41;
        v43 = v41 != 16;
        v44 = a7 >> 4;
        v45 = v206 + 1;
        if (v17 != v207)
        {
          v45 = 16;
        }

        v234 = v45;
        if (v17 != v207)
        {
          v42 = v43;
        }

        v220 = v42;
        v46 = v17 & ~(-1 << v214);
        v230 = a2 + (v39 - v232) * v32;
        v47 = a7;
        do
        {
          v49 = 16 * v44;
          v50 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= v47)
          {
            v51 = v47;
          }

          else
          {
            v51 = 16 * v44;
          }

          if (v225 < v50)
          {
            v50 = a7 + a9 - 1;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v44 == v235)
          {
            v54 = v224;
          }

          else
          {
            v54 = 16;
          }

          v55 = 1;
          if (16 * v17 >= v232 && v49 >= v47)
          {
            v56 = v52 != v219;
            if (v44 != v235)
            {
              v56 = v53 != 16;
            }

            v55 = v56 || v220;
          }

          if (v226)
          {
            if (v223 | v214)
            {
              v57 = 0;
              v58 = 0;
              v59 = v214 != 0;
              v60 = 1;
              v62 = v223 != 0;
              v61 = v214;
              v63 = v223;
              do
              {
                --v63;
                if (v62)
                {
                  v58 |= (v44 & ~(-1 << v223) & v60) << v57++;
                }

                else
                {
                  v63 = 0;
                }

                --v61;
                if (v59)
                {
                  v58 |= (v46 & v60) << v57++;
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
              v64 = v58 << 9;
            }

            else
            {
              v64 = 0;
            }

            v72 = v64 + *(v15 + 336) * ((v44 >> v223) + (v17 >> v214) * v208);
          }

          else if (v216)
          {
            v65 = 0;
            v66 = 0;
            v67 = 1;
            v68 = v212;
            v69 = BYTE4(v212);
            v71 = v213;
            v70 = HIDWORD(v213);
            do
            {
              --v70;
              if (v69)
              {
                v66 |= (v67 & v44) << v65++;
              }

              else
              {
                v70 = 0;
              }

              --v71;
              if (v68)
              {
                v66 |= (v67 & v17) << v65++;
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
            v72 = v66 << 9;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v76 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v80 |= (v83 & v44) << v79++;
            }

            else
            {
              v75 = 0;
            }

            --v78;
            if (v82)
            {
              v80 |= (v83 & v17) << v79++;
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
          if (v227)
          {
            v86 = v46;
            v87 = v53;
            v88 = v55;
            memcpy(__dst, (a3 + v72), sizeof(__dst));
            v55 = v88;
            v53 = v87;
            v46 = v86;
            v85 = __dst;
          }

          v89 = (a4 + v84);
          v90 = (v230 + 2 * (v51 - v47));
          if (!(v55 & 1 | (v54 < 0x10u)) && v234 > 0xF)
          {
            v91 = *v89;
            if (v91 == 63)
            {
              v100 = *v85;
              v34 = v85[1];
              v35 = v85[2];
              v36 = v85[3];
              *v90 = vuzp1q_s32(*v85, v35);
              v32 = a11;
              *(v90 + a11) = vuzp2q_s32(v100, v35);
              v93 = 3 * a11;
              v92 = 2 * a11;
              v101 = (v90 + v215);
              *v101 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v101 + a11) = v37;
              v94 = 64;
            }

            else
            {
              v32 = a11;
              v93 = 3 * a11;
              v92 = 2 * a11;
              if (v91 == 1)
              {
                v37 = vld1q_dup_s16(v85->i16);
                *v90 = v37;
                *(v90 + a11) = v37;
                *(v90 + 2 * a11) = v37;
                *(v90 + 3 * a11) = v37;
                v94 = 2;
              }

              else if (*v89)
              {
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v90, a11, v85, v91, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v94 = 0;
                v90->i64[0] = 0;
                v90->i64[1] = 0;
                v95 = (v90->i64 + a11);
                *v95 = 0;
                v95[1] = 0;
                v96 = (v90->i64 + v215);
                *v96 = 0;
                v96[1] = 0;
                v97 = (v90->i64 + 3 * a11);
                *v97 = 0;
                v97[1] = 0;
              }
            }

            v102 = v85->i64 + v94;
            v103 = (v90 + v218);
            v104 = v89[1];
            if (v104 == 63)
            {
              v109 = *v102;
              v34 = *(v102 + 16);
              v35 = *(v102 + 32);
              v36 = *(v102 + 48);
              *v103 = vuzp1q_s32(*v102, v35);
              *(v103 + v32) = vuzp2q_s32(v109, v35);
              v110 = (v103 + v92);
              *v110 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v110 + v32) = v37;
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v37 = vld1q_dup_s16(v102);
              *v103 = v37;
              *(v103 + v32) = v37;
              *(v103 + v92) = v37;
              *(v103 + v93) = v37;
              v105 = 2;
            }

            else if (v89[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v90 + v218), v32, v102, v104, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v92);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v93);
              *v108 = 0;
              v108[1] = 0;
            }

            v111 = v102 + v105;
            v112 = v90 + 1;
            v113 = v89[2];
            if (v113 == 63)
            {
              v118 = *v111;
              v34 = *(v111 + 16);
              v35 = *(v111 + 32);
              v36 = *(v111 + 48);
              *v112 = vuzp1q_s32(*v111, v35);
              *(v112 + v32) = vuzp2q_s32(v118, v35);
              v119 = (v112 + v92);
              *v119 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v119 + v32) = v37;
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v37 = vld1q_dup_s16(v111);
              *v112 = v37;
              *(v112 + v32) = v37;
              *(v112 + v92) = v37;
              *(v112 + v93) = v37;
              v114 = 2;
            }

            else if (v89[2])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v32, v111, v113, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v90[1].i64[1] = 0;
              v115 = (v112->i64 + v32);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v92);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v93);
              *v117 = 0;
              v117[1] = 0;
            }

            v120 = v111 + v114;
            v121 = v103 + 1;
            v122 = v89[3];
            if (v122 == 63)
            {
              v127 = *v120;
              v34 = *(v120 + 16);
              v35 = *(v120 + 32);
              v36 = *(v120 + 48);
              *v121 = vuzp1q_s32(*v120, v35);
              *(v121 + v32) = vuzp2q_s32(v127, v35);
              v128 = (v121 + v92);
              *v128 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v128 + v32) = v37;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v37 = vld1q_dup_s16(v120);
              *v121 = v37;
              *(v121 + v32) = v37;
              *(v121 + v92) = v37;
              *(v121 + v93) = v37;
              v123 = 2;
            }

            else if (v89[3])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v32, v120, v122, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v123 = 0;
              v121->i64[0] = 0;
              v103[1].i64[1] = 0;
              v124 = (v121->i64 + v32);
              *v124 = 0;
              v124[1] = 0;
              v125 = (v121->i64 + v92);
              *v125 = 0;
              v125[1] = 0;
              v126 = (v121->i64 + v93);
              *v126 = 0;
              v126[1] = 0;
            }

            v129 = v120 + v123;
            v130 = (v90 + v217);
            v131 = v89[4];
            if (v131 == 63)
            {
              v136 = *v129;
              v34 = *(v129 + 16);
              v35 = *(v129 + 32);
              v36 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v35);
              *(v130 + v32) = vuzp2q_s32(v136, v35);
              v137 = (v130 + v92);
              *v137 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v137 + v32) = v37;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v37 = vld1q_dup_s16(v129);
              *v130 = v37;
              *(v130 + v32) = v37;
              *(v130 + v92) = v37;
              *(v130 + v93) = v37;
              v132 = 2;
            }

            else if (v89[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v90 + v217), v32, v129, v131, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v130->i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v92);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v93);
              *v135 = 0;
              v135[1] = 0;
            }

            v138 = v129 + v132;
            v139 = (v90 + 12 * a11);
            v140 = v89[5];
            if (v140 == 63)
            {
              v145 = *v138;
              v34 = *(v138 + 16);
              v35 = *(v138 + 32);
              v36 = *(v138 + 48);
              *v139 = vuzp1q_s32(*v138, v35);
              *(v139 + v32) = vuzp2q_s32(v145, v35);
              v146 = (v139 + v92);
              *v146 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v146 + v32) = v37;
              v141 = 64;
            }

            else if (v140 == 1)
            {
              v37 = vld1q_dup_s16(v138);
              *v139 = v37;
              *(v139 + v32) = v37;
              *(v139 + v92) = v37;
              *(v139 + v93) = v37;
              v141 = 2;
            }

            else if (v89[5])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, v32, v138, v140, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v139->i64[1] = 0;
              v142 = (v139->i64 + v32);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v92);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v93);
              *v144 = 0;
              v144[1] = 0;
            }

            v147 = v138 + v141;
            v148 = v130 + 1;
            v149 = v89[6];
            if (v149 == 63)
            {
              v154 = *v147;
              v34 = *(v147 + 16);
              v35 = *(v147 + 32);
              v36 = *(v147 + 48);
              *v148 = vuzp1q_s32(*v147, v35);
              *(v148 + v32) = vuzp2q_s32(v154, v35);
              v155 = (v148 + v92);
              *v155 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v155 + v32) = v37;
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v37 = vld1q_dup_s16(v147);
              *v148 = v37;
              *(v148 + v32) = v37;
              *(v148 + v92) = v37;
              *(v148 + v93) = v37;
              v150 = 2;
            }

            else if (v89[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v32, v147, v149, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v130[1].i64[1] = 0;
              v151 = (v148->i64 + v32);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v92);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v93);
              *v153 = 0;
              v153[1] = 0;
            }

            v156 = v147 + v150;
            v157 = v139 + 1;
            v158 = v89[7];
            if (v158 == 63)
            {
              v162 = *v156;
              v34 = *(v156 + 16);
              v35 = *(v156 + 32);
              v36 = *(v156 + 48);
              *v157 = vuzp1q_s32(*v156, v35);
              *(v157 + v32) = vuzp2q_s32(v162, v35);
              v163 = (v157 + v92);
              *v163 = vuzp1q_s32(v34, v36);
              v37 = vuzp2q_s32(v34, v36);
              *(v163 + v32) = v37;
              v47 = a7;
              v15 = v233;
            }

            else
            {
              v47 = a7;
              v15 = v233;
              if (v158 == 1)
              {
                v37 = vld1q_dup_s16(v156);
                *v157 = v37;
                *(v157 + v32) = v37;
                *(v157 + v92) = v37;
                *(v157 + v93) = v37;
              }

              else if (v158)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v157, v32, v156, v158, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v157->i64[0] = 0;
                v157->i64[1] = 0;
                v159 = (v157->i64 + v32);
                *v159 = 0;
                v159[1] = 0;
                v160 = (v157->i64 + v92);
                *v160 = 0;
                v160[1] = 0;
                v161 = (v157->i64 + v93);
                *v161 = 0;
                v161[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v233;
          block[5] = v85;
          v243 = v54;
          v244 = v234;
          v239 = v222;
          v240 = v51 - v49;
          block[6] = v89;
          v237 = v90;
          v32 = a11;
          v238 = a11;
          v241 = v221;
          v242 = v53;
          if (v55)
          {
            dispatch_sync(*(*(v233 + 8) + 16552), block);
            v47 = a7;
            v15 = v233;
LABEL_49:
            v48 = v44 + 1;
            goto LABEL_50;
          }

          v98 = *v89;
          if (v98 == 63)
          {
            v164 = v85[1];
            v35 = v85[2];
            v36 = v85[3];
            v165 = vuzp2q_s32(*v85, v35);
            v246 = vuzp1q_s32(*v85, v35);
            v248 = v165;
            v37 = vuzp1q_s32(v164, v36);
            v34 = vuzp2q_s32(v164, v36);
            v250 = v37;
            v252 = v34;
            v99 = 64;
          }

          else if (v98 == 1)
          {
            v37 = vld1q_dup_s16(v85->i16);
            v246 = v37;
            v248 = v37;
            v250 = v37;
            v252 = v37;
            v99 = 2;
          }

          else if (*v89)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v85, v98, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v99 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
            v252 = 0uLL;
          }

          v166 = v85->i64 + v99;
          v167 = v89[1];
          if (v167 == 63)
          {
            v169 = *(v166 + 16);
            v35 = *(v166 + 32);
            v36 = *(v166 + 48);
            v170 = vuzp2q_s32(*v166, v35);
            v254 = vuzp1q_s32(*v166, v35);
            v256 = v170;
            v37 = vuzp1q_s32(v169, v36);
            v34 = vuzp2q_s32(v169, v36);
            v258 = v37;
            v260 = v34;
            v168 = 64;
          }

          else if (v167 == 1)
          {
            v37 = vld1q_dup_s16(v166);
            v254 = v37;
            v256 = v37;
            v258 = v37;
            v260 = v37;
            v168 = 2;
          }

          else if (v89[1])
          {
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 32, v166, v167, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v168 = 0;
            v254 = 0uLL;
            v256 = 0uLL;
            v258 = 0uLL;
            v260 = 0uLL;
          }

          v171 = v166 + v168;
          v172 = v89[2];
          if (v172 == 63)
          {
            v174 = *(v171 + 16);
            v35 = *(v171 + 32);
            v36 = *(v171 + 48);
            v175 = vuzp2q_s32(*v171, v35);
            v247 = vuzp1q_s32(*v171, v35);
            v249 = v175;
            v37 = vuzp1q_s32(v174, v36);
            v34 = vuzp2q_s32(v174, v36);
            v251 = v37;
            v253 = v34;
            v173 = 64;
          }

          else if (v172 == 1)
          {
            v37 = vld1q_dup_s16(v171);
            v247 = v37;
            v249 = v37;
            v251 = v37;
            v253 = v37;
            v173 = 2;
          }

          else if (v89[2])
          {
            v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v171, v172, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v173 = 0;
            v247 = 0uLL;
            v249 = 0uLL;
            v251 = 0uLL;
            v253 = 0uLL;
          }

          v176 = v171 + v173;
          v177 = v89[3];
          if (v177 == 63)
          {
            v179 = *(v176 + 16);
            v35 = *(v176 + 32);
            v36 = *(v176 + 48);
            v180 = vuzp2q_s32(*v176, v35);
            v255 = vuzp1q_s32(*v176, v35);
            v257 = v180;
            v37 = vuzp1q_s32(v179, v36);
            v34 = vuzp2q_s32(v179, v36);
            v259 = v37;
            v261 = v34;
            v178 = 64;
          }

          else if (v177 == 1)
          {
            v37 = vld1q_dup_s16(v176);
            v255 = v37;
            v257 = v37;
            v259 = v37;
            v261 = v37;
            v178 = 2;
          }

          else if (v89[3])
          {
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 32, v176, v177, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v178 = 0;
            v255 = 0uLL;
            v257 = 0uLL;
            v259 = 0uLL;
            v261 = 0uLL;
          }

          v181 = v176 + v178;
          v182 = v89[4];
          if (v182 == 63)
          {
            v184 = *(v181 + 16);
            v35 = *(v181 + 32);
            v36 = *(v181 + 48);
            v185 = vuzp2q_s32(*v181, v35);
            v262 = vuzp1q_s32(*v181, v35);
            v264 = v185;
            v37 = vuzp1q_s32(v184, v36);
            v34 = vuzp2q_s32(v184, v36);
            v266 = v37;
            v268 = v34;
            v183 = 64;
          }

          else if (v182 == 1)
          {
            v37 = vld1q_dup_s16(v181);
            v262 = v37;
            v264 = v37;
            v266 = v37;
            v268 = v37;
            v183 = 2;
          }

          else if (v89[4])
          {
            v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 32, v181, v182, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v183 = 0;
            v262 = 0uLL;
            v264 = 0uLL;
            v266 = 0uLL;
            v268 = 0uLL;
          }

          v186 = v181 + v183;
          v187 = v89[5];
          if (v187 == 63)
          {
            v189 = *(v186 + 16);
            v35 = *(v186 + 32);
            v36 = *(v186 + 48);
            v190 = vuzp2q_s32(*v186, v35);
            v270 = vuzp1q_s32(*v186, v35);
            v272 = v190;
            v37 = vuzp1q_s32(v189, v36);
            v34 = vuzp2q_s32(v189, v36);
            v274 = v37;
            v276 = v34;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v37 = vld1q_dup_s16(v186);
            v270 = v37;
            v272 = v37;
            v274 = v37;
            v276 = v37;
            v188 = 2;
          }

          else if (v89[5])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 32, v186, v187, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v188 = 0;
            v270 = 0uLL;
            v272 = 0uLL;
            v274 = 0uLL;
            v276 = 0uLL;
          }

          v191 = v186 + v188;
          v192 = v89[6];
          if (v192 == 63)
          {
            v194 = *(v191 + 16);
            v35 = *(v191 + 32);
            v36 = *(v191 + 48);
            v195 = vuzp2q_s32(*v191, v35);
            v263 = vuzp1q_s32(*v191, v35);
            v265 = v195;
            v37 = vuzp1q_s32(v194, v36);
            v34 = vuzp2q_s32(v194, v36);
            v267 = v37;
            v269 = v34;
            v193 = 64;
          }

          else if (v192 == 1)
          {
            v37 = vld1q_dup_s16(v191);
            v263 = v37;
            v265 = v37;
            v267 = v37;
            v269 = v37;
            v193 = 2;
          }

          else if (v89[6])
          {
            v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 32, v191, v192, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v193 = 0;
            v263 = 0uLL;
            v265 = 0uLL;
            v267 = 0uLL;
            v269 = 0uLL;
          }

          v196 = v191 + v193;
          v197 = v89[7];
          if (v197 == 63)
          {
            v198 = *(v196 + 16);
            v35 = *(v196 + 32);
            v36 = *(v196 + 48);
            v199 = vuzp2q_s32(*v196, v35);
            v271 = vuzp1q_s32(*v196, v35);
            v273 = v199;
            v37 = vuzp1q_s32(v198, v36);
            v34 = vuzp2q_s32(v198, v36);
            v275 = v37;
            v277 = v34;
            v47 = a7;
            v15 = v233;
          }

          else
          {
            v47 = a7;
            v15 = v233;
            if (v197 == 1)
            {
              v37 = vld1q_dup_s16(v196);
              v271 = v37;
              v273 = v37;
              v275 = v37;
              v277 = v37;
            }

            else if (v197)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 32, v196, v197, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v271 = 0uLL;
              v273 = 0uLL;
              v275 = 0uLL;
              v277 = 0uLL;
            }
          }

          v200 = v241;
          v48 = v44 + 1;
          if (v241)
          {
            v201 = 0;
            v202 = &v246.i8[32 * v239 + 2 * v240];
            v203 = v242;
            do
            {
              if (v203)
              {
                v204 = 0;
                v205 = &v237->i8[v238 * v201];
                do
                {
                  v205[v204] = v202[v204];
                  ++v204;
                  v203 = v242;
                }

                while (2 * v242 > v204);
                v200 = v241;
              }

              ++v201;
              v202 += 32;
            }

            while (v201 < v200);
          }

LABEL_50:
          v20 = v44 == v225 >> 4;
          v44 = v48;
        }

        while (!v20);
        v20 = v17++ == v210;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v272 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v225 = a8;
  v16 = a8 >> 4;
  v205 = a8 + a10 - 1;
  v207 = v205 >> 4;
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
  v220 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v207)
  {
    v218 = a7 + a9 - 1;
    if (a7 >> 4 <= v218 >> 4)
    {
      v24 = a11;
      v229 = (a5 - 1) >> 4;
      v202 = a5 - 1;
      v211 = (a5 - 1) & 0xF;
      v203 = (a6 - 1) & 0xF;
      v204 = (a6 - 1) >> 4;
      v209 = 8 * a11;
      v210 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v26.i8 = vcgt_u32(v25, 0x1F0000001FLL);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *v26.i8);
      v216 = v29.i64[0];
      v217 = v29.i32[0] | v29.i32[1];
      v215 = v26.i64[0];
      v201 = 8 * v18 * v17;
      v227 = v15;
      v208 = 2 * a11;
      do
      {
        v30 = (16 * v16) | 0xF;
        if (16 * v16 <= v225)
        {
          v31 = v225;
        }

        else
        {
          v31 = 16 * v16;
        }

        if (v205 < v30)
        {
          v30 = v205;
        }

        v224 = 16 * v16;
        v214 = v31 - 16 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v203;
        v213 = v33;
        v35 = v33 != 16;
        v36 = a7 >> 4;
        v37 = v203 + 1;
        if (v16 != v204)
        {
          v37 = 16;
        }

        v228 = v37;
        if (v16 != v204)
        {
          v34 = v35;
        }

        v212 = v34;
        v223 = a2 + (v31 - v225) * v24;
        v38 = a7;
        do
        {
          v39 = 16 * v36;
          v40 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v38)
          {
            v41 = v38;
          }

          else
          {
            v41 = 16 * v36;
          }

          if (v218 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v36 == v229)
          {
            v44 = v211 + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (v224 >= v225 && v39 >= v38)
          {
            v46 = v42 != v211;
            if (v36 != v229)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v212;
          }

          if (isLevelTiled)
          {
            v67 = 0;
            v68 = v201 >> (*(v15 + 57) != 0);
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
              v71 = 16;
              v70 = 1;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v67 = 16;
              v70 = 1;
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

            v191 = (v67 >> 4) - 1;
            if (v69)
            {
              v192 = 0;
              if (v70)
              {
                goto LABEL_234;
              }

LABEL_223:
              v193 = 32 - __clz(~(-1 << -__clz(((v71 + 15) >> 4) - 1)));
              if (v193 | v192)
              {
                goto LABEL_224;
              }

LABEL_235:
              v200 = 0;
            }

            else
            {
              v192 = 32 - __clz(~(-1 << -__clz(v191)));
              if ((v70 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v193 = 0;
              if (!v192)
              {
                goto LABEL_235;
              }

LABEL_224:
              v194 = 0;
              v195 = 0;
              v196 = v36 & v191;
              v197 = v192 != 0;
              v198 = v193 != 0;
              v199 = 1;
              do
              {
                --v192;
                if (v197)
                {
                  v195 |= (v199 & v196) << v194++;
                }

                else
                {
                  v192 = 0;
                }

                --v193;
                if (v198)
                {
                  v195 |= (v199 & v16 & ((v71 >> 4) - 1)) << v194++;
                }

                else
                {
                  v193 = 0;
                }

                v199 *= 2;
                --v194;
                v198 = v193 != 0;
                v197 = v192 != 0;
              }

              while (v193 | v192);
              v200 = v195 << 9;
            }

            v54 = v200 + ((v39 / v67 + v224 / v71 * ((v67 + v202) / v67)) << 14);
            goto LABEL_55;
          }

          if (v217)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v215;
            v51 = BYTE4(v215);
            v53 = v216;
            v52 = HIDWORD(v216);
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
                v48 |= (v49 & v16) << v47++;
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
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

LABEL_55:
          v55 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v58 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_80:
              v66 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_80;
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
LABEL_81:
          v72 = (a3 + v54);
          if (v220)
          {
            memcpy(__dst, v72, sizeof(__dst));
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = (v223 + 2 * (v41 - v38));
          if (v45 & 1 | (v44 < 0x10u) || v228 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v227;
            block[5] = v72;
            v237 = v44;
            v238 = v228;
            v233 = v214;
            v234 = v41 - v39;
            block[6] = v73;
            v231 = v74;
            v24 = a11;
            v232 = a11;
            v235 = v213;
            v236 = v43;
            if (v45)
            {
              dispatch_sync(*(*(v227 + 8) + 16552), block);
              v38 = a7;
              v15 = v227;
LABEL_145:
              v143 = v36 + 1;
              goto LABEL_29;
            }

            v82 = *v73;
            v38 = a7;
            if (v82 == 63)
            {
              v149 = v72[1];
              v27 = v72[2];
              v28 = v72[3];
              v150 = vuzp2q_s32(*v72, v27);
              v240 = vuzp1q_s32(*v72, v27);
              v242 = v150;
              v29 = vuzp1q_s32(v149, v28);
              v26 = vuzp2q_s32(v149, v28);
              v244 = v29;
              v246 = v26;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v29 = vld1q_dup_s16(v72->i16);
              v240 = v29;
              v242 = v29;
              v244 = v29;
              v246 = v29;
              v83 = 2;
            }

            else if (*v73)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 32, v72, v82, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v83 = 0;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
            }

            v151 = v72->i64 + v83;
            v152 = v73[1];
            if (v152 == 63)
            {
              v154 = *(v151 + 16);
              v27 = *(v151 + 32);
              v28 = *(v151 + 48);
              v155 = vuzp2q_s32(*v151, v27);
              v248 = vuzp1q_s32(*v151, v27);
              v250 = v155;
              v29 = vuzp1q_s32(v154, v28);
              v26 = vuzp2q_s32(v154, v28);
              v252 = v29;
              v254 = v26;
              v153 = 64;
            }

            else if (v152 == 1)
            {
              v29 = vld1q_dup_s16(v151);
              v248 = v29;
              v250 = v29;
              v252 = v29;
              v254 = v29;
              v153 = 2;
            }

            else if (v73[1])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v151, v152, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v153 = 0;
              v248 = 0uLL;
              v250 = 0uLL;
              v252 = 0uLL;
              v254 = 0uLL;
            }

            v156 = v151 + v153;
            v157 = v73[2];
            if (v157 == 63)
            {
              v159 = *(v156 + 16);
              v27 = *(v156 + 32);
              v28 = *(v156 + 48);
              v160 = vuzp2q_s32(*v156, v27);
              v241 = vuzp1q_s32(*v156, v27);
              v243 = v160;
              v29 = vuzp1q_s32(v159, v28);
              v26 = vuzp2q_s32(v159, v28);
              v245 = v29;
              v247 = v26;
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v29 = vld1q_dup_s16(v156);
              v241 = v29;
              v243 = v29;
              v245 = v29;
              v247 = v29;
              v158 = 2;
            }

            else if (v73[2])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v156, v157, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v158 = 0;
              v241 = 0uLL;
              v243 = 0uLL;
              v245 = 0uLL;
              v247 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v73[3];
            if (v162 == 63)
            {
              v164 = *(v161 + 16);
              v27 = *(v161 + 32);
              v28 = *(v161 + 48);
              v165 = vuzp2q_s32(*v161, v27);
              v249 = vuzp1q_s32(*v161, v27);
              v251 = v165;
              v29 = vuzp1q_s32(v164, v28);
              v26 = vuzp2q_s32(v164, v28);
              v253 = v29;
              v255 = v26;
              v163 = 64;
            }

            else if (v162 == 1)
            {
              v29 = vld1q_dup_s16(v161);
              v249 = v29;
              v251 = v29;
              v253 = v29;
              v255 = v29;
              v163 = 2;
            }

            else if (v73[3])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v161, v162, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v163 = 0;
              v249 = 0uLL;
              v251 = 0uLL;
              v253 = 0uLL;
              v255 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v73[4];
            if (v167 == 63)
            {
              v169 = *(v166 + 16);
              v27 = *(v166 + 32);
              v28 = *(v166 + 48);
              v170 = vuzp2q_s32(*v166, v27);
              v256 = vuzp1q_s32(*v166, v27);
              v258 = v170;
              v29 = vuzp1q_s32(v169, v28);
              v26 = vuzp2q_s32(v169, v28);
              v260 = v29;
              v262 = v26;
              v168 = 64;
            }

            else if (v167 == 1)
            {
              v29 = vld1q_dup_s16(v166);
              v256 = v29;
              v258 = v29;
              v260 = v29;
              v262 = v29;
              v168 = 2;
            }

            else if (v73[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 32, v166, v167, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v168 = 0;
              v256 = 0uLL;
              v258 = 0uLL;
              v260 = 0uLL;
              v262 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v73[5];
            if (v172 == 63)
            {
              v174 = *(v171 + 16);
              v27 = *(v171 + 32);
              v28 = *(v171 + 48);
              v175 = vuzp2q_s32(*v171, v27);
              v264 = vuzp1q_s32(*v171, v27);
              v266 = v175;
              v29 = vuzp1q_s32(v174, v28);
              v26 = vuzp2q_s32(v174, v28);
              v268 = v29;
              v270 = v26;
              v173 = 64;
            }

            else if (v172 == 1)
            {
              v29 = vld1q_dup_s16(v171);
              v264 = v29;
              v266 = v29;
              v268 = v29;
              v270 = v29;
              v173 = 2;
            }

            else if (v73[5])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 32, v171, v172, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v173 = 0;
              v264 = 0uLL;
              v266 = 0uLL;
              v268 = 0uLL;
              v270 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v73[6];
            if (v177 == 63)
            {
              v179 = *(v176 + 16);
              v27 = *(v176 + 32);
              v28 = *(v176 + 48);
              v180 = vuzp2q_s32(*v176, v27);
              v257 = vuzp1q_s32(*v176, v27);
              v259 = v180;
              v29 = vuzp1q_s32(v179, v28);
              v26 = vuzp2q_s32(v179, v28);
              v261 = v29;
              v263 = v26;
              v178 = 64;
            }

            else if (v177 == 1)
            {
              v29 = vld1q_dup_s16(v176);
              v257 = v29;
              v259 = v29;
              v261 = v29;
              v263 = v29;
              v178 = 2;
            }

            else if (v73[6])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 32, v176, v177, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v178 = 0;
              v257 = 0uLL;
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
            }

            v181 = v176 + v178;
            v182 = v73[7];
            if (v182 == 63)
            {
              v183 = *(v181 + 16);
              v27 = *(v181 + 32);
              v28 = *(v181 + 48);
              v184 = vuzp2q_s32(*v181, v27);
              v265 = vuzp1q_s32(*v181, v27);
              v267 = v184;
              v29 = vuzp1q_s32(v183, v28);
              v26 = vuzp2q_s32(v183, v28);
              v269 = v29;
              v271 = v26;
              v15 = v227;
              v143 = v36 + 1;
            }

            else
            {
              v15 = v227;
              v143 = v36 + 1;
              if (v182 == 1)
              {
                v29 = vld1q_dup_s16(v181);
                v265 = v29;
                v267 = v29;
                v269 = v29;
                v271 = v29;
              }

              else if (v182)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 32, v181, v182, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v265 = 0uLL;
                v267 = 0uLL;
                v269 = 0uLL;
                v271 = 0uLL;
              }
            }

            v185 = v235;
            if (v235)
            {
              v186 = 0;
              v187 = &v240.i8[32 * v233 + 2 * v234];
              v188 = v236;
              do
              {
                if (v188)
                {
                  v189 = 0;
                  v190 = &v231->i8[v232 * v186];
                  do
                  {
                    v190[v189] = v187[v189];
                    ++v189;
                    v188 = v236;
                  }

                  while (2 * v236 > v189);
                  v185 = v235;
                }

                ++v186;
                v187 += 32;
              }

              while (v186 < v185);
            }
          }

          else
          {
            v75 = *v73;
            if (v75 == 63)
            {
              v84 = *v72;
              v26 = v72[1];
              v27 = v72[2];
              v28 = v72[3];
              *v74 = vuzp1q_s32(*v72, v27);
              v24 = a11;
              *(v74 + a11) = vuzp2q_s32(v84, v27);
              v77 = 3 * a11;
              v76 = 2 * a11;
              v85 = (v74 + v208);
              *v85 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v85 + a11) = v29;
              v78 = 64;
            }

            else
            {
              v24 = a11;
              v77 = 3 * a11;
              v76 = 2 * a11;
              if (v75 == 1)
              {
                v29 = vld1q_dup_s16(v72->i16);
                *v74 = v29;
                *(v74 + a11) = v29;
                *(v74 + 2 * a11) = v29;
                *(v74 + 3 * a11) = v29;
                v78 = 2;
              }

              else if (*v73)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v74, a11, v72, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v78 = 0;
                v74->i64[0] = 0;
                v74->i64[1] = 0;
                v79 = (v74->i64 + a11);
                *v79 = 0;
                v79[1] = 0;
                v80 = (v74->i64 + v208);
                *v80 = 0;
                v80[1] = 0;
                v81 = (v74->i64 + 3 * a11);
                *v81 = 0;
                v81[1] = 0;
              }
            }

            v86 = v72->i64 + v78;
            v87 = (v74 + v210);
            v88 = v73[1];
            if (v88 == 63)
            {
              v93 = *v86;
              v26 = *(v86 + 16);
              v27 = *(v86 + 32);
              v28 = *(v86 + 48);
              *v87 = vuzp1q_s32(*v86, v27);
              *(v87 + v24) = vuzp2q_s32(v93, v27);
              v94 = (v87 + v76);
              *v94 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v94 + v24) = v29;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v29 = vld1q_dup_s16(v86);
              *v87 = v29;
              *(v87 + v24) = v29;
              *(v87 + v76) = v29;
              *(v87 + v77) = v29;
              v89 = 2;
            }

            else if (v73[1])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v74 + v210), v24, v86, v88, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v87->i64[1] = 0;
              v90 = (v87->i64 + v24);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v87->i64 + v76);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v87->i64 + v77);
              *v92 = 0;
              v92[1] = 0;
            }

            v95 = v86 + v89;
            v96 = v74 + 1;
            v97 = v73[2];
            if (v97 == 63)
            {
              v102 = *v95;
              v26 = *(v95 + 16);
              v27 = *(v95 + 32);
              v28 = *(v95 + 48);
              *v96 = vuzp1q_s32(*v95, v27);
              *(v96 + v24) = vuzp2q_s32(v102, v27);
              v103 = (v96 + v76);
              *v103 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v103 + v24) = v29;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v29 = vld1q_dup_s16(v95);
              *v96 = v29;
              *(v96 + v24) = v29;
              *(v96 + v76) = v29;
              *(v96 + v77) = v29;
              v98 = 2;
            }

            else if (v73[2])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v96, v24, v95, v97, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v98 = 0;
              v96->i64[0] = 0;
              v74[1].i64[1] = 0;
              v99 = (v96->i64 + v24);
              *v99 = 0;
              v99[1] = 0;
              v100 = (v96->i64 + v76);
              *v100 = 0;
              v100[1] = 0;
              v101 = (v96->i64 + v77);
              *v101 = 0;
              v101[1] = 0;
            }

            v104 = v95 + v98;
            v105 = v87 + 1;
            v106 = v73[3];
            if (v106 == 63)
            {
              v111 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              *v105 = vuzp1q_s32(*v104, v27);
              *(v105 + v24) = vuzp2q_s32(v111, v27);
              v112 = (v105 + v76);
              *v112 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v112 + v24) = v29;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v29 = vld1q_dup_s16(v104);
              *v105 = v29;
              *(v105 + v24) = v29;
              *(v105 + v76) = v29;
              *(v105 + v77) = v29;
              v107 = 2;
            }

            else if (v73[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v24, v104, v106, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v105->i64[0] = 0;
              v87[1].i64[1] = 0;
              v108 = (v105->i64 + v24);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v105->i64 + v76);
              *v109 = 0;
              v109[1] = 0;
              v110 = (v105->i64 + v77);
              *v110 = 0;
              v110[1] = 0;
            }

            v113 = v104 + v107;
            v114 = (v74 + v209);
            v115 = v73[4];
            if (v115 == 63)
            {
              v120 = *v113;
              v26 = *(v113 + 16);
              v27 = *(v113 + 32);
              v28 = *(v113 + 48);
              *v114 = vuzp1q_s32(*v113, v27);
              *(v114 + v24) = vuzp2q_s32(v120, v27);
              v121 = (v114 + v76);
              *v121 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v121 + v24) = v29;
              v116 = 64;
            }

            else if (v115 == 1)
            {
              v29 = vld1q_dup_s16(v113);
              *v114 = v29;
              *(v114 + v24) = v29;
              *(v114 + v76) = v29;
              *(v114 + v77) = v29;
              v116 = 2;
            }

            else if (v73[4])
            {
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v74 + v209), v24, v113, v115, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v114->i64[1] = 0;
              v117 = (v114->i64 + v24);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v114->i64 + v76);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v114->i64 + v77);
              *v119 = 0;
              v119[1] = 0;
            }

            v122 = v113 + v116;
            v123 = (v74 + 12 * a11);
            v124 = v73[5];
            if (v124 == 63)
            {
              v129 = *v122;
              v26 = *(v122 + 16);
              v27 = *(v122 + 32);
              v28 = *(v122 + 48);
              *v123 = vuzp1q_s32(*v122, v27);
              *(v123 + v24) = vuzp2q_s32(v129, v27);
              v130 = (v123 + v76);
              *v130 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v130 + v24) = v29;
              v125 = 64;
            }

            else if (v124 == 1)
            {
              v29 = vld1q_dup_s16(v122);
              *v123 = v29;
              *(v123 + v24) = v29;
              *(v123 + v76) = v29;
              *(v123 + v77) = v29;
              v125 = 2;
            }

            else if (v73[5])
            {
              v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v123, v24, v122, v124, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v125 = 0;
              v123->i64[0] = 0;
              v123->i64[1] = 0;
              v126 = (v123->i64 + v24);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v123->i64 + v76);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v123->i64 + v77);
              *v128 = 0;
              v128[1] = 0;
            }

            v131 = v122 + v125;
            v132 = v114 + 1;
            v133 = v73[6];
            if (v133 == 63)
            {
              v138 = *v131;
              v26 = *(v131 + 16);
              v27 = *(v131 + 32);
              v28 = *(v131 + 48);
              *v132 = vuzp1q_s32(*v131, v27);
              *(v132 + v24) = vuzp2q_s32(v138, v27);
              v139 = (v132 + v76);
              *v139 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v139 + v24) = v29;
              v134 = 64;
            }

            else if (v133 == 1)
            {
              v29 = vld1q_dup_s16(v131);
              *v132 = v29;
              *(v132 + v24) = v29;
              *(v132 + v76) = v29;
              *(v132 + v77) = v29;
              v134 = 2;
            }

            else if (v73[6])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v24, v131, v133, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v134 = 0;
              v132->i64[0] = 0;
              v114[1].i64[1] = 0;
              v135 = (v132->i64 + v24);
              *v135 = 0;
              v135[1] = 0;
              v136 = (v132->i64 + v76);
              *v136 = 0;
              v136[1] = 0;
              v137 = (v132->i64 + v77);
              *v137 = 0;
              v137[1] = 0;
            }

            v140 = v131 + v134;
            v141 = v123 + 1;
            v142 = v73[7];
            if (v142 == 63)
            {
              v147 = *v140;
              v26 = *(v140 + 16);
              v27 = *(v140 + 32);
              v28 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v27);
              *(v141 + v24) = vuzp2q_s32(v147, v27);
              v148 = (v141 + v76);
              *v148 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v148 + v24) = v29;
              v38 = a7;
              v15 = v227;
              goto LABEL_145;
            }

            v38 = a7;
            v15 = v227;
            v143 = v36 + 1;
            if (v142 == 1)
            {
              v29 = vld1q_dup_s16(v140);
              *v141 = v29;
              *(v141 + v24) = v29;
              *(v141 + v76) = v29;
              *(v141 + v77) = v29;
            }

            else if (v142)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v76);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v77);
              *v146 = 0;
              v146[1] = 0;
            }
          }

LABEL_29:
          v20 = v36 == v218 >> 4;
          v36 = v143;
        }

        while (!v20);
        v20 = v16++ == v207;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v272 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v225 = a8;
  v16 = a8 >> 4;
  v205 = a8 + a10 - 1;
  v207 = v205 >> 4;
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
  v220 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v207)
  {
    v218 = a7 + a9 - 1;
    if (a7 >> 4 <= v218 >> 4)
    {
      v24 = a11;
      v229 = (a5 - 1) >> 4;
      v202 = a5 - 1;
      v211 = (a5 - 1) & 0xF;
      v203 = (a6 - 1) & 0xF;
      v204 = (a6 - 1) >> 4;
      v209 = 8 * a11;
      v210 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v26.i8 = vcgt_u32(v25, 0x1F0000001FLL);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *v26.i8);
      v216 = v29.i64[0];
      v217 = v29.i32[0] | v29.i32[1];
      v215 = v26.i64[0];
      v201 = 8 * v18 * v17;
      v227 = v15;
      v208 = 2 * a11;
      do
      {
        v30 = (16 * v16) | 0xF;
        if (16 * v16 <= v225)
        {
          v31 = v225;
        }

        else
        {
          v31 = 16 * v16;
        }

        if (v205 < v30)
        {
          v30 = v205;
        }

        v224 = 16 * v16;
        v214 = v31 - 16 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v203;
        v213 = v33;
        v35 = v33 != 16;
        v36 = a7 >> 4;
        v37 = v203 + 1;
        if (v16 != v204)
        {
          v37 = 16;
        }

        v228 = v37;
        if (v16 != v204)
        {
          v34 = v35;
        }

        v212 = v34;
        v223 = a2 + (v31 - v225) * v24;
        v38 = a7;
        do
        {
          v39 = 16 * v36;
          v40 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v38)
          {
            v41 = v38;
          }

          else
          {
            v41 = 16 * v36;
          }

          if (v218 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v36 == v229)
          {
            v44 = v211 + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (v224 >= v225 && v39 >= v38)
          {
            v46 = v42 != v211;
            if (v36 != v229)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v212;
          }

          if (isLevelTiled)
          {
            v67 = 0;
            v68 = v201 >> (*(v15 + 57) != 0);
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
              v71 = 16;
              v70 = 1;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v67 = 16;
              v70 = 1;
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

            v191 = (v67 >> 4) - 1;
            if (v69)
            {
              v192 = 0;
              if (v70)
              {
                goto LABEL_234;
              }

LABEL_223:
              v193 = 32 - __clz(~(-1 << -__clz(((v71 + 15) >> 4) - 1)));
              if (v193 | v192)
              {
                goto LABEL_224;
              }

LABEL_235:
              v200 = 0;
            }

            else
            {
              v192 = 32 - __clz(~(-1 << -__clz(v191)));
              if ((v70 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v193 = 0;
              if (!v192)
              {
                goto LABEL_235;
              }

LABEL_224:
              v194 = 0;
              v195 = 0;
              v196 = v36 & v191;
              v197 = v192 != 0;
              v198 = v193 != 0;
              v199 = 1;
              do
              {
                --v192;
                if (v197)
                {
                  v195 |= (v199 & v196) << v194++;
                }

                else
                {
                  v192 = 0;
                }

                --v193;
                if (v198)
                {
                  v195 |= (v199 & v16 & ((v71 >> 4) - 1)) << v194++;
                }

                else
                {
                  v193 = 0;
                }

                v199 *= 2;
                --v194;
                v198 = v193 != 0;
                v197 = v192 != 0;
              }

              while (v193 | v192);
              v200 = v195 << 9;
            }

            v54 = v200 + ((v39 / v67 + v224 / v71 * ((v67 + v202) / v67)) << 14);
            goto LABEL_55;
          }

          if (v217)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v215;
            v51 = BYTE4(v215);
            v53 = v216;
            v52 = HIDWORD(v216);
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
                v48 |= (v49 & v16) << v47++;
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
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

LABEL_55:
          v55 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v58 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 15;
          if (v59 < 0x20)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_80:
              v66 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 4) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_80;
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
LABEL_81:
          v72 = (a3 + v54);
          if (v220)
          {
            memcpy(__dst, v72, sizeof(__dst));
            v72 = __dst;
          }

          v73 = (a4 + v66);
          v74 = (v223 + 2 * (v41 - v38));
          if (v45 & 1 | (v44 < 0x10u) || v228 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v227;
            block[5] = v72;
            v237 = v44;
            v238 = v228;
            v233 = v214;
            v234 = v41 - v39;
            block[6] = v73;
            v231 = v74;
            v24 = a11;
            v232 = a11;
            v235 = v213;
            v236 = v43;
            if (v45)
            {
              dispatch_sync(*(*(v227 + 8) + 16552), block);
              v38 = a7;
              v15 = v227;
LABEL_145:
              v143 = v36 + 1;
              goto LABEL_29;
            }

            v82 = *v73;
            v38 = a7;
            if (v82 == 63)
            {
              v149 = v72[1];
              v27 = v72[2];
              v28 = v72[3];
              v150 = vuzp2q_s32(*v72, v27);
              v240 = vuzp1q_s32(*v72, v27);
              v242 = v150;
              v29 = vuzp1q_s32(v149, v28);
              v26 = vuzp2q_s32(v149, v28);
              v244 = v29;
              v246 = v26;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v29 = vld1q_dup_s16(v72->i16);
              v240 = v29;
              v242 = v29;
              v244 = v29;
              v246 = v29;
              v83 = 2;
            }

            else if (*v73)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 32, v72, v82, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v83 = 0;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
            }

            v151 = v72->i64 + v83;
            v152 = v73[1];
            if (v152 == 63)
            {
              v154 = *(v151 + 16);
              v27 = *(v151 + 32);
              v28 = *(v151 + 48);
              v155 = vuzp2q_s32(*v151, v27);
              v248 = vuzp1q_s32(*v151, v27);
              v250 = v155;
              v29 = vuzp1q_s32(v154, v28);
              v26 = vuzp2q_s32(v154, v28);
              v252 = v29;
              v254 = v26;
              v153 = 64;
            }

            else if (v152 == 1)
            {
              v29 = vld1q_dup_s16(v151);
              v248 = v29;
              v250 = v29;
              v252 = v29;
              v254 = v29;
              v153 = 2;
            }

            else if (v73[1])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 32, v151, v152, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v153 = 0;
              v248 = 0uLL;
              v250 = 0uLL;
              v252 = 0uLL;
              v254 = 0uLL;
            }

            v156 = v151 + v153;
            v157 = v73[2];
            if (v157 == 63)
            {
              v159 = *(v156 + 16);
              v27 = *(v156 + 32);
              v28 = *(v156 + 48);
              v160 = vuzp2q_s32(*v156, v27);
              v241 = vuzp1q_s32(*v156, v27);
              v243 = v160;
              v29 = vuzp1q_s32(v159, v28);
              v26 = vuzp2q_s32(v159, v28);
              v245 = v29;
              v247 = v26;
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v29 = vld1q_dup_s16(v156);
              v241 = v29;
              v243 = v29;
              v245 = v29;
              v247 = v29;
              v158 = 2;
            }

            else if (v73[2])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v156, v157, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v158 = 0;
              v241 = 0uLL;
              v243 = 0uLL;
              v245 = 0uLL;
              v247 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v73[3];
            if (v162 == 63)
            {
              v164 = *(v161 + 16);
              v27 = *(v161 + 32);
              v28 = *(v161 + 48);
              v165 = vuzp2q_s32(*v161, v27);
              v249 = vuzp1q_s32(*v161, v27);
              v251 = v165;
              v29 = vuzp1q_s32(v164, v28);
              v26 = vuzp2q_s32(v164, v28);
              v253 = v29;
              v255 = v26;
              v163 = 64;
            }

            else if (v162 == 1)
            {
              v29 = vld1q_dup_s16(v161);
              v249 = v29;
              v251 = v29;
              v253 = v29;
              v255 = v29;
              v163 = 2;
            }

            else if (v73[3])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 32, v161, v162, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v163 = 0;
              v249 = 0uLL;
              v251 = 0uLL;
              v253 = 0uLL;
              v255 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v73[4];
            if (v167 == 63)
            {
              v169 = *(v166 + 16);
              v27 = *(v166 + 32);
              v28 = *(v166 + 48);
              v170 = vuzp2q_s32(*v166, v27);
              v256 = vuzp1q_s32(*v166, v27);
              v258 = v170;
              v29 = vuzp1q_s32(v169, v28);
              v26 = vuzp2q_s32(v169, v28);
              v260 = v29;
              v262 = v26;
              v168 = 64;
            }

            else if (v167 == 1)
            {
              v29 = vld1q_dup_s16(v166);
              v256 = v29;
              v258 = v29;
              v260 = v29;
              v262 = v29;
              v168 = 2;
            }

            else if (v73[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 32, v166, v167, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v168 = 0;
              v256 = 0uLL;
              v258 = 0uLL;
              v260 = 0uLL;
              v262 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v73[5];
            if (v172 == 63)
            {
              v174 = *(v171 + 16);
              v27 = *(v171 + 32);
              v28 = *(v171 + 48);
              v175 = vuzp2q_s32(*v171, v27);
              v264 = vuzp1q_s32(*v171, v27);
              v266 = v175;
              v29 = vuzp1q_s32(v174, v28);
              v26 = vuzp2q_s32(v174, v28);
              v268 = v29;
              v270 = v26;
              v173 = 64;
            }

            else if (v172 == 1)
            {
              v29 = vld1q_dup_s16(v171);
              v264 = v29;
              v266 = v29;
              v268 = v29;
              v270 = v29;
              v173 = 2;
            }

            else if (v73[5])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 32, v171, v172, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v173 = 0;
              v264 = 0uLL;
              v266 = 0uLL;
              v268 = 0uLL;
              v270 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v73[6];
            if (v177 == 63)
            {
              v179 = *(v176 + 16);
              v27 = *(v176 + 32);
              v28 = *(v176 + 48);
              v180 = vuzp2q_s32(*v176, v27);
              v257 = vuzp1q_s32(*v176, v27);
              v259 = v180;
              v29 = vuzp1q_s32(v179, v28);
              v26 = vuzp2q_s32(v179, v28);
              v261 = v29;
              v263 = v26;
              v178 = 64;
            }

            else if (v177 == 1)
            {
              v29 = vld1q_dup_s16(v176);
              v257 = v29;
              v259 = v29;
              v261 = v29;
              v263 = v29;
              v178 = 2;
            }

            else if (v73[6])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 32, v176, v177, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v178 = 0;
              v257 = 0uLL;
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
            }

            v181 = v176 + v178;
            v182 = v73[7];
            if (v182 == 63)
            {
              v183 = *(v181 + 16);
              v27 = *(v181 + 32);
              v28 = *(v181 + 48);
              v184 = vuzp2q_s32(*v181, v27);
              v265 = vuzp1q_s32(*v181, v27);
              v267 = v184;
              v29 = vuzp1q_s32(v183, v28);
              v26 = vuzp2q_s32(v183, v28);
              v269 = v29;
              v271 = v26;
              v15 = v227;
              v143 = v36 + 1;
            }

            else
            {
              v15 = v227;
              v143 = v36 + 1;
              if (v182 == 1)
              {
                v29 = vld1q_dup_s16(v181);
                v265 = v29;
                v267 = v29;
                v269 = v29;
                v271 = v29;
              }

              else if (v182)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 32, v181, v182, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v265 = 0uLL;
                v267 = 0uLL;
                v269 = 0uLL;
                v271 = 0uLL;
              }
            }

            v185 = v235;
            if (v235)
            {
              v186 = 0;
              v187 = &v240.i8[32 * v233 + 2 * v234];
              v188 = v236;
              do
              {
                if (v188)
                {
                  v189 = 0;
                  v190 = &v231->i8[v232 * v186];
                  do
                  {
                    v190[v189] = v187[v189];
                    ++v189;
                    v188 = v236;
                  }

                  while (2 * v236 > v189);
                  v185 = v235;
                }

                ++v186;
                v187 += 32;
              }

              while (v186 < v185);
            }
          }

          else
          {
            v75 = *v73;
            if (v75 == 63)
            {
              v84 = *v72;
              v26 = v72[1];
              v27 = v72[2];
              v28 = v72[3];
              *v74 = vuzp1q_s32(*v72, v27);
              v24 = a11;
              *(v74 + a11) = vuzp2q_s32(v84, v27);
              v77 = 3 * a11;
              v76 = 2 * a11;
              v85 = (v74 + v208);
              *v85 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v85 + a11) = v29;
              v78 = 64;
            }

            else
            {
              v24 = a11;
              v77 = 3 * a11;
              v76 = 2 * a11;
              if (v75 == 1)
              {
                v29 = vld1q_dup_s16(v72->i16);
                *v74 = v29;
                *(v74 + a11) = v29;
                *(v74 + 2 * a11) = v29;
                *(v74 + 3 * a11) = v29;
                v78 = 2;
              }

              else if (*v73)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v74, a11, v72, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v78 = 0;
                v74->i64[0] = 0;
                v74->i64[1] = 0;
                v79 = (v74->i64 + a11);
                *v79 = 0;
                v79[1] = 0;
                v80 = (v74->i64 + v208);
                *v80 = 0;
                v80[1] = 0;
                v81 = (v74->i64 + 3 * a11);
                *v81 = 0;
                v81[1] = 0;
              }
            }

            v86 = v72->i64 + v78;
            v87 = (v74 + v210);
            v88 = v73[1];
            if (v88 == 63)
            {
              v93 = *v86;
              v26 = *(v86 + 16);
              v27 = *(v86 + 32);
              v28 = *(v86 + 48);
              *v87 = vuzp1q_s32(*v86, v27);
              *(v87 + v24) = vuzp2q_s32(v93, v27);
              v94 = (v87 + v76);
              *v94 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v94 + v24) = v29;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v29 = vld1q_dup_s16(v86);
              *v87 = v29;
              *(v87 + v24) = v29;
              *(v87 + v76) = v29;
              *(v87 + v77) = v29;
              v89 = 2;
            }

            else if (v73[1])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v74 + v210), v24, v86, v88, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v87->i64[1] = 0;
              v90 = (v87->i64 + v24);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v87->i64 + v76);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v87->i64 + v77);
              *v92 = 0;
              v92[1] = 0;
            }

            v95 = v86 + v89;
            v96 = v74 + 1;
            v97 = v73[2];
            if (v97 == 63)
            {
              v102 = *v95;
              v26 = *(v95 + 16);
              v27 = *(v95 + 32);
              v28 = *(v95 + 48);
              *v96 = vuzp1q_s32(*v95, v27);
              *(v96 + v24) = vuzp2q_s32(v102, v27);
              v103 = (v96 + v76);
              *v103 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v103 + v24) = v29;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v29 = vld1q_dup_s16(v95);
              *v96 = v29;
              *(v96 + v24) = v29;
              *(v96 + v76) = v29;
              *(v96 + v77) = v29;
              v98 = 2;
            }

            else if (v73[2])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v96, v24, v95, v97, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v98 = 0;
              v96->i64[0] = 0;
              v74[1].i64[1] = 0;
              v99 = (v96->i64 + v24);
              *v99 = 0;
              v99[1] = 0;
              v100 = (v96->i64 + v76);
              *v100 = 0;
              v100[1] = 0;
              v101 = (v96->i64 + v77);
              *v101 = 0;
              v101[1] = 0;
            }

            v104 = v95 + v98;
            v105 = v87 + 1;
            v106 = v73[3];
            if (v106 == 63)
            {
              v111 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              *v105 = vuzp1q_s32(*v104, v27);
              *(v105 + v24) = vuzp2q_s32(v111, v27);
              v112 = (v105 + v76);
              *v112 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v112 + v24) = v29;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v29 = vld1q_dup_s16(v104);
              *v105 = v29;
              *(v105 + v24) = v29;
              *(v105 + v76) = v29;
              *(v105 + v77) = v29;
              v107 = 2;
            }

            else if (v73[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, v24, v104, v106, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v105->i64[0] = 0;
              v87[1].i64[1] = 0;
              v108 = (v105->i64 + v24);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v105->i64 + v76);
              *v109 = 0;
              v109[1] = 0;
              v110 = (v105->i64 + v77);
              *v110 = 0;
              v110[1] = 0;
            }

            v113 = v104 + v107;
            v114 = (v74 + v209);
            v115 = v73[4];
            if (v115 == 63)
            {
              v120 = *v113;
              v26 = *(v113 + 16);
              v27 = *(v113 + 32);
              v28 = *(v113 + 48);
              *v114 = vuzp1q_s32(*v113, v27);
              *(v114 + v24) = vuzp2q_s32(v120, v27);
              v121 = (v114 + v76);
              *v121 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v121 + v24) = v29;
              v116 = 64;
            }

            else if (v115 == 1)
            {
              v29 = vld1q_dup_s16(v113);
              *v114 = v29;
              *(v114 + v24) = v29;
              *(v114 + v76) = v29;
              *(v114 + v77) = v29;
              v116 = 2;
            }

            else if (v73[4])
            {
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v74 + v209), v24, v113, v115, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v114->i64[1] = 0;
              v117 = (v114->i64 + v24);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v114->i64 + v76);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v114->i64 + v77);
              *v119 = 0;
              v119[1] = 0;
            }

            v122 = v113 + v116;
            v123 = (v74 + 12 * a11);
            v124 = v73[5];
            if (v124 == 63)
            {
              v129 = *v122;
              v26 = *(v122 + 16);
              v27 = *(v122 + 32);
              v28 = *(v122 + 48);
              *v123 = vuzp1q_s32(*v122, v27);
              *(v123 + v24) = vuzp2q_s32(v129, v27);
              v130 = (v123 + v76);
              *v130 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v130 + v24) = v29;
              v125 = 64;
            }

            else if (v124 == 1)
            {
              v29 = vld1q_dup_s16(v122);
              *v123 = v29;
              *(v123 + v24) = v29;
              *(v123 + v76) = v29;
              *(v123 + v77) = v29;
              v125 = 2;
            }

            else if (v73[5])
            {
              v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v123, v24, v122, v124, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v125 = 0;
              v123->i64[0] = 0;
              v123->i64[1] = 0;
              v126 = (v123->i64 + v24);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v123->i64 + v76);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v123->i64 + v77);
              *v128 = 0;
              v128[1] = 0;
            }

            v131 = v122 + v125;
            v132 = v114 + 1;
            v133 = v73[6];
            if (v133 == 63)
            {
              v138 = *v131;
              v26 = *(v131 + 16);
              v27 = *(v131 + 32);
              v28 = *(v131 + 48);
              *v132 = vuzp1q_s32(*v131, v27);
              *(v132 + v24) = vuzp2q_s32(v138, v27);
              v139 = (v132 + v76);
              *v139 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v139 + v24) = v29;
              v134 = 64;
            }

            else if (v133 == 1)
            {
              v29 = vld1q_dup_s16(v131);
              *v132 = v29;
              *(v132 + v24) = v29;
              *(v132 + v76) = v29;
              *(v132 + v77) = v29;
              v134 = 2;
            }

            else if (v73[6])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v24, v131, v133, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v134 = 0;
              v132->i64[0] = 0;
              v114[1].i64[1] = 0;
              v135 = (v132->i64 + v24);
              *v135 = 0;
              v135[1] = 0;
              v136 = (v132->i64 + v76);
              *v136 = 0;
              v136[1] = 0;
              v137 = (v132->i64 + v77);
              *v137 = 0;
              v137[1] = 0;
            }

            v140 = v131 + v134;
            v141 = v123 + 1;
            v142 = v73[7];
            if (v142 == 63)
            {
              v147 = *v140;
              v26 = *(v140 + 16);
              v27 = *(v140 + 32);
              v28 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v27);
              *(v141 + v24) = vuzp2q_s32(v147, v27);
              v148 = (v141 + v76);
              *v148 = vuzp1q_s32(v26, v28);
              v29 = vuzp2q_s32(v26, v28);
              *(v148 + v24) = v29;
              v38 = a7;
              v15 = v227;
              goto LABEL_145;
            }

            v38 = a7;
            v15 = v227;
            v143 = v36 + 1;
            if (v142 == 1)
            {
              v29 = vld1q_dup_s16(v140);
              *v141 = v29;
              *(v141 + v24) = v29;
              *(v141 + v76) = v29;
              *(v141 + v77) = v29;
            }

            else if (v142)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v76);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v77);
              *v146 = 0;
              v146[1] = 0;
            }
          }

LABEL_29:
          v20 = v36 == v218 >> 4;
          v36 = v143;
        }

        while (!v20);
        v20 = v16++ == v207;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          v84 = v382 + 4 * (v48 - v45);
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
              *(v84 + 16) = vzip1q_s64(v102, v103);
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
                *(v84 + 16) = v94;
                v95 = (v84 + a11);
                *v95 = v94;
                v95[1] = v94;
                v96 = (v84 + v368);
                *v96 = v94;
                v96[1] = v94;
                v97 = (v84 + v367);
                *v97 = v94;
                v97[1] = v94;
                v88 = 4;
              }

              else if (*v83)
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v84, a11, v82, v85);
              }

              else
              {
                v88 = 0;
                *v84 = 0u;
                *(v84 + 16) = 0u;
                v89 = (v84 + a11);
                *v89 = 0u;
                v89[1] = 0u;
                v90 = (v84 + v368);
                *v90 = 0u;
                v90[1] = 0u;
                v91 = (v84 + v367);
                *v91 = 0u;
                v91[1] = 0u;
              }
            }

            v109 = v82->i64 + v88;
            v110 = v84 + v370;
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
              *(v110 + 16) = vzip1q_s64(v124, v125);
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
              *(v110 + 16) = v116;
              v117 = (v110 + v33);
              *v117 = v116;
              v117[1] = v116;
              v118 = (v110 + v86);
              *v118 = v116;
              v118[1] = v116;
              v119 = (v110 + v87);
              *v119 = v116;
              v119[1] = v116;
              v112 = 4;
            }

            else if (v83[1])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v370), v33, v109, v111);
            }

            else
            {
              v112 = 0;
              *v110 = 0u;
              *(v110 + 16) = 0u;
              v113 = (v110 + v33);
              *v113 = 0u;
              v113[1] = 0u;
              v114 = (v110 + v86);
              *v114 = 0u;
              v114[1] = 0u;
              v115 = (v110 + v87);
              *v115 = 0u;
              v115[1] = 0u;
            }

            v131 = v109 + v112;
            v132 = (v84 + 32);
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
              *(v84 + 48) = vzip1q_s64(v146, v147);
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
              *(v84 + 32) = v138;
              *(v84 + 48) = v138;
              v139 = (v132 + v33);
              *v139 = v138;
              v139[1] = v138;
              v140 = (v132 + v86);
              *v140 = v138;
              v140[1] = v138;
              v141 = (v132 + v87);
              *v141 = v138;
              v141[1] = v138;
              v134 = 4;
            }

            else if (v83[2])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v33, v131, v133);
            }

            else
            {
              v134 = 0;
              *v132 = 0u;
              *(v84 + 48) = 0u;
              v135 = (v132 + v33);
              *v135 = 0u;
              v135[1] = 0u;
              v136 = (v132 + v86);
              *v136 = 0u;
              v136[1] = 0u;
              v137 = (v132 + v87);
              *v137 = 0u;
              v137[1] = 0u;
            }

            v153 = v131 + v134;
            v154 = (v110 + 32);
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
              *(v110 + 48) = vzip1q_s64(v168, v169);
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
              *(v110 + 32) = v160;
              *(v110 + 48) = v160;
              v161 = (v154 + v33);
              *v161 = v160;
              v161[1] = v160;
              v162 = (v154 + v86);
              *v162 = v160;
              v162[1] = v160;
              v163 = (v154 + v87);
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v83[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              *(v110 + 48) = 0u;
              v157 = (v154 + v33);
              *v157 = 0u;
              v157[1] = 0u;
              v158 = (v154 + v86);
              *v158 = 0u;
              v158[1] = 0u;
              v159 = (v154 + v87);
              *v159 = 0u;
              v159[1] = 0u;
            }

            v175 = v153 + v156;
            v176 = v84 + v369;
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
              *(v176 + 16) = vzip1q_s64(v190, v191);
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
              *(v176 + 16) = v182;
              v183 = (v176 + v33);
              *v183 = v182;
              v183[1] = v182;
              v184 = (v176 + v86);
              *v184 = v182;
              v184[1] = v182;
              v185 = (v176 + v87);
              *v185 = v182;
              v185[1] = v182;
              v178 = 4;
            }

            else if (v83[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v369), v33, v175, v177);
            }

            else
            {
              v178 = 0;
              *v176 = 0u;
              *(v176 + 16) = 0u;
              v179 = (v176 + v33);
              *v179 = 0u;
              v179[1] = 0u;
              v180 = (v176 + v86);
              *v180 = 0u;
              v180[1] = 0u;
              v181 = (v176 + v87);
              *v181 = 0u;
              v181[1] = 0u;
            }

            v197 = v175 + v178;
            v198 = v84 + 12 * a11;
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
              *(v198 + 16) = vzip1q_s64(v212, v213);
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
              *(v198 + 16) = v204;
              v205 = (v198 + v33);
              *v205 = v204;
              v205[1] = v204;
              v206 = (v198 + v86);
              *v206 = v204;
              v206[1] = v204;
              v207 = (v198 + v87);
              *v207 = v204;
              v207[1] = v204;
              v200 = 4;
            }

            else if (v83[5])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v33, v197, v199);
            }

            else
            {
              v200 = 0;
              *v198 = 0u;
              *(v198 + 16) = 0u;
              v201 = (v198 + v33);
              *v201 = 0u;
              v201[1] = 0u;
              v202 = (v198 + v86);
              *v202 = 0u;
              v202[1] = 0u;
              v203 = (v198 + v87);
              *v203 = 0u;
              v203[1] = 0u;
            }

            v219 = v197 + v200;
            v220 = (v176 + 32);
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
              *(v176 + 48) = vzip1q_s64(v234, v235);
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
              *(v176 + 32) = v226;
              *(v176 + 48) = v226;
              v227 = (v220 + v33);
              *v227 = v226;
              v227[1] = v226;
              v228 = (v220 + v86);
              *v228 = v226;
              v228[1] = v226;
              v229 = (v220 + v87);
              *v229 = v226;
              v229[1] = v226;
              v222 = 4;
            }

            else if (v83[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              *v220 = 0u;
              *(v176 + 48) = 0u;
              v223 = (v220 + v33);
              *v223 = 0u;
              v223[1] = 0u;
              v224 = (v220 + v86);
              *v224 = 0u;
              v224[1] = 0u;
              v225 = (v220 + v87);
              *v225 = 0u;
              v225[1] = 0u;
            }

            v241 = v219 + v222;
            v242 = (v198 + 32);
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
              *(v198 + 48) = vzip1q_s64(v252, v253);
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
                *(v198 + 32) = v244;
                *(v198 + 48) = v244;
LABEL_171:
                v245 = (v242 + v33);
                *v245 = v244;
                v245[1] = v244;
                v246 = (v242 + v86);
                *v246 = v244;
                v246[1] = v244;
                v247 = (v242 + v87);
                *v247 = v244;
                v247[1] = v244;
              }

              else
              {
                if (!v243)
                {
                  v244 = 0uLL;
                  *v242 = 0u;
                  *(v198 + 48) = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v242, v33, v241, v243);
              }

              v45 = a7;
            }

LABEL_49:
            v44 = v18 & v357;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 64, v82, v92);
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
            v270 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 64, v268, v269);
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
            v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v400, 64, v280, v281);
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
            v294 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 64, v292, v293);
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
            v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 64, v304, v305);
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
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v446, 64, v316, v317);
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
            v330 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v432, 64, v328, v329);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v448, 64, v340, v341);
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
                v356 = v389 + v390 * v352;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          v84 = v382 + 4 * (v48 - v45);
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
              *(v84 + 16) = vzip1q_s64(v102, v103);
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
                *(v84 + 16) = v94;
                v95 = (v84 + a11);
                *v95 = v94;
                v95[1] = v94;
                v96 = (v84 + v368);
                *v96 = v94;
                v96[1] = v94;
                v97 = (v84 + v367);
                *v97 = v94;
                v97[1] = v94;
                v88 = 4;
              }

              else if (*v83)
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v84, a11, v82, v85);
              }

              else
              {
                v88 = 0;
                *v84 = 0u;
                *(v84 + 16) = 0u;
                v89 = (v84 + a11);
                *v89 = 0u;
                v89[1] = 0u;
                v90 = (v84 + v368);
                *v90 = 0u;
                v90[1] = 0u;
                v91 = (v84 + v367);
                *v91 = 0u;
                v91[1] = 0u;
              }
            }

            v109 = v82->i64 + v88;
            v110 = v84 + v370;
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
              *(v110 + 16) = vzip1q_s64(v124, v125);
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
              *(v110 + 16) = v116;
              v117 = (v110 + v33);
              *v117 = v116;
              v117[1] = v116;
              v118 = (v110 + v86);
              *v118 = v116;
              v118[1] = v116;
              v119 = (v110 + v87);
              *v119 = v116;
              v119[1] = v116;
              v112 = 4;
            }

            else if (v83[1])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v370), v33, v109, v111);
            }

            else
            {
              v112 = 0;
              *v110 = 0u;
              *(v110 + 16) = 0u;
              v113 = (v110 + v33);
              *v113 = 0u;
              v113[1] = 0u;
              v114 = (v110 + v86);
              *v114 = 0u;
              v114[1] = 0u;
              v115 = (v110 + v87);
              *v115 = 0u;
              v115[1] = 0u;
            }

            v131 = v109 + v112;
            v132 = (v84 + 32);
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
              *(v84 + 48) = vzip1q_s64(v146, v147);
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
              *(v84 + 32) = v138;
              *(v84 + 48) = v138;
              v139 = (v132 + v33);
              *v139 = v138;
              v139[1] = v138;
              v140 = (v132 + v86);
              *v140 = v138;
              v140[1] = v138;
              v141 = (v132 + v87);
              *v141 = v138;
              v141[1] = v138;
              v134 = 4;
            }

            else if (v83[2])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v33, v131, v133);
            }

            else
            {
              v134 = 0;
              *v132 = 0u;
              *(v84 + 48) = 0u;
              v135 = (v132 + v33);
              *v135 = 0u;
              v135[1] = 0u;
              v136 = (v132 + v86);
              *v136 = 0u;
              v136[1] = 0u;
              v137 = (v132 + v87);
              *v137 = 0u;
              v137[1] = 0u;
            }

            v153 = v131 + v134;
            v154 = (v110 + 32);
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
              *(v110 + 48) = vzip1q_s64(v168, v169);
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
              *(v110 + 32) = v160;
              *(v110 + 48) = v160;
              v161 = (v154 + v33);
              *v161 = v160;
              v161[1] = v160;
              v162 = (v154 + v86);
              *v162 = v160;
              v162[1] = v160;
              v163 = (v154 + v87);
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v83[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              *(v110 + 48) = 0u;
              v157 = (v154 + v33);
              *v157 = 0u;
              v157[1] = 0u;
              v158 = (v154 + v86);
              *v158 = 0u;
              v158[1] = 0u;
              v159 = (v154 + v87);
              *v159 = 0u;
              v159[1] = 0u;
            }

            v175 = v153 + v156;
            v176 = v84 + v369;
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
              *(v176 + 16) = vzip1q_s64(v190, v191);
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
              *(v176 + 16) = v182;
              v183 = (v176 + v33);
              *v183 = v182;
              v183[1] = v182;
              v184 = (v176 + v86);
              *v184 = v182;
              v184[1] = v182;
              v185 = (v176 + v87);
              *v185 = v182;
              v185[1] = v182;
              v178 = 4;
            }

            else if (v83[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v84 + v369), v33, v175, v177);
            }

            else
            {
              v178 = 0;
              *v176 = 0u;
              *(v176 + 16) = 0u;
              v179 = (v176 + v33);
              *v179 = 0u;
              v179[1] = 0u;
              v180 = (v176 + v86);
              *v180 = 0u;
              v180[1] = 0u;
              v181 = (v176 + v87);
              *v181 = 0u;
              v181[1] = 0u;
            }

            v197 = v175 + v178;
            v198 = v84 + 12 * a11;
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
              *(v198 + 16) = vzip1q_s64(v212, v213);
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
              *(v198 + 16) = v204;
              v205 = (v198 + v33);
              *v205 = v204;
              v205[1] = v204;
              v206 = (v198 + v86);
              *v206 = v204;
              v206[1] = v204;
              v207 = (v198 + v87);
              *v207 = v204;
              v207[1] = v204;
              v200 = 4;
            }

            else if (v83[5])
            {
              v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v33, v197, v199);
            }

            else
            {
              v200 = 0;
              *v198 = 0u;
              *(v198 + 16) = 0u;
              v201 = (v198 + v33);
              *v201 = 0u;
              v201[1] = 0u;
              v202 = (v198 + v86);
              *v202 = 0u;
              v202[1] = 0u;
              v203 = (v198 + v87);
              *v203 = 0u;
              v203[1] = 0u;
            }

            v219 = v197 + v200;
            v220 = (v176 + 32);
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
              *(v176 + 48) = vzip1q_s64(v234, v235);
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
              *(v176 + 32) = v226;
              *(v176 + 48) = v226;
              v227 = (v220 + v33);
              *v227 = v226;
              v227[1] = v226;
              v228 = (v220 + v86);
              *v228 = v226;
              v228[1] = v226;
              v229 = (v220 + v87);
              *v229 = v226;
              v229[1] = v226;
              v222 = 4;
            }

            else if (v83[6])
            {
              v222 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v220, v33, v219, v221);
            }

            else
            {
              v222 = 0;
              *v220 = 0u;
              *(v176 + 48) = 0u;
              v223 = (v220 + v33);
              *v223 = 0u;
              v223[1] = 0u;
              v224 = (v220 + v86);
              *v224 = 0u;
              v224[1] = 0u;
              v225 = (v220 + v87);
              *v225 = 0u;
              v225[1] = 0u;
            }

            v241 = v219 + v222;
            v242 = (v198 + 32);
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
              *(v198 + 48) = vzip1q_s64(v252, v253);
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
                *(v198 + 32) = v244;
                *(v198 + 48) = v244;
LABEL_171:
                v245 = (v242 + v33);
                *v245 = v244;
                v245[1] = v244;
                v246 = (v242 + v86);
                *v246 = v244;
                v246[1] = v244;
                v247 = (v242 + v87);
                *v247 = v244;
                v247[1] = v244;
              }

              else
              {
                if (!v243)
                {
                  v244 = 0uLL;
                  *v242 = 0u;
                  *(v198 + 48) = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v242, v33, v241, v243);
              }

              v45 = a7;
            }

LABEL_49:
            v44 = v18 & v357;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 64, v82, v92);
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
            v270 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 64, v268, v269);
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
            v282 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v400, 64, v280, v281);
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
            v294 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 64, v292, v293);
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
            v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 64, v304, v305);
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
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v446, 64, v316, v317);
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
            v330 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v432, 64, v328, v329);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v448, 64, v340, v341);
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
                v356 = v389 + v390 * v352;
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