uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v148 = v21;
  v149 = v22;
  v133 = v23;
  v24 = v12;
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v153 = v14;
  v135 = v14 + a10 - 1;
  v154 = v24;
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
  v134 = v135 >> 3;
  v31 = (v27 & 0xD00) == 0 || v27 == 768;
  v32 = v27 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v156 = v34;
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
      v147 = 0;
LABEL_32:
      v144 = v37 - 3;
      v138 = v36 - 3;
      v43 = -1 << *(*(v24 + 208) + 48);
      v132 = (((~v43 + v20) & v43) + ~(-1 << v37)) >> v37;
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

    v147 = v42 >= v36;
    goto LABEL_32;
  }

  v147 = 0;
  v132 = 0;
  v138 = 0;
  v144 = 0;
LABEL_33:
  if (v28 <= v134)
  {
    v146 = v16 + a9 - 1;
    v131 = v16 >> 3;
    if (v16 >> 3 <= v146 >> 3)
    {
      v155 = v29 >> 3;
      v140 = v29 & 7;
      v129 = v30 & 7;
      v130 = v30 >> 3;
      v44 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v45 = vcgt_u32(v44, 0xF0000000FLL);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v44, 3uLL))))))), v45);
      v136 = v45;
      v145 = v16;
      do
      {
        v46 = (8 * v28) | 7;
        if (8 * v28 <= v153)
        {
          v47 = v153;
        }

        else
        {
          v47 = 8 * v28;
        }

        if (v135 < v46)
        {
          v46 = v135;
        }

        v143 = v47 - 8 * v28;
        v48 = v46 - v47;
        v49 = v48 + 1;
        v50 = v48 != v129;
        v142 = v49;
        v51 = v49 != 8;
        v52 = v129 + 1;
        if (v28 != v130)
        {
          v52 = 8;
          v50 = v51;
        }

        v141 = v50;
        v53 = v131;
        v54 = v28 & ~(-1 << v138);
        v151 = v133 + (v47 - v153) * a11;
        v152 = v52;
        v150 = v52;
        do
        {
          v55 = 8 * v53;
          v56 = 8 * (v53 + 1) - 1;
          if (8 * v53 <= v16)
          {
            v57 = v16;
          }

          else
          {
            v57 = 8 * v53;
          }

          if (v146 < v56)
          {
            v56 = v146;
          }

          v58 = v56 - v57;
          v59 = v58 + 1;
          if (v53 == v155)
          {
            v60 = (v140 + 1);
          }

          else
          {
            v60 = 8;
          }

          v61 = 1;
          if (8 * v28 >= v153 && v55 >= v16)
          {
            v62 = v58 != v140;
            if (v53 != v155)
            {
              v62 = v59 != 8;
            }

            v61 = v62 || v141;
          }

          if (v147)
          {
            if (v144 | v138)
            {
              v63 = 0;
              v64 = 0;
              v65 = v138 != 0;
              v66 = 1;
              v68 = v144 != 0;
              v67 = v138;
              v69 = v144;
              do
              {
                --v69;
                if (v68)
                {
                  v64 |= (v53 & ~(-1 << v144) & v66) << v63++;
                }

                else
                {
                  v69 = 0;
                }

                --v67;
                if (v65)
                {
                  v64 |= (v54 & v66) << v63++;
                }

                else
                {
                  v67 = 0;
                }

                v66 *= 2;
                --v63;
                v65 = v67 != 0;
                v68 = v69 != 0;
              }

              while (v67 | v69);
              v70 = v64 << 11;
            }

            else
            {
              v70 = 0;
            }

            v78 = v70 + *(result + 336) * ((v53 >> v144) + (v28 >> v138) * v132);
          }

          else if (v137)
          {
            v71 = 0;
            v72 = 0;
            v73 = 1;
            v74 = v136.i8[0];
            v75 = v136.i8[4];
            v77 = v137.i32[0];
            v76 = v137.i32[1];
            do
            {
              --v76;
              if (v75)
              {
                v72 |= (v73 & v53) << v71++;
              }

              else
              {
                v76 = 0;
              }

              --v77;
              if (v74)
              {
                v72 |= (v73 & v28) << v71++;
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

          v80 = v79 + 7;
          if (v80 < 0x10)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 3) - 1)));
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
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 3) - 1)));
          }

          if (v84 | v81)
          {
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
          }

          else
          {
            v90 = 0;
          }

          v91 = (v149 + v90);
          v92 = v151 + 32 * (v57 - v16);
          v93 = (v148 + v78);
          if (v156)
          {
            if (!(v61 & 1 | (v60 < 8u) | (v150 < 8)))
            {
              v98 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v92, a11, v98, v91, v60, v152, v25, v26);
              goto LABEL_111;
            }

            v139 = (v148 + v78);
            v94 = v61;
            v95 = v60;
            v96 = v54;
            v97 = v57;
            memcpy(__dst, (v148 + v78), sizeof(__dst));
            v57 = v97;
            v54 = v96;
            v98 = __dst;
            v61 = v94;
            v93 = v139;
            LOBYTE(v60) = v95;
            result = v154;
          }

          else
          {
            v98 = (v148 + v78);
            if (!(v61 & 1 | (v60 < 8u) | (v150 < 8)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v98;
          v166 = v60;
          v167 = v152;
          v162 = v143;
          v163 = v57 - v55;
          v159 = v91;
          v160 = v92;
          v161 = a11;
          v164 = v142;
          v165 = v59;
          if (v61)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v145;
            v99 = v53 + 1;
            if (!v156)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v93, v98, 0x800uLL);
            goto LABEL_46;
          }

          v100 = &v98[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v98, *v91)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 256, v100, v91[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v101, v91[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 256, v102, v91[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 256, v103, v91[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 256, v104, v91[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 256, v105, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 256, v105 + v106, v91[7]);
          v109 = v164;
          v16 = v145;
          v99 = v53 + 1;
          if (v164 && v165)
          {
            v110 = 0;
            v111 = v162 << 8;
            v112 = 32 * v163;
            v113 = &v169[0].i8[v111 + v112];
            v114 = v160;
            v115 = v161;
            v116 = 32 * v165;
            if (v116)
            {
              v117 = (v116 - 1) >> 32 == 0;
            }

            else
            {
              v117 = 0;
            }

            v118 = !v117;
            v120 = v113 < v160 + v161 * (v164 - 1) + v116 && v160 < &__dst[256 * v164 + 1792 + 256 * v162 + v116 + v112];
            v121 = v118 | (v161 < 0) | v120;
            v122 = &v169[1].i8[v111 + v112];
            v123 = (v160 + 16);
            do
            {
              v124 = v123;
              v125 = v122;
              v126 = v116;
              if (v121)
              {
                v127 = 0;
                do
                {
                  v113[v127] = *(v114 + v127);
                  ++v127;
                }

                while (v116 > v127);
              }

              else
              {
                do
                {
                  v128 = *v124;
                  *(v125 - 1) = *(v124 - 1);
                  *v125 = v128;
                  v125 += 32;
                  v124 += 2;
                  v126 -= 32;
                }

                while (v126);
              }

              ++v110;
              v122 += 256;
              v123 = (v123 + v115);
              v113 += 256;
              v114 += v115;
            }

            while (v110 != v109);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 256, v158, v159, v166, v167, v107, v108);
          if (v156)
          {
            goto LABEL_136;
          }

LABEL_46:
          v31 = v53 == v146 >> 3;
          v53 = v99;
          result = v154;
        }

        while (!v31);
        v31 = v28++ == v134;
      }

      while (!v31);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v144 = v21;
  v145 = v22;
  v129 = v23;
  v24 = v12;
  v173 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v149 = v14;
  v131 = v14 + a10 - 1;
  v150 = v24;
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
  v130 = v131 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v152 = v32;
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
      v143 = 0;
LABEL_32:
      v140 = v35 - 3;
      v134 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v128 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v143 = v40 >= v34;
    goto LABEL_32;
  }

  v143 = 0;
  v128 = 0;
  v134 = 0;
  v140 = 0;
LABEL_33:
  if (v26 <= v130)
  {
    v142 = v16 + a9 - 1;
    v127 = v16 >> 3;
    if (v16 >> 3 <= v142 >> 3)
    {
      v151 = v27 >> 3;
      v136 = v27 & 7;
      v125 = v28 & 7;
      v126 = v28 >> 3;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v132 = v43;
      v141 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v149)
        {
          v45 = v149;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v131 < v44)
        {
          v44 = v131;
        }

        v139 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v125;
        v138 = v47;
        v49 = v47 != 8;
        v50 = v125 + 1;
        if (v26 != v126)
        {
          v50 = 8;
          v48 = v49;
        }

        v137 = v48;
        v51 = v127;
        v52 = v26 & ~(-1 << v134);
        v147 = v129 + (v45 - v149) * a11;
        v148 = v50;
        v146 = v50;
        do
        {
          v53 = 8 * v51;
          v54 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 8 * v51;
          }

          if (v142 < v54)
          {
            v54 = v142;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v151)
          {
            v58 = v136 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (8 * v26 >= v149 && v53 >= v16)
          {
            v60 = v56 != v136;
            if (v51 != v151)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v137;
          }

          if (v143)
          {
            if (v140 | v134)
            {
              v61 = 0;
              v62 = 0;
              v63 = v134 != 0;
              v64 = 1;
              v66 = v140 != 0;
              v65 = v134;
              v67 = v140;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v51 & ~(-1 << v140) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v52 & v64) << v61++;
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
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v140) + (v26 >> v134) * v128);
          }

          else if (v133)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v132.i8[0];
            v73 = v132.i8[4];
            v75 = v133.i32[0];
            v74 = v133.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
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
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
          }

          if (v82 | v79)
          {
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
          }

          else
          {
            v88 = 0;
          }

          v89 = (v145 + v88);
          v90 = v147 + 32 * (v55 - v16);
          v91 = (v144 + v76);
          if (v152)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              v96 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v96, v89, v58, v148);
              goto LABEL_111;
            }

            v135 = (v144 + v76);
            v92 = v59;
            v93 = v58;
            v94 = v52;
            v95 = v55;
            memcpy(__dst, (v144 + v76), sizeof(__dst));
            v55 = v95;
            v52 = v94;
            v96 = __dst;
            v59 = v92;
            v91 = v135;
            LOBYTE(v58) = v93;
            result = v150;
          }

          else
          {
            v96 = (v144 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 8)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v154 = v96;
          v162 = v58;
          v163 = v148;
          v158 = v139;
          v159 = v55 - v53;
          v155 = v89;
          v156 = v90;
          v157 = a11;
          v160 = v138;
          v161 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v141;
            v97 = v51 + 1;
            if (!v152)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v91, v96, 0x800uLL);
            goto LABEL_46;
          }

          v98 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v96, *v89);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 256, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 256, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 8;
            v108 = 32 * v159;
            v109 = &v165[0].i8[v107 + v108];
            v110 = v156;
            v111 = v157;
            v112 = 32 * v161;
            if (v112)
            {
              v113 = (v112 - 1) >> 32 == 0;
            }

            else
            {
              v113 = 0;
            }

            v114 = !v113;
            v116 = v109 < v156 + v157 * (v160 - 1) + v112 && v156 < &__dst[256 * v160 + 1792 + 256 * v158 + v112 + v108];
            v117 = v114 | (v157 < 0) | v116;
            v118 = &v165[1].i8[v107 + v108];
            v119 = (v156 + 16);
            do
            {
              v120 = v119;
              v121 = v118;
              v122 = v112;
              if (v117)
              {
                v123 = 0;
                do
                {
                  v109[v123] = *(v110 + v123);
                  ++v123;
                }

                while (v112 > v123);
              }

              else
              {
                do
                {
                  v124 = *v120;
                  *(v121 - 1) = *(v120 - 1);
                  *v121 = v124;
                  v121 += 32;
                  v120 += 2;
                  v122 -= 32;
                }

                while (v122);
              }

              ++v106;
              v118 += 256;
              v119 = (v119 + v111);
              v109 += 256;
              v110 += v111;
            }

            while (v106 != v105);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v165, 256, v154, v155, v162, v163);
          if (v152)
          {
            goto LABEL_136;
          }

LABEL_46:
          v29 = v51 == v142 >> 3;
          v51 = v97;
          result = v150;
        }

        while (!v29);
        v29 = v26++ == v130;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v141 = v21;
  v142 = v22;
  v130 = v23;
  v24 = v12;
  v171 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v147 = v14;
  v25 = v14 >> 3;
  v129 = v14 + a10 - 1;
  v131 = v129 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v148 = v24;
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
  v150 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v140 = result;
  if (v25 <= v131)
  {
    v139 = v16 + a9 - 1;
    v128 = v16 >> 3;
    if (v16 >> 3 <= v139 >> 3)
    {
      result = v24;
      v149 = (v20 - 1) >> 3;
      v125 = v20 - 1;
      v132 = (v20 - 1) & 7;
      v126 = (v18 - 1) & 7;
      v127 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v136 = v35;
      v124 = 8 * v27 * v26;
      v138 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v147)
        {
          v37 = v147;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v129 < v36)
        {
          v36 = v129;
        }

        v146 = 8 * v25;
        v135 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v126;
        v134 = v39;
        v41 = v39 != 8;
        v42 = v128;
        v43 = v126 + 1;
        if (v25 != v127)
        {
          v43 = 8;
          v40 = v41;
        }

        v133 = v40;
        v144 = v130 + (v37 - v147) * a11;
        v145 = v43;
        v143 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (v44 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = v44;
          }

          if (v139 < v45)
          {
            v45 = v139;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v149)
          {
            v49 = (v132 + 1);
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v146 >= v147 && v44 >= v16)
          {
            v51 = v47 != v132;
            if (v42 != v149)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v133;
          }

          if (v140)
          {
            v72 = 0;
            v73 = v124 >> (*(result + 57) != 0);
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
              v74 = 0;
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
                v74 = 0;
                v76 = 8;
                v72 = 16;
              }
            }

            v112 = (v72 >> 3) - 1;
            if (v74)
            {
              v113 = 0;
            }

            else
            {
              v113 = 32 - __clz(~(-1 << -__clz(v112)));
            }

            v114 = (v76 >> 3) - 1;
            if (v75)
            {
              v115 = 0;
              if (v113)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v115 = 32 - __clz(~(-1 << -__clz(v114)));
              if (v115 | v113)
              {
LABEL_131:
                v116 = 0;
                v117 = 0;
                v118 = v42 & v112;
                v119 = v25 & v114;
                v120 = v113 != 0;
                v121 = v115 != 0;
                v122 = 1;
                do
                {
                  --v113;
                  if (v120)
                  {
                    v117 |= (v122 & v118) << v116++;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  --v115;
                  if (v121)
                  {
                    v117 |= (v122 & v119) << v116++;
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v122 *= 2;
                  --v116;
                  v121 = v115 != 0;
                  v120 = v113 != 0;
                }

                while (v115 | v113);
                v123 = v117 << 11;
                result = v148;
                goto LABEL_143;
              }
            }

            v123 = 0;
LABEL_143:
            v59 = v123 + ((v44 / v72 + v146 / v76 * ((v72 + v125) / v72)) << 14);
            goto LABEL_52;
          }

          if (v137)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v136.i8[0];
            v56 = v136.i8[4];
            v58 = v137.i32[0];
            v57 = v137.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
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

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
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
          v77 = (v142 + v71);
          v78 = v144 + 32 * (v46 - v16);
          v79 = (v141 + v59);
          if (v150)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 8)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v145, v44, v46);
              goto LABEL_86;
            }

            v80 = v49;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            LODWORD(v46) = v81;
            v82 = __dst;
            LODWORD(v44) = 8 * v42;
            LOBYTE(v49) = v80;
            result = v148;
          }

          else
          {
            v82 = (v141 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v143 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v152 = v82;
          v160 = v49;
          v161 = v145;
          v156 = v135;
          v157 = v46 - v44;
          v153 = v77;
          v154 = v78;
          v155 = a11;
          v158 = v134;
          v159 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v138;
            if (!v150)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v79, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v82, *v77)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v88 + v89, v77[7]);
          v92 = v158;
          v16 = v138;
          if (v158 && v159)
          {
            v93 = 0;
            v94 = v156 << 8;
            v95 = 32 * v157;
            v96 = &v163[0].i8[v94 + v95];
            v97 = v154;
            v98 = v155;
            v99 = 32 * v159;
            if (v99)
            {
              v100 = (v99 - 1) >> 32 == 0;
            }

            else
            {
              v100 = 0;
            }

            v101 = !v100;
            v103 = v96 < v154 + v155 * (v158 - 1) + v99 && v154 < &__dst[256 * v158 + 1792 + 256 * v156 + v99 + v95];
            v104 = v101 | (v155 < 0) | v103;
            v105 = &v163[1].i8[v94 + v95];
            v106 = (v154 + 16);
            do
            {
              v107 = v106;
              v108 = v105;
              v109 = v99;
              if (v104)
              {
                v110 = 0;
                do
                {
                  v96[v110] = *(v97 + v110);
                  ++v110;
                }

                while (v99 > v110);
              }

              else
              {
                do
                {
                  v111 = *v107;
                  *(v108 - 1) = *(v107 - 1);
                  *v108 = v111;
                  v108 += 32;
                  v107 += 2;
                  v109 -= 32;
                }

                while (v109);
              }

              ++v93;
              v105 += 256;
              v106 = (v106 + v98);
              v96 += 256;
              v97 += v98;
            }

            while (v93 != v92);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v163, 256, v152, v153, v160, v161, v90, v91);
          if (v150)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v139 >> 3;
          result = v148;
        }

        while (!v29);
        v29 = v25++ == v131;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v139 = v21;
  v140 = v22;
  v128 = v23;
  v24 = v12;
  v169 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v25 = v14 >> 3;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v146 = v24;
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
  v148 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v138 = result;
  if (v25 <= v129)
  {
    v137 = v16 + a9 - 1;
    v126 = v16 >> 3;
    if (v16 >> 3 <= v137 >> 3)
    {
      result = v24;
      v147 = (v20 - 1) >> 3;
      v123 = v20 - 1;
      v130 = (v20 - 1) & 7;
      v124 = (v18 - 1) & 7;
      v125 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v134 = v35;
      v122 = 8 * v27 * v26;
      v136 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v145)
        {
          v37 = v145;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v127 < v36)
        {
          v36 = v127;
        }

        v144 = 8 * v25;
        v133 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v124;
        v132 = v39;
        v41 = v39 != 8;
        v42 = v126;
        v43 = v124 + 1;
        if (v25 != v125)
        {
          v43 = 8;
          v40 = v41;
        }

        v131 = v40;
        v142 = v128 + (v37 - v145) * a11;
        v143 = v43;
        v141 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v42;
          }

          if (v137 < v45)
          {
            v45 = v137;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v147)
          {
            v49 = v130 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v144 >= v145 && v44 >= v16)
          {
            v51 = v47 != v130;
            if (v42 != v147)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v131;
          }

          if (v138)
          {
            v72 = 0;
            v73 = v122 >> (*(result + 57) != 0);
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
              v74 = 0;
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
                v74 = 0;
                v76 = 8;
                v72 = 16;
              }
            }

            v110 = (v72 >> 3) - 1;
            if (v74)
            {
              v111 = 0;
            }

            else
            {
              v111 = 32 - __clz(~(-1 << -__clz(v110)));
            }

            v112 = (v76 >> 3) - 1;
            if (v75)
            {
              v113 = 0;
              if (v111)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v113 = 32 - __clz(~(-1 << -__clz(v112)));
              if (v113 | v111)
              {
LABEL_131:
                v114 = 0;
                v115 = 0;
                v116 = v42 & v110;
                v117 = v25 & v112;
                v118 = v111 != 0;
                v119 = v113 != 0;
                v120 = 1;
                do
                {
                  --v111;
                  if (v118)
                  {
                    v115 |= (v120 & v116) << v114++;
                  }

                  else
                  {
                    v111 = 0;
                  }

                  --v113;
                  if (v119)
                  {
                    v115 |= (v120 & v117) << v114++;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v120 *= 2;
                  --v114;
                  v119 = v113 != 0;
                  v118 = v111 != 0;
                }

                while (v113 | v111);
                v121 = v115 << 11;
                result = v146;
                goto LABEL_143;
              }
            }

            v121 = 0;
LABEL_143:
            v59 = v121 + ((v44 / v72 + v144 / v76 * ((v72 + v123) / v72)) << 14);
            goto LABEL_52;
          }

          if (v135)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v134.i8[0];
            v56 = v134.i8[4];
            v58 = v135.i32[0];
            v57 = v135.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
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

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
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
          v77 = (v140 + v71);
          v78 = v142 + 32 * (v46 - v16);
          v79 = (v139 + v59);
          if (v148)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v143);
              goto LABEL_86;
            }

            v80 = v49;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v82 = __dst;
            v44 = 8 * v42;
            LOBYTE(v49) = v80;
            result = v146;
          }

          else
          {
            v82 = (v139 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v141 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v150 = v82;
          v158 = v49;
          v159 = v143;
          v154 = v133;
          v155 = v46 - v44;
          v151 = v77;
          v152 = v78;
          v153 = a11;
          v156 = v132;
          v157 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
            v16 = v136;
            if (!v148)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v79, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v82, *v77);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v88 + v89, v77[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 8;
            v93 = 32 * v155;
            v94 = &v161[0].i8[v92 + v93];
            v95 = v152;
            v96 = v153;
            v97 = 32 * v157;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v152 + v153 * (v156 - 1) + v97 && v152 < &__dst[256 * v156 + 1792 + 256 * v154 + v97 + v93];
            v102 = v99 | (v153 < 0) | v101;
            v103 = &v161[1].i8[v92 + v93];
            v104 = (v152 + 16);
            do
            {
              v105 = v104;
              v106 = v103;
              v107 = v97;
              if (v102)
              {
                v108 = 0;
                do
                {
                  v94[v108] = *(v95 + v108);
                  ++v108;
                }

                while (v97 > v108);
              }

              else
              {
                do
                {
                  v109 = *v105;
                  *(v106 - 1) = *(v105 - 1);
                  *v106 = v109;
                  v106 += 32;
                  v105 += 2;
                  v107 -= 32;
                }

                while (v107);
              }

              ++v91;
              v103 += 256;
              v104 = (v104 + v96);
              v94 += 256;
              v95 += v96;
            }

            while (v91 != v90);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v161, 256, v150, v151, v158, v159);
          if (v148)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v137 >> 3;
          result = v146;
        }

        while (!v29);
        v29 = v25++ == v129;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v134 = a8 + a10 - 1;
  v153 = a1;
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
  v133 = v134 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v155 = v24;
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
      v146 = 0;
LABEL_32:
      v143 = v27 - 3;
      v137 = v26 - 3;
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

    v146 = v32 >= v26;
    goto LABEL_32;
  }

  v146 = 0;
  v131 = 0;
  v137 = 0;
  v143 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v145 = a7 + a9 - 1;
    v130 = a7 >> 3;
    if (a7 >> 3 <= v145 >> 3)
    {
      v154 = v19 >> 3;
      v139 = v19 & 7;
      v128 = v20 & 7;
      v129 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v135 = v35;
      v144 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v152)
        {
          v37 = v152;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v142 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v141 = v39;
        v41 = v39 != 8;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 8;
          v40 = v41;
        }

        v140 = v40;
        v43 = v130;
        v150 = a3 + (v37 - v152) * a11;
        v151 = v42;
        v149 = v42;
        do
        {
          v44 = 8 * v43;
          v45 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 8 * v43;
          }

          if (v145 < v45)
          {
            v45 = v145;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v139 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v152 && v44 >= a7)
          {
            v51 = v47 != v139;
            if (v43 != v154)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v140;
          }

          if (v146)
          {
            if (v143 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v143 != 0;
              v56 = v137;
              v58 = v143;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v143) & v55) << v52++;
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
              v59 = v53 << 9;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v143) + (v18 >> v137) * v131);
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
            v67 = v61 << 9;
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

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
          }

          v71 = *(result + 132) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
            if (!v70)
            {
LABEL_104:
              v79 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_104;
            }
          }

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
LABEL_105:
          v80 = (a4 + v79);
          v81 = v150 + 8 * (v46 - a7);
          v82 = (a2 + v67);
          if (v155)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              v86 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v86, v80, v49, v151);
LABEL_113:
              a7 = v144;
              if (v155)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v138 = v48;
            v83 = v50;
            v84 = v49;
            v85 = v46;
            memcpy(__dst, v82, sizeof(__dst));
            v46 = v85;
            v50 = v83;
            v86 = __dst;
            v48 = v138;
            LOBYTE(v49) = v84;
            result = v153;
          }

          else
          {
            v86 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v86;
          v165 = v49;
          v166 = v151;
          v161 = v142;
          v162 = v46 - v44;
          v158 = v80;
          v159 = v81;
          v160 = a11;
          v163 = v141;
          v164 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v87 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v86, *v80)];
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v87, v80[1]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v88, v80[2]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v89, v80[3]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v90, v80[4]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v91, v80[5]);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v92, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v92 + v93, v80[7]);
          v94 = v163;
          a7 = v144;
          if (v163)
          {
            v95 = v164;
            if (v164)
            {
              v96 = 0;
              v97 = v161 << 6;
              v98 = 8 * v162;
              v99 = &v168[0].i8[v97 + v98];
              v100 = v159;
              v101 = v160;
              v102 = 8 * v164;
              if (8 * v164)
              {
                v103 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v103 = 0;
              }

              v104 = !v103;
              v106 = v99 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[64 * v163 + 448 + 64 * v161 + 8 * v164 + v98];
              v107 = v102 & 0x1FFFFFFE0;
              v108 = v104 | (v160 < 0) | v106;
              v109 = &v168[1].i8[v97 + v98];
              v110 = (v159 + 16);
              v111 = v99;
              v112 = v159;
              do
              {
                v113 = (v100 + v96 * v101);
                v114 = &v99[64 * v96];
                if (v108)
                {
                  v115 = 0;
                }

                else
                {
                  if (v95 < 4)
                  {
                    v119 = 0;
LABEL_142:
                    v124 = -8 * v95 + v119;
                    v125 = (v112 + v119);
                    v126 = &v111[v119];
                    do
                    {
                      v127 = *v125++;
                      *v126 = v127;
                      v126 += 8;
                      v124 += 8;
                    }

                    while (v124);
                    goto LABEL_130;
                  }

                  v120 = v110;
                  v121 = v109;
                  v122 = v102 & 0x1FFFFFFE0;
                  do
                  {
                    v123 = *v120;
                    *(v121 - 1) = *(v120 - 1);
                    *v121 = v123;
                    v121 += 32;
                    v120 += 2;
                    v122 -= 32;
                  }

                  while (v122);
                  if (v102 == v107)
                  {
                    goto LABEL_130;
                  }

                  v119 = v102 & 0x1FFFFFFE0;
                  if ((v95 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v113 += v107;
                  v114 += v107;
                  v115 = v102 & 0xFFFFFFE0;
                }

                v116 = v115 + 1;
                do
                {
                  v117 = *v113++;
                  *v114++ = v117;
                }

                while (v102 > v116++);
LABEL_130:
                ++v96;
                v109 += 64;
                v110 = (v110 + v101);
                v112 += v101;
                v111 += 64;
              }

              while (v96 != v94);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
          if (v155)
          {
LABEL_46:
            memcpy(v82, v86, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v145 >> 3;
          result = v153;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 7;
      v157 = v20 >> 3;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 8;
        }

        if (v18 != v157)
        {
          v41 = v40 != 8;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v166 != 0;
              v56 = 1;
              v58 = v172 != 0;
              v57 = v166;
              v59 = v172;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v164.i8[0];
            v65 = v164.i8[4];
            v67 = v165.i32[0];
            v66 = v165.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
            }
          }

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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 8 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 4 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v94;
                  v89[2] = v92;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 64, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 6;
              v111 = 8 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 8 * v192;
              if (8 * v192)
              {
                v116 = (8 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 8 * v192 && v187 < &__dst[64 * v191 + 448 + 64 * v189 + 8 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[64 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 < 4)
                  {
                    v132 = 0;
LABEL_152:
                    v137 = -8 * v108 + v132;
                    v138 = (v125 + v132);
                    v139 = &v124[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    goto LABEL_140;
                  }

                  v133 = v123;
                  v134 = v122;
                  v135 = v115 & 0x1FFFFFFE0;
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
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if ((v108 & 3) != 0)
                  {
                    goto LABEL_152;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 64;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 64;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F2FE5;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 4 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[8 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[4];
              v150 = v147[5];
              *v141 = *v147;
              v141[1] = v149;
              v141[2] = v148;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 9;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v69 = (a4 + v63);
          v70 = v148 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 64, v74, *v69)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80 + v81, v69[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 6;
              v86 = 8 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 8 * v163;
              if (8 * v163)
              {
                v91 = (8 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 8 * v163 && v158 < &__dst[64 * v162 + 448 + 64 * v160 + 8 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[64 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 < 4)
                  {
                    v107 = 0;
LABEL_116:
                    v112 = -8 * v83 + v107;
                    v113 = (v100 + v107);
                    v114 = &v99[v107];
                    do
                    {
                      v115 = *v113++;
                      *v114 = v115;
                      v114 += 8;
                      v112 += 8;
                    }

                    while (v112);
                    goto LABEL_104;
                  }

                  v108 = v98;
                  v109 = v97;
                  v110 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 32;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if ((v83 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 64;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 64;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 64, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v16 = a8 >> 3;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v182 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v173 = isLevelTiled;
  if (v16 <= v162)
  {
    v172 = a7 + a9 - 1;
    if (a7 >> 3 <= v172 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v166 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v171 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v170 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v180)
        {
          v30 = v180;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v179 = 8 * v16;
        v169 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v168 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 8;
        }

        if (v16 != v159)
        {
          v33 = v32 != 8;
        }

        v167 = v33;
        v178 = a3 + (v30 - v180) * v26;
        v177 = v35;
        v163 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v172 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v166 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v179 >= v180 && v36 >= a7)
          {
            v43 = v39 != v166;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v167;
          }

          if (v173)
          {
            v64 = 0;
            v65 = v156 >> (*(v25 + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v144 = (v64 >> 3) - 1;
            if (v66)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v68 >> 3) - 1;
            if (v67)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_156:
                v148 = 0;
                v149 = 0;
                v150 = v34 & v144;
                v151 = v16 & v146;
                v152 = v145 != 0;
                v153 = v147 != 0;
                v154 = 1;
                do
                {
                  --v145;
                  if (v152)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  --v147;
                  if (v153)
                  {
                    v149 |= (v154 & v151) << v148++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v147 != 0;
                  v152 = v145 != 0;
                }

                while (v147 | v145);
                v155 = v149 << 9;
                goto LABEL_168;
              }
            }

            v155 = 0;
LABEL_168:
            v51 = v155 + ((v36 / v64 + v179 / v68 * ((v64 + v157) / v64)) << 14);
            goto LABEL_55;
          }

          if (v171)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v170.i8[0];
            v48 = v170.i8[4];
            v50 = v171.i32[0];
            v49 = v171.i32[1];
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
                v45 |= (v46 & v16) << v44++;
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

LABEL_55:
          v52 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_80:
              v63 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_80;
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
              v59 |= (v62 & v16) << v58++;
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
LABEL_81:
          v69 = (a4 + v63);
          v70 = v178 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              v74 = __dst;
LABEL_90:
              v76 = &byte_29D2F2FE5;
              v77 = 16;
              v78 = v74;
              do
              {
                v86 = *v76;
                v87 = *(v76 - 1);
                if (v41 <= 4 * v87 || 2 * v86 >= v35)
                {
                  v85 = 0;
                }

                else
                {
                  v79 = (v70 + 2 * a11 * v86 + 32 * v87);
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = (v79 + v26);
                  v83 = *v82;
                  v84 = v82[1];
                  *v78 = v80;
                  v78[1] = v83;
                  v78[2] = v81;
                  v78[3] = v84;
                  v78 += 4;
                  v85 = 63;
                }

                *v69++ = v85;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              goto LABEL_87;
            }

            v164 = (a2 + v51);
            v72 = v40;
            v73 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v74 = __dst;
            v38 = v73;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v163;
            v40 = v72;
            v71 = v164;
            v25 = a1;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v74;
          v192 = v41;
          v193 = v35;
          v188 = v169;
          v189 = v38 - v36;
          v185 = v69;
          v186 = v70;
          v187 = v26;
          v190 = v168;
          v191 = v40;
          if (v42)
          {
            v75 = v74;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v74 = v75;
            v25 = a1;
            goto LABEL_87;
          }

          v165 = v74;
          v89 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v74, *v69)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v89, v69[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v69[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v91, v69[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v92, v69[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v93, v69[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v94, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v94 + v95, v69[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 6;
              v100 = 8 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 8 * v191;
              if (8 * v191)
              {
                v105 = (8 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 8 * v191 && v186 < &__dst[64 * v190 + 448 + 64 * v188 + 8 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[64 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 < 4)
                  {
                    v121 = 0;
LABEL_125:
                    v126 = -8 * v97 + v121;
                    v127 = (v114 + v121);
                    v128 = &v113[v121];
                    do
                    {
                      v129 = *v127++;
                      *v128 = v129;
                      v128 += 8;
                      v126 += 8;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v122 = v112;
                  v123 = v111;
                  v124 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v125 = *v122;
                    *(v123 - 1) = *(v122 - 1);
                    *v123 = v125;
                    v123 += 32;
                    v122 += 2;
                    v124 -= 32;
                  }

                  while (v124);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if ((v97 & 3) != 0)
                  {
                    goto LABEL_125;
                  }

                  v115 += v109;
                  v116 += v109;
                  v117 = v104 & 0xFFFFFFE0;
                }

                v118 = v117 + 1;
                do
                {
                  v119 = *v115++;
                  *v116++ = v119;
                }

                while (v104 > v118++);
LABEL_113:
                ++v98;
                v111 += 64;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 64;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F2FE5;
          v134 = 16;
          v135 = v193;
          v25 = a1;
          v74 = v165;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 4 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[8 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[4];
              v139 = v136[5];
              *v130 = *v136;
              v130[1] = v138;
              v130[2] = v137;
              v130[3] = v139;
              v130 += 4;
              v140 = 63;
            }

            *v131++ = v140;
            v133 += 2;
            v134 -= 2;
          }

          while (v134);
LABEL_87:
          if (v182)
          {
            memcpy(v71, v74, 0x200uLL);
            v25 = a1;
          }

          v20 = v34++ == v172 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v134 = a8 + a10 - 1;
  v153 = a1;
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
  v133 = v134 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v155 = v24;
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
      v146 = 0;
LABEL_32:
      v143 = v27 - 3;
      v137 = v26 - 3;
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

    v146 = v32 >= v26;
    goto LABEL_32;
  }

  v146 = 0;
  v131 = 0;
  v137 = 0;
  v143 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v145 = a7 + a9 - 1;
    v130 = a7 >> 3;
    if (a7 >> 3 <= v145 >> 3)
    {
      v154 = v19 >> 3;
      v139 = v19 & 7;
      v128 = v20 & 7;
      v129 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v135 = v35;
      v144 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v152)
        {
          v37 = v152;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v142 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v141 = v39;
        v41 = v39 != 8;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 8;
          v40 = v41;
        }

        v140 = v40;
        v43 = v130;
        v150 = a3 + (v37 - v152) * a11;
        v151 = v42;
        v149 = v42;
        do
        {
          v44 = 8 * v43;
          v45 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 8 * v43;
          }

          if (v145 < v45)
          {
            v45 = v145;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v139 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v152 && v44 >= a7)
          {
            v51 = v47 != v139;
            if (v43 != v154)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v140;
          }

          if (v146)
          {
            if (v143 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v143 != 0;
              v56 = v137;
              v58 = v143;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v143) & v55) << v52++;
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
              v59 = v53 << 9;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v143) + (v18 >> v137) * v131);
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
            v67 = v61 << 9;
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

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
          }

          v71 = *(result + 132) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
            if (!v70)
            {
LABEL_104:
              v79 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_104;
            }
          }

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
LABEL_105:
          v80 = (a4 + v79);
          v81 = v150 + 8 * (v46 - a7);
          v82 = (a2 + v67);
          if (v155)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              v86 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v86, v80, v49, v151);
LABEL_113:
              a7 = v144;
              if (v155)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v138 = v48;
            v83 = v50;
            v84 = v49;
            v85 = v46;
            memcpy(__dst, v82, sizeof(__dst));
            v46 = v85;
            v50 = v83;
            v86 = __dst;
            v48 = v138;
            LOBYTE(v49) = v84;
            result = v153;
          }

          else
          {
            v86 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v86;
          v165 = v49;
          v166 = v151;
          v161 = v142;
          v162 = v46 - v44;
          v158 = v80;
          v159 = v81;
          v160 = a11;
          v163 = v141;
          v164 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v87 = v86->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v86, *v80);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v87, v80[1]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v88, v80[2]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v89, v80[3]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v90, v80[4]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v91, v80[5]);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v92, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v92 + v93, v80[7]);
          v94 = v163;
          a7 = v144;
          if (v163)
          {
            v95 = v164;
            if (v164)
            {
              v96 = 0;
              v97 = v161 << 6;
              v98 = 8 * v162;
              v99 = &v168[0].i8[v97 + v98];
              v100 = v159;
              v101 = v160;
              v102 = 8 * v164;
              if (8 * v164)
              {
                v103 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v103 = 0;
              }

              v104 = !v103;
              v106 = v99 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[64 * v163 + 448 + 64 * v161 + 8 * v164 + v98];
              v107 = v102 & 0x1FFFFFFE0;
              v108 = v104 | (v160 < 0) | v106;
              v109 = &v168[1].i8[v97 + v98];
              v110 = (v159 + 16);
              v111 = v99;
              v112 = v159;
              do
              {
                v113 = (v100 + v96 * v101);
                v114 = &v99[64 * v96];
                if (v108)
                {
                  v115 = 0;
                }

                else
                {
                  if (v95 < 4)
                  {
                    v119 = 0;
LABEL_142:
                    v124 = -8 * v95 + v119;
                    v125 = (v112 + v119);
                    v126 = &v111[v119];
                    do
                    {
                      v127 = *v125++;
                      *v126 = v127;
                      v126 += 8;
                      v124 += 8;
                    }

                    while (v124);
                    goto LABEL_130;
                  }

                  v120 = v110;
                  v121 = v109;
                  v122 = v102 & 0x1FFFFFFE0;
                  do
                  {
                    v123 = *v120;
                    *(v121 - 1) = *(v120 - 1);
                    *v121 = v123;
                    v121 += 32;
                    v120 += 2;
                    v122 -= 32;
                  }

                  while (v122);
                  if (v102 == v107)
                  {
                    goto LABEL_130;
                  }

                  v119 = v102 & 0x1FFFFFFE0;
                  if ((v95 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v113 += v107;
                  v114 += v107;
                  v115 = v102 & 0xFFFFFFE0;
                }

                v116 = v115 + 1;
                do
                {
                  v117 = *v113++;
                  *v114++ = v117;
                }

                while (v102 > v116++);
LABEL_130:
                ++v96;
                v109 += 64;
                v110 = (v110 + v101);
                v112 += v101;
                v111 += 64;
              }

              while (v96 != v94);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
          if (v155)
          {
LABEL_46:
            memcpy(v82, v86, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v145 >> 3;
          result = v153;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 7;
      v157 = v20 >> 3;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 8;
        }

        if (v18 != v157)
        {
          v41 = v40 != 8;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v166 != 0;
              v56 = 1;
              v58 = v172 != 0;
              v57 = v166;
              v59 = v172;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v164.i8[0];
            v65 = v164.i8[4];
            v67 = v165.i32[0];
            v66 = v165.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
            }
          }

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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 8 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 4 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v94;
                  v89[2] = v92;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 64, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 6;
              v111 = 8 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 8 * v192;
              if (8 * v192)
              {
                v116 = (8 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 8 * v192 && v187 < &__dst[64 * v191 + 448 + 64 * v189 + 8 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[64 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 < 4)
                  {
                    v132 = 0;
LABEL_152:
                    v137 = -8 * v108 + v132;
                    v138 = (v125 + v132);
                    v139 = &v124[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    goto LABEL_140;
                  }

                  v133 = v123;
                  v134 = v122;
                  v135 = v115 & 0x1FFFFFFE0;
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
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if ((v108 & 3) != 0)
                  {
                    goto LABEL_152;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 64;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 64;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F2FE5;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 4 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[8 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[4];
              v150 = v147[5];
              *v141 = *v147;
              v141[1] = v149;
              v141[2] = v148;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 9;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v69 = (a4 + v63);
          v70 = v148 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 64, v74, *v69);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80 + v81, v69[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 6;
              v86 = 8 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 8 * v163;
              if (8 * v163)
              {
                v91 = (8 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 8 * v163 && v158 < &__dst[64 * v162 + 448 + 64 * v160 + 8 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[64 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 < 4)
                  {
                    v107 = 0;
LABEL_116:
                    v112 = -8 * v83 + v107;
                    v113 = (v100 + v107);
                    v114 = &v99[v107];
                    do
                    {
                      v115 = *v113++;
                      *v114 = v115;
                      v114 += 8;
                      v112 += 8;
                    }

                    while (v112);
                    goto LABEL_104;
                  }

                  v108 = v98;
                  v109 = v97;
                  v110 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 32;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if ((v83 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 64;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 64;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 64, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v16 = a8 >> 3;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v182 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v173 = isLevelTiled;
  if (v16 <= v162)
  {
    v172 = a7 + a9 - 1;
    if (a7 >> 3 <= v172 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v166 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v171 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v170 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v180)
        {
          v30 = v180;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v179 = 8 * v16;
        v169 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v168 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 8;
        }

        if (v16 != v159)
        {
          v33 = v32 != 8;
        }

        v167 = v33;
        v178 = a3 + (v30 - v180) * v26;
        v177 = v35;
        v163 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v172 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v166 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v179 >= v180 && v36 >= a7)
          {
            v43 = v39 != v166;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v167;
          }

          if (v173)
          {
            v64 = 0;
            v65 = v156 >> (*(v25 + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v144 = (v64 >> 3) - 1;
            if (v66)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v68 >> 3) - 1;
            if (v67)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_156:
                v148 = 0;
                v149 = 0;
                v150 = v34 & v144;
                v151 = v16 & v146;
                v152 = v145 != 0;
                v153 = v147 != 0;
                v154 = 1;
                do
                {
                  --v145;
                  if (v152)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  --v147;
                  if (v153)
                  {
                    v149 |= (v154 & v151) << v148++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v147 != 0;
                  v152 = v145 != 0;
                }

                while (v147 | v145);
                v155 = v149 << 9;
                goto LABEL_168;
              }
            }

            v155 = 0;
LABEL_168:
            v51 = v155 + ((v36 / v64 + v179 / v68 * ((v64 + v157) / v64)) << 14);
            goto LABEL_55;
          }

          if (v171)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v170.i8[0];
            v48 = v170.i8[4];
            v50 = v171.i32[0];
            v49 = v171.i32[1];
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
                v45 |= (v46 & v16) << v44++;
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

LABEL_55:
          v52 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_80:
              v63 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_80;
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
              v59 |= (v62 & v16) << v58++;
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
LABEL_81:
          v69 = (a4 + v63);
          v70 = v178 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              v74 = __dst;
LABEL_90:
              v76 = &byte_29D2F2FE5;
              v77 = 16;
              v78 = v74;
              do
              {
                v86 = *v76;
                v87 = *(v76 - 1);
                if (v41 <= 4 * v87 || 2 * v86 >= v35)
                {
                  v85 = 0;
                }

                else
                {
                  v79 = (v70 + 2 * a11 * v86 + 32 * v87);
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = (v79 + v26);
                  v83 = *v82;
                  v84 = v82[1];
                  *v78 = v80;
                  v78[1] = v83;
                  v78[2] = v81;
                  v78[3] = v84;
                  v78 += 4;
                  v85 = 63;
                }

                *v69++ = v85;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              goto LABEL_87;
            }

            v164 = (a2 + v51);
            v72 = v40;
            v73 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v74 = __dst;
            v38 = v73;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v163;
            v40 = v72;
            v71 = v164;
            v25 = a1;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v74;
          v192 = v41;
          v193 = v35;
          v188 = v169;
          v189 = v38 - v36;
          v185 = v69;
          v186 = v70;
          v187 = v26;
          v190 = v168;
          v191 = v40;
          if (v42)
          {
            v75 = v74;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v74 = v75;
            v25 = a1;
            goto LABEL_87;
          }

          v165 = v74;
          v89 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v74, *v69)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v89, v69[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v69[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v91, v69[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v92, v69[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v93, v69[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v94, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v94 + v95, v69[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 6;
              v100 = 8 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 8 * v191;
              if (8 * v191)
              {
                v105 = (8 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 8 * v191 && v186 < &__dst[64 * v190 + 448 + 64 * v188 + 8 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[64 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 < 4)
                  {
                    v121 = 0;
LABEL_125:
                    v126 = -8 * v97 + v121;
                    v127 = (v114 + v121);
                    v128 = &v113[v121];
                    do
                    {
                      v129 = *v127++;
                      *v128 = v129;
                      v128 += 8;
                      v126 += 8;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v122 = v112;
                  v123 = v111;
                  v124 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v125 = *v122;
                    *(v123 - 1) = *(v122 - 1);
                    *v123 = v125;
                    v123 += 32;
                    v122 += 2;
                    v124 -= 32;
                  }

                  while (v124);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if ((v97 & 3) != 0)
                  {
                    goto LABEL_125;
                  }

                  v115 += v109;
                  v116 += v109;
                  v117 = v104 & 0xFFFFFFE0;
                }

                v118 = v117 + 1;
                do
                {
                  v119 = *v115++;
                  *v116++ = v119;
                }

                while (v104 > v118++);
LABEL_113:
                ++v98;
                v111 += 64;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 64;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F2FE5;
          v134 = 16;
          v135 = v193;
          v25 = a1;
          v74 = v165;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 4 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[8 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[4];
              v139 = v136[5];
              *v130 = *v136;
              v130[1] = v138;
              v130[2] = v137;
              v130[3] = v139;
              v130 += 4;
              v140 = 63;
            }

            *v131++ = v140;
            v133 += 2;
            v134 -= 2;
          }

          while (v134);
LABEL_87:
          if (v182)
          {
            memcpy(v71, v74, 0x200uLL);
            v25 = a1;
          }

          v20 = v34++ == v172 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v134 = a8 + a10 - 1;
  v153 = a1;
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
  v133 = v134 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v155 = v24;
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
      v146 = 0;
LABEL_32:
      v143 = v27 - 3;
      v137 = v26 - 3;
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

    v146 = v32 >= v26;
    goto LABEL_32;
  }

  v146 = 0;
  v131 = 0;
  v137 = 0;
  v143 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v145 = a7 + a9 - 1;
    v130 = a7 >> 3;
    if (a7 >> 3 <= v145 >> 3)
    {
      v154 = v19 >> 3;
      v139 = v19 & 7;
      v128 = v20 & 7;
      v129 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v35 = vcgt_u32(v34, 0xF0000000FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 3uLL))))))), v35);
      v135 = v35;
      v144 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v152)
        {
          v37 = v152;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v142 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v141 = v39;
        v41 = v39 != 8;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 8;
          v40 = v41;
        }

        v140 = v40;
        v43 = v130;
        v150 = a3 + (v37 - v152) * a11;
        v151 = v42;
        v149 = v42;
        do
        {
          v44 = 8 * v43;
          v45 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 8 * v43;
          }

          if (v145 < v45)
          {
            v45 = v145;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v139 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v152 && v44 >= a7)
          {
            v51 = v47 != v139;
            if (v43 != v154)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v140;
          }

          if (v146)
          {
            if (v143 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v143 != 0;
              v56 = v137;
              v58 = v143;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v143) & v55) << v52++;
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
              v59 = v53 << 9;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v143) + (v18 >> v137) * v131);
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
            v67 = v61 << 9;
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

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
          }

          v71 = *(result + 132) >> (*(result + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
            if (!v70)
            {
LABEL_104:
              v79 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_104;
            }
          }

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
LABEL_105:
          v80 = (a4 + v79);
          v81 = v150 + 8 * (v46 - a7);
          v82 = (a2 + v67);
          if (v155)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              v86 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v86, v80, v49, v151);
LABEL_113:
              a7 = v144;
              if (v155)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v138 = v48;
            v83 = v50;
            v84 = v49;
            v85 = v46;
            memcpy(__dst, v82, sizeof(__dst));
            v46 = v85;
            v50 = v83;
            v86 = __dst;
            v48 = v138;
            LOBYTE(v49) = v84;
            result = v153;
          }

          else
          {
            v86 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v149 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v86;
          v165 = v49;
          v166 = v151;
          v161 = v142;
          v162 = v46 - v44;
          v158 = v80;
          v159 = v81;
          v160 = a11;
          v163 = v141;
          v164 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v87 = v86->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v86, *v80);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v87, v80[1]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v88, v80[2]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v89, v80[3]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v90, v80[4]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v91, v80[5]);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v92, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v92 + v93, v80[7]);
          v94 = v163;
          a7 = v144;
          if (v163)
          {
            v95 = v164;
            if (v164)
            {
              v96 = 0;
              v97 = v161 << 6;
              v98 = 8 * v162;
              v99 = &v168[0].i8[v97 + v98];
              v100 = v159;
              v101 = v160;
              v102 = 8 * v164;
              if (8 * v164)
              {
                v103 = (8 * v164 - 1) >> 32 == 0;
              }

              else
              {
                v103 = 0;
              }

              v104 = !v103;
              v106 = v99 < v159 + v160 * (v163 - 1) + 8 * v164 && v159 < &__dst[64 * v163 + 448 + 64 * v161 + 8 * v164 + v98];
              v107 = v102 & 0x1FFFFFFE0;
              v108 = v104 | (v160 < 0) | v106;
              v109 = &v168[1].i8[v97 + v98];
              v110 = (v159 + 16);
              v111 = v99;
              v112 = v159;
              do
              {
                v113 = (v100 + v96 * v101);
                v114 = &v99[64 * v96];
                if (v108)
                {
                  v115 = 0;
                }

                else
                {
                  if (v95 < 4)
                  {
                    v119 = 0;
LABEL_142:
                    v124 = -8 * v95 + v119;
                    v125 = (v112 + v119);
                    v126 = &v111[v119];
                    do
                    {
                      v127 = *v125++;
                      *v126 = v127;
                      v126 += 8;
                      v124 += 8;
                    }

                    while (v124);
                    goto LABEL_130;
                  }

                  v120 = v110;
                  v121 = v109;
                  v122 = v102 & 0x1FFFFFFE0;
                  do
                  {
                    v123 = *v120;
                    *(v121 - 1) = *(v120 - 1);
                    *v121 = v123;
                    v121 += 32;
                    v120 += 2;
                    v122 -= 32;
                  }

                  while (v122);
                  if (v102 == v107)
                  {
                    goto LABEL_130;
                  }

                  v119 = v102 & 0x1FFFFFFE0;
                  if ((v95 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v113 += v107;
                  v114 += v107;
                  v115 = v102 & 0xFFFFFFE0;
                }

                v116 = v115 + 1;
                do
                {
                  v117 = *v113++;
                  *v114++ = v117;
                }

                while (v102 > v116++);
LABEL_130:
                ++v96;
                v109 += 64;
                v110 = (v110 + v101);
                v112 += v101;
                v111 += 64;
              }

              while (v96 != v94);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
          if (v155)
          {
LABEL_46:
            memcpy(v82, v86, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v145 >> 3;
          result = v153;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 7;
      v157 = v20 >> 3;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 8;
        }

        if (v18 != v157)
        {
          v41 = v40 != 8;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v166 != 0;
              v56 = 1;
              v58 = v172 != 0;
              v57 = v166;
              v59 = v172;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v164.i8[0];
            v65 = v164.i8[4];
            v67 = v165.i32[0];
            v66 = v165.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v42) << v61++;
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
            }
          }

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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 8 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F2FE5;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 4 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v94;
                  v89[2] = v92;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 8)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 64, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 6;
              v111 = 8 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 8 * v192;
              if (8 * v192)
              {
                v116 = (8 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 8 * v192 && v187 < &__dst[64 * v191 + 448 + 64 * v189 + 8 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[64 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 < 4)
                  {
                    v132 = 0;
LABEL_152:
                    v137 = -8 * v108 + v132;
                    v138 = (v125 + v132);
                    v139 = &v124[v132];
                    do
                    {
                      v140 = *v138++;
                      *v139 = v140;
                      v139 += 8;
                      v137 += 8;
                    }

                    while (v137);
                    goto LABEL_140;
                  }

                  v133 = v123;
                  v134 = v122;
                  v135 = v115 & 0x1FFFFFFE0;
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
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if ((v108 & 3) != 0)
                  {
                    goto LABEL_152;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 64;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 64;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F2FE5;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 4 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[8 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[4];
              v150 = v147[5];
              *v141 = *v147;
              v141[1] = v149;
              v141[2] = v148;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 3;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 7;
      v131 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v27 = vcgt_u32(v26, 0xF0000000FLL);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 8 * v17;
        v139 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 8;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 8;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v116 = (v64 >> 3) - 1;
            if (v66)
            {
              v117 = 0;
            }

            else
            {
              v117 = 32 - __clz(~(-1 << -__clz(v116)));
            }

            v118 = (v68 >> 3) - 1;
            if (v67)
            {
              v119 = 0;
              if (v117)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = 32 - __clz(~(-1 << -__clz(v118)));
              if (v119 | v117)
              {
LABEL_141:
                v120 = 0;
                v121 = 0;
                v122 = v34 & v116;
                v123 = v17 & v118;
                v124 = v117 != 0;
                v125 = v119 != 0;
                v126 = 1;
                do
                {
                  --v117;
                  if (v124)
                  {
                    v121 |= (v126 & v122) << v120++;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  --v119;
                  if (v125)
                  {
                    v121 |= (v126 & v123) << v120++;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  v126 *= 2;
                  --v120;
                  v125 = v119 != 0;
                  v124 = v117 != 0;
                }

                while (v119 | v117);
                v127 = v121 << 9;
                result = v152;
                goto LABEL_153;
              }
            }

            v127 = 0;
LABEL_153:
            v51 = v127 + ((v36 / v64 + v150 / v68 * ((v64 + v129) / v64)) << 14);
            goto LABEL_53;
          }

          if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v140.i8[0];
            v48 = v140.i8[4];
            v50 = v141.i32[0];
            v49 = v141.i32[1];
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

LABEL_53:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v69 = (a4 + v63);
          v70 = v148 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v74, v69, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v72 = v42;
            v73 = v38;
            memcpy(__dst, v71, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v42 = v72;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v69;
          v158 = v70;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 64, v74, *v69);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v75, v69[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v76, v69[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v77, v69[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v79, v69[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v80, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80 + v81, v69[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 6;
              v86 = 8 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 8 * v163;
              if (8 * v163)
              {
                v91 = (8 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 8 * v163 && v158 < &__dst[64 * v162 + 448 + 64 * v160 + 8 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[64 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 < 4)
                  {
                    v107 = 0;
LABEL_116:
                    v112 = -8 * v83 + v107;
                    v113 = (v100 + v107);
                    v114 = &v99[v107];
                    do
                    {
                      v115 = *v113++;
                      *v114 = v115;
                      v114 += 8;
                      v112 += 8;
                    }

                    while (v112);
                    goto LABEL_104;
                  }

                  v108 = v98;
                  v109 = v97;
                  v110 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 32;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if ((v83 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 64;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 64;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 64, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v71, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v16 = a8 >> 3;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 3;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
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
  v182 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v173 = isLevelTiled;
  if (v16 <= v162)
  {
    v172 = a7 + a9 - 1;
    if (a7 >> 3 <= v172 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v166 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 7;
      v159 = (a6 - 1) >> 3;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v28 = vcgt_u32(v27, 0xF0000000FLL);
      v171 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), v28);
      v170 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (8 * v16) | 7;
        if (8 * v16 <= v180)
        {
          v30 = v180;
        }

        else
        {
          v30 = 8 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v179 = 8 * v16;
        v169 = v30 - 8 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v168 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 8;
        }

        if (v16 != v159)
        {
          v33 = v32 != 8;
        }

        v167 = v33;
        v178 = a3 + (v30 - v180) * v26;
        v177 = v35;
        v163 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v172 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v166 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v179 >= v180 && v36 >= a7)
          {
            v43 = v39 != v166;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v167;
          }

          if (v173)
          {
            v64 = 0;
            v65 = v156 >> (*(v25 + 57) != 0);
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
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v68 = 8;
                v64 = 16;
              }
            }

            v144 = (v64 >> 3) - 1;
            if (v66)
            {
              v145 = 0;
            }

            else
            {
              v145 = 32 - __clz(~(-1 << -__clz(v144)));
            }

            v146 = (v68 >> 3) - 1;
            if (v67)
            {
              v147 = 0;
              if (v145)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
              if (v147 | v145)
              {
LABEL_156:
                v148 = 0;
                v149 = 0;
                v150 = v34 & v144;
                v151 = v16 & v146;
                v152 = v145 != 0;
                v153 = v147 != 0;
                v154 = 1;
                do
                {
                  --v145;
                  if (v152)
                  {
                    v149 |= (v154 & v150) << v148++;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  --v147;
                  if (v153)
                  {
                    v149 |= (v154 & v151) << v148++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v154 *= 2;
                  --v148;
                  v153 = v147 != 0;
                  v152 = v145 != 0;
                }

                while (v147 | v145);
                v155 = v149 << 9;
                goto LABEL_168;
              }
            }

            v155 = 0;
LABEL_168:
            v51 = v155 + ((v36 / v64 + v179 / v68 * ((v64 + v157) / v64)) << 14);
            goto LABEL_55;
          }

          if (v171)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v170.i8[0];
            v48 = v170.i8[4];
            v50 = v171.i32[0];
            v49 = v171.i32[1];
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
                v45 |= (v46 & v16) << v44++;
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

LABEL_55:
          v52 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_80:
              v63 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_80;
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
              v59 |= (v62 & v16) << v58++;
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
LABEL_81:
          v69 = (a4 + v63);
          v70 = v178 + 8 * (v38 - a7);
          v71 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              v74 = __dst;
LABEL_90:
              v76 = &byte_29D2F2FE5;
              v77 = 16;
              v78 = v74;
              do
              {
                v86 = *v76;
                v87 = *(v76 - 1);
                if (v41 <= 4 * v87 || 2 * v86 >= v35)
                {
                  v85 = 0;
                }

                else
                {
                  v79 = (v70 + 2 * a11 * v86 + 32 * v87);
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = (v79 + v26);
                  v83 = *v82;
                  v84 = v82[1];
                  *v78 = v80;
                  v78[1] = v83;
                  v78[2] = v81;
                  v78[3] = v84;
                  v78 += 4;
                  v85 = 63;
                }

                *v69++ = v85;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              goto LABEL_87;
            }

            v164 = (a2 + v51);
            v72 = v40;
            v73 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v74 = __dst;
            v38 = v73;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v163;
            v40 = v72;
            v71 = v164;
            v25 = a1;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v177 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v74;
          v192 = v41;
          v193 = v35;
          v188 = v169;
          v189 = v38 - v36;
          v185 = v69;
          v186 = v70;
          v187 = v26;
          v190 = v168;
          v191 = v40;
          if (v42)
          {
            v75 = v74;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v74 = v75;
            v25 = a1;
            goto LABEL_87;
          }

          v165 = v74;
          v89 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 64, v74, *v69)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 64, v89, v69[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 64, v90, v69[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 64, v91, v69[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 64, v92, v69[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 64, v93, v69[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 64, v94, v69[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 64, v94 + v95, v69[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 6;
              v100 = 8 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 8 * v191;
              if (8 * v191)
              {
                v105 = (8 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 8 * v191 && v186 < &__dst[64 * v190 + 448 + 64 * v188 + 8 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[64 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 < 4)
                  {
                    v121 = 0;
LABEL_125:
                    v126 = -8 * v97 + v121;
                    v127 = (v114 + v121);
                    v128 = &v113[v121];
                    do
                    {
                      v129 = *v127++;
                      *v128 = v129;
                      v128 += 8;
                      v126 += 8;
                    }

                    while (v126);
                    goto LABEL_113;
                  }

                  v122 = v112;
                  v123 = v111;
                  v124 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v125 = *v122;
                    *(v123 - 1) = *(v122 - 1);
                    *v123 = v125;
                    v123 += 32;
                    v122 += 2;
                    v124 -= 32;
                  }

                  while (v124);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if ((v97 & 3) != 0)
                  {
                    goto LABEL_125;
                  }

                  v115 += v109;
                  v116 += v109;
                  v117 = v104 & 0xFFFFFFE0;
                }

                v118 = v117 + 1;
                do
                {
                  v119 = *v115++;
                  *v116++ = v119;
                }

                while (v104 > v118++);
LABEL_113:
                ++v98;
                v111 += 64;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 64;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F2FE5;
          v134 = 16;
          v135 = v193;
          v25 = a1;
          v74 = v165;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 4 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[8 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[4];
              v139 = v136[5];
              *v130 = *v136;
              v130[1] = v138;
              v130[2] = v137;
              v130[3] = v139;
              v130 += 4;
              v140 = 63;
            }

            *v131++ = v140;
            v133 += 2;
            v134 -= 2;
          }

          while (v134);
LABEL_87:
          if (v182)
          {
            memcpy(v71, v74, 0x200uLL);
            v25 = a1;
          }

          v20 = v34++ == v172 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}