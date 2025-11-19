void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v136 = v15;
  v17 = v16;
  v19 = v18;
  v133 = v20;
  v134 = v21;
  v116 = v22;
  v23 = v12;
  v158 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v137 = v14;
  v118 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v132 = v31;
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
      v131 = 0;
LABEL_32:
      v127 = v33 - 3;
      v121 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v115 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v131 = v38 >= v32;
    goto LABEL_32;
  }

  v131 = 0;
  v115 = 0;
  v121 = 0;
  v127 = 0;
LABEL_33:
  if (v25 <= v117)
  {
    v130 = v136 + a9 - 1;
    if (v136 >> 3 <= v130 >> 3)
    {
      v139 = v26 >> 3;
      v123 = v26 & 7;
      v128 = (v26 & 7) + 1;
      v113 = v27 & 3;
      v114 = v27 >> 2;
      v122 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 4;
        v48 = v136 >> 3;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 4;
        }

        v138 = v49;
        if (v25 != v114)
        {
          v46 = v47;
        }

        v124 = v46;
        v135 = v116 + (v43 - v137) * a11;
        v50 = v136;
        do
        {
          v60 = 8 * v48;
          v61 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 8 * v48;
          }

          if (v130 < v61)
          {
            v61 = v136 + a9 - 1;
          }

          v63 = v61 - v62;
          v64 = v63 + 1;
          if (v48 == v139)
          {
            v65 = v128;
          }

          else
          {
            v65 = 8;
          }

          v66 = 1;
          if (4 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 8;
            }

            v66 = v67 || v124;
          }

          if (v131)
          {
            if (v127 | v121)
            {
              v68 = 0;
              v69 = 0;
              v70 = v127 != 0;
              v71 = 1;
              v73 = v121 != 0;
              v72 = v121;
              v74 = v127;
              do
              {
                --v72;
                if (v73)
                {
                  v69 |= (v25 & ~(-1 << v121) & v71) << v68++;
                }

                else
                {
                  v72 = 0;
                }

                --v74;
                if (v70)
                {
                  v69 |= (v48 & ~(-1 << v127) & v71) << v68++;
                }

                else
                {
                  v74 = 0;
                }

                v71 *= 2;
                --v68;
                v70 = v74 != 0;
                v73 = v72 != 0;
              }

              while (v74 | v72);
              v75 = v69 << 11;
            }

            else
            {
              v75 = 0;
            }

            v83 = v75 + *(v23 + 336) * ((v48 >> v127) + (v25 >> v121) * v115);
          }

          else if (v120)
          {
            v76 = 0;
            v77 = 0;
            v78 = 1;
            v80 = v119.i8[0];
            v79 = v119.i8[4];
            v81 = v120.i32[0];
            v82 = v120.i32[1];
            do
            {
              --v81;
              if (v80)
              {
                v77 |= (v78 & v25) << v76++;
              }

              else
              {
                v81 = 0;
              }

              --v82;
              if (v79)
              {
                v77 |= (v78 & v48) << v76++;
              }

              else
              {
                v82 = 0;
              }

              v78 *= 2;
              --v76;
              v79 = v82 != 0;
              v80 = v81 != 0;
            }

            while (v82 | v81);
            v83 = v77 << 11;
          }

          else
          {
            v83 = 0;
          }

          v84 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = v84 + 7;
          if (v85 < 0x10)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 3) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 3;
          if (v88 < 8)
          {
            v89 = 0;
            if (!v86)
            {
LABEL_107:
              v95 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 2) - 1)));
            if (!(v89 | v86))
            {
              goto LABEL_107;
            }
          }

          v90 = 0;
          v91 = 0;
          v92 = v86 != 0;
          v93 = v89 != 0;
          v94 = 1;
          do
          {
            --v86;
            if (v92)
            {
              v91 |= (v94 & v48) << v90++;
            }

            else
            {
              v86 = 0;
            }

            --v89;
            if (v93)
            {
              v91 |= (v94 & v25) << v90++;
            }

            else
            {
              v89 = 0;
            }

            v94 *= 2;
            --v90;
            v93 = v89 != 0;
            v92 = v86 != 0;
          }

          while (v89 | v86);
          v95 = 8 * v91;
LABEL_108:
          v96 = (v133 + v83);
          if (v132)
          {
            v97 = v65;
            memcpy(__dst, (v133 + v83), sizeof(__dst));
            v65 = v97;
            v96 = __dst;
          }

          v98 = (v134 + v95);
          v99 = (v135 + ((v62 - v50) << 6));
          if (!(v66 & 1 | (v65 < 8u)) && v138 > 3)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 128), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 16, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 24, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 24, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v129;
          block[5] = v96;
          v147 = v65;
          v148 = v138;
          v143 = v126;
          v144 = v62 - v60;
          block[6] = v98;
          v141 = v99;
          v142 = a11;
          v145 = v125;
          v146 = v64;
          if (v66)
          {
            dispatch_sync(*(*(v129 + 8) + 16552), block);
            v50 = v136;
            v23 = v129;
            goto LABEL_49;
          }

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 512, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 512, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 512, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[32 * v143 + 4 * v144];
            v110 = v146;
            do
            {
              if (v110)
              {
                v111 = 0;
                v112 = v141 + v142 * v108;
                do
                {
                  v112[v111] = *(v109->f64 + v111);
                  ++v111;
                  v110 = v146;
                }

                while (v146 << 6 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 32;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 3;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v136 = v15;
  v17 = v16;
  v19 = v18;
  v133 = v20;
  v134 = v21;
  v116 = v22;
  v23 = v12;
  v158 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v137 = v14;
  v118 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v132 = v31;
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
      v131 = 0;
LABEL_32:
      v127 = v33 - 3;
      v121 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v115 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v131 = v38 >= v32;
    goto LABEL_32;
  }

  v131 = 0;
  v115 = 0;
  v121 = 0;
  v127 = 0;
LABEL_33:
  if (v25 <= v117)
  {
    v130 = v136 + a9 - 1;
    if (v136 >> 3 <= v130 >> 3)
    {
      v139 = v26 >> 3;
      v123 = v26 & 7;
      v128 = (v26 & 7) + 1;
      v113 = v27 & 3;
      v114 = v27 >> 2;
      v122 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 4;
        v48 = v136 >> 3;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 4;
        }

        v138 = v49;
        if (v25 != v114)
        {
          v46 = v47;
        }

        v124 = v46;
        v135 = v116 + (v43 - v137) * a11;
        v50 = v136;
        do
        {
          v60 = 8 * v48;
          v61 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 8 * v48;
          }

          if (v130 < v61)
          {
            v61 = v136 + a9 - 1;
          }

          v63 = v61 - v62;
          v64 = v63 + 1;
          if (v48 == v139)
          {
            v65 = v128;
          }

          else
          {
            v65 = 8;
          }

          v66 = 1;
          if (4 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 8;
            }

            v66 = v67 || v124;
          }

          if (v131)
          {
            if (v127 | v121)
            {
              v68 = 0;
              v69 = 0;
              v70 = v127 != 0;
              v71 = 1;
              v73 = v121 != 0;
              v72 = v121;
              v74 = v127;
              do
              {
                --v72;
                if (v73)
                {
                  v69 |= (v25 & ~(-1 << v121) & v71) << v68++;
                }

                else
                {
                  v72 = 0;
                }

                --v74;
                if (v70)
                {
                  v69 |= (v48 & ~(-1 << v127) & v71) << v68++;
                }

                else
                {
                  v74 = 0;
                }

                v71 *= 2;
                --v68;
                v70 = v74 != 0;
                v73 = v72 != 0;
              }

              while (v74 | v72);
              v75 = v69 << 11;
            }

            else
            {
              v75 = 0;
            }

            v83 = v75 + *(v23 + 336) * ((v48 >> v127) + (v25 >> v121) * v115);
          }

          else if (v120)
          {
            v76 = 0;
            v77 = 0;
            v78 = 1;
            v80 = v119.i8[0];
            v79 = v119.i8[4];
            v81 = v120.i32[0];
            v82 = v120.i32[1];
            do
            {
              --v81;
              if (v80)
              {
                v77 |= (v78 & v25) << v76++;
              }

              else
              {
                v81 = 0;
              }

              --v82;
              if (v79)
              {
                v77 |= (v78 & v48) << v76++;
              }

              else
              {
                v82 = 0;
              }

              v78 *= 2;
              --v76;
              v79 = v82 != 0;
              v80 = v81 != 0;
            }

            while (v82 | v81);
            v83 = v77 << 11;
          }

          else
          {
            v83 = 0;
          }

          v84 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = v84 + 7;
          if (v85 < 0x10)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 3) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 3;
          if (v88 < 8)
          {
            v89 = 0;
            if (!v86)
            {
LABEL_107:
              v95 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 2) - 1)));
            if (!(v89 | v86))
            {
              goto LABEL_107;
            }
          }

          v90 = 0;
          v91 = 0;
          v92 = v86 != 0;
          v93 = v89 != 0;
          v94 = 1;
          do
          {
            --v86;
            if (v92)
            {
              v91 |= (v94 & v48) << v90++;
            }

            else
            {
              v86 = 0;
            }

            --v89;
            if (v93)
            {
              v91 |= (v94 & v25) << v90++;
            }

            else
            {
              v89 = 0;
            }

            v94 *= 2;
            --v90;
            v93 = v89 != 0;
            v92 = v86 != 0;
          }

          while (v89 | v86);
          v95 = 8 * v91;
LABEL_108:
          v96 = (v133 + v83);
          if (v132)
          {
            v97 = v65;
            memcpy(__dst, (v133 + v83), sizeof(__dst));
            v65 = v97;
            v96 = __dst;
          }

          v98 = (v134 + v95);
          v99 = (v135 + ((v62 - v50) << 6));
          if (!(v66 & 1 | (v65 < 8u)) && v138 > 3)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 128), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 16, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 24, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 24, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v129;
          block[5] = v96;
          v147 = v65;
          v148 = v138;
          v143 = v126;
          v144 = v62 - v60;
          block[6] = v98;
          v141 = v99;
          v142 = a11;
          v145 = v125;
          v146 = v64;
          if (v66)
          {
            dispatch_sync(*(*(v129 + 8) + 16552), block);
            v50 = v136;
            v23 = v129;
            goto LABEL_49;
          }

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 512, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 512, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 512, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[32 * v143 + 4 * v144];
            v110 = v146;
            do
            {
              if (v110)
              {
                v111 = 0;
                v112 = v141 + v142 * v108;
                do
                {
                  v112[v111] = *(v109->f64 + v111);
                  ++v111;
                  v110 = v146;
                }

                while (v146 << 6 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 32;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 3;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v140 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v122 = v22;
  v23 = v12;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v24 = v14 >> 2;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
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
  v134 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v123)
  {
    v132 = v140 + a9 - 1;
    if (v140 >> 3 <= v132 >> 3)
    {
      v32 = a11;
      v142 = (v19 - 1) >> 3;
      v118 = v19 - 1;
      v125 = (v19 - 1) & 7;
      v119 = (v17 - 1) & 3;
      v120 = (v17 - 1) >> 2;
      v124 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v130 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v129 = v34;
      v117 = 8 * v26 * v25;
      v131 = v23;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v139)
        {
          v36 = v139;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v138 = 4 * v24;
        v128 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v127 = v38;
        v40 = v38 != 4;
        v41 = v140 >> 3;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 4;
        }

        v141 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v126 = v39;
        v137 = v122 + (v36 - v139) * v32;
        v43 = v140;
        do
        {
          v53 = 8 * v41;
          v54 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 8 * v41;
          }

          if (v132 < v54)
          {
            v54 = v140 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v142)
          {
            v58 = v125 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v138 >= v139 && v53 >= v43)
          {
            v60 = v56 != v125;
            if (v41 != v142)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v126;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v117 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v81 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v81 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v81 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v83 = 0;
              v81 = 16;
              v84 = 16;
            }

            else
            {
              v84 = 0;
              if (v82 == 1024)
              {
                v83 = 0;
                v84 = 8;
                v81 = 16;
              }
            }

            v105 = (v81 >> 3) - 1;
            v106 = (v84 >> 2) - 1;
            if ((v83 & 1) != 0 || (v107 = 32 - __clz(~(-1 << -__clz(v105))), v108 = 32 - __clz(~(-1 << -__clz(v106))), !(v108 | v107)))
            {
              v116 = 0;
            }

            else
            {
              v109 = 0;
              v110 = 0;
              v111 = v41 & v105;
              v112 = v24 & v106;
              v113 = v108 != 0;
              v114 = v107 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v110 |= (v115 & v112) << v109++;
                }

                else
                {
                  v108 = 0;
                }

                --v107;
                if (v114)
                {
                  v110 |= (v115 & v111) << v109++;
                }

                else
                {
                  v107 = 0;
                }

                v115 *= 2;
                --v109;
                v114 = v107 != 0;
                v113 = v108 != 0;
              }

              while (v107 | v108);
              v116 = v110 << 11;
            }

            v68 = v116 + ((v53 / v81 + v138 / v84 * ((v81 + v118) / v81)) << 14);
          }

          else if (v130)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v129.i8[0];
            v64 = v129.i8[4];
            v66 = v130.i32[0];
            v67 = v130.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v24) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v41) << v61++;
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
            v68 = v62 << 11;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
            if (!v71)
            {
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_81;
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
              v76 |= (v79 & v41) << v75++;
            }

            else
            {
              v71 = 0;
            }

            --v74;
            if (v78)
            {
              v76 |= (v79 & v24) << v75++;
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
LABEL_82:
          v85 = (v135 + v68);
          if (v134)
          {
            v86 = v57;
            v87 = v32;
            v88 = v58;
            v89 = v59;
            memcpy(__dst, (v135 + v68), sizeof(__dst));
            v59 = v89;
            v58 = v88;
            v32 = v87;
            v53 = 8 * v41;
            v57 = v86;
            v85 = __dst;
          }

          v90 = (v136 + v80);
          v91 = (v137 + ((v55 - v43) << 6));
          if (!(v59 & 1 | (v58 < 8u)) && v141 > 3)
          {
            v44 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v137 + ((v55 - v43) << 6)), v32, v85, *v90)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, v32, v44, v90[1]);
            v46 = (v91 + v124);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124), v32, v45, v90[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124 + 128), v32, v47, v90[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 16, v32, v48, v90[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 24, v32, v49, v90[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, v32, v50, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 24, v32, v50 + v51, v90[7]);
            v43 = v140;
            v23 = v131;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v85;
          v150 = v58;
          v151 = v141;
          v146 = v128;
          v147 = v55 - v53;
          block[6] = v90;
          v144 = v137 + ((v55 - v43) << 6);
          v145 = v32;
          v148 = v127;
          v149 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v43 = v140;
            v23 = v131;
            goto LABEL_29;
          }

          v92 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v85, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 512, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 512, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 512, v97 + v98, v90[7]);
          v99 = v148;
          v43 = v140;
          v23 = v131;
          v52 = v41 + 1;
          if (v148)
          {
            v100 = 0;
            v101 = &v153[32 * v146 + 4 * v147];
            v102 = v149;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v144 + v145 * v100;
                do
                {
                  *(v104 + v103) = *(v101->f64 + v103);
                  ++v103;
                  v102 = v149;
                }

                while (v149 << 6 > v103);
                v99 = v148;
              }

              ++v100;
              v101 += 32;
            }

            while (v100 < v99);
          }

LABEL_30:
          v28 = v41 == v132 >> 3;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v140 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v122 = v22;
  v23 = v12;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v24 = v14 >> 2;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
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
  v134 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v123)
  {
    v132 = v140 + a9 - 1;
    if (v140 >> 3 <= v132 >> 3)
    {
      v32 = a11;
      v142 = (v19 - 1) >> 3;
      v118 = v19 - 1;
      v125 = (v19 - 1) & 7;
      v119 = (v17 - 1) & 3;
      v120 = (v17 - 1) >> 2;
      v124 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v130 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v129 = v34;
      v117 = 8 * v26 * v25;
      v131 = v23;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v139)
        {
          v36 = v139;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v138 = 4 * v24;
        v128 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v127 = v38;
        v40 = v38 != 4;
        v41 = v140 >> 3;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 4;
        }

        v141 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v126 = v39;
        v137 = v122 + (v36 - v139) * v32;
        v43 = v140;
        do
        {
          v53 = 8 * v41;
          v54 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 8 * v41;
          }

          if (v132 < v54)
          {
            v54 = v140 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v142)
          {
            v58 = v125 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v138 >= v139 && v53 >= v43)
          {
            v60 = v56 != v125;
            if (v41 != v142)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v126;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v117 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v81 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v81 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v81 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v83 = 0;
              v81 = 16;
              v84 = 16;
            }

            else
            {
              v84 = 0;
              if (v82 == 1024)
              {
                v83 = 0;
                v84 = 8;
                v81 = 16;
              }
            }

            v105 = (v81 >> 3) - 1;
            v106 = (v84 >> 2) - 1;
            if ((v83 & 1) != 0 || (v107 = 32 - __clz(~(-1 << -__clz(v105))), v108 = 32 - __clz(~(-1 << -__clz(v106))), !(v108 | v107)))
            {
              v116 = 0;
            }

            else
            {
              v109 = 0;
              v110 = 0;
              v111 = v41 & v105;
              v112 = v24 & v106;
              v113 = v108 != 0;
              v114 = v107 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v110 |= (v115 & v112) << v109++;
                }

                else
                {
                  v108 = 0;
                }

                --v107;
                if (v114)
                {
                  v110 |= (v115 & v111) << v109++;
                }

                else
                {
                  v107 = 0;
                }

                v115 *= 2;
                --v109;
                v114 = v107 != 0;
                v113 = v108 != 0;
              }

              while (v107 | v108);
              v116 = v110 << 11;
            }

            v68 = v116 + ((v53 / v81 + v138 / v84 * ((v81 + v118) / v81)) << 14);
          }

          else if (v130)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v129.i8[0];
            v64 = v129.i8[4];
            v66 = v130.i32[0];
            v67 = v130.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v24) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v41) << v61++;
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
            v68 = v62 << 11;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
            if (!v71)
            {
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_81;
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
              v76 |= (v79 & v41) << v75++;
            }

            else
            {
              v71 = 0;
            }

            --v74;
            if (v78)
            {
              v76 |= (v79 & v24) << v75++;
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
LABEL_82:
          v85 = (v135 + v68);
          if (v134)
          {
            v86 = v57;
            v87 = v32;
            v88 = v58;
            v89 = v59;
            memcpy(__dst, (v135 + v68), sizeof(__dst));
            v59 = v89;
            v58 = v88;
            v32 = v87;
            v53 = 8 * v41;
            v57 = v86;
            v85 = __dst;
          }

          v90 = (v136 + v80);
          v91 = (v137 + ((v55 - v43) << 6));
          if (!(v59 & 1 | (v58 < 8u)) && v141 > 3)
          {
            v44 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v137 + ((v55 - v43) << 6)), v32, v85, *v90)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, v32, v44, v90[1]);
            v46 = (v91 + v124);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124), v32, v45, v90[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124 + 128), v32, v47, v90[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 16, v32, v48, v90[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 24, v32, v49, v90[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, v32, v50, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 24, v32, v50 + v51, v90[7]);
            v43 = v140;
            v23 = v131;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v85;
          v150 = v58;
          v151 = v141;
          v146 = v128;
          v147 = v55 - v53;
          block[6] = v90;
          v144 = v137 + ((v55 - v43) << 6);
          v145 = v32;
          v148 = v127;
          v149 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v43 = v140;
            v23 = v131;
            goto LABEL_29;
          }

          v92 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v85, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 512, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 512, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 512, v97 + v98, v90[7]);
          v99 = v148;
          v43 = v140;
          v23 = v131;
          v52 = v41 + 1;
          if (v148)
          {
            v100 = 0;
            v101 = &v153[32 * v146 + 4 * v147];
            v102 = v149;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v144 + v145 * v100;
                do
                {
                  *(v104 + v103) = *(v101->f64 + v103);
                  ++v103;
                  v102 = v149;
                }

                while (v149 << 6 > v103);
                v99 = v148;
              }

              ++v100;
              v101 += 32;
            }

            while (v100 < v99);
          }

LABEL_30:
          v28 = v41 == v132 >> 3;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v283 = *MEMORY[0x29EDCA608];
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

  v17 = a8 >> 2;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v218 = v219 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v233 = v23;
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
      v232 = 0;
LABEL_32:
      v229 = v25 - 3;
      v222 = v24 - 2;
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

    v232 = v30 >= v24;
    goto LABEL_32;
  }

  v232 = 0;
  v216 = 0;
  v222 = 0;
  v229 = 0;
LABEL_33:
  if (v17 <= v218)
  {
    v231 = a7 + a9 - 1;
    if (a7 >> 3 <= v231 >> 3)
    {
      v32 = a11;
      v240 = v18 >> 3;
      v225 = v18 & 7;
      v230 = (v18 & 7) + 1;
      v214 = v19 & 3;
      v215 = v19 >> 2;
      v224 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v34.i8 = vcgt_u32(v33, 0xF00000007);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v34.i8);
      v221 = v35.i64[0];
      v223 = v35.i32[0] | v35.i32[1];
      v220 = v34.i64[0];
      v238 = v15;
      do
      {
        v36 = (4 * v17) | 3;
        if (4 * v17 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 4 * v17;
        }

        if (v219 < v36)
        {
          v36 = a8 + a10 - 1;
        }

        v228 = v37 - 4 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v214;
        v227 = v39;
        v41 = v39 != 4;
        v42 = a7 >> 3;
        v43 = v214 + 1;
        if (v17 != v215)
        {
          v43 = 4;
        }

        v239 = v43;
        if (v17 != v215)
        {
          v40 = v41;
        }

        v226 = v40;
        v236 = a2 + (v37 - a8) * v32;
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

          if (v231 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v240)
          {
            v51 = v230;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= a8 && v46 >= v44)
          {
            v53 = v49 != v225;
            if (v42 != v240)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v226;
          }

          if (v232)
          {
            if (v229 | v222)
            {
              v54 = 0;
              v55 = 0;
              v56 = v229 != 0;
              v57 = 1;
              v59 = v222 != 0;
              v58 = v222;
              v60 = v229;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v17 & ~(-1 << v222) & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v42 & ~(-1 << v229) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v42 >> v229) + (v17 >> v222) * v216);
          }

          else if (v223)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v220;
            v65 = BYTE4(v220);
            v67 = v221;
            v68 = HIDWORD(v221);
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
                v63 |= (v64 & v42) << v62++;
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

          v74 = v73 + 3;
          if (v74 < 8)
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
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
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
          if (v233)
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
          v87 = (v236 + 16 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 8u)) && v239 > 3)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v90 = *v82;
              v34 = v82[1];
              v96 = v82[2];
              v97 = v82[3];
              *v87 = *v82;
              v87[1] = v34;
              v32 = a11;
              v98 = &v87->i8[a11];
              *v98 = v96;
              *(v98 + 1) = v97;
              v89 = 64;
            }

            else
            {
              v32 = a11;
              if (v88 == 1)
              {
                v90 = vld1q_dup_s16(v82->i16);
                *v87 = v90;
                v87[1] = v90;
                v95 = &v87->i8[a11];
                *v95 = v90;
                v95[1] = v90;
                v89 = 2;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88, *v35.i8, *v34.i8);
              }

              else
              {
                v89 = 0;
                v90.i64[0] = 0;
                *v87 = 0u;
                v87[1] = 0u;
                v91 = &v87->i8[a11];
                *v91 = 0u;
                *(v91 + 1) = 0u;
              }
            }

            v99 = v82->i64 + v89;
            v100 = v87 + 2;
            v101 = v86[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v106 = *(v99 + 32);
              v107 = *(v99 + 48);
              v87[2] = *v99;
              v87[3] = v34;
              v108 = &v100->i8[v32];
              *v108 = v106;
              *(v108 + 1) = v107;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v103 = vld1q_dup_s16(v99);
              v87[2] = v103;
              v87[3] = v103;
              v105 = &v100->i8[v32];
              *v105 = v103;
              v105[1] = v103;
              v102 = 2;
            }

            else if (v86[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v100, v32, v99, v101, *v90.i8, *v34.i8);
            }

            else
            {
              v102 = 0;
              v103.i64[0] = 0;
              *v100 = 0u;
              v87[3] = 0u;
              v104 = &v100->i8[v32];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v109 = v99 + v102;
            v110 = (v87 + v224);
            v111 = v86[2];
            if (v111 == 63)
            {
              v113 = *v109;
              v34 = *(v109 + 16);
              v116 = *(v109 + 32);
              v117 = *(v109 + 48);
              *v110 = *v109;
              v110[1] = v34;
              v118 = &v110->i8[v32];
              *v118 = v116;
              *(v118 + 1) = v117;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v109);
              *v110 = v113;
              v110[1] = v113;
              v115 = &v110->i8[v32];
              *v115 = v113;
              v115[1] = v113;
              v112 = 2;
            }

            else if (v86[2])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v224), v32, v109, v111, *v103.i8, *v34.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              *v110 = 0u;
              v110[1] = 0u;
              v114 = &v110->i8[v32];
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v119 = v109 + v112;
            v120 = v110 + 2;
            v121 = v86[3];
            if (v121 == 63)
            {
              v123 = *v119;
              v34 = *(v119 + 16);
              v126 = *(v119 + 32);
              v127 = *(v119 + 48);
              v110[2] = *v119;
              v110[3] = v34;
              v128 = &v120->i8[v32];
              *v128 = v126;
              *(v128 + 1) = v127;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v123 = vld1q_dup_s16(v119);
              v110[2] = v123;
              v110[3] = v123;
              v125 = &v120->i8[v32];
              *v125 = v123;
              v125[1] = v123;
              v122 = 2;
            }

            else if (v86[3])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v32, v119, v121, *v113.i8, *v34.i8);
            }

            else
            {
              v122 = 0;
              v123.i64[0] = 0;
              *v120 = 0u;
              v110[3] = 0u;
              v124 = &v120->i8[v32];
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v129 = v119 + v122;
            v130 = v87 + 4;
            v131 = v86[4];
            if (v131 == 63)
            {
              v133 = *v129;
              v34 = *(v129 + 16);
              v136 = *(v129 + 32);
              v137 = *(v129 + 48);
              v87[4] = *v129;
              v87[5] = v34;
              v138 = &v130->i8[v32];
              *v138 = v136;
              *(v138 + 1) = v137;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v133 = vld1q_dup_s16(v129);
              v87[4] = v133;
              v87[5] = v133;
              v135 = &v130->i8[v32];
              *v135 = v133;
              v135[1] = v133;
              v132 = 2;
            }

            else if (v86[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131, *v123.i8, *v34.i8);
            }

            else
            {
              v132 = 0;
              v133.i64[0] = 0;
              *v130 = 0u;
              v87[5] = 0u;
              v134 = &v130->i8[v32];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v139 = v129 + v132;
            v140 = v87 + 6;
            v141 = v86[5];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v146 = *(v139 + 32);
              v147 = *(v139 + 48);
              v87[6] = *v139;
              v87[7] = v34;
              v148 = &v140->i8[v32];
              *v148 = v146;
              *(v148 + 1) = v147;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              v87[6] = v143;
              v87[7] = v143;
              v145 = &v140->i8[v32];
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v86[5])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v133.i8, *v34.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              v87[7] = 0u;
              v144 = &v140->i8[v32];
              *v144 = 0u;
              *(v144 + 1) = 0u;
            }

            v149 = v139 + v142;
            v150 = v110 + 4;
            v151 = v86[6];
            if (v151 == 63)
            {
              v153 = *v149;
              v34 = *(v149 + 16);
              v156 = *(v149 + 32);
              v157 = *(v149 + 48);
              v110[4] = *v149;
              v110[5] = v34;
              v158 = &v150->i8[v32];
              *v158 = v156;
              *(v158 + 1) = v157;
              v152 = 64;
            }

            else if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v149);
              v110[4] = v153;
              v110[5] = v153;
              v155 = &v150->i8[v32];
              *v155 = v153;
              v155[1] = v153;
              v152 = 2;
            }

            else if (v86[6])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v150, v32, v139 + v142, v151, *v143.i8, *v34.i8);
            }

            else
            {
              v152 = 0;
              v153.i64[0] = 0;
              *v150 = 0u;
              v110[5] = 0u;
              v154 = &v150->i8[v32];
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v159 = v149 + v152;
            v160 = v110 + 6;
            v161 = v86[7];
            if (v161 == 63)
            {
              v35 = *v159;
              v34 = *(v159 + 16);
              v163 = *(v159 + 32);
              v164 = *(v159 + 48);
              v110[6] = *v159;
              v110[7] = v34;
              v165 = &v160->i8[v32];
              *v165 = v163;
              *(v165 + 1) = v164;
              v44 = a7;
              v15 = v238;
            }

            else
            {
              v44 = a7;
              v15 = v238;
              if (v161 == 1)
              {
                v35 = vld1q_dup_s16(v159);
                v110[6] = v35;
                v110[7] = v35;
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
                  v110[7] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v32, v159, v161, *v153.i8, *v34.i8);
              }
            }

LABEL_49:
            v45 = v42 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v238;
          block[5] = v82;
          v248 = v51;
          v249 = v239;
          v244 = v228;
          v245 = v48 - v46;
          block[6] = v86;
          v242 = v87;
          v32 = a11;
          v243 = a11;
          v246 = v227;
          v247 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v238 + 8) + 16552), block);
            v44 = a7;
            v15 = v238;
            goto LABEL_49;
          }

          v92 = *v86;
          if (v92 == 63)
          {
            v94 = *v82;
            v34 = v82[1];
            v166 = v82[2];
            v167 = v82[3];
            v251 = *v82;
            v252 = v34;
            v259 = v166;
            v260 = v167;
            v93 = 64;
          }

          else if (v92 == 1)
          {
            v94 = vld1q_dup_s16(v82->i16);
            v251 = v94;
            v252 = v94;
            v259 = v94;
            v260 = v94;
            v93 = 2;
          }

          else if (*v86)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 128, v82, v92, *v35.i8, *v34.i8);
          }

          else
          {
            v93 = 0;
            v94.i64[0] = 0;
            v251 = 0u;
            v252 = 0u;
            v259 = 0u;
            v260 = 0u;
          }

          v168 = v82->i64 + v93;
          v169 = v86[1];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v172 = *(v168 + 32);
            v173 = *(v168 + 48);
            v253 = *v168;
            v254 = v34;
            v261 = v172;
            v262 = v173;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v253 = v171;
            v254 = v171;
            v261 = v171;
            v262 = v171;
            v170 = 2;
          }

          else if (v86[1])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 128, v168, v169, *v94.i8, *v34.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v253 = 0u;
            v254 = 0u;
            v261 = 0u;
            v262 = 0u;
          }

          v174 = v168 + v170;
          v175 = v86[2];
          if (v175 == 63)
          {
            v177 = *v174;
            v34 = *(v174 + 16);
            v178 = *(v174 + 32);
            v179 = *(v174 + 48);
            v267 = *v174;
            v268 = v34;
            v275 = v178;
            v276 = v179;
            v176 = 64;
          }

          else if (v175 == 1)
          {
            v177 = vld1q_dup_s16(v174);
            v267 = v177;
            v268 = v177;
            v275 = v177;
            v276 = v177;
            v176 = 2;
          }

          else if (v86[2])
          {
            v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 128, v174, v175, *v171.i8, *v34.i8);
          }

          else
          {
            v176 = 0;
            v177.i64[0] = 0;
            v267 = 0u;
            v268 = 0u;
            v275 = 0u;
            v276 = 0u;
          }

          v180 = v174 + v176;
          v181 = v86[3];
          if (v181 == 63)
          {
            v183 = *v180;
            v34 = *(v180 + 16);
            v184 = *(v180 + 32);
            v185 = *(v180 + 48);
            v269 = *v180;
            v270 = v34;
            v277 = v184;
            v278 = v185;
            v182 = 64;
          }

          else if (v181 == 1)
          {
            v183 = vld1q_dup_s16(v180);
            v269 = v183;
            v270 = v183;
            v277 = v183;
            v278 = v183;
            v182 = 2;
          }

          else if (v86[3])
          {
            v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 128, v180, v181, *v177.i8, *v34.i8);
          }

          else
          {
            v182 = 0;
            v183.i64[0] = 0;
            v269 = 0u;
            v270 = 0u;
            v277 = 0u;
            v278 = 0u;
          }

          v186 = v180 + v182;
          v187 = v86[4];
          if (v187 == 63)
          {
            v189 = *v186;
            v34 = *(v186 + 16);
            v190 = *(v186 + 32);
            v191 = *(v186 + 48);
            v255 = *v186;
            v256 = v34;
            v263 = v190;
            v264 = v191;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v189 = vld1q_dup_s16(v186);
            v255 = v189;
            v256 = v189;
            v263 = v189;
            v264 = v189;
            v188 = 2;
          }

          else if (v86[4])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 128, v186, v187, *v183.i8, *v34.i8);
          }

          else
          {
            v188 = 0;
            v189.i64[0] = 0;
            v255 = 0u;
            v256 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v192 = v186 + v188;
          v193 = v86[5];
          if (v193 == 63)
          {
            v195 = *v192;
            v34 = *(v192 + 16);
            v196 = *(v192 + 32);
            v197 = *(v192 + 48);
            v257 = *v192;
            v258 = v34;
            v265 = v196;
            v266 = v197;
            v194 = 64;
          }

          else if (v193 == 1)
          {
            v195 = vld1q_dup_s16(v192);
            v257 = v195;
            v258 = v195;
            v265 = v195;
            v266 = v195;
            v194 = 2;
          }

          else if (v86[5])
          {
            v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 128, v192, v193, *v189.i8, *v34.i8);
          }

          else
          {
            v194 = 0;
            v195.i64[0] = 0;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v198 = v192 + v194;
          v199 = v86[6];
          if (v199 == 63)
          {
            v201 = *v198;
            v34 = *(v198 + 16);
            v202 = *(v198 + 32);
            v203 = *(v198 + 48);
            v271 = *v198;
            v272 = v34;
            v279 = v202;
            v280 = v203;
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v271 = v201;
            v272 = v201;
            v279 = v201;
            v280 = v201;
            v200 = 2;
          }

          else if (v86[6])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 128, v198, v199, *v195.i8, *v34.i8);
          }

          else
          {
            v200 = 0;
            v201.i64[0] = 0;
            v271 = 0u;
            v272 = 0u;
            v279 = 0u;
            v280 = 0u;
          }

          v204 = v198 + v200;
          v205 = v86[7];
          if (v205 == 63)
          {
            v35 = *v204;
            v34 = *(v204 + 16);
            v206 = *(v204 + 32);
            v207 = *(v204 + 48);
            v273 = *v204;
            v274 = v34;
            v281 = v206;
            v282 = v207;
            v44 = a7;
            v15 = v238;
          }

          else
          {
            v44 = a7;
            v15 = v238;
            if (v205 == 1)
            {
              v35 = vld1q_dup_s16(v204);
              v273 = v35;
              v274 = v35;
              v281 = v35;
              v282 = v35;
            }

            else if (v205)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 128, v204, v205, *v201.i8, *v34.i8);
            }

            else
            {
              v35.i64[0] = 0;
              v273 = 0u;
              v274 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v208 = v246;
          v45 = v42 + 1;
          if (v246)
          {
            v209 = 0;
            v210 = &v251 + 8 * v244 + v245;
            v211 = v247;
            do
            {
              if (v211)
              {
                v212 = 0;
                v213 = v242->i64 + v243 * v209;
                do
                {
                  *(v213 + v212) = v210->i8[v212];
                  ++v212;
                  v211 = v247;
                }

                while (16 * v247 > v212);
                v208 = v246;
              }

              ++v209;
              v210 += 8;
            }

            while (v209 < v208);
          }

LABEL_50:
          v20 = v42 == v231 >> 3;
          v42 = v45;
        }

        while (!v20);
        v20 = v17++ == v218;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v283 = *MEMORY[0x29EDCA608];
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

  v17 = a8 >> 2;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v218 = v219 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v233 = v23;
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
      v232 = 0;
LABEL_32:
      v229 = v25 - 3;
      v222 = v24 - 2;
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

    v232 = v30 >= v24;
    goto LABEL_32;
  }

  v232 = 0;
  v216 = 0;
  v222 = 0;
  v229 = 0;
LABEL_33:
  if (v17 <= v218)
  {
    v231 = a7 + a9 - 1;
    if (a7 >> 3 <= v231 >> 3)
    {
      v32 = a11;
      v240 = v18 >> 3;
      v225 = v18 & 7;
      v230 = (v18 & 7) + 1;
      v214 = v19 & 3;
      v215 = v19 >> 2;
      v224 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v34.i8 = vcgt_u32(v33, 0xF00000007);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v34.i8);
      v221 = v35.i64[0];
      v223 = v35.i32[0] | v35.i32[1];
      v220 = v34.i64[0];
      v238 = v15;
      do
      {
        v36 = (4 * v17) | 3;
        if (4 * v17 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 4 * v17;
        }

        if (v219 < v36)
        {
          v36 = a8 + a10 - 1;
        }

        v228 = v37 - 4 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v214;
        v227 = v39;
        v41 = v39 != 4;
        v42 = a7 >> 3;
        v43 = v214 + 1;
        if (v17 != v215)
        {
          v43 = 4;
        }

        v239 = v43;
        if (v17 != v215)
        {
          v40 = v41;
        }

        v226 = v40;
        v236 = a2 + (v37 - a8) * v32;
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

          if (v231 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v240)
          {
            v51 = v230;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= a8 && v46 >= v44)
          {
            v53 = v49 != v225;
            if (v42 != v240)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v226;
          }

          if (v232)
          {
            if (v229 | v222)
            {
              v54 = 0;
              v55 = 0;
              v56 = v229 != 0;
              v57 = 1;
              v59 = v222 != 0;
              v58 = v222;
              v60 = v229;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v17 & ~(-1 << v222) & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v42 & ~(-1 << v229) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v42 >> v229) + (v17 >> v222) * v216);
          }

          else if (v223)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v220;
            v65 = BYTE4(v220);
            v67 = v221;
            v68 = HIDWORD(v221);
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
                v63 |= (v64 & v42) << v62++;
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

          v74 = v73 + 3;
          if (v74 < 8)
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
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
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
          if (v233)
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
          v87 = (v236 + 16 * (v48 - v44));
          if (!(v52 & 1 | (v51 < 8u)) && v239 > 3)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v90 = *v82;
              v34 = v82[1];
              v96 = v82[2];
              v97 = v82[3];
              *v87 = *v82;
              v87[1] = v34;
              v32 = a11;
              v98 = &v87->i8[a11];
              *v98 = v96;
              *(v98 + 1) = v97;
              v89 = 64;
            }

            else
            {
              v32 = a11;
              if (v88 == 1)
              {
                v90 = vld1q_dup_s16(v82->i16);
                *v87 = v90;
                v87[1] = v90;
                v95 = &v87->i8[a11];
                *v95 = v90;
                v95[1] = v90;
                v89 = 2;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88, *v35.i8, *v34.i8);
              }

              else
              {
                v89 = 0;
                v90.i64[0] = 0;
                *v87 = 0u;
                v87[1] = 0u;
                v91 = &v87->i8[a11];
                *v91 = 0u;
                *(v91 + 1) = 0u;
              }
            }

            v99 = v82->i64 + v89;
            v100 = v87 + 2;
            v101 = v86[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v106 = *(v99 + 32);
              v107 = *(v99 + 48);
              v87[2] = *v99;
              v87[3] = v34;
              v108 = &v100->i8[v32];
              *v108 = v106;
              *(v108 + 1) = v107;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v103 = vld1q_dup_s16(v99);
              v87[2] = v103;
              v87[3] = v103;
              v105 = &v100->i8[v32];
              *v105 = v103;
              v105[1] = v103;
              v102 = 2;
            }

            else if (v86[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v100, v32, v99, v101, *v90.i8, *v34.i8);
            }

            else
            {
              v102 = 0;
              v103.i64[0] = 0;
              *v100 = 0u;
              v87[3] = 0u;
              v104 = &v100->i8[v32];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v109 = v99 + v102;
            v110 = (v87 + v224);
            v111 = v86[2];
            if (v111 == 63)
            {
              v113 = *v109;
              v34 = *(v109 + 16);
              v116 = *(v109 + 32);
              v117 = *(v109 + 48);
              *v110 = *v109;
              v110[1] = v34;
              v118 = &v110->i8[v32];
              *v118 = v116;
              *(v118 + 1) = v117;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v109);
              *v110 = v113;
              v110[1] = v113;
              v115 = &v110->i8[v32];
              *v115 = v113;
              v115[1] = v113;
              v112 = 2;
            }

            else if (v86[2])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v224), v32, v109, v111, *v103.i8, *v34.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              *v110 = 0u;
              v110[1] = 0u;
              v114 = &v110->i8[v32];
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v119 = v109 + v112;
            v120 = v110 + 2;
            v121 = v86[3];
            if (v121 == 63)
            {
              v123 = *v119;
              v34 = *(v119 + 16);
              v126 = *(v119 + 32);
              v127 = *(v119 + 48);
              v110[2] = *v119;
              v110[3] = v34;
              v128 = &v120->i8[v32];
              *v128 = v126;
              *(v128 + 1) = v127;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v123 = vld1q_dup_s16(v119);
              v110[2] = v123;
              v110[3] = v123;
              v125 = &v120->i8[v32];
              *v125 = v123;
              v125[1] = v123;
              v122 = 2;
            }

            else if (v86[3])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v32, v119, v121, *v113.i8, *v34.i8);
            }

            else
            {
              v122 = 0;
              v123.i64[0] = 0;
              *v120 = 0u;
              v110[3] = 0u;
              v124 = &v120->i8[v32];
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v129 = v119 + v122;
            v130 = v87 + 4;
            v131 = v86[4];
            if (v131 == 63)
            {
              v133 = *v129;
              v34 = *(v129 + 16);
              v136 = *(v129 + 32);
              v137 = *(v129 + 48);
              v87[4] = *v129;
              v87[5] = v34;
              v138 = &v130->i8[v32];
              *v138 = v136;
              *(v138 + 1) = v137;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v133 = vld1q_dup_s16(v129);
              v87[4] = v133;
              v87[5] = v133;
              v135 = &v130->i8[v32];
              *v135 = v133;
              v135[1] = v133;
              v132 = 2;
            }

            else if (v86[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v130, v32, v129, v131, *v123.i8, *v34.i8);
            }

            else
            {
              v132 = 0;
              v133.i64[0] = 0;
              *v130 = 0u;
              v87[5] = 0u;
              v134 = &v130->i8[v32];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v139 = v129 + v132;
            v140 = v87 + 6;
            v141 = v86[5];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v146 = *(v139 + 32);
              v147 = *(v139 + 48);
              v87[6] = *v139;
              v87[7] = v34;
              v148 = &v140->i8[v32];
              *v148 = v146;
              *(v148 + 1) = v147;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              v87[6] = v143;
              v87[7] = v143;
              v145 = &v140->i8[v32];
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v86[5])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v133.i8, *v34.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              v87[7] = 0u;
              v144 = &v140->i8[v32];
              *v144 = 0u;
              *(v144 + 1) = 0u;
            }

            v149 = v139 + v142;
            v150 = v110 + 4;
            v151 = v86[6];
            if (v151 == 63)
            {
              v153 = *v149;
              v34 = *(v149 + 16);
              v156 = *(v149 + 32);
              v157 = *(v149 + 48);
              v110[4] = *v149;
              v110[5] = v34;
              v158 = &v150->i8[v32];
              *v158 = v156;
              *(v158 + 1) = v157;
              v152 = 64;
            }

            else if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v149);
              v110[4] = v153;
              v110[5] = v153;
              v155 = &v150->i8[v32];
              *v155 = v153;
              v155[1] = v153;
              v152 = 2;
            }

            else if (v86[6])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v150, v32, v139 + v142, v151, *v143.i8, *v34.i8);
            }

            else
            {
              v152 = 0;
              v153.i64[0] = 0;
              *v150 = 0u;
              v110[5] = 0u;
              v154 = &v150->i8[v32];
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v159 = v149 + v152;
            v160 = v110 + 6;
            v161 = v86[7];
            if (v161 == 63)
            {
              v35 = *v159;
              v34 = *(v159 + 16);
              v163 = *(v159 + 32);
              v164 = *(v159 + 48);
              v110[6] = *v159;
              v110[7] = v34;
              v165 = &v160->i8[v32];
              *v165 = v163;
              *(v165 + 1) = v164;
              v44 = a7;
              v15 = v238;
            }

            else
            {
              v44 = a7;
              v15 = v238;
              if (v161 == 1)
              {
                v35 = vld1q_dup_s16(v159);
                v110[6] = v35;
                v110[7] = v35;
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
                  v110[7] = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v32, v159, v161, *v153.i8, *v34.i8);
              }
            }

LABEL_49:
            v45 = v42 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v238;
          block[5] = v82;
          v248 = v51;
          v249 = v239;
          v244 = v228;
          v245 = v48 - v46;
          block[6] = v86;
          v242 = v87;
          v32 = a11;
          v243 = a11;
          v246 = v227;
          v247 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v238 + 8) + 16552), block);
            v44 = a7;
            v15 = v238;
            goto LABEL_49;
          }

          v92 = *v86;
          if (v92 == 63)
          {
            v94 = *v82;
            v34 = v82[1];
            v166 = v82[2];
            v167 = v82[3];
            v251 = *v82;
            v252 = v34;
            v259 = v166;
            v260 = v167;
            v93 = 64;
          }

          else if (v92 == 1)
          {
            v94 = vld1q_dup_s16(v82->i16);
            v251 = v94;
            v252 = v94;
            v259 = v94;
            v260 = v94;
            v93 = 2;
          }

          else if (*v86)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 128, v82, v92, *v35.i8, *v34.i8);
          }

          else
          {
            v93 = 0;
            v94.i64[0] = 0;
            v251 = 0u;
            v252 = 0u;
            v259 = 0u;
            v260 = 0u;
          }

          v168 = v82->i64 + v93;
          v169 = v86[1];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v172 = *(v168 + 32);
            v173 = *(v168 + 48);
            v253 = *v168;
            v254 = v34;
            v261 = v172;
            v262 = v173;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v253 = v171;
            v254 = v171;
            v261 = v171;
            v262 = v171;
            v170 = 2;
          }

          else if (v86[1])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 128, v168, v169, *v94.i8, *v34.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v253 = 0u;
            v254 = 0u;
            v261 = 0u;
            v262 = 0u;
          }

          v174 = v168 + v170;
          v175 = v86[2];
          if (v175 == 63)
          {
            v177 = *v174;
            v34 = *(v174 + 16);
            v178 = *(v174 + 32);
            v179 = *(v174 + 48);
            v267 = *v174;
            v268 = v34;
            v275 = v178;
            v276 = v179;
            v176 = 64;
          }

          else if (v175 == 1)
          {
            v177 = vld1q_dup_s16(v174);
            v267 = v177;
            v268 = v177;
            v275 = v177;
            v276 = v177;
            v176 = 2;
          }

          else if (v86[2])
          {
            v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 128, v174, v175, *v171.i8, *v34.i8);
          }

          else
          {
            v176 = 0;
            v177.i64[0] = 0;
            v267 = 0u;
            v268 = 0u;
            v275 = 0u;
            v276 = 0u;
          }

          v180 = v174 + v176;
          v181 = v86[3];
          if (v181 == 63)
          {
            v183 = *v180;
            v34 = *(v180 + 16);
            v184 = *(v180 + 32);
            v185 = *(v180 + 48);
            v269 = *v180;
            v270 = v34;
            v277 = v184;
            v278 = v185;
            v182 = 64;
          }

          else if (v181 == 1)
          {
            v183 = vld1q_dup_s16(v180);
            v269 = v183;
            v270 = v183;
            v277 = v183;
            v278 = v183;
            v182 = 2;
          }

          else if (v86[3])
          {
            v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 128, v180, v181, *v177.i8, *v34.i8);
          }

          else
          {
            v182 = 0;
            v183.i64[0] = 0;
            v269 = 0u;
            v270 = 0u;
            v277 = 0u;
            v278 = 0u;
          }

          v186 = v180 + v182;
          v187 = v86[4];
          if (v187 == 63)
          {
            v189 = *v186;
            v34 = *(v186 + 16);
            v190 = *(v186 + 32);
            v191 = *(v186 + 48);
            v255 = *v186;
            v256 = v34;
            v263 = v190;
            v264 = v191;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v189 = vld1q_dup_s16(v186);
            v255 = v189;
            v256 = v189;
            v263 = v189;
            v264 = v189;
            v188 = 2;
          }

          else if (v86[4])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 128, v186, v187, *v183.i8, *v34.i8);
          }

          else
          {
            v188 = 0;
            v189.i64[0] = 0;
            v255 = 0u;
            v256 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v192 = v186 + v188;
          v193 = v86[5];
          if (v193 == 63)
          {
            v195 = *v192;
            v34 = *(v192 + 16);
            v196 = *(v192 + 32);
            v197 = *(v192 + 48);
            v257 = *v192;
            v258 = v34;
            v265 = v196;
            v266 = v197;
            v194 = 64;
          }

          else if (v193 == 1)
          {
            v195 = vld1q_dup_s16(v192);
            v257 = v195;
            v258 = v195;
            v265 = v195;
            v266 = v195;
            v194 = 2;
          }

          else if (v86[5])
          {
            v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 128, v192, v193, *v189.i8, *v34.i8);
          }

          else
          {
            v194 = 0;
            v195.i64[0] = 0;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v198 = v192 + v194;
          v199 = v86[6];
          if (v199 == 63)
          {
            v201 = *v198;
            v34 = *(v198 + 16);
            v202 = *(v198 + 32);
            v203 = *(v198 + 48);
            v271 = *v198;
            v272 = v34;
            v279 = v202;
            v280 = v203;
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v271 = v201;
            v272 = v201;
            v279 = v201;
            v280 = v201;
            v200 = 2;
          }

          else if (v86[6])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 128, v198, v199, *v195.i8, *v34.i8);
          }

          else
          {
            v200 = 0;
            v201.i64[0] = 0;
            v271 = 0u;
            v272 = 0u;
            v279 = 0u;
            v280 = 0u;
          }

          v204 = v198 + v200;
          v205 = v86[7];
          if (v205 == 63)
          {
            v35 = *v204;
            v34 = *(v204 + 16);
            v206 = *(v204 + 32);
            v207 = *(v204 + 48);
            v273 = *v204;
            v274 = v34;
            v281 = v206;
            v282 = v207;
            v44 = a7;
            v15 = v238;
          }

          else
          {
            v44 = a7;
            v15 = v238;
            if (v205 == 1)
            {
              v35 = vld1q_dup_s16(v204);
              v273 = v35;
              v274 = v35;
              v281 = v35;
              v282 = v35;
            }

            else if (v205)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 128, v204, v205, *v201.i8, *v34.i8);
            }

            else
            {
              v35.i64[0] = 0;
              v273 = 0u;
              v274 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v208 = v246;
          v45 = v42 + 1;
          if (v246)
          {
            v209 = 0;
            v210 = &v251 + 8 * v244 + v245;
            v211 = v247;
            do
            {
              if (v211)
              {
                v212 = 0;
                v213 = v242->i64 + v243 * v209;
                do
                {
                  *(v213 + v212) = v210->i8[v212];
                  ++v212;
                  v211 = v247;
                }

                while (16 * v247 > v212);
                v208 = v246;
              }

              ++v209;
              v210 += 8;
            }

            while (v209 < v208);
          }

LABEL_50:
          v20 = v42 == v231 >> 3;
          v42 = v45;
        }

        while (!v20);
        v20 = v17++ == v218;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v280 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v233 = a8;
  v16 = a8 >> 2;
  v215 = a8 + a10 - 1;
  v217 = v215 >> 2;
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
  v228 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v217)
  {
    v226 = a7 + a9 - 1;
    if (a7 >> 3 <= v226 >> 3)
    {
      v24 = a11;
      v237 = (a5 - 1) >> 3;
      v212 = a5 - 1;
      v219 = (a5 - 1) & 7;
      v213 = (a6 - 1) & 3;
      v214 = (a6 - 1) >> 2;
      v218 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v224 = v27.i64[0];
      v225 = v27.i32[0] | v27.i32[1];
      v223 = v26.i64[0];
      v211 = 8 * v18 * v17;
      v235 = v15;
      do
      {
        v28 = (4 * v16) | 3;
        if (4 * v16 <= v233)
        {
          v29 = v233;
        }

        else
        {
          v29 = 4 * v16;
        }

        if (v215 < v28)
        {
          v28 = v215;
        }

        v232 = 4 * v16;
        v222 = v29 - 4 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v213;
        v221 = v31;
        v33 = v31 != 4;
        v34 = a7 >> 3;
        v35 = v213 + 1;
        if (v16 != v214)
        {
          v35 = 4;
        }

        v236 = v35;
        if (v16 != v214)
        {
          v32 = v33;
        }

        v220 = v32;
        v231 = a2 + (v29 - v233) * v24;
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

          if (v226 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v237)
          {
            v43 = v219 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v232 >= v233 && v38 >= v36)
          {
            v45 = v41 != v219;
            if (v34 != v237)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v220;
          }

          if (isLevelTiled)
          {
            v195 = 0;
            v196 = v211 >> (*(v15 + 57) != 0);
            v197 = 1;
            if (v196 <= 63)
            {
              if (v196 > 15)
              {
                if (v196 == 16)
                {
                  v197 = 0;
                  v198 = 64;
                  v195 = 128;
                }

                else
                {
                  v198 = 0;
                  if (v196 == 32)
                  {
                    v197 = 0;
                    v195 = 64;
                    v198 = 64;
                  }
                }
              }

              else if (v196 == 4)
              {
                v197 = 0;
                v198 = 128;
                v195 = 256;
              }

              else
              {
                v198 = 0;
                if (v196 == 8)
                {
                  v197 = 0;
                  v195 = 128;
                  v198 = 128;
                }
              }
            }

            else if (v196 <= 255)
            {
              if (v196 == 64)
              {
                v197 = 0;
                v198 = 32;
                v195 = 64;
              }

              else
              {
                v198 = 0;
                if (v196 == 128)
                {
                  v197 = 0;
                  v195 = 32;
                  v198 = 32;
                }
              }
            }

            else if (v196 == 256)
            {
              v197 = 0;
              v198 = 16;
              v195 = 32;
            }

            else if (v196 == 512)
            {
              v197 = 0;
              v195 = 16;
              v198 = 16;
            }

            else
            {
              v198 = 0;
              if (v196 == 1024)
              {
                v197 = 0;
                v198 = 8;
                v195 = 16;
              }
            }

            v199 = (v195 >> 3) - 1;
            v200 = (v198 >> 2) - 1;
            if ((v197 & 1) != 0 || (v201 = 32 - __clz(~(-1 << -__clz(v199))), v202 = 32 - __clz(~(-1 << -__clz(v200))), !(v202 | v201)))
            {
              v210 = 0;
            }

            else
            {
              v203 = 0;
              v204 = 0;
              v205 = v34 & v199;
              v206 = v16 & v200;
              v207 = v202 != 0;
              v208 = v201 != 0;
              v209 = 1;
              do
              {
                --v202;
                if (v207)
                {
                  v204 |= (v209 & v206) << v203++;
                }

                else
                {
                  v202 = 0;
                }

                --v201;
                if (v208)
                {
                  v204 |= (v209 & v205) << v203++;
                }

                else
                {
                  v201 = 0;
                }

                v209 *= 2;
                --v203;
                v208 = v201 != 0;
                v207 = v202 != 0;
              }

              while (v201 | v202);
              v210 = v204 << 9;
            }

            v53 = v210 + ((v38 / v195 + v232 / v198 * ((v195 + v212) / v195)) << 14);
          }

          else if (v225)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v223;
            v49 = BYTE4(v223);
            v51 = v224;
            v52 = HIDWORD(v224);
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v34) << v46++;
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

          v58 = v57 + 3;
          if (v58 < 8)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 2) - 1)));
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
          if (v228)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v66 = __dst;
          }

          v67 = (a4 + v65);
          v68 = (v231 + 16 * (v40 - v36));
          if (!(v44 & 1 | (v43 < 8u)) && v236 > 3)
          {
            v69 = *v67;
            if (v69 == 63)
            {
              v71 = *v66;
              v26 = v66[1];
              v77 = v66[2];
              v78 = v66[3];
              *v68 = *v66;
              v68[1] = v26;
              v24 = a11;
              v79 = (v68 + a11);
              *v79 = v77;
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
                v68[1] = v71;
                v76 = (v68 + a11);
                *v76 = v71;
                v76[1] = v71;
                v70 = 2;
              }

              else if (*v67)
              {
                v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v68, a11, v66, v69, *v27.i8, *v26.i8);
              }

              else
              {
                v70 = 0;
                v71.i64[0] = 0;
                *v68 = 0u;
                v68[1] = 0u;
                v72 = &v68->i8[a11];
                *v72 = 0u;
                *(v72 + 1) = 0u;
              }
            }

            v80 = v66->i64 + v70;
            v81 = v68 + 2;
            v82 = v67[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v87 = *(v80 + 32);
              v88 = *(v80 + 48);
              v68[2] = *v80;
              v68[3] = v26;
              v89 = &v81->i8[v24];
              *v89 = v87;
              *(v89 + 1) = v88;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              v68[2] = v84;
              v68[3] = v84;
              v86 = &v81->i8[v24];
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v67[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v81, v24, v80, v82, *v71.i8, *v26.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v68[3] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v90 = v80 + v83;
            v91 = (v68 + v218);
            v92 = v67[2];
            if (v92 == 63)
            {
              v94 = *v90;
              v26 = *(v90 + 16);
              v97 = *(v90 + 32);
              v98 = *(v90 + 48);
              *v91 = *v90;
              v91[1] = v26;
              v99 = &v91->i8[v24];
              *v99 = v97;
              *(v99 + 1) = v98;
              v93 = 64;
            }

            else if (v92 == 1)
            {
              v94 = vld1q_dup_s16(v90);
              *v91 = v94;
              v91[1] = v94;
              v96 = &v91->i8[v24];
              *v96 = v94;
              v96[1] = v94;
              v93 = 2;
            }

            else if (v67[2])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v218), v24, v90, v92, *v84.i8, *v26.i8);
            }

            else
            {
              v93 = 0;
              v94.i64[0] = 0;
              *v91 = 0u;
              v91[1] = 0u;
              v95 = &v91->i8[v24];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v100 = v90 + v93;
            v101 = v91 + 2;
            v102 = v67[3];
            if (v102 == 63)
            {
              v104 = *v100;
              v26 = *(v100 + 16);
              v107 = *(v100 + 32);
              v108 = *(v100 + 48);
              v91[2] = *v100;
              v91[3] = v26;
              v109 = &v101->i8[v24];
              *v109 = v107;
              *(v109 + 1) = v108;
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v100);
              v91[2] = v104;
              v91[3] = v104;
              v106 = &v101->i8[v24];
              *v106 = v104;
              v106[1] = v104;
              v103 = 2;
            }

            else if (v67[3])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v24, v100, v102, *v94.i8, *v26.i8);
            }

            else
            {
              v103 = 0;
              v104.i64[0] = 0;
              *v101 = 0u;
              v91[3] = 0u;
              v105 = &v101->i8[v24];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v110 = v100 + v103;
            v111 = v68 + 4;
            v112 = v67[4];
            if (v112 == 63)
            {
              v114 = *v110;
              v26 = *(v110 + 16);
              v117 = *(v110 + 32);
              v118 = *(v110 + 48);
              v68[4] = *v110;
              v68[5] = v26;
              v119 = &v111->i8[v24];
              *v119 = v117;
              *(v119 + 1) = v118;
              v113 = 64;
            }

            else if (v112 == 1)
            {
              v114 = vld1q_dup_s16(v110);
              v68[4] = v114;
              v68[5] = v114;
              v116 = &v111->i8[v24];
              *v116 = v114;
              v116[1] = v114;
              v113 = 2;
            }

            else if (v67[4])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v111, v24, v110, v112, *v104.i8, *v26.i8);
            }

            else
            {
              v113 = 0;
              v114.i64[0] = 0;
              *v111 = 0u;
              v68[5] = 0u;
              v115 = &v111->i8[v24];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v120 = v110 + v113;
            v121 = v68 + 6;
            v122 = v67[5];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v127 = *(v120 + 32);
              v128 = *(v120 + 48);
              v68[6] = *v120;
              v68[7] = v26;
              v129 = &v121->i8[v24];
              *v129 = v127;
              *(v129 + 1) = v128;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v68[6] = v124;
              v68[7] = v124;
              v126 = &v121->i8[v24];
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v67[5])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v114.i8, *v26.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v68[7] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v36 = a7;
            v130 = v120 + v123;
            v131 = v91 + 4;
            v132 = v67[6];
            if (v132 == 63)
            {
              v134 = *v130;
              v26 = *(v130 + 16);
              v137 = *(v130 + 32);
              v138 = *(v130 + 48);
              v91[4] = *v130;
              v91[5] = v26;
              v139 = &v131->i8[v24];
              *v139 = v137;
              *(v139 + 1) = v138;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v134 = vld1q_dup_s16(v130);
              v91[4] = v134;
              v91[5] = v134;
              v136 = &v131->i8[v24];
              *v136 = v134;
              v136[1] = v134;
              v133 = 2;
            }

            else if (v67[6])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v124.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v134.i64[0] = 0;
              *v131 = 0u;
              v91[5] = 0u;
              v135 = &v131->i8[v24];
              *v135 = 0u;
              *(v135 + 1) = 0u;
            }

            v140 = v130 + v133;
            v141 = v91 + 6;
            v142 = v67[7];
            if (v142 == 63)
            {
              v27 = *v140;
              v26 = *(v140 + 16);
              v144 = *(v140 + 32);
              v145 = *(v140 + 48);
              v91[6] = *v140;
              v91[7] = v26;
              v146 = &v141->i8[v24];
              *v146 = v144;
              *(v146 + 1) = v145;
              v15 = v235;
            }

            else
            {
              v15 = v235;
              if (v142 == 1)
              {
                v27 = vld1q_dup_s16(v140);
                v91[6] = v27;
                v91[7] = v27;
LABEL_138:
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
                  v91[7] = 0u;
                  goto LABEL_138;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v134.i8, *v26.i8);
              }
            }

LABEL_29:
            v37 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v235;
          block[5] = v66;
          v245 = v43;
          v246 = v236;
          v241 = v222;
          v242 = v40 - v38;
          block[6] = v67;
          v239 = v68;
          v24 = a11;
          v240 = a11;
          v243 = v221;
          v244 = v42;
          if (v44)
          {
            dispatch_sync(*(*(v235 + 8) + 16552), block);
            v36 = a7;
            v15 = v235;
            goto LABEL_29;
          }

          v73 = *v67;
          v36 = a7;
          if (v73 == 63)
          {
            v75 = *v66;
            v26 = v66[1];
            v147 = v66[2];
            v148 = v66[3];
            v248 = *v66;
            v249 = v26;
            v256 = v147;
            v257 = v148;
            v74 = 64;
          }

          else if (v73 == 1)
          {
            v75 = vld1q_dup_s16(v66->i16);
            v248 = v75;
            v249 = v75;
            v256 = v75;
            v257 = v75;
            v74 = 2;
          }

          else if (*v67)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v66, v73, *v27.i8, *v26.i8);
          }

          else
          {
            v74 = 0;
            v75.i64[0] = 0;
            v248 = 0u;
            v249 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v149 = v66->i64 + v74;
          v150 = v67[1];
          if (v150 == 63)
          {
            v152 = *v149;
            v26 = *(v149 + 16);
            v153 = *(v149 + 32);
            v154 = *(v149 + 48);
            v250 = *v149;
            v251 = v26;
            v258 = v153;
            v259 = v154;
            v151 = 64;
            v37 = v34 + 1;
          }

          else
          {
            v37 = v34 + 1;
            if (v150 == 1)
            {
              v152 = vld1q_dup_s16(v149);
              v250 = v152;
              v251 = v152;
              v258 = v152;
              v259 = v152;
              v151 = 2;
            }

            else if (v67[1])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v149, v150, *v75.i8, *v26.i8);
            }

            else
            {
              v151 = 0;
              v152.i64[0] = 0;
              v250 = 0u;
              v251 = 0u;
              v258 = 0u;
              v259 = 0u;
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
            v264 = *v155;
            v265 = v26;
            v272 = v159;
            v273 = v160;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v158 = vld1q_dup_s16(v155);
            v264 = v158;
            v265 = v158;
            v272 = v158;
            v273 = v158;
            v157 = 2;
          }

          else if (v67[2])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 128, v155, v156, *v152.i8, *v26.i8);
          }

          else
          {
            v157 = 0;
            v158.i64[0] = 0;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v161 = v155 + v157;
          v162 = v67[3];
          if (v162 == 63)
          {
            v164 = *v161;
            v26 = *(v161 + 16);
            v165 = *(v161 + 32);
            v166 = *(v161 + 48);
            v266 = *v161;
            v267 = v26;
            v274 = v165;
            v275 = v166;
            v163 = 64;
          }

          else if (v162 == 1)
          {
            v164 = vld1q_dup_s16(v161);
            v266 = v164;
            v267 = v164;
            v274 = v164;
            v275 = v164;
            v163 = 2;
          }

          else if (v67[3])
          {
            v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 128, v161, v162, *v158.i8, *v26.i8);
          }

          else
          {
            v163 = 0;
            v164.i64[0] = 0;
            v266 = 0u;
            v267 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v167 = v161 + v163;
          v168 = v67[4];
          if (v168 == 63)
          {
            v170 = *v167;
            v26 = *(v167 + 16);
            v171 = *(v167 + 32);
            v172 = *(v167 + 48);
            v252 = *v167;
            v253 = v26;
            v260 = v171;
            v261 = v172;
            v169 = 64;
          }

          else if (v168 == 1)
          {
            v170 = vld1q_dup_s16(v167);
            v252 = v170;
            v253 = v170;
            v260 = v170;
            v261 = v170;
            v169 = 2;
          }

          else if (v67[4])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 128, v167, v168, *v164.i8, *v26.i8);
          }

          else
          {
            v169 = 0;
            v170.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v173 = v167 + v169;
          v174 = v67[5];
          if (v174 == 63)
          {
            v176 = *v173;
            v26 = *(v173 + 16);
            v177 = *(v173 + 32);
            v178 = *(v173 + 48);
            v254 = *v173;
            v255 = v26;
            v262 = v177;
            v263 = v178;
            v175 = 64;
          }

          else if (v174 == 1)
          {
            v176 = vld1q_dup_s16(v173);
            v254 = v176;
            v255 = v176;
            v262 = v176;
            v263 = v176;
            v175 = 2;
          }

          else if (v67[5])
          {
            v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 128, v173, v174, *v170.i8, *v26.i8);
          }

          else
          {
            v175 = 0;
            v176.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v262 = 0u;
            v263 = 0u;
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
            v269 = v26;
            v276 = v183;
            v277 = v184;
            v181 = 64;
          }

          else if (v180 == 1)
          {
            v182 = vld1q_dup_s16(v179);
            v268 = v182;
            v269 = v182;
            v276 = v182;
            v277 = v182;
            v181 = 2;
          }

          else if (v67[6])
          {
            v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 128, v179, v180, *v176.i8, *v26.i8);
          }

          else
          {
            v181 = 0;
            v182.i64[0] = 0;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v185 = v179 + v181;
          v186 = v67[7];
          if (v186 == 63)
          {
            v27 = *v185;
            v26 = *(v185 + 16);
            v187 = *(v185 + 32);
            v188 = *(v185 + 48);
            v270 = *v185;
            v271 = v26;
            v278 = v187;
            v279 = v188;
            v15 = v235;
          }

          else
          {
            v15 = v235;
            if (v186 == 1)
            {
              v27 = vld1q_dup_s16(v185);
              v270 = v27;
              v271 = v27;
              v278 = v27;
              v279 = v27;
            }

            else if (v186)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 128, v185, v186, *v182.i8, *v26.i8);
            }

            else
            {
              v27.i64[0] = 0;
              v270 = 0u;
              v271 = 0u;
              v278 = 0u;
              v279 = 0u;
            }
          }

          v189 = v243;
          if (v243)
          {
            v190 = 0;
            v191 = &v248 + 8 * v241 + v242;
            v192 = v244;
            do
            {
              if (v192)
              {
                v193 = 0;
                v194 = v239->i64 + v240 * v190;
                do
                {
                  *(v194 + v193) = v191->i8[v193];
                  ++v193;
                  v192 = v244;
                }

                while (16 * v244 > v193);
                v189 = v243;
              }

              ++v190;
              v191 += 8;
            }

            while (v190 < v189);
          }

LABEL_30:
          v20 = v34 == v226 >> 3;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v217;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v280 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v233 = a8;
  v16 = a8 >> 2;
  v215 = a8 + a10 - 1;
  v217 = v215 >> 2;
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
  v228 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v217)
  {
    v226 = a7 + a9 - 1;
    if (a7 >> 3 <= v226 >> 3)
    {
      v24 = a11;
      v237 = (a5 - 1) >> 3;
      v212 = a5 - 1;
      v219 = (a5 - 1) & 7;
      v213 = (a6 - 1) & 3;
      v214 = (a6 - 1) >> 2;
      v218 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v224 = v27.i64[0];
      v225 = v27.i32[0] | v27.i32[1];
      v223 = v26.i64[0];
      v211 = 8 * v18 * v17;
      v235 = v15;
      do
      {
        v28 = (4 * v16) | 3;
        if (4 * v16 <= v233)
        {
          v29 = v233;
        }

        else
        {
          v29 = 4 * v16;
        }

        if (v215 < v28)
        {
          v28 = v215;
        }

        v232 = 4 * v16;
        v222 = v29 - 4 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v213;
        v221 = v31;
        v33 = v31 != 4;
        v34 = a7 >> 3;
        v35 = v213 + 1;
        if (v16 != v214)
        {
          v35 = 4;
        }

        v236 = v35;
        if (v16 != v214)
        {
          v32 = v33;
        }

        v220 = v32;
        v231 = a2 + (v29 - v233) * v24;
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

          if (v226 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v237)
          {
            v43 = v219 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v232 >= v233 && v38 >= v36)
          {
            v45 = v41 != v219;
            if (v34 != v237)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v220;
          }

          if (isLevelTiled)
          {
            v195 = 0;
            v196 = v211 >> (*(v15 + 57) != 0);
            v197 = 1;
            if (v196 <= 63)
            {
              if (v196 > 15)
              {
                if (v196 == 16)
                {
                  v197 = 0;
                  v198 = 64;
                  v195 = 128;
                }

                else
                {
                  v198 = 0;
                  if (v196 == 32)
                  {
                    v197 = 0;
                    v195 = 64;
                    v198 = 64;
                  }
                }
              }

              else if (v196 == 4)
              {
                v197 = 0;
                v198 = 128;
                v195 = 256;
              }

              else
              {
                v198 = 0;
                if (v196 == 8)
                {
                  v197 = 0;
                  v195 = 128;
                  v198 = 128;
                }
              }
            }

            else if (v196 <= 255)
            {
              if (v196 == 64)
              {
                v197 = 0;
                v198 = 32;
                v195 = 64;
              }

              else
              {
                v198 = 0;
                if (v196 == 128)
                {
                  v197 = 0;
                  v195 = 32;
                  v198 = 32;
                }
              }
            }

            else if (v196 == 256)
            {
              v197 = 0;
              v198 = 16;
              v195 = 32;
            }

            else if (v196 == 512)
            {
              v197 = 0;
              v195 = 16;
              v198 = 16;
            }

            else
            {
              v198 = 0;
              if (v196 == 1024)
              {
                v197 = 0;
                v198 = 8;
                v195 = 16;
              }
            }

            v199 = (v195 >> 3) - 1;
            v200 = (v198 >> 2) - 1;
            if ((v197 & 1) != 0 || (v201 = 32 - __clz(~(-1 << -__clz(v199))), v202 = 32 - __clz(~(-1 << -__clz(v200))), !(v202 | v201)))
            {
              v210 = 0;
            }

            else
            {
              v203 = 0;
              v204 = 0;
              v205 = v34 & v199;
              v206 = v16 & v200;
              v207 = v202 != 0;
              v208 = v201 != 0;
              v209 = 1;
              do
              {
                --v202;
                if (v207)
                {
                  v204 |= (v209 & v206) << v203++;
                }

                else
                {
                  v202 = 0;
                }

                --v201;
                if (v208)
                {
                  v204 |= (v209 & v205) << v203++;
                }

                else
                {
                  v201 = 0;
                }

                v209 *= 2;
                --v203;
                v208 = v201 != 0;
                v207 = v202 != 0;
              }

              while (v201 | v202);
              v210 = v204 << 9;
            }

            v53 = v210 + ((v38 / v195 + v232 / v198 * ((v195 + v212) / v195)) << 14);
          }

          else if (v225)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v223;
            v49 = BYTE4(v223);
            v51 = v224;
            v52 = HIDWORD(v224);
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v34) << v46++;
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

          v58 = v57 + 3;
          if (v58 < 8)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 2) - 1)));
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
          if (v228)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v66 = __dst;
          }

          v67 = (a4 + v65);
          v68 = (v231 + 16 * (v40 - v36));
          if (!(v44 & 1 | (v43 < 8u)) && v236 > 3)
          {
            v69 = *v67;
            if (v69 == 63)
            {
              v71 = *v66;
              v26 = v66[1];
              v77 = v66[2];
              v78 = v66[3];
              *v68 = *v66;
              v68[1] = v26;
              v24 = a11;
              v79 = (v68 + a11);
              *v79 = v77;
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
                v68[1] = v71;
                v76 = (v68 + a11);
                *v76 = v71;
                v76[1] = v71;
                v70 = 2;
              }

              else if (*v67)
              {
                v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v68, a11, v66, v69, *v27.i8, *v26.i8);
              }

              else
              {
                v70 = 0;
                v71.i64[0] = 0;
                *v68 = 0u;
                v68[1] = 0u;
                v72 = &v68->i8[a11];
                *v72 = 0u;
                *(v72 + 1) = 0u;
              }
            }

            v80 = v66->i64 + v70;
            v81 = v68 + 2;
            v82 = v67[1];
            if (v82 == 63)
            {
              v84 = *v80;
              v26 = *(v80 + 16);
              v87 = *(v80 + 32);
              v88 = *(v80 + 48);
              v68[2] = *v80;
              v68[3] = v26;
              v89 = &v81->i8[v24];
              *v89 = v87;
              *(v89 + 1) = v88;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v80);
              v68[2] = v84;
              v68[3] = v84;
              v86 = &v81->i8[v24];
              *v86 = v84;
              v86[1] = v84;
              v83 = 2;
            }

            else if (v67[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v81, v24, v80, v82, *v71.i8, *v26.i8);
            }

            else
            {
              v83 = 0;
              v84.i64[0] = 0;
              *v81 = 0u;
              v68[3] = 0u;
              v85 = &v81->i8[v24];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v90 = v80 + v83;
            v91 = (v68 + v218);
            v92 = v67[2];
            if (v92 == 63)
            {
              v94 = *v90;
              v26 = *(v90 + 16);
              v97 = *(v90 + 32);
              v98 = *(v90 + 48);
              *v91 = *v90;
              v91[1] = v26;
              v99 = &v91->i8[v24];
              *v99 = v97;
              *(v99 + 1) = v98;
              v93 = 64;
            }

            else if (v92 == 1)
            {
              v94 = vld1q_dup_s16(v90);
              *v91 = v94;
              v91[1] = v94;
              v96 = &v91->i8[v24];
              *v96 = v94;
              v96[1] = v94;
              v93 = 2;
            }

            else if (v67[2])
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v218), v24, v90, v92, *v84.i8, *v26.i8);
            }

            else
            {
              v93 = 0;
              v94.i64[0] = 0;
              *v91 = 0u;
              v91[1] = 0u;
              v95 = &v91->i8[v24];
              *v95 = 0u;
              *(v95 + 1) = 0u;
            }

            v100 = v90 + v93;
            v101 = v91 + 2;
            v102 = v67[3];
            if (v102 == 63)
            {
              v104 = *v100;
              v26 = *(v100 + 16);
              v107 = *(v100 + 32);
              v108 = *(v100 + 48);
              v91[2] = *v100;
              v91[3] = v26;
              v109 = &v101->i8[v24];
              *v109 = v107;
              *(v109 + 1) = v108;
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v100);
              v91[2] = v104;
              v91[3] = v104;
              v106 = &v101->i8[v24];
              *v106 = v104;
              v106[1] = v104;
              v103 = 2;
            }

            else if (v67[3])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v24, v100, v102, *v94.i8, *v26.i8);
            }

            else
            {
              v103 = 0;
              v104.i64[0] = 0;
              *v101 = 0u;
              v91[3] = 0u;
              v105 = &v101->i8[v24];
              *v105 = 0u;
              *(v105 + 1) = 0u;
            }

            v110 = v100 + v103;
            v111 = v68 + 4;
            v112 = v67[4];
            if (v112 == 63)
            {
              v114 = *v110;
              v26 = *(v110 + 16);
              v117 = *(v110 + 32);
              v118 = *(v110 + 48);
              v68[4] = *v110;
              v68[5] = v26;
              v119 = &v111->i8[v24];
              *v119 = v117;
              *(v119 + 1) = v118;
              v113 = 64;
            }

            else if (v112 == 1)
            {
              v114 = vld1q_dup_s16(v110);
              v68[4] = v114;
              v68[5] = v114;
              v116 = &v111->i8[v24];
              *v116 = v114;
              v116[1] = v114;
              v113 = 2;
            }

            else if (v67[4])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v111, v24, v110, v112, *v104.i8, *v26.i8);
            }

            else
            {
              v113 = 0;
              v114.i64[0] = 0;
              *v111 = 0u;
              v68[5] = 0u;
              v115 = &v111->i8[v24];
              *v115 = 0u;
              *(v115 + 1) = 0u;
            }

            v120 = v110 + v113;
            v121 = v68 + 6;
            v122 = v67[5];
            if (v122 == 63)
            {
              v124 = *v120;
              v26 = *(v120 + 16);
              v127 = *(v120 + 32);
              v128 = *(v120 + 48);
              v68[6] = *v120;
              v68[7] = v26;
              v129 = &v121->i8[v24];
              *v129 = v127;
              *(v129 + 1) = v128;
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v120);
              v68[6] = v124;
              v68[7] = v124;
              v126 = &v121->i8[v24];
              *v126 = v124;
              v126[1] = v124;
              v123 = 2;
            }

            else if (v67[5])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v24, v120, v122, *v114.i8, *v26.i8);
            }

            else
            {
              v123 = 0;
              v124.i64[0] = 0;
              *v121 = 0u;
              v68[7] = 0u;
              v125 = &v121->i8[v24];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v36 = a7;
            v130 = v120 + v123;
            v131 = v91 + 4;
            v132 = v67[6];
            if (v132 == 63)
            {
              v134 = *v130;
              v26 = *(v130 + 16);
              v137 = *(v130 + 32);
              v138 = *(v130 + 48);
              v91[4] = *v130;
              v91[5] = v26;
              v139 = &v131->i8[v24];
              *v139 = v137;
              *(v139 + 1) = v138;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v134 = vld1q_dup_s16(v130);
              v91[4] = v134;
              v91[5] = v134;
              v136 = &v131->i8[v24];
              *v136 = v134;
              v136[1] = v134;
              v133 = 2;
            }

            else if (v67[6])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v124.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v134.i64[0] = 0;
              *v131 = 0u;
              v91[5] = 0u;
              v135 = &v131->i8[v24];
              *v135 = 0u;
              *(v135 + 1) = 0u;
            }

            v140 = v130 + v133;
            v141 = v91 + 6;
            v142 = v67[7];
            if (v142 == 63)
            {
              v27 = *v140;
              v26 = *(v140 + 16);
              v144 = *(v140 + 32);
              v145 = *(v140 + 48);
              v91[6] = *v140;
              v91[7] = v26;
              v146 = &v141->i8[v24];
              *v146 = v144;
              *(v146 + 1) = v145;
              v15 = v235;
            }

            else
            {
              v15 = v235;
              if (v142 == 1)
              {
                v27 = vld1q_dup_s16(v140);
                v91[6] = v27;
                v91[7] = v27;
LABEL_138:
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
                  v91[7] = 0u;
                  goto LABEL_138;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v24, v140, v142, *v134.i8, *v26.i8);
              }
            }

LABEL_29:
            v37 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v235;
          block[5] = v66;
          v245 = v43;
          v246 = v236;
          v241 = v222;
          v242 = v40 - v38;
          block[6] = v67;
          v239 = v68;
          v24 = a11;
          v240 = a11;
          v243 = v221;
          v244 = v42;
          if (v44)
          {
            dispatch_sync(*(*(v235 + 8) + 16552), block);
            v36 = a7;
            v15 = v235;
            goto LABEL_29;
          }

          v73 = *v67;
          v36 = a7;
          if (v73 == 63)
          {
            v75 = *v66;
            v26 = v66[1];
            v147 = v66[2];
            v148 = v66[3];
            v248 = *v66;
            v249 = v26;
            v256 = v147;
            v257 = v148;
            v74 = 64;
          }

          else if (v73 == 1)
          {
            v75 = vld1q_dup_s16(v66->i16);
            v248 = v75;
            v249 = v75;
            v256 = v75;
            v257 = v75;
            v74 = 2;
          }

          else if (*v67)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v66, v73, *v27.i8, *v26.i8);
          }

          else
          {
            v74 = 0;
            v75.i64[0] = 0;
            v248 = 0u;
            v249 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v149 = v66->i64 + v74;
          v150 = v67[1];
          if (v150 == 63)
          {
            v152 = *v149;
            v26 = *(v149 + 16);
            v153 = *(v149 + 32);
            v154 = *(v149 + 48);
            v250 = *v149;
            v251 = v26;
            v258 = v153;
            v259 = v154;
            v151 = 64;
            v37 = v34 + 1;
          }

          else
          {
            v37 = v34 + 1;
            if (v150 == 1)
            {
              v152 = vld1q_dup_s16(v149);
              v250 = v152;
              v251 = v152;
              v258 = v152;
              v259 = v152;
              v151 = 2;
            }

            else if (v67[1])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v149, v150, *v75.i8, *v26.i8);
            }

            else
            {
              v151 = 0;
              v152.i64[0] = 0;
              v250 = 0u;
              v251 = 0u;
              v258 = 0u;
              v259 = 0u;
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
            v264 = *v155;
            v265 = v26;
            v272 = v159;
            v273 = v160;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v158 = vld1q_dup_s16(v155);
            v264 = v158;
            v265 = v158;
            v272 = v158;
            v273 = v158;
            v157 = 2;
          }

          else if (v67[2])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 128, v155, v156, *v152.i8, *v26.i8);
          }

          else
          {
            v157 = 0;
            v158.i64[0] = 0;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v161 = v155 + v157;
          v162 = v67[3];
          if (v162 == 63)
          {
            v164 = *v161;
            v26 = *(v161 + 16);
            v165 = *(v161 + 32);
            v166 = *(v161 + 48);
            v266 = *v161;
            v267 = v26;
            v274 = v165;
            v275 = v166;
            v163 = 64;
          }

          else if (v162 == 1)
          {
            v164 = vld1q_dup_s16(v161);
            v266 = v164;
            v267 = v164;
            v274 = v164;
            v275 = v164;
            v163 = 2;
          }

          else if (v67[3])
          {
            v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 128, v161, v162, *v158.i8, *v26.i8);
          }

          else
          {
            v163 = 0;
            v164.i64[0] = 0;
            v266 = 0u;
            v267 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v167 = v161 + v163;
          v168 = v67[4];
          if (v168 == 63)
          {
            v170 = *v167;
            v26 = *(v167 + 16);
            v171 = *(v167 + 32);
            v172 = *(v167 + 48);
            v252 = *v167;
            v253 = v26;
            v260 = v171;
            v261 = v172;
            v169 = 64;
          }

          else if (v168 == 1)
          {
            v170 = vld1q_dup_s16(v167);
            v252 = v170;
            v253 = v170;
            v260 = v170;
            v261 = v170;
            v169 = 2;
          }

          else if (v67[4])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 128, v167, v168, *v164.i8, *v26.i8);
          }

          else
          {
            v169 = 0;
            v170.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v173 = v167 + v169;
          v174 = v67[5];
          if (v174 == 63)
          {
            v176 = *v173;
            v26 = *(v173 + 16);
            v177 = *(v173 + 32);
            v178 = *(v173 + 48);
            v254 = *v173;
            v255 = v26;
            v262 = v177;
            v263 = v178;
            v175 = 64;
          }

          else if (v174 == 1)
          {
            v176 = vld1q_dup_s16(v173);
            v254 = v176;
            v255 = v176;
            v262 = v176;
            v263 = v176;
            v175 = 2;
          }

          else if (v67[5])
          {
            v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 128, v173, v174, *v170.i8, *v26.i8);
          }

          else
          {
            v175 = 0;
            v176.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v262 = 0u;
            v263 = 0u;
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
            v269 = v26;
            v276 = v183;
            v277 = v184;
            v181 = 64;
          }

          else if (v180 == 1)
          {
            v182 = vld1q_dup_s16(v179);
            v268 = v182;
            v269 = v182;
            v276 = v182;
            v277 = v182;
            v181 = 2;
          }

          else if (v67[6])
          {
            v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 128, v179, v180, *v176.i8, *v26.i8);
          }

          else
          {
            v181 = 0;
            v182.i64[0] = 0;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v185 = v179 + v181;
          v186 = v67[7];
          if (v186 == 63)
          {
            v27 = *v185;
            v26 = *(v185 + 16);
            v187 = *(v185 + 32);
            v188 = *(v185 + 48);
            v270 = *v185;
            v271 = v26;
            v278 = v187;
            v279 = v188;
            v15 = v235;
          }

          else
          {
            v15 = v235;
            if (v186 == 1)
            {
              v27 = vld1q_dup_s16(v185);
              v270 = v27;
              v271 = v27;
              v278 = v27;
              v279 = v27;
            }

            else if (v186)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 128, v185, v186, *v182.i8, *v26.i8);
            }

            else
            {
              v27.i64[0] = 0;
              v270 = 0u;
              v271 = 0u;
              v278 = 0u;
              v279 = 0u;
            }
          }

          v189 = v243;
          if (v243)
          {
            v190 = 0;
            v191 = &v248 + 8 * v241 + v242;
            v192 = v244;
            do
            {
              if (v192)
              {
                v193 = 0;
                v194 = v239->i64 + v240 * v190;
                do
                {
                  *(v194 + v193) = v191->i8[v193];
                  ++v193;
                  v192 = v244;
                }

                while (16 * v244 > v193);
                v189 = v243;
              }

              ++v190;
              v191 += 8;
            }

            while (v190 < v189);
          }

LABEL_30:
          v20 = v34 == v226 >> 3;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v217;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v458 = v15;
  v17 = v16;
  v19 = v18;
  v455 = v20;
  v456 = v21;
  v439 = v22;
  v23 = v12;
  v601 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v459 = v14;
  v441 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v440 = v441 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v454 = v31;
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
      v453 = 0;
LABEL_32:
      v450 = v33 - 3;
      v444 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v438 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v453 = v38 >= v32;
    goto LABEL_32;
  }

  v453 = 0;
  v438 = 0;
  v444 = 0;
  v450 = 0;
LABEL_33:
  if (v25 <= v440)
  {
    v452 = v458 + a9 - 1;
    if (v458 >> 3 <= v452 >> 3)
    {
      v40 = a11;
      v462 = v26 >> 3;
      v446 = v26 & 7;
      v451 = (v26 & 7) + 1;
      v436 = v27 & 3;
      v437 = v27 >> 2;
      v435 = ~(-1 << v444);
      v445 = 2 * a11;
      v41 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v42 = vcgt_u32(v41, 0xF00000007);
      v443 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v41, 0xFFFFFFFDFFFFFFFELL), -1))))))), v42);
      v442 = v42;
      v460 = v23;
      do
      {
        v43 = (4 * v25) | 3;
        if (4 * v25 <= v459)
        {
          v44 = v459;
        }

        else
        {
          v44 = 4 * v25;
        }

        if (v441 < v43)
        {
          v43 = v441;
        }

        v449 = v44 - 4 * v25;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v436;
        v448 = v46;
        v48 = v46 != 4;
        v49 = v458 >> 3;
        v50 = v436 + 1;
        if (v25 != v437)
        {
          v50 = 4;
        }

        v461 = v50;
        if (v25 != v437)
        {
          v47 = v48;
        }

        v447 = v47;
        v51 = v25 & v435;
        v457 = v439 + (v44 - v459) * v40;
        v52 = v458;
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

          if (v452 < v55)
          {
            v55 = v458 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v49 == v462)
          {
            v59 = v451;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (4 * v25 >= v459 && v54 >= v52)
          {
            v61 = v57 != v446;
            if (v49 != v462)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v447;
          }

          if (v453)
          {
            if (v450 | v444)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v444 != 0;
              v66 = v450 != 0;
              v67 = v444;
              v68 = v450;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v51 & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v49 & ~(-1 << v450) & v64) << v62++;
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

            v77 = v69 + *(v23 + 336) * ((v49 >> v450) + (v25 >> v444) * v438);
          }

          else if (v443)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v442.i8[0];
            v74 = v442.i8[4];
            v75 = v443.i32[0];
            v76 = v443.i32[1];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v25) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v49) << v70++;
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

          v82 = v81 + 3;
          if (v82 < 8)
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
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 2) - 1)));
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
          v90 = (v455 + v77);
          if (v454)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v456 + v89);
          v92 = (v457 + ((v56 - v52) << 6));
          if (!(v60 & 1 | (v59 < 8u)) && v461 > 3)
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
              v92[4] = v105;
              v92[5] = v106;
              v92[6] = v107;
              v92[7] = v108;
              *v117 = v109;
              v117[1] = v110;
              v117[2] = v111;
              v117[3] = v112;
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
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
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
            f64 = v92[8].f64;
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
              *f64 = *v119;
              v92[9] = v126;
              v92[10] = v127;
              v92[11] = v128;
              v141 = (f64 + v40);
              v92[12] = v129;
              v92[13] = v130;
              v92[14] = v131;
              v92[15] = v132;
              *v141 = v133;
              v141[1] = v134;
              v141[2] = v135;
              v141[3] = v136;
              v141 += 4;
              v122 = 256;
              *v141 = v137;
              v141[1] = v138;
              v141[2] = v139;
              v141[3] = v140;
            }

            else if (v121 == 7)
            {
              v124 = vld1q_dup_f64(v119);
              v92[8] = v124;
              v92[9] = v124;
              v92[10] = v124;
              v92[11] = v124;
              v92[12] = v124;
              v92[13] = v124;
              v92[14] = v124;
              v92[15] = v124;
              v125 = (f64 + v40);
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
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v40, v119, v121);
            }

            else
            {
              v122 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              v92[12] = 0u;
              v92[13] = 0u;
              v92[10] = 0u;
              v92[11] = 0u;
              *f64 = 0u;
              v92[9] = 0u;
              v123 = (f64 + v40);
              v123[6] = 0u;
              v123[7] = 0u;
              v123[4] = 0u;
              v123[5] = 0u;
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
            }

            v142 = v119 + v122;
            v143 = (v92 + v445);
            v144 = v91[2];
            if (v144 == 255)
            {
              v149 = *(v142 + 16);
              v150 = *(v142 + 32);
              v151 = *(v142 + 48);
              v152 = *(v142 + 64);
              v153 = *(v142 + 80);
              v154 = *(v142 + 96);
              v155 = *(v142 + 112);
              v156 = *(v142 + 128);
              v157 = *(v142 + 144);
              v158 = *(v142 + 160);
              v159 = *(v142 + 176);
              v160 = *(v142 + 192);
              v161 = *(v142 + 208);
              v162 = *(v142 + 224);
              v163 = *(v142 + 240);
              *v143 = *v142;
              v143[1] = v149;
              v143[2] = v150;
              v143[3] = v151;
              v164 = (v143->f64 + v40);
              v143[4] = v152;
              v143[5] = v153;
              v143[6] = v154;
              v143[7] = v155;
              *v164 = v156;
              v164[1] = v157;
              v164[2] = v158;
              v164[3] = v159;
              v165 = (v143[4].f64 + v40);
              v145 = 256;
              *v165 = v160;
              v165[1] = v161;
              v165[2] = v162;
              v165[3] = v163;
            }

            else if (v144 == 7)
            {
              v147 = vld1q_dup_f64(v142);
              *v143 = v147;
              v143[1] = v147;
              v143[2] = v147;
              v143[3] = v147;
              v143[4] = v147;
              v143[5] = v147;
              v143[6] = v147;
              v143[7] = v147;
              v148 = (v143 + v40);
              *v148 = v147;
              v148[1] = v147;
              v148[2] = v147;
              v148[3] = v147;
              v148[4] = v147;
              v148[5] = v147;
              v148[6] = v147;
              v148[7] = v147;
              v145 = 8;
            }

            else if (v91[2])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v445, v40, v142, v144);
            }

            else
            {
              v145 = 0;
              v143[6] = 0u;
              v143[7] = 0u;
              v143[4] = 0u;
              v143[5] = 0u;
              v143[2] = 0u;
              v143[3] = 0u;
              *v143 = 0u;
              v143[1] = 0u;
              v146 = (v143->f64 + v40);
              v146[6] = 0u;
              v146[7] = 0u;
              v146[4] = 0u;
              v146[5] = 0u;
              v146[2] = 0u;
              v146[3] = 0u;
              *v146 = 0u;
              v146[1] = 0u;
            }

            v166 = v142 + v145;
            v167 = v143[8].f64;
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
              v143[9] = v173;
              v143[10] = v174;
              v143[11] = v175;
              v188 = (v167 + v40);
              v143[12] = v176;
              v143[13] = v177;
              v143[14] = v178;
              v143[15] = v179;
              *v188 = v180;
              v188[1] = v181;
              v188[2] = v182;
              v188[3] = v183;
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
              v143[8] = v171;
              v143[9] = v171;
              v143[10] = v171;
              v143[11] = v171;
              v143[12] = v171;
              v143[13] = v171;
              v143[14] = v171;
              v143[15] = v171;
              v172 = (v167 + v40);
              *v172 = v171;
              v172[1] = v171;
              v172[2] = v171;
              v172[3] = v171;
              v172[4] = v171;
              v172[5] = v171;
              v172[6] = v171;
              v172[7] = v171;
              v169 = 8;
            }

            else if (v91[3])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v40, v166, v168);
            }

            else
            {
              v169 = 0;
              v143[14] = 0u;
              v143[15] = 0u;
              v143[12] = 0u;
              v143[13] = 0u;
              v143[10] = 0u;
              v143[11] = 0u;
              *v167 = 0u;
              v143[9] = 0u;
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
            v190 = v92[16].f64;
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
              v92[17] = v196;
              v92[18] = v197;
              v92[19] = v198;
              v211 = (v190 + v40);
              v92[20] = v199;
              v92[21] = v200;
              v92[22] = v201;
              v92[23] = v202;
              *v211 = v203;
              v211[1] = v204;
              v211[2] = v205;
              v211[3] = v206;
              v211 += 4;
              v192 = 256;
              *v211 = v207;
              v211[1] = v208;
              v211[2] = v209;
              v211[3] = v210;
            }

            else if (v191 == 7)
            {
              v194 = vld1q_dup_f64(v189);
              v92[16] = v194;
              v92[17] = v194;
              v92[18] = v194;
              v92[19] = v194;
              v92[20] = v194;
              v92[21] = v194;
              v92[22] = v194;
              v92[23] = v194;
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
              v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v190, v40, v189, v191);
            }

            else
            {
              v192 = 0;
              v92[22] = 0u;
              v92[23] = 0u;
              v92[20] = 0u;
              v92[21] = 0u;
              v92[18] = 0u;
              v92[19] = 0u;
              *v190 = 0u;
              v92[17] = 0u;
              v193 = (v190 + v40);
              v193[6] = 0u;
              v193[7] = 0u;
              v193[4] = 0u;
              v193[5] = 0u;
              v193[2] = 0u;
              v193[3] = 0u;
              *v193 = 0u;
              v193[1] = 0u;
            }

            v212 = v189 + v192;
            v213 = v92[24].f64;
            v214 = v91[5];
            if (v214 == 255)
            {
              v219 = *(v212 + 16);
              v220 = *(v212 + 32);
              v221 = *(v212 + 48);
              v222 = *(v212 + 64);
              v223 = *(v212 + 80);
              v224 = *(v212 + 96);
              v225 = *(v212 + 112);
              v226 = *(v212 + 128);
              v227 = *(v212 + 144);
              v228 = *(v212 + 160);
              v229 = *(v212 + 176);
              v230 = *(v212 + 192);
              v231 = *(v212 + 208);
              v232 = *(v212 + 224);
              v233 = *(v212 + 240);
              *v213 = *v212;
              v92[25] = v219;
              v92[26] = v220;
              v92[27] = v221;
              v234 = (v213 + v40);
              v92[28] = v222;
              v92[29] = v223;
              v92[30] = v224;
              v92[31] = v225;
              *v234 = v226;
              v234[1] = v227;
              v234[2] = v228;
              v234[3] = v229;
              v234 += 4;
              v215 = 256;
              *v234 = v230;
              v234[1] = v231;
              v234[2] = v232;
              v234[3] = v233;
            }

            else if (v214 == 7)
            {
              v217 = vld1q_dup_f64(v212);
              v92[24] = v217;
              v92[25] = v217;
              v92[26] = v217;
              v92[27] = v217;
              v92[28] = v217;
              v92[29] = v217;
              v92[30] = v217;
              v92[31] = v217;
              v218 = (v213 + v40);
              *v218 = v217;
              v218[1] = v217;
              v218[2] = v217;
              v218[3] = v217;
              v218[4] = v217;
              v218[5] = v217;
              v215 = 8;
              v218[6] = v217;
              v218[7] = v217;
            }

            else if (v91[5])
            {
              v215 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v213, v40, v212, v214);
            }

            else
            {
              v215 = 0;
              v92[30] = 0u;
              v92[31] = 0u;
              v92[28] = 0u;
              v92[29] = 0u;
              v92[26] = 0u;
              v92[27] = 0u;
              *v213 = 0u;
              v92[25] = 0u;
              v216 = (v213 + v40);
              v216[6] = 0u;
              v216[7] = 0u;
              v216[4] = 0u;
              v216[5] = 0u;
              v216[2] = 0u;
              v216[3] = 0u;
              *v216 = 0u;
              v216[1] = 0u;
            }

            v235 = v212 + v215;
            v236 = v143[16].f64;
            v237 = v91[6];
            if (v237 == 255)
            {
              v242 = *(v235 + 16);
              v243 = *(v235 + 32);
              v244 = *(v235 + 48);
              v245 = *(v235 + 64);
              v246 = *(v235 + 80);
              v247 = *(v235 + 96);
              v248 = *(v235 + 112);
              v249 = *(v235 + 128);
              v250 = *(v235 + 144);
              v251 = *(v235 + 160);
              v252 = *(v235 + 176);
              v253 = *(v235 + 192);
              v254 = *(v235 + 208);
              v255 = *(v235 + 224);
              v256 = *(v235 + 240);
              *v236 = *v235;
              v143[17] = v242;
              v143[18] = v243;
              v143[19] = v244;
              v257 = (v236 + v40);
              v143[20] = v245;
              v143[21] = v246;
              v143[22] = v247;
              v143[23] = v248;
              *v257 = v249;
              v257[1] = v250;
              v257[2] = v251;
              v257[3] = v252;
              v257 += 4;
              v238 = 256;
              *v257 = v253;
              v257[1] = v254;
              v257[2] = v255;
              v257[3] = v256;
            }

            else if (v237 == 7)
            {
              v240 = vld1q_dup_f64(v235);
              v143[16] = v240;
              v143[17] = v240;
              v143[18] = v240;
              v143[19] = v240;
              v143[20] = v240;
              v143[21] = v240;
              v143[22] = v240;
              v143[23] = v240;
              v241 = (v236 + v40);
              *v241 = v240;
              v241[1] = v240;
              v241[2] = v240;
              v241[3] = v240;
              v241[4] = v240;
              v241[5] = v240;
              v241[6] = v240;
              v241[7] = v240;
              v238 = 8;
            }

            else if (v91[6])
            {
              v238 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v236, v40, v212 + v215, v237);
            }

            else
            {
              v238 = 0;
              v143[22] = 0u;
              v143[23] = 0u;
              v143[20] = 0u;
              v143[21] = 0u;
              v143[18] = 0u;
              v143[19] = 0u;
              *v236 = 0u;
              v143[17] = 0u;
              v239 = (v236 + v40);
              v239[6] = 0u;
              v239[7] = 0u;
              v239[4] = 0u;
              v239[5] = 0u;
              v239[2] = 0u;
              v239[3] = 0u;
              *v239 = 0u;
              v239[1] = 0u;
            }

            v258 = v235 + v238;
            v259 = v143[24].f64;
            v260 = v91[7];
            if (v260 == 255)
            {
              v264 = *(v258 + 16);
              v265 = *(v258 + 32);
              v266 = *(v258 + 48);
              v267 = *(v258 + 64);
              v268 = *(v258 + 80);
              v269 = *(v258 + 96);
              v270 = *(v258 + 112);
              v271 = *(v258 + 128);
              v272 = *(v258 + 144);
              v273 = *(v258 + 160);
              v274 = *(v258 + 176);
              v275 = *(v258 + 192);
              v276 = *(v258 + 208);
              v277 = *(v258 + 224);
              v278 = *(v258 + 240);
              *v259 = *v258;
              v143[25] = v264;
              v143[26] = v265;
              v143[27] = v266;
              v279 = (v259 + v40);
              v143[28] = v267;
              v143[29] = v268;
              v143[30] = v269;
              v143[31] = v270;
              *v279 = v271;
              v279[1] = v272;
              v279[2] = v273;
              v279[3] = v274;
              v279 += 4;
              *v279 = v275;
              v279[1] = v276;
              v279[2] = v277;
              v279[3] = v278;
              v52 = v458;
              v23 = v460;
            }

            else
            {
              v52 = v458;
              v23 = v460;
              if (v260 == 7)
              {
                v262 = vld1q_dup_f64(v258);
                v143[24] = v262;
                v143[25] = v262;
                v143[26] = v262;
                v143[27] = v262;
                v143[28] = v262;
                v143[29] = v262;
                v143[30] = v262;
                v143[31] = v262;
                v263 = (v259 + v40);
                *v263 = v262;
                v263[1] = v262;
                v263[2] = v262;
                v263[3] = v262;
                v263[4] = v262;
                v263[5] = v262;
                v263[6] = v262;
                v263[7] = v262;
              }

              else if (v260)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v259, v40, v258, v260);
              }

              else
              {
                v143[30] = 0u;
                v143[31] = 0u;
                v143[28] = 0u;
                v143[29] = 0u;
                v143[26] = 0u;
                v143[27] = 0u;
                *v259 = 0u;
                v143[25] = 0u;
                v261 = (v259 + v40);
                v261[6] = 0u;
                v261[7] = 0u;
                v261[4] = 0u;
                v261[5] = 0u;
                v261[2] = 0u;
                v261[3] = 0u;
                *v261 = 0u;
                v261[1] = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v96 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v460;
          block[5] = v90;
          v470 = v59;
          v471 = v461;
          v466 = v449;
          v467 = v56 - v54;
          block[6] = v91;
          v464 = v92;
          v40 = a11;
          v465 = a11;
          v468 = v448;
          v469 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v460 + 8) + 16552), block);
            v52 = v458;
            v23 = v460;
LABEL_49:
            v51 = v25 & v435;
            v53 = v49 + 1;
            goto LABEL_50;
          }

          v97 = v96;
          v98 = *v91;
          if (v98 == 255)
          {
            v281 = v90[1];
            v282 = v90[2];
            v283 = v90[3];
            v284 = v90[4];
            v285 = v90[5];
            v286 = v90[6];
            v287 = v90[7];
            v288 = v90[8];
            v289 = v90[9];
            v290 = v90[10];
            v291 = v90[11];
            v292 = v90[12];
            v293 = v90[13];
            v294 = v90[14];
            v295 = v90[15];
            v473 = *v90;
            v474 = v281;
            v475 = v282;
            v476 = v283;
            v477 = v284;
            v478 = v285;
            v479 = v286;
            v480 = v287;
            v505 = v288;
            v506 = v289;
            v507 = v290;
            v508 = v291;
            v99 = 256;
            v509 = v292;
            v510 = v293;
            v511 = v294;
            v512 = v295;
          }

          else if (v98 == 7)
          {
            v280 = vld1q_dup_f64(v90->f64);
            v473 = v280;
            v474 = v280;
            v475 = v280;
            v476 = v280;
            v477 = v280;
            v478 = v280;
            v479 = v280;
            v480 = v280;
            v505 = v280;
            v506 = v280;
            v507 = v280;
            v508 = v280;
            v509 = v280;
            v510 = v280;
            v99 = 8;
            v511 = v280;
            v512 = v280;
          }

          else if (*v91)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v473, 512, v90, v98);
          }

          else
          {
            v99 = 0;
            v480 = 0u;
            v479 = 0u;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
            v474 = 0u;
            v473 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
            v508 = 0u;
            v509 = 0u;
            v510 = 0u;
            v511 = 0u;
            v512 = 0u;
          }

          v296 = v90 + v99;
          v297 = v91[1];
          if (v297 == 255)
          {
            v300 = *(v296 + 16);
            v301 = *(v296 + 32);
            v302 = *(v296 + 48);
            v303 = *(v296 + 64);
            v304 = *(v296 + 80);
            v305 = *(v296 + 96);
            v306 = *(v296 + 112);
            v307 = *(v296 + 128);
            v308 = *(v296 + 144);
            v309 = *(v296 + 160);
            v310 = *(v296 + 176);
            v311 = *(v296 + 192);
            v312 = *(v296 + 208);
            v313 = *(v296 + 224);
            v314 = *(v296 + 240);
            v481 = *v296;
            v482 = v300;
            v483 = v301;
            v484 = v302;
            v485 = v303;
            v486 = v304;
            v487 = v305;
            v488 = v306;
            v513 = v307;
            v514 = v308;
            v515 = v309;
            v516 = v310;
            v298 = 256;
            v517 = v311;
            v518 = v312;
            v519 = v313;
            v520 = v314;
          }

          else if (v297 == 7)
          {
            v299 = vld1q_dup_f64(v296);
            v481 = v299;
            v482 = v299;
            v483 = v299;
            v484 = v299;
            v485 = v299;
            v486 = v299;
            v487 = v299;
            v488 = v299;
            v513 = v299;
            v514 = v299;
            v515 = v299;
            v516 = v299;
            v517 = v299;
            v518 = v299;
            v298 = 8;
            v519 = v299;
            v520 = v299;
          }

          else if (v91[1])
          {
            v298 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v481, 512, v296, v297);
          }

          else
          {
            v298 = 0;
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v486 = 0u;
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v513 = 0u;
            v514 = 0u;
            v515 = 0u;
            v516 = 0u;
            v517 = 0u;
            v518 = 0u;
            v519 = 0u;
            v520 = 0u;
          }

          v315 = v296 + v298;
          v316 = v91[2];
          if (v316 == 255)
          {
            v319 = *(v315 + 16);
            v320 = *(v315 + 32);
            v321 = *(v315 + 48);
            v322 = *(v315 + 64);
            v323 = *(v315 + 80);
            v324 = *(v315 + 96);
            v325 = *(v315 + 112);
            v326 = *(v315 + 128);
            v327 = *(v315 + 144);
            v328 = *(v315 + 160);
            v329 = *(v315 + 176);
            v330 = *(v315 + 192);
            v331 = *(v315 + 208);
            v332 = *(v315 + 224);
            v333 = *(v315 + 240);
            v537 = *v315;
            v538 = v319;
            v539 = v320;
            v540 = v321;
            v541 = v322;
            v542 = v323;
            v543 = v324;
            v544 = v325;
            v569 = v326;
            v570 = v327;
            v571 = v328;
            v572 = v329;
            v317 = 256;
            v573 = v330;
            v574 = v331;
            v575 = v332;
            v576 = v333;
          }

          else if (v316 == 7)
          {
            v318 = vld1q_dup_f64(v315);
            v537 = v318;
            v538 = v318;
            v539 = v318;
            v540 = v318;
            v541 = v318;
            v542 = v318;
            v543 = v318;
            v544 = v318;
            v569 = v318;
            v570 = v318;
            v571 = v318;
            v572 = v318;
            v573 = v318;
            v574 = v318;
            v575 = v318;
            v317 = 8;
            v576 = v318;
          }

          else if (v91[2])
          {
            v317 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v537, 512, v315, v316);
          }

          else
          {
            v317 = 0;
            v543 = 0u;
            v544 = 0u;
            v541 = 0u;
            v542 = 0u;
            v539 = 0u;
            v540 = 0u;
            v537 = 0u;
            v538 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
          }

          v334 = v315 + v317;
          v335 = v91[3];
          if (v335 == 255)
          {
            v338 = *(v334 + 16);
            v339 = *(v334 + 32);
            v340 = *(v334 + 48);
            v341 = *(v334 + 64);
            v342 = *(v334 + 80);
            v343 = *(v334 + 96);
            v344 = *(v334 + 112);
            v345 = *(v334 + 128);
            v346 = *(v334 + 144);
            v347 = *(v334 + 160);
            v348 = *(v334 + 176);
            v349 = *(v334 + 192);
            v350 = *(v334 + 208);
            v351 = *(v334 + 224);
            v352 = *(v334 + 240);
            v545 = *v334;
            v546 = v338;
            v547 = v339;
            v548 = v340;
            v549 = v341;
            v550 = v342;
            v551 = v343;
            v552 = v344;
            v577 = v345;
            v578 = v346;
            v579 = v347;
            v580 = v348;
            v336 = 256;
            v581 = v349;
            v582 = v350;
            v583 = v351;
            v584 = v352;
          }

          else if (v335 == 7)
          {
            v337 = vld1q_dup_f64(v334);
            v545 = v337;
            v546 = v337;
            v547 = v337;
            v548 = v337;
            v549 = v337;
            v550 = v337;
            v551 = v337;
            v552 = v337;
            v577 = v337;
            v578 = v337;
            v579 = v337;
            v580 = v337;
            v581 = v337;
            v582 = v337;
            v583 = v337;
            v336 = 8;
            v584 = v337;
          }

          else if (v91[3])
          {
            v336 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v545, 512, v334, v335);
          }

          else
          {
            v336 = 0;
            v551 = 0u;
            v552 = 0u;
            v549 = 0u;
            v550 = 0u;
            v547 = 0u;
            v548 = 0u;
            v545 = 0u;
            v546 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
            v582 = 0u;
            v583 = 0u;
            v584 = 0u;
          }

          v353 = v334 + v336;
          v354 = v91[4];
          if (v354 == 255)
          {
            v357 = *(v353 + 16);
            v358 = *(v353 + 32);
            v359 = *(v353 + 48);
            v360 = *(v353 + 64);
            v361 = *(v353 + 80);
            v362 = *(v353 + 96);
            v363 = *(v353 + 112);
            v364 = *(v353 + 128);
            v365 = *(v353 + 144);
            v366 = *(v353 + 160);
            v367 = *(v353 + 176);
            v368 = *(v353 + 192);
            v369 = *(v353 + 208);
            v370 = *(v353 + 224);
            v371 = *(v353 + 240);
            v489 = *v353;
            v490 = v357;
            v491 = v358;
            v492 = v359;
            v493 = v360;
            v494 = v361;
            v495 = v362;
            v496 = v363;
            v521 = v364;
            v522 = v365;
            v523 = v366;
            v524 = v367;
            v355 = 256;
            v525 = v368;
            v526 = v369;
            v527 = v370;
            v528 = v371;
          }

          else if (v354 == 7)
          {
            v356 = vld1q_dup_f64(v353);
            v489 = v356;
            v490 = v356;
            v491 = v356;
            v492 = v356;
            v493 = v356;
            v494 = v356;
            v495 = v356;
            v496 = v356;
            v521 = v356;
            v522 = v356;
            v523 = v356;
            v524 = v356;
            v525 = v356;
            v526 = v356;
            v355 = 8;
            v527 = v356;
            v528 = v356;
          }

          else if (v91[4])
          {
            v355 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v489, 512, v353, v354);
          }

          else
          {
            v355 = 0;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v491 = 0u;
            v492 = 0u;
            v489 = 0u;
            v490 = 0u;
            v521 = 0u;
            v522 = 0u;
            v523 = 0u;
            v524 = 0u;
            v525 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
          }

          v372 = v353 + v355;
          v373 = v91[5];
          if (v373 == 255)
          {
            v376 = *(v372 + 16);
            v377 = *(v372 + 32);
            v378 = *(v372 + 48);
            v379 = *(v372 + 64);
            v380 = *(v372 + 80);
            v381 = *(v372 + 96);
            v382 = *(v372 + 112);
            v383 = *(v372 + 128);
            v384 = *(v372 + 144);
            v385 = *(v372 + 160);
            v386 = *(v372 + 176);
            v387 = *(v372 + 192);
            v388 = *(v372 + 208);
            v389 = *(v372 + 224);
            v390 = *(v372 + 240);
            v497 = *v372;
            v498 = v376;
            v499 = v377;
            v500 = v378;
            v501 = v379;
            v502 = v380;
            v503 = v381;
            v504 = v382;
            v529 = v383;
            v530 = v384;
            v531 = v385;
            v532 = v386;
            v374 = 256;
            v533 = v387;
            v534 = v388;
            v535 = v389;
            v536 = v390;
          }

          else if (v373 == 7)
          {
            v375 = vld1q_dup_f64(v372);
            v497 = v375;
            v498 = v375;
            v499 = v375;
            v500 = v375;
            v501 = v375;
            v502 = v375;
            v503 = v375;
            v504 = v375;
            v529 = v375;
            v530 = v375;
            v531 = v375;
            v532 = v375;
            v533 = v375;
            v534 = v375;
            v374 = 8;
            v535 = v375;
            v536 = v375;
          }

          else if (v91[5])
          {
            v374 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v497, 512, v372, v373);
          }

          else
          {
            v374 = 0;
            v503 = 0u;
            v504 = 0u;
            v501 = 0u;
            v502 = 0u;
            v499 = 0u;
            v500 = 0u;
            v497 = 0u;
            v498 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
            v532 = 0u;
            v533 = 0u;
            v534 = 0u;
            v535 = 0u;
            v536 = 0u;
          }

          v391 = v372 + v374;
          v392 = v91[6];
          if (v392 == 255)
          {
            v395 = *(v391 + 16);
            v396 = *(v391 + 32);
            v397 = *(v391 + 48);
            v398 = *(v391 + 64);
            v399 = *(v391 + 80);
            v400 = *(v391 + 96);
            v401 = *(v391 + 112);
            v402 = *(v391 + 128);
            v403 = *(v391 + 144);
            v404 = *(v391 + 160);
            v405 = *(v391 + 176);
            v406 = *(v391 + 192);
            v407 = *(v391 + 208);
            v408 = *(v391 + 224);
            v409 = *(v391 + 240);
            v553 = *v391;
            v554 = v395;
            v555 = v396;
            v556 = v397;
            v557 = v398;
            v558 = v399;
            v559 = v400;
            v560 = v401;
            v585 = v402;
            v586 = v403;
            v587 = v404;
            v588 = v405;
            v393 = 256;
            v589 = v406;
            v590 = v407;
            v591 = v408;
            v592 = v409;
          }

          else if (v392 == 7)
          {
            v394 = vld1q_dup_f64(v391);
            v553 = v394;
            v554 = v394;
            v555 = v394;
            v556 = v394;
            v557 = v394;
            v558 = v394;
            v559 = v394;
            v560 = v394;
            v585 = v394;
            v586 = v394;
            v587 = v394;
            v588 = v394;
            v589 = v394;
            v590 = v394;
            v591 = v394;
            v393 = 8;
            v592 = v394;
          }

          else if (v91[6])
          {
            v393 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v553, 512, v391, v392);
          }

          else
          {
            v393 = 0;
            v559 = 0u;
            v560 = 0u;
            v557 = 0u;
            v558 = 0u;
            v555 = 0u;
            v556 = 0u;
            v553 = 0u;
            v554 = 0u;
            v585 = 0u;
            v586 = 0u;
            v587 = 0u;
            v588 = 0u;
            v589 = 0u;
            v590 = 0u;
            v591 = 0u;
            v592 = 0u;
          }

          v410 = v391 + v393;
          v411 = v91[7];
          if (v411 == 255)
          {
            v415 = *(v410 + 16);
            v416 = *(v410 + 32);
            v417 = *(v410 + 48);
            v418 = *(v410 + 64);
            v419 = *(v410 + 80);
            v420 = *(v410 + 96);
            v421 = *(v410 + 112);
            v422 = *(v410 + 128);
            v423 = *(v410 + 144);
            v424 = *(v410 + 160);
            v425 = *(v410 + 176);
            v426 = *(v410 + 192);
            v427 = *(v410 + 208);
            v428 = *(v410 + 224);
            v429 = *(v410 + 240);
            v561 = *v410;
            v562 = v415;
            v563 = v416;
            v564 = v417;
            v565 = v418;
            v566 = v419;
            v567 = v420;
            v568 = v421;
            v593 = v422;
            v594 = v423;
            v595 = v424;
            v596 = v425;
            v412 = v448;
            v413 = v449;
            v597 = v426;
            v598 = v427;
            v599 = v428;
            v600 = v429;
            v52 = v458;
            v23 = v460;
          }

          else
          {
            v52 = v458;
            v23 = v460;
            if (v411 == 7)
            {
              v414 = vld1q_dup_f64(v410);
              v561 = v414;
              v562 = v414;
              v563 = v414;
              v564 = v414;
              v565 = v414;
              v566 = v414;
              v567 = v414;
              v568 = v414;
              v593 = v414;
              v594 = v414;
              v595 = v414;
              v596 = v414;
              v597 = v414;
              v598 = v414;
              v599 = v414;
              v412 = v448;
              v413 = v449;
              v600 = v414;
            }

            else if (v411)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v561, 512, v410, v411);
              v413 = v466;
              v97 = v467;
              v412 = v468;
            }

            else
            {
              v567 = 0u;
              v568 = 0u;
              v565 = 0u;
              v566 = 0u;
              v563 = 0u;
              v564 = 0u;
              v561 = 0u;
              v562 = 0u;
              v593 = 0u;
              v594 = 0u;
              v595 = 0u;
              v596 = 0u;
              v597 = 0u;
              v598 = 0u;
              v412 = v448;
              v413 = v449;
              v599 = 0u;
              v600 = 0u;
            }
          }

          v51 = v25 & v435;
          v53 = v49 + 1;
          if (v412)
          {
            v430 = 0;
            v431 = &v473.f64[64 * v413 + 8 * v97];
            v432 = v469;
            do
            {
              if (v432)
              {
                v433 = 0;
                v434 = v464 + v465 * v430;
                do
                {
                  v434[v433] = *(v431 + v433);
                  ++v433;
                  v432 = v469;
                }

                while (v469 << 6 > v433);
                v412 = v468;
              }

              ++v430;
              v431 += 32;
            }

            while (v430 < v412);
          }

LABEL_50:
          v28 = v49 == v452 >> 3;
          v49 = v53;
        }

        while (!v28);
        v28 = v25++ == v440;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v458 = v15;
  v17 = v16;
  v19 = v18;
  v455 = v20;
  v456 = v21;
  v439 = v22;
  v23 = v12;
  v601 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v459 = v14;
  v441 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v440 = v441 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v454 = v31;
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
      v453 = 0;
LABEL_32:
      v450 = v33 - 3;
      v444 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v438 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v453 = v38 >= v32;
    goto LABEL_32;
  }

  v453 = 0;
  v438 = 0;
  v444 = 0;
  v450 = 0;
LABEL_33:
  if (v25 <= v440)
  {
    v452 = v458 + a9 - 1;
    if (v458 >> 3 <= v452 >> 3)
    {
      v40 = a11;
      v462 = v26 >> 3;
      v446 = v26 & 7;
      v451 = (v26 & 7) + 1;
      v436 = v27 & 3;
      v437 = v27 >> 2;
      v435 = ~(-1 << v444);
      v445 = 2 * a11;
      v41 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v42 = vcgt_u32(v41, 0xF00000007);
      v443 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v41, 0xFFFFFFFDFFFFFFFELL), -1))))))), v42);
      v442 = v42;
      v460 = v23;
      do
      {
        v43 = (4 * v25) | 3;
        if (4 * v25 <= v459)
        {
          v44 = v459;
        }

        else
        {
          v44 = 4 * v25;
        }

        if (v441 < v43)
        {
          v43 = v441;
        }

        v449 = v44 - 4 * v25;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v436;
        v448 = v46;
        v48 = v46 != 4;
        v49 = v458 >> 3;
        v50 = v436 + 1;
        if (v25 != v437)
        {
          v50 = 4;
        }

        v461 = v50;
        if (v25 != v437)
        {
          v47 = v48;
        }

        v447 = v47;
        v51 = v25 & v435;
        v457 = v439 + (v44 - v459) * v40;
        v52 = v458;
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

          if (v452 < v55)
          {
            v55 = v458 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v49 == v462)
          {
            v59 = v451;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (4 * v25 >= v459 && v54 >= v52)
          {
            v61 = v57 != v446;
            if (v49 != v462)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v447;
          }

          if (v453)
          {
            if (v450 | v444)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v444 != 0;
              v66 = v450 != 0;
              v67 = v444;
              v68 = v450;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v51 & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v49 & ~(-1 << v450) & v64) << v62++;
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

            v77 = v69 + *(v23 + 336) * ((v49 >> v450) + (v25 >> v444) * v438);
          }

          else if (v443)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v442.i8[0];
            v74 = v442.i8[4];
            v75 = v443.i32[0];
            v76 = v443.i32[1];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v25) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v49) << v70++;
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

          v82 = v81 + 3;
          if (v82 < 8)
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
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 2) - 1)));
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
          v90 = (v455 + v77);
          if (v454)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v456 + v89);
          v92 = (v457 + ((v56 - v52) << 6));
          if (!(v60 & 1 | (v59 < 8u)) && v461 > 3)
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
              v92[4] = v105;
              v92[5] = v106;
              v92[6] = v107;
              v92[7] = v108;
              *v117 = v109;
              v117[1] = v110;
              v117[2] = v111;
              v117[3] = v112;
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
                v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
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
            f64 = v92[8].f64;
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
              *f64 = *v119;
              v92[9] = v126;
              v92[10] = v127;
              v92[11] = v128;
              v141 = (f64 + v40);
              v92[12] = v129;
              v92[13] = v130;
              v92[14] = v131;
              v92[15] = v132;
              *v141 = v133;
              v141[1] = v134;
              v141[2] = v135;
              v141[3] = v136;
              v141 += 4;
              v122 = 256;
              *v141 = v137;
              v141[1] = v138;
              v141[2] = v139;
              v141[3] = v140;
            }

            else if (v121 == 7)
            {
              v124 = vld1q_dup_f64(v119);
              v92[8] = v124;
              v92[9] = v124;
              v92[10] = v124;
              v92[11] = v124;
              v92[12] = v124;
              v92[13] = v124;
              v92[14] = v124;
              v92[15] = v124;
              v125 = (f64 + v40);
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
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v40, v119, v121);
            }

            else
            {
              v122 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              v92[12] = 0u;
              v92[13] = 0u;
              v92[10] = 0u;
              v92[11] = 0u;
              *f64 = 0u;
              v92[9] = 0u;
              v123 = (f64 + v40);
              v123[6] = 0u;
              v123[7] = 0u;
              v123[4] = 0u;
              v123[5] = 0u;
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
            }

            v142 = v119 + v122;
            v143 = (v92 + v445);
            v144 = v91[2];
            if (v144 == 255)
            {
              v149 = *(v142 + 16);
              v150 = *(v142 + 32);
              v151 = *(v142 + 48);
              v152 = *(v142 + 64);
              v153 = *(v142 + 80);
              v154 = *(v142 + 96);
              v155 = *(v142 + 112);
              v156 = *(v142 + 128);
              v157 = *(v142 + 144);
              v158 = *(v142 + 160);
              v159 = *(v142 + 176);
              v160 = *(v142 + 192);
              v161 = *(v142 + 208);
              v162 = *(v142 + 224);
              v163 = *(v142 + 240);
              *v143 = *v142;
              v143[1] = v149;
              v143[2] = v150;
              v143[3] = v151;
              v164 = (v143->f64 + v40);
              v143[4] = v152;
              v143[5] = v153;
              v143[6] = v154;
              v143[7] = v155;
              *v164 = v156;
              v164[1] = v157;
              v164[2] = v158;
              v164[3] = v159;
              v165 = (v143[4].f64 + v40);
              v145 = 256;
              *v165 = v160;
              v165[1] = v161;
              v165[2] = v162;
              v165[3] = v163;
            }

            else if (v144 == 7)
            {
              v147 = vld1q_dup_f64(v142);
              *v143 = v147;
              v143[1] = v147;
              v143[2] = v147;
              v143[3] = v147;
              v143[4] = v147;
              v143[5] = v147;
              v143[6] = v147;
              v143[7] = v147;
              v148 = (v143 + v40);
              *v148 = v147;
              v148[1] = v147;
              v148[2] = v147;
              v148[3] = v147;
              v148[4] = v147;
              v148[5] = v147;
              v148[6] = v147;
              v148[7] = v147;
              v145 = 8;
            }

            else if (v91[2])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v445, v40, v142, v144);
            }

            else
            {
              v145 = 0;
              v143[6] = 0u;
              v143[7] = 0u;
              v143[4] = 0u;
              v143[5] = 0u;
              v143[2] = 0u;
              v143[3] = 0u;
              *v143 = 0u;
              v143[1] = 0u;
              v146 = (v143->f64 + v40);
              v146[6] = 0u;
              v146[7] = 0u;
              v146[4] = 0u;
              v146[5] = 0u;
              v146[2] = 0u;
              v146[3] = 0u;
              *v146 = 0u;
              v146[1] = 0u;
            }

            v166 = v142 + v145;
            v167 = v143[8].f64;
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
              v143[9] = v173;
              v143[10] = v174;
              v143[11] = v175;
              v188 = (v167 + v40);
              v143[12] = v176;
              v143[13] = v177;
              v143[14] = v178;
              v143[15] = v179;
              *v188 = v180;
              v188[1] = v181;
              v188[2] = v182;
              v188[3] = v183;
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
              v143[8] = v171;
              v143[9] = v171;
              v143[10] = v171;
              v143[11] = v171;
              v143[12] = v171;
              v143[13] = v171;
              v143[14] = v171;
              v143[15] = v171;
              v172 = (v167 + v40);
              *v172 = v171;
              v172[1] = v171;
              v172[2] = v171;
              v172[3] = v171;
              v172[4] = v171;
              v172[5] = v171;
              v172[6] = v171;
              v172[7] = v171;
              v169 = 8;
            }

            else if (v91[3])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v40, v166, v168);
            }

            else
            {
              v169 = 0;
              v143[14] = 0u;
              v143[15] = 0u;
              v143[12] = 0u;
              v143[13] = 0u;
              v143[10] = 0u;
              v143[11] = 0u;
              *v167 = 0u;
              v143[9] = 0u;
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
            v190 = v92[16].f64;
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
              v92[17] = v196;
              v92[18] = v197;
              v92[19] = v198;
              v211 = (v190 + v40);
              v92[20] = v199;
              v92[21] = v200;
              v92[22] = v201;
              v92[23] = v202;
              *v211 = v203;
              v211[1] = v204;
              v211[2] = v205;
              v211[3] = v206;
              v211 += 4;
              v192 = 256;
              *v211 = v207;
              v211[1] = v208;
              v211[2] = v209;
              v211[3] = v210;
            }

            else if (v191 == 7)
            {
              v194 = vld1q_dup_f64(v189);
              v92[16] = v194;
              v92[17] = v194;
              v92[18] = v194;
              v92[19] = v194;
              v92[20] = v194;
              v92[21] = v194;
              v92[22] = v194;
              v92[23] = v194;
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
              v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v190, v40, v189, v191);
            }

            else
            {
              v192 = 0;
              v92[22] = 0u;
              v92[23] = 0u;
              v92[20] = 0u;
              v92[21] = 0u;
              v92[18] = 0u;
              v92[19] = 0u;
              *v190 = 0u;
              v92[17] = 0u;
              v193 = (v190 + v40);
              v193[6] = 0u;
              v193[7] = 0u;
              v193[4] = 0u;
              v193[5] = 0u;
              v193[2] = 0u;
              v193[3] = 0u;
              *v193 = 0u;
              v193[1] = 0u;
            }

            v212 = v189 + v192;
            v213 = v92[24].f64;
            v214 = v91[5];
            if (v214 == 255)
            {
              v219 = *(v212 + 16);
              v220 = *(v212 + 32);
              v221 = *(v212 + 48);
              v222 = *(v212 + 64);
              v223 = *(v212 + 80);
              v224 = *(v212 + 96);
              v225 = *(v212 + 112);
              v226 = *(v212 + 128);
              v227 = *(v212 + 144);
              v228 = *(v212 + 160);
              v229 = *(v212 + 176);
              v230 = *(v212 + 192);
              v231 = *(v212 + 208);
              v232 = *(v212 + 224);
              v233 = *(v212 + 240);
              *v213 = *v212;
              v92[25] = v219;
              v92[26] = v220;
              v92[27] = v221;
              v234 = (v213 + v40);
              v92[28] = v222;
              v92[29] = v223;
              v92[30] = v224;
              v92[31] = v225;
              *v234 = v226;
              v234[1] = v227;
              v234[2] = v228;
              v234[3] = v229;
              v234 += 4;
              v215 = 256;
              *v234 = v230;
              v234[1] = v231;
              v234[2] = v232;
              v234[3] = v233;
            }

            else if (v214 == 7)
            {
              v217 = vld1q_dup_f64(v212);
              v92[24] = v217;
              v92[25] = v217;
              v92[26] = v217;
              v92[27] = v217;
              v92[28] = v217;
              v92[29] = v217;
              v92[30] = v217;
              v92[31] = v217;
              v218 = (v213 + v40);
              *v218 = v217;
              v218[1] = v217;
              v218[2] = v217;
              v218[3] = v217;
              v218[4] = v217;
              v218[5] = v217;
              v215 = 8;
              v218[6] = v217;
              v218[7] = v217;
            }

            else if (v91[5])
            {
              v215 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v213, v40, v212, v214);
            }

            else
            {
              v215 = 0;
              v92[30] = 0u;
              v92[31] = 0u;
              v92[28] = 0u;
              v92[29] = 0u;
              v92[26] = 0u;
              v92[27] = 0u;
              *v213 = 0u;
              v92[25] = 0u;
              v216 = (v213 + v40);
              v216[6] = 0u;
              v216[7] = 0u;
              v216[4] = 0u;
              v216[5] = 0u;
              v216[2] = 0u;
              v216[3] = 0u;
              *v216 = 0u;
              v216[1] = 0u;
            }

            v235 = v212 + v215;
            v236 = v143[16].f64;
            v237 = v91[6];
            if (v237 == 255)
            {
              v242 = *(v235 + 16);
              v243 = *(v235 + 32);
              v244 = *(v235 + 48);
              v245 = *(v235 + 64);
              v246 = *(v235 + 80);
              v247 = *(v235 + 96);
              v248 = *(v235 + 112);
              v249 = *(v235 + 128);
              v250 = *(v235 + 144);
              v251 = *(v235 + 160);
              v252 = *(v235 + 176);
              v253 = *(v235 + 192);
              v254 = *(v235 + 208);
              v255 = *(v235 + 224);
              v256 = *(v235 + 240);
              *v236 = *v235;
              v143[17] = v242;
              v143[18] = v243;
              v143[19] = v244;
              v257 = (v236 + v40);
              v143[20] = v245;
              v143[21] = v246;
              v143[22] = v247;
              v143[23] = v248;
              *v257 = v249;
              v257[1] = v250;
              v257[2] = v251;
              v257[3] = v252;
              v257 += 4;
              v238 = 256;
              *v257 = v253;
              v257[1] = v254;
              v257[2] = v255;
              v257[3] = v256;
            }

            else if (v237 == 7)
            {
              v240 = vld1q_dup_f64(v235);
              v143[16] = v240;
              v143[17] = v240;
              v143[18] = v240;
              v143[19] = v240;
              v143[20] = v240;
              v143[21] = v240;
              v143[22] = v240;
              v143[23] = v240;
              v241 = (v236 + v40);
              *v241 = v240;
              v241[1] = v240;
              v241[2] = v240;
              v241[3] = v240;
              v241[4] = v240;
              v241[5] = v240;
              v241[6] = v240;
              v241[7] = v240;
              v238 = 8;
            }

            else if (v91[6])
            {
              v238 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v236, v40, v212 + v215, v237);
            }

            else
            {
              v238 = 0;
              v143[22] = 0u;
              v143[23] = 0u;
              v143[20] = 0u;
              v143[21] = 0u;
              v143[18] = 0u;
              v143[19] = 0u;
              *v236 = 0u;
              v143[17] = 0u;
              v239 = (v236 + v40);
              v239[6] = 0u;
              v239[7] = 0u;
              v239[4] = 0u;
              v239[5] = 0u;
              v239[2] = 0u;
              v239[3] = 0u;
              *v239 = 0u;
              v239[1] = 0u;
            }

            v258 = v235 + v238;
            v259 = v143[24].f64;
            v260 = v91[7];
            if (v260 == 255)
            {
              v264 = *(v258 + 16);
              v265 = *(v258 + 32);
              v266 = *(v258 + 48);
              v267 = *(v258 + 64);
              v268 = *(v258 + 80);
              v269 = *(v258 + 96);
              v270 = *(v258 + 112);
              v271 = *(v258 + 128);
              v272 = *(v258 + 144);
              v273 = *(v258 + 160);
              v274 = *(v258 + 176);
              v275 = *(v258 + 192);
              v276 = *(v258 + 208);
              v277 = *(v258 + 224);
              v278 = *(v258 + 240);
              *v259 = *v258;
              v143[25] = v264;
              v143[26] = v265;
              v143[27] = v266;
              v279 = (v259 + v40);
              v143[28] = v267;
              v143[29] = v268;
              v143[30] = v269;
              v143[31] = v270;
              *v279 = v271;
              v279[1] = v272;
              v279[2] = v273;
              v279[3] = v274;
              v279 += 4;
              *v279 = v275;
              v279[1] = v276;
              v279[2] = v277;
              v279[3] = v278;
              v52 = v458;
              v23 = v460;
            }

            else
            {
              v52 = v458;
              v23 = v460;
              if (v260 == 7)
              {
                v262 = vld1q_dup_f64(v258);
                v143[24] = v262;
                v143[25] = v262;
                v143[26] = v262;
                v143[27] = v262;
                v143[28] = v262;
                v143[29] = v262;
                v143[30] = v262;
                v143[31] = v262;
                v263 = (v259 + v40);
                *v263 = v262;
                v263[1] = v262;
                v263[2] = v262;
                v263[3] = v262;
                v263[4] = v262;
                v263[5] = v262;
                v263[6] = v262;
                v263[7] = v262;
              }

              else if (v260)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v259, v40, v258, v260);
              }

              else
              {
                v143[30] = 0u;
                v143[31] = 0u;
                v143[28] = 0u;
                v143[29] = 0u;
                v143[26] = 0u;
                v143[27] = 0u;
                *v259 = 0u;
                v143[25] = 0u;
                v261 = (v259 + v40);
                v261[6] = 0u;
                v261[7] = 0u;
                v261[4] = 0u;
                v261[5] = 0u;
                v261[2] = 0u;
                v261[3] = 0u;
                *v261 = 0u;
                v261[1] = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v96 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v460;
          block[5] = v90;
          v470 = v59;
          v471 = v461;
          v466 = v449;
          v467 = v56 - v54;
          block[6] = v91;
          v464 = v92;
          v40 = a11;
          v465 = a11;
          v468 = v448;
          v469 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v460 + 8) + 16552), block);
            v52 = v458;
            v23 = v460;
LABEL_49:
            v51 = v25 & v435;
            v53 = v49 + 1;
            goto LABEL_50;
          }

          v97 = v96;
          v98 = *v91;
          if (v98 == 255)
          {
            v281 = v90[1];
            v282 = v90[2];
            v283 = v90[3];
            v284 = v90[4];
            v285 = v90[5];
            v286 = v90[6];
            v287 = v90[7];
            v288 = v90[8];
            v289 = v90[9];
            v290 = v90[10];
            v291 = v90[11];
            v292 = v90[12];
            v293 = v90[13];
            v294 = v90[14];
            v295 = v90[15];
            v473 = *v90;
            v474 = v281;
            v475 = v282;
            v476 = v283;
            v477 = v284;
            v478 = v285;
            v479 = v286;
            v480 = v287;
            v505 = v288;
            v506 = v289;
            v507 = v290;
            v508 = v291;
            v99 = 256;
            v509 = v292;
            v510 = v293;
            v511 = v294;
            v512 = v295;
          }

          else if (v98 == 7)
          {
            v280 = vld1q_dup_f64(v90->f64);
            v473 = v280;
            v474 = v280;
            v475 = v280;
            v476 = v280;
            v477 = v280;
            v478 = v280;
            v479 = v280;
            v480 = v280;
            v505 = v280;
            v506 = v280;
            v507 = v280;
            v508 = v280;
            v509 = v280;
            v510 = v280;
            v99 = 8;
            v511 = v280;
            v512 = v280;
          }

          else if (*v91)
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v473, 512, v90, v98);
          }

          else
          {
            v99 = 0;
            v480 = 0u;
            v479 = 0u;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
            v474 = 0u;
            v473 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
            v508 = 0u;
            v509 = 0u;
            v510 = 0u;
            v511 = 0u;
            v512 = 0u;
          }

          v296 = v90 + v99;
          v297 = v91[1];
          if (v297 == 255)
          {
            v300 = *(v296 + 16);
            v301 = *(v296 + 32);
            v302 = *(v296 + 48);
            v303 = *(v296 + 64);
            v304 = *(v296 + 80);
            v305 = *(v296 + 96);
            v306 = *(v296 + 112);
            v307 = *(v296 + 128);
            v308 = *(v296 + 144);
            v309 = *(v296 + 160);
            v310 = *(v296 + 176);
            v311 = *(v296 + 192);
            v312 = *(v296 + 208);
            v313 = *(v296 + 224);
            v314 = *(v296 + 240);
            v481 = *v296;
            v482 = v300;
            v483 = v301;
            v484 = v302;
            v485 = v303;
            v486 = v304;
            v487 = v305;
            v488 = v306;
            v513 = v307;
            v514 = v308;
            v515 = v309;
            v516 = v310;
            v298 = 256;
            v517 = v311;
            v518 = v312;
            v519 = v313;
            v520 = v314;
          }

          else if (v297 == 7)
          {
            v299 = vld1q_dup_f64(v296);
            v481 = v299;
            v482 = v299;
            v483 = v299;
            v484 = v299;
            v485 = v299;
            v486 = v299;
            v487 = v299;
            v488 = v299;
            v513 = v299;
            v514 = v299;
            v515 = v299;
            v516 = v299;
            v517 = v299;
            v518 = v299;
            v298 = 8;
            v519 = v299;
            v520 = v299;
          }

          else if (v91[1])
          {
            v298 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v481, 512, v296, v297);
          }

          else
          {
            v298 = 0;
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v486 = 0u;
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v513 = 0u;
            v514 = 0u;
            v515 = 0u;
            v516 = 0u;
            v517 = 0u;
            v518 = 0u;
            v519 = 0u;
            v520 = 0u;
          }

          v315 = v296 + v298;
          v316 = v91[2];
          if (v316 == 255)
          {
            v319 = *(v315 + 16);
            v320 = *(v315 + 32);
            v321 = *(v315 + 48);
            v322 = *(v315 + 64);
            v323 = *(v315 + 80);
            v324 = *(v315 + 96);
            v325 = *(v315 + 112);
            v326 = *(v315 + 128);
            v327 = *(v315 + 144);
            v328 = *(v315 + 160);
            v329 = *(v315 + 176);
            v330 = *(v315 + 192);
            v331 = *(v315 + 208);
            v332 = *(v315 + 224);
            v333 = *(v315 + 240);
            v537 = *v315;
            v538 = v319;
            v539 = v320;
            v540 = v321;
            v541 = v322;
            v542 = v323;
            v543 = v324;
            v544 = v325;
            v569 = v326;
            v570 = v327;
            v571 = v328;
            v572 = v329;
            v317 = 256;
            v573 = v330;
            v574 = v331;
            v575 = v332;
            v576 = v333;
          }

          else if (v316 == 7)
          {
            v318 = vld1q_dup_f64(v315);
            v537 = v318;
            v538 = v318;
            v539 = v318;
            v540 = v318;
            v541 = v318;
            v542 = v318;
            v543 = v318;
            v544 = v318;
            v569 = v318;
            v570 = v318;
            v571 = v318;
            v572 = v318;
            v573 = v318;
            v574 = v318;
            v575 = v318;
            v317 = 8;
            v576 = v318;
          }

          else if (v91[2])
          {
            v317 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v537, 512, v315, v316);
          }

          else
          {
            v317 = 0;
            v543 = 0u;
            v544 = 0u;
            v541 = 0u;
            v542 = 0u;
            v539 = 0u;
            v540 = 0u;
            v537 = 0u;
            v538 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
          }

          v334 = v315 + v317;
          v335 = v91[3];
          if (v335 == 255)
          {
            v338 = *(v334 + 16);
            v339 = *(v334 + 32);
            v340 = *(v334 + 48);
            v341 = *(v334 + 64);
            v342 = *(v334 + 80);
            v343 = *(v334 + 96);
            v344 = *(v334 + 112);
            v345 = *(v334 + 128);
            v346 = *(v334 + 144);
            v347 = *(v334 + 160);
            v348 = *(v334 + 176);
            v349 = *(v334 + 192);
            v350 = *(v334 + 208);
            v351 = *(v334 + 224);
            v352 = *(v334 + 240);
            v545 = *v334;
            v546 = v338;
            v547 = v339;
            v548 = v340;
            v549 = v341;
            v550 = v342;
            v551 = v343;
            v552 = v344;
            v577 = v345;
            v578 = v346;
            v579 = v347;
            v580 = v348;
            v336 = 256;
            v581 = v349;
            v582 = v350;
            v583 = v351;
            v584 = v352;
          }

          else if (v335 == 7)
          {
            v337 = vld1q_dup_f64(v334);
            v545 = v337;
            v546 = v337;
            v547 = v337;
            v548 = v337;
            v549 = v337;
            v550 = v337;
            v551 = v337;
            v552 = v337;
            v577 = v337;
            v578 = v337;
            v579 = v337;
            v580 = v337;
            v581 = v337;
            v582 = v337;
            v583 = v337;
            v336 = 8;
            v584 = v337;
          }

          else if (v91[3])
          {
            v336 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v545, 512, v334, v335);
          }

          else
          {
            v336 = 0;
            v551 = 0u;
            v552 = 0u;
            v549 = 0u;
            v550 = 0u;
            v547 = 0u;
            v548 = 0u;
            v545 = 0u;
            v546 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
            v582 = 0u;
            v583 = 0u;
            v584 = 0u;
          }

          v353 = v334 + v336;
          v354 = v91[4];
          if (v354 == 255)
          {
            v357 = *(v353 + 16);
            v358 = *(v353 + 32);
            v359 = *(v353 + 48);
            v360 = *(v353 + 64);
            v361 = *(v353 + 80);
            v362 = *(v353 + 96);
            v363 = *(v353 + 112);
            v364 = *(v353 + 128);
            v365 = *(v353 + 144);
            v366 = *(v353 + 160);
            v367 = *(v353 + 176);
            v368 = *(v353 + 192);
            v369 = *(v353 + 208);
            v370 = *(v353 + 224);
            v371 = *(v353 + 240);
            v489 = *v353;
            v490 = v357;
            v491 = v358;
            v492 = v359;
            v493 = v360;
            v494 = v361;
            v495 = v362;
            v496 = v363;
            v521 = v364;
            v522 = v365;
            v523 = v366;
            v524 = v367;
            v355 = 256;
            v525 = v368;
            v526 = v369;
            v527 = v370;
            v528 = v371;
          }

          else if (v354 == 7)
          {
            v356 = vld1q_dup_f64(v353);
            v489 = v356;
            v490 = v356;
            v491 = v356;
            v492 = v356;
            v493 = v356;
            v494 = v356;
            v495 = v356;
            v496 = v356;
            v521 = v356;
            v522 = v356;
            v523 = v356;
            v524 = v356;
            v525 = v356;
            v526 = v356;
            v355 = 8;
            v527 = v356;
            v528 = v356;
          }

          else if (v91[4])
          {
            v355 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v489, 512, v353, v354);
          }

          else
          {
            v355 = 0;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v491 = 0u;
            v492 = 0u;
            v489 = 0u;
            v490 = 0u;
            v521 = 0u;
            v522 = 0u;
            v523 = 0u;
            v524 = 0u;
            v525 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
          }

          v372 = v353 + v355;
          v373 = v91[5];
          if (v373 == 255)
          {
            v376 = *(v372 + 16);
            v377 = *(v372 + 32);
            v378 = *(v372 + 48);
            v379 = *(v372 + 64);
            v380 = *(v372 + 80);
            v381 = *(v372 + 96);
            v382 = *(v372 + 112);
            v383 = *(v372 + 128);
            v384 = *(v372 + 144);
            v385 = *(v372 + 160);
            v386 = *(v372 + 176);
            v387 = *(v372 + 192);
            v388 = *(v372 + 208);
            v389 = *(v372 + 224);
            v390 = *(v372 + 240);
            v497 = *v372;
            v498 = v376;
            v499 = v377;
            v500 = v378;
            v501 = v379;
            v502 = v380;
            v503 = v381;
            v504 = v382;
            v529 = v383;
            v530 = v384;
            v531 = v385;
            v532 = v386;
            v374 = 256;
            v533 = v387;
            v534 = v388;
            v535 = v389;
            v536 = v390;
          }

          else if (v373 == 7)
          {
            v375 = vld1q_dup_f64(v372);
            v497 = v375;
            v498 = v375;
            v499 = v375;
            v500 = v375;
            v501 = v375;
            v502 = v375;
            v503 = v375;
            v504 = v375;
            v529 = v375;
            v530 = v375;
            v531 = v375;
            v532 = v375;
            v533 = v375;
            v534 = v375;
            v374 = 8;
            v535 = v375;
            v536 = v375;
          }

          else if (v91[5])
          {
            v374 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v497, 512, v372, v373);
          }

          else
          {
            v374 = 0;
            v503 = 0u;
            v504 = 0u;
            v501 = 0u;
            v502 = 0u;
            v499 = 0u;
            v500 = 0u;
            v497 = 0u;
            v498 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
            v532 = 0u;
            v533 = 0u;
            v534 = 0u;
            v535 = 0u;
            v536 = 0u;
          }

          v391 = v372 + v374;
          v392 = v91[6];
          if (v392 == 255)
          {
            v395 = *(v391 + 16);
            v396 = *(v391 + 32);
            v397 = *(v391 + 48);
            v398 = *(v391 + 64);
            v399 = *(v391 + 80);
            v400 = *(v391 + 96);
            v401 = *(v391 + 112);
            v402 = *(v391 + 128);
            v403 = *(v391 + 144);
            v404 = *(v391 + 160);
            v405 = *(v391 + 176);
            v406 = *(v391 + 192);
            v407 = *(v391 + 208);
            v408 = *(v391 + 224);
            v409 = *(v391 + 240);
            v553 = *v391;
            v554 = v395;
            v555 = v396;
            v556 = v397;
            v557 = v398;
            v558 = v399;
            v559 = v400;
            v560 = v401;
            v585 = v402;
            v586 = v403;
            v587 = v404;
            v588 = v405;
            v393 = 256;
            v589 = v406;
            v590 = v407;
            v591 = v408;
            v592 = v409;
          }

          else if (v392 == 7)
          {
            v394 = vld1q_dup_f64(v391);
            v553 = v394;
            v554 = v394;
            v555 = v394;
            v556 = v394;
            v557 = v394;
            v558 = v394;
            v559 = v394;
            v560 = v394;
            v585 = v394;
            v586 = v394;
            v587 = v394;
            v588 = v394;
            v589 = v394;
            v590 = v394;
            v591 = v394;
            v393 = 8;
            v592 = v394;
          }

          else if (v91[6])
          {
            v393 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v553, 512, v391, v392);
          }

          else
          {
            v393 = 0;
            v559 = 0u;
            v560 = 0u;
            v557 = 0u;
            v558 = 0u;
            v555 = 0u;
            v556 = 0u;
            v553 = 0u;
            v554 = 0u;
            v585 = 0u;
            v586 = 0u;
            v587 = 0u;
            v588 = 0u;
            v589 = 0u;
            v590 = 0u;
            v591 = 0u;
            v592 = 0u;
          }

          v410 = v391 + v393;
          v411 = v91[7];
          if (v411 == 255)
          {
            v415 = *(v410 + 16);
            v416 = *(v410 + 32);
            v417 = *(v410 + 48);
            v418 = *(v410 + 64);
            v419 = *(v410 + 80);
            v420 = *(v410 + 96);
            v421 = *(v410 + 112);
            v422 = *(v410 + 128);
            v423 = *(v410 + 144);
            v424 = *(v410 + 160);
            v425 = *(v410 + 176);
            v426 = *(v410 + 192);
            v427 = *(v410 + 208);
            v428 = *(v410 + 224);
            v429 = *(v410 + 240);
            v561 = *v410;
            v562 = v415;
            v563 = v416;
            v564 = v417;
            v565 = v418;
            v566 = v419;
            v567 = v420;
            v568 = v421;
            v593 = v422;
            v594 = v423;
            v595 = v424;
            v596 = v425;
            v412 = v448;
            v413 = v449;
            v597 = v426;
            v598 = v427;
            v599 = v428;
            v600 = v429;
            v52 = v458;
            v23 = v460;
          }

          else
          {
            v52 = v458;
            v23 = v460;
            if (v411 == 7)
            {
              v414 = vld1q_dup_f64(v410);
              v561 = v414;
              v562 = v414;
              v563 = v414;
              v564 = v414;
              v565 = v414;
              v566 = v414;
              v567 = v414;
              v568 = v414;
              v593 = v414;
              v594 = v414;
              v595 = v414;
              v596 = v414;
              v597 = v414;
              v598 = v414;
              v599 = v414;
              v412 = v448;
              v413 = v449;
              v600 = v414;
            }

            else if (v411)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v561, 512, v410, v411);
              v413 = v466;
              v97 = v467;
              v412 = v468;
            }

            else
            {
              v567 = 0u;
              v568 = 0u;
              v565 = 0u;
              v566 = 0u;
              v563 = 0u;
              v564 = 0u;
              v561 = 0u;
              v562 = 0u;
              v593 = 0u;
              v594 = 0u;
              v595 = 0u;
              v596 = 0u;
              v597 = 0u;
              v598 = 0u;
              v412 = v448;
              v413 = v449;
              v599 = 0u;
              v600 = 0u;
            }
          }

          v51 = v25 & v435;
          v53 = v49 + 1;
          if (v412)
          {
            v430 = 0;
            v431 = &v473.f64[64 * v413 + 8 * v97];
            v432 = v469;
            do
            {
              if (v432)
              {
                v433 = 0;
                v434 = v464 + v465 * v430;
                do
                {
                  v434[v433] = *(v431 + v433);
                  ++v433;
                  v432 = v469;
                }

                while (v469 << 6 > v433);
                v412 = v468;
              }

              ++v430;
              v431 += 32;
            }

            while (v430 < v412);
          }

LABEL_50:
          v28 = v49 == v452 >> 3;
          v49 = v53;
        }

        while (!v28);
        v28 = v25++ == v440;
      }

      while (!v28);
    }
  }
}