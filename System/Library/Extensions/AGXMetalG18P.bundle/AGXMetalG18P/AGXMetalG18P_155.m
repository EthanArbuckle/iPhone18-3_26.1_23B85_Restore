void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v403 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v325 = a8;
  v306 = a8 + a10 - 1;
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
  v305 = v306 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v320 = v23;
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
      v319 = 0;
LABEL_32:
      v316 = v25 - 3;
      v309 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v303 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v319 = v30 >= v24;
    goto LABEL_32;
  }

  v319 = 0;
  v303 = 0;
  v309 = 0;
  v316 = 0;
LABEL_33:
  if (v17 <= v305)
  {
    v318 = a7 + a9 - 1;
    if (a7 >> 3 <= v318 >> 3)
    {
      v32 = a11;
      v328 = v18 >> 3;
      v312 = v18 & 7;
      v317 = (v18 & 7) + 1;
      v301 = v19 & 7;
      v302 = v19 >> 3;
      v310 = 4 * a11;
      v311 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v308 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v307 = v34;
      v326 = v15;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v325)
        {
          v36 = v325;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v306 < v35)
        {
          v35 = v306;
        }

        v315 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v301;
        v314 = v38;
        v40 = v38 != 8;
        v41 = a7 >> 3;
        v42 = v301 + 1;
        if (v17 != v302)
        {
          v42 = 8;
        }

        v327 = v42;
        if (v17 != v302)
        {
          v39 = v40;
        }

        v313 = v39;
        v43 = v17 & ~(-1 << v309);
        v323 = a2 + (v36 - v325) * v32;
        v44 = a7;
        do
        {
          v46 = 8 * v41;
          v47 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 8 * v41;
          }

          if (v318 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v41 == v328)
          {
            v51 = v317;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v17 >= v325 && v46 >= v44)
          {
            v53 = v49 != v312;
            if (v41 != v328)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v313;
          }

          if (v319)
          {
            if (v316 | v309)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v316 != 0;
              v58 = v309 != 0;
              v59 = v316;
              v60 = v309;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v41 & ~(-1 << v316) & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v43 & v56) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v41 >> v316) + (v17 >> v309) * v303);
          }

          else if (v308)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v307.i8[4];
            v66 = v307.i8[0];
            v67 = v308.i32[1];
            v68 = v308.i32[0];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v41) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
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
          if (v320)
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
          v87 = v323 + 16 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 8u)) && v327 > 7)
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v95 = *(v82 + 1);
              v96 = *(v82 + 2);
              v97 = *(v82 + 3);
              v98 = *(v82 + 4);
              v99 = *(v82 + 5);
              v100 = *(v82 + 6);
              v101 = *(v82 + 7);
              v32 = a11;
              *v87 = *v82;
              *(v87 + 16) = v95;
              v102 = (v87 + a11);
              *(v87 + 32) = v98;
              *(v87 + 48) = v99;
              *v102 = v96;
              v102[1] = v97;
              v103 = (v87 + a11 + 32);
              *v103 = v100;
              v103[1] = v101;
              v89 = 128;
            }

            else
            {
              v32 = a11;
              if (v88 == 3)
              {
                v93 = vld1q_dup_f32(v82);
                *v87 = v93;
                *(v87 + 16) = v93;
                *(v87 + 32) = v93;
                *(v87 + 48) = v93;
                v94 = (v87 + a11);
                *v94 = v93;
                v94[1] = v93;
                v94[2] = v93;
                v94[3] = v93;
                v89 = 4;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v89 = 0;
                *(v87 + 32) = 0u;
                *(v87 + 48) = 0u;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v90 = (v87 + a11);
                v90[2] = 0u;
                v90[3] = 0u;
                *v90 = 0u;
                v90[1] = 0u;
              }
            }

            v104 = &v82[v89];
            v105 = (v87 + v311);
            v106 = v86[1];
            if (v106 == 127)
            {
              v111 = *(v104 + 16);
              v112 = *(v104 + 32);
              v113 = *(v104 + 48);
              v114 = *(v104 + 64);
              v115 = *(v104 + 80);
              v116 = *(v104 + 96);
              v117 = *(v104 + 112);
              *v105 = *v104;
              v105[1] = v111;
              v118 = (v105->f32 + v32);
              v105[2] = v114;
              v105[3] = v115;
              *v118 = v112;
              v118[1] = v113;
              v119 = (v105[2].f32 + v32);
              *v119 = v116;
              v119[1] = v117;
              v107 = 128;
            }

            else if (v106 == 3)
            {
              v109 = vld1q_dup_f32(v104);
              *v105 = v109;
              v105[1] = v109;
              v105[2] = v109;
              v105[3] = v109;
              v110 = (v105 + v32);
              *v110 = v109;
              v110[1] = v109;
              v110[2] = v109;
              v110[3] = v109;
              v107 = 4;
            }

            else if (v86[1])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v311), v32, v104, v106);
            }

            else
            {
              v107 = 0;
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
              v108 = (v105->f32 + v32);
              v108[2] = 0u;
              v108[3] = 0u;
              *v108 = 0u;
              v108[1] = 0u;
            }

            v120 = v104 + v107;
            v121 = (v87 + 64);
            v122 = v86[2];
            if (v122 == 127)
            {
              v127 = *(v120 + 16);
              v128 = *(v120 + 32);
              v129 = *(v120 + 48);
              v130 = *(v120 + 64);
              v131 = *(v120 + 80);
              v132 = *(v120 + 96);
              v133 = *(v120 + 112);
              *v121 = *v120;
              *(v87 + 80) = v127;
              v134 = &v121->i8[v32];
              *(v87 + 96) = v130;
              *(v87 + 112) = v131;
              *v134 = v128;
              *(v134 + 1) = v129;
              v134 += 32;
              *v134 = v132;
              *(v134 + 1) = v133;
              v123 = 128;
            }

            else if (v122 == 3)
            {
              v125 = vld1q_dup_f32(v120);
              *(v87 + 64) = v125;
              *(v87 + 80) = v125;
              *(v87 + 96) = v125;
              *(v87 + 112) = v125;
              v126 = &v121->i8[v32];
              *v126 = v125;
              v126[1] = v125;
              v126[2] = v125;
              v126[3] = v125;
              v123 = 4;
            }

            else if (v86[2])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v32, v120, v122);
            }

            else
            {
              v123 = 0;
              *(v87 + 96) = 0u;
              *(v87 + 112) = 0u;
              *v121 = 0u;
              *(v87 + 80) = 0u;
              v124 = &v121->i8[v32];
              *(v124 + 2) = 0u;
              *(v124 + 3) = 0u;
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v135 = v120 + v123;
            v136 = &v105[4];
            v137 = v86[3];
            if (v137 == 127)
            {
              v142 = *(v135 + 16);
              v143 = *(v135 + 32);
              v144 = *(v135 + 48);
              v145 = *(v135 + 64);
              v146 = *(v135 + 80);
              v147 = *(v135 + 96);
              v148 = *(v135 + 112);
              *v136 = *v135;
              v105[5] = v142;
              v149 = &v136->i8[v32];
              v105[6] = v145;
              v105[7] = v146;
              *v149 = v143;
              *(v149 + 1) = v144;
              v149 += 32;
              *v149 = v147;
              *(v149 + 1) = v148;
              v138 = 128;
            }

            else if (v137 == 3)
            {
              v140 = vld1q_dup_f32(v135);
              v105[4] = v140;
              v105[5] = v140;
              v105[6] = v140;
              v105[7] = v140;
              v141 = &v136->i8[v32];
              *v141 = v140;
              v141[1] = v140;
              v141[2] = v140;
              v141[3] = v140;
              v138 = 4;
            }

            else if (v86[3])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137);
            }

            else
            {
              v138 = 0;
              v105[6] = 0u;
              v105[7] = 0u;
              *v136 = 0u;
              v105[5] = 0u;
              v139 = &v136->i8[v32];
              *(v139 + 2) = 0u;
              *(v139 + 3) = 0u;
              *v139 = 0u;
              *(v139 + 1) = 0u;
            }

            v150 = v135 + v138;
            v151 = (v87 + v310);
            v152 = v86[4];
            if (v152 == 127)
            {
              v157 = *(v150 + 16);
              v158 = *(v150 + 32);
              v159 = *(v150 + 48);
              v160 = *(v150 + 64);
              v161 = *(v150 + 80);
              v162 = *(v150 + 96);
              v163 = *(v150 + 112);
              *v151 = *v150;
              v151[1] = v157;
              v164 = (v151->f32 + v32);
              v151[2] = v160;
              v151[3] = v161;
              *v164 = v158;
              v164[1] = v159;
              v165 = (v151[2].f32 + v32);
              *v165 = v162;
              v165[1] = v163;
              v153 = 128;
            }

            else if (v152 == 3)
            {
              v155 = vld1q_dup_f32(v150);
              *v151 = v155;
              v151[1] = v155;
              v151[2] = v155;
              v151[3] = v155;
              v156 = (v151 + v32);
              *v156 = v155;
              v156[1] = v155;
              v156[2] = v155;
              v156[3] = v155;
              v153 = 4;
            }

            else if (v86[4])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v310), v32, v150, v152);
            }

            else
            {
              v153 = 0;
              v151[2] = 0u;
              v151[3] = 0u;
              *v151 = 0u;
              v151[1] = 0u;
              v154 = (v151->f32 + v32);
              v154[2] = 0u;
              v154[3] = 0u;
              *v154 = 0u;
              v154[1] = 0u;
            }

            v166 = v150 + v153;
            v167 = v87 + 6 * a11;
            v168 = v86[5];
            if (v168 == 127)
            {
              v173 = *(v166 + 16);
              v174 = *(v166 + 32);
              v175 = *(v166 + 48);
              v176 = *(v166 + 64);
              v177 = *(v166 + 80);
              v178 = *(v166 + 96);
              v179 = *(v166 + 112);
              *v167 = *v166;
              *(v167 + 16) = v173;
              v180 = (v167 + v32);
              *(v167 + 32) = v176;
              *(v167 + 48) = v177;
              *v180 = v174;
              v180[1] = v175;
              v181 = (v167 + v32 + 32);
              *v181 = v178;
              v181[1] = v179;
              v169 = 128;
            }

            else if (v168 == 3)
            {
              v171 = vld1q_dup_f32(v166);
              *v167 = v171;
              *(v167 + 16) = v171;
              *(v167 + 32) = v171;
              *(v167 + 48) = v171;
              v172 = (v167 + v32);
              *v172 = v171;
              v172[1] = v171;
              v172[2] = v171;
              v172[3] = v171;
              v169 = 4;
            }

            else if (v86[5])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v32, v166, v168);
            }

            else
            {
              v169 = 0;
              *(v167 + 32) = 0u;
              *(v167 + 48) = 0u;
              *v167 = 0u;
              *(v167 + 16) = 0u;
              v170 = (v167 + v32);
              v170[2] = 0u;
              v170[3] = 0u;
              *v170 = 0u;
              v170[1] = 0u;
            }

            v182 = v166 + v169;
            v183 = &v151[4];
            v184 = v86[6];
            if (v184 == 127)
            {
              v189 = *(v182 + 16);
              v190 = *(v182 + 32);
              v191 = *(v182 + 48);
              v192 = *(v182 + 64);
              v193 = *(v182 + 80);
              v194 = *(v182 + 96);
              v195 = *(v182 + 112);
              *v183 = *v182;
              v151[5] = v189;
              v196 = &v183->i8[v32];
              v151[6] = v192;
              v151[7] = v193;
              *v196 = v190;
              *(v196 + 1) = v191;
              v196 += 32;
              *v196 = v194;
              *(v196 + 1) = v195;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v187 = vld1q_dup_f32(v182);
              v151[4] = v187;
              v151[5] = v187;
              v151[6] = v187;
              v151[7] = v187;
              v188 = &v183->i8[v32];
              *v188 = v187;
              v188[1] = v187;
              v188[2] = v187;
              v188[3] = v187;
              v185 = 4;
            }

            else if (v86[6])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v32, v182, v184);
            }

            else
            {
              v185 = 0;
              v151[6] = 0u;
              v151[7] = 0u;
              *v183 = 0u;
              v151[5] = 0u;
              v186 = &v183->i8[v32];
              *(v186 + 2) = 0u;
              *(v186 + 3) = 0u;
              *v186 = 0u;
              *(v186 + 1) = 0u;
            }

            v197 = v182 + v185;
            v198 = (v167 + 64);
            v199 = v86[7];
            if (v199 == 127)
            {
              v203 = *(v197 + 16);
              v204 = *(v197 + 32);
              v205 = *(v197 + 48);
              v206 = *(v197 + 64);
              v207 = *(v197 + 80);
              v208 = *(v197 + 96);
              v209 = *(v197 + 112);
              *v198 = *v197;
              *(v167 + 80) = v203;
              v210 = &v198->i8[v32];
              *(v167 + 96) = v206;
              *(v167 + 112) = v207;
              *v210 = v204;
              *(v210 + 1) = v205;
              v210 += 32;
              *v210 = v208;
              *(v210 + 1) = v209;
              v44 = a7;
              v15 = v326;
            }

            else
            {
              v15 = v326;
              if (v199 == 3)
              {
                v201 = vld1q_dup_f32(v197);
                *(v167 + 64) = v201;
                *(v167 + 80) = v201;
                *(v167 + 96) = v201;
                *(v167 + 112) = v201;
                v202 = &v198->i8[v32];
                *v202 = v201;
                v202[1] = v201;
                v202[2] = v201;
                v202[3] = v201;
              }

              else if (v199)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v32, v197, v199);
              }

              else
              {
                *(v167 + 96) = 0u;
                *(v167 + 112) = 0u;
                *v198 = 0u;
                *(v167 + 80) = 0u;
                v200 = &v198->i8[v32];
                *(v200 + 2) = 0u;
                *(v200 + 3) = 0u;
                *v200 = 0u;
                *(v200 + 1) = 0u;
              }

              v44 = a7;
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v326;
          block[5] = v82;
          v336 = v51;
          v337 = v327;
          v332 = v315;
          v333 = v48 - v46;
          block[6] = v86;
          v330 = v87;
          v32 = a11;
          v331 = a11;
          v334 = v314;
          v335 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v326 + 8) + 16552), block);
            v44 = a7;
            v15 = v326;
LABEL_49:
            v45 = v41 + 1;
            goto LABEL_50;
          }

          v91 = *v86;
          if (v91 == 127)
          {
            v212 = *(v82 + 1);
            v213 = *(v82 + 2);
            v214 = *(v82 + 3);
            v215 = *(v82 + 4);
            v216 = *(v82 + 5);
            v217 = *(v82 + 6);
            v218 = *(v82 + 7);
            v339 = *v82;
            v340 = v212;
            v341 = v215;
            v342 = v216;
            v347 = v213;
            v348 = v214;
            v349 = v217;
            v350 = v218;
            v92 = 128;
          }

          else if (v91 == 3)
          {
            v211 = vld1q_dup_f32(v82);
            v339 = v211;
            v340 = v211;
            v341 = v211;
            v342 = v211;
            v347 = v211;
            v348 = v211;
            v349 = v211;
            v350 = v211;
            v92 = 4;
          }

          else if (*v86)
          {
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v339, 128, v82, v91);
          }

          else
          {
            v92 = 0;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
          }

          v219 = &v82[v92];
          v220 = v86[1];
          if (v220 == 127)
          {
            v223 = *(v219 + 16);
            v224 = *(v219 + 32);
            v225 = *(v219 + 48);
            v226 = *(v219 + 64);
            v227 = *(v219 + 80);
            v228 = *(v219 + 96);
            v229 = *(v219 + 112);
            v355 = *v219;
            v356 = v223;
            v357 = v226;
            v358 = v227;
            v363 = v224;
            v364 = v225;
            v365 = v228;
            v366 = v229;
            v221 = 128;
          }

          else if (v220 == 3)
          {
            v222 = vld1q_dup_f32(v219);
            v355 = v222;
            v356 = v222;
            v357 = v222;
            v358 = v222;
            v363 = v222;
            v364 = v222;
            v365 = v222;
            v366 = v222;
            v221 = 4;
          }

          else if (v86[1])
          {
            v221 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v355, 128, v219, v220);
          }

          else
          {
            v221 = 0;
            v357 = 0u;
            v358 = 0u;
            v355 = 0u;
            v356 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
          }

          v230 = v219 + v221;
          v231 = v86[2];
          if (v231 == 127)
          {
            v234 = *(v230 + 16);
            v235 = *(v230 + 32);
            v236 = *(v230 + 48);
            v237 = *(v230 + 64);
            v238 = *(v230 + 80);
            v239 = *(v230 + 96);
            v240 = *(v230 + 112);
            v343 = *v230;
            v344 = v234;
            v345 = v237;
            v346 = v238;
            v351 = v235;
            v352 = v236;
            v353 = v239;
            v354 = v240;
            v232 = 128;
          }

          else if (v231 == 3)
          {
            v233 = vld1q_dup_f32(v230);
            v343 = v233;
            v344 = v233;
            v345 = v233;
            v346 = v233;
            v351 = v233;
            v352 = v233;
            v353 = v233;
            v354 = v233;
            v232 = 4;
          }

          else if (v86[2])
          {
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v343, 128, v230, v231);
          }

          else
          {
            v232 = 0;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
          }

          v241 = v230 + v232;
          v242 = v86[3];
          if (v242 == 127)
          {
            v245 = *(v241 + 16);
            v246 = *(v241 + 32);
            v247 = *(v241 + 48);
            v248 = *(v241 + 64);
            v249 = *(v241 + 80);
            v250 = *(v241 + 96);
            v251 = *(v241 + 112);
            v359 = *v241;
            v360 = v245;
            v361 = v248;
            v362 = v249;
            v367 = v246;
            v368 = v247;
            v369 = v250;
            v370 = v251;
            v243 = 128;
          }

          else if (v242 == 3)
          {
            v244 = vld1q_dup_f32(v241);
            v359 = v244;
            v360 = v244;
            v361 = v244;
            v362 = v244;
            v367 = v244;
            v368 = v244;
            v369 = v244;
            v370 = v244;
            v243 = 4;
          }

          else if (v86[3])
          {
            v243 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v359, 128, v241, v242);
          }

          else
          {
            v243 = 0;
            v361 = 0u;
            v362 = 0u;
            v359 = 0u;
            v360 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
          }

          v252 = v241 + v243;
          v253 = v86[4];
          if (v253 == 127)
          {
            v256 = *(v252 + 16);
            v257 = *(v252 + 32);
            v258 = *(v252 + 48);
            v259 = *(v252 + 64);
            v260 = *(v252 + 80);
            v261 = *(v252 + 96);
            v262 = *(v252 + 112);
            v371 = *v252;
            v372 = v256;
            v373 = v259;
            v374 = v260;
            v379 = v257;
            v380 = v258;
            v381 = v261;
            v382 = v262;
            v254 = 128;
          }

          else if (v253 == 3)
          {
            v255 = vld1q_dup_f32(v252);
            v371 = v255;
            v372 = v255;
            v373 = v255;
            v374 = v255;
            v379 = v255;
            v380 = v255;
            v381 = v255;
            v382 = v255;
            v254 = 4;
          }

          else if (v86[4])
          {
            v254 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v371, 128, v252, v253);
          }

          else
          {
            v254 = 0;
            v373 = 0u;
            v374 = 0u;
            v371 = 0u;
            v372 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
          }

          v263 = v252 + v254;
          v264 = v86[5];
          if (v264 == 127)
          {
            v267 = *(v263 + 16);
            v268 = *(v263 + 32);
            v269 = *(v263 + 48);
            v270 = *(v263 + 64);
            v271 = *(v263 + 80);
            v272 = *(v263 + 96);
            v273 = *(v263 + 112);
            v387 = *v263;
            v388 = v267;
            v389 = v270;
            v390 = v271;
            v395 = v268;
            v396 = v269;
            v397 = v272;
            v398 = v273;
            v265 = 128;
          }

          else if (v264 == 3)
          {
            v266 = vld1q_dup_f32(v263);
            v387 = v266;
            v388 = v266;
            v389 = v266;
            v390 = v266;
            v395 = v266;
            v396 = v266;
            v397 = v266;
            v398 = v266;
            v265 = 4;
          }

          else if (v86[5])
          {
            v265 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v263, v264);
          }

          else
          {
            v265 = 0;
            v389 = 0u;
            v390 = 0u;
            v387 = 0u;
            v388 = 0u;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
          }

          v274 = v263 + v265;
          v275 = v86[6];
          if (v275 == 127)
          {
            v278 = *(v274 + 16);
            v279 = *(v274 + 32);
            v280 = *(v274 + 48);
            v281 = *(v274 + 64);
            v282 = *(v274 + 80);
            v283 = *(v274 + 96);
            v284 = *(v274 + 112);
            v375 = *v274;
            v376 = v278;
            v377 = v281;
            v378 = v282;
            v383 = v279;
            v384 = v280;
            v385 = v283;
            v386 = v284;
            v276 = 128;
          }

          else if (v275 == 3)
          {
            v277 = vld1q_dup_f32(v274);
            v375 = v277;
            v376 = v277;
            v377 = v277;
            v378 = v277;
            v383 = v277;
            v384 = v277;
            v385 = v277;
            v386 = v277;
            v276 = 4;
          }

          else if (v86[6])
          {
            v276 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v375, 128, v274, v275);
          }

          else
          {
            v276 = 0;
            v377 = 0u;
            v378 = 0u;
            v375 = 0u;
            v376 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
          }

          v285 = v274 + v276;
          v286 = v86[7];
          if (v286 == 127)
          {
            v288 = *(v285 + 16);
            v289 = *(v285 + 32);
            v290 = *(v285 + 48);
            v291 = *(v285 + 64);
            v292 = *(v285 + 80);
            v293 = *(v285 + 96);
            v294 = *(v285 + 112);
            v391 = *v285;
            v392 = v288;
            v393 = v291;
            v394 = v292;
            v399 = v289;
            v400 = v290;
            v401 = v293;
            v402 = v294;
            v44 = a7;
            v15 = v326;
          }

          else
          {
            v44 = a7;
            v15 = v326;
            if (v286 == 3)
            {
              v287 = vld1q_dup_f32(v285);
              v391 = v287;
              v392 = v287;
              v393 = v287;
              v394 = v287;
              v399 = v287;
              v400 = v287;
              v401 = v287;
              v402 = v287;
            }

            else if (v286)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v391, 128, v285, v286);
            }

            else
            {
              v393 = 0u;
              v394 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v401 = 0u;
              v402 = 0u;
            }
          }

          v295 = v334;
          v45 = v41 + 1;
          if (v334)
          {
            v296 = 0;
            v297 = &v339 + 8 * v332 + v333;
            v298 = v335;
            do
            {
              if (v298)
              {
                v299 = 0;
                v300 = v330 + v331 * v296;
                do
                {
                  *(v300 + v299) = v297->i8[v299];
                  ++v299;
                  v298 = v335;
                }

                while (16 * v335 > v299);
                v295 = v334;
              }

              ++v296;
              v297 += 8;
            }

            while (v296 < v295);
          }

LABEL_50:
          v20 = v41 == v318 >> 3;
          v41 = v45;
        }

        while (!v20);
        v20 = v17++ == v305;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v322 = a8;
  v17 = a8 >> 3;
  v303 = a8 + a10 - 1;
  v305 = v303 >> 3;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  if (*(v16 + 168))
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
  v317 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v305)
  {
    v315 = a7 + a9 - 1;
    v302 = a7 >> 3;
    if (a7 >> 3 <= v315 >> 3)
    {
      v25 = a11;
      v325 = (a5 - 1) >> 3;
      v299 = a5 - 1;
      v308 = (a5 - 1) & 7;
      v300 = (a6 - 1) & 7;
      v301 = (a6 - 1) >> 3;
      v306 = 4 * a11;
      v307 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v313 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v312 = v27;
      v298 = 8 * v19 * v18;
      v323 = v16;
      v314 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v322)
        {
          v29 = v322;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v303 < v28)
        {
          v28 = v303;
        }

        v321 = 8 * v17;
        v311 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v300;
        v310 = v31;
        v33 = v31 != 8;
        v34 = v302;
        v35 = v300 + 1;
        if (v17 != v301)
        {
          v35 = 8;
        }

        v324 = v35;
        if (v17 != v301)
        {
          v32 = v33;
        }

        v309 = v32;
        v320 = a2 + (v29 - v322) * v25;
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

          if (v315 < v38)
          {
            v38 = v315;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v325)
          {
            v42 = v308 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v321 >= v322 && v37 >= a7)
          {
            v44 = v40 != v308;
            if (v34 != v325)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v309;
          }

          if (isLevelTiled)
          {
            v281 = 0;
            v282 = v298 >> (*(v16 + 57) != 0);
            v283 = 1;
            if (v282 <= 63)
            {
              if (v282 > 15)
              {
                if (v282 == 16)
                {
                  v283 = 0;
                  v284 = 0;
                  v285 = 64;
                  v281 = 128;
                }

                else
                {
                  v284 = 1;
                  v285 = 0;
                  if (v282 == 32)
                  {
                    v283 = 0;
                    v284 = 0;
                    v281 = 64;
                    v285 = 64;
                  }
                }
              }

              else if (v282 == 4)
              {
                v283 = 0;
                v284 = 0;
                v285 = 128;
                v281 = 256;
              }

              else
              {
                v284 = 1;
                v285 = 0;
                if (v282 == 8)
                {
                  v283 = 0;
                  v284 = 0;
                  v281 = 128;
                  v285 = 128;
                }
              }
            }

            else if (v282 <= 255)
            {
              if (v282 == 64)
              {
                v283 = 0;
                v284 = 0;
                v285 = 32;
                v281 = 64;
              }

              else
              {
                v284 = 1;
                v285 = 0;
                if (v282 == 128)
                {
                  v283 = 0;
                  v284 = 0;
                  v281 = 32;
                  v285 = 32;
                }
              }
            }

            else if (v282 == 256)
            {
              v283 = 0;
              v284 = 0;
              v285 = 16;
              v281 = 32;
            }

            else if (v282 == 512)
            {
              v283 = 0;
              v284 = 0;
              v281 = 16;
              v285 = 16;
            }

            else
            {
              v284 = 1;
              v285 = 0;
              if (v282 == 1024)
              {
                v283 = 0;
                v285 = 8;
                v281 = 16;
              }
            }

            v286 = (v281 >> 3) - 1;
            if (v283)
            {
              v287 = 0;
            }

            else
            {
              v287 = 32 - __clz(~(-1 << -__clz(v286)));
            }

            v288 = (v285 >> 3) - 1;
            if (v284)
            {
              v289 = 0;
              if (v287)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v289 = 32 - __clz(~(-1 << -__clz(v288)));
              if (v289 | v287)
              {
LABEL_226:
                v290 = 0;
                v291 = 0;
                v292 = v34 & v286;
                v293 = v17 & v288;
                v294 = v287 != 0;
                v295 = v289 != 0;
                v296 = 1;
                do
                {
                  --v287;
                  if (v294)
                  {
                    v291 |= (v296 & v292) << v290++;
                  }

                  else
                  {
                    v287 = 0;
                  }

                  --v289;
                  if (v295)
                  {
                    v291 |= (v296 & v293) << v290++;
                  }

                  else
                  {
                    v289 = 0;
                  }

                  v296 *= 2;
                  --v290;
                  v295 = v289 != 0;
                  v294 = v287 != 0;
                }

                while (v289 | v287);
                v297 = v291 << 10;
                goto LABEL_238;
              }
            }

            v297 = 0;
LABEL_238:
            v52 = v297 + ((v37 / v281 + v321 / v285 * ((v281 + v299) / v281)) << 14);
            goto LABEL_55;
          }

          if (v313)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v312.i8[4];
            v49 = v312.i8[0];
            v50 = v313.i32[1];
            v51 = v313.i32[0];
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v49 = v51 != 0;
              v48 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 10;
          }

          else
          {
            v52 = 0;
          }

LABEL_55:
          v53 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v56 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          if (v58 | v55)
          {
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
          }

          else
          {
            v64 = 0;
          }

          v65 = (a3 + v52);
          if (v317)
          {
            memcpy(__dst, v65, sizeof(__dst));
            v65 = __dst;
          }

          v66 = (a4 + v64);
          v67 = v320 + 16 * (v39 - a7);
          if (v43 & 1 | (v42 < 8u) || v324 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v323;
            block[5] = v65;
            v333 = v42;
            v334 = v324;
            v329 = v311;
            v330 = v39 - v37;
            block[6] = v66;
            v327 = v67;
            v25 = a11;
            v328 = a11;
            v331 = v310;
            v332 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v323 + 8) + 16552), block);
              a7 = v314;
              v16 = v323;
              v36 = v34 + 1;
            }

            else
            {
              v71 = *v66;
              a7 = v314;
              if (v71 == 127)
              {
                v192 = v65[1];
                v193 = v65[2];
                v194 = v65[3];
                v195 = v65[4];
                v196 = v65[5];
                v197 = v65[6];
                v198 = v65[7];
                v336 = *v65;
                v337 = v192;
                v338 = v195;
                v339 = v196;
                v344 = v193;
                v345 = v194;
                v346 = v197;
                v347 = v198;
                v72 = 128;
              }

              else if (v71 == 3)
              {
                v191 = vld1q_dup_f32(v65->i32);
                v336 = v191;
                v337 = v191;
                v338 = v191;
                v339 = v191;
                v344 = v191;
                v345 = v191;
                v346 = v191;
                v347 = v191;
                v72 = 4;
              }

              else if (*v66)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 128, v65, v71);
              }

              else
              {
                v72 = 0;
                v339 = 0u;
                v338 = 0u;
                v337 = 0u;
                v336 = 0u;
                v344 = 0u;
                v345 = 0u;
                v346 = 0u;
                v347 = 0u;
              }

              v199 = v65->i64 + v72;
              v200 = v66[1];
              if (v200 == 127)
              {
                v203 = *(v199 + 16);
                v204 = *(v199 + 32);
                v205 = *(v199 + 48);
                v206 = *(v199 + 64);
                v207 = *(v199 + 80);
                v208 = *(v199 + 96);
                v209 = *(v199 + 112);
                v352 = *v199;
                v353 = v203;
                v354 = v206;
                v355 = v207;
                v360 = v204;
                v361 = v205;
                v362 = v208;
                v363 = v209;
                v201 = 128;
              }

              else if (v200 == 3)
              {
                v202 = vld1q_dup_f32(v199);
                v352 = v202;
                v353 = v202;
                v354 = v202;
                v355 = v202;
                v360 = v202;
                v361 = v202;
                v362 = v202;
                v363 = v202;
                v201 = 4;
              }

              else if (v66[1])
              {
                v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v199, v200);
              }

              else
              {
                v201 = 0;
                v354 = 0u;
                v355 = 0u;
                v352 = 0u;
                v353 = 0u;
                v360 = 0u;
                v361 = 0u;
                v362 = 0u;
                v363 = 0u;
              }

              v210 = v199 + v201;
              v211 = v66[2];
              if (v211 == 127)
              {
                v214 = *(v210 + 16);
                v215 = *(v210 + 32);
                v216 = *(v210 + 48);
                v217 = *(v210 + 64);
                v218 = *(v210 + 80);
                v219 = *(v210 + 96);
                v220 = *(v210 + 112);
                v340 = *v210;
                v341 = v214;
                v342 = v217;
                v343 = v218;
                v348 = v215;
                v349 = v216;
                v350 = v219;
                v351 = v220;
                v212 = 128;
              }

              else if (v211 == 3)
              {
                v213 = vld1q_dup_f32(v210);
                v340 = v213;
                v341 = v213;
                v342 = v213;
                v343 = v213;
                v348 = v213;
                v349 = v213;
                v350 = v213;
                v351 = v213;
                v212 = 4;
              }

              else if (v66[2])
              {
                v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 128, v210, v211);
              }

              else
              {
                v212 = 0;
                v342 = 0u;
                v343 = 0u;
                v340 = 0u;
                v341 = 0u;
                v348 = 0u;
                v349 = 0u;
                v350 = 0u;
                v351 = 0u;
              }

              v221 = v210 + v212;
              v222 = v66[3];
              if (v222 == 127)
              {
                v225 = *(v221 + 16);
                v226 = *(v221 + 32);
                v227 = *(v221 + 48);
                v228 = *(v221 + 64);
                v229 = *(v221 + 80);
                v230 = *(v221 + 96);
                v231 = *(v221 + 112);
                v356 = *v221;
                v357 = v225;
                v358 = v228;
                v359 = v229;
                v364 = v226;
                v365 = v227;
                v366 = v230;
                v367 = v231;
                v223 = 128;
              }

              else if (v222 == 3)
              {
                v224 = vld1q_dup_f32(v221);
                v356 = v224;
                v357 = v224;
                v358 = v224;
                v359 = v224;
                v364 = v224;
                v365 = v224;
                v366 = v224;
                v367 = v224;
                v223 = 4;
              }

              else if (v66[3])
              {
                v223 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v221, v222);
              }

              else
              {
                v223 = 0;
                v358 = 0u;
                v359 = 0u;
                v356 = 0u;
                v357 = 0u;
                v364 = 0u;
                v365 = 0u;
                v366 = 0u;
                v367 = 0u;
              }

              v232 = v221 + v223;
              v233 = v66[4];
              if (v233 == 127)
              {
                v236 = *(v232 + 16);
                v237 = *(v232 + 32);
                v238 = *(v232 + 48);
                v239 = *(v232 + 64);
                v240 = *(v232 + 80);
                v241 = *(v232 + 96);
                v242 = *(v232 + 112);
                v368 = *v232;
                v369 = v236;
                v370 = v239;
                v371 = v240;
                v376 = v237;
                v377 = v238;
                v378 = v241;
                v379 = v242;
                v234 = 128;
              }

              else if (v233 == 3)
              {
                v235 = vld1q_dup_f32(v232);
                v368 = v235;
                v369 = v235;
                v370 = v235;
                v371 = v235;
                v376 = v235;
                v377 = v235;
                v378 = v235;
                v379 = v235;
                v234 = 4;
              }

              else if (v66[4])
              {
                v234 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 128, v232, v233);
              }

              else
              {
                v234 = 0;
                v370 = 0u;
                v371 = 0u;
                v368 = 0u;
                v369 = 0u;
                v376 = 0u;
                v377 = 0u;
                v378 = 0u;
                v379 = 0u;
              }

              v243 = v232 + v234;
              v244 = v66[5];
              if (v244 == 127)
              {
                v247 = *(v243 + 16);
                v248 = *(v243 + 32);
                v249 = *(v243 + 48);
                v250 = *(v243 + 64);
                v251 = *(v243 + 80);
                v252 = *(v243 + 96);
                v253 = *(v243 + 112);
                v384 = *v243;
                v385 = v247;
                v386 = v250;
                v387 = v251;
                v392 = v248;
                v393 = v249;
                v394 = v252;
                v395 = v253;
                v245 = 128;
              }

              else if (v244 == 3)
              {
                v246 = vld1q_dup_f32(v243);
                v384 = v246;
                v385 = v246;
                v386 = v246;
                v387 = v246;
                v392 = v246;
                v393 = v246;
                v394 = v246;
                v395 = v246;
                v245 = 4;
              }

              else if (v66[5])
              {
                v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v243, v244);
              }

              else
              {
                v245 = 0;
                v386 = 0u;
                v387 = 0u;
                v384 = 0u;
                v385 = 0u;
                v392 = 0u;
                v393 = 0u;
                v394 = 0u;
                v395 = 0u;
              }

              v254 = v243 + v245;
              v255 = v66[6];
              if (v255 == 127)
              {
                v258 = *(v254 + 16);
                v259 = *(v254 + 32);
                v260 = *(v254 + 48);
                v261 = *(v254 + 64);
                v262 = *(v254 + 80);
                v263 = *(v254 + 96);
                v264 = *(v254 + 112);
                v372 = *v254;
                v373 = v258;
                v374 = v261;
                v375 = v262;
                v380 = v259;
                v381 = v260;
                v382 = v263;
                v383 = v264;
                v256 = 128;
              }

              else if (v255 == 3)
              {
                v257 = vld1q_dup_f32(v254);
                v372 = v257;
                v373 = v257;
                v374 = v257;
                v375 = v257;
                v380 = v257;
                v381 = v257;
                v382 = v257;
                v383 = v257;
                v256 = 4;
              }

              else if (v66[6])
              {
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 128, v254, v255);
              }

              else
              {
                v256 = 0;
                v374 = 0u;
                v375 = 0u;
                v372 = 0u;
                v373 = 0u;
                v380 = 0u;
                v381 = 0u;
                v382 = 0u;
                v383 = 0u;
              }

              v265 = v254 + v256;
              v266 = v66[7];
              if (v266 == 127)
              {
                v268 = *(v265 + 16);
                v269 = *(v265 + 32);
                v270 = *(v265 + 48);
                v271 = *(v265 + 64);
                v272 = *(v265 + 80);
                v273 = *(v265 + 96);
                v274 = *(v265 + 112);
                v388 = *v265;
                v389 = v268;
                v390 = v271;
                v391 = v272;
                v396 = v269;
                v397 = v270;
                v398 = v273;
                v399 = v274;
                v16 = v323;
                v36 = v34 + 1;
              }

              else
              {
                v16 = v323;
                v36 = v34 + 1;
                if (v266 == 3)
                {
                  v267 = vld1q_dup_f32(v265);
                  v388 = v267;
                  v389 = v267;
                  v390 = v267;
                  v391 = v267;
                  v396 = v267;
                  v397 = v267;
                  v398 = v267;
                  v399 = v267;
                }

                else if (v266)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v265, v266);
                }

                else
                {
                  v390 = 0u;
                  v391 = 0u;
                  v388 = 0u;
                  v389 = 0u;
                  v396 = 0u;
                  v397 = 0u;
                  v398 = 0u;
                  v399 = 0u;
                }
              }

              v275 = v331;
              if (v331)
              {
                v276 = 0;
                v277 = &v336 + 8 * v329 + v330;
                v278 = v332;
                do
                {
                  if (v278)
                  {
                    v279 = 0;
                    v280 = v327 + v328 * v276;
                    do
                    {
                      *(v280 + v279) = v277->i8[v279];
                      ++v279;
                      v278 = v332;
                    }

                    while (16 * v332 > v279);
                    v275 = v331;
                  }

                  ++v276;
                  v277 += 8;
                }

                while (v276 < v275);
              }
            }
          }

          else
          {
            v68 = *v66;
            if (v68 == 127)
            {
              v75 = v65[1];
              v76 = v65[2];
              v77 = v65[3];
              v78 = v65[4];
              v79 = v65[5];
              v80 = v65[6];
              v81 = v65[7];
              v25 = a11;
              *v67 = *v65;
              *(v67 + 16) = v75;
              v82 = (v67 + a11);
              *(v67 + 32) = v78;
              *(v67 + 48) = v79;
              *v82 = v76;
              v82[1] = v77;
              v83 = (v67 + a11 + 32);
              *v83 = v80;
              v83[1] = v81;
              v69 = 128;
            }

            else
            {
              v25 = a11;
              if (v68 == 3)
              {
                v73 = vld1q_dup_f32(v65->i32);
                *v67 = v73;
                *(v67 + 16) = v73;
                *(v67 + 32) = v73;
                *(v67 + 48) = v73;
                v74 = (v67 + a11);
                *v74 = v73;
                v74[1] = v73;
                v74[2] = v73;
                v74[3] = v73;
                v69 = 4;
              }

              else if (*v66)
              {
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
              }

              else
              {
                v69 = 0;
                *(v67 + 32) = 0u;
                *(v67 + 48) = 0u;
                *v67 = 0u;
                *(v67 + 16) = 0u;
                v70 = (v67 + a11);
                v70[2] = 0u;
                v70[3] = 0u;
                *v70 = 0u;
                v70[1] = 0u;
              }
            }

            v84 = v65->i64 + v69;
            v85 = (v67 + v307);
            v86 = v66[1];
            if (v86 == 127)
            {
              v91 = *(v84 + 16);
              v92 = *(v84 + 32);
              v93 = *(v84 + 48);
              v94 = *(v84 + 64);
              v95 = *(v84 + 80);
              v96 = *(v84 + 96);
              v97 = *(v84 + 112);
              *v85 = *v84;
              v85[1] = v91;
              v98 = (v85->f32 + v25);
              v85[2] = v94;
              v85[3] = v95;
              *v98 = v92;
              v98[1] = v93;
              v99 = (v85[2].f32 + v25);
              *v99 = v96;
              v99[1] = v97;
              v87 = 128;
            }

            else if (v86 == 3)
            {
              v89 = vld1q_dup_f32(v84);
              *v85 = v89;
              v85[1] = v89;
              v85[2] = v89;
              v85[3] = v89;
              v90 = (v85 + v25);
              *v90 = v89;
              v90[1] = v89;
              v90[2] = v89;
              v90[3] = v89;
              v87 = 4;
            }

            else if (v66[1])
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v307), v25, v84, v86);
            }

            else
            {
              v87 = 0;
              v85[2] = 0u;
              v85[3] = 0u;
              *v85 = 0u;
              v85[1] = 0u;
              v88 = (v85->f32 + v25);
              v88[2] = 0u;
              v88[3] = 0u;
              *v88 = 0u;
              v88[1] = 0u;
            }

            v100 = v84 + v87;
            v101 = (v67 + 64);
            v102 = v66[2];
            if (v102 == 127)
            {
              v107 = *(v100 + 16);
              v108 = *(v100 + 32);
              v109 = *(v100 + 48);
              v110 = *(v100 + 64);
              v111 = *(v100 + 80);
              v112 = *(v100 + 96);
              v113 = *(v100 + 112);
              *v101 = *v100;
              *(v67 + 80) = v107;
              v114 = &v101->i8[v25];
              *(v67 + 96) = v110;
              *(v67 + 112) = v111;
              *v114 = v108;
              *(v114 + 1) = v109;
              v114 += 32;
              *v114 = v112;
              *(v114 + 1) = v113;
              v103 = 128;
            }

            else if (v102 == 3)
            {
              v105 = vld1q_dup_f32(v100);
              *(v67 + 64) = v105;
              *(v67 + 80) = v105;
              *(v67 + 96) = v105;
              *(v67 + 112) = v105;
              v106 = &v101->i8[v25];
              *v106 = v105;
              v106[1] = v105;
              v106[2] = v105;
              v106[3] = v105;
              v103 = 4;
            }

            else if (v66[2])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v25, v100, v102);
            }

            else
            {
              v103 = 0;
              *(v67 + 96) = 0u;
              *(v67 + 112) = 0u;
              *v101 = 0u;
              *(v67 + 80) = 0u;
              v104 = &v101->i8[v25];
              *(v104 + 2) = 0u;
              *(v104 + 3) = 0u;
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v115 = v100 + v103;
            v116 = &v85[4];
            v117 = v66[3];
            if (v117 == 127)
            {
              v122 = *(v115 + 16);
              v123 = *(v115 + 32);
              v124 = *(v115 + 48);
              v125 = *(v115 + 64);
              v126 = *(v115 + 80);
              v127 = *(v115 + 96);
              v128 = *(v115 + 112);
              *v116 = *v115;
              v85[5] = v122;
              v129 = &v116->i8[v25];
              v85[6] = v125;
              v85[7] = v126;
              *v129 = v123;
              *(v129 + 1) = v124;
              v129 += 32;
              *v129 = v127;
              *(v129 + 1) = v128;
              v118 = 128;
            }

            else if (v117 == 3)
            {
              v120 = vld1q_dup_f32(v115);
              v85[4] = v120;
              v85[5] = v120;
              v85[6] = v120;
              v85[7] = v120;
              v121 = &v116->i8[v25];
              *v121 = v120;
              v121[1] = v120;
              v121[2] = v120;
              v121[3] = v120;
              v118 = 4;
            }

            else if (v66[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
            }

            else
            {
              v118 = 0;
              v85[6] = 0u;
              v85[7] = 0u;
              *v116 = 0u;
              v85[5] = 0u;
              v119 = &v116->i8[v25];
              *(v119 + 2) = 0u;
              *(v119 + 3) = 0u;
              *v119 = 0u;
              *(v119 + 1) = 0u;
            }

            v130 = v115 + v118;
            v131 = (v67 + v306);
            v132 = v66[4];
            if (v132 == 127)
            {
              v137 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              v140 = *(v130 + 64);
              v141 = *(v130 + 80);
              v142 = *(v130 + 96);
              v143 = *(v130 + 112);
              *v131 = *v130;
              v131[1] = v137;
              v144 = (v131->f32 + v25);
              v131[2] = v140;
              v131[3] = v141;
              *v144 = v138;
              v144[1] = v139;
              v145 = (v131[2].f32 + v25);
              *v145 = v142;
              v145[1] = v143;
              v133 = 128;
            }

            else if (v132 == 3)
            {
              v135 = vld1q_dup_f32(v130);
              *v131 = v135;
              v131[1] = v135;
              v131[2] = v135;
              v131[3] = v135;
              v136 = (v131 + v25);
              *v136 = v135;
              v136[1] = v135;
              v136[2] = v135;
              v136[3] = v135;
              v133 = 4;
            }

            else if (v66[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v306), v25, v130, v132);
            }

            else
            {
              v133 = 0;
              v131[2] = 0u;
              v131[3] = 0u;
              *v131 = 0u;
              v131[1] = 0u;
              v134 = (v131->f32 + v25);
              v134[2] = 0u;
              v134[3] = 0u;
              *v134 = 0u;
              v134[1] = 0u;
            }

            v146 = v130 + v133;
            v147 = v67 + 6 * a11;
            v148 = v66[5];
            if (v148 == 127)
            {
              v153 = *(v146 + 16);
              v154 = *(v146 + 32);
              v155 = *(v146 + 48);
              v156 = *(v146 + 64);
              v157 = *(v146 + 80);
              v158 = *(v146 + 96);
              v159 = *(v146 + 112);
              *v147 = *v146;
              *(v147 + 16) = v153;
              v160 = (v147 + v25);
              *(v147 + 32) = v156;
              *(v147 + 48) = v157;
              *v160 = v154;
              v160[1] = v155;
              v161 = (v147 + v25 + 32);
              *v161 = v158;
              v161[1] = v159;
              v149 = 128;
            }

            else if (v148 == 3)
            {
              v151 = vld1q_dup_f32(v146);
              *v147 = v151;
              *(v147 + 16) = v151;
              *(v147 + 32) = v151;
              *(v147 + 48) = v151;
              v152 = (v147 + v25);
              *v152 = v151;
              v152[1] = v151;
              v152[2] = v151;
              v152[3] = v151;
              v149 = 4;
            }

            else if (v66[5])
            {
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v25, v146, v148);
            }

            else
            {
              v149 = 0;
              *(v147 + 32) = 0u;
              *(v147 + 48) = 0u;
              *v147 = 0u;
              *(v147 + 16) = 0u;
              v150 = (v147 + v25);
              v150[2] = 0u;
              v150[3] = 0u;
              *v150 = 0u;
              v150[1] = 0u;
            }

            v162 = v146 + v149;
            v163 = &v131[4];
            v164 = v66[6];
            if (v164 == 127)
            {
              v169 = *(v162 + 16);
              v170 = *(v162 + 32);
              v171 = *(v162 + 48);
              v172 = *(v162 + 64);
              v173 = *(v162 + 80);
              v174 = *(v162 + 96);
              v175 = *(v162 + 112);
              *v163 = *v162;
              v131[5] = v169;
              v176 = &v163->i8[v25];
              v131[6] = v172;
              v131[7] = v173;
              *v176 = v170;
              *(v176 + 1) = v171;
              v176 += 32;
              *v176 = v174;
              *(v176 + 1) = v175;
              v165 = 128;
            }

            else if (v164 == 3)
            {
              v167 = vld1q_dup_f32(v162);
              v131[4] = v167;
              v131[5] = v167;
              v131[6] = v167;
              v131[7] = v167;
              v168 = &v163->i8[v25];
              *v168 = v167;
              v168[1] = v167;
              v168[2] = v167;
              v168[3] = v167;
              v165 = 4;
            }

            else if (v66[6])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v25, v162, v164);
            }

            else
            {
              v165 = 0;
              v131[6] = 0u;
              v131[7] = 0u;
              *v163 = 0u;
              v131[5] = 0u;
              v166 = &v163->i8[v25];
              *(v166 + 2) = 0u;
              *(v166 + 3) = 0u;
              *v166 = 0u;
              *(v166 + 1) = 0u;
            }

            v36 = v34 + 1;
            v177 = v162 + v165;
            v178 = (v147 + 64);
            v179 = v66[7];
            if (v179 == 127)
            {
              v183 = *(v177 + 16);
              v184 = *(v177 + 32);
              v185 = *(v177 + 48);
              v186 = *(v177 + 64);
              v187 = *(v177 + 80);
              v188 = *(v177 + 96);
              v189 = *(v177 + 112);
              *v178 = *v177;
              *(v147 + 80) = v183;
              v190 = &v178->i8[v25];
              *(v147 + 96) = v186;
              *(v147 + 112) = v187;
              *v190 = v184;
              *(v190 + 1) = v185;
              v190 += 32;
              *v190 = v188;
              *(v190 + 1) = v189;
              a7 = v314;
              v16 = v323;
            }

            else
            {
              v16 = v323;
              if (v179 == 3)
              {
                v181 = vld1q_dup_f32(v177);
                *(v147 + 64) = v181;
                *(v147 + 80) = v181;
                *(v147 + 96) = v181;
                *(v147 + 112) = v181;
                v182 = &v178->i8[v25];
                *v182 = v181;
                v182[1] = v181;
                v182[2] = v181;
                v182[3] = v181;
              }

              else if (v179)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v25, v177, v179);
              }

              else
              {
                *(v147 + 96) = 0u;
                *(v147 + 112) = 0u;
                *v178 = 0u;
                *(v147 + 80) = 0u;
                v180 = &v178->i8[v25];
                *(v180 + 2) = 0u;
                *(v180 + 3) = 0u;
                *v180 = 0u;
                *(v180 + 1) = 0u;
              }

              a7 = v314;
            }
          }

          v21 = v34 == v315 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v305;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v322 = a8;
  v17 = a8 >> 3;
  v303 = a8 + a10 - 1;
  v305 = v303 >> 3;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  if (*(v16 + 168))
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
  v317 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v305)
  {
    v315 = a7 + a9 - 1;
    v302 = a7 >> 3;
    if (a7 >> 3 <= v315 >> 3)
    {
      v25 = a11;
      v325 = (a5 - 1) >> 3;
      v299 = a5 - 1;
      v308 = (a5 - 1) & 7;
      v300 = (a6 - 1) & 7;
      v301 = (a6 - 1) >> 3;
      v306 = 4 * a11;
      v307 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v313 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v312 = v27;
      v298 = 8 * v19 * v18;
      v323 = v16;
      v314 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v322)
        {
          v29 = v322;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v303 < v28)
        {
          v28 = v303;
        }

        v321 = 8 * v17;
        v311 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v300;
        v310 = v31;
        v33 = v31 != 8;
        v34 = v302;
        v35 = v300 + 1;
        if (v17 != v301)
        {
          v35 = 8;
        }

        v324 = v35;
        if (v17 != v301)
        {
          v32 = v33;
        }

        v309 = v32;
        v320 = a2 + (v29 - v322) * v25;
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

          if (v315 < v38)
          {
            v38 = v315;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v325)
          {
            v42 = v308 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v321 >= v322 && v37 >= a7)
          {
            v44 = v40 != v308;
            if (v34 != v325)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v309;
          }

          if (isLevelTiled)
          {
            v281 = 0;
            v282 = v298 >> (*(v16 + 57) != 0);
            v283 = 1;
            if (v282 <= 63)
            {
              if (v282 > 15)
              {
                if (v282 == 16)
                {
                  v283 = 0;
                  v284 = 0;
                  v285 = 64;
                  v281 = 128;
                }

                else
                {
                  v284 = 1;
                  v285 = 0;
                  if (v282 == 32)
                  {
                    v283 = 0;
                    v284 = 0;
                    v281 = 64;
                    v285 = 64;
                  }
                }
              }

              else if (v282 == 4)
              {
                v283 = 0;
                v284 = 0;
                v285 = 128;
                v281 = 256;
              }

              else
              {
                v284 = 1;
                v285 = 0;
                if (v282 == 8)
                {
                  v283 = 0;
                  v284 = 0;
                  v281 = 128;
                  v285 = 128;
                }
              }
            }

            else if (v282 <= 255)
            {
              if (v282 == 64)
              {
                v283 = 0;
                v284 = 0;
                v285 = 32;
                v281 = 64;
              }

              else
              {
                v284 = 1;
                v285 = 0;
                if (v282 == 128)
                {
                  v283 = 0;
                  v284 = 0;
                  v281 = 32;
                  v285 = 32;
                }
              }
            }

            else if (v282 == 256)
            {
              v283 = 0;
              v284 = 0;
              v285 = 16;
              v281 = 32;
            }

            else if (v282 == 512)
            {
              v283 = 0;
              v284 = 0;
              v281 = 16;
              v285 = 16;
            }

            else
            {
              v284 = 1;
              v285 = 0;
              if (v282 == 1024)
              {
                v283 = 0;
                v285 = 8;
                v281 = 16;
              }
            }

            v286 = (v281 >> 3) - 1;
            if (v283)
            {
              v287 = 0;
            }

            else
            {
              v287 = 32 - __clz(~(-1 << -__clz(v286)));
            }

            v288 = (v285 >> 3) - 1;
            if (v284)
            {
              v289 = 0;
              if (v287)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v289 = 32 - __clz(~(-1 << -__clz(v288)));
              if (v289 | v287)
              {
LABEL_226:
                v290 = 0;
                v291 = 0;
                v292 = v34 & v286;
                v293 = v17 & v288;
                v294 = v287 != 0;
                v295 = v289 != 0;
                v296 = 1;
                do
                {
                  --v287;
                  if (v294)
                  {
                    v291 |= (v296 & v292) << v290++;
                  }

                  else
                  {
                    v287 = 0;
                  }

                  --v289;
                  if (v295)
                  {
                    v291 |= (v296 & v293) << v290++;
                  }

                  else
                  {
                    v289 = 0;
                  }

                  v296 *= 2;
                  --v290;
                  v295 = v289 != 0;
                  v294 = v287 != 0;
                }

                while (v289 | v287);
                v297 = v291 << 10;
                goto LABEL_238;
              }
            }

            v297 = 0;
LABEL_238:
            v52 = v297 + ((v37 / v281 + v321 / v285 * ((v281 + v299) / v281)) << 14);
            goto LABEL_55;
          }

          if (v313)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v312.i8[4];
            v49 = v312.i8[0];
            v50 = v313.i32[1];
            v51 = v313.i32[0];
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v49 = v51 != 0;
              v48 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 10;
          }

          else
          {
            v52 = 0;
          }

LABEL_55:
          v53 = *(v16 + 128) >> (*(v16 + 144) + a12);
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

          v56 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          if (v58 | v55)
          {
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
          }

          else
          {
            v64 = 0;
          }

          v65 = (a3 + v52);
          if (v317)
          {
            memcpy(__dst, v65, sizeof(__dst));
            v65 = __dst;
          }

          v66 = (a4 + v64);
          v67 = v320 + 16 * (v39 - a7);
          if (v43 & 1 | (v42 < 8u) || v324 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v323;
            block[5] = v65;
            v333 = v42;
            v334 = v324;
            v329 = v311;
            v330 = v39 - v37;
            block[6] = v66;
            v327 = v67;
            v25 = a11;
            v328 = a11;
            v331 = v310;
            v332 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v323 + 8) + 16552), block);
              a7 = v314;
              v16 = v323;
              v36 = v34 + 1;
            }

            else
            {
              v71 = *v66;
              a7 = v314;
              if (v71 == 127)
              {
                v192 = v65[1];
                v193 = v65[2];
                v194 = v65[3];
                v195 = v65[4];
                v196 = v65[5];
                v197 = v65[6];
                v198 = v65[7];
                v336 = *v65;
                v337 = v192;
                v338 = v195;
                v339 = v196;
                v344 = v193;
                v345 = v194;
                v346 = v197;
                v347 = v198;
                v72 = 128;
              }

              else if (v71 == 3)
              {
                v191 = vld1q_dup_f32(v65->i32);
                v336 = v191;
                v337 = v191;
                v338 = v191;
                v339 = v191;
                v344 = v191;
                v345 = v191;
                v346 = v191;
                v347 = v191;
                v72 = 4;
              }

              else if (*v66)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 128, v65, v71);
              }

              else
              {
                v72 = 0;
                v339 = 0u;
                v338 = 0u;
                v337 = 0u;
                v336 = 0u;
                v344 = 0u;
                v345 = 0u;
                v346 = 0u;
                v347 = 0u;
              }

              v199 = v65->i64 + v72;
              v200 = v66[1];
              if (v200 == 127)
              {
                v203 = *(v199 + 16);
                v204 = *(v199 + 32);
                v205 = *(v199 + 48);
                v206 = *(v199 + 64);
                v207 = *(v199 + 80);
                v208 = *(v199 + 96);
                v209 = *(v199 + 112);
                v352 = *v199;
                v353 = v203;
                v354 = v206;
                v355 = v207;
                v360 = v204;
                v361 = v205;
                v362 = v208;
                v363 = v209;
                v201 = 128;
              }

              else if (v200 == 3)
              {
                v202 = vld1q_dup_f32(v199);
                v352 = v202;
                v353 = v202;
                v354 = v202;
                v355 = v202;
                v360 = v202;
                v361 = v202;
                v362 = v202;
                v363 = v202;
                v201 = 4;
              }

              else if (v66[1])
              {
                v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v199, v200);
              }

              else
              {
                v201 = 0;
                v354 = 0u;
                v355 = 0u;
                v352 = 0u;
                v353 = 0u;
                v360 = 0u;
                v361 = 0u;
                v362 = 0u;
                v363 = 0u;
              }

              v210 = v199 + v201;
              v211 = v66[2];
              if (v211 == 127)
              {
                v214 = *(v210 + 16);
                v215 = *(v210 + 32);
                v216 = *(v210 + 48);
                v217 = *(v210 + 64);
                v218 = *(v210 + 80);
                v219 = *(v210 + 96);
                v220 = *(v210 + 112);
                v340 = *v210;
                v341 = v214;
                v342 = v217;
                v343 = v218;
                v348 = v215;
                v349 = v216;
                v350 = v219;
                v351 = v220;
                v212 = 128;
              }

              else if (v211 == 3)
              {
                v213 = vld1q_dup_f32(v210);
                v340 = v213;
                v341 = v213;
                v342 = v213;
                v343 = v213;
                v348 = v213;
                v349 = v213;
                v350 = v213;
                v351 = v213;
                v212 = 4;
              }

              else if (v66[2])
              {
                v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 128, v210, v211);
              }

              else
              {
                v212 = 0;
                v342 = 0u;
                v343 = 0u;
                v340 = 0u;
                v341 = 0u;
                v348 = 0u;
                v349 = 0u;
                v350 = 0u;
                v351 = 0u;
              }

              v221 = v210 + v212;
              v222 = v66[3];
              if (v222 == 127)
              {
                v225 = *(v221 + 16);
                v226 = *(v221 + 32);
                v227 = *(v221 + 48);
                v228 = *(v221 + 64);
                v229 = *(v221 + 80);
                v230 = *(v221 + 96);
                v231 = *(v221 + 112);
                v356 = *v221;
                v357 = v225;
                v358 = v228;
                v359 = v229;
                v364 = v226;
                v365 = v227;
                v366 = v230;
                v367 = v231;
                v223 = 128;
              }

              else if (v222 == 3)
              {
                v224 = vld1q_dup_f32(v221);
                v356 = v224;
                v357 = v224;
                v358 = v224;
                v359 = v224;
                v364 = v224;
                v365 = v224;
                v366 = v224;
                v367 = v224;
                v223 = 4;
              }

              else if (v66[3])
              {
                v223 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v221, v222);
              }

              else
              {
                v223 = 0;
                v358 = 0u;
                v359 = 0u;
                v356 = 0u;
                v357 = 0u;
                v364 = 0u;
                v365 = 0u;
                v366 = 0u;
                v367 = 0u;
              }

              v232 = v221 + v223;
              v233 = v66[4];
              if (v233 == 127)
              {
                v236 = *(v232 + 16);
                v237 = *(v232 + 32);
                v238 = *(v232 + 48);
                v239 = *(v232 + 64);
                v240 = *(v232 + 80);
                v241 = *(v232 + 96);
                v242 = *(v232 + 112);
                v368 = *v232;
                v369 = v236;
                v370 = v239;
                v371 = v240;
                v376 = v237;
                v377 = v238;
                v378 = v241;
                v379 = v242;
                v234 = 128;
              }

              else if (v233 == 3)
              {
                v235 = vld1q_dup_f32(v232);
                v368 = v235;
                v369 = v235;
                v370 = v235;
                v371 = v235;
                v376 = v235;
                v377 = v235;
                v378 = v235;
                v379 = v235;
                v234 = 4;
              }

              else if (v66[4])
              {
                v234 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 128, v232, v233);
              }

              else
              {
                v234 = 0;
                v370 = 0u;
                v371 = 0u;
                v368 = 0u;
                v369 = 0u;
                v376 = 0u;
                v377 = 0u;
                v378 = 0u;
                v379 = 0u;
              }

              v243 = v232 + v234;
              v244 = v66[5];
              if (v244 == 127)
              {
                v247 = *(v243 + 16);
                v248 = *(v243 + 32);
                v249 = *(v243 + 48);
                v250 = *(v243 + 64);
                v251 = *(v243 + 80);
                v252 = *(v243 + 96);
                v253 = *(v243 + 112);
                v384 = *v243;
                v385 = v247;
                v386 = v250;
                v387 = v251;
                v392 = v248;
                v393 = v249;
                v394 = v252;
                v395 = v253;
                v245 = 128;
              }

              else if (v244 == 3)
              {
                v246 = vld1q_dup_f32(v243);
                v384 = v246;
                v385 = v246;
                v386 = v246;
                v387 = v246;
                v392 = v246;
                v393 = v246;
                v394 = v246;
                v395 = v246;
                v245 = 4;
              }

              else if (v66[5])
              {
                v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v243, v244);
              }

              else
              {
                v245 = 0;
                v386 = 0u;
                v387 = 0u;
                v384 = 0u;
                v385 = 0u;
                v392 = 0u;
                v393 = 0u;
                v394 = 0u;
                v395 = 0u;
              }

              v254 = v243 + v245;
              v255 = v66[6];
              if (v255 == 127)
              {
                v258 = *(v254 + 16);
                v259 = *(v254 + 32);
                v260 = *(v254 + 48);
                v261 = *(v254 + 64);
                v262 = *(v254 + 80);
                v263 = *(v254 + 96);
                v264 = *(v254 + 112);
                v372 = *v254;
                v373 = v258;
                v374 = v261;
                v375 = v262;
                v380 = v259;
                v381 = v260;
                v382 = v263;
                v383 = v264;
                v256 = 128;
              }

              else if (v255 == 3)
              {
                v257 = vld1q_dup_f32(v254);
                v372 = v257;
                v373 = v257;
                v374 = v257;
                v375 = v257;
                v380 = v257;
                v381 = v257;
                v382 = v257;
                v383 = v257;
                v256 = 4;
              }

              else if (v66[6])
              {
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 128, v254, v255);
              }

              else
              {
                v256 = 0;
                v374 = 0u;
                v375 = 0u;
                v372 = 0u;
                v373 = 0u;
                v380 = 0u;
                v381 = 0u;
                v382 = 0u;
                v383 = 0u;
              }

              v265 = v254 + v256;
              v266 = v66[7];
              if (v266 == 127)
              {
                v268 = *(v265 + 16);
                v269 = *(v265 + 32);
                v270 = *(v265 + 48);
                v271 = *(v265 + 64);
                v272 = *(v265 + 80);
                v273 = *(v265 + 96);
                v274 = *(v265 + 112);
                v388 = *v265;
                v389 = v268;
                v390 = v271;
                v391 = v272;
                v396 = v269;
                v397 = v270;
                v398 = v273;
                v399 = v274;
                v16 = v323;
                v36 = v34 + 1;
              }

              else
              {
                v16 = v323;
                v36 = v34 + 1;
                if (v266 == 3)
                {
                  v267 = vld1q_dup_f32(v265);
                  v388 = v267;
                  v389 = v267;
                  v390 = v267;
                  v391 = v267;
                  v396 = v267;
                  v397 = v267;
                  v398 = v267;
                  v399 = v267;
                }

                else if (v266)
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v265, v266);
                }

                else
                {
                  v390 = 0u;
                  v391 = 0u;
                  v388 = 0u;
                  v389 = 0u;
                  v396 = 0u;
                  v397 = 0u;
                  v398 = 0u;
                  v399 = 0u;
                }
              }

              v275 = v331;
              if (v331)
              {
                v276 = 0;
                v277 = &v336 + 8 * v329 + v330;
                v278 = v332;
                do
                {
                  if (v278)
                  {
                    v279 = 0;
                    v280 = v327 + v328 * v276;
                    do
                    {
                      *(v280 + v279) = v277->i8[v279];
                      ++v279;
                      v278 = v332;
                    }

                    while (16 * v332 > v279);
                    v275 = v331;
                  }

                  ++v276;
                  v277 += 8;
                }

                while (v276 < v275);
              }
            }
          }

          else
          {
            v68 = *v66;
            if (v68 == 127)
            {
              v75 = v65[1];
              v76 = v65[2];
              v77 = v65[3];
              v78 = v65[4];
              v79 = v65[5];
              v80 = v65[6];
              v81 = v65[7];
              v25 = a11;
              *v67 = *v65;
              *(v67 + 16) = v75;
              v82 = (v67 + a11);
              *(v67 + 32) = v78;
              *(v67 + 48) = v79;
              *v82 = v76;
              v82[1] = v77;
              v83 = (v67 + a11 + 32);
              *v83 = v80;
              v83[1] = v81;
              v69 = 128;
            }

            else
            {
              v25 = a11;
              if (v68 == 3)
              {
                v73 = vld1q_dup_f32(v65->i32);
                *v67 = v73;
                *(v67 + 16) = v73;
                *(v67 + 32) = v73;
                *(v67 + 48) = v73;
                v74 = (v67 + a11);
                *v74 = v73;
                v74[1] = v73;
                v74[2] = v73;
                v74[3] = v73;
                v69 = 4;
              }

              else if (*v66)
              {
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
              }

              else
              {
                v69 = 0;
                *(v67 + 32) = 0u;
                *(v67 + 48) = 0u;
                *v67 = 0u;
                *(v67 + 16) = 0u;
                v70 = (v67 + a11);
                v70[2] = 0u;
                v70[3] = 0u;
                *v70 = 0u;
                v70[1] = 0u;
              }
            }

            v84 = v65->i64 + v69;
            v85 = (v67 + v307);
            v86 = v66[1];
            if (v86 == 127)
            {
              v91 = *(v84 + 16);
              v92 = *(v84 + 32);
              v93 = *(v84 + 48);
              v94 = *(v84 + 64);
              v95 = *(v84 + 80);
              v96 = *(v84 + 96);
              v97 = *(v84 + 112);
              *v85 = *v84;
              v85[1] = v91;
              v98 = (v85->f32 + v25);
              v85[2] = v94;
              v85[3] = v95;
              *v98 = v92;
              v98[1] = v93;
              v99 = (v85[2].f32 + v25);
              *v99 = v96;
              v99[1] = v97;
              v87 = 128;
            }

            else if (v86 == 3)
            {
              v89 = vld1q_dup_f32(v84);
              *v85 = v89;
              v85[1] = v89;
              v85[2] = v89;
              v85[3] = v89;
              v90 = (v85 + v25);
              *v90 = v89;
              v90[1] = v89;
              v90[2] = v89;
              v90[3] = v89;
              v87 = 4;
            }

            else if (v66[1])
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v307), v25, v84, v86);
            }

            else
            {
              v87 = 0;
              v85[2] = 0u;
              v85[3] = 0u;
              *v85 = 0u;
              v85[1] = 0u;
              v88 = (v85->f32 + v25);
              v88[2] = 0u;
              v88[3] = 0u;
              *v88 = 0u;
              v88[1] = 0u;
            }

            v100 = v84 + v87;
            v101 = (v67 + 64);
            v102 = v66[2];
            if (v102 == 127)
            {
              v107 = *(v100 + 16);
              v108 = *(v100 + 32);
              v109 = *(v100 + 48);
              v110 = *(v100 + 64);
              v111 = *(v100 + 80);
              v112 = *(v100 + 96);
              v113 = *(v100 + 112);
              *v101 = *v100;
              *(v67 + 80) = v107;
              v114 = &v101->i8[v25];
              *(v67 + 96) = v110;
              *(v67 + 112) = v111;
              *v114 = v108;
              *(v114 + 1) = v109;
              v114 += 32;
              *v114 = v112;
              *(v114 + 1) = v113;
              v103 = 128;
            }

            else if (v102 == 3)
            {
              v105 = vld1q_dup_f32(v100);
              *(v67 + 64) = v105;
              *(v67 + 80) = v105;
              *(v67 + 96) = v105;
              *(v67 + 112) = v105;
              v106 = &v101->i8[v25];
              *v106 = v105;
              v106[1] = v105;
              v106[2] = v105;
              v106[3] = v105;
              v103 = 4;
            }

            else if (v66[2])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v25, v100, v102);
            }

            else
            {
              v103 = 0;
              *(v67 + 96) = 0u;
              *(v67 + 112) = 0u;
              *v101 = 0u;
              *(v67 + 80) = 0u;
              v104 = &v101->i8[v25];
              *(v104 + 2) = 0u;
              *(v104 + 3) = 0u;
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v115 = v100 + v103;
            v116 = &v85[4];
            v117 = v66[3];
            if (v117 == 127)
            {
              v122 = *(v115 + 16);
              v123 = *(v115 + 32);
              v124 = *(v115 + 48);
              v125 = *(v115 + 64);
              v126 = *(v115 + 80);
              v127 = *(v115 + 96);
              v128 = *(v115 + 112);
              *v116 = *v115;
              v85[5] = v122;
              v129 = &v116->i8[v25];
              v85[6] = v125;
              v85[7] = v126;
              *v129 = v123;
              *(v129 + 1) = v124;
              v129 += 32;
              *v129 = v127;
              *(v129 + 1) = v128;
              v118 = 128;
            }

            else if (v117 == 3)
            {
              v120 = vld1q_dup_f32(v115);
              v85[4] = v120;
              v85[5] = v120;
              v85[6] = v120;
              v85[7] = v120;
              v121 = &v116->i8[v25];
              *v121 = v120;
              v121[1] = v120;
              v121[2] = v120;
              v121[3] = v120;
              v118 = 4;
            }

            else if (v66[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
            }

            else
            {
              v118 = 0;
              v85[6] = 0u;
              v85[7] = 0u;
              *v116 = 0u;
              v85[5] = 0u;
              v119 = &v116->i8[v25];
              *(v119 + 2) = 0u;
              *(v119 + 3) = 0u;
              *v119 = 0u;
              *(v119 + 1) = 0u;
            }

            v130 = v115 + v118;
            v131 = (v67 + v306);
            v132 = v66[4];
            if (v132 == 127)
            {
              v137 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              v140 = *(v130 + 64);
              v141 = *(v130 + 80);
              v142 = *(v130 + 96);
              v143 = *(v130 + 112);
              *v131 = *v130;
              v131[1] = v137;
              v144 = (v131->f32 + v25);
              v131[2] = v140;
              v131[3] = v141;
              *v144 = v138;
              v144[1] = v139;
              v145 = (v131[2].f32 + v25);
              *v145 = v142;
              v145[1] = v143;
              v133 = 128;
            }

            else if (v132 == 3)
            {
              v135 = vld1q_dup_f32(v130);
              *v131 = v135;
              v131[1] = v135;
              v131[2] = v135;
              v131[3] = v135;
              v136 = (v131 + v25);
              *v136 = v135;
              v136[1] = v135;
              v136[2] = v135;
              v136[3] = v135;
              v133 = 4;
            }

            else if (v66[4])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v306), v25, v130, v132);
            }

            else
            {
              v133 = 0;
              v131[2] = 0u;
              v131[3] = 0u;
              *v131 = 0u;
              v131[1] = 0u;
              v134 = (v131->f32 + v25);
              v134[2] = 0u;
              v134[3] = 0u;
              *v134 = 0u;
              v134[1] = 0u;
            }

            v146 = v130 + v133;
            v147 = v67 + 6 * a11;
            v148 = v66[5];
            if (v148 == 127)
            {
              v153 = *(v146 + 16);
              v154 = *(v146 + 32);
              v155 = *(v146 + 48);
              v156 = *(v146 + 64);
              v157 = *(v146 + 80);
              v158 = *(v146 + 96);
              v159 = *(v146 + 112);
              *v147 = *v146;
              *(v147 + 16) = v153;
              v160 = (v147 + v25);
              *(v147 + 32) = v156;
              *(v147 + 48) = v157;
              *v160 = v154;
              v160[1] = v155;
              v161 = (v147 + v25 + 32);
              *v161 = v158;
              v161[1] = v159;
              v149 = 128;
            }

            else if (v148 == 3)
            {
              v151 = vld1q_dup_f32(v146);
              *v147 = v151;
              *(v147 + 16) = v151;
              *(v147 + 32) = v151;
              *(v147 + 48) = v151;
              v152 = (v147 + v25);
              *v152 = v151;
              v152[1] = v151;
              v152[2] = v151;
              v152[3] = v151;
              v149 = 4;
            }

            else if (v66[5])
            {
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v25, v146, v148);
            }

            else
            {
              v149 = 0;
              *(v147 + 32) = 0u;
              *(v147 + 48) = 0u;
              *v147 = 0u;
              *(v147 + 16) = 0u;
              v150 = (v147 + v25);
              v150[2] = 0u;
              v150[3] = 0u;
              *v150 = 0u;
              v150[1] = 0u;
            }

            v162 = v146 + v149;
            v163 = &v131[4];
            v164 = v66[6];
            if (v164 == 127)
            {
              v169 = *(v162 + 16);
              v170 = *(v162 + 32);
              v171 = *(v162 + 48);
              v172 = *(v162 + 64);
              v173 = *(v162 + 80);
              v174 = *(v162 + 96);
              v175 = *(v162 + 112);
              *v163 = *v162;
              v131[5] = v169;
              v176 = &v163->i8[v25];
              v131[6] = v172;
              v131[7] = v173;
              *v176 = v170;
              *(v176 + 1) = v171;
              v176 += 32;
              *v176 = v174;
              *(v176 + 1) = v175;
              v165 = 128;
            }

            else if (v164 == 3)
            {
              v167 = vld1q_dup_f32(v162);
              v131[4] = v167;
              v131[5] = v167;
              v131[6] = v167;
              v131[7] = v167;
              v168 = &v163->i8[v25];
              *v168 = v167;
              v168[1] = v167;
              v168[2] = v167;
              v168[3] = v167;
              v165 = 4;
            }

            else if (v66[6])
            {
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v25, v162, v164);
            }

            else
            {
              v165 = 0;
              v131[6] = 0u;
              v131[7] = 0u;
              *v163 = 0u;
              v131[5] = 0u;
              v166 = &v163->i8[v25];
              *(v166 + 2) = 0u;
              *(v166 + 3) = 0u;
              *v166 = 0u;
              *(v166 + 1) = 0u;
            }

            v36 = v34 + 1;
            v177 = v162 + v165;
            v178 = (v147 + 64);
            v179 = v66[7];
            if (v179 == 127)
            {
              v183 = *(v177 + 16);
              v184 = *(v177 + 32);
              v185 = *(v177 + 48);
              v186 = *(v177 + 64);
              v187 = *(v177 + 80);
              v188 = *(v177 + 96);
              v189 = *(v177 + 112);
              *v178 = *v177;
              *(v147 + 80) = v183;
              v190 = &v178->i8[v25];
              *(v147 + 96) = v186;
              *(v147 + 112) = v187;
              *v190 = v184;
              *(v190 + 1) = v185;
              v190 += 32;
              *v190 = v188;
              *(v190 + 1) = v189;
              a7 = v314;
              v16 = v323;
            }

            else
            {
              v16 = v323;
              if (v179 == 3)
              {
                v181 = vld1q_dup_f32(v177);
                *(v147 + 64) = v181;
                *(v147 + 80) = v181;
                *(v147 + 96) = v181;
                *(v147 + 112) = v181;
                v182 = &v178->i8[v25];
                *v182 = v181;
                v182[1] = v181;
                v182[2] = v181;
                v182[3] = v181;
              }

              else if (v179)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v25, v177, v179);
              }

              else
              {
                *(v147 + 96) = 0u;
                *(v147 + 112) = 0u;
                *v178 = 0u;
                *(v147 + 80) = 0u;
                v180 = &v178->i8[v25];
                *(v180 + 2) = 0u;
                *(v180 + 3) = 0u;
                *v180 = 0u;
                *(v180 + 1) = 0u;
              }

              a7 = v314;
            }
          }

          v21 = v34 == v315 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v305;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v254 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v189 = a8 + a10 - 1;
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
  v188 = v189 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v204 = v23;
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
      v203 = 0;
LABEL_32:
      v200 = v25 - 3;
      v192 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v186 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v203 = v30 >= v24;
    goto LABEL_32;
  }

  v203 = 0;
  v186 = 0;
  v192 = 0;
  v200 = 0;
LABEL_33:
  if (v17 <= v188)
  {
    v202 = a7 + a9 - 1;
    if (a7 >> 3 <= v202 >> 3)
    {
      v32 = a11;
      v211 = v18 >> 3;
      v196 = v18 & 7;
      v201 = (v18 & 7) + 1;
      v184 = v19 & 7;
      v185 = v19 >> 3;
      v194 = 4 * a11;
      v195 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      v35.i64[0] = -1;
      v36.i64[0] = 0x2000000020;
      *v37.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v191 = v37.i64[0];
      v193 = v37.i32[0] | v37.i32[1];
      v190 = v34.i64[0];
      v209 = v15;
      do
      {
        v38 = (8 * v17) | 7;
        if (8 * v17 <= a8)
        {
          v39 = a8;
        }

        else
        {
          v39 = 8 * v17;
        }

        if (v189 < v38)
        {
          v38 = a8 + a10 - 1;
        }

        v199 = v39 - 8 * v17;
        v40 = v38 - v39;
        v41 = v40 + 1;
        v42 = v40 != v184;
        v198 = v41;
        v43 = v41 != 8;
        v44 = a7 >> 3;
        v45 = v184 + 1;
        if (v17 != v185)
        {
          v45 = 8;
        }

        v210 = v45;
        if (v17 != v185)
        {
          v42 = v43;
        }

        v197 = v42;
        v207 = a2 + (v39 - a8) * v32;
        v46 = a7;
        do
        {
          v48 = 8 * v44;
          v49 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= v46)
          {
            v50 = v46;
          }

          else
          {
            v50 = 8 * v44;
          }

          if (v202 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v44 == v211)
          {
            v53 = v201;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (8 * v17 >= a8 && v48 >= v46)
          {
            v55 = v51 != v196;
            if (v44 != v211)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v197;
          }

          if (v203)
          {
            if (v200 | v192)
            {
              v56 = 0;
              v57 = 0;
              v58 = v192 != 0;
              v59 = 1;
              v61 = v200 != 0;
              v60 = v192;
              v62 = v200;
              do
              {
                --v62;
                if (v61)
                {
                  v57 |= (v44 & ~(-1 << v200) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                --v60;
                if (v58)
                {
                  v57 |= (v17 & ~(-1 << v192) & v59) << v56++;
                }

                else
                {
                  v60 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v60 != 0;
                v61 = v62 != 0;
              }

              while (v60 | v62);
              v63 = v57 << 9;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(v15 + 336) * ((v44 >> v200) + (v17 >> v192) * v186);
          }

          else if (v193)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v190;
            v68 = BYTE4(v190);
            v70 = v191;
            v69 = HIDWORD(v191);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v44) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v17) << v64++;
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
            v71 = v65 << 9;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          v75 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v79 |= (v82 & v44) << v78++;
            }

            else
            {
              v74 = 0;
            }

            --v77;
            if (v81)
            {
              v79 |= (v82 & v17) << v78++;
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
          if (v204)
          {
            v85 = v52;
            v86 = v53;
            v87 = v54;
            memcpy(__dst, (a3 + v71), sizeof(__dst));
            v54 = v87;
            v53 = v86;
            v52 = v85;
            v84 = __dst;
          }

          v88 = (a4 + v83);
          v89 = (v207 + 8 * (v50 - v46));
          if (!(v54 & 1 | (v53 < 8u)) && v210 > 7)
          {
            v90 = *v88;
            if (v90 == 63)
            {
              v92 = *v84;
              v34 = v84[1];
              v35 = v84[2];
              v36 = v84[3];
              *v89 = *v84;
              v89[1] = v35;
              v32 = a11;
              v98 = (v89 + a11);
              *v98 = v34;
              v98[1] = v36;
              v91 = 64;
            }

            else
            {
              v32 = a11;
              if (v90 == 1)
              {
                v92 = vld1q_dup_s16(v84->i16);
                *v89 = v92;
                v89[1] = v92;
                v97 = (v89 + a11);
                *v97 = v92;
                v97[1] = v92;
                v91 = 2;
              }

              else if (*v88)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v89, a11, v84, v90, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v91 = 0;
                v92.i64[0] = 0;
                *v89 = 0u;
                v89[1] = 0u;
                v93 = &v89->i8[a11];
                *v93 = 0u;
                *(v93 + 1) = 0u;
              }
            }

            v99 = v84->i64 + v91;
            v100 = (v89 + v195);
            v101 = v88[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v35 = *(v99 + 32);
              v36 = *(v99 + 48);
              *v100 = *v99;
              v100[1] = v35;
              v106 = &v100->i8[v32];
              *v106 = v34;
              *(v106 + 1) = v36;
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

            else if (v88[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v89 + v195), v32, v99, v101, *v92.i64, *v34.i64, *v35.i64, *v36.i8);
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

            v107 = v99 + v102;
            v108 = v89 + 2;
            v109 = v88[2];
            if (v109 == 63)
            {
              v111 = *v107;
              v34 = *(v107 + 16);
              v35 = *(v107 + 32);
              v36 = *(v107 + 48);
              v89[2] = *v107;
              v89[3] = v35;
              v114 = &v108->i8[v32];
              *v114 = v34;
              *(v114 + 1) = v36;
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v107);
              v89[2] = v111;
              v89[3] = v111;
              v113 = (v108 + v32);
              *v113 = v111;
              v113[1] = v111;
              v110 = 2;
            }

            else if (v88[2])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, v32, v107, v109, *v103.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v110 = 0;
              v111.i64[0] = 0;
              *v108 = 0u;
              v89[3] = 0u;
              v112 = &v108->i8[v32];
              *v112 = 0u;
              *(v112 + 1) = 0u;
            }

            v115 = v107 + v110;
            v116 = v100 + 2;
            v117 = v88[3];
            if (v117 == 63)
            {
              v119 = *v115;
              v34 = *(v115 + 16);
              v35 = *(v115 + 32);
              v36 = *(v115 + 48);
              v100[2] = *v115;
              v100[3] = v35;
              v122 = &v116->i8[v32];
              *v122 = v34;
              *(v122 + 1) = v36;
              v118 = 64;
            }

            else if (v117 == 1)
            {
              v119 = vld1q_dup_s16(v115);
              v100[2] = v119;
              v100[3] = v119;
              v121 = (v116 + v32);
              *v121 = v119;
              v121[1] = v119;
              v118 = 2;
            }

            else if (v88[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v32, v115, v117, *v111.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v118 = 0;
              v119.i64[0] = 0;
              *v116 = 0u;
              v100[3] = 0u;
              v120 = &v116->i8[v32];
              *v120 = 0u;
              *(v120 + 1) = 0u;
            }

            v123 = v115 + v118;
            v124 = (v89 + v194);
            v125 = v88[4];
            if (v125 == 63)
            {
              v127 = *v123;
              v34 = *(v123 + 16);
              v35 = *(v123 + 32);
              v36 = *(v123 + 48);
              *v124 = *v123;
              v124[1] = v35;
              v130 = &v124->i8[v32];
              *v130 = v34;
              *(v130 + 1) = v36;
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v127 = vld1q_dup_s16(v123);
              *v124 = v127;
              v124[1] = v127;
              v129 = (v124 + v32);
              *v129 = v127;
              v129[1] = v127;
              v126 = 2;
            }

            else if (v88[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v89 + v194), v32, v123, v125, *v119.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v126 = 0;
              v127.i64[0] = 0;
              *v124 = 0u;
              v124[1] = 0u;
              v128 = &v124->i8[v32];
              *v128 = 0u;
              *(v128 + 1) = 0u;
            }

            v131 = v123 + v126;
            v132 = (v89 + 6 * a11);
            v133 = v88[5];
            if (v133 == 63)
            {
              v135 = *v131;
              v34 = *(v131 + 16);
              v35 = *(v131 + 32);
              v36 = *(v131 + 48);
              *v132 = *v131;
              v132[1] = v35;
              v138 = (v132 + v32);
              *v138 = v34;
              v138[1] = v36;
              v134 = 64;
            }

            else if (v133 == 1)
            {
              v135 = vld1q_dup_s16(v131);
              *v132 = v135;
              v132[1] = v135;
              v137 = (v132 + v32);
              *v137 = v135;
              v137[1] = v135;
              v134 = 2;
            }

            else if (v88[5])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v32, v131, v133, *v127.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v134 = 0;
              v135.i64[0] = 0;
              *v132 = 0u;
              v132[1] = 0u;
              v136 = &v132->i8[v32];
              *v136 = 0u;
              *(v136 + 1) = 0u;
            }

            v139 = v131 + v134;
            v140 = v124 + 2;
            v141 = v88[6];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v35 = *(v139 + 32);
              v36 = *(v139 + 48);
              v124[2] = *v139;
              v124[3] = v35;
              v146 = &v140->i8[v32];
              *v146 = v34;
              *(v146 + 1) = v36;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              v124[2] = v143;
              v124[3] = v143;
              v145 = (v140 + v32);
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v88[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v135.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              v124[3] = 0u;
              v144 = &v140->i8[v32];
              *v144 = 0u;
              *(v144 + 1) = 0u;
            }

            v147 = v139 + v142;
            v148 = v132 + 2;
            v149 = v88[7];
            if (v149 == 63)
            {
              v37 = *v147;
              v34 = *(v147 + 16);
              v35 = *(v147 + 32);
              v36 = *(v147 + 48);
              v132[2] = *v147;
              v132[3] = v35;
              v151 = &v148->i8[v32];
              *v151 = v34;
              *(v151 + 1) = v36;
              v46 = a7;
              v15 = v209;
            }

            else
            {
              v15 = v209;
              if (v149 == 1)
              {
                v37 = vld1q_dup_s16(v147);
                v132[2] = v37;
                v132[3] = v37;
LABEL_171:
                v150 = (v148 + v32);
                *v150 = v37;
                v150[1] = v37;
              }

              else
              {
                if (!v149)
                {
                  v37 = 0uLL;
                  *v148 = 0u;
                  v132[3] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v32, v147, v149, *v143.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              v46 = a7;
            }

LABEL_49:
            v47 = v44 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v209;
          block[5] = v84;
          v219 = v53;
          v220 = v210;
          v215 = v199;
          v216 = v50 - v48;
          block[6] = v88;
          v213 = v89;
          v32 = a11;
          v214 = a11;
          v217 = v198;
          v218 = v52;
          if (v54)
          {
            dispatch_sync(*(*(v209 + 8) + 16552), block);
            v46 = a7;
            v15 = v209;
            goto LABEL_49;
          }

          v94 = *v88;
          if (v94 == 63)
          {
            v96 = *v84;
            v34 = v84[1];
            v35 = v84[2];
            v36 = v84[3];
            v222 = *v84;
            v223 = v35;
            v226 = v34;
            v227 = v36;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v84->i16);
            v222 = v96;
            v223 = v96;
            v226 = v96;
            v227 = v96;
            v95 = 2;
          }

          else if (*v88)
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 64, v84, v94, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v222 = 0u;
            v223 = 0u;
            v226 = 0u;
            v227 = 0u;
          }

          v152 = v84->i64 + v95;
          v153 = v88[1];
          if (v153 == 63)
          {
            v155 = *v152;
            v34 = *(v152 + 16);
            v35 = *(v152 + 32);
            v36 = *(v152 + 48);
            v230 = *v152;
            v231 = v35;
            v234 = v34;
            v235 = v36;
            v154 = 64;
          }

          else if (v153 == 1)
          {
            v155 = vld1q_dup_s16(v152);
            v230 = v155;
            v231 = v155;
            v234 = v155;
            v235 = v155;
            v154 = 2;
          }

          else if (v88[1])
          {
            v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 64, v152, v153, *v96.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v154 = 0;
            v155.i64[0] = 0;
            v230 = 0u;
            v231 = 0u;
            v234 = 0u;
            v235 = 0u;
          }

          v156 = v152 + v154;
          v157 = v88[2];
          if (v157 == 63)
          {
            v159 = *v156;
            v34 = *(v156 + 16);
            v35 = *(v156 + 32);
            v36 = *(v156 + 48);
            v224 = *v156;
            v225 = v35;
            v228 = v34;
            v229 = v36;
            v158 = 64;
          }

          else if (v157 == 1)
          {
            v159 = vld1q_dup_s16(v156);
            v224 = v159;
            v225 = v159;
            v228 = v159;
            v229 = v159;
            v158 = 2;
          }

          else if (v88[2])
          {
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 64, v156, v157, *v155.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v158 = 0;
            v159.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v228 = 0u;
            v229 = 0u;
          }

          v160 = v156 + v158;
          v161 = v88[3];
          if (v161 == 63)
          {
            v163 = *v160;
            v34 = *(v160 + 16);
            v35 = *(v160 + 32);
            v36 = *(v160 + 48);
            v232 = *v160;
            v233 = v35;
            v236 = v34;
            v237 = v36;
            v162 = 64;
          }

          else if (v161 == 1)
          {
            v163 = vld1q_dup_s16(v160);
            v232 = v163;
            v233 = v163;
            v236 = v163;
            v237 = v163;
            v162 = 2;
          }

          else if (v88[3])
          {
            v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v160, v161, *v159.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v162 = 0;
            v163.i64[0] = 0;
            v232 = 0u;
            v233 = 0u;
            v236 = 0u;
            v237 = 0u;
          }

          v164 = v160 + v162;
          v165 = v88[4];
          if (v165 == 63)
          {
            v167 = *v164;
            v34 = *(v164 + 16);
            v35 = *(v164 + 32);
            v36 = *(v164 + 48);
            v238 = *v164;
            v239 = v35;
            v242 = v34;
            v243 = v36;
            v166 = 64;
          }

          else if (v165 == 1)
          {
            v167 = vld1q_dup_s16(v164);
            v238 = v167;
            v239 = v167;
            v242 = v167;
            v243 = v167;
            v166 = 2;
          }

          else if (v88[4])
          {
            v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 64, v164, v165, *v163.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v166 = 0;
            v167.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v168 = v164 + v166;
          v169 = v88[5];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v35 = *(v168 + 32);
            v36 = *(v168 + 48);
            v246 = *v168;
            v247 = v35;
            v250 = v34;
            v251 = v36;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v246 = v171;
            v247 = v171;
            v250 = v171;
            v251 = v171;
            v170 = 2;
          }

          else if (v88[5])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 64, v168, v169, *v167.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v246 = 0u;
            v247 = 0u;
            v250 = 0u;
            v251 = 0u;
          }

          v172 = v168 + v170;
          v173 = v88[6];
          if (v173 == 63)
          {
            v175 = *v172;
            v34 = *(v172 + 16);
            v35 = *(v172 + 32);
            v36 = *(v172 + 48);
            v240 = *v172;
            v241 = v35;
            v244 = v34;
            v245 = v36;
            v174 = 64;
          }

          else if (v173 == 1)
          {
            v175 = vld1q_dup_s16(v172);
            v240 = v175;
            v241 = v175;
            v244 = v175;
            v245 = v175;
            v174 = 2;
          }

          else if (v88[6])
          {
            v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 64, v172, v173, *v171.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v174 = 0;
            v175.i64[0] = 0;
            v240 = 0u;
            v241 = 0u;
            v244 = 0u;
            v245 = 0u;
          }

          v176 = v172 + v174;
          v177 = v88[7];
          if (v177 == 63)
          {
            v37 = *v176;
            v34 = *(v176 + 16);
            v35 = *(v176 + 32);
            v36 = *(v176 + 48);
            v248 = *v176;
            v249 = v35;
            v252 = v34;
            v253 = v36;
            v46 = a7;
            v15 = v209;
          }

          else
          {
            v46 = a7;
            v15 = v209;
            if (v177 == 1)
            {
              v37 = vld1q_dup_s16(v176);
              v248 = v37;
              v249 = v37;
              v252 = v37;
              v253 = v37;
            }

            else if (v177)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 64, v176, v177, *v175.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v37.i64[0] = 0;
              v248 = 0u;
              v249 = 0u;
              v252 = 0u;
              v253 = 0u;
            }
          }

          v178 = v217;
          v47 = v44 + 1;
          if (v217)
          {
            v179 = 0;
            v180 = &v222.i8[64 * v215 + 8 * v216];
            v181 = v218;
            do
            {
              if (v181)
              {
                v182 = 0;
                v183 = v213->i64 + v214 * v179;
                do
                {
                  *(v183 + v182) = v180[v182];
                  ++v182;
                  v181 = v218;
                }

                while (8 * v218 > v182);
                v178 = v217;
              }

              ++v179;
              v180 += 64;
            }

            while (v179 < v178);
          }

LABEL_50:
          v20 = v44 == v202 >> 3;
          v44 = v47;
        }

        while (!v20);
        v20 = v17++ == v188;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v254 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v189 = a8 + a10 - 1;
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
  v188 = v189 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v204 = v23;
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
      v203 = 0;
LABEL_32:
      v200 = v25 - 3;
      v192 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v186 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v203 = v30 >= v24;
    goto LABEL_32;
  }

  v203 = 0;
  v186 = 0;
  v192 = 0;
  v200 = 0;
LABEL_33:
  if (v17 <= v188)
  {
    v202 = a7 + a9 - 1;
    if (a7 >> 3 <= v202 >> 3)
    {
      v32 = a11;
      v211 = v18 >> 3;
      v196 = v18 & 7;
      v201 = (v18 & 7) + 1;
      v184 = v19 & 7;
      v185 = v19 >> 3;
      v194 = 4 * a11;
      v195 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      v35.i64[0] = -1;
      v36.i64[0] = 0x2000000020;
      *v37.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v191 = v37.i64[0];
      v193 = v37.i32[0] | v37.i32[1];
      v190 = v34.i64[0];
      v209 = v15;
      do
      {
        v38 = (8 * v17) | 7;
        if (8 * v17 <= a8)
        {
          v39 = a8;
        }

        else
        {
          v39 = 8 * v17;
        }

        if (v189 < v38)
        {
          v38 = a8 + a10 - 1;
        }

        v199 = v39 - 8 * v17;
        v40 = v38 - v39;
        v41 = v40 + 1;
        v42 = v40 != v184;
        v198 = v41;
        v43 = v41 != 8;
        v44 = a7 >> 3;
        v45 = v184 + 1;
        if (v17 != v185)
        {
          v45 = 8;
        }

        v210 = v45;
        if (v17 != v185)
        {
          v42 = v43;
        }

        v197 = v42;
        v207 = a2 + (v39 - a8) * v32;
        v46 = a7;
        do
        {
          v48 = 8 * v44;
          v49 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= v46)
          {
            v50 = v46;
          }

          else
          {
            v50 = 8 * v44;
          }

          if (v202 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v44 == v211)
          {
            v53 = v201;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (8 * v17 >= a8 && v48 >= v46)
          {
            v55 = v51 != v196;
            if (v44 != v211)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v197;
          }

          if (v203)
          {
            if (v200 | v192)
            {
              v56 = 0;
              v57 = 0;
              v58 = v192 != 0;
              v59 = 1;
              v61 = v200 != 0;
              v60 = v192;
              v62 = v200;
              do
              {
                --v62;
                if (v61)
                {
                  v57 |= (v44 & ~(-1 << v200) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                --v60;
                if (v58)
                {
                  v57 |= (v17 & ~(-1 << v192) & v59) << v56++;
                }

                else
                {
                  v60 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v60 != 0;
                v61 = v62 != 0;
              }

              while (v60 | v62);
              v63 = v57 << 9;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(v15 + 336) * ((v44 >> v200) + (v17 >> v192) * v186);
          }

          else if (v193)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v190;
            v68 = BYTE4(v190);
            v70 = v191;
            v69 = HIDWORD(v191);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v44) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v17) << v64++;
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
            v71 = v65 << 9;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          v75 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
              v79 |= (v82 & v44) << v78++;
            }

            else
            {
              v74 = 0;
            }

            --v77;
            if (v81)
            {
              v79 |= (v82 & v17) << v78++;
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
          if (v204)
          {
            v85 = v52;
            v86 = v53;
            v87 = v54;
            memcpy(__dst, (a3 + v71), sizeof(__dst));
            v54 = v87;
            v53 = v86;
            v52 = v85;
            v84 = __dst;
          }

          v88 = (a4 + v83);
          v89 = (v207 + 8 * (v50 - v46));
          if (!(v54 & 1 | (v53 < 8u)) && v210 > 7)
          {
            v90 = *v88;
            if (v90 == 63)
            {
              v92 = *v84;
              v34 = v84[1];
              v35 = v84[2];
              v36 = v84[3];
              *v89 = *v84;
              v89[1] = v35;
              v32 = a11;
              v98 = (v89 + a11);
              *v98 = v34;
              v98[1] = v36;
              v91 = 64;
            }

            else
            {
              v32 = a11;
              if (v90 == 1)
              {
                v92 = vld1q_dup_s16(v84->i16);
                *v89 = v92;
                v89[1] = v92;
                v97 = (v89 + a11);
                *v97 = v92;
                v97[1] = v92;
                v91 = 2;
              }

              else if (*v88)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v89, a11, v84, v90, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              else
              {
                v91 = 0;
                v92.i64[0] = 0;
                *v89 = 0u;
                v89[1] = 0u;
                v93 = &v89->i8[a11];
                *v93 = 0u;
                *(v93 + 1) = 0u;
              }
            }

            v99 = v84->i64 + v91;
            v100 = (v89 + v195);
            v101 = v88[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v35 = *(v99 + 32);
              v36 = *(v99 + 48);
              *v100 = *v99;
              v100[1] = v35;
              v106 = &v100->i8[v32];
              *v106 = v34;
              *(v106 + 1) = v36;
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

            else if (v88[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v89 + v195), v32, v99, v101, *v92.i64, *v34.i64, *v35.i64, *v36.i8);
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

            v107 = v99 + v102;
            v108 = v89 + 2;
            v109 = v88[2];
            if (v109 == 63)
            {
              v111 = *v107;
              v34 = *(v107 + 16);
              v35 = *(v107 + 32);
              v36 = *(v107 + 48);
              v89[2] = *v107;
              v89[3] = v35;
              v114 = &v108->i8[v32];
              *v114 = v34;
              *(v114 + 1) = v36;
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v107);
              v89[2] = v111;
              v89[3] = v111;
              v113 = (v108 + v32);
              *v113 = v111;
              v113[1] = v111;
              v110 = 2;
            }

            else if (v88[2])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v108, v32, v107, v109, *v103.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v110 = 0;
              v111.i64[0] = 0;
              *v108 = 0u;
              v89[3] = 0u;
              v112 = &v108->i8[v32];
              *v112 = 0u;
              *(v112 + 1) = 0u;
            }

            v115 = v107 + v110;
            v116 = v100 + 2;
            v117 = v88[3];
            if (v117 == 63)
            {
              v119 = *v115;
              v34 = *(v115 + 16);
              v35 = *(v115 + 32);
              v36 = *(v115 + 48);
              v100[2] = *v115;
              v100[3] = v35;
              v122 = &v116->i8[v32];
              *v122 = v34;
              *(v122 + 1) = v36;
              v118 = 64;
            }

            else if (v117 == 1)
            {
              v119 = vld1q_dup_s16(v115);
              v100[2] = v119;
              v100[3] = v119;
              v121 = (v116 + v32);
              *v121 = v119;
              v121[1] = v119;
              v118 = 2;
            }

            else if (v88[3])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v32, v115, v117, *v111.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v118 = 0;
              v119.i64[0] = 0;
              *v116 = 0u;
              v100[3] = 0u;
              v120 = &v116->i8[v32];
              *v120 = 0u;
              *(v120 + 1) = 0u;
            }

            v123 = v115 + v118;
            v124 = (v89 + v194);
            v125 = v88[4];
            if (v125 == 63)
            {
              v127 = *v123;
              v34 = *(v123 + 16);
              v35 = *(v123 + 32);
              v36 = *(v123 + 48);
              *v124 = *v123;
              v124[1] = v35;
              v130 = &v124->i8[v32];
              *v130 = v34;
              *(v130 + 1) = v36;
              v126 = 64;
            }

            else if (v125 == 1)
            {
              v127 = vld1q_dup_s16(v123);
              *v124 = v127;
              v124[1] = v127;
              v129 = (v124 + v32);
              *v129 = v127;
              v129[1] = v127;
              v126 = 2;
            }

            else if (v88[4])
            {
              v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v89 + v194), v32, v123, v125, *v119.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v126 = 0;
              v127.i64[0] = 0;
              *v124 = 0u;
              v124[1] = 0u;
              v128 = &v124->i8[v32];
              *v128 = 0u;
              *(v128 + 1) = 0u;
            }

            v131 = v123 + v126;
            v132 = (v89 + 6 * a11);
            v133 = v88[5];
            if (v133 == 63)
            {
              v135 = *v131;
              v34 = *(v131 + 16);
              v35 = *(v131 + 32);
              v36 = *(v131 + 48);
              *v132 = *v131;
              v132[1] = v35;
              v138 = (v132 + v32);
              *v138 = v34;
              v138[1] = v36;
              v134 = 64;
            }

            else if (v133 == 1)
            {
              v135 = vld1q_dup_s16(v131);
              *v132 = v135;
              v132[1] = v135;
              v137 = (v132 + v32);
              *v137 = v135;
              v137[1] = v135;
              v134 = 2;
            }

            else if (v88[5])
            {
              v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, v32, v131, v133, *v127.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v134 = 0;
              v135.i64[0] = 0;
              *v132 = 0u;
              v132[1] = 0u;
              v136 = &v132->i8[v32];
              *v136 = 0u;
              *(v136 + 1) = 0u;
            }

            v139 = v131 + v134;
            v140 = v124 + 2;
            v141 = v88[6];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v35 = *(v139 + 32);
              v36 = *(v139 + 48);
              v124[2] = *v139;
              v124[3] = v35;
              v146 = &v140->i8[v32];
              *v146 = v34;
              *(v146 + 1) = v36;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              v124[2] = v143;
              v124[3] = v143;
              v145 = (v140 + v32);
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v88[6])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v135.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              v124[3] = 0u;
              v144 = &v140->i8[v32];
              *v144 = 0u;
              *(v144 + 1) = 0u;
            }

            v147 = v139 + v142;
            v148 = v132 + 2;
            v149 = v88[7];
            if (v149 == 63)
            {
              v37 = *v147;
              v34 = *(v147 + 16);
              v35 = *(v147 + 32);
              v36 = *(v147 + 48);
              v132[2] = *v147;
              v132[3] = v35;
              v151 = &v148->i8[v32];
              *v151 = v34;
              *(v151 + 1) = v36;
              v46 = a7;
              v15 = v209;
            }

            else
            {
              v15 = v209;
              if (v149 == 1)
              {
                v37 = vld1q_dup_s16(v147);
                v132[2] = v37;
                v132[3] = v37;
LABEL_171:
                v150 = (v148 + v32);
                *v150 = v37;
                v150[1] = v37;
              }

              else
              {
                if (!v149)
                {
                  v37 = 0uLL;
                  *v148 = 0u;
                  v132[3] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v148, v32, v147, v149, *v143.i64, *v34.i64, *v35.i64, *v36.i8);
              }

              v46 = a7;
            }

LABEL_49:
            v47 = v44 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v209;
          block[5] = v84;
          v219 = v53;
          v220 = v210;
          v215 = v199;
          v216 = v50 - v48;
          block[6] = v88;
          v213 = v89;
          v32 = a11;
          v214 = a11;
          v217 = v198;
          v218 = v52;
          if (v54)
          {
            dispatch_sync(*(*(v209 + 8) + 16552), block);
            v46 = a7;
            v15 = v209;
            goto LABEL_49;
          }

          v94 = *v88;
          if (v94 == 63)
          {
            v96 = *v84;
            v34 = v84[1];
            v35 = v84[2];
            v36 = v84[3];
            v222 = *v84;
            v223 = v35;
            v226 = v34;
            v227 = v36;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v84->i16);
            v222 = v96;
            v223 = v96;
            v226 = v96;
            v227 = v96;
            v95 = 2;
          }

          else if (*v88)
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 64, v84, v94, *v37.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v222 = 0u;
            v223 = 0u;
            v226 = 0u;
            v227 = 0u;
          }

          v152 = v84->i64 + v95;
          v153 = v88[1];
          if (v153 == 63)
          {
            v155 = *v152;
            v34 = *(v152 + 16);
            v35 = *(v152 + 32);
            v36 = *(v152 + 48);
            v230 = *v152;
            v231 = v35;
            v234 = v34;
            v235 = v36;
            v154 = 64;
          }

          else if (v153 == 1)
          {
            v155 = vld1q_dup_s16(v152);
            v230 = v155;
            v231 = v155;
            v234 = v155;
            v235 = v155;
            v154 = 2;
          }

          else if (v88[1])
          {
            v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 64, v152, v153, *v96.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v154 = 0;
            v155.i64[0] = 0;
            v230 = 0u;
            v231 = 0u;
            v234 = 0u;
            v235 = 0u;
          }

          v156 = v152 + v154;
          v157 = v88[2];
          if (v157 == 63)
          {
            v159 = *v156;
            v34 = *(v156 + 16);
            v35 = *(v156 + 32);
            v36 = *(v156 + 48);
            v224 = *v156;
            v225 = v35;
            v228 = v34;
            v229 = v36;
            v158 = 64;
          }

          else if (v157 == 1)
          {
            v159 = vld1q_dup_s16(v156);
            v224 = v159;
            v225 = v159;
            v228 = v159;
            v229 = v159;
            v158 = 2;
          }

          else if (v88[2])
          {
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 64, v156, v157, *v155.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v158 = 0;
            v159.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v228 = 0u;
            v229 = 0u;
          }

          v160 = v156 + v158;
          v161 = v88[3];
          if (v161 == 63)
          {
            v163 = *v160;
            v34 = *(v160 + 16);
            v35 = *(v160 + 32);
            v36 = *(v160 + 48);
            v232 = *v160;
            v233 = v35;
            v236 = v34;
            v237 = v36;
            v162 = 64;
          }

          else if (v161 == 1)
          {
            v163 = vld1q_dup_s16(v160);
            v232 = v163;
            v233 = v163;
            v236 = v163;
            v237 = v163;
            v162 = 2;
          }

          else if (v88[3])
          {
            v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v160, v161, *v159.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v162 = 0;
            v163.i64[0] = 0;
            v232 = 0u;
            v233 = 0u;
            v236 = 0u;
            v237 = 0u;
          }

          v164 = v160 + v162;
          v165 = v88[4];
          if (v165 == 63)
          {
            v167 = *v164;
            v34 = *(v164 + 16);
            v35 = *(v164 + 32);
            v36 = *(v164 + 48);
            v238 = *v164;
            v239 = v35;
            v242 = v34;
            v243 = v36;
            v166 = 64;
          }

          else if (v165 == 1)
          {
            v167 = vld1q_dup_s16(v164);
            v238 = v167;
            v239 = v167;
            v242 = v167;
            v243 = v167;
            v166 = 2;
          }

          else if (v88[4])
          {
            v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 64, v164, v165, *v163.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v166 = 0;
            v167.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v168 = v164 + v166;
          v169 = v88[5];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v35 = *(v168 + 32);
            v36 = *(v168 + 48);
            v246 = *v168;
            v247 = v35;
            v250 = v34;
            v251 = v36;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v246 = v171;
            v247 = v171;
            v250 = v171;
            v251 = v171;
            v170 = 2;
          }

          else if (v88[5])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 64, v168, v169, *v167.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v246 = 0u;
            v247 = 0u;
            v250 = 0u;
            v251 = 0u;
          }

          v172 = v168 + v170;
          v173 = v88[6];
          if (v173 == 63)
          {
            v175 = *v172;
            v34 = *(v172 + 16);
            v35 = *(v172 + 32);
            v36 = *(v172 + 48);
            v240 = *v172;
            v241 = v35;
            v244 = v34;
            v245 = v36;
            v174 = 64;
          }

          else if (v173 == 1)
          {
            v175 = vld1q_dup_s16(v172);
            v240 = v175;
            v241 = v175;
            v244 = v175;
            v245 = v175;
            v174 = 2;
          }

          else if (v88[6])
          {
            v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 64, v172, v173, *v171.i64, *v34.i64, *v35.i64, *v36.i8);
          }

          else
          {
            v174 = 0;
            v175.i64[0] = 0;
            v240 = 0u;
            v241 = 0u;
            v244 = 0u;
            v245 = 0u;
          }

          v176 = v172 + v174;
          v177 = v88[7];
          if (v177 == 63)
          {
            v37 = *v176;
            v34 = *(v176 + 16);
            v35 = *(v176 + 32);
            v36 = *(v176 + 48);
            v248 = *v176;
            v249 = v35;
            v252 = v34;
            v253 = v36;
            v46 = a7;
            v15 = v209;
          }

          else
          {
            v46 = a7;
            v15 = v209;
            if (v177 == 1)
            {
              v37 = vld1q_dup_s16(v176);
              v248 = v37;
              v249 = v37;
              v252 = v37;
              v253 = v37;
            }

            else if (v177)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 64, v176, v177, *v175.i64, *v34.i64, *v35.i64, *v36.i8);
            }

            else
            {
              v37.i64[0] = 0;
              v248 = 0u;
              v249 = 0u;
              v252 = 0u;
              v253 = 0u;
            }
          }

          v178 = v217;
          v47 = v44 + 1;
          if (v217)
          {
            v179 = 0;
            v180 = &v222.i8[64 * v215 + 8 * v216];
            v181 = v218;
            do
            {
              if (v181)
              {
                v182 = 0;
                v183 = v213->i64 + v214 * v179;
                do
                {
                  *(v183 + v182) = v180[v182];
                  ++v182;
                  v181 = v218;
                }

                while (8 * v218 > v182);
                v178 = v217;
              }

              ++v179;
              v180 += 64;
            }

            while (v179 < v178);
          }

LABEL_50:
          v20 = v44 == v202 >> 3;
          v44 = v47;
        }

        while (!v20);
        v20 = v17++ == v188;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v252 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v205 = a8;
  v16 = a8 >> 3;
  v186 = a8 + a10 - 1;
  v188 = v186 >> 3;
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
  v200 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v188)
  {
    v198 = a7 + a9 - 1;
    if (a7 >> 3 <= v198 >> 3)
    {
      v24 = a11;
      v209 = (a5 - 1) >> 3;
      v183 = a5 - 1;
      v191 = (a5 - 1) & 7;
      v184 = (a6 - 1) & 7;
      v185 = (a6 - 1) >> 3;
      v189 = 4 * a11;
      v190 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v196 = v29.i64[0];
      v197 = v29.i32[0] | v29.i32[1];
      v195 = v26.i64[0];
      v182 = 8 * v18 * v17;
      v207 = v15;
      do
      {
        v30 = (8 * v16) | 7;
        if (8 * v16 <= v205)
        {
          v31 = v205;
        }

        else
        {
          v31 = 8 * v16;
        }

        if (v186 < v30)
        {
          v30 = v186;
        }

        v204 = 8 * v16;
        v194 = v31 - 8 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v184;
        v193 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 3;
        v37 = v184 + 1;
        if (v16 != v185)
        {
          v37 = 8;
        }

        v208 = v37;
        if (v16 != v185)
        {
          v34 = v35;
        }

        v192 = v34;
        v203 = a2 + (v31 - v205) * v24;
        v38 = a7;
        do
        {
          v40 = 8 * v36;
          v41 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = 8 * v36;
          }

          if (v198 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v36 == v209)
          {
            v45 = v191 + 1;
          }

          else
          {
            v45 = 8;
          }

          v46 = 1;
          if (v204 >= v205 && v40 >= v38)
          {
            v47 = v43 != v191;
            if (v36 != v209)
            {
              v47 = v44 != 8;
            }

            v46 = v47 || v192;
          }

          if (isLevelTiled)
          {
            v165 = 0;
            v166 = v182 >> (*(v15 + 57) != 0);
            v167 = 1;
            if (v166 <= 63)
            {
              if (v166 > 15)
              {
                if (v166 == 16)
                {
                  v167 = 0;
                  v168 = 0;
                  v169 = 64;
                  v165 = 128;
                }

                else
                {
                  v168 = 1;
                  v169 = 0;
                  if (v166 == 32)
                  {
                    v167 = 0;
                    v168 = 0;
                    v165 = 64;
                    v169 = 64;
                  }
                }
              }

              else if (v166 == 4)
              {
                v167 = 0;
                v168 = 0;
                v169 = 128;
                v165 = 256;
              }

              else
              {
                v168 = 1;
                v169 = 0;
                if (v166 == 8)
                {
                  v167 = 0;
                  v168 = 0;
                  v165 = 128;
                  v169 = 128;
                }
              }
            }

            else if (v166 <= 255)
            {
              if (v166 == 64)
              {
                v167 = 0;
                v168 = 0;
                v169 = 32;
                v165 = 64;
              }

              else
              {
                v168 = 1;
                v169 = 0;
                if (v166 == 128)
                {
                  v167 = 0;
                  v168 = 0;
                  v165 = 32;
                  v169 = 32;
                }
              }
            }

            else if (v166 == 256)
            {
              v167 = 0;
              v168 = 0;
              v169 = 16;
              v165 = 32;
            }

            else if (v166 == 512)
            {
              v167 = 0;
              v168 = 0;
              v165 = 16;
              v169 = 16;
            }

            else
            {
              v168 = 1;
              v169 = 0;
              if (v166 == 1024)
              {
                v167 = 0;
                v169 = 8;
                v165 = 16;
              }
            }

            v170 = (v165 >> 3) - 1;
            if (v167)
            {
              v171 = 0;
            }

            else
            {
              v171 = 32 - __clz(~(-1 << -__clz(v170)));
            }

            v172 = (v169 >> 3) - 1;
            if (v168)
            {
              v173 = 0;
              if (v171)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if (v173 | v171)
              {
LABEL_227:
                v174 = 0;
                v175 = 0;
                v176 = v36 & v170;
                v177 = v16 & v172;
                v178 = v171 != 0;
                v179 = v173 != 0;
                v180 = 1;
                do
                {
                  --v171;
                  if (v178)
                  {
                    v175 |= (v180 & v176) << v174++;
                  }

                  else
                  {
                    v171 = 0;
                  }

                  --v173;
                  if (v179)
                  {
                    v175 |= (v180 & v177) << v174++;
                  }

                  else
                  {
                    v173 = 0;
                  }

                  v180 *= 2;
                  --v174;
                  v179 = v173 != 0;
                  v178 = v171 != 0;
                }

                while (v173 | v171);
                v181 = v175 << 9;
                goto LABEL_239;
              }
            }

            v181 = 0;
LABEL_239:
            v55 = v181 + ((v40 / v165 + v204 / v169 * ((v165 + v183) / v165)) << 14);
            goto LABEL_55;
          }

          if (v197)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v195;
            v52 = BYTE4(v195);
            v54 = v196;
            v53 = HIDWORD(v196);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v36) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v16) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v51 = v54 != 0;
              v52 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 9;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          v59 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
          }

          if (v61 | v58)
          {
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
                v63 |= (v66 & v36) << v62++;
              }

              else
              {
                v58 = 0;
              }

              --v61;
              if (v65)
              {
                v63 |= (v66 & v16) << v62++;
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
          }

          else
          {
            v67 = 0;
          }

          v68 = (a3 + v55);
          if (v200)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (a4 + v67);
          v70 = (v203 + 8 * (v42 - v38));
          if (!(v46 & 1 | (v45 < 8u)) && v208 > 7)
          {
            v71 = *v69;
            if (v71 == 63)
            {
              v73 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              *v70 = *v68;
              v70[1] = v27;
              v24 = a11;
              v79 = (v70 + a11);
              *v79 = v26;
              v79[1] = v28;
              v72 = 64;
            }

            else
            {
              v24 = a11;
              if (v71 == 1)
              {
                v73 = vld1q_dup_s16(v68->i16);
                *v70 = v73;
                v70[1] = v73;
                v78 = (v70 + a11);
                *v78 = v73;
                v78[1] = v73;
                v72 = 2;
              }

              else if (*v69)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v70, a11, v68, v71, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v72 = 0;
                v73.i64[0] = 0;
                *v70 = 0u;
                v70[1] = 0u;
                v74 = &v70->i8[a11];
                *v74 = 0u;
                *(v74 + 1) = 0u;
              }
            }

            v80 = v68->i64 + v72;
            v81 = (v70 + v190);
            v82 = v69[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v27 = *(v80 + 32);
              v28 = *(v80 + 48);
              *v81 = *v80;
              v81[1] = v27;
              v87 = (v81 + v24);
              *v87 = v26;
              v87[1] = v28;
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

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v190), v24, v80, v82, *v73.i64, *v26.i64, *v27.i64, *v28.i8);
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

            v88 = v80 + v83;
            v89 = v70 + 2;
            v90 = v69[2];
            if (v90 == 63)
            {
              v92 = *v88;
              v26 = *(v88 + 16);
              v27 = *(v88 + 32);
              v28 = *(v88 + 48);
              v70[2] = *v88;
              v70[3] = v27;
              v95 = &v89->i8[v24];
              *v95 = v26;
              *(v95 + 1) = v28;
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v88);
              v70[2] = v92;
              v70[3] = v92;
              v94 = (v89 + v24);
              *v94 = v92;
              v94[1] = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v89, v24, v88, v90, *v84.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v91 = 0;
              v92.i64[0] = 0;
              *v89 = 0u;
              v70[3] = 0u;
              v93 = &v89->i8[v24];
              *v93 = 0u;
              *(v93 + 1) = 0u;
            }

            v96 = v88 + v91;
            v97 = v81 + 2;
            v98 = v69[3];
            if (v98 == 63)
            {
              v100 = *v96;
              v26 = *(v96 + 16);
              v27 = *(v96 + 32);
              v28 = *(v96 + 48);
              v81[2] = *v96;
              v81[3] = v27;
              v103 = &v97->i8[v24];
              *v103 = v26;
              *(v103 + 1) = v28;
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v96);
              v81[2] = v100;
              v81[3] = v100;
              v102 = (v97 + v24);
              *v102 = v100;
              v102[1] = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v97, v24, v96, v98, *v92.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v99 = 0;
              v100.i64[0] = 0;
              *v97 = 0u;
              v81[3] = 0u;
              v101 = &v97->i8[v24];
              *v101 = 0u;
              *(v101 + 1) = 0u;
            }

            v104 = v96 + v99;
            v105 = (v70 + v189);
            v106 = v69[4];
            if (v106 == 63)
            {
              v108 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              *v105 = *v104;
              v105[1] = v27;
              v111 = (v105 + v24);
              *v111 = v26;
              v111[1] = v28;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v104);
              *v105 = v108;
              v105[1] = v108;
              v110 = (v105 + v24);
              *v110 = v108;
              v110[1] = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v189), v24, v104, v106, *v100.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v108.i64[0] = 0;
              *v105 = 0u;
              v105[1] = 0u;
              v109 = &v105->i8[v24];
              *v109 = 0u;
              *(v109 + 1) = 0u;
            }

            v112 = v104 + v107;
            v113 = (v70 + 6 * a11);
            v114 = v69[5];
            if (v114 == 63)
            {
              v116 = *v112;
              v26 = *(v112 + 16);
              v27 = *(v112 + 32);
              v28 = *(v112 + 48);
              *v113 = *v112;
              v113[1] = v27;
              v119 = (v113 + v24);
              *v119 = v26;
              v119[1] = v28;
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v112);
              *v113 = v116;
              v113[1] = v116;
              v118 = (v113 + v24);
              *v118 = v116;
              v118[1] = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, v24, v112, v114, *v108.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v115 = 0;
              v116.i64[0] = 0;
              *v113 = 0u;
              v113[1] = 0u;
              v117 = &v113->i8[v24];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v120 = v112 + v115;
            v121 = v105 + 2;
            v122 = v69[6];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v27 = *(v120 + 32);
              v28 = *(v120 + 48);
              v105[2] = *v120;
              v105[3] = v27;
              v127 = &v121->i8[v24];
              *v127 = v26;
              *(v127 + 1) = v28;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v105[2] = v124;
              v105[3] = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v116.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v105[3] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v39 = v36 + 1;
            v128 = v120 + v123;
            v129 = v113 + 2;
            v130 = v69[7];
            if (v130 == 63)
            {
              v29 = *v128;
              v26 = *(v128 + 16);
              v27 = *(v128 + 32);
              v28 = *(v128 + 48);
              v113[2] = *v128;
              v113[3] = v27;
              v132 = &v129->i8[v24];
              *v132 = v26;
              *(v132 + 1) = v28;
              v38 = a7;
              v15 = v207;
              goto LABEL_29;
            }

            v15 = v207;
            if (v130 == 1)
            {
              v29 = vld1q_dup_s16(v128);
              v113[2] = v29;
              v113[3] = v29;
LABEL_137:
              v131 = (v129 + v24);
              *v131 = v29;
              v131[1] = v29;
            }

            else
            {
              if (!v130)
              {
                v29 = 0uLL;
                *v129 = 0u;
                v113[3] = 0u;
                goto LABEL_137;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v129, v24, v128, v130, *v124.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            v38 = a7;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v207;
          block[5] = v68;
          v217 = v45;
          v218 = v208;
          v213 = v194;
          v214 = v42 - v40;
          block[6] = v69;
          v211 = v70;
          v24 = a11;
          v212 = a11;
          v215 = v193;
          v216 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v207 + 8) + 16552), block);
            v38 = a7;
            v15 = v207;
            v39 = v36 + 1;
          }

          else
          {
            v75 = *v69;
            v38 = a7;
            if (v75 == 63)
            {
              v77 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              v220 = *v68;
              v221 = v27;
              v224 = v26;
              v225 = v28;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v77 = vld1q_dup_s16(v68->i16);
              v220 = v77;
              v221 = v77;
              v224 = v77;
              v225 = v77;
              v76 = 2;
            }

            else if (*v69)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 64, v68, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v76 = 0;
              v77.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v224 = 0u;
              v225 = 0u;
            }

            v133 = v68->i64 + v76;
            v134 = v69[1];
            if (v134 == 63)
            {
              v136 = *v133;
              v26 = *(v133 + 16);
              v27 = *(v133 + 32);
              v28 = *(v133 + 48);
              v228 = *v133;
              v229 = v27;
              v232 = v26;
              v233 = v28;
              v135 = 64;
              v39 = v36 + 1;
            }

            else
            {
              v39 = v36 + 1;
              if (v134 == 1)
              {
                v136 = vld1q_dup_s16(v133);
                v228 = v136;
                v229 = v136;
                v232 = v136;
                v233 = v136;
                v135 = 2;
              }

              else if (v69[1])
              {
                v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v133, v134, *v77.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v135 = 0;
                v136.i64[0] = 0;
                v228 = 0u;
                v229 = 0u;
                v232 = 0u;
                v233 = 0u;
              }
            }

            v137 = v133 + v135;
            v138 = v69[2];
            if (v138 == 63)
            {
              v140 = *v137;
              v26 = *(v137 + 16);
              v27 = *(v137 + 32);
              v28 = *(v137 + 48);
              v222 = *v137;
              v223 = v27;
              v226 = v26;
              v227 = v28;
              v139 = 64;
            }

            else if (v138 == 1)
            {
              v140 = vld1q_dup_s16(v137);
              v222 = v140;
              v223 = v140;
              v226 = v140;
              v227 = v140;
              v139 = 2;
            }

            else if (v69[2])
            {
              v139 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 64, v137, v138, *v136.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v139 = 0;
              v140.i64[0] = 0;
              v222 = 0u;
              v223 = 0u;
              v226 = 0u;
              v227 = 0u;
            }

            v141 = v137 + v139;
            v142 = v69[3];
            if (v142 == 63)
            {
              v144 = *v141;
              v26 = *(v141 + 16);
              v27 = *(v141 + 32);
              v28 = *(v141 + 48);
              v230 = *v141;
              v231 = v27;
              v234 = v26;
              v235 = v28;
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v144 = vld1q_dup_s16(v141);
              v230 = v144;
              v231 = v144;
              v234 = v144;
              v235 = v144;
              v143 = 2;
            }

            else if (v69[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 64, v141, v142, *v140.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v143 = 0;
              v144.i64[0] = 0;
              v230 = 0u;
              v231 = 0u;
              v234 = 0u;
              v235 = 0u;
            }

            v145 = v141 + v143;
            v146 = v69[4];
            if (v146 == 63)
            {
              v148 = *v145;
              v26 = *(v145 + 16);
              v27 = *(v145 + 32);
              v28 = *(v145 + 48);
              v236 = *v145;
              v237 = v27;
              v240 = v26;
              v241 = v28;
              v147 = 64;
            }

            else if (v146 == 1)
            {
              v148 = vld1q_dup_s16(v145);
              v236 = v148;
              v237 = v148;
              v240 = v148;
              v241 = v148;
              v147 = 2;
            }

            else if (v69[4])
            {
              v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 64, v145, v146, *v144.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v147 = 0;
              v148.i64[0] = 0;
              v236 = 0u;
              v237 = 0u;
              v240 = 0u;
              v241 = 0u;
            }

            v149 = v145 + v147;
            v150 = v69[5];
            if (v150 == 63)
            {
              v152 = *v149;
              v26 = *(v149 + 16);
              v27 = *(v149 + 32);
              v28 = *(v149 + 48);
              v244 = *v149;
              v245 = v27;
              v248 = v26;
              v249 = v28;
              v151 = 64;
            }

            else if (v150 == 1)
            {
              v152 = vld1q_dup_s16(v149);
              v244 = v152;
              v245 = v152;
              v248 = v152;
              v249 = v152;
              v151 = 2;
            }

            else if (v69[5])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v149, v150, *v148.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v151 = 0;
              v152.i64[0] = 0;
              v244 = 0u;
              v245 = 0u;
              v248 = 0u;
              v249 = 0u;
            }

            v153 = v149 + v151;
            v154 = v69[6];
            if (v154 == 63)
            {
              v156 = *v153;
              v26 = *(v153 + 16);
              v27 = *(v153 + 32);
              v28 = *(v153 + 48);
              v238 = *v153;
              v239 = v27;
              v242 = v26;
              v243 = v28;
              v155 = 64;
            }

            else if (v154 == 1)
            {
              v156 = vld1q_dup_s16(v153);
              v238 = v156;
              v239 = v156;
              v242 = v156;
              v243 = v156;
              v155 = 2;
            }

            else if (v69[6])
            {
              v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 64, v153, v154, *v152.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v155 = 0;
              v156.i64[0] = 0;
              v238 = 0u;
              v239 = 0u;
              v242 = 0u;
              v243 = 0u;
            }

            v157 = v153 + v155;
            v158 = v69[7];
            if (v158 == 63)
            {
              v29 = *v157;
              v26 = *(v157 + 16);
              v27 = *(v157 + 32);
              v28 = *(v157 + 48);
              v246 = *v157;
              v247 = v27;
              v250 = v26;
              v251 = v28;
              v15 = v207;
            }

            else
            {
              v15 = v207;
              if (v158 == 1)
              {
                v29 = vld1q_dup_s16(v157);
                v246 = v29;
                v247 = v29;
                v250 = v29;
                v251 = v29;
              }

              else if (v158)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 64, v157, v158, *v156.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v29.i64[0] = 0;
                v246 = 0u;
                v247 = 0u;
                v250 = 0u;
                v251 = 0u;
              }
            }

            v159 = v215;
            if (v215)
            {
              v160 = 0;
              v161 = &v220.i8[64 * v213 + 8 * v214];
              v162 = v216;
              do
              {
                if (v162)
                {
                  v163 = 0;
                  v164 = v211->i64 + v212 * v160;
                  do
                  {
                    *(v164 + v163) = v161[v163];
                    ++v163;
                    v162 = v216;
                  }

                  while (8 * v216 > v163);
                  v159 = v215;
                }

                ++v160;
                v161 += 64;
              }

              while (v160 < v159);
            }
          }

LABEL_29:
          v20 = v36 == v198 >> 3;
          v36 = v39;
        }

        while (!v20);
        v20 = v16++ == v188;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v252 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v205 = a8;
  v16 = a8 >> 3;
  v186 = a8 + a10 - 1;
  v188 = v186 >> 3;
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
  v200 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v188)
  {
    v198 = a7 + a9 - 1;
    if (a7 >> 3 <= v198 >> 3)
    {
      v24 = a11;
      v209 = (a5 - 1) >> 3;
      v183 = a5 - 1;
      v191 = (a5 - 1) & 7;
      v184 = (a6 - 1) & 7;
      v185 = (a6 - 1) >> 3;
      v189 = 4 * a11;
      v190 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v26.i8 = vcgt_u32(v25, 0xF0000000FLL);
      v27.i64[0] = -1;
      v28.i64[0] = 0x2000000020;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), *v26.i8);
      v196 = v29.i64[0];
      v197 = v29.i32[0] | v29.i32[1];
      v195 = v26.i64[0];
      v182 = 8 * v18 * v17;
      v207 = v15;
      do
      {
        v30 = (8 * v16) | 7;
        if (8 * v16 <= v205)
        {
          v31 = v205;
        }

        else
        {
          v31 = 8 * v16;
        }

        if (v186 < v30)
        {
          v30 = v186;
        }

        v204 = 8 * v16;
        v194 = v31 - 8 * v16;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v184;
        v193 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 3;
        v37 = v184 + 1;
        if (v16 != v185)
        {
          v37 = 8;
        }

        v208 = v37;
        if (v16 != v185)
        {
          v34 = v35;
        }

        v192 = v34;
        v203 = a2 + (v31 - v205) * v24;
        v38 = a7;
        do
        {
          v40 = 8 * v36;
          v41 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = 8 * v36;
          }

          if (v198 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v36 == v209)
          {
            v45 = v191 + 1;
          }

          else
          {
            v45 = 8;
          }

          v46 = 1;
          if (v204 >= v205 && v40 >= v38)
          {
            v47 = v43 != v191;
            if (v36 != v209)
            {
              v47 = v44 != 8;
            }

            v46 = v47 || v192;
          }

          if (isLevelTiled)
          {
            v165 = 0;
            v166 = v182 >> (*(v15 + 57) != 0);
            v167 = 1;
            if (v166 <= 63)
            {
              if (v166 > 15)
              {
                if (v166 == 16)
                {
                  v167 = 0;
                  v168 = 0;
                  v169 = 64;
                  v165 = 128;
                }

                else
                {
                  v168 = 1;
                  v169 = 0;
                  if (v166 == 32)
                  {
                    v167 = 0;
                    v168 = 0;
                    v165 = 64;
                    v169 = 64;
                  }
                }
              }

              else if (v166 == 4)
              {
                v167 = 0;
                v168 = 0;
                v169 = 128;
                v165 = 256;
              }

              else
              {
                v168 = 1;
                v169 = 0;
                if (v166 == 8)
                {
                  v167 = 0;
                  v168 = 0;
                  v165 = 128;
                  v169 = 128;
                }
              }
            }

            else if (v166 <= 255)
            {
              if (v166 == 64)
              {
                v167 = 0;
                v168 = 0;
                v169 = 32;
                v165 = 64;
              }

              else
              {
                v168 = 1;
                v169 = 0;
                if (v166 == 128)
                {
                  v167 = 0;
                  v168 = 0;
                  v165 = 32;
                  v169 = 32;
                }
              }
            }

            else if (v166 == 256)
            {
              v167 = 0;
              v168 = 0;
              v169 = 16;
              v165 = 32;
            }

            else if (v166 == 512)
            {
              v167 = 0;
              v168 = 0;
              v165 = 16;
              v169 = 16;
            }

            else
            {
              v168 = 1;
              v169 = 0;
              if (v166 == 1024)
              {
                v167 = 0;
                v169 = 8;
                v165 = 16;
              }
            }

            v170 = (v165 >> 3) - 1;
            if (v167)
            {
              v171 = 0;
            }

            else
            {
              v171 = 32 - __clz(~(-1 << -__clz(v170)));
            }

            v172 = (v169 >> 3) - 1;
            if (v168)
            {
              v173 = 0;
              if (v171)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if (v173 | v171)
              {
LABEL_227:
                v174 = 0;
                v175 = 0;
                v176 = v36 & v170;
                v177 = v16 & v172;
                v178 = v171 != 0;
                v179 = v173 != 0;
                v180 = 1;
                do
                {
                  --v171;
                  if (v178)
                  {
                    v175 |= (v180 & v176) << v174++;
                  }

                  else
                  {
                    v171 = 0;
                  }

                  --v173;
                  if (v179)
                  {
                    v175 |= (v180 & v177) << v174++;
                  }

                  else
                  {
                    v173 = 0;
                  }

                  v180 *= 2;
                  --v174;
                  v179 = v173 != 0;
                  v178 = v171 != 0;
                }

                while (v173 | v171);
                v181 = v175 << 9;
                goto LABEL_239;
              }
            }

            v181 = 0;
LABEL_239:
            v55 = v181 + ((v40 / v165 + v204 / v169 * ((v165 + v183) / v165)) << 14);
            goto LABEL_55;
          }

          if (v197)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v195;
            v52 = BYTE4(v195);
            v54 = v196;
            v53 = HIDWORD(v196);
            do
            {
              --v53;
              if (v52)
              {
                v49 |= (v50 & v36) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v51)
              {
                v49 |= (v50 & v16) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v51 = v54 != 0;
              v52 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 9;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
          }

          v59 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
          }

          if (v61 | v58)
          {
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
                v63 |= (v66 & v36) << v62++;
              }

              else
              {
                v58 = 0;
              }

              --v61;
              if (v65)
              {
                v63 |= (v66 & v16) << v62++;
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
          }

          else
          {
            v67 = 0;
          }

          v68 = (a3 + v55);
          if (v200)
          {
            memcpy(__dst, v68, sizeof(__dst));
            v68 = __dst;
          }

          v69 = (a4 + v67);
          v70 = (v203 + 8 * (v42 - v38));
          if (!(v46 & 1 | (v45 < 8u)) && v208 > 7)
          {
            v71 = *v69;
            if (v71 == 63)
            {
              v73 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              *v70 = *v68;
              v70[1] = v27;
              v24 = a11;
              v79 = (v70 + a11);
              *v79 = v26;
              v79[1] = v28;
              v72 = 64;
            }

            else
            {
              v24 = a11;
              if (v71 == 1)
              {
                v73 = vld1q_dup_s16(v68->i16);
                *v70 = v73;
                v70[1] = v73;
                v78 = (v70 + a11);
                *v78 = v73;
                v78[1] = v73;
                v72 = 2;
              }

              else if (*v69)
              {
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v70, a11, v68, v71, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v72 = 0;
                v73.i64[0] = 0;
                *v70 = 0u;
                v70[1] = 0u;
                v74 = &v70->i8[a11];
                *v74 = 0u;
                *(v74 + 1) = 0u;
              }
            }

            v80 = v68->i64 + v72;
            v81 = (v70 + v190);
            v82 = v69[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v27 = *(v80 + 32);
              v28 = *(v80 + 48);
              *v81 = *v80;
              v81[1] = v27;
              v87 = (v81 + v24);
              *v87 = v26;
              v87[1] = v28;
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

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v190), v24, v80, v82, *v73.i64, *v26.i64, *v27.i64, *v28.i8);
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

            v88 = v80 + v83;
            v89 = v70 + 2;
            v90 = v69[2];
            if (v90 == 63)
            {
              v92 = *v88;
              v26 = *(v88 + 16);
              v27 = *(v88 + 32);
              v28 = *(v88 + 48);
              v70[2] = *v88;
              v70[3] = v27;
              v95 = &v89->i8[v24];
              *v95 = v26;
              *(v95 + 1) = v28;
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v88);
              v70[2] = v92;
              v70[3] = v92;
              v94 = (v89 + v24);
              *v94 = v92;
              v94[1] = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v89, v24, v88, v90, *v84.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v91 = 0;
              v92.i64[0] = 0;
              *v89 = 0u;
              v70[3] = 0u;
              v93 = &v89->i8[v24];
              *v93 = 0u;
              *(v93 + 1) = 0u;
            }

            v96 = v88 + v91;
            v97 = v81 + 2;
            v98 = v69[3];
            if (v98 == 63)
            {
              v100 = *v96;
              v26 = *(v96 + 16);
              v27 = *(v96 + 32);
              v28 = *(v96 + 48);
              v81[2] = *v96;
              v81[3] = v27;
              v103 = &v97->i8[v24];
              *v103 = v26;
              *(v103 + 1) = v28;
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v96);
              v81[2] = v100;
              v81[3] = v100;
              v102 = (v97 + v24);
              *v102 = v100;
              v102[1] = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v97, v24, v96, v98, *v92.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v99 = 0;
              v100.i64[0] = 0;
              *v97 = 0u;
              v81[3] = 0u;
              v101 = &v97->i8[v24];
              *v101 = 0u;
              *(v101 + 1) = 0u;
            }

            v104 = v96 + v99;
            v105 = (v70 + v189);
            v106 = v69[4];
            if (v106 == 63)
            {
              v108 = *v104;
              v26 = *(v104 + 16);
              v27 = *(v104 + 32);
              v28 = *(v104 + 48);
              *v105 = *v104;
              v105[1] = v27;
              v111 = (v105 + v24);
              *v111 = v26;
              v111[1] = v28;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v104);
              *v105 = v108;
              v105[1] = v108;
              v110 = (v105 + v24);
              *v110 = v108;
              v110[1] = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v70 + v189), v24, v104, v106, *v100.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v108.i64[0] = 0;
              *v105 = 0u;
              v105[1] = 0u;
              v109 = &v105->i8[v24];
              *v109 = 0u;
              *(v109 + 1) = 0u;
            }

            v112 = v104 + v107;
            v113 = (v70 + 6 * a11);
            v114 = v69[5];
            if (v114 == 63)
            {
              v116 = *v112;
              v26 = *(v112 + 16);
              v27 = *(v112 + 32);
              v28 = *(v112 + 48);
              *v113 = *v112;
              v113[1] = v27;
              v119 = (v113 + v24);
              *v119 = v26;
              v119[1] = v28;
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v112);
              *v113 = v116;
              v113[1] = v116;
              v118 = (v113 + v24);
              *v118 = v116;
              v118[1] = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, v24, v112, v114, *v108.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v115 = 0;
              v116.i64[0] = 0;
              *v113 = 0u;
              v113[1] = 0u;
              v117 = &v113->i8[v24];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v120 = v112 + v115;
            v121 = v105 + 2;
            v122 = v69[6];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v27 = *(v120 + 32);
              v28 = *(v120 + 48);
              v105[2] = *v120;
              v105[3] = v27;
              v127 = &v121->i8[v24];
              *v127 = v26;
              *(v127 + 1) = v28;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v105[2] = v124;
              v105[3] = v124;
              v126 = (v121 + v24);
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v116.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v105[3] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v39 = v36 + 1;
            v128 = v120 + v123;
            v129 = v113 + 2;
            v130 = v69[7];
            if (v130 == 63)
            {
              v29 = *v128;
              v26 = *(v128 + 16);
              v27 = *(v128 + 32);
              v28 = *(v128 + 48);
              v113[2] = *v128;
              v113[3] = v27;
              v132 = &v129->i8[v24];
              *v132 = v26;
              *(v132 + 1) = v28;
              v38 = a7;
              v15 = v207;
              goto LABEL_29;
            }

            v15 = v207;
            if (v130 == 1)
            {
              v29 = vld1q_dup_s16(v128);
              v113[2] = v29;
              v113[3] = v29;
LABEL_137:
              v131 = (v129 + v24);
              *v131 = v29;
              v131[1] = v29;
            }

            else
            {
              if (!v130)
              {
                v29 = 0uLL;
                *v129 = 0u;
                v113[3] = 0u;
                goto LABEL_137;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v129, v24, v128, v130, *v124.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            v38 = a7;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v207;
          block[5] = v68;
          v217 = v45;
          v218 = v208;
          v213 = v194;
          v214 = v42 - v40;
          block[6] = v69;
          v211 = v70;
          v24 = a11;
          v212 = a11;
          v215 = v193;
          v216 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v207 + 8) + 16552), block);
            v38 = a7;
            v15 = v207;
            v39 = v36 + 1;
          }

          else
          {
            v75 = *v69;
            v38 = a7;
            if (v75 == 63)
            {
              v77 = *v68;
              v26 = v68[1];
              v27 = v68[2];
              v28 = v68[3];
              v220 = *v68;
              v221 = v27;
              v224 = v26;
              v225 = v28;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v77 = vld1q_dup_s16(v68->i16);
              v220 = v77;
              v221 = v77;
              v224 = v77;
              v225 = v77;
              v76 = 2;
            }

            else if (*v69)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 64, v68, v75, *v29.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v76 = 0;
              v77.i64[0] = 0;
              v220 = 0u;
              v221 = 0u;
              v224 = 0u;
              v225 = 0u;
            }

            v133 = v68->i64 + v76;
            v134 = v69[1];
            if (v134 == 63)
            {
              v136 = *v133;
              v26 = *(v133 + 16);
              v27 = *(v133 + 32);
              v28 = *(v133 + 48);
              v228 = *v133;
              v229 = v27;
              v232 = v26;
              v233 = v28;
              v135 = 64;
              v39 = v36 + 1;
            }

            else
            {
              v39 = v36 + 1;
              if (v134 == 1)
              {
                v136 = vld1q_dup_s16(v133);
                v228 = v136;
                v229 = v136;
                v232 = v136;
                v233 = v136;
                v135 = 2;
              }

              else if (v69[1])
              {
                v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v133, v134, *v77.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v135 = 0;
                v136.i64[0] = 0;
                v228 = 0u;
                v229 = 0u;
                v232 = 0u;
                v233 = 0u;
              }
            }

            v137 = v133 + v135;
            v138 = v69[2];
            if (v138 == 63)
            {
              v140 = *v137;
              v26 = *(v137 + 16);
              v27 = *(v137 + 32);
              v28 = *(v137 + 48);
              v222 = *v137;
              v223 = v27;
              v226 = v26;
              v227 = v28;
              v139 = 64;
            }

            else if (v138 == 1)
            {
              v140 = vld1q_dup_s16(v137);
              v222 = v140;
              v223 = v140;
              v226 = v140;
              v227 = v140;
              v139 = 2;
            }

            else if (v69[2])
            {
              v139 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 64, v137, v138, *v136.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v139 = 0;
              v140.i64[0] = 0;
              v222 = 0u;
              v223 = 0u;
              v226 = 0u;
              v227 = 0u;
            }

            v141 = v137 + v139;
            v142 = v69[3];
            if (v142 == 63)
            {
              v144 = *v141;
              v26 = *(v141 + 16);
              v27 = *(v141 + 32);
              v28 = *(v141 + 48);
              v230 = *v141;
              v231 = v27;
              v234 = v26;
              v235 = v28;
              v143 = 64;
            }

            else if (v142 == 1)
            {
              v144 = vld1q_dup_s16(v141);
              v230 = v144;
              v231 = v144;
              v234 = v144;
              v235 = v144;
              v143 = 2;
            }

            else if (v69[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 64, v141, v142, *v140.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v143 = 0;
              v144.i64[0] = 0;
              v230 = 0u;
              v231 = 0u;
              v234 = 0u;
              v235 = 0u;
            }

            v145 = v141 + v143;
            v146 = v69[4];
            if (v146 == 63)
            {
              v148 = *v145;
              v26 = *(v145 + 16);
              v27 = *(v145 + 32);
              v28 = *(v145 + 48);
              v236 = *v145;
              v237 = v27;
              v240 = v26;
              v241 = v28;
              v147 = 64;
            }

            else if (v146 == 1)
            {
              v148 = vld1q_dup_s16(v145);
              v236 = v148;
              v237 = v148;
              v240 = v148;
              v241 = v148;
              v147 = 2;
            }

            else if (v69[4])
            {
              v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 64, v145, v146, *v144.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v147 = 0;
              v148.i64[0] = 0;
              v236 = 0u;
              v237 = 0u;
              v240 = 0u;
              v241 = 0u;
            }

            v149 = v145 + v147;
            v150 = v69[5];
            if (v150 == 63)
            {
              v152 = *v149;
              v26 = *(v149 + 16);
              v27 = *(v149 + 32);
              v28 = *(v149 + 48);
              v244 = *v149;
              v245 = v27;
              v248 = v26;
              v249 = v28;
              v151 = 64;
            }

            else if (v150 == 1)
            {
              v152 = vld1q_dup_s16(v149);
              v244 = v152;
              v245 = v152;
              v248 = v152;
              v249 = v152;
              v151 = 2;
            }

            else if (v69[5])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v149, v150, *v148.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v151 = 0;
              v152.i64[0] = 0;
              v244 = 0u;
              v245 = 0u;
              v248 = 0u;
              v249 = 0u;
            }

            v153 = v149 + v151;
            v154 = v69[6];
            if (v154 == 63)
            {
              v156 = *v153;
              v26 = *(v153 + 16);
              v27 = *(v153 + 32);
              v28 = *(v153 + 48);
              v238 = *v153;
              v239 = v27;
              v242 = v26;
              v243 = v28;
              v155 = 64;
            }

            else if (v154 == 1)
            {
              v156 = vld1q_dup_s16(v153);
              v238 = v156;
              v239 = v156;
              v242 = v156;
              v243 = v156;
              v155 = 2;
            }

            else if (v69[6])
            {
              v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 64, v153, v154, *v152.i64, *v26.i64, *v27.i64, *v28.i8);
            }

            else
            {
              v155 = 0;
              v156.i64[0] = 0;
              v238 = 0u;
              v239 = 0u;
              v242 = 0u;
              v243 = 0u;
            }

            v157 = v153 + v155;
            v158 = v69[7];
            if (v158 == 63)
            {
              v29 = *v157;
              v26 = *(v157 + 16);
              v27 = *(v157 + 32);
              v28 = *(v157 + 48);
              v246 = *v157;
              v247 = v27;
              v250 = v26;
              v251 = v28;
              v15 = v207;
            }

            else
            {
              v15 = v207;
              if (v158 == 1)
              {
                v29 = vld1q_dup_s16(v157);
                v246 = v29;
                v247 = v29;
                v250 = v29;
                v251 = v29;
              }

              else if (v158)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 64, v157, v158, *v156.i64, *v26.i64, *v27.i64, *v28.i8);
              }

              else
              {
                v29.i64[0] = 0;
                v246 = 0u;
                v247 = 0u;
                v250 = 0u;
                v251 = 0u;
              }
            }

            v159 = v215;
            if (v215)
            {
              v160 = 0;
              v161 = &v220.i8[64 * v213 + 8 * v214];
              v162 = v216;
              do
              {
                if (v162)
                {
                  v163 = 0;
                  v164 = v211->i64 + v212 * v160;
                  do
                  {
                    *(v164 + v163) = v161[v163];
                    ++v163;
                    v162 = v216;
                  }

                  while (8 * v216 > v163);
                  v159 = v215;
                }

                ++v160;
                v161 += 64;
              }

              while (v160 < v159);
            }
          }

LABEL_29:
          v20 = v36 == v198 >> 3;
          v36 = v39;
        }

        while (!v20);
        v20 = v16++ == v188;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v151[24] = *MEMORY[0x29EDCA608];
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

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v110 = v111 >> 3;
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
      v121 = v25 - 3;
      v114 = v24 - 3;
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
    if (a7 >> 3 <= v124 >> 3)
    {
      v133 = v18 >> 3;
      v117 = v18 & 7;
      v122 = (v18 & 7) + 1;
      v106 = v19 & 7;
      v107 = v19 >> 3;
      v115 = 4 * a11;
      v116 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v33 = vcgt_u32(v32, 0xF0000000FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v32, 3uLL))))))), v33);
      v112 = v33;
      v123 = v15;
      do
      {
        v34 = (8 * v17) | 7;
        if (8 * v17 <= v131)
        {
          v35 = v131;
        }

        else
        {
          v35 = 8 * v17;
        }

        if (v111 < v34)
        {
          v34 = v111;
        }

        v120 = v35 - 8 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v106;
        v119 = v37;
        v39 = v37 != 8;
        v40 = a7 >> 3;
        v41 = v106 + 1;
        if (v17 != v107)
        {
          v41 = 8;
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
          v53 = 8 * v40;
          v54 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = 8 * v40;
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
            v58 = 8;
          }

          v59 = 1;
          if (8 * v17 >= v131 && v53 >= v42)
          {
            v60 = v56 != v117;
            if (v40 != v133)
            {
              v60 = v57 != 8;
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v88 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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
          v92 = v129 + 16 * (v55 - v42);
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116, a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 64, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116 + 64, a11, v45, v91[3]);
            v47 = v92 + v115;
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v115, a11, v46, v91[4]);
            v49 = v92 + 6 * a11;
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 64, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 64, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[128 * v137 + 16 * v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v135 + v136 * v101;
                do
                {
                  *(v105 + v104) = v102[v104];
                  ++v104;
                  v103 = v140;
                }

                while (16 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 128;
            }

            while (v101 < v100);
          }

LABEL_50:
          v20 = v40 == v124 >> 3;
          v40 = v52;
        }

        while (!v20);
        v20 = v17++ == v110;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v151[24] = *MEMORY[0x29EDCA608];
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

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v110 = v111 >> 3;
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
      v121 = v25 - 3;
      v114 = v24 - 3;
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
    if (a7 >> 3 <= v124 >> 3)
    {
      v133 = v18 >> 3;
      v117 = v18 & 7;
      v122 = (v18 & 7) + 1;
      v106 = v19 & 7;
      v107 = v19 >> 3;
      v115 = 4 * a11;
      v116 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v33 = vcgt_u32(v32, 0xF0000000FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v32, 3uLL))))))), v33);
      v112 = v33;
      v123 = v15;
      do
      {
        v34 = (8 * v17) | 7;
        if (8 * v17 <= v131)
        {
          v35 = v131;
        }

        else
        {
          v35 = 8 * v17;
        }

        if (v111 < v34)
        {
          v34 = v111;
        }

        v120 = v35 - 8 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v106;
        v119 = v37;
        v39 = v37 != 8;
        v40 = a7 >> 3;
        v41 = v106 + 1;
        if (v17 != v107)
        {
          v41 = 8;
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
          v53 = 8 * v40;
          v54 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = 8 * v40;
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
            v58 = 8;
          }

          v59 = 1;
          if (8 * v17 >= v131 && v53 >= v42)
          {
            v60 = v56 != v117;
            if (v40 != v133)
            {
              v60 = v57 != 8;
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v88 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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
          v92 = v129 + 16 * (v55 - v42);
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116, a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 64, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116 + 64, a11, v45, v91[3]);
            v47 = v92 + v115;
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v115, a11, v46, v91[4]);
            v49 = v92 + 6 * a11;
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 64, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 64, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[128 * v137 + 16 * v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v135 + v136 * v101;
                do
                {
                  *(v105 + v104) = v102[v104];
                  ++v104;
                  v103 = v140;
                }

                while (16 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 128;
            }

            while (v101 < v100);
          }

LABEL_50:
          v20 = v40 == v124 >> 3;
          v40 = v52;
        }

        while (!v20);
        v20 = v17++ == v110;
      }

      while (!v20);
    }
  }
}