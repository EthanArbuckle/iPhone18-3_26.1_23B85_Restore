void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116, a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 64, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116 + 64, a11, v45, v91[3]);
            v47 = v92 + v115;
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v115, a11, v46, v91[4]);
            v49 = v92 + 6 * a11;
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 64, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 64, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116, a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 64, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v116 + 64, a11, v45, v91[3]);
            v47 = v92 + v115;
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + v115, a11, v46, v91[4]);
            v49 = v92 + 6 * a11;
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 64, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 64, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v155[24] = *MEMORY[0x29EDCA608];
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
                v110 = v104 << 10;
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
          v85 = v132 + 16 * (v48 - v35);
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v132 + 16 * (v48 - v35), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119, v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 64, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119 + 64, v24, v38, v84[3]);
            v40 = v85 + v118;
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v118, v24, v39, v84[4]);
            v42 = v85 + 6 * a11;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 64, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 64, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 16 * (v48 - v35);
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[128 * v141 + 16 * v142];
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

                while (16 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 128;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v155[24] = *MEMORY[0x29EDCA608];
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
                v110 = v104 << 10;
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
          v85 = v132 + 16 * (v48 - v35);
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v132 + 16 * (v48 - v35), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119, v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 64, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119 + 64, v24, v38, v84[3]);
            v40 = v85 + v118;
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v118, v24, v39, v84[4]);
            v42 = v85 + 6 * a11;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 64, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 64, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 16 * (v48 - v35);
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[128 * v141 + 16 * v142];
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

                while (16 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 128;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          v92 = (v129 + 16 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 64), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 4, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 4, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[8 * v137 + v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v135 + v136 * v101;
                do
                {
                  v105[v104] = v102->i8[v104];
                  ++v104;
                  v103 = v140;
                }

                while (16 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 8;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          v92 = (v129 + 16 * (v55 - v42));
          if (!(v59 & 1 | (v58 < 8u)) && v132 > 7)
          {
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 64), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 4, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 4, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
          v100 = v139;
          v42 = a7;
          v15 = v123;
          v52 = v40 + 1;
          if (v139)
          {
            v101 = 0;
            v102 = &v144[8 * v137 + v138];
            v103 = v140;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v135 + v136 * v101;
                do
                {
                  v105[v104] = v102->i8[v104];
                  ++v104;
                  v103 = v140;
                }

                while (16 * v140 > v104);
                v100 = v139;
              }

              ++v101;
              v102 += 8;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
                v110 = v104 << 10;
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
          v85 = (v132 + 16 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 16 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 4, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 64), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 4, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 4, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 16 * (v48 - v35);
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[8 * v141 + v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95->i8[v97];
                  ++v97;
                  v96 = v144;
                }

                while (16 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 8;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
                v110 = v104 << 10;
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
          v85 = (v132 + 16 * (v48 - v35));
          if (!(v52 & 1 | (v51 < 8u)) && v136 > 7)
          {
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 16 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 4, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 64), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 4, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 4, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v126;
          block[5] = v79;
          v145 = v51;
          v146 = v136;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v132 + 16 * (v48 - v35);
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
          v93 = v143;
          v35 = a7;
          v15 = v126;
          v45 = v33 + 1;
          if (v143)
          {
            v94 = 0;
            v95 = &v148[8 * v141 + v142];
            v96 = v144;
            do
            {
              if (v96)
              {
                v97 = 0;
                v98 = v139 + v140 * v94;
                do
                {
                  *(v98 + v97) = v95->i8[v97];
                  ++v97;
                  v96 = v144;
                }

                while (16 * v144 > v97);
                v93 = v143;
              }

              ++v94;
              v95 += 8;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v126 = v20;
  v127 = v21;
  v109 = v22;
  v23 = v12;
  v147 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v130 = v14;
  v111 = v14 + a10 - 1;
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
  v110 = v111 >> 2;
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
      v120 = v33 - 3;
      v114 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v108 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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
  v108 = 0;
  v114 = 0;
  v120 = 0;
LABEL_33:
  if (v25 <= v110)
  {
    v123 = v129 + a9 - 1;
    if (v129 >> 3 <= v123 >> 3)
    {
      v132 = v26 >> 3;
      v116 = v26 & 7;
      v121 = (v26 & 7) + 1;
      v106 = v27 & 3;
      v107 = v27 >> 2;
      v115 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v112 = v41;
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

        if (v111 < v42)
        {
          v42 = v111;
        }

        v119 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v106;
        v118 = v45;
        v47 = v45 != 4;
        v48 = v129 >> 3;
        v49 = v106 + 1;
        if (v25 != v107)
        {
          v49 = 4;
        }

        v131 = v49;
        if (v25 != v107)
        {
          v46 = v47;
        }

        v117 = v46;
        v128 = v109 + (v43 - v130) * a11;
        v50 = v129;
        do
        {
          v55 = 8 * v48;
          v56 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = 8 * v48;
          }

          if (v123 < v56)
          {
            v56 = v129 + a9 - 1;
          }

          v58 = v56 - v57;
          v59 = v58 + 1;
          if (v48 == v132)
          {
            v60 = v121;
          }

          else
          {
            v60 = 8;
          }

          v61 = 1;
          if (4 * v25 >= v130 && v55 >= v50)
          {
            v62 = v58 != v116;
            if (v48 != v132)
            {
              v62 = v59 != 8;
            }

            v61 = v62 || v117;
          }

          if (v124)
          {
            if (v120 | v114)
            {
              v63 = 0;
              v64 = 0;
              v65 = v120 != 0;
              v66 = 1;
              v68 = v114 != 0;
              v67 = v114;
              v69 = v120;
              do
              {
                --v67;
                if (v68)
                {
                  v64 |= (v25 & ~(-1 << v114) & v66) << v63++;
                }

                else
                {
                  v67 = 0;
                }

                --v69;
                if (v65)
                {
                  v64 |= (v48 & ~(-1 << v120) & v66) << v63++;
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

            v78 = v70 + *(v23 + 336) * ((v48 >> v120) + (v25 >> v114) * v108);
          }

          else if (v113)
          {
            v71 = 0;
            v72 = 0;
            v73 = 1;
            v75 = v112.i8[0];
            v74 = v112.i8[4];
            v76 = v113.i32[0];
            v77 = v113.i32[1];
            do
            {
              --v76;
              if (v75)
              {
                v72 |= (v73 & v25) << v71++;
              }

              else
              {
                v76 = 0;
              }

              --v77;
              if (v74)
              {
                v72 |= (v73 & v48) << v71++;
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

          v79 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v82 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 3;
          if (v83 < 8)
          {
            v84 = 0;
            if (!v81)
            {
LABEL_107:
              v90 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 2) - 1)));
            if (!(v84 | v81))
            {
              goto LABEL_107;
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
              v86 |= (v89 & v48) << v85++;
            }

            else
            {
              v81 = 0;
            }

            --v84;
            if (v88)
            {
              v86 |= (v89 & v25) << v85++;
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
LABEL_108:
          v91 = (v126 + v78);
          if (v125)
          {
            v92 = v60;
            v93 = v57;
            v94 = v50;
            memcpy(__dst, (v126 + v78), sizeof(__dst));
            v50 = v94;
            v57 = v93;
            v60 = v92;
            v91 = __dst;
          }

          v95 = (v127 + v90);
          v96 = (v128 + ((v57 - v50) << 6));
          if (!(v61 & 1 | (v60 < 8u)) && v131 > 3)
          {
            v51 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96, a11, v91, *v95)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115), a11, v51, v95[1]);
            v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96 + 16, a11, v52, v95[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115 + 256), a11, v52 + v53, v95[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v54 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v91;
          v140 = v60;
          v141 = v131;
          v136 = v119;
          v137 = v57 - v55;
          block[6] = v95;
          v134 = v128 + ((v57 - v50) << 6);
          v135 = a11;
          v138 = v118;
          v139 = v59;
          if (v61)
          {
            dispatch_sync(*(*(v122 + 8) + 16552), block);
            v50 = v129;
            v23 = v122;
            goto LABEL_49;
          }

          v97 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v91, *v95)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 512, v97, v95[1]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v98, v95[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 512, v98 + v99, v95[3]);
          v100 = v138;
          v50 = v129;
          v23 = v122;
          v54 = v48 + 1;
          if (v138)
          {
            v101 = 0;
            v102 = &v143[32 * v136 + 4 * v137];
            v103 = v139;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v134 + v135 * v101;
                do
                {
                  *(v105 + v104) = *(v102 + v104);
                  ++v104;
                  v103 = v139;
                }

                while (v139 << 6 > v104);
                v100 = v138;
              }

              ++v101;
              v102 += 32;
            }

            while (v101 < v100);
          }

LABEL_50:
          v28 = v48 == v123 >> 3;
          v48 = v54;
        }

        while (!v28);
        v28 = v25++ == v110;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v126 = v20;
  v127 = v21;
  v109 = v22;
  v23 = v12;
  v147 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v130 = v14;
  v111 = v14 + a10 - 1;
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
  v110 = v111 >> 2;
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
      v120 = v33 - 3;
      v114 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v108 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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
  v108 = 0;
  v114 = 0;
  v120 = 0;
LABEL_33:
  if (v25 <= v110)
  {
    v123 = v129 + a9 - 1;
    if (v129 >> 3 <= v123 >> 3)
    {
      v132 = v26 >> 3;
      v116 = v26 & 7;
      v121 = (v26 & 7) + 1;
      v106 = v27 & 3;
      v107 = v27 >> 2;
      v115 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v112 = v41;
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

        if (v111 < v42)
        {
          v42 = v111;
        }

        v119 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v106;
        v118 = v45;
        v47 = v45 != 4;
        v48 = v129 >> 3;
        v49 = v106 + 1;
        if (v25 != v107)
        {
          v49 = 4;
        }

        v131 = v49;
        if (v25 != v107)
        {
          v46 = v47;
        }

        v117 = v46;
        v128 = v109 + (v43 - v130) * a11;
        v50 = v129;
        do
        {
          v55 = 8 * v48;
          v56 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = 8 * v48;
          }

          if (v123 < v56)
          {
            v56 = v129 + a9 - 1;
          }

          v58 = v56 - v57;
          v59 = v58 + 1;
          if (v48 == v132)
          {
            v60 = v121;
          }

          else
          {
            v60 = 8;
          }

          v61 = 1;
          if (4 * v25 >= v130 && v55 >= v50)
          {
            v62 = v58 != v116;
            if (v48 != v132)
            {
              v62 = v59 != 8;
            }

            v61 = v62 || v117;
          }

          if (v124)
          {
            if (v120 | v114)
            {
              v63 = 0;
              v64 = 0;
              v65 = v120 != 0;
              v66 = 1;
              v68 = v114 != 0;
              v67 = v114;
              v69 = v120;
              do
              {
                --v67;
                if (v68)
                {
                  v64 |= (v25 & ~(-1 << v114) & v66) << v63++;
                }

                else
                {
                  v67 = 0;
                }

                --v69;
                if (v65)
                {
                  v64 |= (v48 & ~(-1 << v120) & v66) << v63++;
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

            v78 = v70 + *(v23 + 336) * ((v48 >> v120) + (v25 >> v114) * v108);
          }

          else if (v113)
          {
            v71 = 0;
            v72 = 0;
            v73 = 1;
            v75 = v112.i8[0];
            v74 = v112.i8[4];
            v76 = v113.i32[0];
            v77 = v113.i32[1];
            do
            {
              --v76;
              if (v75)
              {
                v72 |= (v73 & v25) << v71++;
              }

              else
              {
                v76 = 0;
              }

              --v77;
              if (v74)
              {
                v72 |= (v73 & v48) << v71++;
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

          v79 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v82 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 3;
          if (v83 < 8)
          {
            v84 = 0;
            if (!v81)
            {
LABEL_107:
              v90 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 2) - 1)));
            if (!(v84 | v81))
            {
              goto LABEL_107;
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
              v86 |= (v89 & v48) << v85++;
            }

            else
            {
              v81 = 0;
            }

            --v84;
            if (v88)
            {
              v86 |= (v89 & v25) << v85++;
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
LABEL_108:
          v91 = (v126 + v78);
          if (v125)
          {
            v92 = v60;
            v93 = v57;
            v94 = v50;
            memcpy(__dst, (v126 + v78), sizeof(__dst));
            v50 = v94;
            v57 = v93;
            v60 = v92;
            v91 = __dst;
          }

          v95 = (v127 + v90);
          v96 = (v128 + ((v57 - v50) << 6));
          if (!(v61 & 1 | (v60 < 8u)) && v131 > 3)
          {
            v51 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96, a11, v91, *v95)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115), a11, v51, v95[1]);
            v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96 + 16, a11, v52, v95[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115 + 256), a11, v52 + v53, v95[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v54 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v91;
          v140 = v60;
          v141 = v131;
          v136 = v119;
          v137 = v57 - v55;
          block[6] = v95;
          v134 = v128 + ((v57 - v50) << 6);
          v135 = a11;
          v138 = v118;
          v139 = v59;
          if (v61)
          {
            dispatch_sync(*(*(v122 + 8) + 16552), block);
            v50 = v129;
            v23 = v122;
            goto LABEL_49;
          }

          v97 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v91, *v95)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 512, v97, v95[1]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v98, v95[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 512, v98 + v99, v95[3]);
          v100 = v138;
          v50 = v129;
          v23 = v122;
          v54 = v48 + 1;
          if (v138)
          {
            v101 = 0;
            v102 = &v143[32 * v136 + 4 * v137];
            v103 = v139;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v134 + v135 * v101;
                do
                {
                  *(v105 + v104) = *(v102 + v104);
                  ++v104;
                  v103 = v139;
                }

                while (v139 << 6 > v104);
                v100 = v138;
              }

              ++v101;
              v102 += 32;
            }

            while (v101 < v100);
          }

LABEL_50:
          v28 = v48 == v123 >> 3;
          v48 = v54;
        }

        while (!v28);
        v28 = v25++ == v110;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v127 = v15;
  v17 = v16;
  v19 = v18;
  v122 = v20;
  v123 = v21;
  v110 = v22;
  v23 = v12;
  v145 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v126 = v14;
  v24 = v14 >> 2;
  v109 = v14 + a10 - 1;
  v111 = v109 >> 2;
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
  if (v24 <= v111)
  {
    v119 = v127 + a9 - 1;
    if (v127 >> 3 <= v119 >> 3)
    {
      result = v23;
      v129 = (v19 - 1) >> 3;
      v108 = (v17 - 1) >> 2;
      v105 = v19 - 1;
      v113 = (v19 - 1) & 7;
      v106 = ((v17 - 1) & 3) + 1;
      v107 = (v17 - 1) & 3;
      v112 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v118 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v117 = v34;
      v104 = 8 * v26 * v25;
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

        if (v109 < v35)
        {
          v35 = v109;
        }

        v125 = 4 * v24;
        v116 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v107;
        v115 = v38;
        v40 = v38 != 4;
        v41 = v127 >> 3;
        v42 = v106;
        if (v24 != v108)
        {
          v42 = 4;
        }

        v128 = v42;
        if (v24 != v108)
        {
          v39 = v40;
        }

        v114 = v39;
        v124 = v110 + (v36 - v126) * a11;
        v43 = v127;
        do
        {
          v47 = 8 * v41;
          v48 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v49 = v43;
          }

          else
          {
            v49 = 8 * v41;
          }

          if (v119 < v48)
          {
            v48 = v127 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v41 == v129)
          {
            v52 = v113 + 1;
          }

          else
          {
            v52 = 8;
          }

          v53 = 1;
          if (v125 >= v126 && v47 >= v43)
          {
            v54 = v50 != v113;
            if (v41 != v129)
            {
              v54 = v51 != 8;
            }

            v53 = v54 || v114;
          }

          if (v120)
          {
            v75 = 0;
            v76 = v104 >> (*(result + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v75 = 64;
                    v78 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v75 = 128;
                  v78 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v75 = 32;
                  v78 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v77 = 0;
              v75 = 16;
              v78 = 16;
            }

            else
            {
              v78 = 0;
              if (v76 == 1024)
              {
                v77 = 0;
                v78 = 8;
                v75 = 16;
              }
            }

            v92 = (v75 >> 3) - 1;
            v93 = (v78 >> 2) - 1;
            if ((v77 & 1) != 0 || (v94 = 32 - __clz(~(-1 << -__clz(v92))), v95 = 32 - __clz(~(-1 << -__clz(v93))), !(v95 | v94)))
            {
              v103 = 0;
            }

            else
            {
              v96 = 0;
              v97 = 0;
              v98 = v41 & v92;
              v99 = v24 & v93;
              v100 = v95 != 0;
              v101 = v94 != 0;
              v102 = 1;
              do
              {
                --v95;
                if (v100)
                {
                  v97 |= (v102 & v99) << v96++;
                }

                else
                {
                  v95 = 0;
                }

                --v94;
                if (v101)
                {
                  v97 |= (v102 & v98) << v96++;
                }

                else
                {
                  v94 = 0;
                }

                v102 *= 2;
                --v96;
                v101 = v94 != 0;
                v100 = v95 != 0;
              }

              while (v94 | v95);
              v103 = v97 << 11;
              result = v130;
            }

            v62 = v103 + ((v47 / v75 + v125 / v78 * ((v75 + v105) / v75)) << 14);
          }

          else if (v118)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v117.i8[0];
            v58 = v117.i8[4];
            v60 = v118.i32[0];
            v61 = v118.i32[1];
            do
            {
              --v60;
              if (v59)
              {
                v56 |= (v57 & v24) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v58)
              {
                v56 |= (v57 & v41) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v58 = v61 != 0;
              v59 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 11;
          }

          else
          {
            v62 = 0;
          }

          v63 = *(result + 128) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 7;
          if (v64 < 0x10)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
          }

          v66 = *(result + 132) >> (*(result + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 3;
          if (v67 < 8)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_81:
              v74 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 2) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_81;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v41) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v24) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_82:
          v79 = (v122 + v62);
          if (v121)
          {
            v80 = v51;
            memcpy(__dst, (v122 + v62), sizeof(__dst));
            v51 = v80;
            result = v130;
            v79 = __dst;
          }

          v81 = (v123 + v74);
          v82 = (v124 + ((v49 - v43) << 6));
          if (!(v53 & 1 | (v52 < 8u)) && v128 > 3)
          {
            v44 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v82, a11, v79, *v81)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v82 + v112), a11, v44, v81[1]);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v82 + 16, a11, v45, v81[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v82 + v112 + 256), a11, v45 + v46, v81[3]);
LABEL_29:
            v43 = v127;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v79;
          v138 = v52;
          v139 = v128;
          v134 = v116;
          v135 = v49 - v47;
          block[6] = v81;
          v132 = v82;
          v133 = a11;
          v136 = v115;
          v137 = v51;
          if (v53)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v83 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v141, 512, v79, *v81)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v83, v81[1]);
          v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 512, v84, v81[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v84 + v85, v81[3]);
          v86 = v136;
          v43 = v127;
          if (v136)
          {
            v87 = 0;
            v88 = &v141[32 * v134 + 4 * v135];
            v89 = v137;
            do
            {
              if (v89)
              {
                v90 = 0;
                v91 = v132 + v133 * v87;
                do
                {
                  v91[v90] = *(v88 + v90);
                  ++v90;
                  v89 = v137;
                }

                while (v137 << 6 > v90);
                v86 = v136;
              }

              ++v87;
              v88 += 32;
            }

            while (v87 < v86);
          }

LABEL_30:
          v28 = v41++ == v119 >> 3;
          result = v130;
        }

        while (!v28);
        v28 = v24++ == v111;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v127 = v15;
  v17 = v16;
  v19 = v18;
  v122 = v20;
  v123 = v21;
  v110 = v22;
  v23 = v12;
  v145 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v126 = v14;
  v24 = v14 >> 2;
  v109 = v14 + a10 - 1;
  v111 = v109 >> 2;
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
  if (v24 <= v111)
  {
    v119 = v127 + a9 - 1;
    if (v127 >> 3 <= v119 >> 3)
    {
      result = v23;
      v129 = (v19 - 1) >> 3;
      v108 = (v17 - 1) >> 2;
      v105 = v19 - 1;
      v113 = (v19 - 1) & 7;
      v106 = ((v17 - 1) & 3) + 1;
      v107 = (v17 - 1) & 3;
      v112 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v118 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v117 = v34;
      v104 = 8 * v26 * v25;
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

        if (v109 < v35)
        {
          v35 = v109;
        }

        v125 = 4 * v24;
        v116 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v107;
        v115 = v38;
        v40 = v38 != 4;
        v41 = v127 >> 3;
        v42 = v106;
        if (v24 != v108)
        {
          v42 = 4;
        }

        v128 = v42;
        if (v24 != v108)
        {
          v39 = v40;
        }

        v114 = v39;
        v124 = v110 + (v36 - v126) * a11;
        v43 = v127;
        do
        {
          v47 = 8 * v41;
          v48 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v49 = v43;
          }

          else
          {
            v49 = 8 * v41;
          }

          if (v119 < v48)
          {
            v48 = v127 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v41 == v129)
          {
            v52 = v113 + 1;
          }

          else
          {
            v52 = 8;
          }

          v53 = 1;
          if (v125 >= v126 && v47 >= v43)
          {
            v54 = v50 != v113;
            if (v41 != v129)
            {
              v54 = v51 != 8;
            }

            v53 = v54 || v114;
          }

          if (v120)
          {
            v75 = 0;
            v76 = v104 >> (*(result + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v75 = 64;
                    v78 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v75 = 128;
                  v78 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v75 = 32;
                  v78 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v77 = 0;
              v75 = 16;
              v78 = 16;
            }

            else
            {
              v78 = 0;
              if (v76 == 1024)
              {
                v77 = 0;
                v78 = 8;
                v75 = 16;
              }
            }

            v92 = (v75 >> 3) - 1;
            v93 = (v78 >> 2) - 1;
            if ((v77 & 1) != 0 || (v94 = 32 - __clz(~(-1 << -__clz(v92))), v95 = 32 - __clz(~(-1 << -__clz(v93))), !(v95 | v94)))
            {
              v103 = 0;
            }

            else
            {
              v96 = 0;
              v97 = 0;
              v98 = v41 & v92;
              v99 = v24 & v93;
              v100 = v95 != 0;
              v101 = v94 != 0;
              v102 = 1;
              do
              {
                --v95;
                if (v100)
                {
                  v97 |= (v102 & v99) << v96++;
                }

                else
                {
                  v95 = 0;
                }

                --v94;
                if (v101)
                {
                  v97 |= (v102 & v98) << v96++;
                }

                else
                {
                  v94 = 0;
                }

                v102 *= 2;
                --v96;
                v101 = v94 != 0;
                v100 = v95 != 0;
              }

              while (v94 | v95);
              v103 = v97 << 11;
              result = v130;
            }

            v62 = v103 + ((v47 / v75 + v125 / v78 * ((v75 + v105) / v75)) << 14);
          }

          else if (v118)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v117.i8[0];
            v58 = v117.i8[4];
            v60 = v118.i32[0];
            v61 = v118.i32[1];
            do
            {
              --v60;
              if (v59)
              {
                v56 |= (v57 & v24) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v58)
              {
                v56 |= (v57 & v41) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v58 = v61 != 0;
              v59 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 11;
          }

          else
          {
            v62 = 0;
          }

          v63 = *(result + 128) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 7;
          if (v64 < 0x10)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
          }

          v66 = *(result + 132) >> (*(result + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 3;
          if (v67 < 8)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_81:
              v74 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 2) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_81;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v41) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v24) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_82:
          v79 = (v122 + v62);
          if (v121)
          {
            v80 = v51;
            memcpy(__dst, (v122 + v62), sizeof(__dst));
            v51 = v80;
            result = v130;
            v79 = __dst;
          }

          v81 = (v123 + v74);
          v82 = (v124 + ((v49 - v43) << 6));
          if (!(v53 & 1 | (v52 < 8u)) && v128 > 3)
          {
            v44 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v82, a11, v79, *v81)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v82 + v112), a11, v44, v81[1]);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v82 + 16, a11, v45, v81[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v82 + v112 + 256), a11, v45 + v46, v81[3]);
LABEL_29:
            v43 = v127;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v79;
          v138 = v52;
          v139 = v128;
          v134 = v116;
          v135 = v49 - v47;
          block[6] = v81;
          v132 = v82;
          v133 = a11;
          v136 = v115;
          v137 = v51;
          if (v53)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v83 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v141, 512, v79, *v81)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 512, v83, v81[1]);
          v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 512, v84, v81[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 512, v84 + v85, v81[3]);
          v86 = v136;
          v43 = v127;
          if (v136)
          {
            v87 = 0;
            v88 = &v141[32 * v134 + 4 * v135];
            v89 = v137;
            do
            {
              if (v89)
              {
                v90 = 0;
                v91 = v132 + v133 * v87;
                do
                {
                  v91[v90] = *(v88 + v90);
                  ++v90;
                  v89 = v137;
                }

                while (v137 << 6 > v90);
                v86 = v136;
              }

              ++v87;
              v88 += 32;
            }

            while (v87 < v86);
          }

LABEL_30:
          v28 = v41++ == v119 >> 3;
          result = v130;
        }

        while (!v28);
        v28 = v24++ == v111;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8 + a10 - 1;
  if (*(a1 + 168))
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
  v200 = v201 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v216 = v23;
  if (*(a1 + 232) == 1)
  {
    v24 = *(a1 + 273);
    v25 = *(a1 + 272);
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
      v215 = 0;
LABEL_32:
      v212 = v25 - 3;
      v204 = v24 - 2;
      v31 = -1 << *(*(a1 + 208) + 48);
      v198 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v215 = v30 >= v24;
    goto LABEL_32;
  }

  v215 = 0;
  v198 = 0;
  v204 = 0;
  v212 = 0;
LABEL_33:
  if (v17 <= v200)
  {
    v214 = a7 + a9 - 1;
    if (a7 >> 3 <= v214 >> 3)
    {
      v222 = v18 >> 3;
      v207 = v18 & 7;
      v213 = (v18 & 7) + 1;
      v196 = v19 & 3;
      v197 = v19 >> 2;
      v206 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v33.i8 = vcgt_u32(v32, 0xF00000007);
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v33.i8);
      v203 = v34.i64[0];
      v205 = v34.i32[0] | v34.i32[1];
      v202 = v33.i64[0];
      v208 = a8;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= a8)
        {
          v36 = a8;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v201 < v35)
        {
          v35 = v201;
        }

        v211 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v196;
        v210 = v38;
        v40 = v38 != 4;
        v41 = a7 >> 3;
        v42 = v196 + 1;
        if (v17 != v197)
        {
          v42 = 4;
        }

        v221 = v42;
        if (v17 == v197)
        {
          v43 = v39;
        }

        else
        {
          v43 = v40;
        }

        v209 = v43;
        v219 = a2 + (v36 - a8) * a11;
        v44 = a7;
        do
        {
          v48 = 8 * v41;
          v49 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v44)
          {
            v50 = v44;
          }

          else
          {
            v50 = 8 * v41;
          }

          if (v214 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v49 - v50 + 1;
          if (v41 == v222)
          {
            v53 = v213;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (4 * v17 >= a8 && v48 >= v44)
          {
            v55 = v51 != v207;
            if (v41 != v222)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v209;
          }

          if (v215)
          {
            if (v212 | v204)
            {
              v56 = 0;
              v57 = 0;
              v58 = v212 != 0;
              v59 = 1;
              v60 = v204 != 0;
              v61 = v204;
              v62 = v212;
              do
              {
                --v61;
                if (v60)
                {
                  v57 |= (v17 & ~(-1 << v204) & v59) << v56++;
                }

                else
                {
                  v61 = 0;
                }

                --v62;
                if (v58)
                {
                  v57 |= (v41 & ~(-1 << v212) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v62 != 0;
                v60 = v61 != 0;
              }

              while (v62 | v61);
              v63 = v57 << 8;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(a1 + 336) * ((v41 >> v212) + (v17 >> v204) * v198);
          }

          else if (v205)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v68 = v202;
            v67 = BYTE4(v202);
            v69 = v203;
            v70 = HIDWORD(v203);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v17) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v41) << v64++;
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
            v71 = v65 << 8;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v75 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 3;
          if (v76 < 8)
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
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 2) - 1)));
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
              v79 |= (v82 & v41) << v78++;
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
          if (v216)
          {
            v85 = v84[13];
            v232[12] = v84[12];
            v232[13] = v85;
            v86 = v84[15];
            v232[14] = v84[14];
            v232[15] = v86;
            v87 = v84[9];
            v232[8] = v84[8];
            v232[9] = v87;
            v88 = v84[11];
            v232[10] = v84[10];
            v232[11] = v88;
            v89 = v84[5];
            v232[4] = v84[4];
            v232[5] = v89;
            v90 = v84[7];
            v232[6] = v84[6];
            v232[7] = v90;
            v91 = v84[1];
            v232[0] = *v84;
            v232[1] = v91;
            v34 = v84[2];
            v33 = v84[3];
            v84 = v232;
            v232[2] = v34;
            v232[3] = v33;
          }

          v92 = (a4 + v83);
          v93 = (v219 + 8 * (v50 - v44));
          if (v54 & 1 | (v53 < 8u) || v221 <= 3)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v84;
            v230 = v53;
            v231 = v221;
            v226 = v211;
            v227 = v50 - v48;
            block[6] = a4 + v83;
            v224 = v93;
            v225 = a11;
            v228 = v210;
            v229 = v52;
            if (v54)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v44 = a7;
              goto LABEL_50;
            }

            v97 = *v92;
            if (v97 == 96)
            {
              v34 = vld1q_dup_s8(v84->i8);
              v233 = v34;
              v237 = v34;
              v98 = 1;
            }

            else if (v97 == 31)
            {
              v34.i64[0] = v84->i64[0];
              v33.i64[0] = v84->i64[1];
              v154 = v84[1].i64[0];
              v155 = v84[1].i64[1];
              v233.i64[0] = v84->i64[0];
              v233.i64[1] = v33.i64[0];
              v237.i64[0] = v154;
              v237.i64[1] = v155;
              v98 = 32;
            }

            else if (*v92)
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v84, v97, *v34.i64, *v33.i8);
            }

            else
            {
              v98 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
            }

            v156 = v84->i64 + v98;
            v157 = v92[1];
            if (v157 == 96)
            {
              v34 = vld1q_dup_s8(v156);
              v234 = v34;
              v238 = v34;
              v158 = 1;
            }

            else if (v157 == 31)
            {
              v34.i64[0] = *v156;
              v33.i64[0] = *(v156 + 8);
              v159 = *(v156 + 16);
              v160 = *(v156 + 24);
              v234.i64[0] = *v156;
              v234.i64[1] = v33.i64[0];
              v238.i64[0] = v159;
              v238.i64[1] = v160;
              v158 = 32;
            }

            else if (v92[1])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v156, v157, *v34.i64, *v33.i8);
            }

            else
            {
              v158 = 0;
              v234 = 0uLL;
              v238 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v92[2];
            if (v162 == 96)
            {
              v34 = vld1q_dup_s8(v161);
              v241 = v34;
              v245 = v34;
              v163 = 1;
            }

            else if (v162 == 31)
            {
              v34.i64[0] = *v161;
              v33.i64[0] = *(v161 + 8);
              v164 = *(v161 + 16);
              v165 = *(v161 + 24);
              v241.i64[0] = *v161;
              v241.i64[1] = v33.i64[0];
              v245.i64[0] = v164;
              v245.i64[1] = v165;
              v163 = 32;
            }

            else if (v92[2])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 64, v161, v162, *v34.i64, *v33.i8);
            }

            else
            {
              v163 = 0;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v92[3];
            if (v167 == 96)
            {
              v34 = vld1q_dup_s8(v166);
              v242 = v34;
              v246 = v34;
              v168 = 1;
            }

            else if (v167 == 31)
            {
              v34.i64[0] = *v166;
              v33.i64[0] = *(v166 + 8);
              v169 = *(v166 + 16);
              v170 = *(v166 + 24);
              v242.i64[0] = *v166;
              v242.i64[1] = v33.i64[0];
              v246.i64[0] = v169;
              v246.i64[1] = v170;
              v168 = 32;
            }

            else if (v92[3])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v166, v167, *v34.i64, *v33.i8);
            }

            else
            {
              v168 = 0;
              v242 = 0uLL;
              v246 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v92[4];
            if (v172 == 96)
            {
              v34 = vld1q_dup_s8(v171);
              v235 = v34;
              v239 = v34;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v34.i64[0] = *v171;
              v33.i64[0] = *(v171 + 8);
              v174 = *(v171 + 16);
              v175 = *(v171 + 24);
              v235.i64[0] = *v171;
              v235.i64[1] = v33.i64[0];
              v239.i64[0] = v174;
              v239.i64[1] = v175;
              v173 = 32;
            }

            else if (v92[4])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 64, v171, v172, *v34.i64, *v33.i8);
            }

            else
            {
              v173 = 0;
              v235 = 0uLL;
              v239 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v92[5];
            if (v177 == 96)
            {
              v34 = vld1q_dup_s8(v176);
              v236 = v34;
              v240 = v34;
              v178 = 1;
            }

            else if (v177 == 31)
            {
              v34.i64[0] = *v176;
              v33.i64[0] = *(v176 + 8);
              v179 = *(v176 + 16);
              v180 = *(v176 + 24);
              v236.i64[0] = *v176;
              v236.i64[1] = v33.i64[0];
              v240.i64[0] = v179;
              v240.i64[1] = v180;
              v178 = 32;
            }

            else if (v92[5])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 64, v176, v177, *v34.i64, *v33.i8);
            }

            else
            {
              v178 = 0;
              v236 = 0uLL;
              v240 = 0uLL;
            }

            v181 = v176 + v178;
            v182 = v92[6];
            if (v182 == 96)
            {
              v34 = vld1q_dup_s8(v181);
              v243 = v34;
              v247 = v34;
              v183 = 1;
            }

            else if (v182 == 31)
            {
              v34.i64[0] = *v181;
              v33.i64[0] = *(v181 + 8);
              v184 = *(v181 + 16);
              v185 = *(v181 + 24);
              v243.i64[0] = *v181;
              v243.i64[1] = v33.i64[0];
              v247.i64[0] = v184;
              v247.i64[1] = v185;
              v183 = 32;
            }

            else if (v92[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v181, v182, *v34.i64, *v33.i8);
            }

            else
            {
              v183 = 0;
              v243 = 0uLL;
              v247 = 0uLL;
            }

            v186 = v181 + v183;
            v187 = v92[7];
            if (v187 == 96)
            {
              v34 = vld1q_dup_s8(v186);
              v244 = v34;
              v248 = v34;
              v44 = a7;
              v188 = v228;
              if (!v228)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v44 = a7;
              if (v187 == 31)
              {
                v34.i64[0] = *v186;
                v33.i64[0] = *(v186 + 8);
                v189 = *(v186 + 16);
                v190 = *(v186 + 24);
                v244.i64[0] = *v186;
                v244.i64[1] = v33.i64[0];
                v248.i64[0] = v189;
                v248.i64[1] = v190;
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }

              else if (v92[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v186, v187, *v34.i64, *v33.i8);
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v244 = 0uLL;
                v248 = 0uLL;
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }
            }

            v191 = 0;
            v192 = &v233.i8[64 * v226 + 8 * v227];
            v193 = v229;
            do
            {
              if (v193)
              {
                v194 = 0;
                v195 = &v224->i8[v225 * v191];
                do
                {
                  v195[v194] = v192[v194];
                  ++v194;
                  v193 = v229;
                }

                while (8 * v229 > v194);
                v188 = v228;
              }

              ++v191;
              v192 += 64;
            }

            while (v191 < v188);
          }

          else
          {
            v94 = *v92;
            if (v94 == 96)
            {
              v34 = vld1q_dup_s8(v84->i8);
              *v93 = v34;
              *(v93 + a11) = v34;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v34.i64[0] = v84->i64[0];
              v33.i64[0] = v84->i64[1];
              v99 = v84[1].i64[0];
              v100 = v84[1].i64[1];
              v93->i64[0] = v84->i64[0];
              v93->i64[1] = v33.i64[0];
              v101 = (v93->i64 + a11);
              *v101 = v99;
              v101[1] = v100;
              v95 = 32;
            }

            else if (*v92)
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v93, a11, v84, v94, *v34.i64, *v33.i8);
            }

            else
            {
              v95 = 0;
              v93->i64[0] = 0;
              v93->i64[1] = 0;
              v96 = (v93->i64 + a11);
              *v96 = 0;
              v96[1] = 0;
            }

            v102 = v84->i64 + v95;
            v103 = v93 + 1;
            v104 = v92[1];
            if (v104 == 96)
            {
              v34 = vld1q_dup_s8(v102);
              *v103 = v34;
              *(v103 + a11) = v34;
              v105 = 1;
            }

            else if (v104 == 31)
            {
              v34.i64[0] = *v102;
              v33.i64[0] = *(v102 + 8);
              v107 = *(v102 + 16);
              v108 = *(v102 + 24);
              v93[1].i64[0] = *v102;
              v93[1].i64[1] = v33.i64[0];
              v109 = (v103->i64 + a11);
              *v109 = v107;
              v109[1] = v108;
              v105 = 32;
            }

            else if (v92[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, a11, v102, v104, *v34.i64, *v33.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v93[1].i64[1] = 0;
              v106 = (v103->i64 + a11);
              *v106 = 0;
              v106[1] = 0;
            }

            v110 = v102 + v105;
            v111 = (v93 + v206);
            v112 = v92[2];
            if (v112 == 96)
            {
              v34 = vld1q_dup_s8(v110);
              *v111 = v34;
              *(v111 + a11) = v34;
              v113 = 1;
            }

            else if (v112 == 31)
            {
              v34.i64[0] = *v110;
              v33.i64[0] = *(v110 + 8);
              v115 = *(v110 + 16);
              v116 = *(v110 + 24);
              v111->i64[0] = *v110;
              v111->i64[1] = v33.i64[0];
              v117 = (v111->i64 + a11);
              *v117 = v115;
              v117[1] = v116;
              v113 = 32;
            }

            else if (v92[2])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v93 + v206), a11, v110, v112, *v34.i64, *v33.i8);
            }

            else
            {
              v113 = 0;
              v111->i64[0] = 0;
              v111->i64[1] = 0;
              v114 = (v111->i64 + a11);
              *v114 = 0;
              v114[1] = 0;
            }

            v118 = v110 + v113;
            v119 = v111 + 1;
            v120 = v92[3];
            if (v120 == 96)
            {
              v34 = vld1q_dup_s8(v118);
              *v119 = v34;
              *(v119 + a11) = v34;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v34.i64[0] = *v118;
              v33.i64[0] = *(v118 + 8);
              v123 = *(v118 + 16);
              v124 = *(v118 + 24);
              v111[1].i64[0] = *v118;
              v111[1].i64[1] = v33.i64[0];
              v125 = (v119->i64 + a11);
              *v125 = v123;
              v125[1] = v124;
              v121 = 32;
            }

            else if (v92[3])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v119, a11, v118, v120, *v34.i64, *v33.i8);
            }

            else
            {
              v121 = 0;
              v119->i64[0] = 0;
              v111[1].i64[1] = 0;
              v122 = (v119->i64 + a11);
              *v122 = 0;
              v122[1] = 0;
            }

            v126 = v118 + v121;
            v127 = v93 + 2;
            v128 = v92[4];
            if (v128 == 96)
            {
              v34 = vld1q_dup_s8(v126);
              *v127 = v34;
              *(v127 + a11) = v34;
              v129 = 1;
            }

            else if (v128 == 31)
            {
              v34.i64[0] = *v126;
              v33.i64[0] = *(v126 + 8);
              v131 = *(v126 + 16);
              v132 = *(v126 + 24);
              v93[2].i64[0] = *v126;
              v93[2].i64[1] = v33.i64[0];
              v133 = (v127->i64 + a11);
              *v133 = v131;
              v133[1] = v132;
              v129 = 32;
            }

            else if (v92[4])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, a11, v126, v128, *v34.i64, *v33.i8);
            }

            else
            {
              v129 = 0;
              v127->i64[0] = 0;
              v93[2].i64[1] = 0;
              v130 = (v127->i64 + a11);
              *v130 = 0;
              v130[1] = 0;
            }

            v134 = v126 + v129;
            v135 = v93 + 3;
            v136 = v92[5];
            if (v136 == 96)
            {
              v34 = vld1q_dup_s8(v134);
              *v135 = v34;
              *(v135 + a11) = v34;
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v34.i64[0] = *v134;
              v33.i64[0] = *(v134 + 8);
              v139 = *(v134 + 16);
              v140 = *(v134 + 24);
              v93[3].i64[0] = *v134;
              v93[3].i64[1] = v33.i64[0];
              v141 = (v135->i64 + a11);
              *v141 = v139;
              v141[1] = v140;
              v137 = 32;
            }

            else if (v92[5])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *v34.i64, *v33.i8);
            }

            else
            {
              v137 = 0;
              v135->i64[0] = 0;
              v93[3].i64[1] = 0;
              v138 = (v135->i64 + a11);
              *v138 = 0;
              v138[1] = 0;
            }

            v142 = v134 + v137;
            v143 = v111 + 2;
            v144 = v92[6];
            if (v144 == 96)
            {
              v34 = vld1q_dup_s8(v142);
              *v143 = v34;
              *(v143 + a11) = v34;
              v145 = 1;
              a8 = v208;
            }

            else
            {
              a8 = v208;
              if (v144 == 31)
              {
                v34.i64[0] = *v142;
                v33.i64[0] = *(v142 + 8);
                v147 = *(v142 + 16);
                v148 = *(v142 + 24);
                v111[2].i64[0] = *v142;
                v111[2].i64[1] = v33.i64[0];
                v149 = (v143->i64 + a11);
                *v149 = v147;
                v149[1] = v148;
                v145 = 32;
              }

              else if (v92[6])
              {
                v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v143, a11, v142, v144, *v34.i64, *v33.i8);
              }

              else
              {
                v145 = 0;
                v143->i64[0] = 0;
                v111[2].i64[1] = 0;
                v146 = (v143->i64 + a11);
                *v146 = 0;
                v146[1] = 0;
              }
            }

            v150 = v142 + v145;
            v151 = v111 + 3;
            v152 = v92[7];
            if (v152 == 96)
            {
              v34 = vld1q_dup_s8(v150);
              *v151 = v34;
              *(v151 + a11) = v34;
              goto LABEL_172;
            }

            v44 = a7;
            if (v152 == 31)
            {
              v34.i64[0] = *v150;
              v33.i64[0] = *(v150 + 8);
              v45 = *(v150 + 16);
              v46 = *(v150 + 24);
              v111[3].i64[0] = *v150;
              v111[3].i64[1] = v33.i64[0];
              v47 = (v151->i64 + a11);
              *v47 = v45;
              v47[1] = v46;
            }

            else if (v92[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, a11, v150, v152, *v34.i64, *v33.i8);
            }

            else
            {
              v151->i64[0] = 0;
              v111[3].i64[1] = 0;
              v153 = (v151->i64 + a11);
              *v153 = 0;
              v153[1] = 0;
            }
          }

LABEL_50:
          v20 = v41++ == v214 >> 3;
        }

        while (!v20);
        v20 = v17++ == v200;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8 + a10 - 1;
  if (*(a1 + 168))
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
  v200 = v201 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v216 = v23;
  if (*(a1 + 232) == 1)
  {
    v24 = *(a1 + 273);
    v25 = *(a1 + 272);
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
      v215 = 0;
LABEL_32:
      v212 = v25 - 3;
      v204 = v24 - 2;
      v31 = -1 << *(*(a1 + 208) + 48);
      v198 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v215 = v30 >= v24;
    goto LABEL_32;
  }

  v215 = 0;
  v198 = 0;
  v204 = 0;
  v212 = 0;
LABEL_33:
  if (v17 <= v200)
  {
    v214 = a7 + a9 - 1;
    if (a7 >> 3 <= v214 >> 3)
    {
      v222 = v18 >> 3;
      v207 = v18 & 7;
      v213 = (v18 & 7) + 1;
      v196 = v19 & 3;
      v197 = v19 >> 2;
      v206 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v33.i8 = vcgt_u32(v32, 0xF00000007);
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v33.i8);
      v203 = v34.i64[0];
      v205 = v34.i32[0] | v34.i32[1];
      v202 = v33.i64[0];
      v208 = a8;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= a8)
        {
          v36 = a8;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v201 < v35)
        {
          v35 = v201;
        }

        v211 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v196;
        v210 = v38;
        v40 = v38 != 4;
        v41 = a7 >> 3;
        v42 = v196 + 1;
        if (v17 != v197)
        {
          v42 = 4;
        }

        v221 = v42;
        if (v17 == v197)
        {
          v43 = v39;
        }

        else
        {
          v43 = v40;
        }

        v209 = v43;
        v219 = a2 + (v36 - a8) * a11;
        v44 = a7;
        do
        {
          v48 = 8 * v41;
          v49 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v44)
          {
            v50 = v44;
          }

          else
          {
            v50 = 8 * v41;
          }

          if (v214 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v49 - v50 + 1;
          if (v41 == v222)
          {
            v53 = v213;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (4 * v17 >= a8 && v48 >= v44)
          {
            v55 = v51 != v207;
            if (v41 != v222)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v209;
          }

          if (v215)
          {
            if (v212 | v204)
            {
              v56 = 0;
              v57 = 0;
              v58 = v212 != 0;
              v59 = 1;
              v60 = v204 != 0;
              v61 = v204;
              v62 = v212;
              do
              {
                --v61;
                if (v60)
                {
                  v57 |= (v17 & ~(-1 << v204) & v59) << v56++;
                }

                else
                {
                  v61 = 0;
                }

                --v62;
                if (v58)
                {
                  v57 |= (v41 & ~(-1 << v212) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v62 != 0;
                v60 = v61 != 0;
              }

              while (v62 | v61);
              v63 = v57 << 8;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(a1 + 336) * ((v41 >> v212) + (v17 >> v204) * v198);
          }

          else if (v205)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v68 = v202;
            v67 = BYTE4(v202);
            v69 = v203;
            v70 = HIDWORD(v203);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v17) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v41) << v64++;
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
            v71 = v65 << 8;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v75 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 3;
          if (v76 < 8)
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
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 2) - 1)));
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
              v79 |= (v82 & v41) << v78++;
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
          if (v216)
          {
            v85 = v84[13];
            v232[12] = v84[12];
            v232[13] = v85;
            v86 = v84[15];
            v232[14] = v84[14];
            v232[15] = v86;
            v87 = v84[9];
            v232[8] = v84[8];
            v232[9] = v87;
            v88 = v84[11];
            v232[10] = v84[10];
            v232[11] = v88;
            v89 = v84[5];
            v232[4] = v84[4];
            v232[5] = v89;
            v90 = v84[7];
            v232[6] = v84[6];
            v232[7] = v90;
            v91 = v84[1];
            v232[0] = *v84;
            v232[1] = v91;
            v34 = v84[2];
            v33 = v84[3];
            v84 = v232;
            v232[2] = v34;
            v232[3] = v33;
          }

          v92 = (a4 + v83);
          v93 = (v219 + 8 * (v50 - v44));
          if (v54 & 1 | (v53 < 8u) || v221 <= 3)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v84;
            v230 = v53;
            v231 = v221;
            v226 = v211;
            v227 = v50 - v48;
            block[6] = a4 + v83;
            v224 = v93;
            v225 = a11;
            v228 = v210;
            v229 = v52;
            if (v54)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_172:
              v44 = a7;
              goto LABEL_50;
            }

            v97 = *v92;
            if (v97 == 96)
            {
              v34 = vld1q_dup_s8(v84->i8);
              v233 = v34;
              v237 = v34;
              v98 = 1;
            }

            else if (v97 == 31)
            {
              v34.i64[0] = v84->i64[0];
              v33.i64[0] = v84->i64[1];
              v154 = v84[1].i64[0];
              v155 = v84[1].i64[1];
              v233.i64[0] = v84->i64[0];
              v233.i64[1] = v33.i64[0];
              v237.i64[0] = v154;
              v237.i64[1] = v155;
              v98 = 32;
            }

            else if (*v92)
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v84, v97, *v34.i64, *v33.i8);
            }

            else
            {
              v98 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
            }

            v156 = v84->i64 + v98;
            v157 = v92[1];
            if (v157 == 96)
            {
              v34 = vld1q_dup_s8(v156);
              v234 = v34;
              v238 = v34;
              v158 = 1;
            }

            else if (v157 == 31)
            {
              v34.i64[0] = *v156;
              v33.i64[0] = *(v156 + 8);
              v159 = *(v156 + 16);
              v160 = *(v156 + 24);
              v234.i64[0] = *v156;
              v234.i64[1] = v33.i64[0];
              v238.i64[0] = v159;
              v238.i64[1] = v160;
              v158 = 32;
            }

            else if (v92[1])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v156, v157, *v34.i64, *v33.i8);
            }

            else
            {
              v158 = 0;
              v234 = 0uLL;
              v238 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v92[2];
            if (v162 == 96)
            {
              v34 = vld1q_dup_s8(v161);
              v241 = v34;
              v245 = v34;
              v163 = 1;
            }

            else if (v162 == 31)
            {
              v34.i64[0] = *v161;
              v33.i64[0] = *(v161 + 8);
              v164 = *(v161 + 16);
              v165 = *(v161 + 24);
              v241.i64[0] = *v161;
              v241.i64[1] = v33.i64[0];
              v245.i64[0] = v164;
              v245.i64[1] = v165;
              v163 = 32;
            }

            else if (v92[2])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 64, v161, v162, *v34.i64, *v33.i8);
            }

            else
            {
              v163 = 0;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v92[3];
            if (v167 == 96)
            {
              v34 = vld1q_dup_s8(v166);
              v242 = v34;
              v246 = v34;
              v168 = 1;
            }

            else if (v167 == 31)
            {
              v34.i64[0] = *v166;
              v33.i64[0] = *(v166 + 8);
              v169 = *(v166 + 16);
              v170 = *(v166 + 24);
              v242.i64[0] = *v166;
              v242.i64[1] = v33.i64[0];
              v246.i64[0] = v169;
              v246.i64[1] = v170;
              v168 = 32;
            }

            else if (v92[3])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v166, v167, *v34.i64, *v33.i8);
            }

            else
            {
              v168 = 0;
              v242 = 0uLL;
              v246 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v92[4];
            if (v172 == 96)
            {
              v34 = vld1q_dup_s8(v171);
              v235 = v34;
              v239 = v34;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v34.i64[0] = *v171;
              v33.i64[0] = *(v171 + 8);
              v174 = *(v171 + 16);
              v175 = *(v171 + 24);
              v235.i64[0] = *v171;
              v235.i64[1] = v33.i64[0];
              v239.i64[0] = v174;
              v239.i64[1] = v175;
              v173 = 32;
            }

            else if (v92[4])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 64, v171, v172, *v34.i64, *v33.i8);
            }

            else
            {
              v173 = 0;
              v235 = 0uLL;
              v239 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v92[5];
            if (v177 == 96)
            {
              v34 = vld1q_dup_s8(v176);
              v236 = v34;
              v240 = v34;
              v178 = 1;
            }

            else if (v177 == 31)
            {
              v34.i64[0] = *v176;
              v33.i64[0] = *(v176 + 8);
              v179 = *(v176 + 16);
              v180 = *(v176 + 24);
              v236.i64[0] = *v176;
              v236.i64[1] = v33.i64[0];
              v240.i64[0] = v179;
              v240.i64[1] = v180;
              v178 = 32;
            }

            else if (v92[5])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 64, v176, v177, *v34.i64, *v33.i8);
            }

            else
            {
              v178 = 0;
              v236 = 0uLL;
              v240 = 0uLL;
            }

            v181 = v176 + v178;
            v182 = v92[6];
            if (v182 == 96)
            {
              v34 = vld1q_dup_s8(v181);
              v243 = v34;
              v247 = v34;
              v183 = 1;
            }

            else if (v182 == 31)
            {
              v34.i64[0] = *v181;
              v33.i64[0] = *(v181 + 8);
              v184 = *(v181 + 16);
              v185 = *(v181 + 24);
              v243.i64[0] = *v181;
              v243.i64[1] = v33.i64[0];
              v247.i64[0] = v184;
              v247.i64[1] = v185;
              v183 = 32;
            }

            else if (v92[6])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v181, v182, *v34.i64, *v33.i8);
            }

            else
            {
              v183 = 0;
              v243 = 0uLL;
              v247 = 0uLL;
            }

            v186 = v181 + v183;
            v187 = v92[7];
            if (v187 == 96)
            {
              v34 = vld1q_dup_s8(v186);
              v244 = v34;
              v248 = v34;
              v44 = a7;
              v188 = v228;
              if (!v228)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v44 = a7;
              if (v187 == 31)
              {
                v34.i64[0] = *v186;
                v33.i64[0] = *(v186 + 8);
                v189 = *(v186 + 16);
                v190 = *(v186 + 24);
                v244.i64[0] = *v186;
                v244.i64[1] = v33.i64[0];
                v248.i64[0] = v189;
                v248.i64[1] = v190;
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }

              else if (v92[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v186, v187, *v34.i64, *v33.i8);
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v244 = 0uLL;
                v248 = 0uLL;
                v188 = v228;
                if (!v228)
                {
                  goto LABEL_50;
                }
              }
            }

            v191 = 0;
            v192 = &v233.i8[64 * v226 + 8 * v227];
            v193 = v229;
            do
            {
              if (v193)
              {
                v194 = 0;
                v195 = &v224->i8[v225 * v191];
                do
                {
                  v195[v194] = v192[v194];
                  ++v194;
                  v193 = v229;
                }

                while (8 * v229 > v194);
                v188 = v228;
              }

              ++v191;
              v192 += 64;
            }

            while (v191 < v188);
          }

          else
          {
            v94 = *v92;
            if (v94 == 96)
            {
              v34 = vld1q_dup_s8(v84->i8);
              *v93 = v34;
              *(v93 + a11) = v34;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v34.i64[0] = v84->i64[0];
              v33.i64[0] = v84->i64[1];
              v99 = v84[1].i64[0];
              v100 = v84[1].i64[1];
              v93->i64[0] = v84->i64[0];
              v93->i64[1] = v33.i64[0];
              v101 = (v93->i64 + a11);
              *v101 = v99;
              v101[1] = v100;
              v95 = 32;
            }

            else if (*v92)
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v93, a11, v84, v94, *v34.i64, *v33.i8);
            }

            else
            {
              v95 = 0;
              v93->i64[0] = 0;
              v93->i64[1] = 0;
              v96 = (v93->i64 + a11);
              *v96 = 0;
              v96[1] = 0;
            }

            v102 = v84->i64 + v95;
            v103 = v93 + 1;
            v104 = v92[1];
            if (v104 == 96)
            {
              v34 = vld1q_dup_s8(v102);
              *v103 = v34;
              *(v103 + a11) = v34;
              v105 = 1;
            }

            else if (v104 == 31)
            {
              v34.i64[0] = *v102;
              v33.i64[0] = *(v102 + 8);
              v107 = *(v102 + 16);
              v108 = *(v102 + 24);
              v93[1].i64[0] = *v102;
              v93[1].i64[1] = v33.i64[0];
              v109 = (v103->i64 + a11);
              *v109 = v107;
              v109[1] = v108;
              v105 = 32;
            }

            else if (v92[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, a11, v102, v104, *v34.i64, *v33.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v93[1].i64[1] = 0;
              v106 = (v103->i64 + a11);
              *v106 = 0;
              v106[1] = 0;
            }

            v110 = v102 + v105;
            v111 = (v93 + v206);
            v112 = v92[2];
            if (v112 == 96)
            {
              v34 = vld1q_dup_s8(v110);
              *v111 = v34;
              *(v111 + a11) = v34;
              v113 = 1;
            }

            else if (v112 == 31)
            {
              v34.i64[0] = *v110;
              v33.i64[0] = *(v110 + 8);
              v115 = *(v110 + 16);
              v116 = *(v110 + 24);
              v111->i64[0] = *v110;
              v111->i64[1] = v33.i64[0];
              v117 = (v111->i64 + a11);
              *v117 = v115;
              v117[1] = v116;
              v113 = 32;
            }

            else if (v92[2])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v93 + v206), a11, v110, v112, *v34.i64, *v33.i8);
            }

            else
            {
              v113 = 0;
              v111->i64[0] = 0;
              v111->i64[1] = 0;
              v114 = (v111->i64 + a11);
              *v114 = 0;
              v114[1] = 0;
            }

            v118 = v110 + v113;
            v119 = v111 + 1;
            v120 = v92[3];
            if (v120 == 96)
            {
              v34 = vld1q_dup_s8(v118);
              *v119 = v34;
              *(v119 + a11) = v34;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v34.i64[0] = *v118;
              v33.i64[0] = *(v118 + 8);
              v123 = *(v118 + 16);
              v124 = *(v118 + 24);
              v111[1].i64[0] = *v118;
              v111[1].i64[1] = v33.i64[0];
              v125 = (v119->i64 + a11);
              *v125 = v123;
              v125[1] = v124;
              v121 = 32;
            }

            else if (v92[3])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v119, a11, v118, v120, *v34.i64, *v33.i8);
            }

            else
            {
              v121 = 0;
              v119->i64[0] = 0;
              v111[1].i64[1] = 0;
              v122 = (v119->i64 + a11);
              *v122 = 0;
              v122[1] = 0;
            }

            v126 = v118 + v121;
            v127 = v93 + 2;
            v128 = v92[4];
            if (v128 == 96)
            {
              v34 = vld1q_dup_s8(v126);
              *v127 = v34;
              *(v127 + a11) = v34;
              v129 = 1;
            }

            else if (v128 == 31)
            {
              v34.i64[0] = *v126;
              v33.i64[0] = *(v126 + 8);
              v131 = *(v126 + 16);
              v132 = *(v126 + 24);
              v93[2].i64[0] = *v126;
              v93[2].i64[1] = v33.i64[0];
              v133 = (v127->i64 + a11);
              *v133 = v131;
              v133[1] = v132;
              v129 = 32;
            }

            else if (v92[4])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v127, a11, v126, v128, *v34.i64, *v33.i8);
            }

            else
            {
              v129 = 0;
              v127->i64[0] = 0;
              v93[2].i64[1] = 0;
              v130 = (v127->i64 + a11);
              *v130 = 0;
              v130[1] = 0;
            }

            v134 = v126 + v129;
            v135 = v93 + 3;
            v136 = v92[5];
            if (v136 == 96)
            {
              v34 = vld1q_dup_s8(v134);
              *v135 = v34;
              *(v135 + a11) = v34;
              v137 = 1;
            }

            else if (v136 == 31)
            {
              v34.i64[0] = *v134;
              v33.i64[0] = *(v134 + 8);
              v139 = *(v134 + 16);
              v140 = *(v134 + 24);
              v93[3].i64[0] = *v134;
              v93[3].i64[1] = v33.i64[0];
              v141 = (v135->i64 + a11);
              *v141 = v139;
              v141[1] = v140;
              v137 = 32;
            }

            else if (v92[5])
            {
              v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v135, a11, v134, v136, *v34.i64, *v33.i8);
            }

            else
            {
              v137 = 0;
              v135->i64[0] = 0;
              v93[3].i64[1] = 0;
              v138 = (v135->i64 + a11);
              *v138 = 0;
              v138[1] = 0;
            }

            v142 = v134 + v137;
            v143 = v111 + 2;
            v144 = v92[6];
            if (v144 == 96)
            {
              v34 = vld1q_dup_s8(v142);
              *v143 = v34;
              *(v143 + a11) = v34;
              v145 = 1;
              a8 = v208;
            }

            else
            {
              a8 = v208;
              if (v144 == 31)
              {
                v34.i64[0] = *v142;
                v33.i64[0] = *(v142 + 8);
                v147 = *(v142 + 16);
                v148 = *(v142 + 24);
                v111[2].i64[0] = *v142;
                v111[2].i64[1] = v33.i64[0];
                v149 = (v143->i64 + a11);
                *v149 = v147;
                v149[1] = v148;
                v145 = 32;
              }

              else if (v92[6])
              {
                v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v143, a11, v142, v144, *v34.i64, *v33.i8);
              }

              else
              {
                v145 = 0;
                v143->i64[0] = 0;
                v111[2].i64[1] = 0;
                v146 = (v143->i64 + a11);
                *v146 = 0;
                v146[1] = 0;
              }
            }

            v150 = v142 + v145;
            v151 = v111 + 3;
            v152 = v92[7];
            if (v152 == 96)
            {
              v34 = vld1q_dup_s8(v150);
              *v151 = v34;
              *(v151 + a11) = v34;
              goto LABEL_172;
            }

            v44 = a7;
            if (v152 == 31)
            {
              v34.i64[0] = *v150;
              v33.i64[0] = *(v150 + 8);
              v45 = *(v150 + 16);
              v46 = *(v150 + 24);
              v111[3].i64[0] = *v150;
              v111[3].i64[1] = v33.i64[0];
              v47 = (v151->i64 + a11);
              *v47 = v45;
              v47[1] = v46;
            }

            else if (v92[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v151, a11, v150, v152, *v34.i64, *v33.i8);
            }

            else
            {
              v151->i64[0] = 0;
              v111[3].i64[1] = 0;
              v153 = (v151->i64 + a11);
              *v153 = 0;
              v153[1] = 0;
            }
          }

LABEL_50:
          v20 = v41++ == v214 >> 3;
        }

        while (!v20);
        v20 = v17++ == v200;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v248 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 + a10 - 1;
  v220 = a8;
  v18 = a8 >> 2;
  v201 = v17;
  v203 = v17 >> 2;
  v19 = *(*(a1 + 208) + 88);
  v20 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 0xD00) == 0 || v21 == 768;
  v23 = v21 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v215 = v25;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v18 <= v203)
  {
    v213 = a7 + a9 - 1;
    if (a7 >> 3 <= v213 >> 3)
    {
      v26 = (a5 - 1) >> 3;
      v198 = a5 - 1;
      v205 = (a5 - 1) & 7;
      v199 = (a6 - 1) & 3;
      v200 = (a6 - 1) >> 2;
      v204 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v28.i8 = vcgt_u32(v27, 0xF00000007);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v28.i8);
      v210 = v29.i64[0];
      v212 = v29.i32[0] | v29.i32[1];
      v209 = v28.i64[0];
      v197 = 8 * v20 * v19;
      v211 = v26;
      do
      {
        v30 = (4 * v18) | 3;
        if (4 * v18 <= v220)
        {
          v31 = v220;
        }

        else
        {
          v31 = 4 * v18;
        }

        if (v201 < v30)
        {
          v30 = v201;
        }

        v219 = 4 * v18;
        v208 = v31 - 4 * v18;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v199;
        v207 = v33;
        v35 = v33 != 4;
        v36 = a7 >> 3;
        v37 = v199 + 1;
        if (v18 != v200)
        {
          v37 = 4;
        }

        v221 = v37;
        if (v18 != v200)
        {
          v34 = v35;
        }

        v206 = v34;
        v218 = a2 + (v31 - v220) * a11;
        do
        {
          v38 = 8 * v36;
          v39 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v40 = a7;
          }

          else
          {
            v40 = 8 * v36;
          }

          if (v213 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          if (v36 == v26)
          {
            v43 = v205 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v219 >= v220 && v38 >= a7)
          {
            v45 = v41 != v205;
            if (v36 != v26)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v206;
          }

          if (isLevelTiled)
          {
            v66 = 0;
            v67 = v197 >> (*(a1 + 57) != 0);
            v68 = 1;
            if (v67 <= 63)
            {
              if (v67 > 15)
              {
                if (v67 == 16)
                {
                  v68 = 0;
                  v69 = 64;
                  v66 = 128;
                }

                else
                {
                  v69 = 0;
                  if (v67 == 32)
                  {
                    v68 = 0;
                    v66 = 64;
                    v69 = 64;
                  }
                }
              }

              else if (v67 == 4)
              {
                v68 = 0;
                v69 = 128;
                v66 = 256;
              }

              else
              {
                v69 = 0;
                if (v67 == 8)
                {
                  v68 = 0;
                  v66 = 128;
                  v69 = 128;
                }
              }
            }

            else if (v67 <= 255)
            {
              if (v67 == 64)
              {
                v68 = 0;
                v69 = 32;
                v66 = 64;
              }

              else
              {
                v69 = 0;
                if (v67 == 128)
                {
                  v68 = 0;
                  v66 = 32;
                  v69 = 32;
                }
              }
            }

            else if (v67 == 256)
            {
              v68 = 0;
              v69 = 16;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v68 = 0;
              v66 = 16;
              v69 = 16;
            }

            else
            {
              v69 = 0;
              if (v67 == 1024)
              {
                v68 = 0;
                v69 = 8;
                v66 = 16;
              }
            }

            v185 = (v66 >> 3) - 1;
            v186 = (v69 >> 2) - 1;
            if ((v68 & 1) != 0 || (v187 = 32 - __clz(~(-1 << -__clz(v185))), v188 = 32 - __clz(~(-1 << -__clz(v186))), !(v188 | v187)))
            {
              v196 = 0;
            }

            else
            {
              v189 = 0;
              v190 = 0;
              v191 = v36 & v185;
              v192 = v18 & v186;
              v193 = v188 != 0;
              v194 = v187 != 0;
              v195 = 1;
              do
              {
                --v188;
                if (v193)
                {
                  v190 |= (v195 & v192) << v189++;
                }

                else
                {
                  v188 = 0;
                }

                --v187;
                if (v194)
                {
                  v190 |= (v195 & v191) << v189++;
                }

                else
                {
                  v187 = 0;
                }

                v195 *= 2;
                --v189;
                v194 = v187 != 0;
                v193 = v188 != 0;
              }

              while (v187 | v188);
              v196 = v190 << 8;
            }

            v53 = v196 + ((v38 / v66 + v219 / v69 * ((v66 + v198) / v66)) << 14);
          }

          else if (v212)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v209;
            v49 = BYTE4(v209);
            v51 = v210;
            v52 = HIDWORD(v210);
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v18) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v36) << v46++;
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
            v53 = v47 << 8;
          }

          else
          {
            v53 = 0;
          }

          v54 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v57 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 3;
          if (v58 < 8)
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
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 2) - 1)));
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
              v61 |= (v64 & v18) << v60++;
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
          v70 = (a3 + v53);
          if (v215)
          {
            v71 = v70[13];
            v231[12] = v70[12];
            v231[13] = v71;
            v72 = v70[15];
            v231[14] = v70[14];
            v231[15] = v72;
            v73 = v70[9];
            v231[8] = v70[8];
            v231[9] = v73;
            v74 = v70[11];
            v231[10] = v70[10];
            v231[11] = v74;
            v75 = v70[5];
            v231[4] = v70[4];
            v231[5] = v75;
            v76 = v70[7];
            v231[6] = v70[6];
            v231[7] = v76;
            v77 = v70[1];
            v231[0] = *v70;
            v231[1] = v77;
            v29 = v70[2];
            v28 = v70[3];
            v70 = v231;
            v231[2] = v29;
            v231[3] = v28;
          }

          v78 = (a4 + v65);
          v79 = (v218 + 8 * (v40 - a7));
          if (v44 & 1 | (v43 < 8u) || v221 <= 3)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v70;
            v229 = v43;
            v230 = v221;
            v225 = v208;
            v226 = v40 - v38;
            block[6] = a4 + v65;
            v223 = v218 + 8 * (v40 - a7);
            v224 = a11;
            v227 = v207;
            v228 = v42;
            if (v44)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v83 = *v78;
            if (v83 == 96)
            {
              v29 = vld1q_dup_s8(v70->i8);
              v232 = v29;
              v236 = v29;
              v84 = 1;
            }

            else if (v83 == 31)
            {
              v29.i64[0] = v70->i64[0];
              v28.i64[0] = v70->i64[1];
              v143 = v70[1].i64[0];
              v144 = v70[1].i64[1];
              v232.i64[0] = v70->i64[0];
              v232.i64[1] = v28.i64[0];
              v236.i64[0] = v143;
              v236.i64[1] = v144;
              v84 = 32;
            }

            else if (*v78)
            {
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v70, v83, *v29.i64, *v28.i8);
            }

            else
            {
              v84 = 0;
              v232 = 0uLL;
              v236 = 0uLL;
            }

            v145 = v70->i64 + v84;
            v146 = v78[1];
            if (v146 == 96)
            {
              v29 = vld1q_dup_s8(v145);
              v233 = v29;
              v237 = v29;
              v147 = 1;
            }

            else if (v146 == 31)
            {
              v29.i64[0] = *v145;
              v28.i64[0] = *(v145 + 8);
              v148 = *(v145 + 16);
              v149 = *(v145 + 24);
              v233.i64[0] = *v145;
              v233.i64[1] = v28.i64[0];
              v237.i64[0] = v148;
              v237.i64[1] = v149;
              v147 = 32;
            }

            else if (v78[1])
            {
              v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v145, v146, *v29.i64, *v28.i8);
            }

            else
            {
              v147 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
            }

            v150 = v145 + v147;
            v151 = v78[2];
            if (v151 == 96)
            {
              v29 = vld1q_dup_s8(v150);
              v240 = v29;
              v244 = v29;
              v152 = 1;
            }

            else if (v151 == 31)
            {
              v29.i64[0] = *v150;
              v28.i64[0] = *(v150 + 8);
              v153 = *(v150 + 16);
              v154 = *(v150 + 24);
              v240.i64[0] = *v150;
              v240.i64[1] = v28.i64[0];
              v244.i64[0] = v153;
              v244.i64[1] = v154;
              v152 = 32;
            }

            else if (v78[2])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 64, v150, v151, *v29.i64, *v28.i8);
            }

            else
            {
              v152 = 0;
              v240 = 0uLL;
              v244 = 0uLL;
            }

            v155 = v150 + v152;
            v156 = v78[3];
            if (v156 == 96)
            {
              v29 = vld1q_dup_s8(v155);
              v241 = v29;
              v245 = v29;
              v157 = 1;
            }

            else if (v156 == 31)
            {
              v29.i64[0] = *v155;
              v28.i64[0] = *(v155 + 8);
              v158 = *(v155 + 16);
              v159 = *(v155 + 24);
              v241.i64[0] = *v155;
              v241.i64[1] = v28.i64[0];
              v245.i64[0] = v158;
              v245.i64[1] = v159;
              v157 = 32;
            }

            else if (v78[3])
            {
              v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 64, v155, v156, *v29.i64, *v28.i8);
            }

            else
            {
              v157 = 0;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v160 = v155 + v157;
            v161 = v78[4];
            if (v161 == 96)
            {
              v29 = vld1q_dup_s8(v160);
              v234 = v29;
              v238 = v29;
              v162 = 1;
            }

            else if (v161 == 31)
            {
              v29.i64[0] = *v160;
              v28.i64[0] = *(v160 + 8);
              v163 = *(v160 + 16);
              v164 = *(v160 + 24);
              v234.i64[0] = *v160;
              v234.i64[1] = v28.i64[0];
              v238.i64[0] = v163;
              v238.i64[1] = v164;
              v162 = 32;
            }

            else if (v78[4])
            {
              v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v160, v161, *v29.i64, *v28.i8);
            }

            else
            {
              v162 = 0;
              v234 = 0uLL;
              v238 = 0uLL;
            }

            v165 = v160 + v162;
            v166 = v78[5];
            if (v166 == 96)
            {
              v29 = vld1q_dup_s8(v165);
              v235 = v29;
              v239 = v29;
              v167 = 1;
            }

            else if (v166 == 31)
            {
              v29.i64[0] = *v165;
              v28.i64[0] = *(v165 + 8);
              v168 = *(v165 + 16);
              v169 = *(v165 + 24);
              v235.i64[0] = *v165;
              v235.i64[1] = v28.i64[0];
              v239.i64[0] = v168;
              v239.i64[1] = v169;
              v167 = 32;
            }

            else if (v78[5])
            {
              v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 64, v165, v166, *v29.i64, *v28.i8);
            }

            else
            {
              v167 = 0;
              v235 = 0uLL;
              v239 = 0uLL;
            }

            v170 = v165 + v167;
            v171 = v78[6];
            if (v171 == 96)
            {
              v29 = vld1q_dup_s8(v170);
              v242 = v29;
              v246 = v29;
              v172 = 1;
            }

            else if (v171 == 31)
            {
              v29.i64[0] = *v170;
              v28.i64[0] = *(v170 + 8);
              v173 = *(v170 + 16);
              v174 = *(v170 + 24);
              v242.i64[0] = *v170;
              v242.i64[1] = v28.i64[0];
              v246.i64[0] = v173;
              v246.i64[1] = v174;
              v172 = 32;
            }

            else if (v78[6])
            {
              v172 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v170, v171, *v29.i64, *v28.i8);
            }

            else
            {
              v172 = 0;
              v242 = 0uLL;
              v246 = 0uLL;
            }

            v175 = v170 + v172;
            v176 = v78[7];
            if (v176 == 96)
            {
              v29 = vld1q_dup_s8(v175);
              v243 = v29;
              v247 = v29;
              v26 = v211;
              v177 = v227;
              if (!v227)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v26 = v211;
              if (v176 == 31)
              {
                v29.i64[0] = *v175;
                v28.i64[0] = *(v175 + 8);
                v178 = *(v175 + 16);
                v179 = *(v175 + 24);
                v243.i64[0] = *v175;
                v243.i64[1] = v28.i64[0];
                v247.i64[0] = v178;
                v247.i64[1] = v179;
                v177 = v227;
                if (!v227)
                {
                  goto LABEL_29;
                }
              }

              else if (v78[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v175, v176, *v29.i64, *v28.i8);
                v177 = v227;
                if (!v227)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v243 = 0uLL;
                v247 = 0uLL;
                v177 = v227;
                if (!v227)
                {
                  goto LABEL_29;
                }
              }
            }

            v180 = 0;
            v181 = &v232.i8[64 * v225 + 8 * v226];
            v182 = v228;
            do
            {
              if (v182)
              {
                v183 = 0;
                v184 = v223 + v224 * v180;
                do
                {
                  *(v184 + v183) = v181[v183];
                  ++v183;
                  v182 = v228;
                }

                while (8 * v228 > v183);
                v177 = v227;
              }

              ++v180;
              v181 += 64;
            }

            while (v180 < v177);
          }

          else
          {
            v80 = *v78;
            if (v80 == 96)
            {
              v29 = vld1q_dup_s8(v70->i8);
              *v79 = v29;
              *(v79 + a11) = v29;
              v81 = 1;
            }

            else if (v80 == 31)
            {
              v29.i64[0] = v70->i64[0];
              v28.i64[0] = v70->i64[1];
              v85 = v70[1].i64[0];
              v86 = v70[1].i64[1];
              v79->i64[0] = v70->i64[0];
              v79->i64[1] = v28.i64[0];
              v87 = (v79->i64 + a11);
              *v87 = v85;
              v87[1] = v86;
              v81 = 32;
            }

            else if (*v78)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v218 + 8 * (v40 - a7)), a11, v70, v80, *v29.i64, *v28.i8);
            }

            else
            {
              v81 = 0;
              v79->i64[0] = 0;
              v79->i64[1] = 0;
              v82 = (v79->i64 + a11);
              *v82 = 0;
              v82[1] = 0;
            }

            v88 = v70->i64 + v81;
            v89 = v79 + 1;
            v90 = v78[1];
            if (v90 == 96)
            {
              v29 = vld1q_dup_s8(v88);
              *v89 = v29;
              *(v89 + a11) = v29;
              v91 = 1;
            }

            else if (v90 == 31)
            {
              v29.i64[0] = *v88;
              v28.i64[0] = *(v88 + 8);
              v93 = *(v88 + 16);
              v94 = *(v88 + 24);
              v79[1].i64[0] = *v88;
              v79[1].i64[1] = v28.i64[0];
              v95 = (v89->i64 + a11);
              *v95 = v93;
              v95[1] = v94;
              v91 = 32;
            }

            else if (v78[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v89, a11, v88, v90, *v29.i64, *v28.i8);
            }

            else
            {
              v91 = 0;
              v89->i64[0] = 0;
              v79[1].i64[1] = 0;
              v92 = (v89->i64 + a11);
              *v92 = 0;
              v92[1] = 0;
            }

            v96 = v88 + v91;
            v97 = (v79 + v204);
            v98 = v78[2];
            if (v98 == 96)
            {
              v29 = vld1q_dup_s8(v96);
              *v97 = v29;
              *(v97 + a11) = v29;
              v99 = 1;
            }

            else if (v98 == 31)
            {
              v29.i64[0] = *v96;
              v28.i64[0] = *(v96 + 8);
              v101 = *(v96 + 16);
              v102 = *(v96 + 24);
              v97->i64[0] = *v96;
              v97->i64[1] = v28.i64[0];
              v103 = (v97->i64 + a11);
              *v103 = v101;
              v103[1] = v102;
              v99 = 32;
            }

            else if (v78[2])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v79 + v204), a11, v96, v98, *v29.i64, *v28.i8);
            }

            else
            {
              v99 = 0;
              v97->i64[0] = 0;
              v97->i64[1] = 0;
              v100 = (v97->i64 + a11);
              *v100 = 0;
              v100[1] = 0;
            }

            v104 = v96 + v99;
            v105 = v97 + 1;
            v106 = v78[3];
            if (v106 == 96)
            {
              v29 = vld1q_dup_s8(v104);
              *v105 = v29;
              *(v105 + a11) = v29;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v29.i64[0] = *v104;
              v28.i64[0] = *(v104 + 8);
              v109 = *(v104 + 16);
              v110 = *(v104 + 24);
              v97[1].i64[0] = *v104;
              v97[1].i64[1] = v28.i64[0];
              v111 = (v105->i64 + a11);
              *v111 = v109;
              v111[1] = v110;
              v107 = 32;
            }

            else if (v78[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v105, a11, v104, v106, *v29.i64, *v28.i8);
            }

            else
            {
              v107 = 0;
              v105->i64[0] = 0;
              v97[1].i64[1] = 0;
              v108 = (v105->i64 + a11);
              *v108 = 0;
              v108[1] = 0;
            }

            v112 = v104 + v107;
            v113 = v79 + 2;
            v114 = v78[4];
            if (v114 == 96)
            {
              v29 = vld1q_dup_s8(v112);
              *v113 = v29;
              *(v113 + a11) = v29;
              v115 = 1;
            }

            else if (v114 == 31)
            {
              v29.i64[0] = *v112;
              v28.i64[0] = *(v112 + 8);
              v117 = *(v112 + 16);
              v118 = *(v112 + 24);
              v79[2].i64[0] = *v112;
              v79[2].i64[1] = v28.i64[0];
              v119 = (v113->i64 + a11);
              *v119 = v117;
              v119[1] = v118;
              v115 = 32;
            }

            else if (v78[4])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v113, a11, v112, v114, *v29.i64, *v28.i8);
            }

            else
            {
              v115 = 0;
              v113->i64[0] = 0;
              v79[2].i64[1] = 0;
              v116 = (v113->i64 + a11);
              *v116 = 0;
              v116[1] = 0;
            }

            v120 = v112 + v115;
            v121 = v79 + 3;
            v122 = v78[5];
            if (v122 == 96)
            {
              v29 = vld1q_dup_s8(v120);
              *v121 = v29;
              *(v121 + a11) = v29;
              v123 = 1;
            }

            else if (v122 == 31)
            {
              v29.i64[0] = *v120;
              v28.i64[0] = *(v120 + 8);
              v125 = *(v120 + 16);
              v126 = *(v120 + 24);
              v79[3].i64[0] = *v120;
              v79[3].i64[1] = v28.i64[0];
              v127 = (v121->i64 + a11);
              *v127 = v125;
              v127[1] = v126;
              v123 = 32;
            }

            else if (v78[5])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, a11, v120, v122, *v29.i64, *v28.i8);
            }

            else
            {
              v123 = 0;
              v121->i64[0] = 0;
              v79[3].i64[1] = 0;
              v124 = (v121->i64 + a11);
              *v124 = 0;
              v124[1] = 0;
            }

            v128 = v120 + v123;
            v129 = v97 + 2;
            v130 = v78[6];
            if (v130 == 96)
            {
              v29 = vld1q_dup_s8(v128);
              *v129 = v29;
              *(v129 + a11) = v29;
              v131 = 1;
            }

            else if (v130 == 31)
            {
              v29.i64[0] = *v128;
              v28.i64[0] = *(v128 + 8);
              v133 = *(v128 + 16);
              v134 = *(v128 + 24);
              v97[2].i64[0] = *v128;
              v97[2].i64[1] = v28.i64[0];
              v135 = (v129->i64 + a11);
              *v135 = v133;
              v135[1] = v134;
              v131 = 32;
            }

            else if (v78[6])
            {
              v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v129, a11, v128, v130, *v29.i64, *v28.i8);
            }

            else
            {
              v131 = 0;
              v129->i64[0] = 0;
              v97[2].i64[1] = 0;
              v132 = (v129->i64 + a11);
              *v132 = 0;
              v132[1] = 0;
            }

            v136 = v128 + v131;
            v137 = v97 + 3;
            v138 = v78[7];
            if (v138 == 96)
            {
              v29 = vld1q_dup_s8(v136);
              *v137 = v29;
              *(v137 + a11) = v29;
              v26 = v211;
            }

            else
            {
              v26 = v211;
              if (v138 == 31)
              {
                v29.i64[0] = *v136;
                v28.i64[0] = *(v136 + 8);
                v140 = *(v136 + 16);
                v141 = *(v136 + 24);
                v97[3].i64[0] = *v136;
                v97[3].i64[1] = v28.i64[0];
                v142 = (v137->i64 + a11);
                *v142 = v140;
                v142[1] = v141;
              }

              else if (v78[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v137, a11, v136, v138, *v29.i64, *v28.i8);
              }

              else
              {
                v137->i64[0] = 0;
                v97[3].i64[1] = 0;
                v139 = (v137->i64 + a11);
                *v139 = 0;
                v139[1] = 0;
              }
            }
          }

LABEL_29:
          v22 = v36++ == v213 >> 3;
        }

        while (!v22);
        v22 = v18++ == v203;
      }

      while (!v22);
    }
  }
}