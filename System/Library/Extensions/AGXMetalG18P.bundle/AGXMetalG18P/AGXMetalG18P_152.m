void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v313 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v267 = a8;
  v248 = a8 + a10 - 1;
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
  v247 = v248 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v262 = v23;
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
      v261 = 0;
LABEL_32:
      v258 = v25 - 4;
      v251 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v245 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v261 = v30 >= v24;
    goto LABEL_32;
  }

  v261 = 0;
  v245 = 0;
  v251 = 0;
  v258 = 0;
LABEL_33:
  if (v17 <= v247)
  {
    v260 = a7 + a9 - 1;
    if (a7 >> 4 <= v260 >> 4)
    {
      v32 = a11;
      v270 = v18 >> 4;
      v254 = v18 & 0xF;
      v259 = (v18 & 0xF) + 1;
      v243 = v19 & 7;
      v244 = v19 >> 3;
      v253 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v250 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v249 = v34;
      v268 = v15;
      v252 = 2 * a11;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v267)
        {
          v36 = v267;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v248 < v35)
        {
          v35 = v248;
        }

        v257 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v243;
        v256 = v38;
        v40 = v38 != 8;
        v41 = a7 >> 4;
        v42 = v243 + 1;
        if (v17 != v244)
        {
          v42 = 8;
        }

        v269 = v42;
        if (v17 != v244)
        {
          v39 = v40;
        }

        v255 = v39;
        v43 = v17 & ~(-1 << v251);
        v265 = a2 + (v36 - v267) * v32;
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

          if (v260 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v270)
          {
            v51 = v259;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v17 >= v267 && v46 >= v44)
          {
            v53 = v49 != v254;
            if (v41 != v270)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v255;
          }

          if (v261)
          {
            if (v258 | v251)
            {
              v54 = 0;
              v55 = 0;
              v56 = v258 != 0;
              v57 = 1;
              v59 = v251 != 0;
              v58 = v251;
              v60 = v258;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v43 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v41 & ~(-1 << v258) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v258) + (v17 >> v251) * v245);
          }

          else if (v250)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v249.i8[0];
            v65 = v249.i8[4];
            v67 = v250.i32[0];
            v68 = v250.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v41) << v62++;
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
          if (v262)
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
          v87 = (v265 + 4 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v269 > 7)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = (v82 + 32);
              v314 = vld2q_f64(v98);
              v99 = *v82;
              v100 = *(v82 + 1);
              *v87 = vzip1q_s64(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vzip2q_s64(v99, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v101 = &v87->i8[v252];
              *v101 = v314.val[0];
              *(v101 + a11) = v314.val[1];
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v252);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v102 = &v82[v91];
            v103 = v87 + 1;
            v104 = v86[1];
            if (v104 == 63)
            {
              v110 = (v102 + 32);
              v315 = vld2q_f64(v110);
              v111 = *v102;
              v112 = *(v102 + 16);
              *v103 = vzip1q_s64(*v102, v112);
              *(v103 + v32) = vzip2q_s64(v111, v112);
              v113 = &v103->i8[v89];
              *v113 = v315.val[0];
              *(v113 + v32) = v315.val[1];
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v109 = vld1q_dup_s16(v102);
              *v103 = v109;
              *(v103 + v32) = v109;
              *(v103 + v89) = v109;
              *(v103 + v90) = v109;
              v105 = 2;
            }

            else if (v86[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, v32, v102, v104);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v87[1].i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v89);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v90);
              *v108 = 0;
              v108[1] = 0;
            }

            v114 = v102 + v105;
            v115 = (v87 + v253);
            v116 = v86[2];
            if (v116 == 63)
            {
              v122 = (v114 + 32);
              v316 = vld2q_f64(v122);
              v123 = *v114;
              v124 = *(v114 + 16);
              *v115 = vzip1q_s64(*v114, v124);
              *(v115 + v32) = vzip2q_s64(v123, v124);
              v125 = &v115->i8[v89];
              *v125 = v316.val[0];
              *(v125 + v32) = v316.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v32) = v121;
              *(v115 + v89) = v121;
              *(v115 + v90) = v121;
              v117 = 2;
            }

            else if (v86[2])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v253), v32, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v115->i64[1] = 0;
              v118 = (v115->i64 + v32);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v89);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v90);
              *v120 = 0;
              v120[1] = 0;
            }

            v126 = v114 + v117;
            v127 = v115 + 1;
            v128 = v86[3];
            if (v128 == 63)
            {
              v134 = (v126 + 32);
              v317 = vld2q_f64(v134);
              v135 = *v126;
              v136 = *(v126 + 16);
              *v127 = vzip1q_s64(*v126, v136);
              *(v127 + v32) = vzip2q_s64(v135, v136);
              v137 = &v127->i8[v89];
              *v137 = v317.val[0];
              *(v137 + v32) = v317.val[1];
              v129 = 64;
            }

            else if (v128 == 1)
            {
              v133 = vld1q_dup_s16(v126);
              *v127 = v133;
              *(v127 + v32) = v133;
              *(v127 + v89) = v133;
              *(v127 + v90) = v133;
              v129 = 2;
            }

            else if (v86[3])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, v32, v126, v128);
            }

            else
            {
              v129 = 0;
              v127->i64[0] = 0;
              v115[1].i64[1] = 0;
              v130 = (v127->i64 + v32);
              *v130 = 0;
              v130[1] = 0;
              v131 = (v127->i64 + v89);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v127->i64 + v90);
              *v132 = 0;
              v132[1] = 0;
            }

            v138 = v126 + v129;
            v139 = v87 + 2;
            v140 = v86[4];
            if (v140 == 63)
            {
              v146 = (v138 + 32);
              v318 = vld2q_f64(v146);
              v147 = *v138;
              v148 = *(v138 + 16);
              *v139 = vzip1q_s64(*v138, v148);
              *(v139 + v32) = vzip2q_s64(v147, v148);
              v149 = &v139->i8[v89];
              *v149 = v318.val[0];
              *(v149 + v32) = v318.val[1];
              v141 = 64;
            }

            else if (v140 == 1)
            {
              v145 = vld1q_dup_s16(v138);
              *v139 = v145;
              *(v139 + v32) = v145;
              *(v139 + v89) = v145;
              *(v139 + v90) = v145;
              v141 = 2;
            }

            else if (v86[4])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, v32, v138, v140);
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v87[2].i64[1] = 0;
              v142 = (v139->i64 + v32);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v89);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v90);
              *v144 = 0;
              v144[1] = 0;
            }

            v150 = v138 + v141;
            v151 = v87 + 3;
            v152 = v86[5];
            if (v152 == 63)
            {
              v158 = (v150 + 32);
              v319 = vld2q_f64(v158);
              v159 = *v150;
              v160 = *(v150 + 16);
              *v151 = vzip1q_s64(*v150, v160);
              *(v151 + v32) = vzip2q_s64(v159, v160);
              v161 = &v151->i8[v89];
              *v161 = v319.val[0];
              *(v161 + v32) = v319.val[1];
              v153 = 64;
            }

            else if (v152 == 1)
            {
              v157 = vld1q_dup_s16(v150);
              *v151 = v157;
              *(v151 + v32) = v157;
              *(v151 + v89) = v157;
              *(v151 + v90) = v157;
              v153 = 2;
            }

            else if (v86[5])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, v32, v150, v152);
            }

            else
            {
              v153 = 0;
              v151->i64[0] = 0;
              v87[3].i64[1] = 0;
              v154 = (v151->i64 + v32);
              *v154 = 0;
              v154[1] = 0;
              v155 = (v151->i64 + v89);
              *v155 = 0;
              v155[1] = 0;
              v156 = (v151->i64 + v90);
              *v156 = 0;
              v156[1] = 0;
            }

            v162 = v150 + v153;
            v163 = v115 + 2;
            v164 = v86[6];
            if (v164 == 63)
            {
              v170 = (v162 + 32);
              v320 = vld2q_f64(v170);
              v171 = *v162;
              v172 = *(v162 + 16);
              *v163 = vzip1q_s64(*v162, v172);
              *(v163 + v32) = vzip2q_s64(v171, v172);
              v173 = &v163->i8[v89];
              *v173 = v320.val[0];
              *(v173 + v32) = v320.val[1];
              v165 = 64;
            }

            else if (v164 == 1)
            {
              v169 = vld1q_dup_s16(v162);
              *v163 = v169;
              *(v163 + v32) = v169;
              *(v163 + v89) = v169;
              *(v163 + v90) = v169;
              v165 = 2;
            }

            else if (v86[6])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v32, v150 + v153, v164);
            }

            else
            {
              v165 = 0;
              v163->i64[0] = 0;
              v115[2].i64[1] = 0;
              v166 = (v163->i64 + v32);
              *v166 = 0;
              v166[1] = 0;
              v167 = (v163->i64 + v89);
              *v167 = 0;
              v167[1] = 0;
              v168 = (v163->i64 + v90);
              *v168 = 0;
              v168[1] = 0;
            }

            v174 = v162 + v165;
            v175 = v115 + 3;
            v176 = v86[7];
            if (v176 == 63)
            {
              v181 = (v174 + 32);
              v321 = vld2q_f64(v181);
              v182 = *v174;
              v183 = *(v174 + 16);
              *v175 = vzip1q_s64(*v174, v183);
              *(v175 + v32) = vzip2q_s64(v182, v183);
              v184 = &v175->i8[v89];
              *v184 = v321.val[0];
              *(v184 + v32) = v321.val[1];
              v44 = a7;
              v15 = v268;
            }

            else
            {
              v44 = a7;
              v15 = v268;
              if (v176 == 1)
              {
                v180 = vld1q_dup_s16(v174);
                *v175 = v180;
                *(v175 + v32) = v180;
                *(v175 + v89) = v180;
                *(v175 + v90) = v180;
              }

              else if (v176)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v32, v174, v176);
              }

              else
              {
                v175->i64[0] = 0;
                v115[3].i64[1] = 0;
                v177 = (v175->i64 + v32);
                *v177 = 0;
                v177[1] = 0;
                v178 = (v175->i64 + v89);
                *v178 = 0;
                v178[1] = 0;
                v179 = (v175->i64 + v90);
                *v179 = 0;
                v179[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v268;
          block[5] = v82;
          v278 = v51;
          v279 = v269;
          v274 = v257;
          v275 = v48 - v46;
          block[6] = v86;
          v272 = v87;
          v32 = a11;
          v273 = a11;
          v276 = v256;
          v277 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v268 + 8) + 16552), block);
            v44 = a7;
            v15 = v268;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v186 = *(v82 + 1);
            v187 = (v82 + 32);
            v322 = vld2q_f64(v187);
            v188 = vzip2q_s64(*v82, v186);
            v281 = vzip1q_s64(*v82, v186);
            v285 = v188;
            v289 = v322.val[0];
            v293 = v322.val[1];
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v185 = vld1q_dup_s16(v82);
            v281 = v185;
            v285 = v185;
            v289 = v185;
            v293 = v185;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v281, 64, v82, v95);
          }

          else
          {
            v96 = 0;
            v281 = 0uLL;
            v285 = 0uLL;
            v289 = 0uLL;
            v293 = 0uLL;
          }

          v189 = &v82[v96];
          v190 = v86[1];
          if (v190 == 63)
          {
            v193 = *(v189 + 16);
            v194 = (v189 + 32);
            v323 = vld2q_f64(v194);
            v195 = vzip2q_s64(*v189, v193);
            v282 = vzip1q_s64(*v189, v193);
            v286 = v195;
            v290 = v323.val[0];
            v294 = v323.val[1];
            v191 = 64;
          }

          else if (v190 == 1)
          {
            v192 = vld1q_dup_s16(v189);
            v282 = v192;
            v286 = v192;
            v290 = v192;
            v294 = v192;
            v191 = 2;
          }

          else if (v86[1])
          {
            v191 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 64, v189, v190);
          }

          else
          {
            v191 = 0;
            v282 = 0uLL;
            v286 = 0uLL;
            v290 = 0uLL;
            v294 = 0uLL;
          }

          v196 = v189 + v191;
          v197 = v86[2];
          if (v197 == 63)
          {
            v200 = *(v196 + 16);
            v201 = (v196 + 32);
            v324 = vld2q_f64(v201);
            v202 = vzip2q_s64(*v196, v200);
            v297 = vzip1q_s64(*v196, v200);
            v301 = v202;
            v305 = v324.val[0];
            v309 = v324.val[1];
            v198 = 64;
          }

          else if (v197 == 1)
          {
            v199 = vld1q_dup_s16(v196);
            v297 = v199;
            v301 = v199;
            v305 = v199;
            v309 = v199;
            v198 = 2;
          }

          else if (v86[2])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v297, 64, v196, v197);
          }

          else
          {
            v198 = 0;
            v297 = 0uLL;
            v301 = 0uLL;
            v305 = 0uLL;
            v309 = 0uLL;
          }

          v203 = v196 + v198;
          v204 = v86[3];
          if (v204 == 63)
          {
            v207 = *(v203 + 16);
            v208 = (v203 + 32);
            v325 = vld2q_f64(v208);
            v209 = vzip2q_s64(*v203, v207);
            v298 = vzip1q_s64(*v203, v207);
            v302 = v209;
            v306 = v325.val[0];
            v310 = v325.val[1];
            v205 = 64;
          }

          else if (v204 == 1)
          {
            v206 = vld1q_dup_s16(v203);
            v298 = v206;
            v302 = v206;
            v306 = v206;
            v310 = v206;
            v205 = 2;
          }

          else if (v86[3])
          {
            v205 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 64, v203, v204);
          }

          else
          {
            v205 = 0;
            v298 = 0uLL;
            v302 = 0uLL;
            v306 = 0uLL;
            v310 = 0uLL;
          }

          v210 = v203 + v205;
          v211 = v86[4];
          if (v211 == 63)
          {
            v214 = *(v210 + 16);
            v215 = (v210 + 32);
            v326 = vld2q_f64(v215);
            v216 = vzip2q_s64(*v210, v214);
            v283 = vzip1q_s64(*v210, v214);
            v287 = v216;
            v291 = v326.val[0];
            v295 = v326.val[1];
            v212 = 64;
          }

          else if (v211 == 1)
          {
            v213 = vld1q_dup_s16(v210);
            v283 = v213;
            v287 = v213;
            v291 = v213;
            v295 = v213;
            v212 = 2;
          }

          else if (v86[4])
          {
            v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v283, 64, v210, v211);
          }

          else
          {
            v212 = 0;
            v283 = 0uLL;
            v287 = 0uLL;
            v291 = 0uLL;
            v295 = 0uLL;
          }

          v217 = v210 + v212;
          v218 = v86[5];
          if (v218 == 63)
          {
            v221 = *(v217 + 16);
            v222 = (v217 + 32);
            v327 = vld2q_f64(v222);
            v223 = vzip2q_s64(*v217, v221);
            v284 = vzip1q_s64(*v217, v221);
            v288 = v223;
            v292 = v327.val[0];
            v296 = v327.val[1];
            v219 = 64;
          }

          else if (v218 == 1)
          {
            v220 = vld1q_dup_s16(v217);
            v284 = v220;
            v288 = v220;
            v292 = v220;
            v296 = v220;
            v219 = 2;
          }

          else if (v86[5])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v217, v218);
          }

          else
          {
            v219 = 0;
            v284 = 0uLL;
            v288 = 0uLL;
            v292 = 0uLL;
            v296 = 0uLL;
          }

          v224 = v217 + v219;
          v225 = v86[6];
          if (v225 == 63)
          {
            v228 = *(v224 + 16);
            v229 = (v224 + 32);
            v328 = vld2q_f64(v229);
            v230 = vzip2q_s64(*v224, v228);
            v299 = vzip1q_s64(*v224, v228);
            v303 = v230;
            v307 = v328.val[0];
            v311 = v328.val[1];
            v226 = 64;
          }

          else if (v225 == 1)
          {
            v227 = vld1q_dup_s16(v224);
            v299 = v227;
            v303 = v227;
            v307 = v227;
            v311 = v227;
            v226 = 2;
          }

          else if (v86[6])
          {
            v226 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 64, v224, v225);
          }

          else
          {
            v226 = 0;
            v299 = 0uLL;
            v303 = 0uLL;
            v307 = 0uLL;
            v311 = 0uLL;
          }

          v231 = v224 + v226;
          v232 = v86[7];
          if (v232 == 63)
          {
            v234 = *(v231 + 16);
            v235 = (v231 + 32);
            v329 = vld2q_f64(v235);
            v236 = vzip2q_s64(*v231, v234);
            v300 = vzip1q_s64(*v231, v234);
            v304 = v236;
            v308 = v329.val[0];
            v312 = v329.val[1];
            v44 = a7;
            v15 = v268;
          }

          else
          {
            v44 = a7;
            v15 = v268;
            if (v232 == 1)
            {
              v233 = vld1q_dup_s16(v231);
              v300 = v233;
              v304 = v233;
              v308 = v233;
              v312 = v233;
            }

            else if (v232)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v231, v232);
            }

            else
            {
              v300 = 0uLL;
              v304 = 0uLL;
              v308 = 0uLL;
              v312 = 0uLL;
            }
          }

          v237 = v276;
          v45 = v41 + 1;
          if (v276)
          {
            v238 = 0;
            v239 = &v281.i8[64 * v274 + 4 * v275];
            v240 = v277;
            do
            {
              if (v240)
              {
                v241 = 0;
                v242 = &v272->i8[v273 * v238];
                do
                {
                  v242[v241] = v239[v241];
                  ++v241;
                  v240 = v277;
                }

                while (4 * v277 > v241);
                v237 = v276;
              }

              ++v238;
              v239 += 64;
            }

            while (v238 < v237);
          }

LABEL_50:
          v20 = v41 == v260 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v247;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v16 = a8 >> 3;
  v244 = a8 + a10 - 1;
  v246 = v244 >> 3;
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
  v257 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v246)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v24 = a11;
      v266 = (a5 - 1) >> 4;
      v241 = a5 - 1;
      v249 = (a5 - 1) & 0xF;
      v242 = (a6 - 1) & 7;
      v243 = (a6 - 1) >> 3;
      v248 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v26 = vcgt_u32(v25, 0x1F0000000FLL);
      v254 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v26);
      v253 = v26;
      v240 = 8 * v18 * v17;
      v264 = v15;
      v247 = 2 * a11;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v262)
        {
          v28 = v262;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v244 < v27)
        {
          v27 = v244;
        }

        v261 = 8 * v16;
        v252 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v242;
        v251 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 4;
        v34 = v242 + 1;
        if (v16 != v243)
        {
          v34 = 8;
        }

        v265 = v34;
        if (v16 != v243)
        {
          v31 = v32;
        }

        v250 = v31;
        v260 = a2 + (v28 - v262) * v24;
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

          if (v255 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v266)
          {
            v42 = v249 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v261 >= v262 && v37 >= v35)
          {
            v44 = v40 != v249;
            if (v33 != v266)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v250;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v240 >> (*(v15 + 57) != 0);
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

            v228 = (v65 >> 4) - 1;
            if (v67)
            {
              v229 = 0;
            }

            else
            {
              v229 = 32 - __clz(~(-1 << -__clz(v228)));
            }

            v230 = (v69 >> 3) - 1;
            if (v68)
            {
              v231 = 0;
              if (v229)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v231 = 32 - __clz(~(-1 << -__clz(v230)));
              if (v231 | v229)
              {
LABEL_225:
                v232 = 0;
                v233 = 0;
                v234 = v33 & v228;
                v235 = v16 & v230;
                v236 = v231 != 0;
                v237 = v229 != 0;
                v238 = 1;
                do
                {
                  --v231;
                  if (v236)
                  {
                    v233 |= (v238 & v235) << v232++;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  --v229;
                  if (v237)
                  {
                    v233 |= (v238 & v234) << v232++;
                  }

                  else
                  {
                    v229 = 0;
                  }

                  v238 *= 2;
                  --v232;
                  v237 = v229 != 0;
                  v236 = v231 != 0;
                }

                while (v229 | v231);
                v239 = v233 << 9;
                goto LABEL_237;
              }
            }

            v239 = 0;
LABEL_237:
            v52 = v239 + ((v37 / v65 + v261 / v69 * ((v65 + v241) / v65)) << 14);
            goto LABEL_55;
          }

          if (v254)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v253.i8[0];
            v48 = v253.i8[4];
            v50 = v254.i32[0];
            v51 = v254.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v33) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v257)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v260 + 4 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v265 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v264;
            block[5] = v70;
            v274 = v42;
            v275 = v265;
            v270 = v252;
            v271 = v39 - v37;
            block[6] = v71;
            v268 = v72;
            v24 = a11;
            v269 = a11;
            v272 = v251;
            v273 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v264 + 8) + 16552), block);
              v35 = a7;
              v15 = v264;
LABEL_145:
              v162 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v171 = *(v70 + 1);
              v172 = (v70 + 32);
              v318 = vld2q_f64(v172);
              v173 = vzip2q_s64(*v70, v171);
              v277 = vzip1q_s64(*v70, v171);
              v281 = v173;
              v285 = v318.val[0];
              v289 = v318.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v170 = vld1q_dup_s16(v70);
              v277 = v170;
              v281 = v170;
              v285 = v170;
              v289 = v170;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 64, v70, v80);
            }

            else
            {
              v81 = 0;
              v277 = 0uLL;
              v281 = 0uLL;
              v285 = 0uLL;
              v289 = 0uLL;
            }

            v174 = &v70[v81];
            v175 = v71[1];
            if (v175 == 63)
            {
              v178 = *(v174 + 16);
              v179 = (v174 + 32);
              v319 = vld2q_f64(v179);
              v180 = vzip2q_s64(*v174, v178);
              v278 = vzip1q_s64(*v174, v178);
              v282 = v180;
              v286 = v319.val[0];
              v290 = v319.val[1];
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v177 = vld1q_dup_s16(v174);
              v278 = v177;
              v282 = v177;
              v286 = v177;
              v290 = v177;
              v176 = 2;
            }

            else if (v71[1])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v174, v175);
            }

            else
            {
              v176 = 0;
              v278 = 0uLL;
              v282 = 0uLL;
              v286 = 0uLL;
              v290 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[2];
            if (v182 == 63)
            {
              v185 = *(v181 + 16);
              v186 = (v181 + 32);
              v320 = vld2q_f64(v186);
              v187 = vzip2q_s64(*v181, v185);
              v293 = vzip1q_s64(*v181, v185);
              v297 = v187;
              v301 = v320.val[0];
              v305 = v320.val[1];
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v184 = vld1q_dup_s16(v181);
              v293 = v184;
              v297 = v184;
              v301 = v184;
              v305 = v184;
              v183 = 2;
            }

            else if (v71[2])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 64, v181, v182);
            }

            else
            {
              v183 = 0;
              v293 = 0uLL;
              v297 = 0uLL;
              v301 = 0uLL;
              v305 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[3];
            if (v189 == 63)
            {
              v192 = *(v188 + 16);
              v193 = (v188 + 32);
              v321 = vld2q_f64(v193);
              v194 = vzip2q_s64(*v188, v192);
              v294 = vzip1q_s64(*v188, v192);
              v298 = v194;
              v302 = v321.val[0];
              v306 = v321.val[1];
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v191 = vld1q_dup_s16(v188);
              v294 = v191;
              v298 = v191;
              v302 = v191;
              v306 = v191;
              v190 = 2;
            }

            else if (v71[3])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 64, v188, v189);
            }

            else
            {
              v190 = 0;
              v294 = 0uLL;
              v298 = 0uLL;
              v302 = 0uLL;
              v306 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[4];
            if (v196 == 63)
            {
              v199 = *(v195 + 16);
              v200 = (v195 + 32);
              v322 = vld2q_f64(v200);
              v201 = vzip2q_s64(*v195, v199);
              v279 = vzip1q_s64(*v195, v199);
              v283 = v201;
              v287 = v322.val[0];
              v291 = v322.val[1];
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v198 = vld1q_dup_s16(v195);
              v279 = v198;
              v283 = v198;
              v287 = v198;
              v291 = v198;
              v197 = 2;
            }

            else if (v71[4])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 64, v195, v196);
            }

            else
            {
              v197 = 0;
              v279 = 0uLL;
              v283 = 0uLL;
              v287 = 0uLL;
              v291 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[5];
            if (v203 == 63)
            {
              v206 = *(v202 + 16);
              v207 = (v202 + 32);
              v323 = vld2q_f64(v207);
              v208 = vzip2q_s64(*v202, v206);
              v280 = vzip1q_s64(*v202, v206);
              v284 = v208;
              v288 = v323.val[0];
              v292 = v323.val[1];
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v205 = vld1q_dup_s16(v202);
              v280 = v205;
              v284 = v205;
              v288 = v205;
              v292 = v205;
              v204 = 2;
            }

            else if (v71[5])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 64, v202, v203);
            }

            else
            {
              v204 = 0;
              v280 = 0uLL;
              v284 = 0uLL;
              v288 = 0uLL;
              v292 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[6];
            if (v210 == 63)
            {
              v213 = *(v209 + 16);
              v214 = (v209 + 32);
              v324 = vld2q_f64(v214);
              v215 = vzip2q_s64(*v209, v213);
              v295 = vzip1q_s64(*v209, v213);
              v299 = v215;
              v303 = v324.val[0];
              v307 = v324.val[1];
              v211 = 64;
            }

            else if (v210 == 1)
            {
              v212 = vld1q_dup_s16(v209);
              v295 = v212;
              v299 = v212;
              v303 = v212;
              v307 = v212;
              v211 = 2;
            }

            else if (v71[6])
            {
              v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 64, v209, v210);
            }

            else
            {
              v211 = 0;
              v295 = 0uLL;
              v299 = 0uLL;
              v303 = 0uLL;
              v307 = 0uLL;
            }

            v216 = v209 + v211;
            v217 = v71[7];
            if (v217 == 63)
            {
              v219 = *(v216 + 16);
              v220 = (v216 + 32);
              v325 = vld2q_f64(v220);
              v221 = vzip2q_s64(*v216, v219);
              v296 = vzip1q_s64(*v216, v219);
              v300 = v221;
              v304 = v325.val[0];
              v308 = v325.val[1];
              v15 = v264;
              v162 = v33 + 1;
            }

            else
            {
              v15 = v264;
              v162 = v33 + 1;
              if (v217 == 1)
              {
                v218 = vld1q_dup_s16(v216);
                v296 = v218;
                v300 = v218;
                v304 = v218;
                v308 = v218;
              }

              else if (v217)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 64, v216, v217);
              }

              else
              {
                v296 = 0uLL;
                v300 = 0uLL;
                v304 = 0uLL;
                v308 = 0uLL;
              }
            }

            v222 = v272;
            if (v272)
            {
              v223 = 0;
              v224 = &v277.i8[64 * v270 + 4 * v271];
              v225 = v273;
              do
              {
                if (v225)
                {
                  v226 = 0;
                  v227 = &v268->i8[v269 * v223];
                  do
                  {
                    v227[v226] = v224[v226];
                    ++v226;
                    v225 = v273;
                  }

                  while (4 * v273 > v226);
                  v222 = v272;
                }

                ++v223;
                v224 += 64;
              }

              while (v223 < v222);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = (v70 + 32);
              v310 = vld2q_f64(v83);
              v84 = *v70;
              v85 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v84, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v86 = &v72->i8[v247];
              *v86 = v310.val[0];
              *(v86 + a11) = v310.val[1];
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v247);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v87 = &v70[v76];
            v88 = v72 + 1;
            v89 = v71[1];
            if (v89 == 63)
            {
              v95 = (v87 + 32);
              v311 = vld2q_f64(v95);
              v96 = *v87;
              v97 = *(v87 + 16);
              *v88 = vzip1q_s64(*v87, v97);
              *(v88 + v24) = vzip2q_s64(v96, v97);
              v98 = &v88->i8[v74];
              *v98 = v311.val[0];
              *(v98 + v24) = v311.val[1];
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v94 = vld1q_dup_s16(v87);
              *v88 = v94;
              *(v88 + v24) = v94;
              *(v88 + v74) = v94;
              *(v88 + v75) = v94;
              v90 = 2;
            }

            else if (v71[1])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, v24, v87, v89);
            }

            else
            {
              v90 = 0;
              v88->i64[0] = 0;
              v72[1].i64[1] = 0;
              v91 = (v88->i64 + v24);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v88->i64 + v74);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v88->i64 + v75);
              *v93 = 0;
              v93[1] = 0;
            }

            v99 = v87 + v90;
            v100 = (v72 + v248);
            v101 = v71[2];
            if (v101 == 63)
            {
              v107 = (v99 + 32);
              v312 = vld2q_f64(v107);
              v108 = *v99;
              v109 = *(v99 + 16);
              *v100 = vzip1q_s64(*v99, v109);
              *(v100 + v24) = vzip2q_s64(v108, v109);
              v110 = &v100->i8[v74];
              *v110 = v312.val[0];
              *(v110 + v24) = v312.val[1];
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v106 = vld1q_dup_s16(v99);
              *v100 = v106;
              *(v100 + v24) = v106;
              *(v100 + v74) = v106;
              *(v100 + v75) = v106;
              v102 = 2;
            }

            else if (v71[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v248), v24, v99, v101);
            }

            else
            {
              v102 = 0;
              v100->i64[0] = 0;
              v100->i64[1] = 0;
              v103 = (v100->i64 + v24);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v100->i64 + v74);
              *v104 = 0;
              v104[1] = 0;
              v105 = (v100->i64 + v75);
              *v105 = 0;
              v105[1] = 0;
            }

            v111 = v99 + v102;
            v112 = v100 + 1;
            v113 = v71[3];
            if (v113 == 63)
            {
              v119 = (v111 + 32);
              v313 = vld2q_f64(v119);
              v120 = *v111;
              v121 = *(v111 + 16);
              *v112 = vzip1q_s64(*v111, v121);
              *(v112 + v24) = vzip2q_s64(v120, v121);
              v122 = &v112->i8[v74];
              *v122 = v313.val[0];
              *(v122 + v24) = v313.val[1];
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v118 = vld1q_dup_s16(v111);
              *v112 = v118;
              *(v112 + v24) = v118;
              *(v112 + v74) = v118;
              *(v112 + v75) = v118;
              v114 = 2;
            }

            else if (v71[3])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v24, v111, v113);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v100[1].i64[1] = 0;
              v115 = (v112->i64 + v24);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v74);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v75);
              *v117 = 0;
              v117[1] = 0;
            }

            v123 = v111 + v114;
            v124 = v72 + 2;
            v125 = v71[4];
            if (v125 == 63)
            {
              v131 = (v123 + 32);
              v314 = vld2q_f64(v131);
              v132 = *v123;
              v133 = *(v123 + 16);
              *v124 = vzip1q_s64(*v123, v133);
              *(v124 + v24) = vzip2q_s64(v132, v133);
              v134 = &v124->i8[v74];
              *v134 = v314.val[0];
              *(v134 + v24) = v314.val[1];
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v130 = vld1q_dup_s16(v123);
              *v124 = v130;
              *(v124 + v24) = v130;
              *(v124 + v74) = v130;
              *(v124 + v75) = v130;
              v126 = 2;
            }

            else if (v71[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v124, v24, v123, v125);
            }

            else
            {
              v126 = 0;
              v124->i64[0] = 0;
              v72[2].i64[1] = 0;
              v127 = (v124->i64 + v24);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v124->i64 + v74);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v124->i64 + v75);
              *v129 = 0;
              v129[1] = 0;
            }

            v135 = v123 + v126;
            v136 = v72 + 3;
            v137 = v71[5];
            if (v137 == 63)
            {
              v143 = (v135 + 32);
              v315 = vld2q_f64(v143);
              v144 = *v135;
              v145 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v145);
              *(v136 + v24) = vzip2q_s64(v144, v145);
              v146 = &v136->i8[v74];
              *v146 = v315.val[0];
              *(v146 + v24) = v315.val[1];
              v138 = 64;
              v35 = a7;
            }

            else
            {
              v35 = a7;
              if (v137 == 1)
              {
                v142 = vld1q_dup_s16(v135);
                *v136 = v142;
                *(v136 + v24) = v142;
                *(v136 + v74) = v142;
                *(v136 + v75) = v142;
                v138 = 2;
              }

              else if (v71[5])
              {
                v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v24, v135, v137);
              }

              else
              {
                v138 = 0;
                v136->i64[0] = 0;
                v136->i64[1] = 0;
                v139 = (v136->i64 + v24);
                *v139 = 0;
                v139[1] = 0;
                v140 = (v136->i64 + v74);
                *v140 = 0;
                v140[1] = 0;
                v141 = (v136->i64 + v75);
                *v141 = 0;
                v141[1] = 0;
              }
            }

            v147 = v135 + v138;
            v148 = v100 + 2;
            v149 = v71[6];
            if (v149 == 63)
            {
              v155 = (v147 + 32);
              v316 = vld2q_f64(v155);
              v156 = *v147;
              v157 = *(v147 + 16);
              *v148 = vzip1q_s64(*v147, v157);
              *(v148 + v24) = vzip2q_s64(v156, v157);
              v158 = &v148->i8[v74];
              *v158 = v316.val[0];
              *(v158 + v24) = v316.val[1];
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v154 = vld1q_dup_s16(v147);
              *v148 = v154;
              *(v148 + v24) = v154;
              *(v148 + v74) = v154;
              *(v148 + v75) = v154;
              v150 = 2;
            }

            else if (v71[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v24, v147, v149);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v100[2].i64[1] = 0;
              v151 = (v148->i64 + v24);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v74);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v75);
              *v153 = 0;
              v153[1] = 0;
            }

            v159 = v147 + v150;
            v160 = v100 + 3;
            v161 = v71[7];
            if (v161 == 63)
            {
              v166 = (v159 + 32);
              v317 = vld2q_f64(v166);
              v167 = *v159;
              v168 = *(v159 + 16);
              *v160 = vzip1q_s64(*v159, v168);
              *(v160 + v24) = vzip2q_s64(v167, v168);
              v169 = &v160->i8[v74];
              *v169 = v317.val[0];
              *(v169 + v24) = v317.val[1];
              v15 = v264;
              goto LABEL_145;
            }

            v15 = v264;
            v162 = v33 + 1;
            if (v161 == 1)
            {
              v36 = vld1q_dup_s16(v159);
              *v160 = v36;
              *(v160 + v24) = v36;
              *(v160 + v74) = v36;
              *(v160 + v75) = v36;
            }

            else if (v161)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v24, v159, v161);
            }

            else
            {
              v160->i64[0] = 0;
              v100[3].i64[1] = 0;
              v163 = (v160->i64 + v24);
              *v163 = 0;
              v163[1] = 0;
              v164 = (v160->i64 + v74);
              *v164 = 0;
              v164[1] = 0;
              v165 = (v160->i64 + v75);
              *v165 = 0;
              v165[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v255 >> 4;
          v33 = v162;
        }

        while (!v20);
        v20 = v16++ == v246;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v16 = a8 >> 3;
  v244 = a8 + a10 - 1;
  v246 = v244 >> 3;
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
  v257 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v246)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v24 = a11;
      v266 = (a5 - 1) >> 4;
      v241 = a5 - 1;
      v249 = (a5 - 1) & 0xF;
      v242 = (a6 - 1) & 7;
      v243 = (a6 - 1) >> 3;
      v248 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v26 = vcgt_u32(v25, 0x1F0000000FLL);
      v254 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v26);
      v253 = v26;
      v240 = 8 * v18 * v17;
      v264 = v15;
      v247 = 2 * a11;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v262)
        {
          v28 = v262;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v244 < v27)
        {
          v27 = v244;
        }

        v261 = 8 * v16;
        v252 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v242;
        v251 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 4;
        v34 = v242 + 1;
        if (v16 != v243)
        {
          v34 = 8;
        }

        v265 = v34;
        if (v16 != v243)
        {
          v31 = v32;
        }

        v250 = v31;
        v260 = a2 + (v28 - v262) * v24;
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

          if (v255 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v266)
          {
            v42 = v249 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v261 >= v262 && v37 >= v35)
          {
            v44 = v40 != v249;
            if (v33 != v266)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v250;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v240 >> (*(v15 + 57) != 0);
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

            v228 = (v65 >> 4) - 1;
            if (v67)
            {
              v229 = 0;
            }

            else
            {
              v229 = 32 - __clz(~(-1 << -__clz(v228)));
            }

            v230 = (v69 >> 3) - 1;
            if (v68)
            {
              v231 = 0;
              if (v229)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v231 = 32 - __clz(~(-1 << -__clz(v230)));
              if (v231 | v229)
              {
LABEL_225:
                v232 = 0;
                v233 = 0;
                v234 = v33 & v228;
                v235 = v16 & v230;
                v236 = v231 != 0;
                v237 = v229 != 0;
                v238 = 1;
                do
                {
                  --v231;
                  if (v236)
                  {
                    v233 |= (v238 & v235) << v232++;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  --v229;
                  if (v237)
                  {
                    v233 |= (v238 & v234) << v232++;
                  }

                  else
                  {
                    v229 = 0;
                  }

                  v238 *= 2;
                  --v232;
                  v237 = v229 != 0;
                  v236 = v231 != 0;
                }

                while (v229 | v231);
                v239 = v233 << 9;
                goto LABEL_237;
              }
            }

            v239 = 0;
LABEL_237:
            v52 = v239 + ((v37 / v65 + v261 / v69 * ((v65 + v241) / v65)) << 14);
            goto LABEL_55;
          }

          if (v254)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v253.i8[0];
            v48 = v253.i8[4];
            v50 = v254.i32[0];
            v51 = v254.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v33) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v257)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v260 + 4 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v265 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v264;
            block[5] = v70;
            v274 = v42;
            v275 = v265;
            v270 = v252;
            v271 = v39 - v37;
            block[6] = v71;
            v268 = v72;
            v24 = a11;
            v269 = a11;
            v272 = v251;
            v273 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v264 + 8) + 16552), block);
              v35 = a7;
              v15 = v264;
LABEL_145:
              v162 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v171 = *(v70 + 1);
              v172 = (v70 + 32);
              v318 = vld2q_f64(v172);
              v173 = vzip2q_s64(*v70, v171);
              v277 = vzip1q_s64(*v70, v171);
              v281 = v173;
              v285 = v318.val[0];
              v289 = v318.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v170 = vld1q_dup_s16(v70);
              v277 = v170;
              v281 = v170;
              v285 = v170;
              v289 = v170;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 64, v70, v80);
            }

            else
            {
              v81 = 0;
              v277 = 0uLL;
              v281 = 0uLL;
              v285 = 0uLL;
              v289 = 0uLL;
            }

            v174 = &v70[v81];
            v175 = v71[1];
            if (v175 == 63)
            {
              v178 = *(v174 + 16);
              v179 = (v174 + 32);
              v319 = vld2q_f64(v179);
              v180 = vzip2q_s64(*v174, v178);
              v278 = vzip1q_s64(*v174, v178);
              v282 = v180;
              v286 = v319.val[0];
              v290 = v319.val[1];
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v177 = vld1q_dup_s16(v174);
              v278 = v177;
              v282 = v177;
              v286 = v177;
              v290 = v177;
              v176 = 2;
            }

            else if (v71[1])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v174, v175);
            }

            else
            {
              v176 = 0;
              v278 = 0uLL;
              v282 = 0uLL;
              v286 = 0uLL;
              v290 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[2];
            if (v182 == 63)
            {
              v185 = *(v181 + 16);
              v186 = (v181 + 32);
              v320 = vld2q_f64(v186);
              v187 = vzip2q_s64(*v181, v185);
              v293 = vzip1q_s64(*v181, v185);
              v297 = v187;
              v301 = v320.val[0];
              v305 = v320.val[1];
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v184 = vld1q_dup_s16(v181);
              v293 = v184;
              v297 = v184;
              v301 = v184;
              v305 = v184;
              v183 = 2;
            }

            else if (v71[2])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 64, v181, v182);
            }

            else
            {
              v183 = 0;
              v293 = 0uLL;
              v297 = 0uLL;
              v301 = 0uLL;
              v305 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[3];
            if (v189 == 63)
            {
              v192 = *(v188 + 16);
              v193 = (v188 + 32);
              v321 = vld2q_f64(v193);
              v194 = vzip2q_s64(*v188, v192);
              v294 = vzip1q_s64(*v188, v192);
              v298 = v194;
              v302 = v321.val[0];
              v306 = v321.val[1];
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v191 = vld1q_dup_s16(v188);
              v294 = v191;
              v298 = v191;
              v302 = v191;
              v306 = v191;
              v190 = 2;
            }

            else if (v71[3])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 64, v188, v189);
            }

            else
            {
              v190 = 0;
              v294 = 0uLL;
              v298 = 0uLL;
              v302 = 0uLL;
              v306 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[4];
            if (v196 == 63)
            {
              v199 = *(v195 + 16);
              v200 = (v195 + 32);
              v322 = vld2q_f64(v200);
              v201 = vzip2q_s64(*v195, v199);
              v279 = vzip1q_s64(*v195, v199);
              v283 = v201;
              v287 = v322.val[0];
              v291 = v322.val[1];
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v198 = vld1q_dup_s16(v195);
              v279 = v198;
              v283 = v198;
              v287 = v198;
              v291 = v198;
              v197 = 2;
            }

            else if (v71[4])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 64, v195, v196);
            }

            else
            {
              v197 = 0;
              v279 = 0uLL;
              v283 = 0uLL;
              v287 = 0uLL;
              v291 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[5];
            if (v203 == 63)
            {
              v206 = *(v202 + 16);
              v207 = (v202 + 32);
              v323 = vld2q_f64(v207);
              v208 = vzip2q_s64(*v202, v206);
              v280 = vzip1q_s64(*v202, v206);
              v284 = v208;
              v288 = v323.val[0];
              v292 = v323.val[1];
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v205 = vld1q_dup_s16(v202);
              v280 = v205;
              v284 = v205;
              v288 = v205;
              v292 = v205;
              v204 = 2;
            }

            else if (v71[5])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 64, v202, v203);
            }

            else
            {
              v204 = 0;
              v280 = 0uLL;
              v284 = 0uLL;
              v288 = 0uLL;
              v292 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[6];
            if (v210 == 63)
            {
              v213 = *(v209 + 16);
              v214 = (v209 + 32);
              v324 = vld2q_f64(v214);
              v215 = vzip2q_s64(*v209, v213);
              v295 = vzip1q_s64(*v209, v213);
              v299 = v215;
              v303 = v324.val[0];
              v307 = v324.val[1];
              v211 = 64;
            }

            else if (v210 == 1)
            {
              v212 = vld1q_dup_s16(v209);
              v295 = v212;
              v299 = v212;
              v303 = v212;
              v307 = v212;
              v211 = 2;
            }

            else if (v71[6])
            {
              v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 64, v209, v210);
            }

            else
            {
              v211 = 0;
              v295 = 0uLL;
              v299 = 0uLL;
              v303 = 0uLL;
              v307 = 0uLL;
            }

            v216 = v209 + v211;
            v217 = v71[7];
            if (v217 == 63)
            {
              v219 = *(v216 + 16);
              v220 = (v216 + 32);
              v325 = vld2q_f64(v220);
              v221 = vzip2q_s64(*v216, v219);
              v296 = vzip1q_s64(*v216, v219);
              v300 = v221;
              v304 = v325.val[0];
              v308 = v325.val[1];
              v15 = v264;
              v162 = v33 + 1;
            }

            else
            {
              v15 = v264;
              v162 = v33 + 1;
              if (v217 == 1)
              {
                v218 = vld1q_dup_s16(v216);
                v296 = v218;
                v300 = v218;
                v304 = v218;
                v308 = v218;
              }

              else if (v217)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 64, v216, v217);
              }

              else
              {
                v296 = 0uLL;
                v300 = 0uLL;
                v304 = 0uLL;
                v308 = 0uLL;
              }
            }

            v222 = v272;
            if (v272)
            {
              v223 = 0;
              v224 = &v277.i8[64 * v270 + 4 * v271];
              v225 = v273;
              do
              {
                if (v225)
                {
                  v226 = 0;
                  v227 = &v268->i8[v269 * v223];
                  do
                  {
                    v227[v226] = v224[v226];
                    ++v226;
                    v225 = v273;
                  }

                  while (4 * v273 > v226);
                  v222 = v272;
                }

                ++v223;
                v224 += 64;
              }

              while (v223 < v222);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = (v70 + 32);
              v310 = vld2q_f64(v83);
              v84 = *v70;
              v85 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v84, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v86 = &v72->i8[v247];
              *v86 = v310.val[0];
              *(v86 + a11) = v310.val[1];
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v247);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v87 = &v70[v76];
            v88 = v72 + 1;
            v89 = v71[1];
            if (v89 == 63)
            {
              v95 = (v87 + 32);
              v311 = vld2q_f64(v95);
              v96 = *v87;
              v97 = *(v87 + 16);
              *v88 = vzip1q_s64(*v87, v97);
              *(v88 + v24) = vzip2q_s64(v96, v97);
              v98 = &v88->i8[v74];
              *v98 = v311.val[0];
              *(v98 + v24) = v311.val[1];
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v94 = vld1q_dup_s16(v87);
              *v88 = v94;
              *(v88 + v24) = v94;
              *(v88 + v74) = v94;
              *(v88 + v75) = v94;
              v90 = 2;
            }

            else if (v71[1])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, v24, v87, v89);
            }

            else
            {
              v90 = 0;
              v88->i64[0] = 0;
              v72[1].i64[1] = 0;
              v91 = (v88->i64 + v24);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v88->i64 + v74);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v88->i64 + v75);
              *v93 = 0;
              v93[1] = 0;
            }

            v99 = v87 + v90;
            v100 = (v72 + v248);
            v101 = v71[2];
            if (v101 == 63)
            {
              v107 = (v99 + 32);
              v312 = vld2q_f64(v107);
              v108 = *v99;
              v109 = *(v99 + 16);
              *v100 = vzip1q_s64(*v99, v109);
              *(v100 + v24) = vzip2q_s64(v108, v109);
              v110 = &v100->i8[v74];
              *v110 = v312.val[0];
              *(v110 + v24) = v312.val[1];
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v106 = vld1q_dup_s16(v99);
              *v100 = v106;
              *(v100 + v24) = v106;
              *(v100 + v74) = v106;
              *(v100 + v75) = v106;
              v102 = 2;
            }

            else if (v71[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v248), v24, v99, v101);
            }

            else
            {
              v102 = 0;
              v100->i64[0] = 0;
              v100->i64[1] = 0;
              v103 = (v100->i64 + v24);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v100->i64 + v74);
              *v104 = 0;
              v104[1] = 0;
              v105 = (v100->i64 + v75);
              *v105 = 0;
              v105[1] = 0;
            }

            v111 = v99 + v102;
            v112 = v100 + 1;
            v113 = v71[3];
            if (v113 == 63)
            {
              v119 = (v111 + 32);
              v313 = vld2q_f64(v119);
              v120 = *v111;
              v121 = *(v111 + 16);
              *v112 = vzip1q_s64(*v111, v121);
              *(v112 + v24) = vzip2q_s64(v120, v121);
              v122 = &v112->i8[v74];
              *v122 = v313.val[0];
              *(v122 + v24) = v313.val[1];
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v118 = vld1q_dup_s16(v111);
              *v112 = v118;
              *(v112 + v24) = v118;
              *(v112 + v74) = v118;
              *(v112 + v75) = v118;
              v114 = 2;
            }

            else if (v71[3])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v24, v111, v113);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v100[1].i64[1] = 0;
              v115 = (v112->i64 + v24);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v74);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v75);
              *v117 = 0;
              v117[1] = 0;
            }

            v123 = v111 + v114;
            v124 = v72 + 2;
            v125 = v71[4];
            if (v125 == 63)
            {
              v131 = (v123 + 32);
              v314 = vld2q_f64(v131);
              v132 = *v123;
              v133 = *(v123 + 16);
              *v124 = vzip1q_s64(*v123, v133);
              *(v124 + v24) = vzip2q_s64(v132, v133);
              v134 = &v124->i8[v74];
              *v134 = v314.val[0];
              *(v134 + v24) = v314.val[1];
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v130 = vld1q_dup_s16(v123);
              *v124 = v130;
              *(v124 + v24) = v130;
              *(v124 + v74) = v130;
              *(v124 + v75) = v130;
              v126 = 2;
            }

            else if (v71[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v124, v24, v123, v125);
            }

            else
            {
              v126 = 0;
              v124->i64[0] = 0;
              v72[2].i64[1] = 0;
              v127 = (v124->i64 + v24);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v124->i64 + v74);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v124->i64 + v75);
              *v129 = 0;
              v129[1] = 0;
            }

            v135 = v123 + v126;
            v136 = v72 + 3;
            v137 = v71[5];
            if (v137 == 63)
            {
              v143 = (v135 + 32);
              v315 = vld2q_f64(v143);
              v144 = *v135;
              v145 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v145);
              *(v136 + v24) = vzip2q_s64(v144, v145);
              v146 = &v136->i8[v74];
              *v146 = v315.val[0];
              *(v146 + v24) = v315.val[1];
              v138 = 64;
              v35 = a7;
            }

            else
            {
              v35 = a7;
              if (v137 == 1)
              {
                v142 = vld1q_dup_s16(v135);
                *v136 = v142;
                *(v136 + v24) = v142;
                *(v136 + v74) = v142;
                *(v136 + v75) = v142;
                v138 = 2;
              }

              else if (v71[5])
              {
                v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v24, v135, v137);
              }

              else
              {
                v138 = 0;
                v136->i64[0] = 0;
                v136->i64[1] = 0;
                v139 = (v136->i64 + v24);
                *v139 = 0;
                v139[1] = 0;
                v140 = (v136->i64 + v74);
                *v140 = 0;
                v140[1] = 0;
                v141 = (v136->i64 + v75);
                *v141 = 0;
                v141[1] = 0;
              }
            }

            v147 = v135 + v138;
            v148 = v100 + 2;
            v149 = v71[6];
            if (v149 == 63)
            {
              v155 = (v147 + 32);
              v316 = vld2q_f64(v155);
              v156 = *v147;
              v157 = *(v147 + 16);
              *v148 = vzip1q_s64(*v147, v157);
              *(v148 + v24) = vzip2q_s64(v156, v157);
              v158 = &v148->i8[v74];
              *v158 = v316.val[0];
              *(v158 + v24) = v316.val[1];
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v154 = vld1q_dup_s16(v147);
              *v148 = v154;
              *(v148 + v24) = v154;
              *(v148 + v74) = v154;
              *(v148 + v75) = v154;
              v150 = 2;
            }

            else if (v71[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v24, v147, v149);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v100[2].i64[1] = 0;
              v151 = (v148->i64 + v24);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v74);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v75);
              *v153 = 0;
              v153[1] = 0;
            }

            v159 = v147 + v150;
            v160 = v100 + 3;
            v161 = v71[7];
            if (v161 == 63)
            {
              v166 = (v159 + 32);
              v317 = vld2q_f64(v166);
              v167 = *v159;
              v168 = *(v159 + 16);
              *v160 = vzip1q_s64(*v159, v168);
              *(v160 + v24) = vzip2q_s64(v167, v168);
              v169 = &v160->i8[v74];
              *v169 = v317.val[0];
              *(v169 + v24) = v317.val[1];
              v15 = v264;
              goto LABEL_145;
            }

            v15 = v264;
            v162 = v33 + 1;
            if (v161 == 1)
            {
              v36 = vld1q_dup_s16(v159);
              *v160 = v36;
              *(v160 + v24) = v36;
              *(v160 + v74) = v36;
              *(v160 + v75) = v36;
            }

            else if (v161)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v24, v159, v161);
            }

            else
            {
              v160->i64[0] = 0;
              v100[3].i64[1] = 0;
              v163 = (v160->i64 + v24);
              *v163 = 0;
              v163[1] = 0;
              v164 = (v160->i64 + v74);
              *v164 = 0;
              v164[1] = 0;
              v165 = (v160->i64 + v75);
              *v165 = 0;
              v165[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v255 >> 4;
          v33 = v162;
        }

        while (!v20);
        v20 = v16++ == v246;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v313 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v267 = a8;
  v248 = a8 + a10 - 1;
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
  v247 = v248 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v262 = v23;
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
      v261 = 0;
LABEL_32:
      v258 = v25 - 4;
      v251 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v245 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v261 = v30 >= v24;
    goto LABEL_32;
  }

  v261 = 0;
  v245 = 0;
  v251 = 0;
  v258 = 0;
LABEL_33:
  if (v17 <= v247)
  {
    v260 = a7 + a9 - 1;
    if (a7 >> 4 <= v260 >> 4)
    {
      v32 = a11;
      v270 = v18 >> 4;
      v254 = v18 & 0xF;
      v259 = (v18 & 0xF) + 1;
      v243 = v19 & 7;
      v244 = v19 >> 3;
      v253 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v250 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v249 = v34;
      v268 = v15;
      v252 = 2 * a11;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v267)
        {
          v36 = v267;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v248 < v35)
        {
          v35 = v248;
        }

        v257 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v243;
        v256 = v38;
        v40 = v38 != 8;
        v41 = a7 >> 4;
        v42 = v243 + 1;
        if (v17 != v244)
        {
          v42 = 8;
        }

        v269 = v42;
        if (v17 != v244)
        {
          v39 = v40;
        }

        v255 = v39;
        v43 = v17 & ~(-1 << v251);
        v265 = a2 + (v36 - v267) * v32;
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

          if (v260 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v270)
          {
            v51 = v259;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v17 >= v267 && v46 >= v44)
          {
            v53 = v49 != v254;
            if (v41 != v270)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v255;
          }

          if (v261)
          {
            if (v258 | v251)
            {
              v54 = 0;
              v55 = 0;
              v56 = v258 != 0;
              v57 = 1;
              v59 = v251 != 0;
              v58 = v251;
              v60 = v258;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v43 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v41 & ~(-1 << v258) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v258) + (v17 >> v251) * v245);
          }

          else if (v250)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v249.i8[0];
            v65 = v249.i8[4];
            v67 = v250.i32[0];
            v68 = v250.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v41) << v62++;
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
          if (v262)
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
          v87 = (v265 + 4 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v269 > 7)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = (v82 + 32);
              v314 = vld2q_f64(v98);
              v99 = *v82;
              v100 = *(v82 + 1);
              *v87 = vzip1q_s64(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vzip2q_s64(v99, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v101 = &v87->i8[v252];
              *v101 = v314.val[0];
              *(v101 + a11) = v314.val[1];
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v252);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v102 = &v82[v91];
            v103 = v87 + 1;
            v104 = v86[1];
            if (v104 == 63)
            {
              v110 = (v102 + 32);
              v315 = vld2q_f64(v110);
              v111 = *v102;
              v112 = *(v102 + 16);
              *v103 = vzip1q_s64(*v102, v112);
              *(v103 + v32) = vzip2q_s64(v111, v112);
              v113 = &v103->i8[v89];
              *v113 = v315.val[0];
              *(v113 + v32) = v315.val[1];
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v109 = vld1q_dup_s16(v102);
              *v103 = v109;
              *(v103 + v32) = v109;
              *(v103 + v89) = v109;
              *(v103 + v90) = v109;
              v105 = 2;
            }

            else if (v86[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, v32, v102, v104);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v87[1].i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v89);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v90);
              *v108 = 0;
              v108[1] = 0;
            }

            v114 = v102 + v105;
            v115 = (v87 + v253);
            v116 = v86[2];
            if (v116 == 63)
            {
              v122 = (v114 + 32);
              v316 = vld2q_f64(v122);
              v123 = *v114;
              v124 = *(v114 + 16);
              *v115 = vzip1q_s64(*v114, v124);
              *(v115 + v32) = vzip2q_s64(v123, v124);
              v125 = &v115->i8[v89];
              *v125 = v316.val[0];
              *(v125 + v32) = v316.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v32) = v121;
              *(v115 + v89) = v121;
              *(v115 + v90) = v121;
              v117 = 2;
            }

            else if (v86[2])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v253), v32, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v115->i64[1] = 0;
              v118 = (v115->i64 + v32);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v89);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v90);
              *v120 = 0;
              v120[1] = 0;
            }

            v126 = v114 + v117;
            v127 = v115 + 1;
            v128 = v86[3];
            if (v128 == 63)
            {
              v134 = (v126 + 32);
              v317 = vld2q_f64(v134);
              v135 = *v126;
              v136 = *(v126 + 16);
              *v127 = vzip1q_s64(*v126, v136);
              *(v127 + v32) = vzip2q_s64(v135, v136);
              v137 = &v127->i8[v89];
              *v137 = v317.val[0];
              *(v137 + v32) = v317.val[1];
              v129 = 64;
            }

            else if (v128 == 1)
            {
              v133 = vld1q_dup_s16(v126);
              *v127 = v133;
              *(v127 + v32) = v133;
              *(v127 + v89) = v133;
              *(v127 + v90) = v133;
              v129 = 2;
            }

            else if (v86[3])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, v32, v126, v128);
            }

            else
            {
              v129 = 0;
              v127->i64[0] = 0;
              v115[1].i64[1] = 0;
              v130 = (v127->i64 + v32);
              *v130 = 0;
              v130[1] = 0;
              v131 = (v127->i64 + v89);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v127->i64 + v90);
              *v132 = 0;
              v132[1] = 0;
            }

            v138 = v126 + v129;
            v139 = v87 + 2;
            v140 = v86[4];
            if (v140 == 63)
            {
              v146 = (v138 + 32);
              v318 = vld2q_f64(v146);
              v147 = *v138;
              v148 = *(v138 + 16);
              *v139 = vzip1q_s64(*v138, v148);
              *(v139 + v32) = vzip2q_s64(v147, v148);
              v149 = &v139->i8[v89];
              *v149 = v318.val[0];
              *(v149 + v32) = v318.val[1];
              v141 = 64;
            }

            else if (v140 == 1)
            {
              v145 = vld1q_dup_s16(v138);
              *v139 = v145;
              *(v139 + v32) = v145;
              *(v139 + v89) = v145;
              *(v139 + v90) = v145;
              v141 = 2;
            }

            else if (v86[4])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, v32, v138, v140);
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v87[2].i64[1] = 0;
              v142 = (v139->i64 + v32);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v89);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v90);
              *v144 = 0;
              v144[1] = 0;
            }

            v150 = v138 + v141;
            v151 = v87 + 3;
            v152 = v86[5];
            if (v152 == 63)
            {
              v158 = (v150 + 32);
              v319 = vld2q_f64(v158);
              v159 = *v150;
              v160 = *(v150 + 16);
              *v151 = vzip1q_s64(*v150, v160);
              *(v151 + v32) = vzip2q_s64(v159, v160);
              v161 = &v151->i8[v89];
              *v161 = v319.val[0];
              *(v161 + v32) = v319.val[1];
              v153 = 64;
            }

            else if (v152 == 1)
            {
              v157 = vld1q_dup_s16(v150);
              *v151 = v157;
              *(v151 + v32) = v157;
              *(v151 + v89) = v157;
              *(v151 + v90) = v157;
              v153 = 2;
            }

            else if (v86[5])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, v32, v150, v152);
            }

            else
            {
              v153 = 0;
              v151->i64[0] = 0;
              v87[3].i64[1] = 0;
              v154 = (v151->i64 + v32);
              *v154 = 0;
              v154[1] = 0;
              v155 = (v151->i64 + v89);
              *v155 = 0;
              v155[1] = 0;
              v156 = (v151->i64 + v90);
              *v156 = 0;
              v156[1] = 0;
            }

            v162 = v150 + v153;
            v163 = v115 + 2;
            v164 = v86[6];
            if (v164 == 63)
            {
              v170 = (v162 + 32);
              v320 = vld2q_f64(v170);
              v171 = *v162;
              v172 = *(v162 + 16);
              *v163 = vzip1q_s64(*v162, v172);
              *(v163 + v32) = vzip2q_s64(v171, v172);
              v173 = &v163->i8[v89];
              *v173 = v320.val[0];
              *(v173 + v32) = v320.val[1];
              v165 = 64;
            }

            else if (v164 == 1)
            {
              v169 = vld1q_dup_s16(v162);
              *v163 = v169;
              *(v163 + v32) = v169;
              *(v163 + v89) = v169;
              *(v163 + v90) = v169;
              v165 = 2;
            }

            else if (v86[6])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v32, v150 + v153, v164);
            }

            else
            {
              v165 = 0;
              v163->i64[0] = 0;
              v115[2].i64[1] = 0;
              v166 = (v163->i64 + v32);
              *v166 = 0;
              v166[1] = 0;
              v167 = (v163->i64 + v89);
              *v167 = 0;
              v167[1] = 0;
              v168 = (v163->i64 + v90);
              *v168 = 0;
              v168[1] = 0;
            }

            v174 = v162 + v165;
            v175 = v115 + 3;
            v176 = v86[7];
            if (v176 == 63)
            {
              v181 = (v174 + 32);
              v321 = vld2q_f64(v181);
              v182 = *v174;
              v183 = *(v174 + 16);
              *v175 = vzip1q_s64(*v174, v183);
              *(v175 + v32) = vzip2q_s64(v182, v183);
              v184 = &v175->i8[v89];
              *v184 = v321.val[0];
              *(v184 + v32) = v321.val[1];
              v44 = a7;
              v15 = v268;
            }

            else
            {
              v44 = a7;
              v15 = v268;
              if (v176 == 1)
              {
                v180 = vld1q_dup_s16(v174);
                *v175 = v180;
                *(v175 + v32) = v180;
                *(v175 + v89) = v180;
                *(v175 + v90) = v180;
              }

              else if (v176)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v32, v174, v176);
              }

              else
              {
                v175->i64[0] = 0;
                v115[3].i64[1] = 0;
                v177 = (v175->i64 + v32);
                *v177 = 0;
                v177[1] = 0;
                v178 = (v175->i64 + v89);
                *v178 = 0;
                v178[1] = 0;
                v179 = (v175->i64 + v90);
                *v179 = 0;
                v179[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v268;
          block[5] = v82;
          v278 = v51;
          v279 = v269;
          v274 = v257;
          v275 = v48 - v46;
          block[6] = v86;
          v272 = v87;
          v32 = a11;
          v273 = a11;
          v276 = v256;
          v277 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v268 + 8) + 16552), block);
            v44 = a7;
            v15 = v268;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v186 = *(v82 + 1);
            v187 = (v82 + 32);
            v322 = vld2q_f64(v187);
            v188 = vzip2q_s64(*v82, v186);
            v281 = vzip1q_s64(*v82, v186);
            v285 = v188;
            v289 = v322.val[0];
            v293 = v322.val[1];
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v185 = vld1q_dup_s16(v82);
            v281 = v185;
            v285 = v185;
            v289 = v185;
            v293 = v185;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v281, 64, v82, v95);
          }

          else
          {
            v96 = 0;
            v281 = 0uLL;
            v285 = 0uLL;
            v289 = 0uLL;
            v293 = 0uLL;
          }

          v189 = &v82[v96];
          v190 = v86[1];
          if (v190 == 63)
          {
            v193 = *(v189 + 16);
            v194 = (v189 + 32);
            v323 = vld2q_f64(v194);
            v195 = vzip2q_s64(*v189, v193);
            v282 = vzip1q_s64(*v189, v193);
            v286 = v195;
            v290 = v323.val[0];
            v294 = v323.val[1];
            v191 = 64;
          }

          else if (v190 == 1)
          {
            v192 = vld1q_dup_s16(v189);
            v282 = v192;
            v286 = v192;
            v290 = v192;
            v294 = v192;
            v191 = 2;
          }

          else if (v86[1])
          {
            v191 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 64, v189, v190);
          }

          else
          {
            v191 = 0;
            v282 = 0uLL;
            v286 = 0uLL;
            v290 = 0uLL;
            v294 = 0uLL;
          }

          v196 = v189 + v191;
          v197 = v86[2];
          if (v197 == 63)
          {
            v200 = *(v196 + 16);
            v201 = (v196 + 32);
            v324 = vld2q_f64(v201);
            v202 = vzip2q_s64(*v196, v200);
            v297 = vzip1q_s64(*v196, v200);
            v301 = v202;
            v305 = v324.val[0];
            v309 = v324.val[1];
            v198 = 64;
          }

          else if (v197 == 1)
          {
            v199 = vld1q_dup_s16(v196);
            v297 = v199;
            v301 = v199;
            v305 = v199;
            v309 = v199;
            v198 = 2;
          }

          else if (v86[2])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v297, 64, v196, v197);
          }

          else
          {
            v198 = 0;
            v297 = 0uLL;
            v301 = 0uLL;
            v305 = 0uLL;
            v309 = 0uLL;
          }

          v203 = v196 + v198;
          v204 = v86[3];
          if (v204 == 63)
          {
            v207 = *(v203 + 16);
            v208 = (v203 + 32);
            v325 = vld2q_f64(v208);
            v209 = vzip2q_s64(*v203, v207);
            v298 = vzip1q_s64(*v203, v207);
            v302 = v209;
            v306 = v325.val[0];
            v310 = v325.val[1];
            v205 = 64;
          }

          else if (v204 == 1)
          {
            v206 = vld1q_dup_s16(v203);
            v298 = v206;
            v302 = v206;
            v306 = v206;
            v310 = v206;
            v205 = 2;
          }

          else if (v86[3])
          {
            v205 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 64, v203, v204);
          }

          else
          {
            v205 = 0;
            v298 = 0uLL;
            v302 = 0uLL;
            v306 = 0uLL;
            v310 = 0uLL;
          }

          v210 = v203 + v205;
          v211 = v86[4];
          if (v211 == 63)
          {
            v214 = *(v210 + 16);
            v215 = (v210 + 32);
            v326 = vld2q_f64(v215);
            v216 = vzip2q_s64(*v210, v214);
            v283 = vzip1q_s64(*v210, v214);
            v287 = v216;
            v291 = v326.val[0];
            v295 = v326.val[1];
            v212 = 64;
          }

          else if (v211 == 1)
          {
            v213 = vld1q_dup_s16(v210);
            v283 = v213;
            v287 = v213;
            v291 = v213;
            v295 = v213;
            v212 = 2;
          }

          else if (v86[4])
          {
            v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v283, 64, v210, v211);
          }

          else
          {
            v212 = 0;
            v283 = 0uLL;
            v287 = 0uLL;
            v291 = 0uLL;
            v295 = 0uLL;
          }

          v217 = v210 + v212;
          v218 = v86[5];
          if (v218 == 63)
          {
            v221 = *(v217 + 16);
            v222 = (v217 + 32);
            v327 = vld2q_f64(v222);
            v223 = vzip2q_s64(*v217, v221);
            v284 = vzip1q_s64(*v217, v221);
            v288 = v223;
            v292 = v327.val[0];
            v296 = v327.val[1];
            v219 = 64;
          }

          else if (v218 == 1)
          {
            v220 = vld1q_dup_s16(v217);
            v284 = v220;
            v288 = v220;
            v292 = v220;
            v296 = v220;
            v219 = 2;
          }

          else if (v86[5])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v217, v218);
          }

          else
          {
            v219 = 0;
            v284 = 0uLL;
            v288 = 0uLL;
            v292 = 0uLL;
            v296 = 0uLL;
          }

          v224 = v217 + v219;
          v225 = v86[6];
          if (v225 == 63)
          {
            v228 = *(v224 + 16);
            v229 = (v224 + 32);
            v328 = vld2q_f64(v229);
            v230 = vzip2q_s64(*v224, v228);
            v299 = vzip1q_s64(*v224, v228);
            v303 = v230;
            v307 = v328.val[0];
            v311 = v328.val[1];
            v226 = 64;
          }

          else if (v225 == 1)
          {
            v227 = vld1q_dup_s16(v224);
            v299 = v227;
            v303 = v227;
            v307 = v227;
            v311 = v227;
            v226 = 2;
          }

          else if (v86[6])
          {
            v226 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 64, v224, v225);
          }

          else
          {
            v226 = 0;
            v299 = 0uLL;
            v303 = 0uLL;
            v307 = 0uLL;
            v311 = 0uLL;
          }

          v231 = v224 + v226;
          v232 = v86[7];
          if (v232 == 63)
          {
            v234 = *(v231 + 16);
            v235 = (v231 + 32);
            v329 = vld2q_f64(v235);
            v236 = vzip2q_s64(*v231, v234);
            v300 = vzip1q_s64(*v231, v234);
            v304 = v236;
            v308 = v329.val[0];
            v312 = v329.val[1];
            v44 = a7;
            v15 = v268;
          }

          else
          {
            v44 = a7;
            v15 = v268;
            if (v232 == 1)
            {
              v233 = vld1q_dup_s16(v231);
              v300 = v233;
              v304 = v233;
              v308 = v233;
              v312 = v233;
            }

            else if (v232)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v231, v232);
            }

            else
            {
              v300 = 0uLL;
              v304 = 0uLL;
              v308 = 0uLL;
              v312 = 0uLL;
            }
          }

          v237 = v276;
          v45 = v41 + 1;
          if (v276)
          {
            v238 = 0;
            v239 = &v281.i8[64 * v274 + 4 * v275];
            v240 = v277;
            do
            {
              if (v240)
              {
                v241 = 0;
                v242 = &v272->i8[v273 * v238];
                do
                {
                  v242[v241] = v239[v241];
                  ++v241;
                  v240 = v277;
                }

                while (4 * v277 > v241);
                v237 = v276;
              }

              ++v238;
              v239 += 64;
            }

            while (v238 < v237);
          }

LABEL_50:
          v20 = v41 == v260 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v247;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v313 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v267 = a8;
  v248 = a8 + a10 - 1;
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
  v247 = v248 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v262 = v23;
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
      v261 = 0;
LABEL_32:
      v258 = v25 - 4;
      v251 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v245 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v261 = v30 >= v24;
    goto LABEL_32;
  }

  v261 = 0;
  v245 = 0;
  v251 = 0;
  v258 = 0;
LABEL_33:
  if (v17 <= v247)
  {
    v260 = a7 + a9 - 1;
    if (a7 >> 4 <= v260 >> 4)
    {
      v32 = a11;
      v270 = v18 >> 4;
      v254 = v18 & 0xF;
      v259 = (v18 & 0xF) + 1;
      v243 = v19 & 7;
      v244 = v19 >> 3;
      v253 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v250 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v249 = v34;
      v268 = v15;
      v252 = 2 * a11;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v267)
        {
          v36 = v267;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v248 < v35)
        {
          v35 = v248;
        }

        v257 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v243;
        v256 = v38;
        v40 = v38 != 8;
        v41 = a7 >> 4;
        v42 = v243 + 1;
        if (v17 != v244)
        {
          v42 = 8;
        }

        v269 = v42;
        if (v17 != v244)
        {
          v39 = v40;
        }

        v255 = v39;
        v43 = v17 & ~(-1 << v251);
        v265 = a2 + (v36 - v267) * v32;
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

          if (v260 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v270)
          {
            v51 = v259;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v17 >= v267 && v46 >= v44)
          {
            v53 = v49 != v254;
            if (v41 != v270)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v255;
          }

          if (v261)
          {
            if (v258 | v251)
            {
              v54 = 0;
              v55 = 0;
              v56 = v258 != 0;
              v57 = 1;
              v59 = v251 != 0;
              v58 = v251;
              v60 = v258;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v43 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v41 & ~(-1 << v258) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v258) + (v17 >> v251) * v245);
          }

          else if (v250)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v249.i8[0];
            v65 = v249.i8[4];
            v67 = v250.i32[0];
            v68 = v250.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v41) << v62++;
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
          if (v262)
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
          v87 = (v265 + 4 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 0x10u)) && v269 > 7)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v98 = (v82 + 32);
              v314 = vld2q_f64(v98);
              v99 = *v82;
              v100 = *(v82 + 1);
              *v87 = vzip1q_s64(*v82, v100);
              v32 = a11;
              *(v87 + a11) = vzip2q_s64(v99, v100);
              v90 = 3 * a11;
              v89 = 2 * a11;
              v101 = &v87->i8[v252];
              *v101 = v314.val[0];
              *(v101 + a11) = v314.val[1];
              v91 = 64;
            }

            else
            {
              v32 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 1)
              {
                v97 = vld1q_dup_s16(v82);
                *v87 = v97;
                *(v87 + a11) = v97;
                *(v87 + 2 * a11) = v97;
                *(v87 + 3 * a11) = v97;
                v91 = 2;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                v87->i64[0] = 0;
                v87->i64[1] = 0;
                v92 = (v87->i64 + a11);
                *v92 = 0;
                v92[1] = 0;
                v93 = (v87->i64 + v252);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v87->i64 + 3 * a11);
                *v94 = 0;
                v94[1] = 0;
              }
            }

            v102 = &v82[v91];
            v103 = v87 + 1;
            v104 = v86[1];
            if (v104 == 63)
            {
              v110 = (v102 + 32);
              v315 = vld2q_f64(v110);
              v111 = *v102;
              v112 = *(v102 + 16);
              *v103 = vzip1q_s64(*v102, v112);
              *(v103 + v32) = vzip2q_s64(v111, v112);
              v113 = &v103->i8[v89];
              *v113 = v315.val[0];
              *(v113 + v32) = v315.val[1];
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v109 = vld1q_dup_s16(v102);
              *v103 = v109;
              *(v103 + v32) = v109;
              *(v103 + v89) = v109;
              *(v103 + v90) = v109;
              v105 = 2;
            }

            else if (v86[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, v32, v102, v104);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v87[1].i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v89);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v90);
              *v108 = 0;
              v108[1] = 0;
            }

            v114 = v102 + v105;
            v115 = (v87 + v253);
            v116 = v86[2];
            if (v116 == 63)
            {
              v122 = (v114 + 32);
              v316 = vld2q_f64(v122);
              v123 = *v114;
              v124 = *(v114 + 16);
              *v115 = vzip1q_s64(*v114, v124);
              *(v115 + v32) = vzip2q_s64(v123, v124);
              v125 = &v115->i8[v89];
              *v125 = v316.val[0];
              *(v125 + v32) = v316.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v121 = vld1q_dup_s16(v114);
              *v115 = v121;
              *(v115 + v32) = v121;
              *(v115 + v89) = v121;
              *(v115 + v90) = v121;
              v117 = 2;
            }

            else if (v86[2])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v253), v32, v114, v116);
            }

            else
            {
              v117 = 0;
              v115->i64[0] = 0;
              v115->i64[1] = 0;
              v118 = (v115->i64 + v32);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v115->i64 + v89);
              *v119 = 0;
              v119[1] = 0;
              v120 = (v115->i64 + v90);
              *v120 = 0;
              v120[1] = 0;
            }

            v126 = v114 + v117;
            v127 = v115 + 1;
            v128 = v86[3];
            if (v128 == 63)
            {
              v134 = (v126 + 32);
              v317 = vld2q_f64(v134);
              v135 = *v126;
              v136 = *(v126 + 16);
              *v127 = vzip1q_s64(*v126, v136);
              *(v127 + v32) = vzip2q_s64(v135, v136);
              v137 = &v127->i8[v89];
              *v137 = v317.val[0];
              *(v137 + v32) = v317.val[1];
              v129 = 64;
            }

            else if (v128 == 1)
            {
              v133 = vld1q_dup_s16(v126);
              *v127 = v133;
              *(v127 + v32) = v133;
              *(v127 + v89) = v133;
              *(v127 + v90) = v133;
              v129 = 2;
            }

            else if (v86[3])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, v32, v126, v128);
            }

            else
            {
              v129 = 0;
              v127->i64[0] = 0;
              v115[1].i64[1] = 0;
              v130 = (v127->i64 + v32);
              *v130 = 0;
              v130[1] = 0;
              v131 = (v127->i64 + v89);
              *v131 = 0;
              v131[1] = 0;
              v132 = (v127->i64 + v90);
              *v132 = 0;
              v132[1] = 0;
            }

            v138 = v126 + v129;
            v139 = v87 + 2;
            v140 = v86[4];
            if (v140 == 63)
            {
              v146 = (v138 + 32);
              v318 = vld2q_f64(v146);
              v147 = *v138;
              v148 = *(v138 + 16);
              *v139 = vzip1q_s64(*v138, v148);
              *(v139 + v32) = vzip2q_s64(v147, v148);
              v149 = &v139->i8[v89];
              *v149 = v318.val[0];
              *(v149 + v32) = v318.val[1];
              v141 = 64;
            }

            else if (v140 == 1)
            {
              v145 = vld1q_dup_s16(v138);
              *v139 = v145;
              *(v139 + v32) = v145;
              *(v139 + v89) = v145;
              *(v139 + v90) = v145;
              v141 = 2;
            }

            else if (v86[4])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v139, v32, v138, v140);
            }

            else
            {
              v141 = 0;
              v139->i64[0] = 0;
              v87[2].i64[1] = 0;
              v142 = (v139->i64 + v32);
              *v142 = 0;
              v142[1] = 0;
              v143 = (v139->i64 + v89);
              *v143 = 0;
              v143[1] = 0;
              v144 = (v139->i64 + v90);
              *v144 = 0;
              v144[1] = 0;
            }

            v150 = v138 + v141;
            v151 = v87 + 3;
            v152 = v86[5];
            if (v152 == 63)
            {
              v158 = (v150 + 32);
              v319 = vld2q_f64(v158);
              v159 = *v150;
              v160 = *(v150 + 16);
              *v151 = vzip1q_s64(*v150, v160);
              *(v151 + v32) = vzip2q_s64(v159, v160);
              v161 = &v151->i8[v89];
              *v161 = v319.val[0];
              *(v161 + v32) = v319.val[1];
              v153 = 64;
            }

            else if (v152 == 1)
            {
              v157 = vld1q_dup_s16(v150);
              *v151 = v157;
              *(v151 + v32) = v157;
              *(v151 + v89) = v157;
              *(v151 + v90) = v157;
              v153 = 2;
            }

            else if (v86[5])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, v32, v150, v152);
            }

            else
            {
              v153 = 0;
              v151->i64[0] = 0;
              v87[3].i64[1] = 0;
              v154 = (v151->i64 + v32);
              *v154 = 0;
              v154[1] = 0;
              v155 = (v151->i64 + v89);
              *v155 = 0;
              v155[1] = 0;
              v156 = (v151->i64 + v90);
              *v156 = 0;
              v156[1] = 0;
            }

            v162 = v150 + v153;
            v163 = v115 + 2;
            v164 = v86[6];
            if (v164 == 63)
            {
              v170 = (v162 + 32);
              v320 = vld2q_f64(v170);
              v171 = *v162;
              v172 = *(v162 + 16);
              *v163 = vzip1q_s64(*v162, v172);
              *(v163 + v32) = vzip2q_s64(v171, v172);
              v173 = &v163->i8[v89];
              *v173 = v320.val[0];
              *(v173 + v32) = v320.val[1];
              v165 = 64;
            }

            else if (v164 == 1)
            {
              v169 = vld1q_dup_s16(v162);
              *v163 = v169;
              *(v163 + v32) = v169;
              *(v163 + v89) = v169;
              *(v163 + v90) = v169;
              v165 = 2;
            }

            else if (v86[6])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v32, v150 + v153, v164);
            }

            else
            {
              v165 = 0;
              v163->i64[0] = 0;
              v115[2].i64[1] = 0;
              v166 = (v163->i64 + v32);
              *v166 = 0;
              v166[1] = 0;
              v167 = (v163->i64 + v89);
              *v167 = 0;
              v167[1] = 0;
              v168 = (v163->i64 + v90);
              *v168 = 0;
              v168[1] = 0;
            }

            v174 = v162 + v165;
            v175 = v115 + 3;
            v176 = v86[7];
            if (v176 == 63)
            {
              v181 = (v174 + 32);
              v321 = vld2q_f64(v181);
              v182 = *v174;
              v183 = *(v174 + 16);
              *v175 = vzip1q_s64(*v174, v183);
              *(v175 + v32) = vzip2q_s64(v182, v183);
              v184 = &v175->i8[v89];
              *v184 = v321.val[0];
              *(v184 + v32) = v321.val[1];
              v44 = a7;
              v15 = v268;
            }

            else
            {
              v44 = a7;
              v15 = v268;
              if (v176 == 1)
              {
                v180 = vld1q_dup_s16(v174);
                *v175 = v180;
                *(v175 + v32) = v180;
                *(v175 + v89) = v180;
                *(v175 + v90) = v180;
              }

              else if (v176)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v32, v174, v176);
              }

              else
              {
                v175->i64[0] = 0;
                v115[3].i64[1] = 0;
                v177 = (v175->i64 + v32);
                *v177 = 0;
                v177[1] = 0;
                v178 = (v175->i64 + v89);
                *v178 = 0;
                v178[1] = 0;
                v179 = (v175->i64 + v90);
                *v179 = 0;
                v179[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v268;
          block[5] = v82;
          v278 = v51;
          v279 = v269;
          v274 = v257;
          v275 = v48 - v46;
          block[6] = v86;
          v272 = v87;
          v32 = a11;
          v273 = a11;
          v276 = v256;
          v277 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v268 + 8) + 16552), block);
            v44 = a7;
            v15 = v268;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v95 = *v86;
          if (v95 == 63)
          {
            v186 = *(v82 + 1);
            v187 = (v82 + 32);
            v322 = vld2q_f64(v187);
            v188 = vzip2q_s64(*v82, v186);
            v281 = vzip1q_s64(*v82, v186);
            v285 = v188;
            v289 = v322.val[0];
            v293 = v322.val[1];
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v185 = vld1q_dup_s16(v82);
            v281 = v185;
            v285 = v185;
            v289 = v185;
            v293 = v185;
            v96 = 2;
          }

          else if (*v86)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v281, 64, v82, v95);
          }

          else
          {
            v96 = 0;
            v281 = 0uLL;
            v285 = 0uLL;
            v289 = 0uLL;
            v293 = 0uLL;
          }

          v189 = &v82[v96];
          v190 = v86[1];
          if (v190 == 63)
          {
            v193 = *(v189 + 16);
            v194 = (v189 + 32);
            v323 = vld2q_f64(v194);
            v195 = vzip2q_s64(*v189, v193);
            v282 = vzip1q_s64(*v189, v193);
            v286 = v195;
            v290 = v323.val[0];
            v294 = v323.val[1];
            v191 = 64;
          }

          else if (v190 == 1)
          {
            v192 = vld1q_dup_s16(v189);
            v282 = v192;
            v286 = v192;
            v290 = v192;
            v294 = v192;
            v191 = 2;
          }

          else if (v86[1])
          {
            v191 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 64, v189, v190);
          }

          else
          {
            v191 = 0;
            v282 = 0uLL;
            v286 = 0uLL;
            v290 = 0uLL;
            v294 = 0uLL;
          }

          v196 = v189 + v191;
          v197 = v86[2];
          if (v197 == 63)
          {
            v200 = *(v196 + 16);
            v201 = (v196 + 32);
            v324 = vld2q_f64(v201);
            v202 = vzip2q_s64(*v196, v200);
            v297 = vzip1q_s64(*v196, v200);
            v301 = v202;
            v305 = v324.val[0];
            v309 = v324.val[1];
            v198 = 64;
          }

          else if (v197 == 1)
          {
            v199 = vld1q_dup_s16(v196);
            v297 = v199;
            v301 = v199;
            v305 = v199;
            v309 = v199;
            v198 = 2;
          }

          else if (v86[2])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v297, 64, v196, v197);
          }

          else
          {
            v198 = 0;
            v297 = 0uLL;
            v301 = 0uLL;
            v305 = 0uLL;
            v309 = 0uLL;
          }

          v203 = v196 + v198;
          v204 = v86[3];
          if (v204 == 63)
          {
            v207 = *(v203 + 16);
            v208 = (v203 + 32);
            v325 = vld2q_f64(v208);
            v209 = vzip2q_s64(*v203, v207);
            v298 = vzip1q_s64(*v203, v207);
            v302 = v209;
            v306 = v325.val[0];
            v310 = v325.val[1];
            v205 = 64;
          }

          else if (v204 == 1)
          {
            v206 = vld1q_dup_s16(v203);
            v298 = v206;
            v302 = v206;
            v306 = v206;
            v310 = v206;
            v205 = 2;
          }

          else if (v86[3])
          {
            v205 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v298, 64, v203, v204);
          }

          else
          {
            v205 = 0;
            v298 = 0uLL;
            v302 = 0uLL;
            v306 = 0uLL;
            v310 = 0uLL;
          }

          v210 = v203 + v205;
          v211 = v86[4];
          if (v211 == 63)
          {
            v214 = *(v210 + 16);
            v215 = (v210 + 32);
            v326 = vld2q_f64(v215);
            v216 = vzip2q_s64(*v210, v214);
            v283 = vzip1q_s64(*v210, v214);
            v287 = v216;
            v291 = v326.val[0];
            v295 = v326.val[1];
            v212 = 64;
          }

          else if (v211 == 1)
          {
            v213 = vld1q_dup_s16(v210);
            v283 = v213;
            v287 = v213;
            v291 = v213;
            v295 = v213;
            v212 = 2;
          }

          else if (v86[4])
          {
            v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v283, 64, v210, v211);
          }

          else
          {
            v212 = 0;
            v283 = 0uLL;
            v287 = 0uLL;
            v291 = 0uLL;
            v295 = 0uLL;
          }

          v217 = v210 + v212;
          v218 = v86[5];
          if (v218 == 63)
          {
            v221 = *(v217 + 16);
            v222 = (v217 + 32);
            v327 = vld2q_f64(v222);
            v223 = vzip2q_s64(*v217, v221);
            v284 = vzip1q_s64(*v217, v221);
            v288 = v223;
            v292 = v327.val[0];
            v296 = v327.val[1];
            v219 = 64;
          }

          else if (v218 == 1)
          {
            v220 = vld1q_dup_s16(v217);
            v284 = v220;
            v288 = v220;
            v292 = v220;
            v296 = v220;
            v219 = 2;
          }

          else if (v86[5])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v217, v218);
          }

          else
          {
            v219 = 0;
            v284 = 0uLL;
            v288 = 0uLL;
            v292 = 0uLL;
            v296 = 0uLL;
          }

          v224 = v217 + v219;
          v225 = v86[6];
          if (v225 == 63)
          {
            v228 = *(v224 + 16);
            v229 = (v224 + 32);
            v328 = vld2q_f64(v229);
            v230 = vzip2q_s64(*v224, v228);
            v299 = vzip1q_s64(*v224, v228);
            v303 = v230;
            v307 = v328.val[0];
            v311 = v328.val[1];
            v226 = 64;
          }

          else if (v225 == 1)
          {
            v227 = vld1q_dup_s16(v224);
            v299 = v227;
            v303 = v227;
            v307 = v227;
            v311 = v227;
            v226 = 2;
          }

          else if (v86[6])
          {
            v226 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v299, 64, v224, v225);
          }

          else
          {
            v226 = 0;
            v299 = 0uLL;
            v303 = 0uLL;
            v307 = 0uLL;
            v311 = 0uLL;
          }

          v231 = v224 + v226;
          v232 = v86[7];
          if (v232 == 63)
          {
            v234 = *(v231 + 16);
            v235 = (v231 + 32);
            v329 = vld2q_f64(v235);
            v236 = vzip2q_s64(*v231, v234);
            v300 = vzip1q_s64(*v231, v234);
            v304 = v236;
            v308 = v329.val[0];
            v312 = v329.val[1];
            v44 = a7;
            v15 = v268;
          }

          else
          {
            v44 = a7;
            v15 = v268;
            if (v232 == 1)
            {
              v233 = vld1q_dup_s16(v231);
              v300 = v233;
              v304 = v233;
              v308 = v233;
              v312 = v233;
            }

            else if (v232)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v231, v232);
            }

            else
            {
              v300 = 0uLL;
              v304 = 0uLL;
              v308 = 0uLL;
              v312 = 0uLL;
            }
          }

          v237 = v276;
          v45 = v41 + 1;
          if (v276)
          {
            v238 = 0;
            v239 = &v281.i8[64 * v274 + 4 * v275];
            v240 = v277;
            do
            {
              if (v240)
              {
                v241 = 0;
                v242 = &v272->i8[v273 * v238];
                do
                {
                  v242[v241] = v239[v241];
                  ++v241;
                  v240 = v277;
                }

                while (4 * v277 > v241);
                v237 = v276;
              }

              ++v238;
              v239 += 64;
            }

            while (v238 < v237);
          }

LABEL_50:
          v20 = v41 == v260 >> 4;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v247;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v16 = a8 >> 3;
  v244 = a8 + a10 - 1;
  v246 = v244 >> 3;
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
  v257 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v246)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v24 = a11;
      v266 = (a5 - 1) >> 4;
      v241 = a5 - 1;
      v249 = (a5 - 1) & 0xF;
      v242 = (a6 - 1) & 7;
      v243 = (a6 - 1) >> 3;
      v248 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v26 = vcgt_u32(v25, 0x1F0000000FLL);
      v254 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v26);
      v253 = v26;
      v240 = 8 * v18 * v17;
      v264 = v15;
      v247 = 2 * a11;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v262)
        {
          v28 = v262;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v244 < v27)
        {
          v27 = v244;
        }

        v261 = 8 * v16;
        v252 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v242;
        v251 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 4;
        v34 = v242 + 1;
        if (v16 != v243)
        {
          v34 = 8;
        }

        v265 = v34;
        if (v16 != v243)
        {
          v31 = v32;
        }

        v250 = v31;
        v260 = a2 + (v28 - v262) * v24;
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

          if (v255 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v266)
          {
            v42 = v249 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v261 >= v262 && v37 >= v35)
          {
            v44 = v40 != v249;
            if (v33 != v266)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v250;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v240 >> (*(v15 + 57) != 0);
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

            v228 = (v65 >> 4) - 1;
            if (v67)
            {
              v229 = 0;
            }

            else
            {
              v229 = 32 - __clz(~(-1 << -__clz(v228)));
            }

            v230 = (v69 >> 3) - 1;
            if (v68)
            {
              v231 = 0;
              if (v229)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v231 = 32 - __clz(~(-1 << -__clz(v230)));
              if (v231 | v229)
              {
LABEL_225:
                v232 = 0;
                v233 = 0;
                v234 = v33 & v228;
                v235 = v16 & v230;
                v236 = v231 != 0;
                v237 = v229 != 0;
                v238 = 1;
                do
                {
                  --v231;
                  if (v236)
                  {
                    v233 |= (v238 & v235) << v232++;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  --v229;
                  if (v237)
                  {
                    v233 |= (v238 & v234) << v232++;
                  }

                  else
                  {
                    v229 = 0;
                  }

                  v238 *= 2;
                  --v232;
                  v237 = v229 != 0;
                  v236 = v231 != 0;
                }

                while (v229 | v231);
                v239 = v233 << 9;
                goto LABEL_237;
              }
            }

            v239 = 0;
LABEL_237:
            v52 = v239 + ((v37 / v65 + v261 / v69 * ((v65 + v241) / v65)) << 14);
            goto LABEL_55;
          }

          if (v254)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v253.i8[0];
            v48 = v253.i8[4];
            v50 = v254.i32[0];
            v51 = v254.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v33) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v257)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v260 + 4 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v265 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v264;
            block[5] = v70;
            v274 = v42;
            v275 = v265;
            v270 = v252;
            v271 = v39 - v37;
            block[6] = v71;
            v268 = v72;
            v24 = a11;
            v269 = a11;
            v272 = v251;
            v273 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v264 + 8) + 16552), block);
              v35 = a7;
              v15 = v264;
LABEL_145:
              v162 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v171 = *(v70 + 1);
              v172 = (v70 + 32);
              v318 = vld2q_f64(v172);
              v173 = vzip2q_s64(*v70, v171);
              v277 = vzip1q_s64(*v70, v171);
              v281 = v173;
              v285 = v318.val[0];
              v289 = v318.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v170 = vld1q_dup_s16(v70);
              v277 = v170;
              v281 = v170;
              v285 = v170;
              v289 = v170;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 64, v70, v80);
            }

            else
            {
              v81 = 0;
              v277 = 0uLL;
              v281 = 0uLL;
              v285 = 0uLL;
              v289 = 0uLL;
            }

            v174 = &v70[v81];
            v175 = v71[1];
            if (v175 == 63)
            {
              v178 = *(v174 + 16);
              v179 = (v174 + 32);
              v319 = vld2q_f64(v179);
              v180 = vzip2q_s64(*v174, v178);
              v278 = vzip1q_s64(*v174, v178);
              v282 = v180;
              v286 = v319.val[0];
              v290 = v319.val[1];
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v177 = vld1q_dup_s16(v174);
              v278 = v177;
              v282 = v177;
              v286 = v177;
              v290 = v177;
              v176 = 2;
            }

            else if (v71[1])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v174, v175);
            }

            else
            {
              v176 = 0;
              v278 = 0uLL;
              v282 = 0uLL;
              v286 = 0uLL;
              v290 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[2];
            if (v182 == 63)
            {
              v185 = *(v181 + 16);
              v186 = (v181 + 32);
              v320 = vld2q_f64(v186);
              v187 = vzip2q_s64(*v181, v185);
              v293 = vzip1q_s64(*v181, v185);
              v297 = v187;
              v301 = v320.val[0];
              v305 = v320.val[1];
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v184 = vld1q_dup_s16(v181);
              v293 = v184;
              v297 = v184;
              v301 = v184;
              v305 = v184;
              v183 = 2;
            }

            else if (v71[2])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 64, v181, v182);
            }

            else
            {
              v183 = 0;
              v293 = 0uLL;
              v297 = 0uLL;
              v301 = 0uLL;
              v305 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[3];
            if (v189 == 63)
            {
              v192 = *(v188 + 16);
              v193 = (v188 + 32);
              v321 = vld2q_f64(v193);
              v194 = vzip2q_s64(*v188, v192);
              v294 = vzip1q_s64(*v188, v192);
              v298 = v194;
              v302 = v321.val[0];
              v306 = v321.val[1];
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v191 = vld1q_dup_s16(v188);
              v294 = v191;
              v298 = v191;
              v302 = v191;
              v306 = v191;
              v190 = 2;
            }

            else if (v71[3])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 64, v188, v189);
            }

            else
            {
              v190 = 0;
              v294 = 0uLL;
              v298 = 0uLL;
              v302 = 0uLL;
              v306 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[4];
            if (v196 == 63)
            {
              v199 = *(v195 + 16);
              v200 = (v195 + 32);
              v322 = vld2q_f64(v200);
              v201 = vzip2q_s64(*v195, v199);
              v279 = vzip1q_s64(*v195, v199);
              v283 = v201;
              v287 = v322.val[0];
              v291 = v322.val[1];
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v198 = vld1q_dup_s16(v195);
              v279 = v198;
              v283 = v198;
              v287 = v198;
              v291 = v198;
              v197 = 2;
            }

            else if (v71[4])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 64, v195, v196);
            }

            else
            {
              v197 = 0;
              v279 = 0uLL;
              v283 = 0uLL;
              v287 = 0uLL;
              v291 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[5];
            if (v203 == 63)
            {
              v206 = *(v202 + 16);
              v207 = (v202 + 32);
              v323 = vld2q_f64(v207);
              v208 = vzip2q_s64(*v202, v206);
              v280 = vzip1q_s64(*v202, v206);
              v284 = v208;
              v288 = v323.val[0];
              v292 = v323.val[1];
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v205 = vld1q_dup_s16(v202);
              v280 = v205;
              v284 = v205;
              v288 = v205;
              v292 = v205;
              v204 = 2;
            }

            else if (v71[5])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 64, v202, v203);
            }

            else
            {
              v204 = 0;
              v280 = 0uLL;
              v284 = 0uLL;
              v288 = 0uLL;
              v292 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[6];
            if (v210 == 63)
            {
              v213 = *(v209 + 16);
              v214 = (v209 + 32);
              v324 = vld2q_f64(v214);
              v215 = vzip2q_s64(*v209, v213);
              v295 = vzip1q_s64(*v209, v213);
              v299 = v215;
              v303 = v324.val[0];
              v307 = v324.val[1];
              v211 = 64;
            }

            else if (v210 == 1)
            {
              v212 = vld1q_dup_s16(v209);
              v295 = v212;
              v299 = v212;
              v303 = v212;
              v307 = v212;
              v211 = 2;
            }

            else if (v71[6])
            {
              v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 64, v209, v210);
            }

            else
            {
              v211 = 0;
              v295 = 0uLL;
              v299 = 0uLL;
              v303 = 0uLL;
              v307 = 0uLL;
            }

            v216 = v209 + v211;
            v217 = v71[7];
            if (v217 == 63)
            {
              v219 = *(v216 + 16);
              v220 = (v216 + 32);
              v325 = vld2q_f64(v220);
              v221 = vzip2q_s64(*v216, v219);
              v296 = vzip1q_s64(*v216, v219);
              v300 = v221;
              v304 = v325.val[0];
              v308 = v325.val[1];
              v15 = v264;
              v162 = v33 + 1;
            }

            else
            {
              v15 = v264;
              v162 = v33 + 1;
              if (v217 == 1)
              {
                v218 = vld1q_dup_s16(v216);
                v296 = v218;
                v300 = v218;
                v304 = v218;
                v308 = v218;
              }

              else if (v217)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 64, v216, v217);
              }

              else
              {
                v296 = 0uLL;
                v300 = 0uLL;
                v304 = 0uLL;
                v308 = 0uLL;
              }
            }

            v222 = v272;
            if (v272)
            {
              v223 = 0;
              v224 = &v277.i8[64 * v270 + 4 * v271];
              v225 = v273;
              do
              {
                if (v225)
                {
                  v226 = 0;
                  v227 = &v268->i8[v269 * v223];
                  do
                  {
                    v227[v226] = v224[v226];
                    ++v226;
                    v225 = v273;
                  }

                  while (4 * v273 > v226);
                  v222 = v272;
                }

                ++v223;
                v224 += 64;
              }

              while (v223 < v222);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = (v70 + 32);
              v310 = vld2q_f64(v83);
              v84 = *v70;
              v85 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v84, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v86 = &v72->i8[v247];
              *v86 = v310.val[0];
              *(v86 + a11) = v310.val[1];
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v247);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v87 = &v70[v76];
            v88 = v72 + 1;
            v89 = v71[1];
            if (v89 == 63)
            {
              v95 = (v87 + 32);
              v311 = vld2q_f64(v95);
              v96 = *v87;
              v97 = *(v87 + 16);
              *v88 = vzip1q_s64(*v87, v97);
              *(v88 + v24) = vzip2q_s64(v96, v97);
              v98 = &v88->i8[v74];
              *v98 = v311.val[0];
              *(v98 + v24) = v311.val[1];
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v94 = vld1q_dup_s16(v87);
              *v88 = v94;
              *(v88 + v24) = v94;
              *(v88 + v74) = v94;
              *(v88 + v75) = v94;
              v90 = 2;
            }

            else if (v71[1])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, v24, v87, v89);
            }

            else
            {
              v90 = 0;
              v88->i64[0] = 0;
              v72[1].i64[1] = 0;
              v91 = (v88->i64 + v24);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v88->i64 + v74);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v88->i64 + v75);
              *v93 = 0;
              v93[1] = 0;
            }

            v99 = v87 + v90;
            v100 = (v72 + v248);
            v101 = v71[2];
            if (v101 == 63)
            {
              v107 = (v99 + 32);
              v312 = vld2q_f64(v107);
              v108 = *v99;
              v109 = *(v99 + 16);
              *v100 = vzip1q_s64(*v99, v109);
              *(v100 + v24) = vzip2q_s64(v108, v109);
              v110 = &v100->i8[v74];
              *v110 = v312.val[0];
              *(v110 + v24) = v312.val[1];
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v106 = vld1q_dup_s16(v99);
              *v100 = v106;
              *(v100 + v24) = v106;
              *(v100 + v74) = v106;
              *(v100 + v75) = v106;
              v102 = 2;
            }

            else if (v71[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v248), v24, v99, v101);
            }

            else
            {
              v102 = 0;
              v100->i64[0] = 0;
              v100->i64[1] = 0;
              v103 = (v100->i64 + v24);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v100->i64 + v74);
              *v104 = 0;
              v104[1] = 0;
              v105 = (v100->i64 + v75);
              *v105 = 0;
              v105[1] = 0;
            }

            v111 = v99 + v102;
            v112 = v100 + 1;
            v113 = v71[3];
            if (v113 == 63)
            {
              v119 = (v111 + 32);
              v313 = vld2q_f64(v119);
              v120 = *v111;
              v121 = *(v111 + 16);
              *v112 = vzip1q_s64(*v111, v121);
              *(v112 + v24) = vzip2q_s64(v120, v121);
              v122 = &v112->i8[v74];
              *v122 = v313.val[0];
              *(v122 + v24) = v313.val[1];
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v118 = vld1q_dup_s16(v111);
              *v112 = v118;
              *(v112 + v24) = v118;
              *(v112 + v74) = v118;
              *(v112 + v75) = v118;
              v114 = 2;
            }

            else if (v71[3])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v24, v111, v113);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v100[1].i64[1] = 0;
              v115 = (v112->i64 + v24);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v74);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v75);
              *v117 = 0;
              v117[1] = 0;
            }

            v123 = v111 + v114;
            v124 = v72 + 2;
            v125 = v71[4];
            if (v125 == 63)
            {
              v131 = (v123 + 32);
              v314 = vld2q_f64(v131);
              v132 = *v123;
              v133 = *(v123 + 16);
              *v124 = vzip1q_s64(*v123, v133);
              *(v124 + v24) = vzip2q_s64(v132, v133);
              v134 = &v124->i8[v74];
              *v134 = v314.val[0];
              *(v134 + v24) = v314.val[1];
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v130 = vld1q_dup_s16(v123);
              *v124 = v130;
              *(v124 + v24) = v130;
              *(v124 + v74) = v130;
              *(v124 + v75) = v130;
              v126 = 2;
            }

            else if (v71[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v124, v24, v123, v125);
            }

            else
            {
              v126 = 0;
              v124->i64[0] = 0;
              v72[2].i64[1] = 0;
              v127 = (v124->i64 + v24);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v124->i64 + v74);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v124->i64 + v75);
              *v129 = 0;
              v129[1] = 0;
            }

            v135 = v123 + v126;
            v136 = v72 + 3;
            v137 = v71[5];
            if (v137 == 63)
            {
              v143 = (v135 + 32);
              v315 = vld2q_f64(v143);
              v144 = *v135;
              v145 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v145);
              *(v136 + v24) = vzip2q_s64(v144, v145);
              v146 = &v136->i8[v74];
              *v146 = v315.val[0];
              *(v146 + v24) = v315.val[1];
              v138 = 64;
              v35 = a7;
            }

            else
            {
              v35 = a7;
              if (v137 == 1)
              {
                v142 = vld1q_dup_s16(v135);
                *v136 = v142;
                *(v136 + v24) = v142;
                *(v136 + v74) = v142;
                *(v136 + v75) = v142;
                v138 = 2;
              }

              else if (v71[5])
              {
                v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v24, v135, v137);
              }

              else
              {
                v138 = 0;
                v136->i64[0] = 0;
                v136->i64[1] = 0;
                v139 = (v136->i64 + v24);
                *v139 = 0;
                v139[1] = 0;
                v140 = (v136->i64 + v74);
                *v140 = 0;
                v140[1] = 0;
                v141 = (v136->i64 + v75);
                *v141 = 0;
                v141[1] = 0;
              }
            }

            v147 = v135 + v138;
            v148 = v100 + 2;
            v149 = v71[6];
            if (v149 == 63)
            {
              v155 = (v147 + 32);
              v316 = vld2q_f64(v155);
              v156 = *v147;
              v157 = *(v147 + 16);
              *v148 = vzip1q_s64(*v147, v157);
              *(v148 + v24) = vzip2q_s64(v156, v157);
              v158 = &v148->i8[v74];
              *v158 = v316.val[0];
              *(v158 + v24) = v316.val[1];
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v154 = vld1q_dup_s16(v147);
              *v148 = v154;
              *(v148 + v24) = v154;
              *(v148 + v74) = v154;
              *(v148 + v75) = v154;
              v150 = 2;
            }

            else if (v71[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v24, v147, v149);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v100[2].i64[1] = 0;
              v151 = (v148->i64 + v24);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v74);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v75);
              *v153 = 0;
              v153[1] = 0;
            }

            v159 = v147 + v150;
            v160 = v100 + 3;
            v161 = v71[7];
            if (v161 == 63)
            {
              v166 = (v159 + 32);
              v317 = vld2q_f64(v166);
              v167 = *v159;
              v168 = *(v159 + 16);
              *v160 = vzip1q_s64(*v159, v168);
              *(v160 + v24) = vzip2q_s64(v167, v168);
              v169 = &v160->i8[v74];
              *v169 = v317.val[0];
              *(v169 + v24) = v317.val[1];
              v15 = v264;
              goto LABEL_145;
            }

            v15 = v264;
            v162 = v33 + 1;
            if (v161 == 1)
            {
              v36 = vld1q_dup_s16(v159);
              *v160 = v36;
              *(v160 + v24) = v36;
              *(v160 + v74) = v36;
              *(v160 + v75) = v36;
            }

            else if (v161)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v24, v159, v161);
            }

            else
            {
              v160->i64[0] = 0;
              v100[3].i64[1] = 0;
              v163 = (v160->i64 + v24);
              *v163 = 0;
              v163[1] = 0;
              v164 = (v160->i64 + v74);
              *v164 = 0;
              v164[1] = 0;
              v165 = (v160->i64 + v75);
              *v165 = 0;
              v165[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v255 >> 4;
          v33 = v162;
        }

        while (!v20);
        v20 = v16++ == v246;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v309 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v16 = a8 >> 3;
  v244 = a8 + a10 - 1;
  v246 = v244 >> 3;
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
  v257 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v246)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v24 = a11;
      v266 = (a5 - 1) >> 4;
      v241 = a5 - 1;
      v249 = (a5 - 1) & 0xF;
      v242 = (a6 - 1) & 7;
      v243 = (a6 - 1) >> 3;
      v248 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v26 = vcgt_u32(v25, 0x1F0000000FLL);
      v254 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v26);
      v253 = v26;
      v240 = 8 * v18 * v17;
      v264 = v15;
      v247 = 2 * a11;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v262)
        {
          v28 = v262;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v244 < v27)
        {
          v27 = v244;
        }

        v261 = 8 * v16;
        v252 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v242;
        v251 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 4;
        v34 = v242 + 1;
        if (v16 != v243)
        {
          v34 = 8;
        }

        v265 = v34;
        if (v16 != v243)
        {
          v31 = v32;
        }

        v250 = v31;
        v260 = a2 + (v28 - v262) * v24;
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

          if (v255 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v33 == v266)
          {
            v42 = v249 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v261 >= v262 && v37 >= v35)
          {
            v44 = v40 != v249;
            if (v33 != v266)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v250;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v240 >> (*(v15 + 57) != 0);
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

            v228 = (v65 >> 4) - 1;
            if (v67)
            {
              v229 = 0;
            }

            else
            {
              v229 = 32 - __clz(~(-1 << -__clz(v228)));
            }

            v230 = (v69 >> 3) - 1;
            if (v68)
            {
              v231 = 0;
              if (v229)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v231 = 32 - __clz(~(-1 << -__clz(v230)));
              if (v231 | v229)
              {
LABEL_225:
                v232 = 0;
                v233 = 0;
                v234 = v33 & v228;
                v235 = v16 & v230;
                v236 = v231 != 0;
                v237 = v229 != 0;
                v238 = 1;
                do
                {
                  --v231;
                  if (v236)
                  {
                    v233 |= (v238 & v235) << v232++;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  --v229;
                  if (v237)
                  {
                    v233 |= (v238 & v234) << v232++;
                  }

                  else
                  {
                    v229 = 0;
                  }

                  v238 *= 2;
                  --v232;
                  v237 = v229 != 0;
                  v236 = v231 != 0;
                }

                while (v229 | v231);
                v239 = v233 << 9;
                goto LABEL_237;
              }
            }

            v239 = 0;
LABEL_237:
            v52 = v239 + ((v37 / v65 + v261 / v69 * ((v65 + v241) / v65)) << 14);
            goto LABEL_55;
          }

          if (v254)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v253.i8[0];
            v48 = v253.i8[4];
            v50 = v254.i32[0];
            v51 = v254.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v33) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v257)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v260 + 4 * (v39 - v35));
          if (v43 & 1 | (v42 < 0x10u) || v265 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v264;
            block[5] = v70;
            v274 = v42;
            v275 = v265;
            v270 = v252;
            v271 = v39 - v37;
            block[6] = v71;
            v268 = v72;
            v24 = a11;
            v269 = a11;
            v272 = v251;
            v273 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v264 + 8) + 16552), block);
              v35 = a7;
              v15 = v264;
LABEL_145:
              v162 = v33 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v35 = a7;
            if (v80 == 63)
            {
              v171 = *(v70 + 1);
              v172 = (v70 + 32);
              v318 = vld2q_f64(v172);
              v173 = vzip2q_s64(*v70, v171);
              v277 = vzip1q_s64(*v70, v171);
              v281 = v173;
              v285 = v318.val[0];
              v289 = v318.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v170 = vld1q_dup_s16(v70);
              v277 = v170;
              v281 = v170;
              v285 = v170;
              v289 = v170;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 64, v70, v80);
            }

            else
            {
              v81 = 0;
              v277 = 0uLL;
              v281 = 0uLL;
              v285 = 0uLL;
              v289 = 0uLL;
            }

            v174 = &v70[v81];
            v175 = v71[1];
            if (v175 == 63)
            {
              v178 = *(v174 + 16);
              v179 = (v174 + 32);
              v319 = vld2q_f64(v179);
              v180 = vzip2q_s64(*v174, v178);
              v278 = vzip1q_s64(*v174, v178);
              v282 = v180;
              v286 = v319.val[0];
              v290 = v319.val[1];
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v177 = vld1q_dup_s16(v174);
              v278 = v177;
              v282 = v177;
              v286 = v177;
              v290 = v177;
              v176 = 2;
            }

            else if (v71[1])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v174, v175);
            }

            else
            {
              v176 = 0;
              v278 = 0uLL;
              v282 = 0uLL;
              v286 = 0uLL;
              v290 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[2];
            if (v182 == 63)
            {
              v185 = *(v181 + 16);
              v186 = (v181 + 32);
              v320 = vld2q_f64(v186);
              v187 = vzip2q_s64(*v181, v185);
              v293 = vzip1q_s64(*v181, v185);
              v297 = v187;
              v301 = v320.val[0];
              v305 = v320.val[1];
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v184 = vld1q_dup_s16(v181);
              v293 = v184;
              v297 = v184;
              v301 = v184;
              v305 = v184;
              v183 = 2;
            }

            else if (v71[2])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 64, v181, v182);
            }

            else
            {
              v183 = 0;
              v293 = 0uLL;
              v297 = 0uLL;
              v301 = 0uLL;
              v305 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[3];
            if (v189 == 63)
            {
              v192 = *(v188 + 16);
              v193 = (v188 + 32);
              v321 = vld2q_f64(v193);
              v194 = vzip2q_s64(*v188, v192);
              v294 = vzip1q_s64(*v188, v192);
              v298 = v194;
              v302 = v321.val[0];
              v306 = v321.val[1];
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v191 = vld1q_dup_s16(v188);
              v294 = v191;
              v298 = v191;
              v302 = v191;
              v306 = v191;
              v190 = 2;
            }

            else if (v71[3])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 64, v188, v189);
            }

            else
            {
              v190 = 0;
              v294 = 0uLL;
              v298 = 0uLL;
              v302 = 0uLL;
              v306 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[4];
            if (v196 == 63)
            {
              v199 = *(v195 + 16);
              v200 = (v195 + 32);
              v322 = vld2q_f64(v200);
              v201 = vzip2q_s64(*v195, v199);
              v279 = vzip1q_s64(*v195, v199);
              v283 = v201;
              v287 = v322.val[0];
              v291 = v322.val[1];
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v198 = vld1q_dup_s16(v195);
              v279 = v198;
              v283 = v198;
              v287 = v198;
              v291 = v198;
              v197 = 2;
            }

            else if (v71[4])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 64, v195, v196);
            }

            else
            {
              v197 = 0;
              v279 = 0uLL;
              v283 = 0uLL;
              v287 = 0uLL;
              v291 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[5];
            if (v203 == 63)
            {
              v206 = *(v202 + 16);
              v207 = (v202 + 32);
              v323 = vld2q_f64(v207);
              v208 = vzip2q_s64(*v202, v206);
              v280 = vzip1q_s64(*v202, v206);
              v284 = v208;
              v288 = v323.val[0];
              v292 = v323.val[1];
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v205 = vld1q_dup_s16(v202);
              v280 = v205;
              v284 = v205;
              v288 = v205;
              v292 = v205;
              v204 = 2;
            }

            else if (v71[5])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 64, v202, v203);
            }

            else
            {
              v204 = 0;
              v280 = 0uLL;
              v284 = 0uLL;
              v288 = 0uLL;
              v292 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[6];
            if (v210 == 63)
            {
              v213 = *(v209 + 16);
              v214 = (v209 + 32);
              v324 = vld2q_f64(v214);
              v215 = vzip2q_s64(*v209, v213);
              v295 = vzip1q_s64(*v209, v213);
              v299 = v215;
              v303 = v324.val[0];
              v307 = v324.val[1];
              v211 = 64;
            }

            else if (v210 == 1)
            {
              v212 = vld1q_dup_s16(v209);
              v295 = v212;
              v299 = v212;
              v303 = v212;
              v307 = v212;
              v211 = 2;
            }

            else if (v71[6])
            {
              v211 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 64, v209, v210);
            }

            else
            {
              v211 = 0;
              v295 = 0uLL;
              v299 = 0uLL;
              v303 = 0uLL;
              v307 = 0uLL;
            }

            v216 = v209 + v211;
            v217 = v71[7];
            if (v217 == 63)
            {
              v219 = *(v216 + 16);
              v220 = (v216 + 32);
              v325 = vld2q_f64(v220);
              v221 = vzip2q_s64(*v216, v219);
              v296 = vzip1q_s64(*v216, v219);
              v300 = v221;
              v304 = v325.val[0];
              v308 = v325.val[1];
              v15 = v264;
              v162 = v33 + 1;
            }

            else
            {
              v15 = v264;
              v162 = v33 + 1;
              if (v217 == 1)
              {
                v218 = vld1q_dup_s16(v216);
                v296 = v218;
                v300 = v218;
                v304 = v218;
                v308 = v218;
              }

              else if (v217)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v296, 64, v216, v217);
              }

              else
              {
                v296 = 0uLL;
                v300 = 0uLL;
                v304 = 0uLL;
                v308 = 0uLL;
              }
            }

            v222 = v272;
            if (v272)
            {
              v223 = 0;
              v224 = &v277.i8[64 * v270 + 4 * v271];
              v225 = v273;
              do
              {
                if (v225)
                {
                  v226 = 0;
                  v227 = &v268->i8[v269 * v223];
                  do
                  {
                    v227[v226] = v224[v226];
                    ++v226;
                    v225 = v273;
                  }

                  while (4 * v273 > v226);
                  v222 = v272;
                }

                ++v223;
                v224 += 64;
              }

              while (v223 < v222);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v83 = (v70 + 32);
              v310 = vld2q_f64(v83);
              v84 = *v70;
              v85 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v85);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v84, v85);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v86 = &v72->i8[v247];
              *v86 = v310.val[0];
              *(v86 + a11) = v310.val[1];
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v82 = vld1q_dup_s16(v70);
                *v72 = v82;
                *(v72 + a11) = v82;
                *(v72 + 2 * a11) = v82;
                *(v72 + 3 * a11) = v82;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v247);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v87 = &v70[v76];
            v88 = v72 + 1;
            v89 = v71[1];
            if (v89 == 63)
            {
              v95 = (v87 + 32);
              v311 = vld2q_f64(v95);
              v96 = *v87;
              v97 = *(v87 + 16);
              *v88 = vzip1q_s64(*v87, v97);
              *(v88 + v24) = vzip2q_s64(v96, v97);
              v98 = &v88->i8[v74];
              *v98 = v311.val[0];
              *(v98 + v24) = v311.val[1];
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v94 = vld1q_dup_s16(v87);
              *v88 = v94;
              *(v88 + v24) = v94;
              *(v88 + v74) = v94;
              *(v88 + v75) = v94;
              v90 = 2;
            }

            else if (v71[1])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, v24, v87, v89);
            }

            else
            {
              v90 = 0;
              v88->i64[0] = 0;
              v72[1].i64[1] = 0;
              v91 = (v88->i64 + v24);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v88->i64 + v74);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v88->i64 + v75);
              *v93 = 0;
              v93[1] = 0;
            }

            v99 = v87 + v90;
            v100 = (v72 + v248);
            v101 = v71[2];
            if (v101 == 63)
            {
              v107 = (v99 + 32);
              v312 = vld2q_f64(v107);
              v108 = *v99;
              v109 = *(v99 + 16);
              *v100 = vzip1q_s64(*v99, v109);
              *(v100 + v24) = vzip2q_s64(v108, v109);
              v110 = &v100->i8[v74];
              *v110 = v312.val[0];
              *(v110 + v24) = v312.val[1];
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v106 = vld1q_dup_s16(v99);
              *v100 = v106;
              *(v100 + v24) = v106;
              *(v100 + v74) = v106;
              *(v100 + v75) = v106;
              v102 = 2;
            }

            else if (v71[2])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v248), v24, v99, v101);
            }

            else
            {
              v102 = 0;
              v100->i64[0] = 0;
              v100->i64[1] = 0;
              v103 = (v100->i64 + v24);
              *v103 = 0;
              v103[1] = 0;
              v104 = (v100->i64 + v74);
              *v104 = 0;
              v104[1] = 0;
              v105 = (v100->i64 + v75);
              *v105 = 0;
              v105[1] = 0;
            }

            v111 = v99 + v102;
            v112 = v100 + 1;
            v113 = v71[3];
            if (v113 == 63)
            {
              v119 = (v111 + 32);
              v313 = vld2q_f64(v119);
              v120 = *v111;
              v121 = *(v111 + 16);
              *v112 = vzip1q_s64(*v111, v121);
              *(v112 + v24) = vzip2q_s64(v120, v121);
              v122 = &v112->i8[v74];
              *v122 = v313.val[0];
              *(v122 + v24) = v313.val[1];
              v114 = 64;
            }

            else if (v113 == 1)
            {
              v118 = vld1q_dup_s16(v111);
              *v112 = v118;
              *(v112 + v24) = v118;
              *(v112 + v74) = v118;
              *(v112 + v75) = v118;
              v114 = 2;
            }

            else if (v71[3])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v24, v111, v113);
            }

            else
            {
              v114 = 0;
              v112->i64[0] = 0;
              v100[1].i64[1] = 0;
              v115 = (v112->i64 + v24);
              *v115 = 0;
              v115[1] = 0;
              v116 = (v112->i64 + v74);
              *v116 = 0;
              v116[1] = 0;
              v117 = (v112->i64 + v75);
              *v117 = 0;
              v117[1] = 0;
            }

            v123 = v111 + v114;
            v124 = v72 + 2;
            v125 = v71[4];
            if (v125 == 63)
            {
              v131 = (v123 + 32);
              v314 = vld2q_f64(v131);
              v132 = *v123;
              v133 = *(v123 + 16);
              *v124 = vzip1q_s64(*v123, v133);
              *(v124 + v24) = vzip2q_s64(v132, v133);
              v134 = &v124->i8[v74];
              *v134 = v314.val[0];
              *(v134 + v24) = v314.val[1];
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v130 = vld1q_dup_s16(v123);
              *v124 = v130;
              *(v124 + v24) = v130;
              *(v124 + v74) = v130;
              *(v124 + v75) = v130;
              v126 = 2;
            }

            else if (v71[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v124, v24, v123, v125);
            }

            else
            {
              v126 = 0;
              v124->i64[0] = 0;
              v72[2].i64[1] = 0;
              v127 = (v124->i64 + v24);
              *v127 = 0;
              v127[1] = 0;
              v128 = (v124->i64 + v74);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v124->i64 + v75);
              *v129 = 0;
              v129[1] = 0;
            }

            v135 = v123 + v126;
            v136 = v72 + 3;
            v137 = v71[5];
            if (v137 == 63)
            {
              v143 = (v135 + 32);
              v315 = vld2q_f64(v143);
              v144 = *v135;
              v145 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v145);
              *(v136 + v24) = vzip2q_s64(v144, v145);
              v146 = &v136->i8[v74];
              *v146 = v315.val[0];
              *(v146 + v24) = v315.val[1];
              v138 = 64;
              v35 = a7;
            }

            else
            {
              v35 = a7;
              if (v137 == 1)
              {
                v142 = vld1q_dup_s16(v135);
                *v136 = v142;
                *(v136 + v24) = v142;
                *(v136 + v74) = v142;
                *(v136 + v75) = v142;
                v138 = 2;
              }

              else if (v71[5])
              {
                v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v24, v135, v137);
              }

              else
              {
                v138 = 0;
                v136->i64[0] = 0;
                v136->i64[1] = 0;
                v139 = (v136->i64 + v24);
                *v139 = 0;
                v139[1] = 0;
                v140 = (v136->i64 + v74);
                *v140 = 0;
                v140[1] = 0;
                v141 = (v136->i64 + v75);
                *v141 = 0;
                v141[1] = 0;
              }
            }

            v147 = v135 + v138;
            v148 = v100 + 2;
            v149 = v71[6];
            if (v149 == 63)
            {
              v155 = (v147 + 32);
              v316 = vld2q_f64(v155);
              v156 = *v147;
              v157 = *(v147 + 16);
              *v148 = vzip1q_s64(*v147, v157);
              *(v148 + v24) = vzip2q_s64(v156, v157);
              v158 = &v148->i8[v74];
              *v158 = v316.val[0];
              *(v158 + v24) = v316.val[1];
              v150 = 64;
            }

            else if (v149 == 1)
            {
              v154 = vld1q_dup_s16(v147);
              *v148 = v154;
              *(v148 + v24) = v154;
              *(v148 + v74) = v154;
              *(v148 + v75) = v154;
              v150 = 2;
            }

            else if (v71[6])
            {
              v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v24, v147, v149);
            }

            else
            {
              v150 = 0;
              v148->i64[0] = 0;
              v100[2].i64[1] = 0;
              v151 = (v148->i64 + v24);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v148->i64 + v74);
              *v152 = 0;
              v152[1] = 0;
              v153 = (v148->i64 + v75);
              *v153 = 0;
              v153[1] = 0;
            }

            v159 = v147 + v150;
            v160 = v100 + 3;
            v161 = v71[7];
            if (v161 == 63)
            {
              v166 = (v159 + 32);
              v317 = vld2q_f64(v166);
              v167 = *v159;
              v168 = *(v159 + 16);
              *v160 = vzip1q_s64(*v159, v168);
              *(v160 + v24) = vzip2q_s64(v167, v168);
              v169 = &v160->i8[v74];
              *v169 = v317.val[0];
              *(v169 + v24) = v317.val[1];
              v15 = v264;
              goto LABEL_145;
            }

            v15 = v264;
            v162 = v33 + 1;
            if (v161 == 1)
            {
              v36 = vld1q_dup_s16(v159);
              *v160 = v36;
              *(v160 + v24) = v36;
              *(v160 + v74) = v36;
              *(v160 + v75) = v36;
            }

            else if (v161)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v24, v159, v161);
            }

            else
            {
              v160->i64[0] = 0;
              v100[3].i64[1] = 0;
              v163 = (v160->i64 + v24);
              *v163 = 0;
              v163[1] = 0;
              v164 = (v160->i64 + v74);
              *v164 = 0;
              v164[1] = 0;
              v165 = (v160->i64 + v75);
              *v165 = 0;
              v165[1] = 0;
            }
          }

LABEL_29:
          v20 = v33 == v255 >> 4;
          v33 = v162;
        }

        while (!v20);
        v20 = v16++ == v246;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
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
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
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
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
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
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
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
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
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
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
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
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
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
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
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
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
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
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
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
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
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
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
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
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
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
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
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

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
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