void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 9;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 9;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 9;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 9;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v149[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = v127 + 32 * (v54 - v42);
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 64, a11, v43, v90[1]);
            v45 = v91 + v114;
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + v114, a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + v114 + 64, a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 128, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 192, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 128, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 192, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[256 * v135 + 32 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  *(v104 + v103) = v101[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 256;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v149[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = v127 + 32 * (v54 - v42);
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 64, a11, v43, v90[1]);
            v45 = v91 + v114;
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + v114, a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + v114 + 64, a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 128, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 192, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 128, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 192, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[256 * v135 + 32 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  *(v104 + v103) = v101[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 256;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v152[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = v129 + 32 * (v47 - v35);
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v129 + 32 * (v47 - v35), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 64, v24, v36, v82[1]);
            v38 = v83 + v116;
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + v116, v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + v116 + 64, v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 128, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 192, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 128, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 192, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[256 * v138 + 32 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 256;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v152[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = v129 + 32 * (v47 - v35);
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v129 + 32 * (v47 - v35), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 64, v24, v36, v82[1]);
            v38 = v83 + v116;
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + v116, v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + v116 + 64, v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 128, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 192, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 128, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 192, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[256 * v138 + 32 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 256;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 32 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 64), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 12, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 8, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 12, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[16 * v135 + 2 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 16;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
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
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 10;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 10;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 32 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 64), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 12, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 8, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 12, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[16 * v135 + 2 * v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v133 + v134 * v100;
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (32 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 16;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 32 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 32 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 64), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 12, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 8, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 12, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[16 * v138 + 2 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 16;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 10;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 10;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
            }
          }

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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 32 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 32 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 64), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 12, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 8, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 12, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 32 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 256, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 256, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 256, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[16 * v138 + 2 * v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (32 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 16;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v126 = v20;
  v127 = v21;
  v110 = v22;
  v23 = v12;
  v147 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v130 = v14;
  v112 = v14 + a10 - 1;
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
  v111 = v112 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v125 = v31;
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
      v124 = 0;
LABEL_32:
      v120 = v33 - 2;
      v115 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v109 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v124 = v38 >= v32;
    goto LABEL_32;
  }

  v124 = 0;
  v109 = 0;
  v115 = 0;
  v120 = 0;
LABEL_33:
  if (v25 <= v111)
  {
    v123 = v129 + a9 - 1;
    if (v129 >> 2 <= v123 >> 2)
    {
      v132 = v26 >> 2;
      v116 = v26 & 3;
      v121 = (v26 & 3) + 1;
      v107 = v27 & 3;
      v108 = v27 >> 2;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v41 = vcgt_u32(v40, 0x700000007);
      v114 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 2uLL))))))), v41);
      v113 = v41;
      v122 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v130)
        {
          v43 = v130;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v112 < v42)
        {
          v42 = v112;
        }

        v119 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v107;
        v118 = v45;
        v47 = v45 != 4;
        v48 = v129 >> 2;
        v49 = v107 + 1;
        if (v25 != v108)
        {
          v49 = 4;
        }

        v131 = v49;
        if (v25 != v108)
        {
          v46 = v47;
        }

        v117 = v46;
        v128 = v110 + (v43 - v130) * a11;
        v50 = v129;
        do
        {
          v56 = 4 * v48;
          v57 = 4 * (v48 + 1) - 1;
          if (4 * v48 <= v50)
          {
            v58 = v50;
          }

          else
          {
            v58 = 4 * v48;
          }

          if (v123 < v57)
          {
            v57 = v129 + a9 - 1;
          }

          v59 = v57 - v58;
          v60 = v59 + 1;
          if (v48 == v132)
          {
            v61 = v121;
          }

          else
          {
            v61 = 4;
          }

          v62 = 1;
          if (4 * v25 >= v130 && v56 >= v50)
          {
            v63 = v59 != v116;
            if (v48 != v132)
            {
              v63 = v60 != 4;
            }

            v62 = v63 || v117;
          }

          if (v124)
          {
            if (v120 | v115)
            {
              v64 = 0;
              v65 = 0;
              v66 = v115 != 0;
              v67 = 1;
              v69 = v120 != 0;
              v68 = v115;
              v70 = v120;
              do
              {
                --v70;
                if (v69)
                {
                  v65 |= (v48 & ~(-1 << v120) & v67) << v64++;
                }

                else
                {
                  v70 = 0;
                }

                --v68;
                if (v66)
                {
                  v65 |= (v25 & ~(-1 << v115) & v67) << v64++;
                }

                else
                {
                  v68 = 0;
                }

                v67 *= 2;
                --v64;
                v66 = v68 != 0;
                v69 = v70 != 0;
              }

              while (v68 | v70);
              v71 = v65 << 11;
            }

            else
            {
              v71 = 0;
            }

            v79 = v71 + *(v23 + 336) * ((v48 >> v120) + (v25 >> v115) * v109);
          }

          else if (v114)
          {
            v72 = 0;
            v73 = 0;
            v74 = 1;
            v75 = v113.i8[0];
            v76 = v113.i8[4];
            v78 = v114.i32[0];
            v77 = v114.i32[1];
            do
            {
              --v77;
              if (v76)
              {
                v73 |= (v74 & v48) << v72++;
              }

              else
              {
                v77 = 0;
              }

              --v78;
              if (v75)
              {
                v73 |= (v74 & v25) << v72++;
              }

              else
              {
                v78 = 0;
              }

              v74 *= 2;
              --v72;
              v75 = v78 != 0;
              v76 = v77 != 0;
            }

            while (v78 | v77);
            v79 = v73 << 11;
          }

          else
          {
            v79 = 0;
          }

          v80 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          v83 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v83 <= 1)
          {
            v83 = 1;
          }

          v84 = v83 + 3;
          if (v84 < 8)
          {
            v85 = 0;
            if (!v82)
            {
LABEL_107:
              v91 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v85 = 32 - __clz(~(-1 << -__clz((v84 >> 2) - 1)));
            if (!(v85 | v82))
            {
              goto LABEL_107;
            }
          }

          v86 = 0;
          v87 = 0;
          v88 = v82 != 0;
          v89 = v85 != 0;
          v90 = 1;
          do
          {
            --v82;
            if (v88)
            {
              v87 |= (v90 & v48) << v86++;
            }

            else
            {
              v82 = 0;
            }

            --v85;
            if (v89)
            {
              v87 |= (v90 & v25) << v86++;
            }

            else
            {
              v85 = 0;
            }

            v90 *= 2;
            --v86;
            v89 = v85 != 0;
            v88 = v82 != 0;
          }

          while (v85 | v82);
          v91 = 8 * v87;
LABEL_108:
          v92 = (v126 + v79);
          if (v125)
          {
            v93 = v61;
            v94 = v58;
            v95 = v50;
            memcpy(__dst, (v126 + v79), sizeof(__dst));
            v50 = v95;
            v58 = v94;
            v61 = v93;
            v92 = __dst;
          }

          v96 = (v127 + v91);
          v97 = (v128 + ((v58 - v50) << 7));
          if (!(v62 & 1 | (v61 < 4u)) && v131 > 3)
          {
            v51 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97, a11, v92, *v96)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97 + 16, a11, v51, v96[1]);
            v53 = (v97 + 2 * a11);
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53, a11, v52, v96[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v52 + v54, v96[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v55 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v92;
          v140 = v61;
          v141 = v131;
          v136 = v119;
          v137 = v58 - v56;
          block[6] = v96;
          v134 = v128 + ((v58 - v50) << 7);
          v135 = a11;
          v138 = v118;
          v139 = v60;
          if (v62)
          {
            dispatch_sync(*(*(v122 + 8) + 16552), block);
            v50 = v129;
            v23 = v122;
            goto LABEL_49;
          }

          v98 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v92, *v96)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v98, v96[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 512, v99, v96[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 512, v99 + v100, v96[3]);
          v101 = v138;
          v50 = v129;
          v23 = v122;
          v55 = v48 + 1;
          if (v138)
          {
            v102 = 0;
            v103 = &v143[32 * v136 + 8 * v137];
            v104 = v139;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v134 + v135 * v102;
                do
                {
                  *(v106 + v105) = *(v103 + v105);
                  ++v105;
                  v104 = v139;
                }

                while (v139 << 7 > v105);
                v101 = v138;
              }

              ++v102;
              v103 += 32;
            }

            while (v102 < v101);
          }

LABEL_50:
          v28 = v48 == v123 >> 2;
          v48 = v55;
        }

        while (!v28);
        v28 = v25++ == v111;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v126 = v20;
  v127 = v21;
  v110 = v22;
  v23 = v12;
  v147 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v130 = v14;
  v112 = v14 + a10 - 1;
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
  v111 = v112 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v125 = v31;
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
      v124 = 0;
LABEL_32:
      v120 = v33 - 2;
      v115 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v109 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v124 = v38 >= v32;
    goto LABEL_32;
  }

  v124 = 0;
  v109 = 0;
  v115 = 0;
  v120 = 0;
LABEL_33:
  if (v25 <= v111)
  {
    v123 = v129 + a9 - 1;
    if (v129 >> 2 <= v123 >> 2)
    {
      v132 = v26 >> 2;
      v116 = v26 & 3;
      v121 = (v26 & 3) + 1;
      v107 = v27 & 3;
      v108 = v27 >> 2;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v41 = vcgt_u32(v40, 0x700000007);
      v114 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 2uLL))))))), v41);
      v113 = v41;
      v122 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v130)
        {
          v43 = v130;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v112 < v42)
        {
          v42 = v112;
        }

        v119 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v107;
        v118 = v45;
        v47 = v45 != 4;
        v48 = v129 >> 2;
        v49 = v107 + 1;
        if (v25 != v108)
        {
          v49 = 4;
        }

        v131 = v49;
        if (v25 != v108)
        {
          v46 = v47;
        }

        v117 = v46;
        v128 = v110 + (v43 - v130) * a11;
        v50 = v129;
        do
        {
          v56 = 4 * v48;
          v57 = 4 * (v48 + 1) - 1;
          if (4 * v48 <= v50)
          {
            v58 = v50;
          }

          else
          {
            v58 = 4 * v48;
          }

          if (v123 < v57)
          {
            v57 = v129 + a9 - 1;
          }

          v59 = v57 - v58;
          v60 = v59 + 1;
          if (v48 == v132)
          {
            v61 = v121;
          }

          else
          {
            v61 = 4;
          }

          v62 = 1;
          if (4 * v25 >= v130 && v56 >= v50)
          {
            v63 = v59 != v116;
            if (v48 != v132)
            {
              v63 = v60 != 4;
            }

            v62 = v63 || v117;
          }

          if (v124)
          {
            if (v120 | v115)
            {
              v64 = 0;
              v65 = 0;
              v66 = v115 != 0;
              v67 = 1;
              v69 = v120 != 0;
              v68 = v115;
              v70 = v120;
              do
              {
                --v70;
                if (v69)
                {
                  v65 |= (v48 & ~(-1 << v120) & v67) << v64++;
                }

                else
                {
                  v70 = 0;
                }

                --v68;
                if (v66)
                {
                  v65 |= (v25 & ~(-1 << v115) & v67) << v64++;
                }

                else
                {
                  v68 = 0;
                }

                v67 *= 2;
                --v64;
                v66 = v68 != 0;
                v69 = v70 != 0;
              }

              while (v68 | v70);
              v71 = v65 << 11;
            }

            else
            {
              v71 = 0;
            }

            v79 = v71 + *(v23 + 336) * ((v48 >> v120) + (v25 >> v115) * v109);
          }

          else if (v114)
          {
            v72 = 0;
            v73 = 0;
            v74 = 1;
            v75 = v113.i8[0];
            v76 = v113.i8[4];
            v78 = v114.i32[0];
            v77 = v114.i32[1];
            do
            {
              --v77;
              if (v76)
              {
                v73 |= (v74 & v48) << v72++;
              }

              else
              {
                v77 = 0;
              }

              --v78;
              if (v75)
              {
                v73 |= (v74 & v25) << v72++;
              }

              else
              {
                v78 = 0;
              }

              v74 *= 2;
              --v72;
              v75 = v78 != 0;
              v76 = v77 != 0;
            }

            while (v78 | v77);
            v79 = v73 << 11;
          }

          else
          {
            v79 = 0;
          }

          v80 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          v83 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v83 <= 1)
          {
            v83 = 1;
          }

          v84 = v83 + 3;
          if (v84 < 8)
          {
            v85 = 0;
            if (!v82)
            {
LABEL_107:
              v91 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v85 = 32 - __clz(~(-1 << -__clz((v84 >> 2) - 1)));
            if (!(v85 | v82))
            {
              goto LABEL_107;
            }
          }

          v86 = 0;
          v87 = 0;
          v88 = v82 != 0;
          v89 = v85 != 0;
          v90 = 1;
          do
          {
            --v82;
            if (v88)
            {
              v87 |= (v90 & v48) << v86++;
            }

            else
            {
              v82 = 0;
            }

            --v85;
            if (v89)
            {
              v87 |= (v90 & v25) << v86++;
            }

            else
            {
              v85 = 0;
            }

            v90 *= 2;
            --v86;
            v89 = v85 != 0;
            v88 = v82 != 0;
          }

          while (v85 | v82);
          v91 = 8 * v87;
LABEL_108:
          v92 = (v126 + v79);
          if (v125)
          {
            v93 = v61;
            v94 = v58;
            v95 = v50;
            memcpy(__dst, (v126 + v79), sizeof(__dst));
            v50 = v95;
            v58 = v94;
            v61 = v93;
            v92 = __dst;
          }

          v96 = (v127 + v91);
          v97 = (v128 + ((v58 - v50) << 7));
          if (!(v62 & 1 | (v61 < 4u)) && v131 > 3)
          {
            v51 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97, a11, v92, *v96)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97 + 16, a11, v51, v96[1]);
            v53 = (v97 + 2 * a11);
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53, a11, v52, v96[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v52 + v54, v96[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v55 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v92;
          v140 = v61;
          v141 = v131;
          v136 = v119;
          v137 = v58 - v56;
          block[6] = v96;
          v134 = v128 + ((v58 - v50) << 7);
          v135 = a11;
          v138 = v118;
          v139 = v60;
          if (v62)
          {
            dispatch_sync(*(*(v122 + 8) + 16552), block);
            v50 = v129;
            v23 = v122;
            goto LABEL_49;
          }

          v98 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v92, *v96)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v98, v96[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 512, v99, v96[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 512, v99 + v100, v96[3]);
          v101 = v138;
          v50 = v129;
          v23 = v122;
          v55 = v48 + 1;
          if (v138)
          {
            v102 = 0;
            v103 = &v143[32 * v136 + 8 * v137];
            v104 = v139;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v134 + v135 * v102;
                do
                {
                  *(v106 + v105) = *(v103 + v105);
                  ++v105;
                  v104 = v139;
                }

                while (v139 << 7 > v105);
                v101 = v138;
              }

              ++v102;
              v103 += 32;
            }

            while (v102 < v101);
          }

LABEL_50:
          v28 = v48 == v123 >> 2;
          v48 = v55;
        }

        while (!v28);
        v28 = v25++ == v111;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v127 = v15;
  v17 = v16;
  v19 = v18;
  v122 = v20;
  v123 = v21;
  v111 = v22;
  v23 = v12;
  v145 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v126 = v14;
  v24 = v14 >> 2;
  v110 = v14 + a10 - 1;
  v112 = v110 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v130 = v23;
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
  v121 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v120 = result;
  if (v24 <= v112)
  {
    v119 = v127 + a9 - 1;
    if (v127 >> 2 <= v119 >> 2)
    {
      result = v23;
      v129 = (v19 - 1) >> 2;
      v109 = (v17 - 1) >> 2;
      v106 = v19 - 1;
      v113 = (v19 - 1) & 3;
      v107 = ((v17 - 1) & 3) + 1;
      v108 = (v17 - 1) & 3;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v34 = vcgt_u32(v33, 0x700000007);
      v118 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 2uLL))))))), v34);
      v117 = v34;
      v105 = 8 * v26 * v25;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v126)
        {
          v36 = v126;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v110 < v35)
        {
          v35 = v110;
        }

        v125 = 4 * v24;
        v116 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v108;
        v115 = v38;
        v40 = v38 != 4;
        v41 = v127 >> 2;
        v42 = v107;
        if (v24 != v109)
        {
          v42 = 4;
        }

        v128 = v42;
        if (v24 != v109)
        {
          v39 = v40;
        }

        v114 = v39;
        v124 = v111 + (v36 - v126) * a11;
        v43 = v127;
        do
        {
          v48 = 4 * v41;
          v49 = 4 * (v41 + 1) - 1;
          if (4 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 4 * v41;
          }

          if (v119 < v49)
          {
            v49 = v127 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v129)
          {
            v53 = v113 + 1;
          }

          else
          {
            v53 = 4;
          }

          v54 = 1;
          if (v125 >= v126 && v48 >= v43)
          {
            v55 = v51 != v113;
            if (v41 != v129)
            {
              v55 = v52 != 4;
            }

            v54 = v55 || v114;
          }

          if (v120)
          {
            v76 = 0;
            v77 = v105 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v76 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v76 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v76 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v78 = 0;
              v76 = 16;
              v79 = 16;
            }

            else
            {
              v79 = 0;
              if (v77 == 1024)
              {
                v78 = 0;
                v79 = 8;
                v76 = 16;
              }
            }

            v93 = (v76 >> 2) - 1;
            v94 = (v79 >> 2) - 1;
            if ((v78 & 1) != 0 || (v95 = 32 - __clz(~(-1 << -__clz(v93))), v96 = 32 - __clz(~(-1 << -__clz(v94))), !(v96 | v95)))
            {
              v104 = 0;
            }

            else
            {
              v97 = 0;
              v98 = 0;
              v99 = v41 & v93;
              v100 = v24 & v94;
              v101 = v95 != 0;
              v102 = v96 != 0;
              v103 = 1;
              do
              {
                --v95;
                if (v101)
                {
                  v98 |= (v103 & v99) << v97++;
                }

                else
                {
                  v95 = 0;
                }

                --v96;
                if (v102)
                {
                  v98 |= (v103 & v100) << v97++;
                }

                else
                {
                  v96 = 0;
                }

                v103 *= 2;
                --v97;
                v102 = v96 != 0;
                v101 = v95 != 0;
              }

              while (v96 | v95);
              v104 = v98 << 11;
              result = v130;
            }

            v63 = v104 + ((v48 / v76 + v125 / v79 * ((v76 + v106) / v76)) << 14);
          }

          else if (v118)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v117.i8[0];
            v60 = v117.i8[4];
            v62 = v118.i32[0];
            v61 = v118.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v41) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v24) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 11;
          }

          else
          {
            v63 = 0;
          }

          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 3;
          if (v68 < 8)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 2) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v41) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v24) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v80 = (v122 + v63);
          if (v121)
          {
            v81 = v52;
            memcpy(__dst, (v122 + v63), sizeof(__dst));
            v52 = v81;
            result = v130;
            v80 = __dst;
          }

          v82 = (v123 + v75);
          v83 = (v124 + ((v50 - v43) << 7));
          if (!(v54 & 1 | (v53 < 4u)) && v128 > 3)
          {
            v44 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83, a11, v80, *v82)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83 + 16, a11, v44, v82[1]);
            v46 = (v83 + 2 * a11);
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46, a11, v45, v82[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, a11, v45 + v47, v82[3]);
LABEL_29:
            v43 = v127;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v80;
          v138 = v53;
          v139 = v128;
          v134 = v116;
          v135 = v50 - v48;
          block[6] = v82;
          v132 = v83;
          v133 = a11;
          v136 = v115;
          v137 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v84 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v141, 512, v80, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 512, v84, v82[1]);
          v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v85, v82[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v85 + v86, v82[3]);
          v87 = v136;
          v43 = v127;
          if (v136)
          {
            v88 = 0;
            v89 = &v141[32 * v134 + 8 * v135];
            v90 = v137;
            do
            {
              if (v90)
              {
                v91 = 0;
                v92 = v132 + v133 * v88;
                do
                {
                  v92[v91] = *(v89 + v91);
                  ++v91;
                  v90 = v137;
                }

                while (v137 << 7 > v91);
                v87 = v136;
              }

              ++v88;
              v89 += 32;
            }

            while (v88 < v87);
          }

LABEL_30:
          v28 = v41++ == v119 >> 2;
          result = v130;
        }

        while (!v28);
        v28 = v24++ == v112;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v127 = v15;
  v17 = v16;
  v19 = v18;
  v122 = v20;
  v123 = v21;
  v111 = v22;
  v23 = v12;
  v145 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v126 = v14;
  v24 = v14 >> 2;
  v110 = v14 + a10 - 1;
  v112 = v110 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v130 = v23;
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
  v121 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v120 = result;
  if (v24 <= v112)
  {
    v119 = v127 + a9 - 1;
    if (v127 >> 2 <= v119 >> 2)
    {
      result = v23;
      v129 = (v19 - 1) >> 2;
      v109 = (v17 - 1) >> 2;
      v106 = v19 - 1;
      v113 = (v19 - 1) & 3;
      v107 = ((v17 - 1) & 3) + 1;
      v108 = (v17 - 1) & 3;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v34 = vcgt_u32(v33, 0x700000007);
      v118 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 2uLL))))))), v34);
      v117 = v34;
      v105 = 8 * v26 * v25;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v126)
        {
          v36 = v126;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v110 < v35)
        {
          v35 = v110;
        }

        v125 = 4 * v24;
        v116 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v108;
        v115 = v38;
        v40 = v38 != 4;
        v41 = v127 >> 2;
        v42 = v107;
        if (v24 != v109)
        {
          v42 = 4;
        }

        v128 = v42;
        if (v24 != v109)
        {
          v39 = v40;
        }

        v114 = v39;
        v124 = v111 + (v36 - v126) * a11;
        v43 = v127;
        do
        {
          v48 = 4 * v41;
          v49 = 4 * (v41 + 1) - 1;
          if (4 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 4 * v41;
          }

          if (v119 < v49)
          {
            v49 = v127 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v129)
          {
            v53 = v113 + 1;
          }

          else
          {
            v53 = 4;
          }

          v54 = 1;
          if (v125 >= v126 && v48 >= v43)
          {
            v55 = v51 != v113;
            if (v41 != v129)
            {
              v55 = v52 != 4;
            }

            v54 = v55 || v114;
          }

          if (v120)
          {
            v76 = 0;
            v77 = v105 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v76 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v76 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v76 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v78 = 0;
              v76 = 16;
              v79 = 16;
            }

            else
            {
              v79 = 0;
              if (v77 == 1024)
              {
                v78 = 0;
                v79 = 8;
                v76 = 16;
              }
            }

            v93 = (v76 >> 2) - 1;
            v94 = (v79 >> 2) - 1;
            if ((v78 & 1) != 0 || (v95 = 32 - __clz(~(-1 << -__clz(v93))), v96 = 32 - __clz(~(-1 << -__clz(v94))), !(v96 | v95)))
            {
              v104 = 0;
            }

            else
            {
              v97 = 0;
              v98 = 0;
              v99 = v41 & v93;
              v100 = v24 & v94;
              v101 = v95 != 0;
              v102 = v96 != 0;
              v103 = 1;
              do
              {
                --v95;
                if (v101)
                {
                  v98 |= (v103 & v99) << v97++;
                }

                else
                {
                  v95 = 0;
                }

                --v96;
                if (v102)
                {
                  v98 |= (v103 & v100) << v97++;
                }

                else
                {
                  v96 = 0;
                }

                v103 *= 2;
                --v97;
                v102 = v96 != 0;
                v101 = v95 != 0;
              }

              while (v96 | v95);
              v104 = v98 << 11;
              result = v130;
            }

            v63 = v104 + ((v48 / v76 + v125 / v79 * ((v76 + v106) / v76)) << 14);
          }

          else if (v118)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v117.i8[0];
            v60 = v117.i8[4];
            v62 = v118.i32[0];
            v61 = v118.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v41) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v24) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 11;
          }

          else
          {
            v63 = 0;
          }

          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 3;
          if (v68 < 8)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 2) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v41) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v24) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v80 = (v122 + v63);
          if (v121)
          {
            v81 = v52;
            memcpy(__dst, (v122 + v63), sizeof(__dst));
            v52 = v81;
            result = v130;
            v80 = __dst;
          }

          v82 = (v123 + v75);
          v83 = (v124 + ((v50 - v43) << 7));
          if (!(v54 & 1 | (v53 < 4u)) && v128 > 3)
          {
            v44 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83, a11, v80, *v82)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83 + 16, a11, v44, v82[1]);
            v46 = (v83 + 2 * a11);
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46, a11, v45, v82[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, a11, v45 + v47, v82[3]);
LABEL_29:
            v43 = v127;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v80;
          v138 = v53;
          v139 = v128;
          v134 = v116;
          v135 = v50 - v48;
          block[6] = v82;
          v132 = v83;
          v133 = a11;
          v136 = v115;
          v137 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v84 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v141, 512, v80, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 512, v84, v82[1]);
          v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v85, v82[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v85 + v86, v82[3]);
          v87 = v136;
          v43 = v127;
          if (v136)
          {
            v88 = 0;
            v89 = &v141[32 * v134 + 8 * v135];
            v90 = v137;
            do
            {
              if (v90)
              {
                v91 = 0;
                v92 = v132 + v133 * v88;
                do
                {
                  v92[v91] = *(v89 + v91);
                  ++v91;
                  v90 = v137;
                }

                while (v137 << 7 > v91);
                v87 = v136;
              }

              ++v88;
              v89 += 32;
            }

            while (v88 < v87);
          }

LABEL_30:
          v28 = v41++ == v119 >> 2;
          result = v130;
        }

        while (!v28);
        v28 = v24++ == v112;
      }

      while (!v28);
    }
  }

  return result;
}