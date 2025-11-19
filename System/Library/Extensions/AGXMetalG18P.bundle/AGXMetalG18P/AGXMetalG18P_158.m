void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v138 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v117 = v22;
  v23 = v12;
  v160 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v119 = v14 + a10 - 1;
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
  v118 = v119 >> 3;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v134 = v31;
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
      v133 = 0;
LABEL_32:
      v129 = v33 - 3;
      v122 = v32 - 3;
      v39 = -1 << *(*(v23 + 208) + 48);
      v116 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v133 = v38 >= v32;
    goto LABEL_32;
  }

  v133 = 0;
  v116 = 0;
  v122 = 0;
  v129 = 0;
LABEL_33:
  if (v25 <= v118)
  {
    v132 = v138 + a9 - 1;
    if (v138 >> 3 <= v132 >> 3)
    {
      v141 = v26 >> 3;
      v125 = v26 & 7;
      v130 = (v26 & 7) + 1;
      v114 = v27 & 7;
      v115 = v27 >> 3;
      v123 = 4 * a11;
      v124 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v41 = vcgt_u32(v40, 0xF0000000FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 3uLL))))))), v41);
      v120 = v41;
      v131 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v139)
        {
          v43 = v139;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v119 < v42)
        {
          v42 = v119;
        }

        v128 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v114;
        v127 = v45;
        v47 = v45 != 8;
        v48 = v138 >> 3;
        v49 = v114 + 1;
        if (v25 != v115)
        {
          v49 = 8;
        }

        v140 = v49;
        if (v25 != v115)
        {
          v46 = v47;
        }

        v126 = v46;
        v137 = v117 + (v43 - v139) * a11;
        v50 = v138;
        do
        {
          v61 = 8 * v48;
          v62 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v63 = v50;
          }

          else
          {
            v63 = 8 * v48;
          }

          if (v132 < v62)
          {
            v62 = v138 + a9 - 1;
          }

          v64 = v62 - v63;
          v65 = v64 + 1;
          if (v48 == v141)
          {
            v66 = v130;
          }

          else
          {
            v66 = 8;
          }

          v67 = 1;
          if (8 * v25 >= v139 && v61 >= v50)
          {
            v68 = v64 != v125;
            if (v48 != v141)
            {
              v68 = v65 != 8;
            }

            v67 = v68 || v126;
          }

          if (v133)
          {
            if (v129 | v122)
            {
              v69 = 0;
              v70 = 0;
              v71 = v122 != 0;
              v72 = 1;
              v74 = v129 != 0;
              v73 = v122;
              v75 = v129;
              do
              {
                --v75;
                if (v74)
                {
                  v70 |= (v48 & ~(-1 << v129) & v72) << v69++;
                }

                else
                {
                  v75 = 0;
                }

                --v73;
                if (v71)
                {
                  v70 |= (v25 & ~(-1 << v122) & v72) << v69++;
                }

                else
                {
                  v73 = 0;
                }

                v72 *= 2;
                --v69;
                v71 = v73 != 0;
                v74 = v75 != 0;
              }

              while (v73 | v75);
              v76 = v70 << 11;
            }

            else
            {
              v76 = 0;
            }

            v84 = v76 + *(v23 + 336) * ((v48 >> v129) + (v25 >> v122) * v116);
          }

          else if (v121)
          {
            v77 = 0;
            v78 = 0;
            v79 = 1;
            v80 = v120.i8[0];
            v81 = v120.i8[4];
            v83 = v121.i32[0];
            v82 = v121.i32[1];
            do
            {
              --v82;
              if (v81)
              {
                v78 |= (v79 & v48) << v77++;
              }

              else
              {
                v82 = 0;
              }

              --v83;
              if (v80)
              {
                v78 |= (v79 & v25) << v77++;
              }

              else
              {
                v83 = 0;
              }

              v79 *= 2;
              --v77;
              v80 = v83 != 0;
              v81 = v82 != 0;
            }

            while (v83 | v82);
            v84 = v78 << 11;
          }

          else
          {
            v84 = 0;
          }

          v85 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 7;
          if (v86 < 0x10)
          {
            v87 = 0;
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 3) - 1)));
          }

          v88 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v88 <= 1)
          {
            v88 = 1;
          }

          v89 = v88 + 7;
          if (v89 < 0x10)
          {
            v90 = 0;
            if (!v87)
            {
LABEL_107:
              v96 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v90 = 32 - __clz(~(-1 << -__clz((v89 >> 3) - 1)));
            if (!(v90 | v87))
            {
              goto LABEL_107;
            }
          }

          v91 = 0;
          v92 = 0;
          v93 = v87 != 0;
          v94 = v90 != 0;
          v95 = 1;
          do
          {
            --v87;
            if (v93)
            {
              v92 |= (v95 & v48) << v91++;
            }

            else
            {
              v87 = 0;
            }

            --v90;
            if (v94)
            {
              v92 |= (v95 & v25) << v91++;
            }

            else
            {
              v90 = 0;
            }

            v95 *= 2;
            --v91;
            v94 = v90 != 0;
            v93 = v87 != 0;
          }

          while (v90 | v87);
          v96 = 8 * v92;
LABEL_108:
          v97 = (v135 + v84);
          if (v134)
          {
            v98 = v66;
            memcpy(__dst, (v135 + v84), sizeof(__dst));
            v66 = v98;
            v97 = __dst;
          }

          v99 = (v136 + v96);
          v100 = (v137 + 32 * (v63 - v50));
          if (!(v67 & 1 | (v66 < 8u)) && v140 > 7)
          {
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 8, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 128), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 6 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 8, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 8, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v97;
          v149 = v66;
          v150 = v140;
          v145 = v128;
          v146 = v63 - v61;
          block[6] = v99;
          v143 = v100;
          v144 = a11;
          v147 = v127;
          v148 = v65;
          if (v67)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v50 = v138;
            v23 = v131;
            goto LABEL_49;
          }

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v106 + v107, v99[7]);
          v108 = v147;
          v50 = v138;
          v23 = v131;
          v60 = v48 + 1;
          if (v147)
          {
            v109 = 0;
            v110 = &v152[16 * v145 + 2 * v146];
            v111 = v148;
            do
            {
              if (v111)
              {
                v112 = 0;
                v113 = &v143->i8[v144 * v109];
                do
                {
                  v113[v112] = v110->i8[v112];
                  ++v112;
                  v111 = v148;
                }

                while (32 * v148 > v112);
                v108 = v147;
              }

              ++v109;
              v110 += 16;
            }

            while (v109 < v108);
          }

LABEL_50:
          v28 = v48 == v132 >> 3;
          v48 = v60;
        }

        while (!v28);
        v28 = v25++ == v118;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v138 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v117 = v22;
  v23 = v12;
  v160 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v119 = v14 + a10 - 1;
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
  v118 = v119 >> 3;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v134 = v31;
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
      v133 = 0;
LABEL_32:
      v129 = v33 - 3;
      v122 = v32 - 3;
      v39 = -1 << *(*(v23 + 208) + 48);
      v116 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v133 = v38 >= v32;
    goto LABEL_32;
  }

  v133 = 0;
  v116 = 0;
  v122 = 0;
  v129 = 0;
LABEL_33:
  if (v25 <= v118)
  {
    v132 = v138 + a9 - 1;
    if (v138 >> 3 <= v132 >> 3)
    {
      v141 = v26 >> 3;
      v125 = v26 & 7;
      v130 = (v26 & 7) + 1;
      v114 = v27 & 7;
      v115 = v27 >> 3;
      v123 = 4 * a11;
      v124 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v41 = vcgt_u32(v40, 0xF0000000FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 3uLL))))))), v41);
      v120 = v41;
      v131 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v139)
        {
          v43 = v139;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v119 < v42)
        {
          v42 = v119;
        }

        v128 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v114;
        v127 = v45;
        v47 = v45 != 8;
        v48 = v138 >> 3;
        v49 = v114 + 1;
        if (v25 != v115)
        {
          v49 = 8;
        }

        v140 = v49;
        if (v25 != v115)
        {
          v46 = v47;
        }

        v126 = v46;
        v137 = v117 + (v43 - v139) * a11;
        v50 = v138;
        do
        {
          v61 = 8 * v48;
          v62 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v63 = v50;
          }

          else
          {
            v63 = 8 * v48;
          }

          if (v132 < v62)
          {
            v62 = v138 + a9 - 1;
          }

          v64 = v62 - v63;
          v65 = v64 + 1;
          if (v48 == v141)
          {
            v66 = v130;
          }

          else
          {
            v66 = 8;
          }

          v67 = 1;
          if (8 * v25 >= v139 && v61 >= v50)
          {
            v68 = v64 != v125;
            if (v48 != v141)
            {
              v68 = v65 != 8;
            }

            v67 = v68 || v126;
          }

          if (v133)
          {
            if (v129 | v122)
            {
              v69 = 0;
              v70 = 0;
              v71 = v122 != 0;
              v72 = 1;
              v74 = v129 != 0;
              v73 = v122;
              v75 = v129;
              do
              {
                --v75;
                if (v74)
                {
                  v70 |= (v48 & ~(-1 << v129) & v72) << v69++;
                }

                else
                {
                  v75 = 0;
                }

                --v73;
                if (v71)
                {
                  v70 |= (v25 & ~(-1 << v122) & v72) << v69++;
                }

                else
                {
                  v73 = 0;
                }

                v72 *= 2;
                --v69;
                v71 = v73 != 0;
                v74 = v75 != 0;
              }

              while (v73 | v75);
              v76 = v70 << 11;
            }

            else
            {
              v76 = 0;
            }

            v84 = v76 + *(v23 + 336) * ((v48 >> v129) + (v25 >> v122) * v116);
          }

          else if (v121)
          {
            v77 = 0;
            v78 = 0;
            v79 = 1;
            v80 = v120.i8[0];
            v81 = v120.i8[4];
            v83 = v121.i32[0];
            v82 = v121.i32[1];
            do
            {
              --v82;
              if (v81)
              {
                v78 |= (v79 & v48) << v77++;
              }

              else
              {
                v82 = 0;
              }

              --v83;
              if (v80)
              {
                v78 |= (v79 & v25) << v77++;
              }

              else
              {
                v83 = 0;
              }

              v79 *= 2;
              --v77;
              v80 = v83 != 0;
              v81 = v82 != 0;
            }

            while (v83 | v82);
            v84 = v78 << 11;
          }

          else
          {
            v84 = 0;
          }

          v85 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 7;
          if (v86 < 0x10)
          {
            v87 = 0;
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 3) - 1)));
          }

          v88 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v88 <= 1)
          {
            v88 = 1;
          }

          v89 = v88 + 7;
          if (v89 < 0x10)
          {
            v90 = 0;
            if (!v87)
            {
LABEL_107:
              v96 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v90 = 32 - __clz(~(-1 << -__clz((v89 >> 3) - 1)));
            if (!(v90 | v87))
            {
              goto LABEL_107;
            }
          }

          v91 = 0;
          v92 = 0;
          v93 = v87 != 0;
          v94 = v90 != 0;
          v95 = 1;
          do
          {
            --v87;
            if (v93)
            {
              v92 |= (v95 & v48) << v91++;
            }

            else
            {
              v87 = 0;
            }

            --v90;
            if (v94)
            {
              v92 |= (v95 & v25) << v91++;
            }

            else
            {
              v90 = 0;
            }

            v95 *= 2;
            --v91;
            v94 = v90 != 0;
            v93 = v87 != 0;
          }

          while (v90 | v87);
          v96 = 8 * v92;
LABEL_108:
          v97 = (v135 + v84);
          if (v134)
          {
            v98 = v66;
            memcpy(__dst, (v135 + v84), sizeof(__dst));
            v66 = v98;
            v97 = __dst;
          }

          v99 = (v136 + v96);
          v100 = (v137 + 32 * (v63 - v50));
          if (!(v67 & 1 | (v66 < 8u)) && v140 > 7)
          {
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 8, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 128), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 6 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 8, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 8, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v97;
          v149 = v66;
          v150 = v140;
          v145 = v128;
          v146 = v63 - v61;
          block[6] = v99;
          v143 = v100;
          v144 = a11;
          v147 = v127;
          v148 = v65;
          if (v67)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v50 = v138;
            v23 = v131;
            goto LABEL_49;
          }

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v106 + v107, v99[7]);
          v108 = v147;
          v50 = v138;
          v23 = v131;
          v60 = v48 + 1;
          if (v147)
          {
            v109 = 0;
            v110 = &v152[16 * v145 + 2 * v146];
            v111 = v148;
            do
            {
              if (v111)
              {
                v112 = 0;
                v113 = &v143->i8[v144 * v109];
                do
                {
                  v113[v112] = v110->i8[v112];
                  ++v112;
                  v111 = v148;
                }

                while (32 * v148 > v112);
                v108 = v147;
              }

              ++v109;
              v110 += 16;
            }

            while (v109 < v108);
          }

LABEL_50:
          v28 = v48 == v132 >> 3;
          v48 = v60;
        }

        while (!v28);
        v28 = v25++ == v118;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v143 = v15;
  v17 = v16;
  v19 = v18;
  v138 = v20;
  v139 = v21;
  v124 = v22;
  v23 = v12;
  v164 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v142 = v14;
  v24 = v14 >> 3;
  v123 = v14 + a10 - 1;
  v125 = v123 >> 3;
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
  v137 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v125)
  {
    v135 = v143 + a9 - 1;
    if (v143 >> 3 <= v135 >> 3)
    {
      v32 = a11;
      v145 = (v19 - 1) >> 3;
      v120 = v19 - 1;
      v128 = (v19 - 1) & 7;
      v121 = (v17 - 1) & 7;
      v122 = (v17 - 1) >> 3;
      v126 = 4 * a11;
      v127 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v132 = v34;
      v119 = 8 * v26 * v25;
      v134 = v23;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v142)
        {
          v36 = v142;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v123 < v35)
        {
          v35 = v123;
        }

        v141 = 8 * v24;
        v131 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v121;
        v130 = v38;
        v40 = v38 != 8;
        v41 = v143 >> 3;
        v42 = v121 + 1;
        if (v24 != v122)
        {
          v42 = 8;
        }

        v144 = v42;
        if (v24 != v122)
        {
          v39 = v40;
        }

        v129 = v39;
        v140 = v124 + (v36 - v142) * v32;
        v43 = v143;
        do
        {
          v54 = 8 * v41;
          v55 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v56 = v43;
          }

          else
          {
            v56 = 8 * v41;
          }

          if (v135 < v55)
          {
            v55 = v143 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v41 == v145)
          {
            v59 = v128 + 1;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (v141 >= v142 && v54 >= v43)
          {
            v61 = v57 != v128;
            if (v41 != v145)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v129;
          }

          if (isLevelTiled)
          {
            v82 = 0;
            v83 = v119 >> (*(v23 + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 0;
                  v86 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 1;
                  v86 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v85 = 0;
                    v82 = 64;
                    v86 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 0;
                v86 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 128;
                  v86 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 0;
                v86 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 32;
                  v86 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v85 = 0;
              v86 = 16;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v84 = 0;
              v85 = 0;
              v82 = 16;
              v86 = 16;
            }

            else
            {
              v85 = 1;
              v86 = 0;
              if (v83 == 1024)
              {
                v84 = 0;
                v86 = 8;
                v82 = 16;
              }
            }

            v107 = (v82 >> 3) - 1;
            if (v84)
            {
              v108 = 0;
            }

            else
            {
              v108 = 32 - __clz(~(-1 << -__clz(v107)));
            }

            v109 = (v86 >> 3) - 1;
            if (v85)
            {
              v110 = 0;
              if (v108)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v110 = 32 - __clz(~(-1 << -__clz(v109)));
              if (v110 | v108)
              {
LABEL_114:
                v111 = 0;
                v112 = 0;
                v113 = v41 & v107;
                v114 = v24 & v109;
                v115 = v108 != 0;
                v116 = v110 != 0;
                v117 = 1;
                do
                {
                  --v108;
                  if (v115)
                  {
                    v112 |= (v117 & v113) << v111++;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  --v110;
                  if (v116)
                  {
                    v112 |= (v117 & v114) << v111++;
                  }

                  else
                  {
                    v110 = 0;
                  }

                  v117 *= 2;
                  --v111;
                  v116 = v110 != 0;
                  v115 = v108 != 0;
                }

                while (v110 | v108);
                v118 = v112 << 11;
                goto LABEL_126;
              }
            }

            v118 = 0;
LABEL_126:
            v69 = v118 + ((v54 / v82 + v141 / v86 * ((v82 + v120) / v82)) << 14);
            goto LABEL_56;
          }

          if (v133)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v132.i8[0];
            v66 = v132.i8[4];
            v68 = v133.i32[0];
            v67 = v133.i32[1];
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
                v63 |= (v64 & v24) << v62++;
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
            v69 = v63 << 11;
          }

          else
          {
            v69 = 0;
          }

LABEL_56:
          v70 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v73 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_81;
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
              v77 |= (v80 & v24) << v76++;
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
LABEL_82:
          v87 = (v138 + v69);
          if (v137)
          {
            v88 = v58;
            v89 = v32;
            v90 = v59;
            v91 = v60;
            memcpy(__dst, (v138 + v69), sizeof(__dst));
            v60 = v91;
            v59 = v90;
            v32 = v89;
            v54 = 8 * v41;
            v58 = v88;
            v87 = __dst;
          }

          v92 = (v139 + v81);
          v93 = (v140 + 32 * (v56 - v43));
          if (!(v60 & 1 | (v59 < 8u)) && v144 > 7)
          {
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v140 + 32 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 8, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127 + 128), v32, v46, v92[3]);
            v48 = (v93 + v126);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v126), v32, v47, v92[4]);
            v50 = (v93 + 6 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 8, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 8, v32, v51 + v52, v92[7]);
            v43 = v143;
            v23 = v134;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v134;
          block[5] = v87;
          v153 = v59;
          v154 = v144;
          v149 = v131;
          v150 = v56 - v54;
          block[6] = v92;
          v147 = v140 + 32 * (v56 - v43);
          v148 = v32;
          v151 = v130;
          v152 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v134 + 8) + 16552), block);
            v43 = v143;
            v23 = v134;
            goto LABEL_29;
          }

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v99 + v100, v92[7]);
          v101 = v151;
          v43 = v143;
          v23 = v134;
          v53 = v41 + 1;
          if (v151)
          {
            v102 = 0;
            v103 = &v156[16 * v149 + 2 * v150];
            v104 = v152;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v147 + v148 * v102;
                do
                {
                  *(v106 + v105) = v103->i8[v105];
                  ++v105;
                  v104 = v152;
                }

                while (32 * v152 > v105);
                v101 = v151;
              }

              ++v102;
              v103 += 16;
            }

            while (v102 < v101);
          }

LABEL_30:
          v28 = v41 == v135 >> 3;
          v41 = v53;
        }

        while (!v28);
        v28 = v24++ == v125;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v143 = v15;
  v17 = v16;
  v19 = v18;
  v138 = v20;
  v139 = v21;
  v124 = v22;
  v23 = v12;
  v164 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v142 = v14;
  v24 = v14 >> 3;
  v123 = v14 + a10 - 1;
  v125 = v123 >> 3;
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
  v137 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v125)
  {
    v135 = v143 + a9 - 1;
    if (v143 >> 3 <= v135 >> 3)
    {
      v32 = a11;
      v145 = (v19 - 1) >> 3;
      v120 = v19 - 1;
      v128 = (v19 - 1) & 7;
      v121 = (v17 - 1) & 7;
      v122 = (v17 - 1) >> 3;
      v126 = 4 * a11;
      v127 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v132 = v34;
      v119 = 8 * v26 * v25;
      v134 = v23;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v142)
        {
          v36 = v142;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v123 < v35)
        {
          v35 = v123;
        }

        v141 = 8 * v24;
        v131 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v121;
        v130 = v38;
        v40 = v38 != 8;
        v41 = v143 >> 3;
        v42 = v121 + 1;
        if (v24 != v122)
        {
          v42 = 8;
        }

        v144 = v42;
        if (v24 != v122)
        {
          v39 = v40;
        }

        v129 = v39;
        v140 = v124 + (v36 - v142) * v32;
        v43 = v143;
        do
        {
          v54 = 8 * v41;
          v55 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v56 = v43;
          }

          else
          {
            v56 = 8 * v41;
          }

          if (v135 < v55)
          {
            v55 = v143 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v41 == v145)
          {
            v59 = v128 + 1;
          }

          else
          {
            v59 = 8;
          }

          v60 = 1;
          if (v141 >= v142 && v54 >= v43)
          {
            v61 = v57 != v128;
            if (v41 != v145)
            {
              v61 = v58 != 8;
            }

            v60 = v61 || v129;
          }

          if (isLevelTiled)
          {
            v82 = 0;
            v83 = v119 >> (*(v23 + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 0;
                  v86 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 1;
                  v86 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v85 = 0;
                    v82 = 64;
                    v86 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 0;
                v86 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 128;
                  v86 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 0;
                v86 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 32;
                  v86 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v85 = 0;
              v86 = 16;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v84 = 0;
              v85 = 0;
              v82 = 16;
              v86 = 16;
            }

            else
            {
              v85 = 1;
              v86 = 0;
              if (v83 == 1024)
              {
                v84 = 0;
                v86 = 8;
                v82 = 16;
              }
            }

            v107 = (v82 >> 3) - 1;
            if (v84)
            {
              v108 = 0;
            }

            else
            {
              v108 = 32 - __clz(~(-1 << -__clz(v107)));
            }

            v109 = (v86 >> 3) - 1;
            if (v85)
            {
              v110 = 0;
              if (v108)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v110 = 32 - __clz(~(-1 << -__clz(v109)));
              if (v110 | v108)
              {
LABEL_114:
                v111 = 0;
                v112 = 0;
                v113 = v41 & v107;
                v114 = v24 & v109;
                v115 = v108 != 0;
                v116 = v110 != 0;
                v117 = 1;
                do
                {
                  --v108;
                  if (v115)
                  {
                    v112 |= (v117 & v113) << v111++;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  --v110;
                  if (v116)
                  {
                    v112 |= (v117 & v114) << v111++;
                  }

                  else
                  {
                    v110 = 0;
                  }

                  v117 *= 2;
                  --v111;
                  v116 = v110 != 0;
                  v115 = v108 != 0;
                }

                while (v110 | v108);
                v118 = v112 << 11;
                goto LABEL_126;
              }
            }

            v118 = 0;
LABEL_126:
            v69 = v118 + ((v54 / v82 + v141 / v86 * ((v82 + v120) / v82)) << 14);
            goto LABEL_56;
          }

          if (v133)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v132.i8[0];
            v66 = v132.i8[4];
            v68 = v133.i32[0];
            v67 = v133.i32[1];
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
                v63 |= (v64 & v24) << v62++;
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
            v69 = v63 << 11;
          }

          else
          {
            v69 = 0;
          }

LABEL_56:
          v70 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v73 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_81;
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
              v77 |= (v80 & v24) << v76++;
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
LABEL_82:
          v87 = (v138 + v69);
          if (v137)
          {
            v88 = v58;
            v89 = v32;
            v90 = v59;
            v91 = v60;
            memcpy(__dst, (v138 + v69), sizeof(__dst));
            v60 = v91;
            v59 = v90;
            v32 = v89;
            v54 = 8 * v41;
            v58 = v88;
            v87 = __dst;
          }

          v92 = (v139 + v81);
          v93 = (v140 + 32 * (v56 - v43));
          if (!(v60 & 1 | (v59 < 8u)) && v144 > 7)
          {
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v140 + 32 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 8, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127 + 128), v32, v46, v92[3]);
            v48 = (v93 + v126);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v126), v32, v47, v92[4]);
            v50 = (v93 + 6 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 8, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 8, v32, v51 + v52, v92[7]);
            v43 = v143;
            v23 = v134;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v134;
          block[5] = v87;
          v153 = v59;
          v154 = v144;
          v149 = v131;
          v150 = v56 - v54;
          block[6] = v92;
          v147 = v140 + 32 * (v56 - v43);
          v148 = v32;
          v151 = v130;
          v152 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v134 + 8) + 16552), block);
            v43 = v143;
            v23 = v134;
            goto LABEL_29;
          }

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v99 + v100, v92[7]);
          v101 = v151;
          v43 = v143;
          v23 = v134;
          v53 = v41 + 1;
          if (v151)
          {
            v102 = 0;
            v103 = &v156[16 * v149 + 2 * v150];
            v104 = v152;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v147 + v148 * v102;
                do
                {
                  *(v106 + v105) = v103->i8[v105];
                  ++v105;
                  v104 = v152;
                }

                while (32 * v152 > v105);
                v101 = v151;
              }

              ++v102;
              v103 += 16;
            }

            while (v102 < v101);
          }

LABEL_30:
          v28 = v41 == v135 >> 3;
          v41 = v53;
        }

        while (!v28);
        v28 = v24++ == v125;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              v68 = v62 << 9;
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
            v76 = v70 << 9;
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
          v92 = (v129 + 8 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[4 * v137].i8[8 * v138];
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

                while (8 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 64;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v134 = a8;
  v16 = a8 >> 3;
  v115 = a8 + a10 - 1;
  v117 = v115 >> 3;
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
  v129 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v117)
  {
    v127 = a7 + a9 - 1;
    if (a7 >> 3 <= v127 >> 3)
    {
      v24 = a11;
      v137 = (a5 - 1) >> 3;
      v112 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v113 = (a6 - 1) & 7;
      v114 = (a6 - 1) >> 3;
      v118 = 4 * a11;
      v119 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      v26 = vcgt_u32(v25, 0xF0000000FLL);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 3uLL))))))), v26);
      v124 = v26;
      v111 = 8 * v18 * v17;
      v126 = v15;
      do
      {
        v27 = (8 * v16) | 7;
        if (8 * v16 <= v134)
        {
          v28 = v134;
        }

        else
        {
          v28 = 8 * v16;
        }

        if (v115 < v27)
        {
          v27 = v115;
        }

        v133 = 8 * v16;
        v123 = v28 - 8 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v113;
        v122 = v30;
        v32 = v30 != 8;
        v33 = a7 >> 3;
        v34 = v113 + 1;
        if (v16 != v114)
        {
          v34 = 8;
        }

        v136 = v34;
        if (v16 != v114)
        {
          v31 = v32;
        }

        v121 = v31;
        v132 = a2 + (v28 - v134) * v24;
        v35 = a7;
        do
        {
          v46 = 8 * v33;
          v47 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v48 = v35;
          }

          else
          {
            v48 = 8 * v33;
          }

          if (v127 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v33 == v137)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v133 >= v134 && v46 >= v35)
          {
            v53 = v49 != v120;
            if (v33 != v137)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (isLevelTiled)
          {
            v74 = 0;
            v75 = v111 >> (*(v15 + 57) != 0);
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
              v77 = 0;
              v78 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v77 = 0;
              v74 = 16;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v78 = 8;
                v74 = 16;
              }
            }

            v99 = (v74 >> 3) - 1;
            if (v76)
            {
              v100 = 0;
            }

            else
            {
              v100 = 32 - __clz(~(-1 << -__clz(v99)));
            }

            v101 = (v78 >> 3) - 1;
            if (v77)
            {
              v102 = 0;
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v102 = 32 - __clz(~(-1 << -__clz(v101)));
              if (v102 | v100)
              {
LABEL_114:
                v103 = 0;
                v104 = 0;
                v105 = v33 & v99;
                v106 = v16 & v101;
                v107 = v100 != 0;
                v108 = v102 != 0;
                v109 = 1;
                do
                {
                  --v100;
                  if (v107)
                  {
                    v104 |= (v109 & v105) << v103++;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  --v102;
                  if (v108)
                  {
                    v104 |= (v109 & v106) << v103++;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v109 *= 2;
                  --v103;
                  v108 = v102 != 0;
                  v107 = v100 != 0;
                }

                while (v102 | v100);
                v110 = v104 << 9;
                goto LABEL_126;
              }
            }

            v110 = 0;
LABEL_126:
            v61 = v110 + ((v46 / v74 + v133 / v78 * ((v74 + v112) / v74)) << 14);
            goto LABEL_56;
          }

          if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v124.i8[0];
            v58 = v124.i8[4];
            v60 = v125.i32[0];
            v59 = v125.i32[1];
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
            v61 = v55 << 9;
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

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 7;
          if (v66 < 0x10)
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
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 3) - 1)));
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
          if (v129)
          {
            v80 = v50;
            v81 = v24;
            v82 = v51;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v51 = v82;
            v24 = v81;
            v46 = 8 * v33;
            v50 = v80;
            v79 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v132 + 8 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 8 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 32), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 8 * (v48 - v35);
          v140 = v24;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v126 + 8) + 16552), block);
            v35 = a7;
            v15 = v126;
            goto LABEL_29;
          }

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 64, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 64, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[4 * v141].i8[8 * v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95[v97];
                  ++v97;
                  v96 = v144;
                }

                while (8 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 64;
            }

            while (v94 < v93);
          }

LABEL_30:
          v20 = v33 == v127 >> 3;
          v33 = v45;
        }

        while (!v20);
        v20 = v16++ == v117;
      }

      while (!v20);
    }
  }
}