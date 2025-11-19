void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153[28] = *MEMORY[0x29EDCA608];
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
          v85 = v130 + 4 * (v48 - v35);
          if (!(v52 & 1 | (v51 < 0x10u)) && v134 > 0xF)
          {
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v130 + 4 * (v48 - v35), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v117, v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 32, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v117 + 32, v24, v38, v84[3]));
            v40 = v85 + v116;
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + v116, v24, v39, v84[4]));
            v42 = v85 + 12 * a11;
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 32, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 32, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(&v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
          v93 = v141;
          v35 = a7;
          v15 = v124;
          v45 = v33 + 1;
          if (v141)
          {
            v94 = 0;
            v95 = &v146[64 * v139 + 4 * v140];
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91));
            v44 = (v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]));
            v45 = (v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 2, a11, v44, v91[2]));
            v46 = (v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 32), a11, v45, v91[3]));
            v47 = (v92 + v115);
            v48 = (v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]));
            v49 = (v92 + 12 * a11);
            v50 = (v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]));
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 2, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 2, a11, (v50 + v51), v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 64, v89, *v91));
          v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v93, v91[1]));
          v95 = (v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 64, v94, v91[2]));
          v96 = (v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v95, v91[3]));
          v97 = (v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v96, v91[4]));
          v98 = (v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v97, v91[5]));
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, (v98 + v99), v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v130 + 4 * (v48 - v35)), v24, v79, *v84));
            v37 = (v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117), v24, v36, v84[1]));
            v38 = (v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 2, v24, v37, v84[2]));
            v39 = (v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v117 + 32), v24, v38, v84[3]));
            v40 = (v85 + v116);
            v41 = (v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v116), v24, v39, v84[4]));
            v42 = (v85 + 12 * a11);
            v43 = (v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]));
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 2, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 2, v24, (v43 + v44), v84[7]);
            v35 = a7;
            v15 = v124;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 64, v79, *v84));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 64, v86, v84[1]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 64, v87, v84[2]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 64, v88, v84[3]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 64, v89, v84[4]));
          v91 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 64, v90, v84[5]));
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 64, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 64, (v91 + v92), v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v110 = v111 >> 3;
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
      v120 = v33 - 4;
      v114 = v32 - 3;
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
    if (v129 >> 4 <= v123 >> 4)
    {
      v132 = v26 >> 4;
      v116 = v26 & 0xF;
      v121 = (v26 & 0xF) + 1;
      v106 = v27 & 7;
      v107 = v27 >> 3;
      v115 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v41 = vcgt_u32(v40, 0x1F0000000FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v41);
      v112 = v41;
      v122 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v130)
        {
          v43 = v130;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v111 < v42)
        {
          v42 = v111;
        }

        v119 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v106;
        v118 = v45;
        v47 = v45 != 8;
        v48 = v129 >> 4;
        v49 = v106 + 1;
        if (v25 != v107)
        {
          v49 = 8;
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
          v55 = 16 * v48;
          v56 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = 16 * v48;
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
            v60 = 16;
          }

          v61 = 1;
          if (8 * v25 >= v130 && v55 >= v50)
          {
            v62 = v58 != v116;
            if (v48 != v132)
            {
              v62 = v59 != 16;
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

          v80 = v79 + 15;
          if (v80 < 0x20)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 4) - 1)));
          }

          v82 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 7;
          if (v83 < 0x10)
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
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 3) - 1)));
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
          v96 = (v128 + 16 * (v57 - v50));
          if (!(v61 & 1 | (v60 < 0x10u)) && v131 > 7)
          {
            v51 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96, a11, v91, *v95)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115), a11, v51, v95[1]);
            v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96 + 8, a11, v52, v95[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115 + 128), a11, v52 + v53, v95[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v54 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v91;
          v140 = v60;
          v141 = v131;
          v136 = v119;
          v137 = v57 - v55;
          block[6] = v95;
          v134 = v128 + 16 * (v57 - v50);
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

          v97 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v91, *v95)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v97, v95[1]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v98, v95[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v98 + v99, v95[3]);
          v100 = v138;
          v50 = v129;
          v23 = v122;
          v54 = v48 + 1;
          if (v138)
          {
            v101 = 0;
            v102 = &v143[16 * v136 + v137];
            v103 = v139;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v134 + v135 * v101;
                do
                {
                  *(v105 + v104) = v102->n128_u8[v104];
                  ++v104;
                  v103 = v139;
                }

                while (16 * v139 > v104);
                v100 = v138;
              }

              ++v101;
              v102 += 16;
            }

            while (v101 < v100);
          }

LABEL_50:
          v28 = v48 == v123 >> 4;
          v48 = v54;
        }

        while (!v28);
        v28 = v25++ == v110;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v110 = v111 >> 3;
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
      v120 = v33 - 4;
      v114 = v32 - 3;
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
    if (v129 >> 4 <= v123 >> 4)
    {
      v132 = v26 >> 4;
      v116 = v26 & 0xF;
      v121 = (v26 & 0xF) + 1;
      v106 = v27 & 7;
      v107 = v27 >> 3;
      v115 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v41 = vcgt_u32(v40, 0x1F0000000FLL);
      v113 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v41);
      v112 = v41;
      v122 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v130)
        {
          v43 = v130;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v111 < v42)
        {
          v42 = v111;
        }

        v119 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v106;
        v118 = v45;
        v47 = v45 != 8;
        v48 = v129 >> 4;
        v49 = v106 + 1;
        if (v25 != v107)
        {
          v49 = 8;
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
          v55 = 16 * v48;
          v56 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = 16 * v48;
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
            v60 = 16;
          }

          v61 = 1;
          if (8 * v25 >= v130 && v55 >= v50)
          {
            v62 = v58 != v116;
            if (v48 != v132)
            {
              v62 = v59 != 16;
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

          v80 = v79 + 15;
          if (v80 < 0x20)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 4) - 1)));
          }

          v82 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 7;
          if (v83 < 0x10)
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
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 3) - 1)));
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
          v96 = (v128 + 16 * (v57 - v50));
          if (!(v61 & 1 | (v60 < 0x10u)) && v131 > 7)
          {
            v51 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96, a11, v91, *v95)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115), a11, v51, v95[1]);
            v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v96 + 8, a11, v52, v95[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v96 + v115 + 128), a11, v52 + v53, v95[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v54 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v91;
          v140 = v60;
          v141 = v131;
          v136 = v119;
          v137 = v57 - v55;
          block[6] = v95;
          v134 = v128 + 16 * (v57 - v50);
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

          v97 = &v91[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v91, *v95)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v97, v95[1]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v98, v95[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v98 + v99, v95[3]);
          v100 = v138;
          v50 = v129;
          v23 = v122;
          v54 = v48 + 1;
          if (v138)
          {
            v101 = 0;
            v102 = &v143[16 * v136 + v137];
            v103 = v139;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v134 + v135 * v101;
                do
                {
                  *(v105 + v104) = v102->n128_u8[v104];
                  ++v104;
                  v103 = v139;
                }

                while (16 * v139 > v104);
                v100 = v138;
              }

              ++v101;
              v102 += 16;
            }

            while (v101 < v100);
          }

LABEL_50:
          v28 = v48 == v123 >> 4;
          v48 = v54;
        }

        while (!v28);
        v28 = v25++ == v110;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v128 = v15;
  v17 = v16;
  v19 = v18;
  v123 = v20;
  v124 = v21;
  v111 = v22;
  v23 = v12;
  v146 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v127 = v14;
  v24 = v14 >> 3;
  v110 = v14 + a10 - 1;
  v112 = v110 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v131 = v23;
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
  v122 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v121 = result;
  if (v24 <= v112)
  {
    v120 = v128 + a9 - 1;
    if (v128 >> 4 <= v120 >> 4)
    {
      result = v23;
      v130 = (v19 - 1) >> 4;
      v109 = (v17 - 1) >> 3;
      v106 = v19 - 1;
      v114 = (v19 - 1) & 0xF;
      v107 = ((v17 - 1) & 7) + 1;
      v108 = (v17 - 1) & 7;
      v113 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v119 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v118 = v34;
      v105 = 8 * v26 * v25;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v127)
        {
          v36 = v127;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v110 < v35)
        {
          v35 = v110;
        }

        v126 = 8 * v24;
        v117 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v108;
        v116 = v38;
        v40 = v38 != 8;
        v41 = v128 >> 4;
        v42 = v107;
        if (v24 != v109)
        {
          v42 = 8;
        }

        v129 = v42;
        if (v24 != v109)
        {
          v39 = v40;
        }

        v115 = v39;
        v125 = v111 + (v36 - v127) * a11;
        v43 = v128;
        do
        {
          v47 = 16 * v41;
          v48 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v49 = v43;
          }

          else
          {
            v49 = 16 * v41;
          }

          if (v120 < v48)
          {
            v48 = v128 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v41 == v130)
          {
            v52 = v114 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (v126 >= v127 && v47 >= v43)
          {
            v54 = v50 != v114;
            if (v41 != v130)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v115;
          }

          if (v121)
          {
            v75 = 0;
            v76 = v105 >> (*(result + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 1;
                  v79 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v78 = 0;
                    v75 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 0;
                v79 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 0;
                v79 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 0;
              v79 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v78 = 0;
              v75 = 16;
              v79 = 16;
            }

            else
            {
              v78 = 1;
              v79 = 0;
              if (v76 == 1024)
              {
                v79 = 8;
                v75 = 16;
              }
            }

            v93 = (v75 >> 4) - 1;
            if (v77)
            {
              v94 = 0;
            }

            else
            {
              v94 = 32 - __clz(~(-1 << -__clz(v93)));
            }

            v95 = (v79 >> 3) - 1;
            if (v78)
            {
              v96 = 0;
              if (v94)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v96 = 32 - __clz(~(-1 << -__clz(v95)));
              if (v96 | v94)
              {
LABEL_114:
                v97 = 0;
                v98 = 0;
                v99 = v41 & v93;
                v100 = v24 & v95;
                v101 = v96 != 0;
                v102 = v94 != 0;
                v103 = 1;
                do
                {
                  --v96;
                  if (v101)
                  {
                    v98 |= (v103 & v100) << v97++;
                  }

                  else
                  {
                    v96 = 0;
                  }

                  --v94;
                  if (v102)
                  {
                    v98 |= (v103 & v99) << v97++;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  v103 *= 2;
                  --v97;
                  v102 = v94 != 0;
                  v101 = v96 != 0;
                }

                while (v94 | v96);
                v104 = v98 << 11;
                result = v131;
                goto LABEL_126;
              }
            }

            v104 = 0;
LABEL_126:
            v62 = v104 + ((v47 / v75 + v126 / v79 * ((v75 + v106) / v75)) << 14);
            goto LABEL_56;
          }

          if (v119)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v118.i8[0];
            v58 = v118.i8[4];
            v60 = v119.i32[0];
            v61 = v119.i32[1];
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

LABEL_56:
          v63 = *(result + 128) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
          }

          v66 = *(result + 132) >> (*(result + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 7;
          if (v67 < 0x10)
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
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 3) - 1)));
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
          v80 = (v123 + v62);
          if (v122)
          {
            v81 = v51;
            memcpy(__dst, (v123 + v62), sizeof(__dst));
            v51 = v81;
            result = v131;
            v80 = __dst;
          }

          v82 = (v124 + v74);
          v83 = (v125 + 16 * (v49 - v43));
          if (!(v53 & 1 | (v52 < 0x10u)) && v129 > 7)
          {
            v44 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83, a11, v80, *v82)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v83 + v113), a11, v44, v82[1]);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, a11, v45, v82[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v83 + v113 + 128), a11, v45 + v46, v82[3]);
LABEL_29:
            v43 = v128;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v80;
          v139 = v52;
          v140 = v129;
          v135 = v117;
          v136 = v49 - v47;
          block[6] = v82;
          v133 = v83;
          v134 = a11;
          v137 = v116;
          v138 = v51;
          if (v53)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v84 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v80, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v84, v82[1]);
          v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v85, v82[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v85 + v86, v82[3]);
          v87 = v137;
          v43 = v128;
          if (v137)
          {
            v88 = 0;
            v89 = &v142[16 * v135 + v136];
            v90 = v138;
            do
            {
              if (v90)
              {
                v91 = 0;
                v92 = v133 + v134 * v88;
                do
                {
                  v92[v91] = v89->n128_i8[v91];
                  ++v91;
                  v90 = v138;
                }

                while (16 * v138 > v91);
                v87 = v137;
              }

              ++v88;
              v89 += 16;
            }

            while (v88 < v87);
          }

LABEL_30:
          v28 = v41++ == v120 >> 4;
          result = v131;
        }

        while (!v28);
        v28 = v24++ == v112;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v128 = v15;
  v17 = v16;
  v19 = v18;
  v123 = v20;
  v124 = v21;
  v111 = v22;
  v23 = v12;
  v146 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v127 = v14;
  v24 = v14 >> 3;
  v110 = v14 + a10 - 1;
  v112 = v110 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v131 = v23;
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
  v122 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v121 = result;
  if (v24 <= v112)
  {
    v120 = v128 + a9 - 1;
    if (v128 >> 4 <= v120 >> 4)
    {
      result = v23;
      v130 = (v19 - 1) >> 4;
      v109 = (v17 - 1) >> 3;
      v106 = v19 - 1;
      v114 = (v19 - 1) & 0xF;
      v107 = ((v17 - 1) & 7) + 1;
      v108 = (v17 - 1) & 7;
      v113 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v119 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v118 = v34;
      v105 = 8 * v26 * v25;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v127)
        {
          v36 = v127;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v110 < v35)
        {
          v35 = v110;
        }

        v126 = 8 * v24;
        v117 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v108;
        v116 = v38;
        v40 = v38 != 8;
        v41 = v128 >> 4;
        v42 = v107;
        if (v24 != v109)
        {
          v42 = 8;
        }

        v129 = v42;
        if (v24 != v109)
        {
          v39 = v40;
        }

        v115 = v39;
        v125 = v111 + (v36 - v127) * a11;
        v43 = v128;
        do
        {
          v47 = 16 * v41;
          v48 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v49 = v43;
          }

          else
          {
            v49 = 16 * v41;
          }

          if (v120 < v48)
          {
            v48 = v128 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v41 == v130)
          {
            v52 = v114 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (v126 >= v127 && v47 >= v43)
          {
            v54 = v50 != v114;
            if (v41 != v130)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v115;
          }

          if (v121)
          {
            v75 = 0;
            v76 = v105 >> (*(result + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 1;
                  v79 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v78 = 0;
                    v75 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 0;
                v79 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 0;
                v79 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 0;
              v79 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v78 = 0;
              v75 = 16;
              v79 = 16;
            }

            else
            {
              v78 = 1;
              v79 = 0;
              if (v76 == 1024)
              {
                v79 = 8;
                v75 = 16;
              }
            }

            v93 = (v75 >> 4) - 1;
            if (v77)
            {
              v94 = 0;
            }

            else
            {
              v94 = 32 - __clz(~(-1 << -__clz(v93)));
            }

            v95 = (v79 >> 3) - 1;
            if (v78)
            {
              v96 = 0;
              if (v94)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v96 = 32 - __clz(~(-1 << -__clz(v95)));
              if (v96 | v94)
              {
LABEL_114:
                v97 = 0;
                v98 = 0;
                v99 = v41 & v93;
                v100 = v24 & v95;
                v101 = v96 != 0;
                v102 = v94 != 0;
                v103 = 1;
                do
                {
                  --v96;
                  if (v101)
                  {
                    v98 |= (v103 & v100) << v97++;
                  }

                  else
                  {
                    v96 = 0;
                  }

                  --v94;
                  if (v102)
                  {
                    v98 |= (v103 & v99) << v97++;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  v103 *= 2;
                  --v97;
                  v102 = v94 != 0;
                  v101 = v96 != 0;
                }

                while (v94 | v96);
                v104 = v98 << 11;
                result = v131;
                goto LABEL_126;
              }
            }

            v104 = 0;
LABEL_126:
            v62 = v104 + ((v47 / v75 + v126 / v79 * ((v75 + v106) / v75)) << 14);
            goto LABEL_56;
          }

          if (v119)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v118.i8[0];
            v58 = v118.i8[4];
            v60 = v119.i32[0];
            v61 = v119.i32[1];
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

LABEL_56:
          v63 = *(result + 128) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
          }

          v66 = *(result + 132) >> (*(result + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 7;
          if (v67 < 0x10)
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
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 3) - 1)));
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
          v80 = (v123 + v62);
          if (v122)
          {
            v81 = v51;
            memcpy(__dst, (v123 + v62), sizeof(__dst));
            v51 = v81;
            result = v131;
            v80 = __dst;
          }

          v82 = (v124 + v74);
          v83 = (v125 + 16 * (v49 - v43));
          if (!(v53 & 1 | (v52 < 0x10u)) && v129 > 7)
          {
            v44 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83, a11, v80, *v82)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v83 + v113), a11, v44, v82[1]);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v83 + 8, a11, v45, v82[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock((v83 + v113 + 128), a11, v45 + v46, v82[3]);
LABEL_29:
            v43 = v128;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v80;
          v139 = v52;
          v140 = v129;
          v135 = v117;
          v136 = v49 - v47;
          block[6] = v82;
          v133 = v83;
          v134 = a11;
          v137 = v116;
          v138 = v51;
          if (v53)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v84 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v80, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v144, 256, v84, v82[1]);
          v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v85, v82[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v85 + v86, v82[3]);
          v87 = v137;
          v43 = v128;
          if (v137)
          {
            v88 = 0;
            v89 = &v142[16 * v135 + v136];
            v90 = v138;
            do
            {
              if (v90)
              {
                v91 = 0;
                v92 = v133 + v134 * v88;
                do
                {
                  v92[v91] = v89->n128_i8[v91];
                  ++v91;
                  v90 = v138;
                }

                while (16 * v138 > v91);
                v87 = v137;
              }

              ++v88;
              v89 += 16;
            }

            while (v88 < v87);
          }

LABEL_30:
          v28 = v41++ == v120 >> 4;
          result = v131;
        }

        while (!v28);
        v28 = v24++ == v112;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10->n128_u8[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (16 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 16;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10->n128_u8[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (16 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 16;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10->n128_u8[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (16 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 16;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10->n128_u8[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (16 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 16;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v20[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *result = vuzp1q_s32(*v2, v12);
      result[2] = vuzp2q_s32(v10, v12);
      result[4] = vuzp1q_s32(v11, v13);
      result[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[2] = v6;
      result[4] = v6;
      result[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v17) = *(a1 + 84);
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          ++v18;
          v17 = *(a1 + 84);
        }

        while (2 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].i8[8 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].i8[8 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].i8[8 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].i8[8 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 48);
      v12 = *(v2 + 144);
      v13 = *(v2 + 64);
      v14 = *(v2 + 176);
      v15 = *(v2 + 192);
      v16 = *(v2 + 224);
      v17 = *(v2 + 32);
      v18 = *(v2 + 128);
      v19 = *(v2 + 160);
      v20 = *(v2 + 80);
      v21 = *(v2 + 112);
      v22 = *(v2 + 208);
      v23 = *(v2 + 240);
      v24 = *(v2 + 96);
      *result = *v2;
      result[1] = v17;
      result[2] = v18;
      result[3] = v19;
      result[8] = v10;
      result[9] = v11;
      result[10] = v12;
      result[11] = v14;
      result[16] = v13;
      result[17] = v24;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[24] = v20;
      result[25] = v21;
      result[26] = v22;
      result[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[8] = v6;
      result[9] = v6;
      result[10] = v6;
      result[11] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[24] = v6;
      result[25] = v6;
      result[26] = v6;
      result[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[26] = 0u;
      result[27] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = 0;
    v27 = &v31[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v28) = *(a1 + 84);
    do
    {
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 56) + *(a1 + 64) * v26;
        do
        {
          *(v30 + v29) = v27[v29];
          ++v29;
          v28 = *(a1 + 84);
        }

        while (8 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 128;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 48);
      v12 = *(v2 + 144);
      v13 = *(v2 + 64);
      v14 = *(v2 + 176);
      v15 = *(v2 + 192);
      v16 = *(v2 + 224);
      v17 = *(v2 + 32);
      v18 = *(v2 + 128);
      v19 = *(v2 + 160);
      v20 = *(v2 + 80);
      v21 = *(v2 + 112);
      v22 = *(v2 + 208);
      v23 = *(v2 + 240);
      v24 = *(v2 + 96);
      *result = *v2;
      result[1] = v17;
      result[2] = v18;
      result[3] = v19;
      result[8] = v10;
      result[9] = v11;
      result[10] = v12;
      result[11] = v14;
      result[16] = v13;
      result[17] = v24;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[24] = v20;
      result[25] = v21;
      result[26] = v22;
      result[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[8] = v6;
      result[9] = v6;
      result[10] = v6;
      result[11] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[24] = v6;
      result[25] = v6;
      result[26] = v6;
      result[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[26] = 0u;
      result[27] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = 0;
    v27 = &v31[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v28) = *(a1 + 84);
    do
    {
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 56) + *(a1 + 64) * v26;
        do
        {
          *(v30 + v29) = v27[v29];
          ++v29;
          v28 = *(a1 + 84);
        }

        while (8 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 128;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 48);
      v12 = *(v2 + 144);
      v13 = *(v2 + 64);
      v14 = *(v2 + 176);
      v15 = *(v2 + 192);
      v16 = *(v2 + 224);
      v17 = *(v2 + 32);
      v18 = *(v2 + 128);
      v19 = *(v2 + 160);
      v20 = *(v2 + 80);
      v21 = *(v2 + 112);
      v22 = *(v2 + 208);
      v23 = *(v2 + 240);
      v24 = *(v2 + 96);
      *result = *v2;
      result[1] = v17;
      result[2] = v18;
      result[3] = v19;
      result[8] = v10;
      result[9] = v11;
      result[10] = v12;
      result[11] = v14;
      result[16] = v13;
      result[17] = v24;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[24] = v20;
      result[25] = v21;
      result[26] = v22;
      result[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[8] = v6;
      result[9] = v6;
      result[10] = v6;
      result[11] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[24] = v6;
      result[25] = v6;
      result[26] = v6;
      result[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[26] = 0u;
      result[27] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = 0;
    v27 = &v31[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v28) = *(a1 + 84);
    do
    {
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 56) + *(a1 + 64) * v26;
        do
        {
          *(v30 + v29) = v27[v29];
          ++v29;
          v28 = *(a1 + 84);
        }

        while (8 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 128;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 48);
      v12 = *(v2 + 144);
      v13 = *(v2 + 64);
      v14 = *(v2 + 176);
      v15 = *(v2 + 192);
      v16 = *(v2 + 224);
      v17 = *(v2 + 32);
      v18 = *(v2 + 128);
      v19 = *(v2 + 160);
      v20 = *(v2 + 80);
      v21 = *(v2 + 112);
      v22 = *(v2 + 208);
      v23 = *(v2 + 240);
      v24 = *(v2 + 96);
      *result = *v2;
      result[1] = v17;
      result[2] = v18;
      result[3] = v19;
      result[8] = v10;
      result[9] = v11;
      result[10] = v12;
      result[11] = v14;
      result[16] = v13;
      result[17] = v24;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[24] = v20;
      result[25] = v21;
      result[26] = v22;
      result[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[8] = v6;
      result[9] = v6;
      result[10] = v6;
      result[11] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[24] = v6;
      result[25] = v6;
      result[26] = v6;
      result[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[26] = 0u;
      result[27] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = 0;
    v27 = &v31[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v28) = *(a1 + 84);
    do
    {
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 56) + *(a1 + 64) * v26;
        do
        {
          *(v30 + v29) = v27[v29];
          ++v29;
          v28 = *(a1 + 84);
        }

        while (8 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 128;
    }

    while (v26 < v25);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v8) = *(a1 + 84);
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          ++v9;
          v8 = *(a1 + 84);
        }

        while (2 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v8) = *(a1 + 84);
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          ++v9;
          v8 = *(a1 + 84);
        }

        while (2 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v8) = *(a1 + 84);
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          ++v9;
          v8 = *(a1 + 84);
        }

        while (2 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v8) = *(a1 + 84);
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          ++v9;
          v8 = *(a1 + 84);
        }

        while (2 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].f64[*(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].f64[*(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].f64[*(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].f64[*(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v10) = *(a1 + 84);
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 56) + *(a1 + 64) * v8;
        do
        {
          *(v12 + v11) = v9[v11];
          ++v11;
          v10 = *(a1 + 84);
        }

        while (2 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 32;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v10) = *(a1 + 84);
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 56) + *(a1 + 64) * v8;
        do
        {
          *(v12 + v11) = v9[v11];
          ++v11;
          v10 = *(a1 + 84);
        }

        while (2 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 32;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v10) = *(a1 + 84);
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 56) + *(a1 + 64) * v8;
        do
        {
          *(v12 + v11) = v9[v11];
          ++v11;
          v10 = *(a1 + 84);
        }

        while (2 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 32;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v10) = *(a1 + 84);
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 56) + *(a1 + 64) * v8;
        do
        {
          *(v12 + v11) = v9[v11];
          ++v11;
          v10 = *(a1 + 84);
        }

        while (2 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 32;
    }

    while (v8 < v7);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    result = &v24[256 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      v14 = *(v2 + 64);
      v15 = *(v2 + 80);
      v16 = *(v2 + 96);
      v17 = *(v2 + 112);
      *result = vzip1q_s64(*v2, v11);
      result[1] = vzip1q_s64(v14, v15);
      result[4] = vzip2q_s64(v10, v11);
      result[5] = vzip2q_s64(v14, v15);
      result[8] = vzip1q_s64(v12, v13);
      result[9] = vzip1q_s64(v16, v17);
      result[12] = vzip2q_s64(v12, v13);
      result[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      result[1] = v6;
      result[4] = v6;
      result[5] = v6;
      result[8] = v6;
      result[9] = v6;
      result[12] = v6;
      result[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v21) = *(a1 + 84);
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *(a1 + 56) + *(a1 + 64) * v19;
        do
        {
          *(v23 + v22) = v20[v22];
          ++v22;
          v21 = *(a1 + 84);
        }

        while (4 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 64;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5 && *(a1 + 84))
  {
    v6 = 0;
    v7 = &v11[*(a1 + 72)] + *(a1 + 76);
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          v8 = *(a1 + 84);
          ++v9;
        }

        while (v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5 && *(a1 + 84))
  {
    v6 = 0;
    v7 = &v11[*(a1 + 72)] + *(a1 + 76);
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          v8 = *(a1 + 84);
          ++v9;
        }

        while (v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5 && *(a1 + 84))
  {
    v6 = 0;
    v7 = &v11[*(a1 + 72)] + *(a1 + 76);
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          v8 = *(a1 + 84);
          ++v9;
        }

        while (v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5 && *(a1 + 84))
  {
    v6 = 0;
    v7 = &v11[*(a1 + 72)] + *(a1 + 76);
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = *(a1 + 56) + *(a1 + 64) * v6;
        do
        {
          *(v10 + v9) = v7[v9];
          v8 = *(a1 + 84);
          ++v9;
        }

        while (v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v15, 256, v2, *v3, v4);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v17, 256, v5, v3[1], v4);
  v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v16, 256, v6, v3[2], v4);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v18, 256, v6 + v7, v3[3], v4);
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = 0;
    v11 = &v15[256 * *(a1 + 72) + 16 * *(a1 + 76)];
    LODWORD(v12) = *(a1 + 84);
    do
    {
      if (v12)
      {
        v13 = 0;
        v14 = *(a1 + 56) + *(a1 + 64) * v10;
        do
        {
          *(v14 + v13) = v11[v13];
          ++v13;
          v12 = *(a1 + 84);
        }

        while (16 * v12 > v13);
        v9 = *(a1 + 80);
      }

      ++v10;
      v11 += 256;
    }

    while (v10 < v9);
  }

  return result;
}

int16x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F2FD5;
  v8 = 16;
  do
  {
    result = &v21[128 * *v7 + 16 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 63)
        {
          v12 = *v4;
          a3 = *(v4 + 16);
          v13 = *(v4 + 32);
          v14 = *(v4 + 48);
          *result = vuzp1q_s32(*v4, v13);
          result[2] = vuzp2q_s32(v12, v13);
          result[4] = vuzp1q_s32(a3, v14);
          a2 = vuzp2q_s32(a3, v14);
          result[6] = a2;
          v9 = 64;
        }

        else if (v11 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *result = a2;
          result[2] = a2;
          result[4] = a2;
          result[6] = a2;
          v9 = 2;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 32, v4, v11, *a2.i8, *a3.i8);
          v9 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 32, v4, v11, v6);
        v9 = 32;
      }
    }

    else
    {
      v9 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = 0;
    v17 = &v21[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v18) = *(a1 + 84);
    do
    {
      if (v18)
      {
        v19 = 0;
        v20 = *(a1 + 56) + *(a1 + 64) * v16;
        do
        {
          *(v20 + v19) = v17[v19];
          ++v19;
          v18 = *(a1 + 84);
        }

        while (2 * v18 > v19);
        v15 = *(a1 + 80);
      }

      ++v16;
      v17 += 32;
    }

    while (v16 < v15);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)].f64[*(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F2FD5;
  v6 = 16;
  do
  {
    result = &v25[256 * *v5 + 32 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *v2;
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 64);
          v16 = *(v2 + 80);
          v17 = *(v2 + 96);
          v18 = *(v2 + 112);
          *result = vzip1q_s64(*v2, v12);
          result[1] = vzip1q_s64(v15, v16);
          result[4] = vzip2q_s64(v11, v12);
          result[5] = vzip2q_s64(v15, v16);
          result[8] = vzip1q_s64(v13, v14);
          result[9] = vzip1q_s64(v17, v18);
          result[12] = vzip2q_s64(v13, v14);
          result[13] = vzip2q_s64(v17, v18);
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          result[1] = v10;
          result[4] = v10;
          result[5] = v10;
          result[8] = v10;
          result[9] = v10;
          result[12] = v10;
          result[13] = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result->i32, 64, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = 0;
    v21 = &v25[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v22) = *(a1 + 84);
    do
    {
      if (v22)
      {
        v23 = 0;
        v24 = *(a1 + 56) + *(a1 + 64) * v20;
        do
        {
          *(v24 + v23) = v21[v23];
          ++v23;
          v22 = *(a1 + 84);
        }

        while (4 * v22 > v23);
        v19 = *(a1 + 80);
      }

      ++v20;
      v21 += 64;
    }

    while (v20 < v19);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)] + 4 * *(a1 + 76);
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F2FD5;
  v10 = 16;
  do
  {
    v12 = &v21[128 * *v9 + 16 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 63)
        {
          v14 = *v6;
          a3 = *(v6 + 16);
          a4 = *(v6 + 32);
          a5 = *(v6 + 48);
          *v12 = vuzp1q_s32(*v6, a4);
          v12[2] = vuzp2q_s32(v14, a4);
          v12[4] = vuzp1q_s32(a3, a5);
          a2 = vuzp2q_s32(a3, a5);
          v12[6] = a2;
          v11 = 64;
        }

        else if (v13 == 1)
        {
          a2 = vld1q_dup_s16(v6);
          *v12 = a2;
          v12[2] = a2;
          v12[4] = a2;
          v12[6] = a2;
          v11 = 2;
        }

        else
        {
          v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v12, 32, v6, v13, *a2.i64, *a3.i64, *a4.i64, *a5.i8);
        }
      }

      else
      {
        a2.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v12, 32, v6, v13, v8).u64[0];
        v11 = 32;
      }
    }

    else
    {
      v11 = 0;
      v12->i64[0] = 0;
      v12->i64[1] = 0;
      v12[2].i64[0] = 0;
      v12[2].i64[1] = 0;
      v12[4].i64[0] = 0;
      v12[4].i64[1] = 0;
      v12[6].i64[0] = 0;
      v12[6].i64[1] = 0;
    }

    v6 += v11;
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = 0;
    v17 = &v21[32 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v18) = *(a1 + 84);
    do
    {
      if (v18)
      {
        v19 = 0;
        v20 = *(a1 + 56) + *(a1 + 64) * v16;
        do
        {
          *(v20 + v19) = v17[v19];
          ++v19;
          v18 = *(a1 + 84);
        }

        while (2 * v18 > v19);
        v15 = *(a1 + 80);
      }

      ++v16;
      v17 += 32;
    }

    while (v16 < v15);
  }
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F2FD5;
  v6 = 16;
  do
  {
    result = &v25[256 * *v5 + 32 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *v2;
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 64);
          v16 = *(v2 + 80);
          v17 = *(v2 + 96);
          v18 = *(v2 + 112);
          *result = vzip1q_s64(*v2, v12);
          result[1] = vzip1q_s64(v15, v16);
          result[4] = vzip2q_s64(v11, v12);
          result[5] = vzip2q_s64(v15, v16);
          result[8] = vzip1q_s64(v13, v14);
          result[9] = vzip1q_s64(v17, v18);
          result[12] = vzip2q_s64(v13, v14);
          result[13] = vzip2q_s64(v17, v18);
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          result[1] = v10;
          result[4] = v10;
          result[5] = v10;
          result[8] = v10;
          result[9] = v10;
          result[12] = v10;
          result[13] = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 64, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *result = 0u;
      result[1] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[12] = 0u;
      result[13] = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = 0;
    v21 = &v25[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v22) = *(a1 + 84);
    do
    {
      if (v22)
      {
        v23 = 0;
        v24 = *(a1 + 56) + *(a1 + 64) * v20;
        do
        {
          *(v24 + v23) = v21[v23];
          ++v23;
          v22 = *(a1 + 84);
        }

        while (4 * v22 > v23);
        v19 = *(a1 + 80);
      }

      ++v20;
      v21 += 64;
    }

    while (v20 < v19);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (4 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F2FD5;
  v8 = 16;
  do
  {
    v10 = &v21[64 * *v7 + 8 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 31)
        {
          v12 = *v4;
          a3 = *(v4 + 8);
          v13 = *(v4 + 16);
          v14 = *(v4 + 24);
          *v10 = vuzp1_s16(*v4, v13);
          v10[2] = vuzp2_s16(v12, v13);
          v10[4] = vuzp1_s16(a3, v14);
          a2 = COERCE_DOUBLE(vuzp2_s16(a3, v14));
          *&v10[6] = a2;
          v9 = 32;
        }

        else if (v11 == 96)
        {
          a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
          *v10 = a2;
          *&v10[2] = a2;
          *&v10[4] = a2;
          *&v10[6] = a2;
          v9 = 1;
        }

        else
        {
          v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v10, 16, v4, v11, a2, a3);
        }
      }

      else
      {
        *&a2 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v10, 16, v4, v11, v6);
        v9 = 16;
      }
    }

    else
    {
      v9 = 0;
      *v10 = 0;
      v10[2] = 0;
      v10[4] = 0;
      v10[6] = 0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v15 = *(a1 + 80);
  if (v15 && *(a1 + 84))
  {
    v16 = 0;
    v17 = &v21[16 * *(a1 + 72) + *(a1 + 76)];
    v18 = 1;
    do
    {
      if (v18)
      {
        v19 = 0;
        v20 = *(a1 + 56) + *(a1 + 64) * v16;
        do
        {
          *(v20 + v19) = v17[v19];
          v18 = *(a1 + 84);
          ++v19;
        }

        while (v18 > v19);
        v15 = *(a1 + 80);
      }

      ++v16;
      v17 += 16;
    }

    while (v16 < v15);
  }
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72)] + 8 * *(a1 + 76);
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (8 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v102 = *MEMORY[0x29EDCA608];
  v75 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v86 = a8;
  v18 = a8 >> 5;
  v74 = a8 + a10 - 1;
  v19 = v74 >> 5;
  v89 = a1;
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
  v83 = v24;
  if (v18 <= v19)
  {
    v82 = a7 + a9 - 1;
    if (a7 >> 5 <= v82 >> 5)
    {
      v88 = (a5 - 1) >> 5;
      v73 = (a6 - 1) >> 5;
      v78 = (a5 - 1) & 0x1F;
      v72 = v19 + 1;
      do
      {
        v25 = (32 * v18) | 0x1F;
        if (32 * v18 <= v86)
        {
          v26 = v86;
        }

        else
        {
          v26 = 32 * v18;
        }

        if (v74 < v25)
        {
          v25 = v74;
        }

        v81 = v26 - 32 * v18;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != ((a6 - 1) & 0x1F);
        v80 = v28;
        v30 = v28 != 32;
        v31 = ((a6 - 1) & 0x1F) + 1;
        if (v18 != v73)
        {
          v31 = 32;
        }

        v87 = v31;
        if (v18 != v73)
        {
          v29 = v30;
        }

        v79 = v29;
        v85 = a2 + (v26 - v86) * a11;
        v32 = a7 >> 5;
        do
        {
          v33 = 32 * v32;
          v90 = v32 + 1;
          v34 = 32 * (v32 + 1) - 1;
          if (32 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 32 * v32;
          }

          if (v82 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          v38 = v89;
          if (v32 == v88)
          {
            v39 = v78 + 1;
          }

          else
          {
            v39 = 32;
          }

          v40 = 1;
          if (32 * v18 >= v86 && v33 >= a7)
          {
            v41 = v36 != v78;
            if (v32 != v88)
            {
              v41 = v37 != 32;
            }

            v40 = v41 || v79;
          }

          v42 = *(v89 + 128) >> (*(v89 + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 31;
          v44 = v43 >= 0x40;
          v45 = 32 - __clz(~(-1 << -__clz((v43 >> 5) - 1)));
          if (!v44)
          {
            v45 = 0;
          }

          v46 = *(v89 + 132) >> (*(v89 + 144) + a12);
          if (v46 <= 1)
          {
            v46 = 1;
          }

          v47 = v46 + 31;
          v48 = 32 - __clz(~(-1 << -__clz((v47 >> 5) - 1)));
          if (v47 >= 0x40)
          {
            v49 = v48;
          }

          else
          {
            v49 = 0;
          }

          if (v49 | v45)
          {
            v50 = 0;
            v51 = 0;
            v52 = v45 != 0;
            v53 = v49 != 0;
            v54 = 1;
            do
            {
              --v45;
              if (v52)
              {
                v51 |= (v54 & v32) << v50++;
              }

              else
              {
                v45 = 0;
              }

              --v49;
              if (v53)
              {
                v51 |= (v54 & v18) << v50++;
              }

              else
              {
                v49 = 0;
              }

              v54 *= 2;
              --v50;
              v53 = v49 != 0;
              v52 = v45 != 0;
            }

            while (v49 | v45);
            v55 = 32 * v51;
          }

          else
          {
            v55 = 0;
          }

          v56 = (a3 + v18 * v75 + (v32 << 10));
          if (v83)
          {
            v57 = v37;
            memcpy(__dst, v56, 0x400uLL);
            v37 = v57;
            v38 = v89;
            v56 = __dst;
          }

          v58 = (a4 + v55);
          v59 = v85 + v35 - a7;
          if (v40 & 1 | (v39 < 0x20u) || v87 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v38;
            block[5] = v56;
            v99 = v39;
            v100 = v87;
            v95 = v81;
            v96 = v35 - v33;
            block[6] = v58;
            v93 = v85 + v35 - a7;
            v94 = a11;
            v97 = v80;
            v98 = v37;
            if (v40)
            {
              dispatch_sync(*(*(v38 + 8) + 16552), block);
            }

            else
            {
              v63 = &byte_29D2F790B;
              v64 = 64;
              do
              {
                v65 = *v58++;
                v56 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[128 * *v63 + 1024 + 8 * *(v63 - 1)], 32, v56, v65, v16, v17));
                v63 += 2;
                v64 -= 2;
              }

              while (v64);
              v66 = v97;
              if (v97 && v98)
              {
                v67 = 0;
                v68 = &__dst[32 * v95 + 1024 + v96];
                v69 = 1;
                do
                {
                  if (v69)
                  {
                    v70 = 0;
                    v71 = v93 + v94 * v67;
                    do
                    {
                      *(v71 + v70) = v68[v70];
                      v69 = v98;
                      ++v70;
                    }

                    while (v98 > v70);
                    v66 = v97;
                  }

                  ++v67;
                  v68 += 32;
                }

                while (v67 < v66);
              }
            }
          }

          else
          {
            v60 = &byte_29D2F790B;
            v61 = 64;
            do
            {
              v62 = *v58++;
              v56 = (v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v59 + 4 * a11 * *v60 + 8 * *(v60 - 1)), a11, v56, v62, v16, v17));
              v60 += 2;
              v61 -= 2;
            }

            while (v61);
          }

          v32 = v90;
        }

        while (v90 != (v82 >> 5) + 1);
        ++v18;
      }

      while (v18 != v72);
    }
  }
}