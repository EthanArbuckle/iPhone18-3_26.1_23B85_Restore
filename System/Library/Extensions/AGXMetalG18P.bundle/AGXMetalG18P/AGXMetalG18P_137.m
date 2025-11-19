void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v330 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v284 = a8;
  v264 = a8 + a10 - 1;
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
  v263 = v264 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v279 = v23;
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
      v278 = 0;
LABEL_32:
      v275 = v25 - 4;
      v267 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v261 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v278 = v30 >= v24;
    goto LABEL_32;
  }

  v278 = 0;
  v261 = 0;
  v267 = 0;
  v275 = 0;
LABEL_33:
  if (v17 <= v263)
  {
    v277 = a7 + a9 - 1;
    if (a7 >> 4 <= v277 >> 4)
    {
      v32 = a11;
      v287 = v18 >> 4;
      v271 = v18 & 0xF;
      v276 = (v18 & 0xF) + 1;
      v259 = v19 & 0xF;
      v260 = v19 >> 4;
      v269 = 8 * a11;
      v270 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v266 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v265 = v34;
      v285 = v15;
      v268 = 2 * a11;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v284)
        {
          v36 = v284;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v264 < v35)
        {
          v35 = v264;
        }

        v274 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v259;
        v273 = v38;
        v40 = v38 != 16;
        v41 = a7 >> 4;
        v42 = v259 + 1;
        if (v17 != v260)
        {
          v42 = 16;
        }

        v286 = v42;
        if (v17 != v260)
        {
          v39 = v40;
        }

        v272 = v39;
        v43 = v17 & ~(-1 << v267);
        v282 = a2 + (v36 - v284) * v32;
        v44 = a7;
        do
        {
          v46 = 16 * v41;
          v47 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v41;
          }

          if (v277 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v287)
          {
            v51 = v276;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v17 >= v284 && v46 >= v44)
          {
            v53 = v49 != v271;
            if (v41 != v287)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v272;
          }

          if (v278)
          {
            if (v275 | v267)
            {
              v54 = 0;
              v55 = 0;
              v56 = v267 != 0;
              v57 = 1;
              v59 = v275 != 0;
              v58 = v267;
              v60 = v275;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v41 & ~(-1 << v275) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v43 & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v275) + (v17 >> v267) * v261);
          }

          else if (v266)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v265.i8[0];
            v66 = v265.i8[4];
            v68 = v266.i32[0];
            v67 = v266.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
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

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v77 |= (v80 & v41) << v76++;
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
          if (v279)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = (v282 + 2 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v286 > 0xF)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              *v87 = vuzp1q_s32(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vuzp2q_s32(v98, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v102 = (v87 + v268);
              *v102 = vuzp1q_s32(v99, v101);
              *(v102 + a11) = vuzp2q_s32(v99, v101);
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82->i16);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v268);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v103 = v82->i64 + v91;
            v104 = (v87 + v270);
            v105 = v86[1];
            if (v105 == 63)
            {
              v111 = *v103;
              v112 = *(v103 + 16);
              v113 = *(v103 + 32);
              v114 = *(v103 + 48);
              *v104 = vuzp1q_s32(*v103, v113);
              *(v104 + v32) = vuzp2q_s32(v111, v113);
              v115 = (v104 + v89);
              *v115 = vuzp1q_s32(v112, v114);
              *(v115 + v32) = vuzp2q_s32(v112, v114);
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v110 = vld1q_dup_s16(v103);
              *v104 = v110;
              *(v104 + v32) = v110;
              *(v104 + v89) = v110;
              *(v104 + v90) = v110;
              v106 = 2;
            }

            else if (v86[1])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v270), v32, v103, v105);
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v104->i64[1] = 0;
              v107 = (v104->i64 + v32);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v89);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v90);
              *v109 = 0;
              v109[1] = 0;
            }

            v116 = v103 + v106;
            v117 = v87 + 1;
            v118 = v86[2];
            if (v118 == 63)
            {
              v124 = *v116;
              v125 = *(v116 + 16);
              v126 = *(v116 + 32);
              v127 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v126);
              *(v117 + v32) = vuzp2q_s32(v124, v126);
              v128 = (v117 + v89);
              *v128 = vuzp1q_s32(v125, v127);
              *(v128 + v32) = vuzp2q_s32(v125, v127);
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v123 = vld1q_dup_s16(v116);
              *v117 = v123;
              *(v117 + v32) = v123;
              *(v117 + v89) = v123;
              *(v117 + v90) = v123;
              v119 = 2;
            }

            else if (v86[2])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, v32, v116, v118);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v87[1].i64[1] = 0;
              v120 = (v117->i64 + v32);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v89);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v90);
              *v122 = 0;
              v122[1] = 0;
            }

            v129 = v116 + v119;
            v130 = v104 + 1;
            v131 = v86[3];
            if (v131 == 63)
            {
              v137 = *v129;
              v138 = *(v129 + 16);
              v139 = *(v129 + 32);
              v140 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v139);
              *(v130 + v32) = vuzp2q_s32(v137, v139);
              v141 = (v130 + v89);
              *v141 = vuzp1q_s32(v138, v140);
              *(v141 + v32) = vuzp2q_s32(v138, v140);
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v136 = vld1q_dup_s16(v129);
              *v130 = v136;
              *(v130 + v32) = v136;
              *(v130 + v89) = v136;
              *(v130 + v90) = v136;
              v132 = 2;
            }

            else if (v86[3])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v104[1].i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v89);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v90);
              *v135 = 0;
              v135[1] = 0;
            }

            v142 = v129 + v132;
            v143 = (v87 + v269);
            v144 = v86[4];
            if (v144 == 63)
            {
              v150 = *v142;
              v151 = *(v142 + 16);
              v152 = *(v142 + 32);
              v153 = *(v142 + 48);
              *v143 = vuzp1q_s32(*v142, v152);
              *(v143 + v32) = vuzp2q_s32(v150, v152);
              v154 = (v143 + v89);
              *v154 = vuzp1q_s32(v151, v153);
              *(v154 + v32) = vuzp2q_s32(v151, v153);
              v145 = 64;
            }

            else if (v144 == 1)
            {
              v149 = vld1q_dup_s16(v142);
              *v143 = v149;
              *(v143 + v32) = v149;
              *(v143 + v89) = v149;
              *(v143 + v90) = v149;
              v145 = 2;
            }

            else if (v86[4])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v269), v32, v142, v144);
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v143->i64[1] = 0;
              v146 = (v143->i64 + v32);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v89);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v90);
              *v148 = 0;
              v148[1] = 0;
            }

            v155 = v142 + v145;
            v156 = (v87 + 12 * a11);
            v157 = v86[5];
            if (v157 == 63)
            {
              v163 = *v155;
              v164 = *(v155 + 16);
              v165 = *(v155 + 32);
              v166 = *(v155 + 48);
              *v156 = vuzp1q_s32(*v155, v165);
              *(v156 + v32) = vuzp2q_s32(v163, v165);
              v167 = (v156 + v89);
              *v167 = vuzp1q_s32(v164, v166);
              *(v167 + v32) = vuzp2q_s32(v164, v166);
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v162 = vld1q_dup_s16(v155);
              *v156 = v162;
              *(v156 + v32) = v162;
              *(v156 + v89) = v162;
              *(v156 + v90) = v162;
              v158 = 2;
            }

            else if (v86[5])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, v32, v155, v157);
            }

            else
            {
              v158 = 0;
              v156->i64[0] = 0;
              v156->i64[1] = 0;
              v159 = (v156->i64 + v32);
              *v159 = 0;
              v159[1] = 0;
              v160 = (v156->i64 + v89);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v156->i64 + v90);
              *v161 = 0;
              v161[1] = 0;
            }

            v168 = v155 + v158;
            v169 = v143 + 1;
            v170 = v86[6];
            if (v170 == 63)
            {
              v176 = *v168;
              v177 = *(v168 + 16);
              v178 = *(v168 + 32);
              v179 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v178);
              *(v169 + v32) = vuzp2q_s32(v176, v178);
              v180 = (v169 + v89);
              *v180 = vuzp1q_s32(v177, v179);
              *(v180 + v32) = vuzp2q_s32(v177, v179);
              v171 = 64;
            }

            else if (v170 == 1)
            {
              v175 = vld1q_dup_s16(v168);
              *v169 = v175;
              *(v169 + v32) = v175;
              *(v169 + v89) = v175;
              *(v169 + v90) = v175;
              v171 = 2;
            }

            else if (v86[6])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170);
            }

            else
            {
              v171 = 0;
              v169->i64[0] = 0;
              v143[1].i64[1] = 0;
              v172 = (v169->i64 + v32);
              *v172 = 0;
              v172[1] = 0;
              v173 = (v169->i64 + v89);
              *v173 = 0;
              v173[1] = 0;
              v174 = (v169->i64 + v90);
              *v174 = 0;
              v174[1] = 0;
            }

            v181 = v168 + v171;
            v182 = v156 + 1;
            v183 = v86[7];
            if (v183 == 63)
            {
              v188 = *v181;
              v189 = *(v181 + 16);
              v190 = *(v181 + 32);
              v191 = *(v181 + 48);
              *v182 = vuzp1q_s32(*v181, v190);
              *(v182 + v32) = vuzp2q_s32(v188, v190);
              v192 = (v182 + v89);
              *v192 = vuzp1q_s32(v189, v191);
              *(v192 + v32) = vuzp2q_s32(v189, v191);
              v44 = a7;
              v15 = v285;
            }

            else
            {
              v44 = a7;
              v15 = v285;
              if (v183 == 1)
              {
                v187 = vld1q_dup_s16(v181);
                *v182 = v187;
                *(v182 + v32) = v187;
                *(v182 + v89) = v187;
                *(v182 + v90) = v187;
              }

              else if (v183)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v182, v32, v181, v183);
              }

              else
              {
                v182->i64[0] = 0;
                v182->i64[1] = 0;
                v184 = (v182->i64 + v32);
                *v184 = 0;
                v184[1] = 0;
                v185 = (v182->i64 + v89);
                *v185 = 0;
                v185[1] = 0;
                v186 = (v182->i64 + v90);
                *v186 = 0;
                v186[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v285;
          block[5] = v82;
          v295 = v51;
          v296 = v286;
          v291 = v274;
          v292 = v48 - v46;
          block[6] = v86;
          v289 = v87;
          v32 = a11;
          v290 = a11;
          v293 = v273;
          v294 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v285 + 8) + 16552), block);
            v44 = a7;
            v15 = v285;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v194 = v82[1];
            v195 = v82[2];
            v196 = v82[3];
            v197 = vuzp2q_s32(*v82, v195);
            v298 = vuzp1q_s32(*v82, v195);
            v300 = v197;
            v302 = vuzp1q_s32(v194, v196);
            v304 = vuzp2q_s32(v194, v196);
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v193 = vld1q_dup_s16(v82->i16);
            v298 = v193;
            v300 = v193;
            v302 = v193;
            v304 = v193;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 32, v82, v95);
          }

          else
          {
            v96 = 0;
            v298 = 0uLL;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
          }

          v198 = v82->i64 + v96;
          v199 = v86[1];
          if (v199 == 63)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = vuzp2q_s32(*v198, v203);
            v306 = vuzp1q_s32(*v198, v203);
            v308 = v205;
            v310 = vuzp1q_s32(v202, v204);
            v312 = vuzp2q_s32(v202, v204);
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v306 = v201;
            v308 = v201;
            v310 = v201;
            v312 = v201;
            v200 = 2;
          }

          else if (v86[1])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v306, 32, v198, v199);
          }

          else
          {
            v200 = 0;
            v306 = 0uLL;
            v308 = 0uLL;
            v310 = 0uLL;
            v312 = 0uLL;
          }

          v206 = v198 + v200;
          v207 = v86[2];
          if (v207 == 63)
          {
            v210 = *(v206 + 16);
            v211 = *(v206 + 32);
            v212 = *(v206 + 48);
            v213 = vuzp2q_s32(*v206, v211);
            v299 = vuzp1q_s32(*v206, v211);
            v301 = v213;
            v303 = vuzp1q_s32(v210, v212);
            v305 = vuzp2q_s32(v210, v212);
            v208 = 64;
          }

          else if (v207 == 1)
          {
            v209 = vld1q_dup_s16(v206);
            v299 = v209;
            v301 = v209;
            v303 = v209;
            v305 = v209;
            v208 = 2;
          }

          else if (v86[2])
          {
            v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 32, v206, v207);
          }

          else
          {
            v208 = 0;
            v299 = 0uLL;
            v301 = 0uLL;
            v303 = 0uLL;
            v305 = 0uLL;
          }

          v214 = v206 + v208;
          v215 = v86[3];
          if (v215 == 63)
          {
            v218 = *(v214 + 16);
            v219 = *(v214 + 32);
            v220 = *(v214 + 48);
            v221 = vuzp2q_s32(*v214, v219);
            v307 = vuzp1q_s32(*v214, v219);
            v309 = v221;
            v311 = vuzp1q_s32(v218, v220);
            v313 = vuzp2q_s32(v218, v220);
            v216 = 64;
          }

          else if (v215 == 1)
          {
            v217 = vld1q_dup_s16(v214);
            v307 = v217;
            v309 = v217;
            v311 = v217;
            v313 = v217;
            v216 = 2;
          }

          else if (v86[3])
          {
            v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v307, 32, v214, v215);
          }

          else
          {
            v216 = 0;
            v307 = 0uLL;
            v309 = 0uLL;
            v311 = 0uLL;
            v313 = 0uLL;
          }

          v222 = v214 + v216;
          v223 = v86[4];
          if (v223 == 63)
          {
            v226 = *(v222 + 16);
            v227 = *(v222 + 32);
            v228 = *(v222 + 48);
            v229 = vuzp2q_s32(*v222, v227);
            v314 = vuzp1q_s32(*v222, v227);
            v316 = v229;
            v318 = vuzp1q_s32(v226, v228);
            v320 = vuzp2q_s32(v226, v228);
            v224 = 64;
          }

          else if (v223 == 1)
          {
            v225 = vld1q_dup_s16(v222);
            v314 = v225;
            v316 = v225;
            v318 = v225;
            v320 = v225;
            v224 = 2;
          }

          else if (v86[4])
          {
            v224 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v314, 32, v222, v223);
          }

          else
          {
            v224 = 0;
            v314 = 0uLL;
            v316 = 0uLL;
            v318 = 0uLL;
            v320 = 0uLL;
          }

          v230 = v222 + v224;
          v231 = v86[5];
          if (v231 == 63)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = vuzp2q_s32(*v230, v235);
            v322 = vuzp1q_s32(*v230, v235);
            v324 = v237;
            v326 = vuzp1q_s32(v234, v236);
            v328 = vuzp2q_s32(v234, v236);
            v232 = 64;
          }

          else if (v231 == 1)
          {
            v233 = vld1q_dup_s16(v230);
            v322 = v233;
            v324 = v233;
            v326 = v233;
            v328 = v233;
            v232 = 2;
          }

          else if (v86[5])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 32, v230, v231);
          }

          else
          {
            v232 = 0;
            v322 = 0uLL;
            v324 = 0uLL;
            v326 = 0uLL;
            v328 = 0uLL;
          }

          v238 = v230 + v232;
          v239 = v86[6];
          if (v239 == 63)
          {
            v242 = *(v238 + 16);
            v243 = *(v238 + 32);
            v244 = *(v238 + 48);
            v245 = vuzp2q_s32(*v238, v243);
            v315 = vuzp1q_s32(*v238, v243);
            v317 = v245;
            v319 = vuzp1q_s32(v242, v244);
            v321 = vuzp2q_s32(v242, v244);
            v240 = 64;
          }

          else if (v239 == 1)
          {
            v241 = vld1q_dup_s16(v238);
            v315 = v241;
            v317 = v241;
            v319 = v241;
            v321 = v241;
            v240 = 2;
          }

          else if (v86[6])
          {
            v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v315, 32, v238, v239);
          }

          else
          {
            v240 = 0;
            v315 = 0uLL;
            v317 = 0uLL;
            v319 = 0uLL;
            v321 = 0uLL;
          }

          v246 = v238 + v240;
          v247 = v86[7];
          if (v247 == 63)
          {
            v249 = *(v246 + 16);
            v250 = *(v246 + 32);
            v251 = *(v246 + 48);
            v252 = vuzp2q_s32(*v246, v250);
            v323 = vuzp1q_s32(*v246, v250);
            v325 = v252;
            v327 = vuzp1q_s32(v249, v251);
            v329 = vuzp2q_s32(v249, v251);
            v44 = a7;
            v15 = v285;
          }

          else
          {
            v44 = a7;
            v15 = v285;
            if (v247 == 1)
            {
              v248 = vld1q_dup_s16(v246);
              v323 = v248;
              v325 = v248;
              v327 = v248;
              v329 = v248;
            }

            else if (v247)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 32, v246, v247);
            }

            else
            {
              v323 = 0uLL;
              v325 = 0uLL;
              v327 = 0uLL;
              v329 = 0uLL;
            }
          }

          v253 = v293;
          v45 = v41 + 1;
          if (v293)
          {
            v254 = 0;
            v255 = &v298.i8[32 * v291 + 2 * v292];
            v256 = v294;
            do
            {
              if (v256)
              {
                v257 = 0;
                v258 = &v289->i8[v290 * v254];
                do
                {
                  v258[v257] = v255[v257];
                  ++v257;
                  v256 = v294;
                }

                while (2 * v294 > v257);
                v253 = v293;
              }

              ++v254;
              v255 += 32;
            }

            while (v254 < v253);
          }

LABEL_50:
          v20 = v41 == v277 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v263;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v330 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v284 = a8;
  v264 = a8 + a10 - 1;
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
  v263 = v264 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v279 = v23;
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
      v278 = 0;
LABEL_32:
      v275 = v25 - 4;
      v267 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v261 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v278 = v30 >= v24;
    goto LABEL_32;
  }

  v278 = 0;
  v261 = 0;
  v267 = 0;
  v275 = 0;
LABEL_33:
  if (v17 <= v263)
  {
    v277 = a7 + a9 - 1;
    if (a7 >> 4 <= v277 >> 4)
    {
      v32 = a11;
      v287 = v18 >> 4;
      v271 = v18 & 0xF;
      v276 = (v18 & 0xF) + 1;
      v259 = v19 & 0xF;
      v260 = v19 >> 4;
      v269 = 8 * a11;
      v270 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v266 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v265 = v34;
      v285 = v15;
      v268 = 2 * a11;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v284)
        {
          v36 = v284;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v264 < v35)
        {
          v35 = v264;
        }

        v274 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v259;
        v273 = v38;
        v40 = v38 != 16;
        v41 = a7 >> 4;
        v42 = v259 + 1;
        if (v17 != v260)
        {
          v42 = 16;
        }

        v286 = v42;
        if (v17 != v260)
        {
          v39 = v40;
        }

        v272 = v39;
        v43 = v17 & ~(-1 << v267);
        v282 = a2 + (v36 - v284) * v32;
        v44 = a7;
        do
        {
          v46 = 16 * v41;
          v47 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v41;
          }

          if (v277 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v287)
          {
            v51 = v276;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v17 >= v284 && v46 >= v44)
          {
            v53 = v49 != v271;
            if (v41 != v287)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v272;
          }

          if (v278)
          {
            if (v275 | v267)
            {
              v54 = 0;
              v55 = 0;
              v56 = v267 != 0;
              v57 = 1;
              v59 = v275 != 0;
              v58 = v267;
              v60 = v275;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v41 & ~(-1 << v275) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v43 & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v275) + (v17 >> v267) * v261);
          }

          else if (v266)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v265.i8[0];
            v66 = v265.i8[4];
            v68 = v266.i32[0];
            v67 = v266.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
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

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v77 |= (v80 & v41) << v76++;
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
          if (v279)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = (v282 + 2 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v286 > 0xF)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              *v87 = vuzp1q_s32(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vuzp2q_s32(v98, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v102 = (v87 + v268);
              *v102 = vuzp1q_s32(v99, v101);
              *(v102 + a11) = vuzp2q_s32(v99, v101);
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82->i16);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v268);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v103 = v82->i64 + v91;
            v104 = (v87 + v270);
            v105 = v86[1];
            if (v105 == 63)
            {
              v111 = *v103;
              v112 = *(v103 + 16);
              v113 = *(v103 + 32);
              v114 = *(v103 + 48);
              *v104 = vuzp1q_s32(*v103, v113);
              *(v104 + v32) = vuzp2q_s32(v111, v113);
              v115 = (v104 + v89);
              *v115 = vuzp1q_s32(v112, v114);
              *(v115 + v32) = vuzp2q_s32(v112, v114);
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v110 = vld1q_dup_s16(v103);
              *v104 = v110;
              *(v104 + v32) = v110;
              *(v104 + v89) = v110;
              *(v104 + v90) = v110;
              v106 = 2;
            }

            else if (v86[1])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v270), v32, v103, v105);
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v104->i64[1] = 0;
              v107 = (v104->i64 + v32);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v89);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v90);
              *v109 = 0;
              v109[1] = 0;
            }

            v116 = v103 + v106;
            v117 = v87 + 1;
            v118 = v86[2];
            if (v118 == 63)
            {
              v124 = *v116;
              v125 = *(v116 + 16);
              v126 = *(v116 + 32);
              v127 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v126);
              *(v117 + v32) = vuzp2q_s32(v124, v126);
              v128 = (v117 + v89);
              *v128 = vuzp1q_s32(v125, v127);
              *(v128 + v32) = vuzp2q_s32(v125, v127);
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v123 = vld1q_dup_s16(v116);
              *v117 = v123;
              *(v117 + v32) = v123;
              *(v117 + v89) = v123;
              *(v117 + v90) = v123;
              v119 = 2;
            }

            else if (v86[2])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, v32, v116, v118);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v87[1].i64[1] = 0;
              v120 = (v117->i64 + v32);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v89);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v90);
              *v122 = 0;
              v122[1] = 0;
            }

            v129 = v116 + v119;
            v130 = v104 + 1;
            v131 = v86[3];
            if (v131 == 63)
            {
              v137 = *v129;
              v138 = *(v129 + 16);
              v139 = *(v129 + 32);
              v140 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v139);
              *(v130 + v32) = vuzp2q_s32(v137, v139);
              v141 = (v130 + v89);
              *v141 = vuzp1q_s32(v138, v140);
              *(v141 + v32) = vuzp2q_s32(v138, v140);
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v136 = vld1q_dup_s16(v129);
              *v130 = v136;
              *(v130 + v32) = v136;
              *(v130 + v89) = v136;
              *(v130 + v90) = v136;
              v132 = 2;
            }

            else if (v86[3])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v104[1].i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v89);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v90);
              *v135 = 0;
              v135[1] = 0;
            }

            v142 = v129 + v132;
            v143 = (v87 + v269);
            v144 = v86[4];
            if (v144 == 63)
            {
              v150 = *v142;
              v151 = *(v142 + 16);
              v152 = *(v142 + 32);
              v153 = *(v142 + 48);
              *v143 = vuzp1q_s32(*v142, v152);
              *(v143 + v32) = vuzp2q_s32(v150, v152);
              v154 = (v143 + v89);
              *v154 = vuzp1q_s32(v151, v153);
              *(v154 + v32) = vuzp2q_s32(v151, v153);
              v145 = 64;
            }

            else if (v144 == 1)
            {
              v149 = vld1q_dup_s16(v142);
              *v143 = v149;
              *(v143 + v32) = v149;
              *(v143 + v89) = v149;
              *(v143 + v90) = v149;
              v145 = 2;
            }

            else if (v86[4])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v269), v32, v142, v144);
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v143->i64[1] = 0;
              v146 = (v143->i64 + v32);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v89);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v90);
              *v148 = 0;
              v148[1] = 0;
            }

            v155 = v142 + v145;
            v156 = (v87 + 12 * a11);
            v157 = v86[5];
            if (v157 == 63)
            {
              v163 = *v155;
              v164 = *(v155 + 16);
              v165 = *(v155 + 32);
              v166 = *(v155 + 48);
              *v156 = vuzp1q_s32(*v155, v165);
              *(v156 + v32) = vuzp2q_s32(v163, v165);
              v167 = (v156 + v89);
              *v167 = vuzp1q_s32(v164, v166);
              *(v167 + v32) = vuzp2q_s32(v164, v166);
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v162 = vld1q_dup_s16(v155);
              *v156 = v162;
              *(v156 + v32) = v162;
              *(v156 + v89) = v162;
              *(v156 + v90) = v162;
              v158 = 2;
            }

            else if (v86[5])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, v32, v155, v157);
            }

            else
            {
              v158 = 0;
              v156->i64[0] = 0;
              v156->i64[1] = 0;
              v159 = (v156->i64 + v32);
              *v159 = 0;
              v159[1] = 0;
              v160 = (v156->i64 + v89);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v156->i64 + v90);
              *v161 = 0;
              v161[1] = 0;
            }

            v168 = v155 + v158;
            v169 = v143 + 1;
            v170 = v86[6];
            if (v170 == 63)
            {
              v176 = *v168;
              v177 = *(v168 + 16);
              v178 = *(v168 + 32);
              v179 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v178);
              *(v169 + v32) = vuzp2q_s32(v176, v178);
              v180 = (v169 + v89);
              *v180 = vuzp1q_s32(v177, v179);
              *(v180 + v32) = vuzp2q_s32(v177, v179);
              v171 = 64;
            }

            else if (v170 == 1)
            {
              v175 = vld1q_dup_s16(v168);
              *v169 = v175;
              *(v169 + v32) = v175;
              *(v169 + v89) = v175;
              *(v169 + v90) = v175;
              v171 = 2;
            }

            else if (v86[6])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170);
            }

            else
            {
              v171 = 0;
              v169->i64[0] = 0;
              v143[1].i64[1] = 0;
              v172 = (v169->i64 + v32);
              *v172 = 0;
              v172[1] = 0;
              v173 = (v169->i64 + v89);
              *v173 = 0;
              v173[1] = 0;
              v174 = (v169->i64 + v90);
              *v174 = 0;
              v174[1] = 0;
            }

            v181 = v168 + v171;
            v182 = v156 + 1;
            v183 = v86[7];
            if (v183 == 63)
            {
              v188 = *v181;
              v189 = *(v181 + 16);
              v190 = *(v181 + 32);
              v191 = *(v181 + 48);
              *v182 = vuzp1q_s32(*v181, v190);
              *(v182 + v32) = vuzp2q_s32(v188, v190);
              v192 = (v182 + v89);
              *v192 = vuzp1q_s32(v189, v191);
              *(v192 + v32) = vuzp2q_s32(v189, v191);
              v44 = a7;
              v15 = v285;
            }

            else
            {
              v44 = a7;
              v15 = v285;
              if (v183 == 1)
              {
                v187 = vld1q_dup_s16(v181);
                *v182 = v187;
                *(v182 + v32) = v187;
                *(v182 + v89) = v187;
                *(v182 + v90) = v187;
              }

              else if (v183)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v182, v32, v181, v183);
              }

              else
              {
                v182->i64[0] = 0;
                v182->i64[1] = 0;
                v184 = (v182->i64 + v32);
                *v184 = 0;
                v184[1] = 0;
                v185 = (v182->i64 + v89);
                *v185 = 0;
                v185[1] = 0;
                v186 = (v182->i64 + v90);
                *v186 = 0;
                v186[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v285;
          block[5] = v82;
          v295 = v51;
          v296 = v286;
          v291 = v274;
          v292 = v48 - v46;
          block[6] = v86;
          v289 = v87;
          v32 = a11;
          v290 = a11;
          v293 = v273;
          v294 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v285 + 8) + 16552), block);
            v44 = a7;
            v15 = v285;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v194 = v82[1];
            v195 = v82[2];
            v196 = v82[3];
            v197 = vuzp2q_s32(*v82, v195);
            v298 = vuzp1q_s32(*v82, v195);
            v300 = v197;
            v302 = vuzp1q_s32(v194, v196);
            v304 = vuzp2q_s32(v194, v196);
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v193 = vld1q_dup_s16(v82->i16);
            v298 = v193;
            v300 = v193;
            v302 = v193;
            v304 = v193;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 32, v82, v95);
          }

          else
          {
            v96 = 0;
            v298 = 0uLL;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
          }

          v198 = v82->i64 + v96;
          v199 = v86[1];
          if (v199 == 63)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = vuzp2q_s32(*v198, v203);
            v306 = vuzp1q_s32(*v198, v203);
            v308 = v205;
            v310 = vuzp1q_s32(v202, v204);
            v312 = vuzp2q_s32(v202, v204);
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v306 = v201;
            v308 = v201;
            v310 = v201;
            v312 = v201;
            v200 = 2;
          }

          else if (v86[1])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v306, 32, v198, v199);
          }

          else
          {
            v200 = 0;
            v306 = 0uLL;
            v308 = 0uLL;
            v310 = 0uLL;
            v312 = 0uLL;
          }

          v206 = v198 + v200;
          v207 = v86[2];
          if (v207 == 63)
          {
            v210 = *(v206 + 16);
            v211 = *(v206 + 32);
            v212 = *(v206 + 48);
            v213 = vuzp2q_s32(*v206, v211);
            v299 = vuzp1q_s32(*v206, v211);
            v301 = v213;
            v303 = vuzp1q_s32(v210, v212);
            v305 = vuzp2q_s32(v210, v212);
            v208 = 64;
          }

          else if (v207 == 1)
          {
            v209 = vld1q_dup_s16(v206);
            v299 = v209;
            v301 = v209;
            v303 = v209;
            v305 = v209;
            v208 = 2;
          }

          else if (v86[2])
          {
            v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 32, v206, v207);
          }

          else
          {
            v208 = 0;
            v299 = 0uLL;
            v301 = 0uLL;
            v303 = 0uLL;
            v305 = 0uLL;
          }

          v214 = v206 + v208;
          v215 = v86[3];
          if (v215 == 63)
          {
            v218 = *(v214 + 16);
            v219 = *(v214 + 32);
            v220 = *(v214 + 48);
            v221 = vuzp2q_s32(*v214, v219);
            v307 = vuzp1q_s32(*v214, v219);
            v309 = v221;
            v311 = vuzp1q_s32(v218, v220);
            v313 = vuzp2q_s32(v218, v220);
            v216 = 64;
          }

          else if (v215 == 1)
          {
            v217 = vld1q_dup_s16(v214);
            v307 = v217;
            v309 = v217;
            v311 = v217;
            v313 = v217;
            v216 = 2;
          }

          else if (v86[3])
          {
            v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v307, 32, v214, v215);
          }

          else
          {
            v216 = 0;
            v307 = 0uLL;
            v309 = 0uLL;
            v311 = 0uLL;
            v313 = 0uLL;
          }

          v222 = v214 + v216;
          v223 = v86[4];
          if (v223 == 63)
          {
            v226 = *(v222 + 16);
            v227 = *(v222 + 32);
            v228 = *(v222 + 48);
            v229 = vuzp2q_s32(*v222, v227);
            v314 = vuzp1q_s32(*v222, v227);
            v316 = v229;
            v318 = vuzp1q_s32(v226, v228);
            v320 = vuzp2q_s32(v226, v228);
            v224 = 64;
          }

          else if (v223 == 1)
          {
            v225 = vld1q_dup_s16(v222);
            v314 = v225;
            v316 = v225;
            v318 = v225;
            v320 = v225;
            v224 = 2;
          }

          else if (v86[4])
          {
            v224 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v314, 32, v222, v223);
          }

          else
          {
            v224 = 0;
            v314 = 0uLL;
            v316 = 0uLL;
            v318 = 0uLL;
            v320 = 0uLL;
          }

          v230 = v222 + v224;
          v231 = v86[5];
          if (v231 == 63)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = vuzp2q_s32(*v230, v235);
            v322 = vuzp1q_s32(*v230, v235);
            v324 = v237;
            v326 = vuzp1q_s32(v234, v236);
            v328 = vuzp2q_s32(v234, v236);
            v232 = 64;
          }

          else if (v231 == 1)
          {
            v233 = vld1q_dup_s16(v230);
            v322 = v233;
            v324 = v233;
            v326 = v233;
            v328 = v233;
            v232 = 2;
          }

          else if (v86[5])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 32, v230, v231);
          }

          else
          {
            v232 = 0;
            v322 = 0uLL;
            v324 = 0uLL;
            v326 = 0uLL;
            v328 = 0uLL;
          }

          v238 = v230 + v232;
          v239 = v86[6];
          if (v239 == 63)
          {
            v242 = *(v238 + 16);
            v243 = *(v238 + 32);
            v244 = *(v238 + 48);
            v245 = vuzp2q_s32(*v238, v243);
            v315 = vuzp1q_s32(*v238, v243);
            v317 = v245;
            v319 = vuzp1q_s32(v242, v244);
            v321 = vuzp2q_s32(v242, v244);
            v240 = 64;
          }

          else if (v239 == 1)
          {
            v241 = vld1q_dup_s16(v238);
            v315 = v241;
            v317 = v241;
            v319 = v241;
            v321 = v241;
            v240 = 2;
          }

          else if (v86[6])
          {
            v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v315, 32, v238, v239);
          }

          else
          {
            v240 = 0;
            v315 = 0uLL;
            v317 = 0uLL;
            v319 = 0uLL;
            v321 = 0uLL;
          }

          v246 = v238 + v240;
          v247 = v86[7];
          if (v247 == 63)
          {
            v249 = *(v246 + 16);
            v250 = *(v246 + 32);
            v251 = *(v246 + 48);
            v252 = vuzp2q_s32(*v246, v250);
            v323 = vuzp1q_s32(*v246, v250);
            v325 = v252;
            v327 = vuzp1q_s32(v249, v251);
            v329 = vuzp2q_s32(v249, v251);
            v44 = a7;
            v15 = v285;
          }

          else
          {
            v44 = a7;
            v15 = v285;
            if (v247 == 1)
            {
              v248 = vld1q_dup_s16(v246);
              v323 = v248;
              v325 = v248;
              v327 = v248;
              v329 = v248;
            }

            else if (v247)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 32, v246, v247);
            }

            else
            {
              v323 = 0uLL;
              v325 = 0uLL;
              v327 = 0uLL;
              v329 = 0uLL;
            }
          }

          v253 = v293;
          v45 = v41 + 1;
          if (v293)
          {
            v254 = 0;
            v255 = &v298.i8[32 * v291 + 2 * v292];
            v256 = v294;
            do
            {
              if (v256)
              {
                v257 = 0;
                v258 = &v289->i8[v290 * v254];
                do
                {
                  v258[v257] = v255[v257];
                  ++v257;
                  v256 = v294;
                }

                while (2 * v294 > v257);
                v253 = v293;
              }

              ++v254;
              v255 += 32;
            }

            while (v254 < v253);
          }

LABEL_50:
          v20 = v41 == v277 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v263;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v324 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v277 = a8;
  v16 = a8 >> 4;
  v258 = a8 + a10 - 1;
  v260 = v258 >> 4;
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
  v272 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v260)
  {
    v270 = a7 + a9 - 1;
    if (a7 >> 4 <= v270 >> 4)
    {
      v24 = a11;
      v281 = (a5 - 1) >> 4;
      v255 = a5 - 1;
      v264 = (a5 - 1) & 0xF;
      v256 = (a6 - 1) & 0xF;
      v257 = (a6 - 1) >> 4;
      v262 = 8 * a11;
      v263 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v269 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v268 = v26;
      v254 = 8 * v18 * v17;
      v279 = v15;
      v261 = 2 * a11;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v277)
        {
          v28 = v277;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v258 < v27)
        {
          v27 = v258;
        }

        v276 = 16 * v16;
        v267 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v256;
        v266 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v256 + 1;
        if (v16 != v257)
        {
          v34 = 16;
        }

        v280 = v34;
        if (v16 != v257)
        {
          v31 = v32;
        }

        v265 = v31;
        v275 = a2 + (v28 - v277) * v24;
        v35 = a7;
        do
        {
          v37 = 16 * v33;
          v38 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = 16 * v33;
          }

          if (v270 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v281)
          {
            v42 = v264 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v276 >= v277 && v37 >= v35)
          {
            v44 = v40 != v264;
            if (v33 != v281)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v265;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v254 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v244 = (v65 >> 4) - 1;
            if (v67)
            {
              v245 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v246 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v246 | v245)
              {
                goto LABEL_224;
              }

LABEL_235:
              v253 = 0;
            }

            else
            {
              v245 = 32 - __clz(~(-1 << -__clz(v244)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v246 = 0;
              if (!v245)
              {
                goto LABEL_235;
              }

LABEL_224:
              v247 = 0;
              v248 = 0;
              v249 = v33 & v244;
              v250 = v245 != 0;
              v251 = v246 != 0;
              v252 = 1;
              do
              {
                --v245;
                if (v250)
                {
                  v248 |= (v252 & v249) << v247++;
                }

                else
                {
                  v245 = 0;
                }

                --v246;
                if (v251)
                {
                  v248 |= (v252 & v16 & ((v69 >> 4) - 1)) << v247++;
                }

                else
                {
                  v246 = 0;
                }

                v252 *= 2;
                --v247;
                v251 = v246 != 0;
                v250 = v245 != 0;
              }

              while (v246 | v245);
              v253 = v248 << 9;
            }

            v52 = v253 + ((v37 / v65 + v276 / v69 * ((v65 + v255) / v65)) << 14);
            goto LABEL_55;
          }

          if (v269)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v268.i8[0];
            v49 = v268.i8[4];
            v51 = v269.i32[0];
            v50 = v269.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v33) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v33) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v272)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v275 + 2 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v280 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v279;
            block[5] = v70;
            v289 = v42;
            v290 = v280;
            v285 = v267;
            v286 = v39 - v37;
            block[6] = v71;
            v283 = v72;
            v24 = a11;
            v284 = a11;
            v287 = v266;
            v288 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v279 + 8) + 16552), block);
              v35 = a7;
              v15 = v279;
LABEL_145:
              v169 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v179 = v70[1];
              v180 = v70[2];
              v181 = v70[3];
              v182 = vuzp2q_s32(*v70, v180);
              v292 = vuzp1q_s32(*v70, v180);
              v294 = v182;
              v296 = vuzp1q_s32(v179, v181);
              v298 = vuzp2q_s32(v179, v181);
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v178 = vld1q_dup_s16(v70->i16);
              v292 = v178;
              v294 = v178;
              v296 = v178;
              v298 = v178;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v70, v80);
            }

            else
            {
              v81 = 0;
              v292 = 0uLL;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
            }

            v183 = v70->i64 + v81;
            v184 = v71[1];
            if (v184 == 63)
            {
              v187 = *(v183 + 16);
              v188 = *(v183 + 32);
              v189 = *(v183 + 48);
              v190 = vuzp2q_s32(*v183, v188);
              v300 = vuzp1q_s32(*v183, v188);
              v302 = v190;
              v304 = vuzp1q_s32(v187, v189);
              v306 = vuzp2q_s32(v187, v189);
              v185 = 64;
            }

            else if (v184 == 1)
            {
              v186 = vld1q_dup_s16(v183);
              v300 = v186;
              v302 = v186;
              v304 = v186;
              v306 = v186;
              v185 = 2;
            }

            else if (v71[1])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v183, v184);
            }

            else
            {
              v185 = 0;
              v300 = 0uLL;
              v302 = 0uLL;
              v304 = 0uLL;
              v306 = 0uLL;
            }

            v191 = v183 + v185;
            v192 = v71[2];
            if (v192 == 63)
            {
              v195 = *(v191 + 16);
              v196 = *(v191 + 32);
              v197 = *(v191 + 48);
              v198 = vuzp2q_s32(*v191, v196);
              v293 = vuzp1q_s32(*v191, v196);
              v295 = v198;
              v297 = vuzp1q_s32(v195, v197);
              v299 = vuzp2q_s32(v195, v197);
              v193 = 64;
            }

            else if (v192 == 1)
            {
              v194 = vld1q_dup_s16(v191);
              v293 = v194;
              v295 = v194;
              v297 = v194;
              v299 = v194;
              v193 = 2;
            }

            else if (v71[2])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v191, v192);
            }

            else
            {
              v193 = 0;
              v293 = 0uLL;
              v295 = 0uLL;
              v297 = 0uLL;
              v299 = 0uLL;
            }

            v199 = v191 + v193;
            v200 = v71[3];
            if (v200 == 63)
            {
              v203 = *(v199 + 16);
              v204 = *(v199 + 32);
              v205 = *(v199 + 48);
              v206 = vuzp2q_s32(*v199, v204);
              v301 = vuzp1q_s32(*v199, v204);
              v303 = v206;
              v305 = vuzp1q_s32(v203, v205);
              v307 = vuzp2q_s32(v203, v205);
              v201 = 64;
            }

            else if (v200 == 1)
            {
              v202 = vld1q_dup_s16(v199);
              v301 = v202;
              v303 = v202;
              v305 = v202;
              v307 = v202;
              v201 = 2;
            }

            else if (v71[3])
            {
              v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v199, v200);
            }

            else
            {
              v201 = 0;
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }

            v207 = v199 + v201;
            v208 = v71[4];
            if (v208 == 63)
            {
              v211 = *(v207 + 16);
              v212 = *(v207 + 32);
              v213 = *(v207 + 48);
              v214 = vuzp2q_s32(*v207, v212);
              v308 = vuzp1q_s32(*v207, v212);
              v310 = v214;
              v312 = vuzp1q_s32(v211, v213);
              v314 = vuzp2q_s32(v211, v213);
              v209 = 64;
            }

            else if (v208 == 1)
            {
              v210 = vld1q_dup_s16(v207);
              v308 = v210;
              v310 = v210;
              v312 = v210;
              v314 = v210;
              v209 = 2;
            }

            else if (v71[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v308, 32, v207, v208);
            }

            else
            {
              v209 = 0;
              v308 = 0uLL;
              v310 = 0uLL;
              v312 = 0uLL;
              v314 = 0uLL;
            }

            v215 = v207 + v209;
            v216 = v71[5];
            if (v216 == 63)
            {
              v219 = *(v215 + 16);
              v220 = *(v215 + 32);
              v221 = *(v215 + 48);
              v222 = vuzp2q_s32(*v215, v220);
              v316 = vuzp1q_s32(*v215, v220);
              v318 = v222;
              v320 = vuzp1q_s32(v219, v221);
              v322 = vuzp2q_s32(v219, v221);
              v217 = 64;
            }

            else if (v216 == 1)
            {
              v218 = vld1q_dup_s16(v215);
              v316 = v218;
              v318 = v218;
              v320 = v218;
              v322 = v218;
              v217 = 2;
            }

            else if (v71[5])
            {
              v217 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v316, 32, v215, v216);
            }

            else
            {
              v217 = 0;
              v316 = 0uLL;
              v318 = 0uLL;
              v320 = 0uLL;
              v322 = 0uLL;
            }

            v223 = v215 + v217;
            v224 = v71[6];
            if (v224 == 63)
            {
              v227 = *(v223 + 16);
              v228 = *(v223 + 32);
              v229 = *(v223 + 48);
              v230 = vuzp2q_s32(*v223, v228);
              v309 = vuzp1q_s32(*v223, v228);
              v311 = v230;
              v313 = vuzp1q_s32(v227, v229);
              v315 = vuzp2q_s32(v227, v229);
              v225 = 64;
            }

            else if (v224 == 1)
            {
              v226 = vld1q_dup_s16(v223);
              v309 = v226;
              v311 = v226;
              v313 = v226;
              v315 = v226;
              v225 = 2;
            }

            else if (v71[6])
            {
              v225 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 32, v223, v224);
            }

            else
            {
              v225 = 0;
              v309 = 0uLL;
              v311 = 0uLL;
              v313 = 0uLL;
              v315 = 0uLL;
            }

            v231 = v223 + v225;
            v232 = v71[7];
            if (v232 == 63)
            {
              v234 = *(v231 + 16);
              v235 = *(v231 + 32);
              v236 = *(v231 + 48);
              v237 = vuzp2q_s32(*v231, v235);
              v317 = vuzp1q_s32(*v231, v235);
              v319 = v237;
              v321 = vuzp1q_s32(v234, v236);
              v323 = vuzp2q_s32(v234, v236);
              v15 = v279;
              v169 = v33 + 1;
            }

            else
            {
              v15 = v279;
              v169 = v33 + 1;
              if (v232 == 1)
              {
                v233 = vld1q_dup_s16(v231);
                v317 = v233;
                v319 = v233;
                v321 = v233;
                v323 = v233;
              }

              else if (v232)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 32, v231, v232);
              }

              else
              {
                v317 = 0uLL;
                v319 = 0uLL;
                v321 = 0uLL;
                v323 = 0uLL;
              }
            }

            v238 = v287;
            if (v287)
            {
              v239 = 0;
              v240 = &v292.i8[32 * v285 + 2 * v286];
              v241 = v288;
              do
              {
                if (v241)
                {
                  v242 = 0;
                  v243 = &v283->i8[v284 * v239];
                  do
                  {
                    v243[v242] = v240[v242];
                    ++v242;
                    v241 = v288;
                  }

                  while (2 * v288 > v242);
                  v238 = v287;
                }

                ++v239;
                v240 += 32;
              }

              while (v239 < v238);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = *v70;
              v84 = v70[1];
              v85 = v70[2];
              v86 = v70[3];
              *v72 = vuzp1q_s32(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v83, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v87 = (v72 + v261);
              *v87 = vuzp1q_s32(v84, v86);
              *(v87 + a11) = vuzp2q_s32(v84, v86);
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70->i16);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v261);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v88 = v70->i64 + v76;
            v89 = (v72 + v263);
            v90 = v71[1];
            if (v90 == 63)
            {
              v96 = *v88;
              v97 = *(v88 + 16);
              v98 = *(v88 + 32);
              v99 = *(v88 + 48);
              *v89 = vuzp1q_s32(*v88, v98);
              *(v89 + v24) = vuzp2q_s32(v96, v98);
              v100 = (v89 + v74);
              *v100 = vuzp1q_s32(v97, v99);
              *(v100 + v24) = vuzp2q_s32(v97, v99);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v95 = vld1q_dup_s16(v88);
              *v89 = v95;
              *(v89 + v24) = v95;
              *(v89 + v74) = v95;
              *(v89 + v75) = v95;
              v91 = 2;
            }

            else if (v71[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v263), v24, v88, v90);
            }

            else
            {
              v91 = 0;
              v89->i64[0] = 0;
              v89->i64[1] = 0;
              v92 = (v89->i64 + v24);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v89->i64 + v74);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v89->i64 + v75);
              *v94 = 0;
              v94[1] = 0;
            }

            v101 = v88 + v91;
            v102 = v72 + 1;
            v103 = v71[2];
            if (v103 == 63)
            {
              v109 = *v101;
              v110 = *(v101 + 16);
              v111 = *(v101 + 32);
              v112 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v111);
              *(v102 + v24) = vuzp2q_s32(v109, v111);
              v113 = (v102 + v74);
              *v113 = vuzp1q_s32(v110, v112);
              *(v113 + v24) = vuzp2q_s32(v110, v112);
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v108 = vld1q_dup_s16(v101);
              *v102 = v108;
              *(v102 + v24) = v108;
              *(v102 + v74) = v108;
              *(v102 + v75) = v108;
              v104 = 2;
            }

            else if (v71[2])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v102, v24, v101, v103);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v72[1].i64[1] = 0;
              v105 = (v102->i64 + v24);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v74);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v75);
              *v107 = 0;
              v107[1] = 0;
            }

            v114 = v101 + v104;
            v115 = v89 + 1;
            v116 = v71[3];
            if (v116 == 63)
            {
              v122 = *v114;
              v123 = *(v114 + 16);
              v124 = *(v114 + 32);
              v125 = *(v114 + 48);
              *v115 = vuzp1q_s32(*v114, v124);
              *(v115 + v24) = vuzp2q_s32(v122, v124);
              v126 = (v115 + v74);
              *v126 = vuzp1q_s32(v123, v125);
              *(v126 + v24) = vuzp2q_s32(v123, v125);
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v24) = v121;
              *(v115 + v74) = v121;
              *(v115 + v75) = v121;
              v117 = 2;
            }

            else if (v71[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v115, v24, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v89[1].i64[1] = 0;
              v118 = (v115->i64 + v24);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v74);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v75);
              *v120 = 0;
              v120[1] = 0;
            }

            v127 = v114 + v117;
            v128 = (v72 + v262);
            v129 = v71[4];
            if (v129 == 63)
            {
              v135 = *v127;
              v136 = *(v127 + 16);
              v137 = *(v127 + 32);
              v138 = *(v127 + 48);
              *v128 = vuzp1q_s32(*v127, v137);
              *(v128 + v24) = vuzp2q_s32(v135, v137);
              v139 = (v128 + v74);
              *v139 = vuzp1q_s32(v136, v138);
              *(v139 + v24) = vuzp2q_s32(v136, v138);
              v130 = 64;
            }

            else if (v129 == 1)
            {
              v134 = vld1q_dup_s16(v127);
              *v128 = v134;
              *(v128 + v24) = v134;
              *(v128 + v74) = v134;
              *(v128 + v75) = v134;
              v130 = 2;
            }

            else if (v71[4])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v262), v24, v127, v129);
            }

            else
            {
              v130 = 0;
              v128->i64[0] = 0;
              v128->i64[1] = 0;
              v131 = (v128->i64 + v24);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v128->i64 + v74);
              *v132 = 0;
              v132[1] = 0;
              v133 = (v128->i64 + v75);
              *v133 = 0;
              v133[1] = 0;
            }

            v140 = v127 + v130;
            v141 = (v72 + 12 * a11);
            v142 = v71[5];
            if (v142 == 63)
            {
              v148 = *v140;
              v149 = *(v140 + 16);
              v150 = *(v140 + 32);
              v151 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v150);
              *(v141 + v24) = vuzp2q_s32(v148, v150);
              v152 = (v141 + v74);
              *v152 = vuzp1q_s32(v149, v151);
              *(v152 + v24) = vuzp2q_s32(v149, v151);
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v147 = vld1q_dup_s16(v140);
              *v141 = v147;
              *(v141 + v24) = v147;
              *(v141 + v74) = v147;
              *(v141 + v75) = v147;
              v143 = 2;
            }

            else if (v71[5])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v74);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v75);
              *v146 = 0;
              v146[1] = 0;
            }

            v153 = v140 + v143;
            v154 = v128 + 1;
            v155 = v71[6];
            if (v155 == 63)
            {
              v161 = *v153;
              v162 = *(v153 + 16);
              v163 = *(v153 + 32);
              v164 = *(v153 + 48);
              *v154 = vuzp1q_s32(*v153, v163);
              *(v154 + v24) = vuzp2q_s32(v161, v163);
              v165 = (v154 + v74);
              *v165 = vuzp1q_s32(v162, v164);
              *(v165 + v24) = vuzp2q_s32(v162, v164);
              v156 = 64;
            }

            else if (v155 == 1)
            {
              v160 = vld1q_dup_s16(v153);
              *v154 = v160;
              *(v154 + v24) = v160;
              *(v154 + v74) = v160;
              *(v154 + v75) = v160;
              v156 = 2;
            }

            else if (v71[6])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v24, v153, v155);
            }

            else
            {
              v156 = 0;
              v154->i64[0] = 0;
              v128[1].i64[1] = 0;
              v157 = (v154->i64 + v24);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v154->i64 + v74);
              *v158 = 0;
              v158[1] = 0;
              v159 = (v154->i64 + v75);
              *v159 = 0;
              v159[1] = 0;
            }

            v166 = v153 + v156;
            v167 = v141 + 1;
            v168 = v71[7];
            if (v168 == 63)
            {
              v173 = *v166;
              v174 = *(v166 + 16);
              v175 = *(v166 + 32);
              v176 = *(v166 + 48);
              *v167 = vuzp1q_s32(*v166, v175);
              *(v167 + v24) = vuzp2q_s32(v173, v175);
              v177 = (v167 + v74);
              *v177 = vuzp1q_s32(v174, v176);
              *(v177 + v24) = vuzp2q_s32(v174, v176);
              v35 = a7;
              v15 = v279;
              goto LABEL_145;
            }

            v35 = a7;
            v15 = v279;
            v169 = v33 + 1;
            if (v168 == 1)
            {
              v36 = vld1q_dup_s16(v166);
              *v167 = v36;
              *(v167 + v24) = v36;
              *(v167 + v74) = v36;
              *(v167 + v75) = v36;
            }

            else if (v168)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v24, v166, v168);
            }

            else
            {
              v167->i64[0] = 0;
              v167->i64[1] = 0;
              v170 = (v167->i64 + v24);
              *v170 = 0;
              v170[1] = 0;
              v171 = (v167->i64 + v74);
              *v171 = 0;
              v171[1] = 0;
              v172 = (v167->i64 + v75);
              *v172 = 0;
              v172[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v270 >> 4;
          v33 = v169;
        }

        while (!v20);
        v20 = v16++ == v260;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v324 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v277 = a8;
  v16 = a8 >> 4;
  v258 = a8 + a10 - 1;
  v260 = v258 >> 4;
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
  v272 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v260)
  {
    v270 = a7 + a9 - 1;
    if (a7 >> 4 <= v270 >> 4)
    {
      v24 = a11;
      v281 = (a5 - 1) >> 4;
      v255 = a5 - 1;
      v264 = (a5 - 1) & 0xF;
      v256 = (a6 - 1) & 0xF;
      v257 = (a6 - 1) >> 4;
      v262 = 8 * a11;
      v263 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v269 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v268 = v26;
      v254 = 8 * v18 * v17;
      v279 = v15;
      v261 = 2 * a11;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v277)
        {
          v28 = v277;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v258 < v27)
        {
          v27 = v258;
        }

        v276 = 16 * v16;
        v267 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v256;
        v266 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v256 + 1;
        if (v16 != v257)
        {
          v34 = 16;
        }

        v280 = v34;
        if (v16 != v257)
        {
          v31 = v32;
        }

        v265 = v31;
        v275 = a2 + (v28 - v277) * v24;
        v35 = a7;
        do
        {
          v37 = 16 * v33;
          v38 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = 16 * v33;
          }

          if (v270 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v281)
          {
            v42 = v264 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v276 >= v277 && v37 >= v35)
          {
            v44 = v40 != v264;
            if (v33 != v281)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v265;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v254 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v244 = (v65 >> 4) - 1;
            if (v67)
            {
              v245 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v246 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v246 | v245)
              {
                goto LABEL_224;
              }

LABEL_235:
              v253 = 0;
            }

            else
            {
              v245 = 32 - __clz(~(-1 << -__clz(v244)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v246 = 0;
              if (!v245)
              {
                goto LABEL_235;
              }

LABEL_224:
              v247 = 0;
              v248 = 0;
              v249 = v33 & v244;
              v250 = v245 != 0;
              v251 = v246 != 0;
              v252 = 1;
              do
              {
                --v245;
                if (v250)
                {
                  v248 |= (v252 & v249) << v247++;
                }

                else
                {
                  v245 = 0;
                }

                --v246;
                if (v251)
                {
                  v248 |= (v252 & v16 & ((v69 >> 4) - 1)) << v247++;
                }

                else
                {
                  v246 = 0;
                }

                v252 *= 2;
                --v247;
                v251 = v246 != 0;
                v250 = v245 != 0;
              }

              while (v246 | v245);
              v253 = v248 << 9;
            }

            v52 = v253 + ((v37 / v65 + v276 / v69 * ((v65 + v255) / v65)) << 14);
            goto LABEL_55;
          }

          if (v269)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v268.i8[0];
            v49 = v268.i8[4];
            v51 = v269.i32[0];
            v50 = v269.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v33) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v33) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v272)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v275 + 2 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v280 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v279;
            block[5] = v70;
            v289 = v42;
            v290 = v280;
            v285 = v267;
            v286 = v39 - v37;
            block[6] = v71;
            v283 = v72;
            v24 = a11;
            v284 = a11;
            v287 = v266;
            v288 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v279 + 8) + 16552), block);
              v35 = a7;
              v15 = v279;
LABEL_145:
              v169 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v179 = v70[1];
              v180 = v70[2];
              v181 = v70[3];
              v182 = vuzp2q_s32(*v70, v180);
              v292 = vuzp1q_s32(*v70, v180);
              v294 = v182;
              v296 = vuzp1q_s32(v179, v181);
              v298 = vuzp2q_s32(v179, v181);
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v178 = vld1q_dup_s16(v70->i16);
              v292 = v178;
              v294 = v178;
              v296 = v178;
              v298 = v178;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v70, v80);
            }

            else
            {
              v81 = 0;
              v292 = 0uLL;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
            }

            v183 = v70->i64 + v81;
            v184 = v71[1];
            if (v184 == 63)
            {
              v187 = *(v183 + 16);
              v188 = *(v183 + 32);
              v189 = *(v183 + 48);
              v190 = vuzp2q_s32(*v183, v188);
              v300 = vuzp1q_s32(*v183, v188);
              v302 = v190;
              v304 = vuzp1q_s32(v187, v189);
              v306 = vuzp2q_s32(v187, v189);
              v185 = 64;
            }

            else if (v184 == 1)
            {
              v186 = vld1q_dup_s16(v183);
              v300 = v186;
              v302 = v186;
              v304 = v186;
              v306 = v186;
              v185 = 2;
            }

            else if (v71[1])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v183, v184);
            }

            else
            {
              v185 = 0;
              v300 = 0uLL;
              v302 = 0uLL;
              v304 = 0uLL;
              v306 = 0uLL;
            }

            v191 = v183 + v185;
            v192 = v71[2];
            if (v192 == 63)
            {
              v195 = *(v191 + 16);
              v196 = *(v191 + 32);
              v197 = *(v191 + 48);
              v198 = vuzp2q_s32(*v191, v196);
              v293 = vuzp1q_s32(*v191, v196);
              v295 = v198;
              v297 = vuzp1q_s32(v195, v197);
              v299 = vuzp2q_s32(v195, v197);
              v193 = 64;
            }

            else if (v192 == 1)
            {
              v194 = vld1q_dup_s16(v191);
              v293 = v194;
              v295 = v194;
              v297 = v194;
              v299 = v194;
              v193 = 2;
            }

            else if (v71[2])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v191, v192);
            }

            else
            {
              v193 = 0;
              v293 = 0uLL;
              v295 = 0uLL;
              v297 = 0uLL;
              v299 = 0uLL;
            }

            v199 = v191 + v193;
            v200 = v71[3];
            if (v200 == 63)
            {
              v203 = *(v199 + 16);
              v204 = *(v199 + 32);
              v205 = *(v199 + 48);
              v206 = vuzp2q_s32(*v199, v204);
              v301 = vuzp1q_s32(*v199, v204);
              v303 = v206;
              v305 = vuzp1q_s32(v203, v205);
              v307 = vuzp2q_s32(v203, v205);
              v201 = 64;
            }

            else if (v200 == 1)
            {
              v202 = vld1q_dup_s16(v199);
              v301 = v202;
              v303 = v202;
              v305 = v202;
              v307 = v202;
              v201 = 2;
            }

            else if (v71[3])
            {
              v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v199, v200);
            }

            else
            {
              v201 = 0;
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }

            v207 = v199 + v201;
            v208 = v71[4];
            if (v208 == 63)
            {
              v211 = *(v207 + 16);
              v212 = *(v207 + 32);
              v213 = *(v207 + 48);
              v214 = vuzp2q_s32(*v207, v212);
              v308 = vuzp1q_s32(*v207, v212);
              v310 = v214;
              v312 = vuzp1q_s32(v211, v213);
              v314 = vuzp2q_s32(v211, v213);
              v209 = 64;
            }

            else if (v208 == 1)
            {
              v210 = vld1q_dup_s16(v207);
              v308 = v210;
              v310 = v210;
              v312 = v210;
              v314 = v210;
              v209 = 2;
            }

            else if (v71[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v308, 32, v207, v208);
            }

            else
            {
              v209 = 0;
              v308 = 0uLL;
              v310 = 0uLL;
              v312 = 0uLL;
              v314 = 0uLL;
            }

            v215 = v207 + v209;
            v216 = v71[5];
            if (v216 == 63)
            {
              v219 = *(v215 + 16);
              v220 = *(v215 + 32);
              v221 = *(v215 + 48);
              v222 = vuzp2q_s32(*v215, v220);
              v316 = vuzp1q_s32(*v215, v220);
              v318 = v222;
              v320 = vuzp1q_s32(v219, v221);
              v322 = vuzp2q_s32(v219, v221);
              v217 = 64;
            }

            else if (v216 == 1)
            {
              v218 = vld1q_dup_s16(v215);
              v316 = v218;
              v318 = v218;
              v320 = v218;
              v322 = v218;
              v217 = 2;
            }

            else if (v71[5])
            {
              v217 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v316, 32, v215, v216);
            }

            else
            {
              v217 = 0;
              v316 = 0uLL;
              v318 = 0uLL;
              v320 = 0uLL;
              v322 = 0uLL;
            }

            v223 = v215 + v217;
            v224 = v71[6];
            if (v224 == 63)
            {
              v227 = *(v223 + 16);
              v228 = *(v223 + 32);
              v229 = *(v223 + 48);
              v230 = vuzp2q_s32(*v223, v228);
              v309 = vuzp1q_s32(*v223, v228);
              v311 = v230;
              v313 = vuzp1q_s32(v227, v229);
              v315 = vuzp2q_s32(v227, v229);
              v225 = 64;
            }

            else if (v224 == 1)
            {
              v226 = vld1q_dup_s16(v223);
              v309 = v226;
              v311 = v226;
              v313 = v226;
              v315 = v226;
              v225 = 2;
            }

            else if (v71[6])
            {
              v225 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 32, v223, v224);
            }

            else
            {
              v225 = 0;
              v309 = 0uLL;
              v311 = 0uLL;
              v313 = 0uLL;
              v315 = 0uLL;
            }

            v231 = v223 + v225;
            v232 = v71[7];
            if (v232 == 63)
            {
              v234 = *(v231 + 16);
              v235 = *(v231 + 32);
              v236 = *(v231 + 48);
              v237 = vuzp2q_s32(*v231, v235);
              v317 = vuzp1q_s32(*v231, v235);
              v319 = v237;
              v321 = vuzp1q_s32(v234, v236);
              v323 = vuzp2q_s32(v234, v236);
              v15 = v279;
              v169 = v33 + 1;
            }

            else
            {
              v15 = v279;
              v169 = v33 + 1;
              if (v232 == 1)
              {
                v233 = vld1q_dup_s16(v231);
                v317 = v233;
                v319 = v233;
                v321 = v233;
                v323 = v233;
              }

              else if (v232)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 32, v231, v232);
              }

              else
              {
                v317 = 0uLL;
                v319 = 0uLL;
                v321 = 0uLL;
                v323 = 0uLL;
              }
            }

            v238 = v287;
            if (v287)
            {
              v239 = 0;
              v240 = &v292.i8[32 * v285 + 2 * v286];
              v241 = v288;
              do
              {
                if (v241)
                {
                  v242 = 0;
                  v243 = &v283->i8[v284 * v239];
                  do
                  {
                    v243[v242] = v240[v242];
                    ++v242;
                    v241 = v288;
                  }

                  while (2 * v288 > v242);
                  v238 = v287;
                }

                ++v239;
                v240 += 32;
              }

              while (v239 < v238);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = *v70;
              v84 = v70[1];
              v85 = v70[2];
              v86 = v70[3];
              *v72 = vuzp1q_s32(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v83, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v87 = (v72 + v261);
              *v87 = vuzp1q_s32(v84, v86);
              *(v87 + a11) = vuzp2q_s32(v84, v86);
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70->i16);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v261);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v88 = v70->i64 + v76;
            v89 = (v72 + v263);
            v90 = v71[1];
            if (v90 == 63)
            {
              v96 = *v88;
              v97 = *(v88 + 16);
              v98 = *(v88 + 32);
              v99 = *(v88 + 48);
              *v89 = vuzp1q_s32(*v88, v98);
              *(v89 + v24) = vuzp2q_s32(v96, v98);
              v100 = (v89 + v74);
              *v100 = vuzp1q_s32(v97, v99);
              *(v100 + v24) = vuzp2q_s32(v97, v99);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v95 = vld1q_dup_s16(v88);
              *v89 = v95;
              *(v89 + v24) = v95;
              *(v89 + v74) = v95;
              *(v89 + v75) = v95;
              v91 = 2;
            }

            else if (v71[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v263), v24, v88, v90);
            }

            else
            {
              v91 = 0;
              v89->i64[0] = 0;
              v89->i64[1] = 0;
              v92 = (v89->i64 + v24);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v89->i64 + v74);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v89->i64 + v75);
              *v94 = 0;
              v94[1] = 0;
            }

            v101 = v88 + v91;
            v102 = v72 + 1;
            v103 = v71[2];
            if (v103 == 63)
            {
              v109 = *v101;
              v110 = *(v101 + 16);
              v111 = *(v101 + 32);
              v112 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v111);
              *(v102 + v24) = vuzp2q_s32(v109, v111);
              v113 = (v102 + v74);
              *v113 = vuzp1q_s32(v110, v112);
              *(v113 + v24) = vuzp2q_s32(v110, v112);
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v108 = vld1q_dup_s16(v101);
              *v102 = v108;
              *(v102 + v24) = v108;
              *(v102 + v74) = v108;
              *(v102 + v75) = v108;
              v104 = 2;
            }

            else if (v71[2])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v102, v24, v101, v103);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v72[1].i64[1] = 0;
              v105 = (v102->i64 + v24);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v74);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v75);
              *v107 = 0;
              v107[1] = 0;
            }

            v114 = v101 + v104;
            v115 = v89 + 1;
            v116 = v71[3];
            if (v116 == 63)
            {
              v122 = *v114;
              v123 = *(v114 + 16);
              v124 = *(v114 + 32);
              v125 = *(v114 + 48);
              *v115 = vuzp1q_s32(*v114, v124);
              *(v115 + v24) = vuzp2q_s32(v122, v124);
              v126 = (v115 + v74);
              *v126 = vuzp1q_s32(v123, v125);
              *(v126 + v24) = vuzp2q_s32(v123, v125);
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v24) = v121;
              *(v115 + v74) = v121;
              *(v115 + v75) = v121;
              v117 = 2;
            }

            else if (v71[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v115, v24, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v89[1].i64[1] = 0;
              v118 = (v115->i64 + v24);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v74);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v75);
              *v120 = 0;
              v120[1] = 0;
            }

            v127 = v114 + v117;
            v128 = (v72 + v262);
            v129 = v71[4];
            if (v129 == 63)
            {
              v135 = *v127;
              v136 = *(v127 + 16);
              v137 = *(v127 + 32);
              v138 = *(v127 + 48);
              *v128 = vuzp1q_s32(*v127, v137);
              *(v128 + v24) = vuzp2q_s32(v135, v137);
              v139 = (v128 + v74);
              *v139 = vuzp1q_s32(v136, v138);
              *(v139 + v24) = vuzp2q_s32(v136, v138);
              v130 = 64;
            }

            else if (v129 == 1)
            {
              v134 = vld1q_dup_s16(v127);
              *v128 = v134;
              *(v128 + v24) = v134;
              *(v128 + v74) = v134;
              *(v128 + v75) = v134;
              v130 = 2;
            }

            else if (v71[4])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v262), v24, v127, v129);
            }

            else
            {
              v130 = 0;
              v128->i64[0] = 0;
              v128->i64[1] = 0;
              v131 = (v128->i64 + v24);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v128->i64 + v74);
              *v132 = 0;
              v132[1] = 0;
              v133 = (v128->i64 + v75);
              *v133 = 0;
              v133[1] = 0;
            }

            v140 = v127 + v130;
            v141 = (v72 + 12 * a11);
            v142 = v71[5];
            if (v142 == 63)
            {
              v148 = *v140;
              v149 = *(v140 + 16);
              v150 = *(v140 + 32);
              v151 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v150);
              *(v141 + v24) = vuzp2q_s32(v148, v150);
              v152 = (v141 + v74);
              *v152 = vuzp1q_s32(v149, v151);
              *(v152 + v24) = vuzp2q_s32(v149, v151);
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v147 = vld1q_dup_s16(v140);
              *v141 = v147;
              *(v141 + v24) = v147;
              *(v141 + v74) = v147;
              *(v141 + v75) = v147;
              v143 = 2;
            }

            else if (v71[5])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v74);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v75);
              *v146 = 0;
              v146[1] = 0;
            }

            v153 = v140 + v143;
            v154 = v128 + 1;
            v155 = v71[6];
            if (v155 == 63)
            {
              v161 = *v153;
              v162 = *(v153 + 16);
              v163 = *(v153 + 32);
              v164 = *(v153 + 48);
              *v154 = vuzp1q_s32(*v153, v163);
              *(v154 + v24) = vuzp2q_s32(v161, v163);
              v165 = (v154 + v74);
              *v165 = vuzp1q_s32(v162, v164);
              *(v165 + v24) = vuzp2q_s32(v162, v164);
              v156 = 64;
            }

            else if (v155 == 1)
            {
              v160 = vld1q_dup_s16(v153);
              *v154 = v160;
              *(v154 + v24) = v160;
              *(v154 + v74) = v160;
              *(v154 + v75) = v160;
              v156 = 2;
            }

            else if (v71[6])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v24, v153, v155);
            }

            else
            {
              v156 = 0;
              v154->i64[0] = 0;
              v128[1].i64[1] = 0;
              v157 = (v154->i64 + v24);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v154->i64 + v74);
              *v158 = 0;
              v158[1] = 0;
              v159 = (v154->i64 + v75);
              *v159 = 0;
              v159[1] = 0;
            }

            v166 = v153 + v156;
            v167 = v141 + 1;
            v168 = v71[7];
            if (v168 == 63)
            {
              v173 = *v166;
              v174 = *(v166 + 16);
              v175 = *(v166 + 32);
              v176 = *(v166 + 48);
              *v167 = vuzp1q_s32(*v166, v175);
              *(v167 + v24) = vuzp2q_s32(v173, v175);
              v177 = (v167 + v74);
              *v177 = vuzp1q_s32(v174, v176);
              *(v177 + v24) = vuzp2q_s32(v174, v176);
              v35 = a7;
              v15 = v279;
              goto LABEL_145;
            }

            v35 = a7;
            v15 = v279;
            v169 = v33 + 1;
            if (v168 == 1)
            {
              v36 = vld1q_dup_s16(v166);
              *v167 = v36;
              *(v167 + v24) = v36;
              *(v167 + v74) = v36;
              *(v167 + v75) = v36;
            }

            else if (v168)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v24, v166, v168);
            }

            else
            {
              v167->i64[0] = 0;
              v167->i64[1] = 0;
              v170 = (v167->i64 + v24);
              *v170 = 0;
              v170[1] = 0;
              v171 = (v167->i64 + v74);
              *v171 = 0;
              v171[1] = 0;
              v172 = (v167->i64 + v75);
              *v172 = 0;
              v172[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v270 >> 4;
          v33 = v169;
        }

        while (!v20);
        v20 = v16++ == v260;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v330 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v284 = a8;
  v264 = a8 + a10 - 1;
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
  v263 = v264 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v279 = v23;
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
      v278 = 0;
LABEL_32:
      v275 = v25 - 4;
      v267 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v261 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v278 = v30 >= v24;
    goto LABEL_32;
  }

  v278 = 0;
  v261 = 0;
  v267 = 0;
  v275 = 0;
LABEL_33:
  if (v17 <= v263)
  {
    v277 = a7 + a9 - 1;
    if (a7 >> 4 <= v277 >> 4)
    {
      v32 = a11;
      v287 = v18 >> 4;
      v271 = v18 & 0xF;
      v276 = (v18 & 0xF) + 1;
      v259 = v19 & 0xF;
      v260 = v19 >> 4;
      v269 = 8 * a11;
      v270 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v266 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v265 = v34;
      v285 = v15;
      v268 = 2 * a11;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v284)
        {
          v36 = v284;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v264 < v35)
        {
          v35 = v264;
        }

        v274 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v259;
        v273 = v38;
        v40 = v38 != 16;
        v41 = a7 >> 4;
        v42 = v259 + 1;
        if (v17 != v260)
        {
          v42 = 16;
        }

        v286 = v42;
        if (v17 != v260)
        {
          v39 = v40;
        }

        v272 = v39;
        v43 = v17 & ~(-1 << v267);
        v282 = a2 + (v36 - v284) * v32;
        v44 = a7;
        do
        {
          v46 = 16 * v41;
          v47 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v41;
          }

          if (v277 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v287)
          {
            v51 = v276;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v17 >= v284 && v46 >= v44)
          {
            v53 = v49 != v271;
            if (v41 != v287)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v272;
          }

          if (v278)
          {
            if (v275 | v267)
            {
              v54 = 0;
              v55 = 0;
              v56 = v267 != 0;
              v57 = 1;
              v59 = v275 != 0;
              v58 = v267;
              v60 = v275;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v41 & ~(-1 << v275) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v43 & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v275) + (v17 >> v267) * v261);
          }

          else if (v266)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v265.i8[0];
            v66 = v265.i8[4];
            v68 = v266.i32[0];
            v67 = v266.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
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

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v77 |= (v80 & v41) << v76++;
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
          if (v279)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = (v282 + 2 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v286 > 0xF)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              *v87 = vuzp1q_s32(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vuzp2q_s32(v98, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v102 = (v87 + v268);
              *v102 = vuzp1q_s32(v99, v101);
              *(v102 + a11) = vuzp2q_s32(v99, v101);
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82->i16);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v268);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v103 = v82->i64 + v91;
            v104 = (v87 + v270);
            v105 = v86[1];
            if (v105 == 63)
            {
              v111 = *v103;
              v112 = *(v103 + 16);
              v113 = *(v103 + 32);
              v114 = *(v103 + 48);
              *v104 = vuzp1q_s32(*v103, v113);
              *(v104 + v32) = vuzp2q_s32(v111, v113);
              v115 = (v104 + v89);
              *v115 = vuzp1q_s32(v112, v114);
              *(v115 + v32) = vuzp2q_s32(v112, v114);
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v110 = vld1q_dup_s16(v103);
              *v104 = v110;
              *(v104 + v32) = v110;
              *(v104 + v89) = v110;
              *(v104 + v90) = v110;
              v106 = 2;
            }

            else if (v86[1])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v270), v32, v103, v105);
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v104->i64[1] = 0;
              v107 = (v104->i64 + v32);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v89);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v90);
              *v109 = 0;
              v109[1] = 0;
            }

            v116 = v103 + v106;
            v117 = v87 + 1;
            v118 = v86[2];
            if (v118 == 63)
            {
              v124 = *v116;
              v125 = *(v116 + 16);
              v126 = *(v116 + 32);
              v127 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v126);
              *(v117 + v32) = vuzp2q_s32(v124, v126);
              v128 = (v117 + v89);
              *v128 = vuzp1q_s32(v125, v127);
              *(v128 + v32) = vuzp2q_s32(v125, v127);
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v123 = vld1q_dup_s16(v116);
              *v117 = v123;
              *(v117 + v32) = v123;
              *(v117 + v89) = v123;
              *(v117 + v90) = v123;
              v119 = 2;
            }

            else if (v86[2])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, v32, v116, v118);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v87[1].i64[1] = 0;
              v120 = (v117->i64 + v32);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v89);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v90);
              *v122 = 0;
              v122[1] = 0;
            }

            v129 = v116 + v119;
            v130 = v104 + 1;
            v131 = v86[3];
            if (v131 == 63)
            {
              v137 = *v129;
              v138 = *(v129 + 16);
              v139 = *(v129 + 32);
              v140 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v139);
              *(v130 + v32) = vuzp2q_s32(v137, v139);
              v141 = (v130 + v89);
              *v141 = vuzp1q_s32(v138, v140);
              *(v141 + v32) = vuzp2q_s32(v138, v140);
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v136 = vld1q_dup_s16(v129);
              *v130 = v136;
              *(v130 + v32) = v136;
              *(v130 + v89) = v136;
              *(v130 + v90) = v136;
              v132 = 2;
            }

            else if (v86[3])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v104[1].i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v89);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v90);
              *v135 = 0;
              v135[1] = 0;
            }

            v142 = v129 + v132;
            v143 = (v87 + v269);
            v144 = v86[4];
            if (v144 == 63)
            {
              v150 = *v142;
              v151 = *(v142 + 16);
              v152 = *(v142 + 32);
              v153 = *(v142 + 48);
              *v143 = vuzp1q_s32(*v142, v152);
              *(v143 + v32) = vuzp2q_s32(v150, v152);
              v154 = (v143 + v89);
              *v154 = vuzp1q_s32(v151, v153);
              *(v154 + v32) = vuzp2q_s32(v151, v153);
              v145 = 64;
            }

            else if (v144 == 1)
            {
              v149 = vld1q_dup_s16(v142);
              *v143 = v149;
              *(v143 + v32) = v149;
              *(v143 + v89) = v149;
              *(v143 + v90) = v149;
              v145 = 2;
            }

            else if (v86[4])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v269), v32, v142, v144);
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v143->i64[1] = 0;
              v146 = (v143->i64 + v32);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v89);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v90);
              *v148 = 0;
              v148[1] = 0;
            }

            v155 = v142 + v145;
            v156 = (v87 + 12 * a11);
            v157 = v86[5];
            if (v157 == 63)
            {
              v163 = *v155;
              v164 = *(v155 + 16);
              v165 = *(v155 + 32);
              v166 = *(v155 + 48);
              *v156 = vuzp1q_s32(*v155, v165);
              *(v156 + v32) = vuzp2q_s32(v163, v165);
              v167 = (v156 + v89);
              *v167 = vuzp1q_s32(v164, v166);
              *(v167 + v32) = vuzp2q_s32(v164, v166);
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v162 = vld1q_dup_s16(v155);
              *v156 = v162;
              *(v156 + v32) = v162;
              *(v156 + v89) = v162;
              *(v156 + v90) = v162;
              v158 = 2;
            }

            else if (v86[5])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, v32, v155, v157);
            }

            else
            {
              v158 = 0;
              v156->i64[0] = 0;
              v156->i64[1] = 0;
              v159 = (v156->i64 + v32);
              *v159 = 0;
              v159[1] = 0;
              v160 = (v156->i64 + v89);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v156->i64 + v90);
              *v161 = 0;
              v161[1] = 0;
            }

            v168 = v155 + v158;
            v169 = v143 + 1;
            v170 = v86[6];
            if (v170 == 63)
            {
              v176 = *v168;
              v177 = *(v168 + 16);
              v178 = *(v168 + 32);
              v179 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v178);
              *(v169 + v32) = vuzp2q_s32(v176, v178);
              v180 = (v169 + v89);
              *v180 = vuzp1q_s32(v177, v179);
              *(v180 + v32) = vuzp2q_s32(v177, v179);
              v171 = 64;
            }

            else if (v170 == 1)
            {
              v175 = vld1q_dup_s16(v168);
              *v169 = v175;
              *(v169 + v32) = v175;
              *(v169 + v89) = v175;
              *(v169 + v90) = v175;
              v171 = 2;
            }

            else if (v86[6])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170);
            }

            else
            {
              v171 = 0;
              v169->i64[0] = 0;
              v143[1].i64[1] = 0;
              v172 = (v169->i64 + v32);
              *v172 = 0;
              v172[1] = 0;
              v173 = (v169->i64 + v89);
              *v173 = 0;
              v173[1] = 0;
              v174 = (v169->i64 + v90);
              *v174 = 0;
              v174[1] = 0;
            }

            v181 = v168 + v171;
            v182 = v156 + 1;
            v183 = v86[7];
            if (v183 == 63)
            {
              v188 = *v181;
              v189 = *(v181 + 16);
              v190 = *(v181 + 32);
              v191 = *(v181 + 48);
              *v182 = vuzp1q_s32(*v181, v190);
              *(v182 + v32) = vuzp2q_s32(v188, v190);
              v192 = (v182 + v89);
              *v192 = vuzp1q_s32(v189, v191);
              *(v192 + v32) = vuzp2q_s32(v189, v191);
              v44 = a7;
              v15 = v285;
            }

            else
            {
              v44 = a7;
              v15 = v285;
              if (v183 == 1)
              {
                v187 = vld1q_dup_s16(v181);
                *v182 = v187;
                *(v182 + v32) = v187;
                *(v182 + v89) = v187;
                *(v182 + v90) = v187;
              }

              else if (v183)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v182, v32, v181, v183);
              }

              else
              {
                v182->i64[0] = 0;
                v182->i64[1] = 0;
                v184 = (v182->i64 + v32);
                *v184 = 0;
                v184[1] = 0;
                v185 = (v182->i64 + v89);
                *v185 = 0;
                v185[1] = 0;
                v186 = (v182->i64 + v90);
                *v186 = 0;
                v186[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v285;
          block[5] = v82;
          v295 = v51;
          v296 = v286;
          v291 = v274;
          v292 = v48 - v46;
          block[6] = v86;
          v289 = v87;
          v32 = a11;
          v290 = a11;
          v293 = v273;
          v294 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v285 + 8) + 16552), block);
            v44 = a7;
            v15 = v285;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v194 = v82[1];
            v195 = v82[2];
            v196 = v82[3];
            v197 = vuzp2q_s32(*v82, v195);
            v298 = vuzp1q_s32(*v82, v195);
            v300 = v197;
            v302 = vuzp1q_s32(v194, v196);
            v304 = vuzp2q_s32(v194, v196);
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v193 = vld1q_dup_s16(v82->i16);
            v298 = v193;
            v300 = v193;
            v302 = v193;
            v304 = v193;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 32, v82, v95);
          }

          else
          {
            v96 = 0;
            v298 = 0uLL;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
          }

          v198 = v82->i64 + v96;
          v199 = v86[1];
          if (v199 == 63)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = vuzp2q_s32(*v198, v203);
            v306 = vuzp1q_s32(*v198, v203);
            v308 = v205;
            v310 = vuzp1q_s32(v202, v204);
            v312 = vuzp2q_s32(v202, v204);
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v306 = v201;
            v308 = v201;
            v310 = v201;
            v312 = v201;
            v200 = 2;
          }

          else if (v86[1])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v306, 32, v198, v199);
          }

          else
          {
            v200 = 0;
            v306 = 0uLL;
            v308 = 0uLL;
            v310 = 0uLL;
            v312 = 0uLL;
          }

          v206 = v198 + v200;
          v207 = v86[2];
          if (v207 == 63)
          {
            v210 = *(v206 + 16);
            v211 = *(v206 + 32);
            v212 = *(v206 + 48);
            v213 = vuzp2q_s32(*v206, v211);
            v299 = vuzp1q_s32(*v206, v211);
            v301 = v213;
            v303 = vuzp1q_s32(v210, v212);
            v305 = vuzp2q_s32(v210, v212);
            v208 = 64;
          }

          else if (v207 == 1)
          {
            v209 = vld1q_dup_s16(v206);
            v299 = v209;
            v301 = v209;
            v303 = v209;
            v305 = v209;
            v208 = 2;
          }

          else if (v86[2])
          {
            v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 32, v206, v207);
          }

          else
          {
            v208 = 0;
            v299 = 0uLL;
            v301 = 0uLL;
            v303 = 0uLL;
            v305 = 0uLL;
          }

          v214 = v206 + v208;
          v215 = v86[3];
          if (v215 == 63)
          {
            v218 = *(v214 + 16);
            v219 = *(v214 + 32);
            v220 = *(v214 + 48);
            v221 = vuzp2q_s32(*v214, v219);
            v307 = vuzp1q_s32(*v214, v219);
            v309 = v221;
            v311 = vuzp1q_s32(v218, v220);
            v313 = vuzp2q_s32(v218, v220);
            v216 = 64;
          }

          else if (v215 == 1)
          {
            v217 = vld1q_dup_s16(v214);
            v307 = v217;
            v309 = v217;
            v311 = v217;
            v313 = v217;
            v216 = 2;
          }

          else if (v86[3])
          {
            v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v307, 32, v214, v215);
          }

          else
          {
            v216 = 0;
            v307 = 0uLL;
            v309 = 0uLL;
            v311 = 0uLL;
            v313 = 0uLL;
          }

          v222 = v214 + v216;
          v223 = v86[4];
          if (v223 == 63)
          {
            v226 = *(v222 + 16);
            v227 = *(v222 + 32);
            v228 = *(v222 + 48);
            v229 = vuzp2q_s32(*v222, v227);
            v314 = vuzp1q_s32(*v222, v227);
            v316 = v229;
            v318 = vuzp1q_s32(v226, v228);
            v320 = vuzp2q_s32(v226, v228);
            v224 = 64;
          }

          else if (v223 == 1)
          {
            v225 = vld1q_dup_s16(v222);
            v314 = v225;
            v316 = v225;
            v318 = v225;
            v320 = v225;
            v224 = 2;
          }

          else if (v86[4])
          {
            v224 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v314, 32, v222, v223);
          }

          else
          {
            v224 = 0;
            v314 = 0uLL;
            v316 = 0uLL;
            v318 = 0uLL;
            v320 = 0uLL;
          }

          v230 = v222 + v224;
          v231 = v86[5];
          if (v231 == 63)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = vuzp2q_s32(*v230, v235);
            v322 = vuzp1q_s32(*v230, v235);
            v324 = v237;
            v326 = vuzp1q_s32(v234, v236);
            v328 = vuzp2q_s32(v234, v236);
            v232 = 64;
          }

          else if (v231 == 1)
          {
            v233 = vld1q_dup_s16(v230);
            v322 = v233;
            v324 = v233;
            v326 = v233;
            v328 = v233;
            v232 = 2;
          }

          else if (v86[5])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 32, v230, v231);
          }

          else
          {
            v232 = 0;
            v322 = 0uLL;
            v324 = 0uLL;
            v326 = 0uLL;
            v328 = 0uLL;
          }

          v238 = v230 + v232;
          v239 = v86[6];
          if (v239 == 63)
          {
            v242 = *(v238 + 16);
            v243 = *(v238 + 32);
            v244 = *(v238 + 48);
            v245 = vuzp2q_s32(*v238, v243);
            v315 = vuzp1q_s32(*v238, v243);
            v317 = v245;
            v319 = vuzp1q_s32(v242, v244);
            v321 = vuzp2q_s32(v242, v244);
            v240 = 64;
          }

          else if (v239 == 1)
          {
            v241 = vld1q_dup_s16(v238);
            v315 = v241;
            v317 = v241;
            v319 = v241;
            v321 = v241;
            v240 = 2;
          }

          else if (v86[6])
          {
            v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v315, 32, v238, v239);
          }

          else
          {
            v240 = 0;
            v315 = 0uLL;
            v317 = 0uLL;
            v319 = 0uLL;
            v321 = 0uLL;
          }

          v246 = v238 + v240;
          v247 = v86[7];
          if (v247 == 63)
          {
            v249 = *(v246 + 16);
            v250 = *(v246 + 32);
            v251 = *(v246 + 48);
            v252 = vuzp2q_s32(*v246, v250);
            v323 = vuzp1q_s32(*v246, v250);
            v325 = v252;
            v327 = vuzp1q_s32(v249, v251);
            v329 = vuzp2q_s32(v249, v251);
            v44 = a7;
            v15 = v285;
          }

          else
          {
            v44 = a7;
            v15 = v285;
            if (v247 == 1)
            {
              v248 = vld1q_dup_s16(v246);
              v323 = v248;
              v325 = v248;
              v327 = v248;
              v329 = v248;
            }

            else if (v247)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 32, v246, v247);
            }

            else
            {
              v323 = 0uLL;
              v325 = 0uLL;
              v327 = 0uLL;
              v329 = 0uLL;
            }
          }

          v253 = v293;
          v45 = v41 + 1;
          if (v293)
          {
            v254 = 0;
            v255 = &v298.i8[32 * v291 + 2 * v292];
            v256 = v294;
            do
            {
              if (v256)
              {
                v257 = 0;
                v258 = &v289->i8[v290 * v254];
                do
                {
                  v258[v257] = v255[v257];
                  ++v257;
                  v256 = v294;
                }

                while (2 * v294 > v257);
                v253 = v293;
              }

              ++v254;
              v255 += 32;
            }

            while (v254 < v253);
          }

LABEL_50:
          v20 = v41 == v277 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v263;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v330 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v284 = a8;
  v264 = a8 + a10 - 1;
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
  v263 = v264 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v279 = v23;
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
      v278 = 0;
LABEL_32:
      v275 = v25 - 4;
      v267 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v261 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v278 = v30 >= v24;
    goto LABEL_32;
  }

  v278 = 0;
  v261 = 0;
  v267 = 0;
  v275 = 0;
LABEL_33:
  if (v17 <= v263)
  {
    v277 = a7 + a9 - 1;
    if (a7 >> 4 <= v277 >> 4)
    {
      v32 = a11;
      v287 = v18 >> 4;
      v271 = v18 & 0xF;
      v276 = (v18 & 0xF) + 1;
      v259 = v19 & 0xF;
      v260 = v19 >> 4;
      v269 = 8 * a11;
      v270 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v266 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v265 = v34;
      v285 = v15;
      v268 = 2 * a11;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v284)
        {
          v36 = v284;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v264 < v35)
        {
          v35 = v264;
        }

        v274 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v259;
        v273 = v38;
        v40 = v38 != 16;
        v41 = a7 >> 4;
        v42 = v259 + 1;
        if (v17 != v260)
        {
          v42 = 16;
        }

        v286 = v42;
        if (v17 != v260)
        {
          v39 = v40;
        }

        v272 = v39;
        v43 = v17 & ~(-1 << v267);
        v282 = a2 + (v36 - v284) * v32;
        v44 = a7;
        do
        {
          v46 = 16 * v41;
          v47 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v41;
          }

          if (v277 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v287)
          {
            v51 = v276;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v17 >= v284 && v46 >= v44)
          {
            v53 = v49 != v271;
            if (v41 != v287)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v272;
          }

          if (v278)
          {
            if (v275 | v267)
            {
              v54 = 0;
              v55 = 0;
              v56 = v267 != 0;
              v57 = 1;
              v59 = v275 != 0;
              v58 = v267;
              v60 = v275;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v41 & ~(-1 << v275) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v43 & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v275) + (v17 >> v267) * v261);
          }

          else if (v266)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v265.i8[0];
            v66 = v265.i8[4];
            v68 = v266.i32[0];
            v67 = v266.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
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

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v77 |= (v80 & v41) << v76++;
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
          if (v279)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = (v282 + 2 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v286 > 0xF)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              *v87 = vuzp1q_s32(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vuzp2q_s32(v98, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v102 = (v87 + v268);
              *v102 = vuzp1q_s32(v99, v101);
              *(v102 + a11) = vuzp2q_s32(v99, v101);
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82->i16);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v268);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v103 = v82->i64 + v91;
            v104 = (v87 + v270);
            v105 = v86[1];
            if (v105 == 63)
            {
              v111 = *v103;
              v112 = *(v103 + 16);
              v113 = *(v103 + 32);
              v114 = *(v103 + 48);
              *v104 = vuzp1q_s32(*v103, v113);
              *(v104 + v32) = vuzp2q_s32(v111, v113);
              v115 = (v104 + v89);
              *v115 = vuzp1q_s32(v112, v114);
              *(v115 + v32) = vuzp2q_s32(v112, v114);
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v110 = vld1q_dup_s16(v103);
              *v104 = v110;
              *(v104 + v32) = v110;
              *(v104 + v89) = v110;
              *(v104 + v90) = v110;
              v106 = 2;
            }

            else if (v86[1])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v270), v32, v103, v105);
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v104->i64[1] = 0;
              v107 = (v104->i64 + v32);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v89);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v90);
              *v109 = 0;
              v109[1] = 0;
            }

            v116 = v103 + v106;
            v117 = v87 + 1;
            v118 = v86[2];
            if (v118 == 63)
            {
              v124 = *v116;
              v125 = *(v116 + 16);
              v126 = *(v116 + 32);
              v127 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v126);
              *(v117 + v32) = vuzp2q_s32(v124, v126);
              v128 = (v117 + v89);
              *v128 = vuzp1q_s32(v125, v127);
              *(v128 + v32) = vuzp2q_s32(v125, v127);
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v123 = vld1q_dup_s16(v116);
              *v117 = v123;
              *(v117 + v32) = v123;
              *(v117 + v89) = v123;
              *(v117 + v90) = v123;
              v119 = 2;
            }

            else if (v86[2])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, v32, v116, v118);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v87[1].i64[1] = 0;
              v120 = (v117->i64 + v32);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v89);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v90);
              *v122 = 0;
              v122[1] = 0;
            }

            v129 = v116 + v119;
            v130 = v104 + 1;
            v131 = v86[3];
            if (v131 == 63)
            {
              v137 = *v129;
              v138 = *(v129 + 16);
              v139 = *(v129 + 32);
              v140 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v139);
              *(v130 + v32) = vuzp2q_s32(v137, v139);
              v141 = (v130 + v89);
              *v141 = vuzp1q_s32(v138, v140);
              *(v141 + v32) = vuzp2q_s32(v138, v140);
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v136 = vld1q_dup_s16(v129);
              *v130 = v136;
              *(v130 + v32) = v136;
              *(v130 + v89) = v136;
              *(v130 + v90) = v136;
              v132 = 2;
            }

            else if (v86[3])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v104[1].i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v89);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v90);
              *v135 = 0;
              v135[1] = 0;
            }

            v142 = v129 + v132;
            v143 = (v87 + v269);
            v144 = v86[4];
            if (v144 == 63)
            {
              v150 = *v142;
              v151 = *(v142 + 16);
              v152 = *(v142 + 32);
              v153 = *(v142 + 48);
              *v143 = vuzp1q_s32(*v142, v152);
              *(v143 + v32) = vuzp2q_s32(v150, v152);
              v154 = (v143 + v89);
              *v154 = vuzp1q_s32(v151, v153);
              *(v154 + v32) = vuzp2q_s32(v151, v153);
              v145 = 64;
            }

            else if (v144 == 1)
            {
              v149 = vld1q_dup_s16(v142);
              *v143 = v149;
              *(v143 + v32) = v149;
              *(v143 + v89) = v149;
              *(v143 + v90) = v149;
              v145 = 2;
            }

            else if (v86[4])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v269), v32, v142, v144);
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v143->i64[1] = 0;
              v146 = (v143->i64 + v32);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v89);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v90);
              *v148 = 0;
              v148[1] = 0;
            }

            v155 = v142 + v145;
            v156 = (v87 + 12 * a11);
            v157 = v86[5];
            if (v157 == 63)
            {
              v163 = *v155;
              v164 = *(v155 + 16);
              v165 = *(v155 + 32);
              v166 = *(v155 + 48);
              *v156 = vuzp1q_s32(*v155, v165);
              *(v156 + v32) = vuzp2q_s32(v163, v165);
              v167 = (v156 + v89);
              *v167 = vuzp1q_s32(v164, v166);
              *(v167 + v32) = vuzp2q_s32(v164, v166);
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v162 = vld1q_dup_s16(v155);
              *v156 = v162;
              *(v156 + v32) = v162;
              *(v156 + v89) = v162;
              *(v156 + v90) = v162;
              v158 = 2;
            }

            else if (v86[5])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, v32, v155, v157);
            }

            else
            {
              v158 = 0;
              v156->i64[0] = 0;
              v156->i64[1] = 0;
              v159 = (v156->i64 + v32);
              *v159 = 0;
              v159[1] = 0;
              v160 = (v156->i64 + v89);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v156->i64 + v90);
              *v161 = 0;
              v161[1] = 0;
            }

            v168 = v155 + v158;
            v169 = v143 + 1;
            v170 = v86[6];
            if (v170 == 63)
            {
              v176 = *v168;
              v177 = *(v168 + 16);
              v178 = *(v168 + 32);
              v179 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v178);
              *(v169 + v32) = vuzp2q_s32(v176, v178);
              v180 = (v169 + v89);
              *v180 = vuzp1q_s32(v177, v179);
              *(v180 + v32) = vuzp2q_s32(v177, v179);
              v171 = 64;
            }

            else if (v170 == 1)
            {
              v175 = vld1q_dup_s16(v168);
              *v169 = v175;
              *(v169 + v32) = v175;
              *(v169 + v89) = v175;
              *(v169 + v90) = v175;
              v171 = 2;
            }

            else if (v86[6])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170);
            }

            else
            {
              v171 = 0;
              v169->i64[0] = 0;
              v143[1].i64[1] = 0;
              v172 = (v169->i64 + v32);
              *v172 = 0;
              v172[1] = 0;
              v173 = (v169->i64 + v89);
              *v173 = 0;
              v173[1] = 0;
              v174 = (v169->i64 + v90);
              *v174 = 0;
              v174[1] = 0;
            }

            v181 = v168 + v171;
            v182 = v156 + 1;
            v183 = v86[7];
            if (v183 == 63)
            {
              v188 = *v181;
              v189 = *(v181 + 16);
              v190 = *(v181 + 32);
              v191 = *(v181 + 48);
              *v182 = vuzp1q_s32(*v181, v190);
              *(v182 + v32) = vuzp2q_s32(v188, v190);
              v192 = (v182 + v89);
              *v192 = vuzp1q_s32(v189, v191);
              *(v192 + v32) = vuzp2q_s32(v189, v191);
              v44 = a7;
              v15 = v285;
            }

            else
            {
              v44 = a7;
              v15 = v285;
              if (v183 == 1)
              {
                v187 = vld1q_dup_s16(v181);
                *v182 = v187;
                *(v182 + v32) = v187;
                *(v182 + v89) = v187;
                *(v182 + v90) = v187;
              }

              else if (v183)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v182, v32, v181, v183);
              }

              else
              {
                v182->i64[0] = 0;
                v182->i64[1] = 0;
                v184 = (v182->i64 + v32);
                *v184 = 0;
                v184[1] = 0;
                v185 = (v182->i64 + v89);
                *v185 = 0;
                v185[1] = 0;
                v186 = (v182->i64 + v90);
                *v186 = 0;
                v186[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v285;
          block[5] = v82;
          v295 = v51;
          v296 = v286;
          v291 = v274;
          v292 = v48 - v46;
          block[6] = v86;
          v289 = v87;
          v32 = a11;
          v290 = a11;
          v293 = v273;
          v294 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v285 + 8) + 16552), block);
            v44 = a7;
            v15 = v285;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v194 = v82[1];
            v195 = v82[2];
            v196 = v82[3];
            v197 = vuzp2q_s32(*v82, v195);
            v298 = vuzp1q_s32(*v82, v195);
            v300 = v197;
            v302 = vuzp1q_s32(v194, v196);
            v304 = vuzp2q_s32(v194, v196);
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v193 = vld1q_dup_s16(v82->i16);
            v298 = v193;
            v300 = v193;
            v302 = v193;
            v304 = v193;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 32, v82, v95);
          }

          else
          {
            v96 = 0;
            v298 = 0uLL;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
          }

          v198 = v82->i64 + v96;
          v199 = v86[1];
          if (v199 == 63)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = vuzp2q_s32(*v198, v203);
            v306 = vuzp1q_s32(*v198, v203);
            v308 = v205;
            v310 = vuzp1q_s32(v202, v204);
            v312 = vuzp2q_s32(v202, v204);
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v306 = v201;
            v308 = v201;
            v310 = v201;
            v312 = v201;
            v200 = 2;
          }

          else if (v86[1])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v306, 32, v198, v199);
          }

          else
          {
            v200 = 0;
            v306 = 0uLL;
            v308 = 0uLL;
            v310 = 0uLL;
            v312 = 0uLL;
          }

          v206 = v198 + v200;
          v207 = v86[2];
          if (v207 == 63)
          {
            v210 = *(v206 + 16);
            v211 = *(v206 + 32);
            v212 = *(v206 + 48);
            v213 = vuzp2q_s32(*v206, v211);
            v299 = vuzp1q_s32(*v206, v211);
            v301 = v213;
            v303 = vuzp1q_s32(v210, v212);
            v305 = vuzp2q_s32(v210, v212);
            v208 = 64;
          }

          else if (v207 == 1)
          {
            v209 = vld1q_dup_s16(v206);
            v299 = v209;
            v301 = v209;
            v303 = v209;
            v305 = v209;
            v208 = 2;
          }

          else if (v86[2])
          {
            v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 32, v206, v207);
          }

          else
          {
            v208 = 0;
            v299 = 0uLL;
            v301 = 0uLL;
            v303 = 0uLL;
            v305 = 0uLL;
          }

          v214 = v206 + v208;
          v215 = v86[3];
          if (v215 == 63)
          {
            v218 = *(v214 + 16);
            v219 = *(v214 + 32);
            v220 = *(v214 + 48);
            v221 = vuzp2q_s32(*v214, v219);
            v307 = vuzp1q_s32(*v214, v219);
            v309 = v221;
            v311 = vuzp1q_s32(v218, v220);
            v313 = vuzp2q_s32(v218, v220);
            v216 = 64;
          }

          else if (v215 == 1)
          {
            v217 = vld1q_dup_s16(v214);
            v307 = v217;
            v309 = v217;
            v311 = v217;
            v313 = v217;
            v216 = 2;
          }

          else if (v86[3])
          {
            v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v307, 32, v214, v215);
          }

          else
          {
            v216 = 0;
            v307 = 0uLL;
            v309 = 0uLL;
            v311 = 0uLL;
            v313 = 0uLL;
          }

          v222 = v214 + v216;
          v223 = v86[4];
          if (v223 == 63)
          {
            v226 = *(v222 + 16);
            v227 = *(v222 + 32);
            v228 = *(v222 + 48);
            v229 = vuzp2q_s32(*v222, v227);
            v314 = vuzp1q_s32(*v222, v227);
            v316 = v229;
            v318 = vuzp1q_s32(v226, v228);
            v320 = vuzp2q_s32(v226, v228);
            v224 = 64;
          }

          else if (v223 == 1)
          {
            v225 = vld1q_dup_s16(v222);
            v314 = v225;
            v316 = v225;
            v318 = v225;
            v320 = v225;
            v224 = 2;
          }

          else if (v86[4])
          {
            v224 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v314, 32, v222, v223);
          }

          else
          {
            v224 = 0;
            v314 = 0uLL;
            v316 = 0uLL;
            v318 = 0uLL;
            v320 = 0uLL;
          }

          v230 = v222 + v224;
          v231 = v86[5];
          if (v231 == 63)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = vuzp2q_s32(*v230, v235);
            v322 = vuzp1q_s32(*v230, v235);
            v324 = v237;
            v326 = vuzp1q_s32(v234, v236);
            v328 = vuzp2q_s32(v234, v236);
            v232 = 64;
          }

          else if (v231 == 1)
          {
            v233 = vld1q_dup_s16(v230);
            v322 = v233;
            v324 = v233;
            v326 = v233;
            v328 = v233;
            v232 = 2;
          }

          else if (v86[5])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 32, v230, v231);
          }

          else
          {
            v232 = 0;
            v322 = 0uLL;
            v324 = 0uLL;
            v326 = 0uLL;
            v328 = 0uLL;
          }

          v238 = v230 + v232;
          v239 = v86[6];
          if (v239 == 63)
          {
            v242 = *(v238 + 16);
            v243 = *(v238 + 32);
            v244 = *(v238 + 48);
            v245 = vuzp2q_s32(*v238, v243);
            v315 = vuzp1q_s32(*v238, v243);
            v317 = v245;
            v319 = vuzp1q_s32(v242, v244);
            v321 = vuzp2q_s32(v242, v244);
            v240 = 64;
          }

          else if (v239 == 1)
          {
            v241 = vld1q_dup_s16(v238);
            v315 = v241;
            v317 = v241;
            v319 = v241;
            v321 = v241;
            v240 = 2;
          }

          else if (v86[6])
          {
            v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v315, 32, v238, v239);
          }

          else
          {
            v240 = 0;
            v315 = 0uLL;
            v317 = 0uLL;
            v319 = 0uLL;
            v321 = 0uLL;
          }

          v246 = v238 + v240;
          v247 = v86[7];
          if (v247 == 63)
          {
            v249 = *(v246 + 16);
            v250 = *(v246 + 32);
            v251 = *(v246 + 48);
            v252 = vuzp2q_s32(*v246, v250);
            v323 = vuzp1q_s32(*v246, v250);
            v325 = v252;
            v327 = vuzp1q_s32(v249, v251);
            v329 = vuzp2q_s32(v249, v251);
            v44 = a7;
            v15 = v285;
          }

          else
          {
            v44 = a7;
            v15 = v285;
            if (v247 == 1)
            {
              v248 = vld1q_dup_s16(v246);
              v323 = v248;
              v325 = v248;
              v327 = v248;
              v329 = v248;
            }

            else if (v247)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 32, v246, v247);
            }

            else
            {
              v323 = 0uLL;
              v325 = 0uLL;
              v327 = 0uLL;
              v329 = 0uLL;
            }
          }

          v253 = v293;
          v45 = v41 + 1;
          if (v293)
          {
            v254 = 0;
            v255 = &v298.i8[32 * v291 + 2 * v292];
            v256 = v294;
            do
            {
              if (v256)
              {
                v257 = 0;
                v258 = &v289->i8[v290 * v254];
                do
                {
                  v258[v257] = v255[v257];
                  ++v257;
                  v256 = v294;
                }

                while (2 * v294 > v257);
                v253 = v293;
              }

              ++v254;
              v255 += 32;
            }

            while (v254 < v253);
          }

LABEL_50:
          v20 = v41 == v277 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v263;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v324 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v277 = a8;
  v16 = a8 >> 4;
  v258 = a8 + a10 - 1;
  v260 = v258 >> 4;
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
  v272 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v260)
  {
    v270 = a7 + a9 - 1;
    if (a7 >> 4 <= v270 >> 4)
    {
      v24 = a11;
      v281 = (a5 - 1) >> 4;
      v255 = a5 - 1;
      v264 = (a5 - 1) & 0xF;
      v256 = (a6 - 1) & 0xF;
      v257 = (a6 - 1) >> 4;
      v262 = 8 * a11;
      v263 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v269 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v268 = v26;
      v254 = 8 * v18 * v17;
      v279 = v15;
      v261 = 2 * a11;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v277)
        {
          v28 = v277;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v258 < v27)
        {
          v27 = v258;
        }

        v276 = 16 * v16;
        v267 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v256;
        v266 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v256 + 1;
        if (v16 != v257)
        {
          v34 = 16;
        }

        v280 = v34;
        if (v16 != v257)
        {
          v31 = v32;
        }

        v265 = v31;
        v275 = a2 + (v28 - v277) * v24;
        v35 = a7;
        do
        {
          v37 = 16 * v33;
          v38 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = 16 * v33;
          }

          if (v270 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v281)
          {
            v42 = v264 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v276 >= v277 && v37 >= v35)
          {
            v44 = v40 != v264;
            if (v33 != v281)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v265;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v254 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v244 = (v65 >> 4) - 1;
            if (v67)
            {
              v245 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v246 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v246 | v245)
              {
                goto LABEL_224;
              }

LABEL_235:
              v253 = 0;
            }

            else
            {
              v245 = 32 - __clz(~(-1 << -__clz(v244)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v246 = 0;
              if (!v245)
              {
                goto LABEL_235;
              }

LABEL_224:
              v247 = 0;
              v248 = 0;
              v249 = v33 & v244;
              v250 = v245 != 0;
              v251 = v246 != 0;
              v252 = 1;
              do
              {
                --v245;
                if (v250)
                {
                  v248 |= (v252 & v249) << v247++;
                }

                else
                {
                  v245 = 0;
                }

                --v246;
                if (v251)
                {
                  v248 |= (v252 & v16 & ((v69 >> 4) - 1)) << v247++;
                }

                else
                {
                  v246 = 0;
                }

                v252 *= 2;
                --v247;
                v251 = v246 != 0;
                v250 = v245 != 0;
              }

              while (v246 | v245);
              v253 = v248 << 9;
            }

            v52 = v253 + ((v37 / v65 + v276 / v69 * ((v65 + v255) / v65)) << 14);
            goto LABEL_55;
          }

          if (v269)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v268.i8[0];
            v49 = v268.i8[4];
            v51 = v269.i32[0];
            v50 = v269.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v33) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v33) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v272)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v275 + 2 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v280 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v279;
            block[5] = v70;
            v289 = v42;
            v290 = v280;
            v285 = v267;
            v286 = v39 - v37;
            block[6] = v71;
            v283 = v72;
            v24 = a11;
            v284 = a11;
            v287 = v266;
            v288 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v279 + 8) + 16552), block);
              v35 = a7;
              v15 = v279;
LABEL_145:
              v169 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v179 = v70[1];
              v180 = v70[2];
              v181 = v70[3];
              v182 = vuzp2q_s32(*v70, v180);
              v292 = vuzp1q_s32(*v70, v180);
              v294 = v182;
              v296 = vuzp1q_s32(v179, v181);
              v298 = vuzp2q_s32(v179, v181);
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v178 = vld1q_dup_s16(v70->i16);
              v292 = v178;
              v294 = v178;
              v296 = v178;
              v298 = v178;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v70, v80);
            }

            else
            {
              v81 = 0;
              v292 = 0uLL;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
            }

            v183 = v70->i64 + v81;
            v184 = v71[1];
            if (v184 == 63)
            {
              v187 = *(v183 + 16);
              v188 = *(v183 + 32);
              v189 = *(v183 + 48);
              v190 = vuzp2q_s32(*v183, v188);
              v300 = vuzp1q_s32(*v183, v188);
              v302 = v190;
              v304 = vuzp1q_s32(v187, v189);
              v306 = vuzp2q_s32(v187, v189);
              v185 = 64;
            }

            else if (v184 == 1)
            {
              v186 = vld1q_dup_s16(v183);
              v300 = v186;
              v302 = v186;
              v304 = v186;
              v306 = v186;
              v185 = 2;
            }

            else if (v71[1])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v183, v184);
            }

            else
            {
              v185 = 0;
              v300 = 0uLL;
              v302 = 0uLL;
              v304 = 0uLL;
              v306 = 0uLL;
            }

            v191 = v183 + v185;
            v192 = v71[2];
            if (v192 == 63)
            {
              v195 = *(v191 + 16);
              v196 = *(v191 + 32);
              v197 = *(v191 + 48);
              v198 = vuzp2q_s32(*v191, v196);
              v293 = vuzp1q_s32(*v191, v196);
              v295 = v198;
              v297 = vuzp1q_s32(v195, v197);
              v299 = vuzp2q_s32(v195, v197);
              v193 = 64;
            }

            else if (v192 == 1)
            {
              v194 = vld1q_dup_s16(v191);
              v293 = v194;
              v295 = v194;
              v297 = v194;
              v299 = v194;
              v193 = 2;
            }

            else if (v71[2])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v191, v192);
            }

            else
            {
              v193 = 0;
              v293 = 0uLL;
              v295 = 0uLL;
              v297 = 0uLL;
              v299 = 0uLL;
            }

            v199 = v191 + v193;
            v200 = v71[3];
            if (v200 == 63)
            {
              v203 = *(v199 + 16);
              v204 = *(v199 + 32);
              v205 = *(v199 + 48);
              v206 = vuzp2q_s32(*v199, v204);
              v301 = vuzp1q_s32(*v199, v204);
              v303 = v206;
              v305 = vuzp1q_s32(v203, v205);
              v307 = vuzp2q_s32(v203, v205);
              v201 = 64;
            }

            else if (v200 == 1)
            {
              v202 = vld1q_dup_s16(v199);
              v301 = v202;
              v303 = v202;
              v305 = v202;
              v307 = v202;
              v201 = 2;
            }

            else if (v71[3])
            {
              v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v199, v200);
            }

            else
            {
              v201 = 0;
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }

            v207 = v199 + v201;
            v208 = v71[4];
            if (v208 == 63)
            {
              v211 = *(v207 + 16);
              v212 = *(v207 + 32);
              v213 = *(v207 + 48);
              v214 = vuzp2q_s32(*v207, v212);
              v308 = vuzp1q_s32(*v207, v212);
              v310 = v214;
              v312 = vuzp1q_s32(v211, v213);
              v314 = vuzp2q_s32(v211, v213);
              v209 = 64;
            }

            else if (v208 == 1)
            {
              v210 = vld1q_dup_s16(v207);
              v308 = v210;
              v310 = v210;
              v312 = v210;
              v314 = v210;
              v209 = 2;
            }

            else if (v71[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v308, 32, v207, v208);
            }

            else
            {
              v209 = 0;
              v308 = 0uLL;
              v310 = 0uLL;
              v312 = 0uLL;
              v314 = 0uLL;
            }

            v215 = v207 + v209;
            v216 = v71[5];
            if (v216 == 63)
            {
              v219 = *(v215 + 16);
              v220 = *(v215 + 32);
              v221 = *(v215 + 48);
              v222 = vuzp2q_s32(*v215, v220);
              v316 = vuzp1q_s32(*v215, v220);
              v318 = v222;
              v320 = vuzp1q_s32(v219, v221);
              v322 = vuzp2q_s32(v219, v221);
              v217 = 64;
            }

            else if (v216 == 1)
            {
              v218 = vld1q_dup_s16(v215);
              v316 = v218;
              v318 = v218;
              v320 = v218;
              v322 = v218;
              v217 = 2;
            }

            else if (v71[5])
            {
              v217 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v316, 32, v215, v216);
            }

            else
            {
              v217 = 0;
              v316 = 0uLL;
              v318 = 0uLL;
              v320 = 0uLL;
              v322 = 0uLL;
            }

            v223 = v215 + v217;
            v224 = v71[6];
            if (v224 == 63)
            {
              v227 = *(v223 + 16);
              v228 = *(v223 + 32);
              v229 = *(v223 + 48);
              v230 = vuzp2q_s32(*v223, v228);
              v309 = vuzp1q_s32(*v223, v228);
              v311 = v230;
              v313 = vuzp1q_s32(v227, v229);
              v315 = vuzp2q_s32(v227, v229);
              v225 = 64;
            }

            else if (v224 == 1)
            {
              v226 = vld1q_dup_s16(v223);
              v309 = v226;
              v311 = v226;
              v313 = v226;
              v315 = v226;
              v225 = 2;
            }

            else if (v71[6])
            {
              v225 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 32, v223, v224);
            }

            else
            {
              v225 = 0;
              v309 = 0uLL;
              v311 = 0uLL;
              v313 = 0uLL;
              v315 = 0uLL;
            }

            v231 = v223 + v225;
            v232 = v71[7];
            if (v232 == 63)
            {
              v234 = *(v231 + 16);
              v235 = *(v231 + 32);
              v236 = *(v231 + 48);
              v237 = vuzp2q_s32(*v231, v235);
              v317 = vuzp1q_s32(*v231, v235);
              v319 = v237;
              v321 = vuzp1q_s32(v234, v236);
              v323 = vuzp2q_s32(v234, v236);
              v15 = v279;
              v169 = v33 + 1;
            }

            else
            {
              v15 = v279;
              v169 = v33 + 1;
              if (v232 == 1)
              {
                v233 = vld1q_dup_s16(v231);
                v317 = v233;
                v319 = v233;
                v321 = v233;
                v323 = v233;
              }

              else if (v232)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 32, v231, v232);
              }

              else
              {
                v317 = 0uLL;
                v319 = 0uLL;
                v321 = 0uLL;
                v323 = 0uLL;
              }
            }

            v238 = v287;
            if (v287)
            {
              v239 = 0;
              v240 = &v292.i8[32 * v285 + 2 * v286];
              v241 = v288;
              do
              {
                if (v241)
                {
                  v242 = 0;
                  v243 = &v283->i8[v284 * v239];
                  do
                  {
                    v243[v242] = v240[v242];
                    ++v242;
                    v241 = v288;
                  }

                  while (2 * v288 > v242);
                  v238 = v287;
                }

                ++v239;
                v240 += 32;
              }

              while (v239 < v238);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = *v70;
              v84 = v70[1];
              v85 = v70[2];
              v86 = v70[3];
              *v72 = vuzp1q_s32(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v83, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v87 = (v72 + v261);
              *v87 = vuzp1q_s32(v84, v86);
              *(v87 + a11) = vuzp2q_s32(v84, v86);
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70->i16);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v261);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v88 = v70->i64 + v76;
            v89 = (v72 + v263);
            v90 = v71[1];
            if (v90 == 63)
            {
              v96 = *v88;
              v97 = *(v88 + 16);
              v98 = *(v88 + 32);
              v99 = *(v88 + 48);
              *v89 = vuzp1q_s32(*v88, v98);
              *(v89 + v24) = vuzp2q_s32(v96, v98);
              v100 = (v89 + v74);
              *v100 = vuzp1q_s32(v97, v99);
              *(v100 + v24) = vuzp2q_s32(v97, v99);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v95 = vld1q_dup_s16(v88);
              *v89 = v95;
              *(v89 + v24) = v95;
              *(v89 + v74) = v95;
              *(v89 + v75) = v95;
              v91 = 2;
            }

            else if (v71[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v263), v24, v88, v90);
            }

            else
            {
              v91 = 0;
              v89->i64[0] = 0;
              v89->i64[1] = 0;
              v92 = (v89->i64 + v24);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v89->i64 + v74);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v89->i64 + v75);
              *v94 = 0;
              v94[1] = 0;
            }

            v101 = v88 + v91;
            v102 = v72 + 1;
            v103 = v71[2];
            if (v103 == 63)
            {
              v109 = *v101;
              v110 = *(v101 + 16);
              v111 = *(v101 + 32);
              v112 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v111);
              *(v102 + v24) = vuzp2q_s32(v109, v111);
              v113 = (v102 + v74);
              *v113 = vuzp1q_s32(v110, v112);
              *(v113 + v24) = vuzp2q_s32(v110, v112);
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v108 = vld1q_dup_s16(v101);
              *v102 = v108;
              *(v102 + v24) = v108;
              *(v102 + v74) = v108;
              *(v102 + v75) = v108;
              v104 = 2;
            }

            else if (v71[2])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v102, v24, v101, v103);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v72[1].i64[1] = 0;
              v105 = (v102->i64 + v24);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v74);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v75);
              *v107 = 0;
              v107[1] = 0;
            }

            v114 = v101 + v104;
            v115 = v89 + 1;
            v116 = v71[3];
            if (v116 == 63)
            {
              v122 = *v114;
              v123 = *(v114 + 16);
              v124 = *(v114 + 32);
              v125 = *(v114 + 48);
              *v115 = vuzp1q_s32(*v114, v124);
              *(v115 + v24) = vuzp2q_s32(v122, v124);
              v126 = (v115 + v74);
              *v126 = vuzp1q_s32(v123, v125);
              *(v126 + v24) = vuzp2q_s32(v123, v125);
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v24) = v121;
              *(v115 + v74) = v121;
              *(v115 + v75) = v121;
              v117 = 2;
            }

            else if (v71[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v115, v24, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v89[1].i64[1] = 0;
              v118 = (v115->i64 + v24);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v74);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v75);
              *v120 = 0;
              v120[1] = 0;
            }

            v127 = v114 + v117;
            v128 = (v72 + v262);
            v129 = v71[4];
            if (v129 == 63)
            {
              v135 = *v127;
              v136 = *(v127 + 16);
              v137 = *(v127 + 32);
              v138 = *(v127 + 48);
              *v128 = vuzp1q_s32(*v127, v137);
              *(v128 + v24) = vuzp2q_s32(v135, v137);
              v139 = (v128 + v74);
              *v139 = vuzp1q_s32(v136, v138);
              *(v139 + v24) = vuzp2q_s32(v136, v138);
              v130 = 64;
            }

            else if (v129 == 1)
            {
              v134 = vld1q_dup_s16(v127);
              *v128 = v134;
              *(v128 + v24) = v134;
              *(v128 + v74) = v134;
              *(v128 + v75) = v134;
              v130 = 2;
            }

            else if (v71[4])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v262), v24, v127, v129);
            }

            else
            {
              v130 = 0;
              v128->i64[0] = 0;
              v128->i64[1] = 0;
              v131 = (v128->i64 + v24);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v128->i64 + v74);
              *v132 = 0;
              v132[1] = 0;
              v133 = (v128->i64 + v75);
              *v133 = 0;
              v133[1] = 0;
            }

            v140 = v127 + v130;
            v141 = (v72 + 12 * a11);
            v142 = v71[5];
            if (v142 == 63)
            {
              v148 = *v140;
              v149 = *(v140 + 16);
              v150 = *(v140 + 32);
              v151 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v150);
              *(v141 + v24) = vuzp2q_s32(v148, v150);
              v152 = (v141 + v74);
              *v152 = vuzp1q_s32(v149, v151);
              *(v152 + v24) = vuzp2q_s32(v149, v151);
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v147 = vld1q_dup_s16(v140);
              *v141 = v147;
              *(v141 + v24) = v147;
              *(v141 + v74) = v147;
              *(v141 + v75) = v147;
              v143 = 2;
            }

            else if (v71[5])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v74);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v75);
              *v146 = 0;
              v146[1] = 0;
            }

            v153 = v140 + v143;
            v154 = v128 + 1;
            v155 = v71[6];
            if (v155 == 63)
            {
              v161 = *v153;
              v162 = *(v153 + 16);
              v163 = *(v153 + 32);
              v164 = *(v153 + 48);
              *v154 = vuzp1q_s32(*v153, v163);
              *(v154 + v24) = vuzp2q_s32(v161, v163);
              v165 = (v154 + v74);
              *v165 = vuzp1q_s32(v162, v164);
              *(v165 + v24) = vuzp2q_s32(v162, v164);
              v156 = 64;
            }

            else if (v155 == 1)
            {
              v160 = vld1q_dup_s16(v153);
              *v154 = v160;
              *(v154 + v24) = v160;
              *(v154 + v74) = v160;
              *(v154 + v75) = v160;
              v156 = 2;
            }

            else if (v71[6])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v24, v153, v155);
            }

            else
            {
              v156 = 0;
              v154->i64[0] = 0;
              v128[1].i64[1] = 0;
              v157 = (v154->i64 + v24);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v154->i64 + v74);
              *v158 = 0;
              v158[1] = 0;
              v159 = (v154->i64 + v75);
              *v159 = 0;
              v159[1] = 0;
            }

            v166 = v153 + v156;
            v167 = v141 + 1;
            v168 = v71[7];
            if (v168 == 63)
            {
              v173 = *v166;
              v174 = *(v166 + 16);
              v175 = *(v166 + 32);
              v176 = *(v166 + 48);
              *v167 = vuzp1q_s32(*v166, v175);
              *(v167 + v24) = vuzp2q_s32(v173, v175);
              v177 = (v167 + v74);
              *v177 = vuzp1q_s32(v174, v176);
              *(v177 + v24) = vuzp2q_s32(v174, v176);
              v35 = a7;
              v15 = v279;
              goto LABEL_145;
            }

            v35 = a7;
            v15 = v279;
            v169 = v33 + 1;
            if (v168 == 1)
            {
              v36 = vld1q_dup_s16(v166);
              *v167 = v36;
              *(v167 + v24) = v36;
              *(v167 + v74) = v36;
              *(v167 + v75) = v36;
            }

            else if (v168)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v24, v166, v168);
            }

            else
            {
              v167->i64[0] = 0;
              v167->i64[1] = 0;
              v170 = (v167->i64 + v24);
              *v170 = 0;
              v170[1] = 0;
              v171 = (v167->i64 + v74);
              *v171 = 0;
              v171[1] = 0;
              v172 = (v167->i64 + v75);
              *v172 = 0;
              v172[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v270 >> 4;
          v33 = v169;
        }

        while (!v20);
        v20 = v16++ == v260;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v324 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v277 = a8;
  v16 = a8 >> 4;
  v258 = a8 + a10 - 1;
  v260 = v258 >> 4;
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
  v272 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v260)
  {
    v270 = a7 + a9 - 1;
    if (a7 >> 4 <= v270 >> 4)
    {
      v24 = a11;
      v281 = (a5 - 1) >> 4;
      v255 = a5 - 1;
      v264 = (a5 - 1) & 0xF;
      v256 = (a6 - 1) & 0xF;
      v257 = (a6 - 1) >> 4;
      v262 = 8 * a11;
      v263 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v26 = vcgt_u32(v25, 0x1F0000001FLL);
      v269 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), v26);
      v268 = v26;
      v254 = 8 * v18 * v17;
      v279 = v15;
      v261 = 2 * a11;
      do
      {
        v27 = (16 * v16) | 0xF;
        if (16 * v16 <= v277)
        {
          v28 = v277;
        }

        else
        {
          v28 = 16 * v16;
        }

        if (v258 < v27)
        {
          v27 = v258;
        }

        v276 = 16 * v16;
        v267 = v28 - 16 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v256;
        v266 = v30;
        v32 = v30 != 16;
        v33 = a7 >> 4;
        v34 = v256 + 1;
        if (v16 != v257)
        {
          v34 = 16;
        }

        v280 = v34;
        if (v16 != v257)
        {
          v31 = v32;
        }

        v265 = v31;
        v275 = a2 + (v28 - v277) * v24;
        v35 = a7;
        do
        {
          v37 = 16 * v33;
          v38 = 16 * (v33 + 1) - 1;
          if (16 * v33 <= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = 16 * v33;
          }

          if (v270 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v281)
          {
            v42 = v264 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v276 >= v277 && v37 >= v35)
          {
            v44 = v40 != v264;
            if (v33 != v281)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v265;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v254 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v244 = (v65 >> 4) - 1;
            if (v67)
            {
              v245 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v246 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v246 | v245)
              {
                goto LABEL_224;
              }

LABEL_235:
              v253 = 0;
            }

            else
            {
              v245 = 32 - __clz(~(-1 << -__clz(v244)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v246 = 0;
              if (!v245)
              {
                goto LABEL_235;
              }

LABEL_224:
              v247 = 0;
              v248 = 0;
              v249 = v33 & v244;
              v250 = v245 != 0;
              v251 = v246 != 0;
              v252 = 1;
              do
              {
                --v245;
                if (v250)
                {
                  v248 |= (v252 & v249) << v247++;
                }

                else
                {
                  v245 = 0;
                }

                --v246;
                if (v251)
                {
                  v248 |= (v252 & v16 & ((v69 >> 4) - 1)) << v247++;
                }

                else
                {
                  v246 = 0;
                }

                v252 *= 2;
                --v247;
                v251 = v246 != 0;
                v250 = v245 != 0;
              }

              while (v246 | v245);
              v253 = v248 << 9;
            }

            v52 = v253 + ((v37 / v65 + v276 / v69 * ((v65 + v255) / v65)) << 14);
            goto LABEL_55;
          }

          if (v269)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v268.i8[0];
            v49 = v268.i8[4];
            v51 = v269.i32[0];
            v50 = v269.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v33) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v33) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v272)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v275 + 2 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v280 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v279;
            block[5] = v70;
            v289 = v42;
            v290 = v280;
            v285 = v267;
            v286 = v39 - v37;
            block[6] = v71;
            v283 = v72;
            v24 = a11;
            v284 = a11;
            v287 = v266;
            v288 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v279 + 8) + 16552), block);
              v35 = a7;
              v15 = v279;
LABEL_145:
              v169 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v179 = v70[1];
              v180 = v70[2];
              v181 = v70[3];
              v182 = vuzp2q_s32(*v70, v180);
              v292 = vuzp1q_s32(*v70, v180);
              v294 = v182;
              v296 = vuzp1q_s32(v179, v181);
              v298 = vuzp2q_s32(v179, v181);
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v178 = vld1q_dup_s16(v70->i16);
              v292 = v178;
              v294 = v178;
              v296 = v178;
              v298 = v178;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v70, v80);
            }

            else
            {
              v81 = 0;
              v292 = 0uLL;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
            }

            v183 = v70->i64 + v81;
            v184 = v71[1];
            if (v184 == 63)
            {
              v187 = *(v183 + 16);
              v188 = *(v183 + 32);
              v189 = *(v183 + 48);
              v190 = vuzp2q_s32(*v183, v188);
              v300 = vuzp1q_s32(*v183, v188);
              v302 = v190;
              v304 = vuzp1q_s32(v187, v189);
              v306 = vuzp2q_s32(v187, v189);
              v185 = 64;
            }

            else if (v184 == 1)
            {
              v186 = vld1q_dup_s16(v183);
              v300 = v186;
              v302 = v186;
              v304 = v186;
              v306 = v186;
              v185 = 2;
            }

            else if (v71[1])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v183, v184);
            }

            else
            {
              v185 = 0;
              v300 = 0uLL;
              v302 = 0uLL;
              v304 = 0uLL;
              v306 = 0uLL;
            }

            v191 = v183 + v185;
            v192 = v71[2];
            if (v192 == 63)
            {
              v195 = *(v191 + 16);
              v196 = *(v191 + 32);
              v197 = *(v191 + 48);
              v198 = vuzp2q_s32(*v191, v196);
              v293 = vuzp1q_s32(*v191, v196);
              v295 = v198;
              v297 = vuzp1q_s32(v195, v197);
              v299 = vuzp2q_s32(v195, v197);
              v193 = 64;
            }

            else if (v192 == 1)
            {
              v194 = vld1q_dup_s16(v191);
              v293 = v194;
              v295 = v194;
              v297 = v194;
              v299 = v194;
              v193 = 2;
            }

            else if (v71[2])
            {
              v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v191, v192);
            }

            else
            {
              v193 = 0;
              v293 = 0uLL;
              v295 = 0uLL;
              v297 = 0uLL;
              v299 = 0uLL;
            }

            v199 = v191 + v193;
            v200 = v71[3];
            if (v200 == 63)
            {
              v203 = *(v199 + 16);
              v204 = *(v199 + 32);
              v205 = *(v199 + 48);
              v206 = vuzp2q_s32(*v199, v204);
              v301 = vuzp1q_s32(*v199, v204);
              v303 = v206;
              v305 = vuzp1q_s32(v203, v205);
              v307 = vuzp2q_s32(v203, v205);
              v201 = 64;
            }

            else if (v200 == 1)
            {
              v202 = vld1q_dup_s16(v199);
              v301 = v202;
              v303 = v202;
              v305 = v202;
              v307 = v202;
              v201 = 2;
            }

            else if (v71[3])
            {
              v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v199, v200);
            }

            else
            {
              v201 = 0;
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }

            v207 = v199 + v201;
            v208 = v71[4];
            if (v208 == 63)
            {
              v211 = *(v207 + 16);
              v212 = *(v207 + 32);
              v213 = *(v207 + 48);
              v214 = vuzp2q_s32(*v207, v212);
              v308 = vuzp1q_s32(*v207, v212);
              v310 = v214;
              v312 = vuzp1q_s32(v211, v213);
              v314 = vuzp2q_s32(v211, v213);
              v209 = 64;
            }

            else if (v208 == 1)
            {
              v210 = vld1q_dup_s16(v207);
              v308 = v210;
              v310 = v210;
              v312 = v210;
              v314 = v210;
              v209 = 2;
            }

            else if (v71[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v308, 32, v207, v208);
            }

            else
            {
              v209 = 0;
              v308 = 0uLL;
              v310 = 0uLL;
              v312 = 0uLL;
              v314 = 0uLL;
            }

            v215 = v207 + v209;
            v216 = v71[5];
            if (v216 == 63)
            {
              v219 = *(v215 + 16);
              v220 = *(v215 + 32);
              v221 = *(v215 + 48);
              v222 = vuzp2q_s32(*v215, v220);
              v316 = vuzp1q_s32(*v215, v220);
              v318 = v222;
              v320 = vuzp1q_s32(v219, v221);
              v322 = vuzp2q_s32(v219, v221);
              v217 = 64;
            }

            else if (v216 == 1)
            {
              v218 = vld1q_dup_s16(v215);
              v316 = v218;
              v318 = v218;
              v320 = v218;
              v322 = v218;
              v217 = 2;
            }

            else if (v71[5])
            {
              v217 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v316, 32, v215, v216);
            }

            else
            {
              v217 = 0;
              v316 = 0uLL;
              v318 = 0uLL;
              v320 = 0uLL;
              v322 = 0uLL;
            }

            v223 = v215 + v217;
            v224 = v71[6];
            if (v224 == 63)
            {
              v227 = *(v223 + 16);
              v228 = *(v223 + 32);
              v229 = *(v223 + 48);
              v230 = vuzp2q_s32(*v223, v228);
              v309 = vuzp1q_s32(*v223, v228);
              v311 = v230;
              v313 = vuzp1q_s32(v227, v229);
              v315 = vuzp2q_s32(v227, v229);
              v225 = 64;
            }

            else if (v224 == 1)
            {
              v226 = vld1q_dup_s16(v223);
              v309 = v226;
              v311 = v226;
              v313 = v226;
              v315 = v226;
              v225 = 2;
            }

            else if (v71[6])
            {
              v225 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v309, 32, v223, v224);
            }

            else
            {
              v225 = 0;
              v309 = 0uLL;
              v311 = 0uLL;
              v313 = 0uLL;
              v315 = 0uLL;
            }

            v231 = v223 + v225;
            v232 = v71[7];
            if (v232 == 63)
            {
              v234 = *(v231 + 16);
              v235 = *(v231 + 32);
              v236 = *(v231 + 48);
              v237 = vuzp2q_s32(*v231, v235);
              v317 = vuzp1q_s32(*v231, v235);
              v319 = v237;
              v321 = vuzp1q_s32(v234, v236);
              v323 = vuzp2q_s32(v234, v236);
              v15 = v279;
              v169 = v33 + 1;
            }

            else
            {
              v15 = v279;
              v169 = v33 + 1;
              if (v232 == 1)
              {
                v233 = vld1q_dup_s16(v231);
                v317 = v233;
                v319 = v233;
                v321 = v233;
                v323 = v233;
              }

              else if (v232)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 32, v231, v232);
              }

              else
              {
                v317 = 0uLL;
                v319 = 0uLL;
                v321 = 0uLL;
                v323 = 0uLL;
              }
            }

            v238 = v287;
            if (v287)
            {
              v239 = 0;
              v240 = &v292.i8[32 * v285 + 2 * v286];
              v241 = v288;
              do
              {
                if (v241)
                {
                  v242 = 0;
                  v243 = &v283->i8[v284 * v239];
                  do
                  {
                    v243[v242] = v240[v242];
                    ++v242;
                    v241 = v288;
                  }

                  while (2 * v288 > v242);
                  v238 = v287;
                }

                ++v239;
                v240 += 32;
              }

              while (v239 < v238);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = *v70;
              v84 = v70[1];
              v85 = v70[2];
              v86 = v70[3];
              *v72 = vuzp1q_s32(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v83, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v87 = (v72 + v261);
              *v87 = vuzp1q_s32(v84, v86);
              *(v87 + a11) = vuzp2q_s32(v84, v86);
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70->i16);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v261);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v88 = v70->i64 + v76;
            v89 = (v72 + v263);
            v90 = v71[1];
            if (v90 == 63)
            {
              v96 = *v88;
              v97 = *(v88 + 16);
              v98 = *(v88 + 32);
              v99 = *(v88 + 48);
              *v89 = vuzp1q_s32(*v88, v98);
              *(v89 + v24) = vuzp2q_s32(v96, v98);
              v100 = (v89 + v74);
              *v100 = vuzp1q_s32(v97, v99);
              *(v100 + v24) = vuzp2q_s32(v97, v99);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v95 = vld1q_dup_s16(v88);
              *v89 = v95;
              *(v89 + v24) = v95;
              *(v89 + v74) = v95;
              *(v89 + v75) = v95;
              v91 = 2;
            }

            else if (v71[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v263), v24, v88, v90);
            }

            else
            {
              v91 = 0;
              v89->i64[0] = 0;
              v89->i64[1] = 0;
              v92 = (v89->i64 + v24);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v89->i64 + v74);
              *v93 = 0;
              v93[1] = 0;
              v94 = (v89->i64 + v75);
              *v94 = 0;
              v94[1] = 0;
            }

            v101 = v88 + v91;
            v102 = v72 + 1;
            v103 = v71[2];
            if (v103 == 63)
            {
              v109 = *v101;
              v110 = *(v101 + 16);
              v111 = *(v101 + 32);
              v112 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v111);
              *(v102 + v24) = vuzp2q_s32(v109, v111);
              v113 = (v102 + v74);
              *v113 = vuzp1q_s32(v110, v112);
              *(v113 + v24) = vuzp2q_s32(v110, v112);
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v108 = vld1q_dup_s16(v101);
              *v102 = v108;
              *(v102 + v24) = v108;
              *(v102 + v74) = v108;
              *(v102 + v75) = v108;
              v104 = 2;
            }

            else if (v71[2])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v102, v24, v101, v103);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v72[1].i64[1] = 0;
              v105 = (v102->i64 + v24);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v74);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v75);
              *v107 = 0;
              v107[1] = 0;
            }

            v114 = v101 + v104;
            v115 = v89 + 1;
            v116 = v71[3];
            if (v116 == 63)
            {
              v122 = *v114;
              v123 = *(v114 + 16);
              v124 = *(v114 + 32);
              v125 = *(v114 + 48);
              *v115 = vuzp1q_s32(*v114, v124);
              *(v115 + v24) = vuzp2q_s32(v122, v124);
              v126 = (v115 + v74);
              *v126 = vuzp1q_s32(v123, v125);
              *(v126 + v24) = vuzp2q_s32(v123, v125);
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v24) = v121;
              *(v115 + v74) = v121;
              *(v115 + v75) = v121;
              v117 = 2;
            }

            else if (v71[3])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v115, v24, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v89[1].i64[1] = 0;
              v118 = (v115->i64 + v24);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v74);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v75);
              *v120 = 0;
              v120[1] = 0;
            }

            v127 = v114 + v117;
            v128 = (v72 + v262);
            v129 = v71[4];
            if (v129 == 63)
            {
              v135 = *v127;
              v136 = *(v127 + 16);
              v137 = *(v127 + 32);
              v138 = *(v127 + 48);
              *v128 = vuzp1q_s32(*v127, v137);
              *(v128 + v24) = vuzp2q_s32(v135, v137);
              v139 = (v128 + v74);
              *v139 = vuzp1q_s32(v136, v138);
              *(v139 + v24) = vuzp2q_s32(v136, v138);
              v130 = 64;
            }

            else if (v129 == 1)
            {
              v134 = vld1q_dup_s16(v127);
              *v128 = v134;
              *(v128 + v24) = v134;
              *(v128 + v74) = v134;
              *(v128 + v75) = v134;
              v130 = 2;
            }

            else if (v71[4])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v262), v24, v127, v129);
            }

            else
            {
              v130 = 0;
              v128->i64[0] = 0;
              v128->i64[1] = 0;
              v131 = (v128->i64 + v24);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v128->i64 + v74);
              *v132 = 0;
              v132[1] = 0;
              v133 = (v128->i64 + v75);
              *v133 = 0;
              v133[1] = 0;
            }

            v140 = v127 + v130;
            v141 = (v72 + 12 * a11);
            v142 = v71[5];
            if (v142 == 63)
            {
              v148 = *v140;
              v149 = *(v140 + 16);
              v150 = *(v140 + 32);
              v151 = *(v140 + 48);
              *v141 = vuzp1q_s32(*v140, v150);
              *(v141 + v24) = vuzp2q_s32(v148, v150);
              v152 = (v141 + v74);
              *v152 = vuzp1q_s32(v149, v151);
              *(v152 + v24) = vuzp2q_s32(v149, v151);
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v147 = vld1q_dup_s16(v140);
              *v141 = v147;
              *(v141 + v24) = v147;
              *(v141 + v74) = v147;
              *(v141 + v75) = v147;
              v143 = 2;
            }

            else if (v71[5])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v141->i64[1] = 0;
              v144 = (v141->i64 + v24);
              *v144 = 0;
              v144[1] = 0;
              v145 = (v141->i64 + v74);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v141->i64 + v75);
              *v146 = 0;
              v146[1] = 0;
            }

            v153 = v140 + v143;
            v154 = v128 + 1;
            v155 = v71[6];
            if (v155 == 63)
            {
              v161 = *v153;
              v162 = *(v153 + 16);
              v163 = *(v153 + 32);
              v164 = *(v153 + 48);
              *v154 = vuzp1q_s32(*v153, v163);
              *(v154 + v24) = vuzp2q_s32(v161, v163);
              v165 = (v154 + v74);
              *v165 = vuzp1q_s32(v162, v164);
              *(v165 + v24) = vuzp2q_s32(v162, v164);
              v156 = 64;
            }

            else if (v155 == 1)
            {
              v160 = vld1q_dup_s16(v153);
              *v154 = v160;
              *(v154 + v24) = v160;
              *(v154 + v74) = v160;
              *(v154 + v75) = v160;
              v156 = 2;
            }

            else if (v71[6])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v24, v153, v155);
            }

            else
            {
              v156 = 0;
              v154->i64[0] = 0;
              v128[1].i64[1] = 0;
              v157 = (v154->i64 + v24);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v154->i64 + v74);
              *v158 = 0;
              v158[1] = 0;
              v159 = (v154->i64 + v75);
              *v159 = 0;
              v159[1] = 0;
            }

            v166 = v153 + v156;
            v167 = v141 + 1;
            v168 = v71[7];
            if (v168 == 63)
            {
              v173 = *v166;
              v174 = *(v166 + 16);
              v175 = *(v166 + 32);
              v176 = *(v166 + 48);
              *v167 = vuzp1q_s32(*v166, v175);
              *(v167 + v24) = vuzp2q_s32(v173, v175);
              v177 = (v167 + v74);
              *v177 = vuzp1q_s32(v174, v176);
              *(v177 + v24) = vuzp2q_s32(v174, v176);
              v35 = a7;
              v15 = v279;
              goto LABEL_145;
            }

            v35 = a7;
            v15 = v279;
            v169 = v33 + 1;
            if (v168 == 1)
            {
              v36 = vld1q_dup_s16(v166);
              *v167 = v36;
              *(v167 + v24) = v36;
              *(v167 + v74) = v36;
              *(v167 + v75) = v36;
            }

            else if (v168)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v24, v166, v168);
            }

            else
            {
              v167->i64[0] = 0;
              v167->i64[1] = 0;
              v170 = (v167->i64 + v24);
              *v170 = 0;
              v170[1] = 0;
              v171 = (v167->i64 + v74);
              *v171 = 0;
              v171[1] = 0;
              v172 = (v167->i64 + v75);
              *v172 = 0;
              v172[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v270 >> 4;
          v33 = v169;
        }

        while (!v20);
        v20 = v16++ == v260;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v330 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v284 = a8;
  v264 = a8 + a10 - 1;
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
  v263 = v264 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v279 = v23;
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
      v278 = 0;
LABEL_32:
      v275 = v25 - 4;
      v267 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v261 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v278 = v30 >= v24;
    goto LABEL_32;
  }

  v278 = 0;
  v261 = 0;
  v267 = 0;
  v275 = 0;
LABEL_33:
  if (v17 <= v263)
  {
    v277 = a7 + a9 - 1;
    if (a7 >> 4 <= v277 >> 4)
    {
      v32 = a11;
      v287 = v18 >> 4;
      v271 = v18 & 0xF;
      v276 = (v18 & 0xF) + 1;
      v259 = v19 & 0xF;
      v260 = v19 >> 4;
      v269 = 8 * a11;
      v270 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v266 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v265 = v34;
      v285 = v15;
      v268 = 2 * a11;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v284)
        {
          v36 = v284;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v264 < v35)
        {
          v35 = v264;
        }

        v274 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v259;
        v273 = v38;
        v40 = v38 != 16;
        v41 = a7 >> 4;
        v42 = v259 + 1;
        if (v17 != v260)
        {
          v42 = 16;
        }

        v286 = v42;
        if (v17 != v260)
        {
          v39 = v40;
        }

        v272 = v39;
        v43 = v17 & ~(-1 << v267);
        v282 = a2 + (v36 - v284) * v32;
        v44 = a7;
        do
        {
          v46 = 16 * v41;
          v47 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 16 * v41;
          }

          if (v277 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v287)
          {
            v51 = v276;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v17 >= v284 && v46 >= v44)
          {
            v53 = v49 != v271;
            if (v41 != v287)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v272;
          }

          if (v278)
          {
            if (v275 | v267)
            {
              v54 = 0;
              v55 = 0;
              v56 = v267 != 0;
              v57 = 1;
              v59 = v275 != 0;
              v58 = v267;
              v60 = v275;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v41 & ~(-1 << v275) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v43 & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v275) + (v17 >> v267) * v261);
          }

          else if (v266)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v265.i8[0];
            v66 = v265.i8[4];
            v68 = v266.i32[0];
            v67 = v266.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
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

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v77 |= (v80 & v41) << v76++;
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
          if (v279)
          {
            v83 = v43;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v43 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = (v282 + 2 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v286 > 0xF)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = *v82;
              v99 = v82[1];
              v100 = v82[2];
              v101 = v82[3];
              *v87 = vuzp1q_s32(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vuzp2q_s32(v98, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v102 = (v87 + v268);
              *v102 = vuzp1q_s32(v99, v101);
              *(v102 + a11) = vuzp2q_s32(v99, v101);
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82->i16);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v268);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v103 = v82->i64 + v91;
            v104 = (v87 + v270);
            v105 = v86[1];
            if (v105 == 63)
            {
              v111 = *v103;
              v112 = *(v103 + 16);
              v113 = *(v103 + 32);
              v114 = *(v103 + 48);
              *v104 = vuzp1q_s32(*v103, v113);
              *(v104 + v32) = vuzp2q_s32(v111, v113);
              v115 = (v104 + v89);
              *v115 = vuzp1q_s32(v112, v114);
              *(v115 + v32) = vuzp2q_s32(v112, v114);
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v110 = vld1q_dup_s16(v103);
              *v104 = v110;
              *(v104 + v32) = v110;
              *(v104 + v89) = v110;
              *(v104 + v90) = v110;
              v106 = 2;
            }

            else if (v86[1])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v270), v32, v103, v105);
            }

            else
            {
              v106 = 0;
              v104->i64[0] = 0;
              v104->i64[1] = 0;
              v107 = (v104->i64 + v32);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v104->i64 + v89);
              *v108 = 0;
              v108[1] = 0;
              v109 = (v104->i64 + v90);
              *v109 = 0;
              v109[1] = 0;
            }

            v116 = v103 + v106;
            v117 = v87 + 1;
            v118 = v86[2];
            if (v118 == 63)
            {
              v124 = *v116;
              v125 = *(v116 + 16);
              v126 = *(v116 + 32);
              v127 = *(v116 + 48);
              *v117 = vuzp1q_s32(*v116, v126);
              *(v117 + v32) = vuzp2q_s32(v124, v126);
              v128 = (v117 + v89);
              *v128 = vuzp1q_s32(v125, v127);
              *(v128 + v32) = vuzp2q_s32(v125, v127);
              v119 = 64;
            }

            else if (v118 == 1)
            {
              v123 = vld1q_dup_s16(v116);
              *v117 = v123;
              *(v117 + v32) = v123;
              *(v117 + v89) = v123;
              *(v117 + v90) = v123;
              v119 = 2;
            }

            else if (v86[2])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, v32, v116, v118);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v87[1].i64[1] = 0;
              v120 = (v117->i64 + v32);
              *v120 = 0;
              v120[1] = 0;
              v121 = (v117->i64 + v89);
              *v121 = 0;
              v121[1] = 0;
              v122 = (v117->i64 + v90);
              *v122 = 0;
              v122[1] = 0;
            }

            v129 = v116 + v119;
            v130 = v104 + 1;
            v131 = v86[3];
            if (v131 == 63)
            {
              v137 = *v129;
              v138 = *(v129 + 16);
              v139 = *(v129 + 32);
              v140 = *(v129 + 48);
              *v130 = vuzp1q_s32(*v129, v139);
              *(v130 + v32) = vuzp2q_s32(v137, v139);
              v141 = (v130 + v89);
              *v141 = vuzp1q_s32(v138, v140);
              *(v141 + v32) = vuzp2q_s32(v138, v140);
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v136 = vld1q_dup_s16(v129);
              *v130 = v136;
              *(v130 + v32) = v136;
              *(v130 + v89) = v136;
              *(v130 + v90) = v136;
              v132 = 2;
            }

            else if (v86[3])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131);
            }

            else
            {
              v132 = 0;
              v130->i64[0] = 0;
              v104[1].i64[1] = 0;
              v133 = (v130->i64 + v32);
              *v133 = 0;
              v133[1] = 0;
              v134 = (v130->i64 + v89);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v130->i64 + v90);
              *v135 = 0;
              v135[1] = 0;
            }

            v142 = v129 + v132;
            v143 = (v87 + v269);
            v144 = v86[4];
            if (v144 == 63)
            {
              v150 = *v142;
              v151 = *(v142 + 16);
              v152 = *(v142 + 32);
              v153 = *(v142 + 48);
              *v143 = vuzp1q_s32(*v142, v152);
              *(v143 + v32) = vuzp2q_s32(v150, v152);
              v154 = (v143 + v89);
              *v154 = vuzp1q_s32(v151, v153);
              *(v154 + v32) = vuzp2q_s32(v151, v153);
              v145 = 64;
            }

            else if (v144 == 1)
            {
              v149 = vld1q_dup_s16(v142);
              *v143 = v149;
              *(v143 + v32) = v149;
              *(v143 + v89) = v149;
              *(v143 + v90) = v149;
              v145 = 2;
            }

            else if (v86[4])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v269), v32, v142, v144);
            }

            else
            {
              v145 = 0;
              v143->i64[0] = 0;
              v143->i64[1] = 0;
              v146 = (v143->i64 + v32);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v143->i64 + v89);
              *v147 = 0;
              v147[1] = 0;
              v148 = (v143->i64 + v90);
              *v148 = 0;
              v148[1] = 0;
            }

            v155 = v142 + v145;
            v156 = (v87 + 12 * a11);
            v157 = v86[5];
            if (v157 == 63)
            {
              v163 = *v155;
              v164 = *(v155 + 16);
              v165 = *(v155 + 32);
              v166 = *(v155 + 48);
              *v156 = vuzp1q_s32(*v155, v165);
              *(v156 + v32) = vuzp2q_s32(v163, v165);
              v167 = (v156 + v89);
              *v167 = vuzp1q_s32(v164, v166);
              *(v167 + v32) = vuzp2q_s32(v164, v166);
              v158 = 64;
            }

            else if (v157 == 1)
            {
              v162 = vld1q_dup_s16(v155);
              *v156 = v162;
              *(v156 + v32) = v162;
              *(v156 + v89) = v162;
              *(v156 + v90) = v162;
              v158 = 2;
            }

            else if (v86[5])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v156, v32, v155, v157);
            }

            else
            {
              v158 = 0;
              v156->i64[0] = 0;
              v156->i64[1] = 0;
              v159 = (v156->i64 + v32);
              *v159 = 0;
              v159[1] = 0;
              v160 = (v156->i64 + v89);
              *v160 = 0;
              v160[1] = 0;
              v161 = (v156->i64 + v90);
              *v161 = 0;
              v161[1] = 0;
            }

            v168 = v155 + v158;
            v169 = v143 + 1;
            v170 = v86[6];
            if (v170 == 63)
            {
              v176 = *v168;
              v177 = *(v168 + 16);
              v178 = *(v168 + 32);
              v179 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v178);
              *(v169 + v32) = vuzp2q_s32(v176, v178);
              v180 = (v169 + v89);
              *v180 = vuzp1q_s32(v177, v179);
              *(v180 + v32) = vuzp2q_s32(v177, v179);
              v171 = 64;
            }

            else if (v170 == 1)
            {
              v175 = vld1q_dup_s16(v168);
              *v169 = v175;
              *(v169 + v32) = v175;
              *(v169 + v89) = v175;
              *(v169 + v90) = v175;
              v171 = 2;
            }

            else if (v86[6])
            {
              v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170);
            }

            else
            {
              v171 = 0;
              v169->i64[0] = 0;
              v143[1].i64[1] = 0;
              v172 = (v169->i64 + v32);
              *v172 = 0;
              v172[1] = 0;
              v173 = (v169->i64 + v89);
              *v173 = 0;
              v173[1] = 0;
              v174 = (v169->i64 + v90);
              *v174 = 0;
              v174[1] = 0;
            }

            v181 = v168 + v171;
            v182 = v156 + 1;
            v183 = v86[7];
            if (v183 == 63)
            {
              v188 = *v181;
              v189 = *(v181 + 16);
              v190 = *(v181 + 32);
              v191 = *(v181 + 48);
              *v182 = vuzp1q_s32(*v181, v190);
              *(v182 + v32) = vuzp2q_s32(v188, v190);
              v192 = (v182 + v89);
              *v192 = vuzp1q_s32(v189, v191);
              *(v192 + v32) = vuzp2q_s32(v189, v191);
              v44 = a7;
              v15 = v285;
            }

            else
            {
              v44 = a7;
              v15 = v285;
              if (v183 == 1)
              {
                v187 = vld1q_dup_s16(v181);
                *v182 = v187;
                *(v182 + v32) = v187;
                *(v182 + v89) = v187;
                *(v182 + v90) = v187;
              }

              else if (v183)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v182, v32, v181, v183);
              }

              else
              {
                v182->i64[0] = 0;
                v182->i64[1] = 0;
                v184 = (v182->i64 + v32);
                *v184 = 0;
                v184[1] = 0;
                v185 = (v182->i64 + v89);
                *v185 = 0;
                v185[1] = 0;
                v186 = (v182->i64 + v90);
                *v186 = 0;
                v186[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v285;
          block[5] = v82;
          v295 = v51;
          v296 = v286;
          v291 = v274;
          v292 = v48 - v46;
          block[6] = v86;
          v289 = v87;
          v32 = a11;
          v290 = a11;
          v293 = v273;
          v294 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v285 + 8) + 16552), block);
            v44 = a7;
            v15 = v285;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v194 = v82[1];
            v195 = v82[2];
            v196 = v82[3];
            v197 = vuzp2q_s32(*v82, v195);
            v298 = vuzp1q_s32(*v82, v195);
            v300 = v197;
            v302 = vuzp1q_s32(v194, v196);
            v304 = vuzp2q_s32(v194, v196);
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v193 = vld1q_dup_s16(v82->i16);
            v298 = v193;
            v300 = v193;
            v302 = v193;
            v304 = v193;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 32, v82, v95);
          }

          else
          {
            v96 = 0;
            v298 = 0uLL;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
          }

          v198 = v82->i64 + v96;
          v199 = v86[1];
          if (v199 == 63)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = vuzp2q_s32(*v198, v203);
            v306 = vuzp1q_s32(*v198, v203);
            v308 = v205;
            v310 = vuzp1q_s32(v202, v204);
            v312 = vuzp2q_s32(v202, v204);
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v306 = v201;
            v308 = v201;
            v310 = v201;
            v312 = v201;
            v200 = 2;
          }

          else if (v86[1])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v306, 32, v198, v199);
          }

          else
          {
            v200 = 0;
            v306 = 0uLL;
            v308 = 0uLL;
            v310 = 0uLL;
            v312 = 0uLL;
          }

          v206 = v198 + v200;
          v207 = v86[2];
          if (v207 == 63)
          {
            v210 = *(v206 + 16);
            v211 = *(v206 + 32);
            v212 = *(v206 + 48);
            v213 = vuzp2q_s32(*v206, v211);
            v299 = vuzp1q_s32(*v206, v211);
            v301 = v213;
            v303 = vuzp1q_s32(v210, v212);
            v305 = vuzp2q_s32(v210, v212);
            v208 = 64;
          }

          else if (v207 == 1)
          {
            v209 = vld1q_dup_s16(v206);
            v299 = v209;
            v301 = v209;
            v303 = v209;
            v305 = v209;
            v208 = 2;
          }

          else if (v86[2])
          {
            v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 32, v206, v207);
          }

          else
          {
            v208 = 0;
            v299 = 0uLL;
            v301 = 0uLL;
            v303 = 0uLL;
            v305 = 0uLL;
          }

          v214 = v206 + v208;
          v215 = v86[3];
          if (v215 == 63)
          {
            v218 = *(v214 + 16);
            v219 = *(v214 + 32);
            v220 = *(v214 + 48);
            v221 = vuzp2q_s32(*v214, v219);
            v307 = vuzp1q_s32(*v214, v219);
            v309 = v221;
            v311 = vuzp1q_s32(v218, v220);
            v313 = vuzp2q_s32(v218, v220);
            v216 = 64;
          }

          else if (v215 == 1)
          {
            v217 = vld1q_dup_s16(v214);
            v307 = v217;
            v309 = v217;
            v311 = v217;
            v313 = v217;
            v216 = 2;
          }

          else if (v86[3])
          {
            v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v307, 32, v214, v215);
          }

          else
          {
            v216 = 0;
            v307 = 0uLL;
            v309 = 0uLL;
            v311 = 0uLL;
            v313 = 0uLL;
          }

          v222 = v214 + v216;
          v223 = v86[4];
          if (v223 == 63)
          {
            v226 = *(v222 + 16);
            v227 = *(v222 + 32);
            v228 = *(v222 + 48);
            v229 = vuzp2q_s32(*v222, v227);
            v314 = vuzp1q_s32(*v222, v227);
            v316 = v229;
            v318 = vuzp1q_s32(v226, v228);
            v320 = vuzp2q_s32(v226, v228);
            v224 = 64;
          }

          else if (v223 == 1)
          {
            v225 = vld1q_dup_s16(v222);
            v314 = v225;
            v316 = v225;
            v318 = v225;
            v320 = v225;
            v224 = 2;
          }

          else if (v86[4])
          {
            v224 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v314, 32, v222, v223);
          }

          else
          {
            v224 = 0;
            v314 = 0uLL;
            v316 = 0uLL;
            v318 = 0uLL;
            v320 = 0uLL;
          }

          v230 = v222 + v224;
          v231 = v86[5];
          if (v231 == 63)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = vuzp2q_s32(*v230, v235);
            v322 = vuzp1q_s32(*v230, v235);
            v324 = v237;
            v326 = vuzp1q_s32(v234, v236);
            v328 = vuzp2q_s32(v234, v236);
            v232 = 64;
          }

          else if (v231 == 1)
          {
            v233 = vld1q_dup_s16(v230);
            v322 = v233;
            v324 = v233;
            v326 = v233;
            v328 = v233;
            v232 = 2;
          }

          else if (v86[5])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v322, 32, v230, v231);
          }

          else
          {
            v232 = 0;
            v322 = 0uLL;
            v324 = 0uLL;
            v326 = 0uLL;
            v328 = 0uLL;
          }

          v238 = v230 + v232;
          v239 = v86[6];
          if (v239 == 63)
          {
            v242 = *(v238 + 16);
            v243 = *(v238 + 32);
            v244 = *(v238 + 48);
            v245 = vuzp2q_s32(*v238, v243);
            v315 = vuzp1q_s32(*v238, v243);
            v317 = v245;
            v319 = vuzp1q_s32(v242, v244);
            v321 = vuzp2q_s32(v242, v244);
            v240 = 64;
          }

          else if (v239 == 1)
          {
            v241 = vld1q_dup_s16(v238);
            v315 = v241;
            v317 = v241;
            v319 = v241;
            v321 = v241;
            v240 = 2;
          }

          else if (v86[6])
          {
            v240 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v315, 32, v238, v239);
          }

          else
          {
            v240 = 0;
            v315 = 0uLL;
            v317 = 0uLL;
            v319 = 0uLL;
            v321 = 0uLL;
          }

          v246 = v238 + v240;
          v247 = v86[7];
          if (v247 == 63)
          {
            v249 = *(v246 + 16);
            v250 = *(v246 + 32);
            v251 = *(v246 + 48);
            v252 = vuzp2q_s32(*v246, v250);
            v323 = vuzp1q_s32(*v246, v250);
            v325 = v252;
            v327 = vuzp1q_s32(v249, v251);
            v329 = vuzp2q_s32(v249, v251);
            v44 = a7;
            v15 = v285;
          }

          else
          {
            v44 = a7;
            v15 = v285;
            if (v247 == 1)
            {
              v248 = vld1q_dup_s16(v246);
              v323 = v248;
              v325 = v248;
              v327 = v248;
              v329 = v248;
            }

            else if (v247)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 32, v246, v247);
            }

            else
            {
              v323 = 0uLL;
              v325 = 0uLL;
              v327 = 0uLL;
              v329 = 0uLL;
            }
          }

          v253 = v293;
          v45 = v41 + 1;
          if (v293)
          {
            v254 = 0;
            v255 = &v298.i8[32 * v291 + 2 * v292];
            v256 = v294;
            do
            {
              if (v256)
              {
                v257 = 0;
                v258 = &v289->i8[v290 * v254];
                do
                {
                  v258[v257] = v255[v257];
                  ++v257;
                  v256 = v294;
                }

                while (2 * v294 > v257);
                v253 = v293;
              }

              ++v254;
              v255 += 32;
            }

            while (v254 < v253);
          }

LABEL_50:
          v20 = v41 == v277 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v263;
      }

      while (!v20);
    }
  }
}