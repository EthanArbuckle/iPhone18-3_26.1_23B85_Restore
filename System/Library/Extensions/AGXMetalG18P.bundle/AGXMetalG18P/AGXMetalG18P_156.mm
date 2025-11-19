void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v132 + 16 * (v48 - v35), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119, v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 64, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119 + 64, v24, v38, v84[3]);
            v40 = v85 + v118;
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v118, v24, v39, v84[4]);
            v42 = v85 + 6 * a11;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 64, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 64, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v132 + 16 * (v48 - v35), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119, v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 64, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v119 + 64, v24, v38, v84[3]);
            v40 = v85 + v118;
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v118, v24, v39, v84[4]);
            v42 = v85 + 6 * a11;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 64, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 64, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
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
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v311), v32, v104, v106);
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
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v32, v120, v122);
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
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137);
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
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v310), v32, v150, v152);
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
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v32, v166, v168);
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
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v32, v182, v184);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v32, v197, v199);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v339, 128, v82, v91);
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
            v221 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v355, 128, v219, v220);
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
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v343, 128, v230, v231);
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
            v243 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v359, 128, v241, v242);
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
            v254 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v371, 128, v252, v253);
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
            v265 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v263, v264);
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
            v276 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v375, 128, v274, v275);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v391, 128, v285, v286);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
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
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v311), v32, v104, v106);
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
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v121, v32, v120, v122);
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
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137);
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
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v310), v32, v150, v152);
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
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v167, v32, v166, v168);
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
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v32, v182, v184);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v198, v32, v197, v199);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v339, 128, v82, v91);
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
            v221 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v355, 128, v219, v220);
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
            v232 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v343, 128, v230, v231);
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
            v243 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v359, 128, v241, v242);
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
            v254 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v371, 128, v252, v253);
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
            v265 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v263, v264);
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
            v276 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v375, 128, v274, v275);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v391, 128, v285, v286);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 128, v65, v71);
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
                v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v199, v200);
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
                v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 128, v210, v211);
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
                v223 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v221, v222);
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
                v234 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 128, v232, v233);
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
                v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v243, v244);
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
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 128, v254, v255);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v265, v266);
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
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
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
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v307), v25, v84, v86);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v25, v100, v102);
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
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
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
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v306), v25, v130, v132);
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
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v25, v146, v148);
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
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v25, v162, v164);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v25, v177, v179);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
                v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v336, 128, v65, v71);
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
                v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v199, v200);
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
                v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v340, 128, v210, v211);
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
                v223 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v221, v222);
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
                v234 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v368, 128, v232, v233);
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
                v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v243, v244);
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
                v256 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 128, v254, v255);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v265, v266);
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
                v69 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v67, a11, v65, v68);
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
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v307), v25, v84, v86);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, v25, v100, v102);
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
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v116, v25, v115, v117);
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
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v67 + v306), v25, v130, v132);
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
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v25, v146, v148);
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
              v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v163, v25, v162, v164);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v25, v177, v179);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 8, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 128), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 6 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 8, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 8, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v106 + v107, v99[7]);
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
                v113 = v143 + v144 * v109;
                do
                {
                  v113[v112] = *(v110->f64 + v112);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 8, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 128), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 6 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 8, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 8, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v106 + v107, v99[7]);
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
                v113 = v143 + v144 * v109;
                do
                {
                  v113[v112] = *(v110->f64 + v112);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v140 + 32 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 8, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127 + 128), v32, v46, v92[3]);
            v48 = (v93 + v126);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v126), v32, v47, v92[4]);
            v50 = (v93 + 6 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 8, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 8, v32, v51 + v52, v92[7]);
            v43 = v143;
            v23 = v134;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v99 + v100, v92[7]);
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
                  *(v106 + v105) = *(v103->f64 + v105);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v140 + 32 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 8, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v127 + 128), v32, v46, v92[3]);
            v48 = (v93 + v126);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v126), v32, v47, v92[4]);
            v50 = (v93 + 6 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 8, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 8, v32, v51 + v52, v92[7]);
            v43 = v143;
            v23 = v134;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v99 + v100, v92[7]);
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
                  *(v106 + v105) = *(v103->f64 + v105);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v284 = *MEMORY[0x29EDCA608];
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

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v218 = v219 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v234 = v23;
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
      v233 = 0;
LABEL_32:
      v230 = v25 - 3;
      v222 = v24 - 3;
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

    v233 = v30 >= v24;
    goto LABEL_32;
  }

  v233 = 0;
  v216 = 0;
  v222 = 0;
  v230 = 0;
LABEL_33:
  if (v17 <= v218)
  {
    v232 = a7 + a9 - 1;
    if (a7 >> 3 <= v232 >> 3)
    {
      v32 = a11;
      v241 = v18 >> 3;
      v226 = v18 & 7;
      v231 = (v18 & 7) + 1;
      v214 = v19 & 7;
      v215 = v19 >> 3;
      v224 = 4 * a11;
      v225 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v221 = v35.i64[0];
      v223 = v35.i32[0] | v35.i32[1];
      v220 = v34.i64[0];
      v239 = v15;
      do
      {
        v36 = (8 * v17) | 7;
        if (8 * v17 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v17;
        }

        if (v219 < v36)
        {
          v36 = a8 + a10 - 1;
        }

        v229 = v37 - 8 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v214;
        v228 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 3;
        v43 = v214 + 1;
        if (v17 != v215)
        {
          v43 = 8;
        }

        v240 = v43;
        if (v17 != v215)
        {
          v40 = v41;
        }

        v227 = v40;
        v237 = a2 + (v37 - a8) * v32;
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

          if (v232 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v241)
          {
            v51 = v231;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v17 >= a8 && v46 >= v44)
          {
            v53 = v49 != v226;
            if (v42 != v241)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v227;
          }

          if (v233)
          {
            if (v230 | v222)
            {
              v54 = 0;
              v55 = 0;
              v56 = v222 != 0;
              v57 = 1;
              v59 = v230 != 0;
              v58 = v222;
              v60 = v230;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v42 & ~(-1 << v230) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v17 & ~(-1 << v222) & v57) << v54++;
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

            v69 = v61 + *(v15 + 336) * ((v42 >> v230) + (v17 >> v222) * v216);
          }

          else if (v223)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v220;
            v66 = BYTE4(v220);
            v68 = v221;
            v67 = HIDWORD(v221);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
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
          if (v234)
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
          v87 = v237 + 8 * (v48 - v44);
          if (!(v52 & 1 | (v51 < 8u)) && v240 > 7)
          {
            v88 = *v86;
            if (v88 == 63)
            {
              v90 = *v82;
              v34 = v82[1];
              v96 = v82[2];
              v97 = v82[3];
              *v87 = *v82;
              *(v87 + 16) = v96;
              v32 = a11;
              v98 = (v87 + a11);
              *v98 = v34;
              v98[1] = v97;
              v89 = 64;
            }

            else
            {
              v32 = a11;
              if (v88 == 1)
              {
                v90 = vld1q_dup_s16(v82->i16);
                *v87 = v90;
                *(v87 + 16) = v90;
                v95 = (v87 + a11);
                *v95 = v90;
                v95[1] = v90;
                v89 = 2;
              }

              else if (*v86)
              {
                v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88, *v35.i8, *v34.i8);
              }

              else
              {
                v89 = 0;
                v90.i64[0] = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v91 = (v87 + a11);
                *v91 = 0u;
                v91[1] = 0u;
              }
            }

            v99 = v82->i64 + v89;
            v100 = (v87 + v225);
            v101 = v86[1];
            if (v101 == 63)
            {
              v103 = *v99;
              v34 = *(v99 + 16);
              v106 = *(v99 + 32);
              v107 = *(v99 + 48);
              *v100 = *v99;
              v100[1] = v106;
              v108 = &v100->i8[v32];
              *v108 = v34;
              *(v108 + 1) = v107;
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

            else if (v86[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v225), v32, v99, v101, *v90.i8, *v34.i8);
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

            v109 = v99 + v102;
            v110 = (v87 + 32);
            v111 = v86[2];
            if (v111 == 63)
            {
              v113 = *v109;
              v34 = *(v109 + 16);
              v116 = *(v109 + 32);
              v117 = *(v109 + 48);
              *(v87 + 32) = *v109;
              *(v87 + 48) = v116;
              v118 = &v110->i8[v32];
              *v118 = v34;
              *(v118 + 1) = v117;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v109);
              *(v87 + 32) = v113;
              *(v87 + 48) = v113;
              v115 = &v110->i8[v32];
              *v115 = v113;
              v115[1] = v113;
              v112 = 2;
            }

            else if (v86[2])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, v32, v109, v111, *v103.i8, *v34.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              *v110 = 0u;
              *(v87 + 48) = 0u;
              v114 = &v110->i8[v32];
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v119 = v109 + v112;
            v120 = &v100[2];
            v121 = v86[3];
            if (v121 == 63)
            {
              v123 = *v119;
              v34 = *(v119 + 16);
              v126 = *(v119 + 32);
              v127 = *(v119 + 48);
              v100[2] = *v119;
              v100[3] = v126;
              v128 = &v120->i8[v32];
              *v128 = v34;
              *(v128 + 1) = v127;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v123 = vld1q_dup_s16(v119);
              v100[2] = v123;
              v100[3] = v123;
              v125 = &v120->i8[v32];
              *v125 = v123;
              v125[1] = v123;
              v122 = 2;
            }

            else if (v86[3])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v32, v119, v121, *v113.i8, *v34.i8);
            }

            else
            {
              v122 = 0;
              v123.i64[0] = 0;
              *v120 = 0u;
              v100[3] = 0u;
              v124 = &v120->i8[v32];
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v129 = v119 + v122;
            v130 = (v87 + v224);
            v131 = v86[4];
            if (v131 == 63)
            {
              v133 = *v129;
              v34 = *(v129 + 16);
              v136 = *(v129 + 32);
              v137 = *(v129 + 48);
              *v130 = *v129;
              v130[1] = v136;
              v138 = &v130->i8[v32];
              *v138 = v34;
              *(v138 + 1) = v137;
              v132 = 64;
            }

            else if (v131 == 1)
            {
              v133 = vld1q_dup_s16(v129);
              *v130 = v133;
              v130[1] = v133;
              v135 = (v130 + v32);
              *v135 = v133;
              v135[1] = v133;
              v132 = 2;
            }

            else if (v86[4])
            {
              v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v224), v32, v129, v131, *v123.i8, *v34.i8);
            }

            else
            {
              v132 = 0;
              v133.i64[0] = 0;
              *v130 = 0u;
              v130[1] = 0u;
              v134 = &v130->i8[v32];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v139 = v129 + v132;
            v140 = v87 + 6 * a11;
            v141 = v86[5];
            if (v141 == 63)
            {
              v143 = *v139;
              v34 = *(v139 + 16);
              v146 = *(v139 + 32);
              v147 = *(v139 + 48);
              *v140 = *v139;
              *(v140 + 16) = v146;
              v148 = (v140 + v32);
              *v148 = v34;
              v148[1] = v147;
              v142 = 64;
            }

            else if (v141 == 1)
            {
              v143 = vld1q_dup_s16(v139);
              *v140 = v143;
              *(v140 + 16) = v143;
              v145 = (v140 + v32);
              *v145 = v143;
              v145[1] = v143;
              v142 = 2;
            }

            else if (v86[5])
            {
              v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v140, v32, v139, v141, *v133.i8, *v34.i8);
            }

            else
            {
              v142 = 0;
              v143.i64[0] = 0;
              *v140 = 0u;
              *(v140 + 16) = 0u;
              v144 = (v140 + v32);
              *v144 = 0u;
              v144[1] = 0u;
            }

            v149 = v139 + v142;
            v150 = &v130[2];
            v151 = v86[6];
            if (v151 == 63)
            {
              v153 = *v149;
              v34 = *(v149 + 16);
              v156 = *(v149 + 32);
              v157 = *(v149 + 48);
              v130[2] = *v149;
              v130[3] = v156;
              v158 = &v150->i8[v32];
              *v158 = v34;
              *(v158 + 1) = v157;
              v152 = 64;
            }

            else if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v149);
              v130[2] = v153;
              v130[3] = v153;
              v155 = &v150->i8[v32];
              *v155 = v153;
              v155[1] = v153;
              v152 = 2;
            }

            else if (v86[6])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v150, v32, v149, v151, *v143.i8, *v34.i8);
            }

            else
            {
              v152 = 0;
              v153.i64[0] = 0;
              *v150 = 0u;
              v130[3] = 0u;
              v154 = &v150->i8[v32];
              *v154 = 0u;
              *(v154 + 1) = 0u;
            }

            v159 = v149 + v152;
            v160 = (v140 + 32);
            v161 = v86[7];
            if (v161 == 63)
            {
              v35 = *v159;
              v34 = *(v159 + 16);
              v163 = *(v159 + 32);
              v164 = *(v159 + 48);
              *(v140 + 32) = *v159;
              *(v140 + 48) = v163;
              v165 = &v160->i8[v32];
              *v165 = v34;
              *(v165 + 1) = v164;
              v44 = a7;
              v15 = v239;
            }

            else
            {
              v15 = v239;
              if (v161 == 1)
              {
                v35 = vld1q_dup_s16(v159);
                *(v140 + 32) = v35;
                *(v140 + 48) = v35;
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
                  *(v140 + 48) = 0u;
                  goto LABEL_171;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v160, v32, v159, v161, *v153.i8, *v34.i8);
              }

              v44 = a7;
            }

LABEL_49:
            v45 = v42 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v239;
          block[5] = v82;
          v249 = v51;
          v250 = v240;
          v245 = v229;
          v246 = v48 - v46;
          block[6] = v86;
          v243 = v87;
          v32 = a11;
          v244 = a11;
          v247 = v228;
          v248 = v50;
          if (v52)
          {
            dispatch_sync(*(*(v239 + 8) + 16552), block);
            v44 = a7;
            v15 = v239;
            goto LABEL_49;
          }

          v92 = *v86;
          if (v92 == 63)
          {
            v94 = *v82;
            v34 = v82[1];
            v166 = v82[2];
            v167 = v82[3];
            v252 = *v82;
            v253 = v166;
            v256 = v34;
            v257 = v167;
            v93 = 64;
          }

          else if (v92 == 1)
          {
            v94 = vld1q_dup_s16(v82->i16);
            v252 = v94;
            v253 = v94;
            v256 = v94;
            v257 = v94;
            v93 = 2;
          }

          else if (*v86)
          {
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v82, v92, *v35.i8, *v34.i8);
          }

          else
          {
            v93 = 0;
            v94.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v256 = 0u;
            v257 = 0u;
          }

          v168 = v82->i64 + v93;
          v169 = v86[1];
          if (v169 == 63)
          {
            v171 = *v168;
            v34 = *(v168 + 16);
            v172 = *(v168 + 32);
            v173 = *(v168 + 48);
            v260 = *v168;
            v261 = v172;
            v264 = v34;
            v265 = v173;
            v170 = 64;
          }

          else if (v169 == 1)
          {
            v171 = vld1q_dup_s16(v168);
            v260 = v171;
            v261 = v171;
            v264 = v171;
            v265 = v171;
            v170 = 2;
          }

          else if (v86[1])
          {
            v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 64, v168, v169, *v94.i8, *v34.i8);
          }

          else
          {
            v170 = 0;
            v171.i64[0] = 0;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v174 = v168 + v170;
          v175 = v86[2];
          if (v175 == 63)
          {
            v177 = *v174;
            v34 = *(v174 + 16);
            v178 = *(v174 + 32);
            v179 = *(v174 + 48);
            v254 = *v174;
            v255 = v178;
            v258 = v34;
            v259 = v179;
            v176 = 64;
          }

          else if (v175 == 1)
          {
            v177 = vld1q_dup_s16(v174);
            v254 = v177;
            v255 = v177;
            v258 = v177;
            v259 = v177;
            v176 = 2;
          }

          else if (v86[2])
          {
            v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v174, v175, *v171.i8, *v34.i8);
          }

          else
          {
            v176 = 0;
            v177.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
          }

          v180 = v174 + v176;
          v181 = v86[3];
          if (v181 == 63)
          {
            v183 = *v180;
            v34 = *(v180 + 16);
            v184 = *(v180 + 32);
            v185 = *(v180 + 48);
            v262 = *v180;
            v263 = v184;
            v266 = v34;
            v267 = v185;
            v182 = 64;
          }

          else if (v181 == 1)
          {
            v183 = vld1q_dup_s16(v180);
            v262 = v183;
            v263 = v183;
            v266 = v183;
            v267 = v183;
            v182 = 2;
          }

          else if (v86[3])
          {
            v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 64, v180, v181, *v177.i8, *v34.i8);
          }

          else
          {
            v182 = 0;
            v183.i64[0] = 0;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v186 = v180 + v182;
          v187 = v86[4];
          if (v187 == 63)
          {
            v189 = *v186;
            v34 = *(v186 + 16);
            v190 = *(v186 + 32);
            v191 = *(v186 + 48);
            v268 = *v186;
            v269 = v190;
            v272 = v34;
            v273 = v191;
            v188 = 64;
          }

          else if (v187 == 1)
          {
            v189 = vld1q_dup_s16(v186);
            v268 = v189;
            v269 = v189;
            v272 = v189;
            v273 = v189;
            v188 = 2;
          }

          else if (v86[4])
          {
            v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v186, v187, *v183.i8, *v34.i8);
          }

          else
          {
            v188 = 0;
            v189.i64[0] = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
          }

          v192 = v186 + v188;
          v193 = v86[5];
          if (v193 == 63)
          {
            v195 = *v192;
            v34 = *(v192 + 16);
            v196 = *(v192 + 32);
            v197 = *(v192 + 48);
            v276 = *v192;
            v277 = v196;
            v280 = v34;
            v281 = v197;
            v194 = 64;
          }

          else if (v193 == 1)
          {
            v195 = vld1q_dup_s16(v192);
            v276 = v195;
            v277 = v195;
            v280 = v195;
            v281 = v195;
            v194 = 2;
          }

          else if (v86[5])
          {
            v194 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 64, v192, v193, *v189.i8, *v34.i8);
          }

          else
          {
            v194 = 0;
            v195.i64[0] = 0;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v198 = v192 + v194;
          v199 = v86[6];
          if (v199 == 63)
          {
            v201 = *v198;
            v34 = *(v198 + 16);
            v202 = *(v198 + 32);
            v203 = *(v198 + 48);
            v270 = *v198;
            v271 = v202;
            v274 = v34;
            v275 = v203;
            v200 = 64;
          }

          else if (v199 == 1)
          {
            v201 = vld1q_dup_s16(v198);
            v270 = v201;
            v271 = v201;
            v274 = v201;
            v275 = v201;
            v200 = 2;
          }

          else if (v86[6])
          {
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v198, v199, *v195.i8, *v34.i8);
          }

          else
          {
            v200 = 0;
            v201.i64[0] = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
          }

          v204 = v198 + v200;
          v205 = v86[7];
          if (v205 == 63)
          {
            v35 = *v204;
            v34 = *(v204 + 16);
            v206 = *(v204 + 32);
            v207 = *(v204 + 48);
            v278 = *v204;
            v279 = v206;
            v282 = v34;
            v283 = v207;
            v44 = a7;
            v15 = v239;
          }

          else
          {
            v44 = a7;
            v15 = v239;
            if (v205 == 1)
            {
              v35 = vld1q_dup_s16(v204);
              v278 = v35;
              v279 = v35;
              v282 = v35;
              v283 = v35;
            }

            else if (v205)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 64, v204, v205, *v201.i8, *v34.i8);
            }

            else
            {
              v35.i64[0] = 0;
              v278 = 0u;
              v279 = 0u;
              v282 = 0u;
              v283 = 0u;
            }
          }

          v208 = v247;
          v45 = v42 + 1;
          if (v247)
          {
            v209 = 0;
            v210 = &v252.i8[64 * v245 + 8 * v246];
            v211 = v248;
            do
            {
              if (v211)
              {
                v212 = 0;
                v213 = v243 + v244 * v209;
                do
                {
                  *(v213 + v212) = v210[v212];
                  ++v212;
                  v211 = v248;
                }

                while (8 * v248 > v212);
                v208 = v247;
              }

              ++v209;
              v210 += 64;
            }

            while (v209 < v208);
          }

LABEL_50:
          v20 = v42 == v232 >> 3;
          v42 = v45;
        }

        while (!v20);
        v20 = v17++ == v218;
      }

      while (!v20);
    }
  }
}