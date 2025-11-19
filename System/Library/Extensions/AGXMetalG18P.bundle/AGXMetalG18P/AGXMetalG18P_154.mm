void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
  v146[112] = *MEMORY[0x29EDCA608];
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v111 = v112 >> 3;
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
      v115 = v32 - 3;
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
    if (v129 >> 3 <= v123 >> 3)
    {
      v132 = v26 >> 3;
      v116 = v26 & 7;
      v121 = (v26 & 7) + 1;
      v107 = v27 & 7;
      v108 = v27 >> 3;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v41 = vcgt_u32(v40, 0xF0000000FLL);
      v114 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 3uLL))))))), v41);
      v113 = v41;
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

        if (v112 < v42)
        {
          v42 = v112;
        }

        v119 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v107;
        v118 = v45;
        v47 = v45 != 8;
        v48 = v129 >> 3;
        v49 = v107 + 1;
        if (v25 != v108)
        {
          v49 = 8;
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
          v56 = 8 * v48;
          v57 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v58 = v50;
          }

          else
          {
            v58 = 8 * v48;
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
            v61 = 8;
          }

          v62 = 1;
          if (8 * v25 >= v130 && v56 >= v50)
          {
            v63 = v59 != v116;
            if (v48 != v132)
            {
              v63 = v60 != 8;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
          }

          v83 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v83 <= 1)
          {
            v83 = 1;
          }

          v84 = v83 + 7;
          if (v84 < 0x10)
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
            v85 = 32 - __clz(~(-1 << -__clz((v84 >> 3) - 1)));
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
          v97 = v128 + 32 * (v58 - v50);
          if (!(v62 & 1 | (v61 < 8u)) && v131 > 7)
          {
            v51 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97, a11, v92, *v96)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97 + 128, a11, v51, v96[1]);
            v53 = v97 + 4 * a11;
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53, a11, v52, v96[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53 + 128, a11, v52 + v54, v96[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v55 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v92;
          v140 = v61;
          v141 = v131;
          v136 = v119;
          v137 = v58 - v56;
          block[6] = v96;
          v134 = v128 + 32 * (v58 - v50);
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

          v98 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, *v96)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v98, v96[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v145, 256, v99, v96[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v99 + v100, v96[3]);
          v101 = v138;
          v50 = v129;
          v23 = v122;
          v55 = v48 + 1;
          if (v138)
          {
            v102 = 0;
            v103 = &v143[256 * v136 + 32 * v137];
            v104 = v139;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v134 + v135 * v102;
                do
                {
                  *(v106 + v105) = v103[v105];
                  ++v105;
                  v104 = v139;
                }

                while (32 * v139 > v105);
                v101 = v138;
              }

              ++v102;
              v103 += 256;
            }

            while (v102 < v101);
          }

LABEL_50:
          v28 = v48 == v123 >> 3;
          v48 = v55;
        }

        while (!v28);
        v28 = v25++ == v111;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
  v146[112] = *MEMORY[0x29EDCA608];
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v111 = v112 >> 3;
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
      v115 = v32 - 3;
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
    if (v129 >> 3 <= v123 >> 3)
    {
      v132 = v26 >> 3;
      v116 = v26 & 7;
      v121 = (v26 & 7) + 1;
      v107 = v27 & 7;
      v108 = v27 >> 3;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v41 = vcgt_u32(v40, 0xF0000000FLL);
      v114 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 3uLL))))))), v41);
      v113 = v41;
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

        if (v112 < v42)
        {
          v42 = v112;
        }

        v119 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v107;
        v118 = v45;
        v47 = v45 != 8;
        v48 = v129 >> 3;
        v49 = v107 + 1;
        if (v25 != v108)
        {
          v49 = 8;
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
          v56 = 8 * v48;
          v57 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v58 = v50;
          }

          else
          {
            v58 = 8 * v48;
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
            v61 = 8;
          }

          v62 = 1;
          if (8 * v25 >= v130 && v56 >= v50)
          {
            v63 = v59 != v116;
            if (v48 != v132)
            {
              v63 = v60 != 8;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
          }

          v83 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v83 <= 1)
          {
            v83 = 1;
          }

          v84 = v83 + 7;
          if (v84 < 0x10)
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
            v85 = 32 - __clz(~(-1 << -__clz((v84 >> 3) - 1)));
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
          v97 = v128 + 32 * (v58 - v50);
          if (!(v62 & 1 | (v61 < 8u)) && v131 > 7)
          {
            v51 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97, a11, v92, *v96)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v97 + 128, a11, v51, v96[1]);
            v53 = v97 + 4 * a11;
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53, a11, v52, v96[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v53 + 128, a11, v52 + v54, v96[3]);
            v50 = v129;
            v23 = v122;
LABEL_49:
            v55 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v122;
          block[5] = v92;
          v140 = v61;
          v141 = v131;
          v136 = v119;
          v137 = v58 - v56;
          block[6] = v96;
          v134 = v128 + 32 * (v58 - v50);
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

          v98 = &v92[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v143, 256, v92, *v96)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v98, v96[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v145, 256, v99, v96[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v146, 256, v99 + v100, v96[3]);
          v101 = v138;
          v50 = v129;
          v23 = v122;
          v55 = v48 + 1;
          if (v138)
          {
            v102 = 0;
            v103 = &v143[256 * v136 + 32 * v137];
            v104 = v139;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v134 + v135 * v102;
                do
                {
                  *(v106 + v105) = v103[v105];
                  ++v105;
                  v104 = v139;
                }

                while (32 * v139 > v105);
                v101 = v138;
              }

              ++v102;
              v103 += 256;
            }

            while (v102 < v101);
          }

LABEL_50:
          v28 = v48 == v123 >> 3;
          v48 = v55;
        }

        while (!v28);
        v28 = v25++ == v111;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v128 = v15;
  v17 = v16;
  v19 = v18;
  v123 = v20;
  v124 = v21;
  v112 = v22;
  v23 = v12;
  v145[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v127 = v14;
  v24 = v14 >> 3;
  v111 = v14 + a10 - 1;
  v113 = v111 >> 3;
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
  if (v24 <= v113)
  {
    v120 = v128 + a9 - 1;
    if (v128 >> 3 <= v120 >> 3)
    {
      result = v23;
      v130 = (v19 - 1) >> 3;
      v110 = (v17 - 1) >> 3;
      v107 = v19 - 1;
      v114 = (v19 - 1) & 7;
      v108 = ((v17 - 1) & 7) + 1;
      v109 = (v17 - 1) & 7;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v119 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v118 = v34;
      v106 = 8 * v26 * v25;
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

        if (v111 < v35)
        {
          v35 = v111;
        }

        v126 = 8 * v24;
        v117 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v109;
        v116 = v38;
        v40 = v38 != 8;
        v41 = v128 >> 3;
        v42 = v108;
        if (v24 != v110)
        {
          v42 = 8;
        }

        v129 = v42;
        if (v24 != v110)
        {
          v39 = v40;
        }

        v115 = v39;
        v125 = v112 + (v36 - v127) * a11;
        v43 = v128;
        do
        {
          v48 = 8 * v41;
          v49 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 8 * v41;
          }

          if (v120 < v49)
          {
            v49 = v128 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v130)
          {
            v53 = v114 + 1;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (v126 >= v127 && v48 >= v43)
          {
            v55 = v51 != v114;
            if (v41 != v130)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v115;
          }

          if (v121)
          {
            v76 = 0;
            v77 = v106 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 0;
                  v80 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 1;
                  v80 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v79 = 0;
                    v76 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 0;
                v80 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 0;
                v80 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 0;
              v80 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v78 = 0;
              v79 = 0;
              v76 = 16;
              v80 = 16;
            }

            else
            {
              v79 = 1;
              v80 = 0;
              if (v77 == 1024)
              {
                v78 = 0;
                v80 = 8;
                v76 = 16;
              }
            }

            v94 = (v76 >> 3) - 1;
            if (v78)
            {
              v95 = 0;
            }

            else
            {
              v95 = 32 - __clz(~(-1 << -__clz(v94)));
            }

            v96 = (v80 >> 3) - 1;
            if (v79)
            {
              v97 = 0;
              if (v95)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v97 = 32 - __clz(~(-1 << -__clz(v96)));
              if (v97 | v95)
              {
LABEL_114:
                v98 = 0;
                v99 = 0;
                v100 = v41 & v94;
                v101 = v24 & v96;
                v102 = v95 != 0;
                v103 = v97 != 0;
                v104 = 1;
                do
                {
                  --v95;
                  if (v102)
                  {
                    v99 |= (v104 & v100) << v98++;
                  }

                  else
                  {
                    v95 = 0;
                  }

                  --v97;
                  if (v103)
                  {
                    v99 |= (v104 & v101) << v98++;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  v104 *= 2;
                  --v98;
                  v103 = v97 != 0;
                  v102 = v95 != 0;
                }

                while (v97 | v95);
                v105 = v99 << 11;
                result = v131;
                goto LABEL_126;
              }
            }

            v105 = 0;
LABEL_126:
            v63 = v105 + ((v48 / v76 + v126 / v80 * ((v76 + v107) / v76)) << 14);
            goto LABEL_56;
          }

          if (v119)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v118.i8[0];
            v60 = v118.i8[4];
            v62 = v119.i32[0];
            v61 = v119.i32[1];
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

LABEL_56:
          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 7;
          if (v68 < 0x10)
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
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 3) - 1)));
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
          v81 = (v123 + v63);
          if (v122)
          {
            v82 = v52;
            memcpy(__dst, (v123 + v63), sizeof(__dst));
            v52 = v82;
            result = v131;
            v81 = __dst;
          }

          v83 = (v124 + v75);
          v84 = v125 + 32 * (v50 - v43);
          if (!(v54 & 1 | (v53 < 8u)) && v129 > 7)
          {
            v44 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v84, a11, v81, *v83)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v84 + 128, a11, v44, v83[1]);
            v46 = v84 + 4 * a11;
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46, a11, v45, v83[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46 + 128, a11, v45 + v47, v83[3]);
LABEL_29:
            v43 = v128;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v139 = v53;
          v140 = v129;
          v135 = v117;
          v136 = v50 - v48;
          block[6] = v83;
          v133 = v84;
          v134 = a11;
          v137 = v116;
          v138 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v85 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v81, *v83)];
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v143, 256, v85, v83[1]);
          v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v86, v83[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v86 + v87, v83[3]);
          v88 = v137;
          v43 = v128;
          if (v137)
          {
            v89 = 0;
            v90 = &v142[256 * v135 + 32 * v136];
            v91 = v138;
            do
            {
              if (v91)
              {
                v92 = 0;
                v93 = v133 + v134 * v89;
                do
                {
                  *(v93 + v92) = v90[v92];
                  ++v92;
                  v91 = v138;
                }

                while (32 * v138 > v92);
                v88 = v137;
              }

              ++v89;
              v90 += 256;
            }

            while (v89 < v88);
          }

LABEL_30:
          v28 = v41++ == v120 >> 3;
          result = v131;
        }

        while (!v28);
        v28 = v24++ == v113;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v128 = v15;
  v17 = v16;
  v19 = v18;
  v123 = v20;
  v124 = v21;
  v112 = v22;
  v23 = v12;
  v145[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v127 = v14;
  v24 = v14 >> 3;
  v111 = v14 + a10 - 1;
  v113 = v111 >> 3;
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
  if (v24 <= v113)
  {
    v120 = v128 + a9 - 1;
    if (v128 >> 3 <= v120 >> 3)
    {
      result = v23;
      v130 = (v19 - 1) >> 3;
      v110 = (v17 - 1) >> 3;
      v107 = v19 - 1;
      v114 = (v19 - 1) & 7;
      v108 = ((v17 - 1) & 7) + 1;
      v109 = (v17 - 1) & 7;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000007);
      v34 = vcgt_u32(v33, 0xF0000000FLL);
      v119 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), v34);
      v118 = v34;
      v106 = 8 * v26 * v25;
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

        if (v111 < v35)
        {
          v35 = v111;
        }

        v126 = 8 * v24;
        v117 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v109;
        v116 = v38;
        v40 = v38 != 8;
        v41 = v128 >> 3;
        v42 = v108;
        if (v24 != v110)
        {
          v42 = 8;
        }

        v129 = v42;
        if (v24 != v110)
        {
          v39 = v40;
        }

        v115 = v39;
        v125 = v112 + (v36 - v127) * a11;
        v43 = v128;
        do
        {
          v48 = 8 * v41;
          v49 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 8 * v41;
          }

          if (v120 < v49)
          {
            v49 = v128 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v130)
          {
            v53 = v114 + 1;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (v126 >= v127 && v48 >= v43)
          {
            v55 = v51 != v114;
            if (v41 != v130)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v115;
          }

          if (v121)
          {
            v76 = 0;
            v77 = v106 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 0;
                  v80 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 1;
                  v80 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v79 = 0;
                    v76 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 0;
                v80 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 0;
                v80 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 0;
              v80 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v78 = 0;
              v79 = 0;
              v76 = 16;
              v80 = 16;
            }

            else
            {
              v79 = 1;
              v80 = 0;
              if (v77 == 1024)
              {
                v78 = 0;
                v80 = 8;
                v76 = 16;
              }
            }

            v94 = (v76 >> 3) - 1;
            if (v78)
            {
              v95 = 0;
            }

            else
            {
              v95 = 32 - __clz(~(-1 << -__clz(v94)));
            }

            v96 = (v80 >> 3) - 1;
            if (v79)
            {
              v97 = 0;
              if (v95)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v97 = 32 - __clz(~(-1 << -__clz(v96)));
              if (v97 | v95)
              {
LABEL_114:
                v98 = 0;
                v99 = 0;
                v100 = v41 & v94;
                v101 = v24 & v96;
                v102 = v95 != 0;
                v103 = v97 != 0;
                v104 = 1;
                do
                {
                  --v95;
                  if (v102)
                  {
                    v99 |= (v104 & v100) << v98++;
                  }

                  else
                  {
                    v95 = 0;
                  }

                  --v97;
                  if (v103)
                  {
                    v99 |= (v104 & v101) << v98++;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  v104 *= 2;
                  --v98;
                  v103 = v97 != 0;
                  v102 = v95 != 0;
                }

                while (v97 | v95);
                v105 = v99 << 11;
                result = v131;
                goto LABEL_126;
              }
            }

            v105 = 0;
LABEL_126:
            v63 = v105 + ((v48 / v76 + v126 / v80 * ((v76 + v107) / v76)) << 14);
            goto LABEL_56;
          }

          if (v119)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v118.i8[0];
            v60 = v118.i8[4];
            v62 = v119.i32[0];
            v61 = v119.i32[1];
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

LABEL_56:
          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 7;
          if (v68 < 0x10)
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
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 3) - 1)));
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
          v81 = (v123 + v63);
          if (v122)
          {
            v82 = v52;
            memcpy(__dst, (v123 + v63), sizeof(__dst));
            v52 = v82;
            result = v131;
            v81 = __dst;
          }

          v83 = (v124 + v75);
          v84 = v125 + 32 * (v50 - v43);
          if (!(v54 & 1 | (v53 < 8u)) && v129 > 7)
          {
            v44 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v84, a11, v81, *v83)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v84 + 128, a11, v44, v83[1]);
            v46 = v84 + 4 * a11;
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46, a11, v45, v83[2]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v46 + 128, a11, v45 + v47, v83[3]);
LABEL_29:
            v43 = v128;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v139 = v53;
          v140 = v129;
          v135 = v117;
          v136 = v50 - v48;
          block[6] = v83;
          v133 = v84;
          v134 = a11;
          v137 = v116;
          v138 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v85 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v142, 256, v81, *v83)];
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v143, 256, v85, v83[1]);
          v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v144, 256, v86, v83[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v145, 256, v86 + v87, v83[3]);
          v88 = v137;
          v43 = v128;
          if (v137)
          {
            v89 = 0;
            v90 = &v142[256 * v135 + 32 * v136];
            v91 = v138;
            do
            {
              if (v91)
              {
                v92 = 0;
                v93 = v133 + v134 * v89;
                do
                {
                  *(v93 + v92) = v90[v92];
                  ++v92;
                  v91 = v138;
                }

                while (32 * v138 > v92);
                v88 = v137;
              }

              ++v89;
              v90 += 256;
            }

            while (v89 < v88);
          }

LABEL_30:
          v28 = v41++ == v120 >> 3;
          result = v131;
        }

        while (!v28);
        v28 = v24++ == v113;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v202 = a8 + a10 - 1;
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
  v201 = v202 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v218 = v24;
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
      v217 = 0;
LABEL_32:
      v214 = v26 - 3;
      v205 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v199 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v217 = v31 >= v25;
    goto LABEL_32;
  }

  v217 = 0;
  v199 = 0;
  v205 = 0;
  v214 = 0;
LABEL_33:
  if (v18 <= v201)
  {
    v216 = a7 + a9 - 1;
    if (a7 >> 3 <= v216 >> 3)
    {
      v223 = v19 >> 3;
      v209 = v19 & 7;
      v215 = (v19 & 7) + 1;
      v197 = v20 & 7;
      v198 = v20 >> 3;
      v207 = 4 * a11;
      v208 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v204 = v35.i64[0];
      v206 = v35.i32[0] | v35.i32[1];
      v203 = v34.i64[0];
      v210 = a8;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v202 < v36)
        {
          v36 = v202;
        }

        v213 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v197;
        v212 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 3;
        v43 = v197 + 1;
        if (v18 != v198)
        {
          v43 = 8;
        }

        v222 = v43;
        if (v18 == v198)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v211 = v44;
        v221 = a2 + (v37 - a8) * a11;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v216 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v47 - v48 + 1;
          if (v42 == v223)
          {
            v51 = v215;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v18 >= a8 && v46 >= a7)
          {
            v53 = v49 != v209;
            if (v42 != v223)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v211;
          }

          if (v217)
          {
            if (v214 | v205)
            {
              v54 = 0;
              v55 = 0;
              v56 = v205 != 0;
              v57 = 1;
              v59 = v214 != 0;
              v58 = v205;
              v60 = v214;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v42 & ~(-1 << v214) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v18 & ~(-1 << v205) & v57) << v54++;
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
              v61 = v55 << 8;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(a1 + 336) * ((v42 >> v214) + (v18 >> v205) * v199);
          }

          else if (v206)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v203;
            v66 = BYTE4(v203);
            v68 = v204;
            v67 = HIDWORD(v204);
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
                v63 |= (v64 & v18) << v62++;
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
            v69 = v63 << 8;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v73 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_108:
              v81 = 0;
              goto LABEL_109;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_108;
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
LABEL_109:
          v82 = (a3 + v69);
          if (v218)
          {
            v83 = v82[13];
            v233[12] = v82[12];
            v233[13] = v83;
            v84 = v82[15];
            v233[14] = v82[14];
            v233[15] = v84;
            v85 = v82[9];
            v233[8] = v82[8];
            v233[9] = v85;
            v86 = v82[11];
            v233[10] = v82[10];
            v233[11] = v86;
            v87 = v82[5];
            v233[4] = v82[4];
            v233[5] = v87;
            v88 = v82[7];
            v233[6] = v82[6];
            v233[7] = v88;
            v89 = v82[1];
            v233[0] = *v82;
            v233[1] = v89;
            v35 = v82[2];
            v34 = v82[3];
            v82 = v233;
            v233[2] = v35;
            v233[3] = v34;
          }

          v90 = (a4 + v81);
          v91 = (v221 + 4 * (v48 - a7));
          if (!(v52 & 1 | (v51 < 8u)) && v222 > 7)
          {
            v92 = *v90;
            if (v92 == 96)
            {
              v35 = vld1q_dup_s8(v82->i8);
              *v91 = v35;
              *(v91 + a11) = v35;
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v35.i64[0] = v82->i64[0];
              v34.i64[0] = v82->i64[1];
              v97 = v82[1].i64[0];
              v98 = v82[1].i64[1];
              v91->i64[0] = v82->i64[0];
              v91->i64[1] = v97;
              v99 = (v91->i64 + a11);
              *v99 = v34.i64[0];
              v99[1] = v98;
              v93 = 32;
            }

            else if (*v90)
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v221 + 4 * (v48 - a7)), a11, v82, v92, *v35.i64, *v34.i8);
            }

            else
            {
              v93 = 0;
              v91->i64[0] = 0;
              v91->i64[1] = 0;
              v94 = (v91->i64 + a11);
              *v94 = 0;
              v94[1] = 0;
            }

            v100 = v82->i64 + v93;
            v101 = (v91 + v208);
            v102 = v90[1];
            if (v102 == 96)
            {
              v35 = vld1q_dup_s8(v100);
              *v101 = v35;
              *(v101 + a11) = v35;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v35.i64[0] = *v100;
              v34.i64[0] = *(v100 + 8);
              v105 = *(v100 + 16);
              v106 = *(v100 + 24);
              v101->i64[0] = *v100;
              v101->i64[1] = v105;
              v107 = (v101->i64 + a11);
              *v107 = v34.i64[0];
              v107[1] = v106;
              v103 = 32;
            }

            else if (v90[1])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v91 + v208), a11, v100, v102, *v35.i64, *v34.i8);
            }

            else
            {
              v103 = 0;
              v101->i64[0] = 0;
              v101->i64[1] = 0;
              v104 = (v101->i64 + a11);
              *v104 = 0;
              v104[1] = 0;
            }

            v108 = v100 + v103;
            v109 = v91 + 1;
            v110 = v90[2];
            if (v110 == 96)
            {
              v35 = vld1q_dup_s8(v108);
              *v109 = v35;
              *(v109 + a11) = v35;
              v111 = 1;
            }

            else if (v110 == 31)
            {
              v35.i64[0] = *v108;
              v34.i64[0] = *(v108 + 8);
              v113 = *(v108 + 16);
              v114 = *(v108 + 24);
              v91[1].i64[0] = *v108;
              v91[1].i64[1] = v113;
              v115 = (v109->i64 + a11);
              *v115 = v34.i64[0];
              v115[1] = v114;
              v111 = 32;
            }

            else if (v90[2])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v35.i64, *v34.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v91[1].i64[1] = 0;
              v112 = (v109->i64 + a11);
              *v112 = 0;
              v112[1] = 0;
            }

            v116 = v108 + v111;
            v117 = v101 + 1;
            v118 = v90[3];
            if (v118 == 96)
            {
              v35 = vld1q_dup_s8(v116);
              *v117 = v35;
              *(v117 + a11) = v35;
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v35.i64[0] = *v116;
              v34.i64[0] = *(v116 + 8);
              v121 = *(v116 + 16);
              v122 = *(v116 + 24);
              v101[1].i64[0] = *v116;
              v101[1].i64[1] = v121;
              v123 = (v117->i64 + a11);
              *v123 = v34.i64[0];
              v123[1] = v122;
              v119 = 32;
            }

            else if (v90[3])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v35.i64, *v34.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v101[1].i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
            }

            v124 = v116 + v119;
            v125 = (v91 + v207);
            v126 = v90[4];
            if (v126 == 96)
            {
              v35 = vld1q_dup_s8(v124);
              *v125 = v35;
              *(v125 + a11) = v35;
              v127 = 1;
            }

            else if (v126 == 31)
            {
              v35.i64[0] = *v124;
              v34.i64[0] = *(v124 + 8);
              v129 = *(v124 + 16);
              v130 = *(v124 + 24);
              v125->i64[0] = *v124;
              v125->i64[1] = v129;
              v131 = (v125->i64 + a11);
              *v131 = v34.i64[0];
              v131[1] = v130;
              v127 = 32;
            }

            else if (v90[4])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v91 + v207), a11, v124, v126, *v35.i64, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v125->i64[1] = 0;
              v128 = (v125->i64 + a11);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v124 + v127;
            v133 = (v91 + 6 * a11);
            v134 = v90[5];
            if (v134 == 96)
            {
              v35 = vld1q_dup_s8(v132);
              *v133 = v35;
              *(v133 + a11) = v35;
              v135 = 1;
            }

            else if (v134 == 31)
            {
              v35.i64[0] = *v132;
              v34.i64[0] = *(v132 + 8);
              v137 = *(v132 + 16);
              v138 = *(v132 + 24);
              v133->i64[0] = *v132;
              v133->i64[1] = v137;
              v139 = (v133->i64 + a11);
              *v139 = v34.i64[0];
              v139[1] = v138;
              v135 = 32;
            }

            else if (v90[5])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v35.i64, *v34.i8);
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v133->i64[1] = 0;
              v136 = (v133->i64 + a11);
              *v136 = 0;
              v136[1] = 0;
            }

            v140 = v132 + v135;
            v141 = v125 + 1;
            v142 = v90[6];
            if (v142 == 96)
            {
              v35 = vld1q_dup_s8(v140);
              *v141 = v35;
              *(v141 + a11) = v35;
              v143 = 1;
            }

            else if (v142 == 31)
            {
              v35.i64[0] = *v140;
              v34.i64[0] = *(v140 + 8);
              v145 = *(v140 + 16);
              v146 = *(v140 + 24);
              v125[1].i64[0] = *v140;
              v125[1].i64[1] = v145;
              v147 = (v141->i64 + a11);
              *v147 = v34.i64[0];
              v147[1] = v146;
              v143 = 32;
            }

            else if (v90[6])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, a11, v140, v142, *v35.i64, *v34.i8);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v125[1].i64[1] = 0;
              v144 = (v141->i64 + a11);
              *v144 = 0;
              v144[1] = 0;
            }

            v148 = v140 + v143;
            v149 = v133 + 1;
            v150 = v90[7];
            if (v150 == 96)
            {
              v35 = vld1q_dup_s8(v148);
              *v149 = v35;
              *(v149 + a11) = v35;
              a8 = v210;
            }

            else
            {
              a8 = v210;
              if (v150 == 31)
              {
                v35.i64[0] = *v148;
                v34.i64[0] = *(v148 + 8);
                v152 = *(v148 + 16);
                v153 = *(v148 + 24);
                v133[1].i64[0] = *v148;
                v133[1].i64[1] = v152;
                v154 = (v149->i64 + a11);
                *v154 = v34.i64[0];
                v154[1] = v153;
              }

              else if (v90[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, a11, v148, v150, *v35.i64, *v34.i8);
              }

              else
              {
                v149->i64[0] = 0;
                v133[1].i64[1] = 0;
                v151 = (v149->i64 + a11);
                *v151 = 0;
                v151[1] = 0;
              }
            }

            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v82;
          v231 = v51;
          v232 = v222;
          v227 = v213;
          v228 = v48 - v46;
          block[6] = a4 + v81;
          v225 = v221 + 4 * (v48 - a7);
          v226 = a11;
          v229 = v212;
          v230 = v50;
          if (v52)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_50:
            v45 = v42 + 1;
            goto LABEL_51;
          }

          v95 = *v90;
          if (v95 == 96)
          {
            v35 = vld1q_dup_s8(v82->i8);
            v234 = v35;
            v236 = v35;
            v96 = 1;
          }

          else if (v95 == 31)
          {
            v35.i64[0] = v82->i64[0];
            v34.i64[0] = v82->i64[1];
            v155 = v82[1].i64[0];
            v156 = v82[1].i64[1];
            v234.i64[0] = v82->i64[0];
            v234.i64[1] = v155;
            v236.i64[0] = v34.i64[0];
            v236.i64[1] = v156;
            v96 = 32;
          }

          else if (*v90)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v82, v95, *v35.i64, *v34.i8);
          }

          else
          {
            v96 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
          }

          v157 = v82->i64 + v96;
          v158 = v90[1];
          if (v158 == 96)
          {
            v35 = vld1q_dup_s8(v157);
            v238 = v35;
            v240 = v35;
            v159 = 1;
          }

          else if (v158 == 31)
          {
            v35.i64[0] = *v157;
            v34.i64[0] = *(v157 + 8);
            v160 = *(v157 + 16);
            v161 = *(v157 + 24);
            v238.i64[0] = *v157;
            v238.i64[1] = v160;
            v240.i64[0] = v34.i64[0];
            v240.i64[1] = v161;
            v159 = 32;
          }

          else if (v90[1])
          {
            v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v157, v158, *v35.i64, *v34.i8);
          }

          else
          {
            v159 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v162 = v157 + v159;
          v163 = v90[2];
          if (v163 == 96)
          {
            v35 = vld1q_dup_s8(v162);
            v235 = v35;
            v237 = v35;
            v164 = 1;
          }

          else if (v163 == 31)
          {
            v35.i64[0] = *v162;
            v34.i64[0] = *(v162 + 8);
            v165 = *(v162 + 16);
            v166 = *(v162 + 24);
            v235.i64[0] = *v162;
            v235.i64[1] = v165;
            v237.i64[0] = v34.i64[0];
            v237.i64[1] = v166;
            v164 = 32;
          }

          else if (v90[2])
          {
            v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v162, v163, *v35.i64, *v34.i8);
          }

          else
          {
            v164 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
          }

          v167 = v162 + v164;
          v168 = v90[3];
          if (v168 == 96)
          {
            v35 = vld1q_dup_s8(v167);
            v239 = v35;
            v241 = v35;
            v169 = 1;
          }

          else if (v168 == 31)
          {
            v35.i64[0] = *v167;
            v34.i64[0] = *(v167 + 8);
            v170 = *(v167 + 16);
            v171 = *(v167 + 24);
            v239.i64[0] = *v167;
            v239.i64[1] = v170;
            v241.i64[0] = v34.i64[0];
            v241.i64[1] = v171;
            v169 = 32;
          }

          else if (v90[3])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 32, v167, v168, *v35.i64, *v34.i8);
          }

          else
          {
            v169 = 0;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v172 = v167 + v169;
          v173 = v90[4];
          if (v173 == 96)
          {
            v35 = vld1q_dup_s8(v172);
            v242 = v35;
            v244 = v35;
            v174 = 1;
          }

          else if (v173 == 31)
          {
            v35.i64[0] = *v172;
            v34.i64[0] = *(v172 + 8);
            v175 = *(v172 + 16);
            v176 = *(v172 + 24);
            v242.i64[0] = *v172;
            v242.i64[1] = v175;
            v244.i64[0] = v34.i64[0];
            v244.i64[1] = v176;
            v174 = 32;
          }

          else if (v90[4])
          {
            v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v172, v173, *v35.i64, *v34.i8);
          }

          else
          {
            v174 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v177 = v172 + v174;
          v178 = v90[5];
          if (v178 == 96)
          {
            v35 = vld1q_dup_s8(v177);
            v246 = v35;
            v248 = v35;
            v179 = 1;
          }

          else if (v178 == 31)
          {
            v35.i64[0] = *v177;
            v34.i64[0] = *(v177 + 8);
            v180 = *(v177 + 16);
            v181 = *(v177 + 24);
            v246.i64[0] = *v177;
            v246.i64[1] = v180;
            v248.i64[0] = v34.i64[0];
            v248.i64[1] = v181;
            v179 = 32;
          }

          else if (v90[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v177, v178, *v35.i64, *v34.i8);
          }

          else
          {
            v179 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v182 = v177 + v179;
          v183 = v90[6];
          if (v183 == 96)
          {
            v35 = vld1q_dup_s8(v182);
            v243 = v35;
            v245 = v35;
            v184 = 1;
          }

          else if (v183 == 31)
          {
            v35.i64[0] = *v182;
            v34.i64[0] = *(v182 + 8);
            v185 = *(v182 + 16);
            v186 = *(v182 + 24);
            v243.i64[0] = *v182;
            v243.i64[1] = v185;
            v245.i64[0] = v34.i64[0];
            v245.i64[1] = v186;
            v184 = 32;
          }

          else if (v90[6])
          {
            v184 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v182, v183, *v35.i64, *v34.i8);
          }

          else
          {
            v184 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
          }

          v187 = v182 + v184;
          v188 = v90[7];
          if (v188 == 96)
          {
            v35 = vld1q_dup_s8(v187);
            v247 = v35;
            v249 = v35;
            v45 = v42 + 1;
            v189 = v229;
            if (!v229)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v45 = v42 + 1;
            if (v188 == 31)
            {
              v35.i64[0] = *v187;
              v34.i64[0] = *(v187 + 8);
              v190 = *(v187 + 16);
              v191 = *(v187 + 24);
              v247.i64[0] = *v187;
              v247.i64[1] = v190;
              v249.i64[0] = v34.i64[0];
              v249.i64[1] = v191;
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }

            else if (v188)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v187, v188, *v35.i64, *v34.i8);
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v247 = 0uLL;
              v249 = 0uLL;
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }
          }

          v192 = 0;
          v193 = &v234.i8[32 * v227 + 4 * v228];
          v194 = v230;
          do
          {
            if (v194)
            {
              v195 = 0;
              v196 = v225 + v226 * v192;
              do
              {
                *(v196 + v195) = v193[v195];
                ++v195;
                v194 = v230;
              }

              while (4 * v230 > v195);
              v189 = v229;
            }

            ++v192;
            v193 += 32;
          }

          while (v192 < v189);
LABEL_51:
          v21 = v42 == v216 >> 3;
          v42 = v45;
        }

        while (!v21);
        v21 = v18++ == v201;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v202 = a8 + a10 - 1;
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
  v201 = v202 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v218 = v24;
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
      v217 = 0;
LABEL_32:
      v214 = v26 - 3;
      v205 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v199 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v217 = v31 >= v25;
    goto LABEL_32;
  }

  v217 = 0;
  v199 = 0;
  v205 = 0;
  v214 = 0;
LABEL_33:
  if (v18 <= v201)
  {
    v216 = a7 + a9 - 1;
    if (a7 >> 3 <= v216 >> 3)
    {
      v223 = v19 >> 3;
      v209 = v19 & 7;
      v215 = (v19 & 7) + 1;
      v197 = v20 & 7;
      v198 = v20 >> 3;
      v207 = 4 * a11;
      v208 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v204 = v35.i64[0];
      v206 = v35.i32[0] | v35.i32[1];
      v203 = v34.i64[0];
      v210 = a8;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= a8)
        {
          v37 = a8;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v202 < v36)
        {
          v36 = v202;
        }

        v213 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v197;
        v212 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 3;
        v43 = v197 + 1;
        if (v18 != v198)
        {
          v43 = 8;
        }

        v222 = v43;
        if (v18 == v198)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v211 = v44;
        v221 = a2 + (v37 - a8) * a11;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v216 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v47 - v48 + 1;
          if (v42 == v223)
          {
            v51 = v215;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (8 * v18 >= a8 && v46 >= a7)
          {
            v53 = v49 != v209;
            if (v42 != v223)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v211;
          }

          if (v217)
          {
            if (v214 | v205)
            {
              v54 = 0;
              v55 = 0;
              v56 = v205 != 0;
              v57 = 1;
              v59 = v214 != 0;
              v58 = v205;
              v60 = v214;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v42 & ~(-1 << v214) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v18 & ~(-1 << v205) & v57) << v54++;
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
              v61 = v55 << 8;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(a1 + 336) * ((v42 >> v214) + (v18 >> v205) * v199);
          }

          else if (v206)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v203;
            v66 = BYTE4(v203);
            v68 = v204;
            v67 = HIDWORD(v204);
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
                v63 |= (v64 & v18) << v62++;
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
            v69 = v63 << 8;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v73 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
LABEL_108:
              v81 = 0;
              goto LABEL_109;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_108;
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
LABEL_109:
          v82 = (a3 + v69);
          if (v218)
          {
            v83 = v82[13];
            v233[12] = v82[12];
            v233[13] = v83;
            v84 = v82[15];
            v233[14] = v82[14];
            v233[15] = v84;
            v85 = v82[9];
            v233[8] = v82[8];
            v233[9] = v85;
            v86 = v82[11];
            v233[10] = v82[10];
            v233[11] = v86;
            v87 = v82[5];
            v233[4] = v82[4];
            v233[5] = v87;
            v88 = v82[7];
            v233[6] = v82[6];
            v233[7] = v88;
            v89 = v82[1];
            v233[0] = *v82;
            v233[1] = v89;
            v35 = v82[2];
            v34 = v82[3];
            v82 = v233;
            v233[2] = v35;
            v233[3] = v34;
          }

          v90 = (a4 + v81);
          v91 = (v221 + 4 * (v48 - a7));
          if (!(v52 & 1 | (v51 < 8u)) && v222 > 7)
          {
            v92 = *v90;
            if (v92 == 96)
            {
              v35 = vld1q_dup_s8(v82->i8);
              *v91 = v35;
              *(v91 + a11) = v35;
              v93 = 1;
            }

            else if (v92 == 31)
            {
              v35.i64[0] = v82->i64[0];
              v34.i64[0] = v82->i64[1];
              v97 = v82[1].i64[0];
              v98 = v82[1].i64[1];
              v91->i64[0] = v82->i64[0];
              v91->i64[1] = v97;
              v99 = (v91->i64 + a11);
              *v99 = v34.i64[0];
              v99[1] = v98;
              v93 = 32;
            }

            else if (*v90)
            {
              v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v221 + 4 * (v48 - a7)), a11, v82, v92, *v35.i64, *v34.i8);
            }

            else
            {
              v93 = 0;
              v91->i64[0] = 0;
              v91->i64[1] = 0;
              v94 = (v91->i64 + a11);
              *v94 = 0;
              v94[1] = 0;
            }

            v100 = v82->i64 + v93;
            v101 = (v91 + v208);
            v102 = v90[1];
            if (v102 == 96)
            {
              v35 = vld1q_dup_s8(v100);
              *v101 = v35;
              *(v101 + a11) = v35;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v35.i64[0] = *v100;
              v34.i64[0] = *(v100 + 8);
              v105 = *(v100 + 16);
              v106 = *(v100 + 24);
              v101->i64[0] = *v100;
              v101->i64[1] = v105;
              v107 = (v101->i64 + a11);
              *v107 = v34.i64[0];
              v107[1] = v106;
              v103 = 32;
            }

            else if (v90[1])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v91 + v208), a11, v100, v102, *v35.i64, *v34.i8);
            }

            else
            {
              v103 = 0;
              v101->i64[0] = 0;
              v101->i64[1] = 0;
              v104 = (v101->i64 + a11);
              *v104 = 0;
              v104[1] = 0;
            }

            v108 = v100 + v103;
            v109 = v91 + 1;
            v110 = v90[2];
            if (v110 == 96)
            {
              v35 = vld1q_dup_s8(v108);
              *v109 = v35;
              *(v109 + a11) = v35;
              v111 = 1;
            }

            else if (v110 == 31)
            {
              v35.i64[0] = *v108;
              v34.i64[0] = *(v108 + 8);
              v113 = *(v108 + 16);
              v114 = *(v108 + 24);
              v91[1].i64[0] = *v108;
              v91[1].i64[1] = v113;
              v115 = (v109->i64 + a11);
              *v115 = v34.i64[0];
              v115[1] = v114;
              v111 = 32;
            }

            else if (v90[2])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v35.i64, *v34.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v91[1].i64[1] = 0;
              v112 = (v109->i64 + a11);
              *v112 = 0;
              v112[1] = 0;
            }

            v116 = v108 + v111;
            v117 = v101 + 1;
            v118 = v90[3];
            if (v118 == 96)
            {
              v35 = vld1q_dup_s8(v116);
              *v117 = v35;
              *(v117 + a11) = v35;
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v35.i64[0] = *v116;
              v34.i64[0] = *(v116 + 8);
              v121 = *(v116 + 16);
              v122 = *(v116 + 24);
              v101[1].i64[0] = *v116;
              v101[1].i64[1] = v121;
              v123 = (v117->i64 + a11);
              *v123 = v34.i64[0];
              v123[1] = v122;
              v119 = 32;
            }

            else if (v90[3])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v117, a11, v116, v118, *v35.i64, *v34.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v101[1].i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
            }

            v124 = v116 + v119;
            v125 = (v91 + v207);
            v126 = v90[4];
            if (v126 == 96)
            {
              v35 = vld1q_dup_s8(v124);
              *v125 = v35;
              *(v125 + a11) = v35;
              v127 = 1;
            }

            else if (v126 == 31)
            {
              v35.i64[0] = *v124;
              v34.i64[0] = *(v124 + 8);
              v129 = *(v124 + 16);
              v130 = *(v124 + 24);
              v125->i64[0] = *v124;
              v125->i64[1] = v129;
              v131 = (v125->i64 + a11);
              *v131 = v34.i64[0];
              v131[1] = v130;
              v127 = 32;
            }

            else if (v90[4])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v91 + v207), a11, v124, v126, *v35.i64, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v125->i64[1] = 0;
              v128 = (v125->i64 + a11);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v124 + v127;
            v133 = (v91 + 6 * a11);
            v134 = v90[5];
            if (v134 == 96)
            {
              v35 = vld1q_dup_s8(v132);
              *v133 = v35;
              *(v133 + a11) = v35;
              v135 = 1;
            }

            else if (v134 == 31)
            {
              v35.i64[0] = *v132;
              v34.i64[0] = *(v132 + 8);
              v137 = *(v132 + 16);
              v138 = *(v132 + 24);
              v133->i64[0] = *v132;
              v133->i64[1] = v137;
              v139 = (v133->i64 + a11);
              *v139 = v34.i64[0];
              v139[1] = v138;
              v135 = 32;
            }

            else if (v90[5])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v35.i64, *v34.i8);
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v133->i64[1] = 0;
              v136 = (v133->i64 + a11);
              *v136 = 0;
              v136[1] = 0;
            }

            v140 = v132 + v135;
            v141 = v125 + 1;
            v142 = v90[6];
            if (v142 == 96)
            {
              v35 = vld1q_dup_s8(v140);
              *v141 = v35;
              *(v141 + a11) = v35;
              v143 = 1;
            }

            else if (v142 == 31)
            {
              v35.i64[0] = *v140;
              v34.i64[0] = *(v140 + 8);
              v145 = *(v140 + 16);
              v146 = *(v140 + 24);
              v125[1].i64[0] = *v140;
              v125[1].i64[1] = v145;
              v147 = (v141->i64 + a11);
              *v147 = v34.i64[0];
              v147[1] = v146;
              v143 = 32;
            }

            else if (v90[6])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, a11, v140, v142, *v35.i64, *v34.i8);
            }

            else
            {
              v143 = 0;
              v141->i64[0] = 0;
              v125[1].i64[1] = 0;
              v144 = (v141->i64 + a11);
              *v144 = 0;
              v144[1] = 0;
            }

            v148 = v140 + v143;
            v149 = v133 + 1;
            v150 = v90[7];
            if (v150 == 96)
            {
              v35 = vld1q_dup_s8(v148);
              *v149 = v35;
              *(v149 + a11) = v35;
              a8 = v210;
            }

            else
            {
              a8 = v210;
              if (v150 == 31)
              {
                v35.i64[0] = *v148;
                v34.i64[0] = *(v148 + 8);
                v152 = *(v148 + 16);
                v153 = *(v148 + 24);
                v133[1].i64[0] = *v148;
                v133[1].i64[1] = v152;
                v154 = (v149->i64 + a11);
                *v154 = v34.i64[0];
                v154[1] = v153;
              }

              else if (v90[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, a11, v148, v150, *v35.i64, *v34.i8);
              }

              else
              {
                v149->i64[0] = 0;
                v133[1].i64[1] = 0;
                v151 = (v149->i64 + a11);
                *v151 = 0;
                v151[1] = 0;
              }
            }

            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v82;
          v231 = v51;
          v232 = v222;
          v227 = v213;
          v228 = v48 - v46;
          block[6] = a4 + v81;
          v225 = v221 + 4 * (v48 - a7);
          v226 = a11;
          v229 = v212;
          v230 = v50;
          if (v52)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_50:
            v45 = v42 + 1;
            goto LABEL_51;
          }

          v95 = *v90;
          if (v95 == 96)
          {
            v35 = vld1q_dup_s8(v82->i8);
            v234 = v35;
            v236 = v35;
            v96 = 1;
          }

          else if (v95 == 31)
          {
            v35.i64[0] = v82->i64[0];
            v34.i64[0] = v82->i64[1];
            v155 = v82[1].i64[0];
            v156 = v82[1].i64[1];
            v234.i64[0] = v82->i64[0];
            v234.i64[1] = v155;
            v236.i64[0] = v34.i64[0];
            v236.i64[1] = v156;
            v96 = 32;
          }

          else if (*v90)
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v82, v95, *v35.i64, *v34.i8);
          }

          else
          {
            v96 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
          }

          v157 = v82->i64 + v96;
          v158 = v90[1];
          if (v158 == 96)
          {
            v35 = vld1q_dup_s8(v157);
            v238 = v35;
            v240 = v35;
            v159 = 1;
          }

          else if (v158 == 31)
          {
            v35.i64[0] = *v157;
            v34.i64[0] = *(v157 + 8);
            v160 = *(v157 + 16);
            v161 = *(v157 + 24);
            v238.i64[0] = *v157;
            v238.i64[1] = v160;
            v240.i64[0] = v34.i64[0];
            v240.i64[1] = v161;
            v159 = 32;
          }

          else if (v90[1])
          {
            v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v157, v158, *v35.i64, *v34.i8);
          }

          else
          {
            v159 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v162 = v157 + v159;
          v163 = v90[2];
          if (v163 == 96)
          {
            v35 = vld1q_dup_s8(v162);
            v235 = v35;
            v237 = v35;
            v164 = 1;
          }

          else if (v163 == 31)
          {
            v35.i64[0] = *v162;
            v34.i64[0] = *(v162 + 8);
            v165 = *(v162 + 16);
            v166 = *(v162 + 24);
            v235.i64[0] = *v162;
            v235.i64[1] = v165;
            v237.i64[0] = v34.i64[0];
            v237.i64[1] = v166;
            v164 = 32;
          }

          else if (v90[2])
          {
            v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v162, v163, *v35.i64, *v34.i8);
          }

          else
          {
            v164 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
          }

          v167 = v162 + v164;
          v168 = v90[3];
          if (v168 == 96)
          {
            v35 = vld1q_dup_s8(v167);
            v239 = v35;
            v241 = v35;
            v169 = 1;
          }

          else if (v168 == 31)
          {
            v35.i64[0] = *v167;
            v34.i64[0] = *(v167 + 8);
            v170 = *(v167 + 16);
            v171 = *(v167 + 24);
            v239.i64[0] = *v167;
            v239.i64[1] = v170;
            v241.i64[0] = v34.i64[0];
            v241.i64[1] = v171;
            v169 = 32;
          }

          else if (v90[3])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 32, v167, v168, *v35.i64, *v34.i8);
          }

          else
          {
            v169 = 0;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v172 = v167 + v169;
          v173 = v90[4];
          if (v173 == 96)
          {
            v35 = vld1q_dup_s8(v172);
            v242 = v35;
            v244 = v35;
            v174 = 1;
          }

          else if (v173 == 31)
          {
            v35.i64[0] = *v172;
            v34.i64[0] = *(v172 + 8);
            v175 = *(v172 + 16);
            v176 = *(v172 + 24);
            v242.i64[0] = *v172;
            v242.i64[1] = v175;
            v244.i64[0] = v34.i64[0];
            v244.i64[1] = v176;
            v174 = 32;
          }

          else if (v90[4])
          {
            v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v172, v173, *v35.i64, *v34.i8);
          }

          else
          {
            v174 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v177 = v172 + v174;
          v178 = v90[5];
          if (v178 == 96)
          {
            v35 = vld1q_dup_s8(v177);
            v246 = v35;
            v248 = v35;
            v179 = 1;
          }

          else if (v178 == 31)
          {
            v35.i64[0] = *v177;
            v34.i64[0] = *(v177 + 8);
            v180 = *(v177 + 16);
            v181 = *(v177 + 24);
            v246.i64[0] = *v177;
            v246.i64[1] = v180;
            v248.i64[0] = v34.i64[0];
            v248.i64[1] = v181;
            v179 = 32;
          }

          else if (v90[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v177, v178, *v35.i64, *v34.i8);
          }

          else
          {
            v179 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v182 = v177 + v179;
          v183 = v90[6];
          if (v183 == 96)
          {
            v35 = vld1q_dup_s8(v182);
            v243 = v35;
            v245 = v35;
            v184 = 1;
          }

          else if (v183 == 31)
          {
            v35.i64[0] = *v182;
            v34.i64[0] = *(v182 + 8);
            v185 = *(v182 + 16);
            v186 = *(v182 + 24);
            v243.i64[0] = *v182;
            v243.i64[1] = v185;
            v245.i64[0] = v34.i64[0];
            v245.i64[1] = v186;
            v184 = 32;
          }

          else if (v90[6])
          {
            v184 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v182, v183, *v35.i64, *v34.i8);
          }

          else
          {
            v184 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
          }

          v187 = v182 + v184;
          v188 = v90[7];
          if (v188 == 96)
          {
            v35 = vld1q_dup_s8(v187);
            v247 = v35;
            v249 = v35;
            v45 = v42 + 1;
            v189 = v229;
            if (!v229)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v45 = v42 + 1;
            if (v188 == 31)
            {
              v35.i64[0] = *v187;
              v34.i64[0] = *(v187 + 8);
              v190 = *(v187 + 16);
              v191 = *(v187 + 24);
              v247.i64[0] = *v187;
              v247.i64[1] = v190;
              v249.i64[0] = v34.i64[0];
              v249.i64[1] = v191;
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }

            else if (v188)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v187, v188, *v35.i64, *v34.i8);
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v247 = 0uLL;
              v249 = 0uLL;
              v189 = v229;
              if (!v229)
              {
                goto LABEL_51;
              }
            }
          }

          v192 = 0;
          v193 = &v234.i8[32 * v227 + 4 * v228];
          v194 = v230;
          do
          {
            if (v194)
            {
              v195 = 0;
              v196 = v225 + v226 * v192;
              do
              {
                *(v196 + v195) = v193[v195];
                ++v195;
                v194 = v230;
              }

              while (4 * v230 > v195);
              v189 = v229;
            }

            ++v192;
            v193 += 32;
          }

          while (v192 < v189);
LABEL_51:
          v21 = v42 == v216 >> 3;
          v42 = v45;
        }

        while (!v21);
        v21 = v18++ == v201;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 + a10 - 1;
  v222 = a8;
  v18 = a8 >> 3;
  v202 = v17;
  v204 = v17 >> 3;
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
  v217 = v25;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v18 <= v204)
  {
    v215 = a7 + a9 - 1;
    if (a7 >> 3 <= v215 >> 3)
    {
      v26 = (a5 - 1) >> 3;
      v199 = a5 - 1;
      v207 = (a5 - 1) & 7;
      v200 = (a6 - 1) & 7;
      v201 = (a6 - 1) >> 3;
      v205 = 4 * a11;
      v206 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v28.i8 = vcgt_u32(v27, 0xF0000000FLL);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), *v28.i8);
      v212 = v29.i64[0];
      v214 = v29.i32[0] | v29.i32[1];
      v211 = v28.i64[0];
      v198 = 8 * v20 * v19;
      v213 = v26;
      do
      {
        v30 = (8 * v18) | 7;
        if (8 * v18 <= v222)
        {
          v31 = v222;
        }

        else
        {
          v31 = 8 * v18;
        }

        if (v202 < v30)
        {
          v30 = v202;
        }

        v221 = 8 * v18;
        v210 = v31 - 8 * v18;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v200;
        v209 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 3;
        v37 = v200 + 1;
        if (v18 != v201)
        {
          v37 = 8;
        }

        v223 = v37;
        if (v18 != v201)
        {
          v34 = v35;
        }

        v208 = v34;
        v220 = a2 + (v31 - v222) * a11;
        do
        {
          v41 = 8 * v36;
          v42 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 8 * v36;
          }

          if (v215 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v42 - v43 + 1;
          if (v36 == v26)
          {
            v46 = v207 + 1;
          }

          else
          {
            v46 = 8;
          }

          v47 = 1;
          if (v221 >= v222 && v41 >= a7)
          {
            v48 = v44 != v207;
            if (v36 != v26)
            {
              v48 = v45 != 8;
            }

            v47 = v48 || v208;
          }

          if (isLevelTiled)
          {
            v69 = 0;
            v70 = v198 >> (*(a1 + 57) != 0);
            v71 = 1;
            if (v70 <= 63)
            {
              if (v70 > 15)
              {
                if (v70 == 16)
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 64;
                  v69 = 128;
                }

                else
                {
                  v72 = 1;
                  v73 = 0;
                  if (v70 == 32)
                  {
                    v71 = 0;
                    v72 = 0;
                    v69 = 64;
                    v73 = 64;
                  }
                }
              }

              else if (v70 == 4)
              {
                v71 = 0;
                v72 = 0;
                v73 = 128;
                v69 = 256;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 8)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 128;
                  v73 = 128;
                }
              }
            }

            else if (v70 <= 255)
            {
              if (v70 == 64)
              {
                v71 = 0;
                v72 = 0;
                v73 = 32;
                v69 = 64;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 128)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 32;
                  v73 = 32;
                }
              }
            }

            else if (v70 == 256)
            {
              v71 = 0;
              v72 = 0;
              v73 = 16;
              v69 = 32;
            }

            else if (v70 == 512)
            {
              v71 = 0;
              v72 = 0;
              v69 = 16;
              v73 = 16;
            }

            else
            {
              v72 = 1;
              v73 = 0;
              if (v70 == 1024)
              {
                v71 = 0;
                v73 = 8;
                v69 = 16;
              }
            }

            v186 = (v69 >> 3) - 1;
            if (v71)
            {
              v187 = 0;
            }

            else
            {
              v187 = 32 - __clz(~(-1 << -__clz(v186)));
            }

            v188 = (v73 >> 3) - 1;
            if (v72)
            {
              v189 = 0;
              if (v187)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v189 = 32 - __clz(~(-1 << -__clz(v188)));
              if (v189 | v187)
              {
LABEL_226:
                v190 = 0;
                v191 = 0;
                v192 = v36 & v186;
                v193 = v18 & v188;
                v194 = v187 != 0;
                v195 = v189 != 0;
                v196 = 1;
                do
                {
                  --v187;
                  if (v194)
                  {
                    v191 |= (v196 & v192) << v190++;
                  }

                  else
                  {
                    v187 = 0;
                  }

                  --v189;
                  if (v195)
                  {
                    v191 |= (v196 & v193) << v190++;
                  }

                  else
                  {
                    v189 = 0;
                  }

                  v196 *= 2;
                  --v190;
                  v195 = v189 != 0;
                  v194 = v187 != 0;
                }

                while (v189 | v187);
                v197 = v191 << 8;
                goto LABEL_238;
              }
            }

            v197 = 0;
LABEL_238:
            v56 = v197 + ((v41 / v69 + v221 / v73 * ((v69 + v199) / v69)) << 14);
            goto LABEL_55;
          }

          if (v214)
          {
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v52 = v211;
            v53 = BYTE4(v211);
            v55 = v212;
            v54 = HIDWORD(v212);
            do
            {
              --v54;
              if (v53)
              {
                v50 |= (v51 & v36) << v49++;
              }

              else
              {
                v54 = 0;
              }

              --v55;
              if (v52)
              {
                v50 |= (v51 & v18) << v49++;
              }

              else
              {
                v55 = 0;
              }

              v51 *= 2;
              --v49;
              v52 = v55 != 0;
              v53 = v54 != 0;
            }

            while (v55 | v54);
            v56 = v50 << 8;
          }

          else
          {
            v56 = 0;
          }

LABEL_55:
          v57 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
          }

          v60 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_80:
              v68 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_80;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v36) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v18) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 8 * v64;
LABEL_81:
          v74 = (a3 + v56);
          if (v217)
          {
            v75 = v74[13];
            v233[12] = v74[12];
            v233[13] = v75;
            v76 = v74[15];
            v233[14] = v74[14];
            v233[15] = v76;
            v77 = v74[9];
            v233[8] = v74[8];
            v233[9] = v77;
            v78 = v74[11];
            v233[10] = v74[10];
            v233[11] = v78;
            v79 = v74[5];
            v233[4] = v74[4];
            v233[5] = v79;
            v80 = v74[7];
            v233[6] = v74[6];
            v233[7] = v80;
            v81 = v74[1];
            v233[0] = *v74;
            v233[1] = v81;
            v29 = v74[2];
            v28 = v74[3];
            v74 = v233;
            v233[2] = v29;
            v233[3] = v28;
          }

          v82 = (a4 + v68);
          v83 = (v220 + 4 * (v43 - a7));
          if (v47 & 1 | (v46 < 8u) || v223 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v74;
            v231 = v46;
            v232 = v223;
            v227 = v210;
            v228 = v43 - v41;
            block[6] = a4 + v68;
            v225 = v220 + 4 * (v43 - a7);
            v226 = a11;
            v229 = v209;
            v230 = v45;
            if (v47)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v87 = *v82;
            if (v87 == 96)
            {
              v29 = vld1q_dup_s8(v74->i8);
              v234 = v29;
              v236 = v29;
              v88 = 1;
            }

            else if (v87 == 31)
            {
              v29.i64[0] = v74->i64[0];
              v28.i64[0] = v74->i64[1];
              v144 = v74[1].i64[0];
              v145 = v74[1].i64[1];
              v234.i64[0] = v74->i64[0];
              v234.i64[1] = v144;
              v236.i64[0] = v28.i64[0];
              v236.i64[1] = v145;
              v88 = 32;
            }

            else if (*v82)
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v74, v87, *v29.i64, *v28.i8);
            }

            else
            {
              v88 = 0;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v146 = v74->i64 + v88;
            v147 = v82[1];
            if (v147 == 96)
            {
              v29 = vld1q_dup_s8(v146);
              v238 = v29;
              v240 = v29;
              v148 = 1;
            }

            else if (v147 == 31)
            {
              v29.i64[0] = *v146;
              v28.i64[0] = *(v146 + 8);
              v149 = *(v146 + 16);
              v150 = *(v146 + 24);
              v238.i64[0] = *v146;
              v238.i64[1] = v149;
              v240.i64[0] = v28.i64[0];
              v240.i64[1] = v150;
              v148 = 32;
            }

            else if (v82[1])
            {
              v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v146, v147, *v29.i64, *v28.i8);
            }

            else
            {
              v148 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
            }

            v151 = v146 + v148;
            v152 = v82[2];
            if (v152 == 96)
            {
              v29 = vld1q_dup_s8(v151);
              v235 = v29;
              v237 = v29;
              v153 = 1;
            }

            else if (v152 == 31)
            {
              v29.i64[0] = *v151;
              v28.i64[0] = *(v151 + 8);
              v154 = *(v151 + 16);
              v155 = *(v151 + 24);
              v235.i64[0] = *v151;
              v235.i64[1] = v154;
              v237.i64[0] = v28.i64[0];
              v237.i64[1] = v155;
              v153 = 32;
            }

            else if (v82[2])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v151, v152, *v29.i64, *v28.i8);
            }

            else
            {
              v153 = 0;
              v235 = 0uLL;
              v237 = 0uLL;
            }

            v156 = v151 + v153;
            v157 = v82[3];
            if (v157 == 96)
            {
              v29 = vld1q_dup_s8(v156);
              v239 = v29;
              v241 = v29;
              v158 = 1;
            }

            else if (v157 == 31)
            {
              v29.i64[0] = *v156;
              v28.i64[0] = *(v156 + 8);
              v159 = *(v156 + 16);
              v160 = *(v156 + 24);
              v239.i64[0] = *v156;
              v239.i64[1] = v159;
              v241.i64[0] = v28.i64[0];
              v241.i64[1] = v160;
              v158 = 32;
            }

            else if (v82[3])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 32, v156, v157, *v29.i64, *v28.i8);
            }

            else
            {
              v158 = 0;
              v239 = 0uLL;
              v241 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v82[4];
            if (v162 == 96)
            {
              v29 = vld1q_dup_s8(v161);
              v242 = v29;
              v244 = v29;
              v163 = 1;
            }

            else if (v162 == 31)
            {
              v29.i64[0] = *v161;
              v28.i64[0] = *(v161 + 8);
              v164 = *(v161 + 16);
              v165 = *(v161 + 24);
              v242.i64[0] = *v161;
              v242.i64[1] = v164;
              v244.i64[0] = v28.i64[0];
              v244.i64[1] = v165;
              v163 = 32;
            }

            else if (v82[4])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v161, v162, *v29.i64, *v28.i8);
            }

            else
            {
              v163 = 0;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v82[5];
            if (v167 == 96)
            {
              v29 = vld1q_dup_s8(v166);
              v246 = v29;
              v248 = v29;
              v168 = 1;
            }

            else if (v167 == 31)
            {
              v29.i64[0] = *v166;
              v28.i64[0] = *(v166 + 8);
              v169 = *(v166 + 16);
              v170 = *(v166 + 24);
              v246.i64[0] = *v166;
              v246.i64[1] = v169;
              v248.i64[0] = v28.i64[0];
              v248.i64[1] = v170;
              v168 = 32;
            }

            else if (v82[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v166, v167, *v29.i64, *v28.i8);
            }

            else
            {
              v168 = 0;
              v246 = 0uLL;
              v248 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v82[6];
            if (v172 == 96)
            {
              v29 = vld1q_dup_s8(v171);
              v243 = v29;
              v245 = v29;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v29.i64[0] = *v171;
              v28.i64[0] = *(v171 + 8);
              v174 = *(v171 + 16);
              v175 = *(v171 + 24);
              v243.i64[0] = *v171;
              v243.i64[1] = v174;
              v245.i64[0] = v28.i64[0];
              v245.i64[1] = v175;
              v173 = 32;
            }

            else if (v82[6])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v171, v172, *v29.i64, *v28.i8);
            }

            else
            {
              v173 = 0;
              v243 = 0uLL;
              v245 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v82[7];
            if (v177 == 96)
            {
              v29 = vld1q_dup_s8(v176);
              v247 = v29;
              v249 = v29;
              v26 = v213;
              v178 = v229;
              if (!v229)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v26 = v213;
              if (v177 == 31)
              {
                v29.i64[0] = *v176;
                v28.i64[0] = *(v176 + 8);
                v179 = *(v176 + 16);
                v180 = *(v176 + 24);
                v247.i64[0] = *v176;
                v247.i64[1] = v179;
                v249.i64[0] = v28.i64[0];
                v249.i64[1] = v180;
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }

              else if (v82[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v176, v177, *v29.i64, *v28.i8);
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v247 = 0uLL;
                v249 = 0uLL;
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }
            }

            v181 = 0;
            v182 = &v234.i8[32 * v227 + 4 * v228];
            v183 = v230;
            do
            {
              if (v183)
              {
                v184 = 0;
                v185 = v225 + v226 * v181;
                do
                {
                  *(v185 + v184) = v182[v184];
                  ++v184;
                  v183 = v230;
                }

                while (4 * v230 > v184);
                v178 = v229;
              }

              ++v181;
              v182 += 32;
            }

            while (v181 < v178);
          }

          else
          {
            v84 = *v82;
            if (v84 == 96)
            {
              v29 = vld1q_dup_s8(v74->i8);
              *v83 = v29;
              *(v83 + a11) = v29;
              v85 = 1;
            }

            else if (v84 == 31)
            {
              v29.i64[0] = v74->i64[0];
              v28.i64[0] = v74->i64[1];
              v89 = v74[1].i64[0];
              v90 = v74[1].i64[1];
              v83->i64[0] = v74->i64[0];
              v83->i64[1] = v89;
              v91 = (v83->i64 + a11);
              *v91 = v28.i64[0];
              v91[1] = v90;
              v85 = 32;
            }

            else if (*v82)
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v220 + 4 * (v43 - a7)), a11, v74, v84, *v29.i64, *v28.i8);
            }

            else
            {
              v85 = 0;
              v83->i64[0] = 0;
              v83->i64[1] = 0;
              v86 = (v83->i64 + a11);
              *v86 = 0;
              v86[1] = 0;
            }

            v92 = v74->i64 + v85;
            v93 = (v83 + v206);
            v94 = v82[1];
            if (v94 == 96)
            {
              v29 = vld1q_dup_s8(v92);
              *v93 = v29;
              *(v93 + a11) = v29;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v29.i64[0] = *v92;
              v28.i64[0] = *(v92 + 8);
              v97 = *(v92 + 16);
              v98 = *(v92 + 24);
              v93->i64[0] = *v92;
              v93->i64[1] = v97;
              v99 = (v93->i64 + a11);
              *v99 = v28.i64[0];
              v99[1] = v98;
              v95 = 32;
            }

            else if (v82[1])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v83 + v206), a11, v92, v94, *v29.i64, *v28.i8);
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

            v100 = v92 + v95;
            v101 = v83 + 1;
            v102 = v82[2];
            if (v102 == 96)
            {
              v29 = vld1q_dup_s8(v100);
              *v101 = v29;
              *(v101 + a11) = v29;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v29.i64[0] = *v100;
              v28.i64[0] = *(v100 + 8);
              v105 = *(v100 + 16);
              v106 = *(v100 + 24);
              v83[1].i64[0] = *v100;
              v83[1].i64[1] = v105;
              v107 = (v101->i64 + a11);
              *v107 = v28.i64[0];
              v107[1] = v106;
              v103 = 32;
            }

            else if (v82[2])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *v29.i64, *v28.i8);
            }

            else
            {
              v103 = 0;
              v101->i64[0] = 0;
              v83[1].i64[1] = 0;
              v104 = (v101->i64 + a11);
              *v104 = 0;
              v104[1] = 0;
            }

            v108 = v100 + v103;
            v109 = v93 + 1;
            v110 = v82[3];
            if (v110 == 96)
            {
              v29 = vld1q_dup_s8(v108);
              *v109 = v29;
              *(v109 + a11) = v29;
              v111 = 1;
            }

            else if (v110 == 31)
            {
              v29.i64[0] = *v108;
              v28.i64[0] = *(v108 + 8);
              v113 = *(v108 + 16);
              v114 = *(v108 + 24);
              v93[1].i64[0] = *v108;
              v93[1].i64[1] = v113;
              v115 = (v109->i64 + a11);
              *v115 = v28.i64[0];
              v115[1] = v114;
              v111 = 32;
            }

            else if (v82[3])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v29.i64, *v28.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v93[1].i64[1] = 0;
              v112 = (v109->i64 + a11);
              *v112 = 0;
              v112[1] = 0;
            }

            v116 = v108 + v111;
            v117 = (v83 + v205);
            v118 = v82[4];
            if (v118 == 96)
            {
              v29 = vld1q_dup_s8(v116);
              *v117 = v29;
              *(v117 + a11) = v29;
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v29.i64[0] = *v116;
              v28.i64[0] = *(v116 + 8);
              v121 = *(v116 + 16);
              v122 = *(v116 + 24);
              v117->i64[0] = *v116;
              v117->i64[1] = v121;
              v123 = (v117->i64 + a11);
              *v123 = v28.i64[0];
              v123[1] = v122;
              v119 = 32;
            }

            else if (v82[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v83 + v205), a11, v116, v118, *v29.i64, *v28.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v117->i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
            }

            v124 = v116 + v119;
            v125 = (v83 + 6 * a11);
            v126 = v82[5];
            if (v126 == 96)
            {
              v29 = vld1q_dup_s8(v124);
              *v125 = v29;
              *(v125 + a11) = v29;
              v127 = 1;
            }

            else if (v126 == 31)
            {
              v29.i64[0] = *v124;
              v28.i64[0] = *(v124 + 8);
              v129 = *(v124 + 16);
              v130 = *(v124 + 24);
              v125->i64[0] = *v124;
              v125->i64[1] = v129;
              v131 = (v125->i64 + a11);
              *v131 = v28.i64[0];
              v131[1] = v130;
              v127 = 32;
            }

            else if (v82[5])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, a11, v124, v126, *v29.i64, *v28.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v125->i64[1] = 0;
              v128 = (v125->i64 + a11);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v124 + v127;
            v133 = v117 + 1;
            v134 = v82[6];
            if (v134 == 96)
            {
              v29 = vld1q_dup_s8(v132);
              *v133 = v29;
              *(v133 + a11) = v29;
              v135 = 1;
            }

            else if (v134 == 31)
            {
              v29.i64[0] = *v132;
              v28.i64[0] = *(v132 + 8);
              v137 = *(v132 + 16);
              v138 = *(v132 + 24);
              v117[1].i64[0] = *v132;
              v117[1].i64[1] = v137;
              v139 = (v133->i64 + a11);
              *v139 = v28.i64[0];
              v139[1] = v138;
              v135 = 32;
            }

            else if (v82[6])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v29.i64, *v28.i8);
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v117[1].i64[1] = 0;
              v136 = (v133->i64 + a11);
              *v136 = 0;
              v136[1] = 0;
            }

            v140 = v132 + v135;
            v141 = v125 + 1;
            v142 = v82[7];
            if (v142 == 96)
            {
              v29 = vld1q_dup_s8(v140);
              *v141 = v29;
              *(v141 + a11) = v29;
              v26 = v213;
            }

            else
            {
              v26 = v213;
              if (v142 == 31)
              {
                v29.i64[0] = *v140;
                v28.i64[0] = *(v140 + 8);
                v38 = *(v140 + 16);
                v39 = *(v140 + 24);
                v125[1].i64[0] = *v140;
                v125[1].i64[1] = v38;
                v40 = (v141->i64 + a11);
                *v40 = v28.i64[0];
                v40[1] = v39;
              }

              else if (v82[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, a11, v140, v142, *v29.i64, *v28.i8);
              }

              else
              {
                v141->i64[0] = 0;
                v125[1].i64[1] = 0;
                v143 = (v141->i64 + a11);
                *v143 = 0;
                v143[1] = 0;
              }
            }
          }

LABEL_29:
          v22 = v36++ == v215 >> 3;
        }

        while (!v22);
        v22 = v18++ == v204;
      }

      while (!v22);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v250 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a8 + a10 - 1;
  v222 = a8;
  v18 = a8 >> 3;
  v202 = v17;
  v204 = v17 >> 3;
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
  v217 = v25;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v18 <= v204)
  {
    v215 = a7 + a9 - 1;
    if (a7 >> 3 <= v215 >> 3)
    {
      v26 = (a5 - 1) >> 3;
      v199 = a5 - 1;
      v207 = (a5 - 1) & 7;
      v200 = (a6 - 1) & 7;
      v201 = (a6 - 1) >> 3;
      v205 = 4 * a11;
      v206 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v28.i8 = vcgt_u32(v27, 0xF0000000FLL);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v27, 3uLL))))))), *v28.i8);
      v212 = v29.i64[0];
      v214 = v29.i32[0] | v29.i32[1];
      v211 = v28.i64[0];
      v198 = 8 * v20 * v19;
      v213 = v26;
      do
      {
        v30 = (8 * v18) | 7;
        if (8 * v18 <= v222)
        {
          v31 = v222;
        }

        else
        {
          v31 = 8 * v18;
        }

        if (v202 < v30)
        {
          v30 = v202;
        }

        v221 = 8 * v18;
        v210 = v31 - 8 * v18;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v200;
        v209 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 3;
        v37 = v200 + 1;
        if (v18 != v201)
        {
          v37 = 8;
        }

        v223 = v37;
        if (v18 != v201)
        {
          v34 = v35;
        }

        v208 = v34;
        v220 = a2 + (v31 - v222) * a11;
        do
        {
          v41 = 8 * v36;
          v42 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 8 * v36;
          }

          if (v215 < v42)
          {
            v42 = a7 + a9 - 1;
          }

          v44 = v42 - v43;
          v45 = v42 - v43 + 1;
          if (v36 == v26)
          {
            v46 = v207 + 1;
          }

          else
          {
            v46 = 8;
          }

          v47 = 1;
          if (v221 >= v222 && v41 >= a7)
          {
            v48 = v44 != v207;
            if (v36 != v26)
            {
              v48 = v45 != 8;
            }

            v47 = v48 || v208;
          }

          if (isLevelTiled)
          {
            v69 = 0;
            v70 = v198 >> (*(a1 + 57) != 0);
            v71 = 1;
            if (v70 <= 63)
            {
              if (v70 > 15)
              {
                if (v70 == 16)
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 64;
                  v69 = 128;
                }

                else
                {
                  v72 = 1;
                  v73 = 0;
                  if (v70 == 32)
                  {
                    v71 = 0;
                    v72 = 0;
                    v69 = 64;
                    v73 = 64;
                  }
                }
              }

              else if (v70 == 4)
              {
                v71 = 0;
                v72 = 0;
                v73 = 128;
                v69 = 256;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 8)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 128;
                  v73 = 128;
                }
              }
            }

            else if (v70 <= 255)
            {
              if (v70 == 64)
              {
                v71 = 0;
                v72 = 0;
                v73 = 32;
                v69 = 64;
              }

              else
              {
                v72 = 1;
                v73 = 0;
                if (v70 == 128)
                {
                  v71 = 0;
                  v72 = 0;
                  v69 = 32;
                  v73 = 32;
                }
              }
            }

            else if (v70 == 256)
            {
              v71 = 0;
              v72 = 0;
              v73 = 16;
              v69 = 32;
            }

            else if (v70 == 512)
            {
              v71 = 0;
              v72 = 0;
              v69 = 16;
              v73 = 16;
            }

            else
            {
              v72 = 1;
              v73 = 0;
              if (v70 == 1024)
              {
                v71 = 0;
                v73 = 8;
                v69 = 16;
              }
            }

            v186 = (v69 >> 3) - 1;
            if (v71)
            {
              v187 = 0;
            }

            else
            {
              v187 = 32 - __clz(~(-1 << -__clz(v186)));
            }

            v188 = (v73 >> 3) - 1;
            if (v72)
            {
              v189 = 0;
              if (v187)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v189 = 32 - __clz(~(-1 << -__clz(v188)));
              if (v189 | v187)
              {
LABEL_226:
                v190 = 0;
                v191 = 0;
                v192 = v36 & v186;
                v193 = v18 & v188;
                v194 = v187 != 0;
                v195 = v189 != 0;
                v196 = 1;
                do
                {
                  --v187;
                  if (v194)
                  {
                    v191 |= (v196 & v192) << v190++;
                  }

                  else
                  {
                    v187 = 0;
                  }

                  --v189;
                  if (v195)
                  {
                    v191 |= (v196 & v193) << v190++;
                  }

                  else
                  {
                    v189 = 0;
                  }

                  v196 *= 2;
                  --v190;
                  v195 = v189 != 0;
                  v194 = v187 != 0;
                }

                while (v189 | v187);
                v197 = v191 << 8;
                goto LABEL_238;
              }
            }

            v197 = 0;
LABEL_238:
            v56 = v197 + ((v41 / v69 + v221 / v73 * ((v69 + v199) / v69)) << 14);
            goto LABEL_55;
          }

          if (v214)
          {
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v52 = v211;
            v53 = BYTE4(v211);
            v55 = v212;
            v54 = HIDWORD(v212);
            do
            {
              --v54;
              if (v53)
              {
                v50 |= (v51 & v36) << v49++;
              }

              else
              {
                v54 = 0;
              }

              --v55;
              if (v52)
              {
                v50 |= (v51 & v18) << v49++;
              }

              else
              {
                v55 = 0;
              }

              v51 *= 2;
              --v49;
              v52 = v55 != 0;
              v53 = v54 != 0;
            }

            while (v55 | v54);
            v56 = v50 << 8;
          }

          else
          {
            v56 = 0;
          }

LABEL_55:
          v57 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
          }

          v60 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_80:
              v68 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_80;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v36) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v18) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 8 * v64;
LABEL_81:
          v74 = (a3 + v56);
          if (v217)
          {
            v75 = v74[13];
            v233[12] = v74[12];
            v233[13] = v75;
            v76 = v74[15];
            v233[14] = v74[14];
            v233[15] = v76;
            v77 = v74[9];
            v233[8] = v74[8];
            v233[9] = v77;
            v78 = v74[11];
            v233[10] = v74[10];
            v233[11] = v78;
            v79 = v74[5];
            v233[4] = v74[4];
            v233[5] = v79;
            v80 = v74[7];
            v233[6] = v74[6];
            v233[7] = v80;
            v81 = v74[1];
            v233[0] = *v74;
            v233[1] = v81;
            v29 = v74[2];
            v28 = v74[3];
            v74 = v233;
            v233[2] = v29;
            v233[3] = v28;
          }

          v82 = (a4 + v68);
          v83 = (v220 + 4 * (v43 - a7));
          if (v47 & 1 | (v46 < 8u) || v223 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v74;
            v231 = v46;
            v232 = v223;
            v227 = v210;
            v228 = v43 - v41;
            block[6] = a4 + v68;
            v225 = v220 + 4 * (v43 - a7);
            v226 = a11;
            v229 = v209;
            v230 = v45;
            if (v47)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v87 = *v82;
            if (v87 == 96)
            {
              v29 = vld1q_dup_s8(v74->i8);
              v234 = v29;
              v236 = v29;
              v88 = 1;
            }

            else if (v87 == 31)
            {
              v29.i64[0] = v74->i64[0];
              v28.i64[0] = v74->i64[1];
              v144 = v74[1].i64[0];
              v145 = v74[1].i64[1];
              v234.i64[0] = v74->i64[0];
              v234.i64[1] = v144;
              v236.i64[0] = v28.i64[0];
              v236.i64[1] = v145;
              v88 = 32;
            }

            else if (*v82)
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v74, v87, *v29.i64, *v28.i8);
            }

            else
            {
              v88 = 0;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v146 = v74->i64 + v88;
            v147 = v82[1];
            if (v147 == 96)
            {
              v29 = vld1q_dup_s8(v146);
              v238 = v29;
              v240 = v29;
              v148 = 1;
            }

            else if (v147 == 31)
            {
              v29.i64[0] = *v146;
              v28.i64[0] = *(v146 + 8);
              v149 = *(v146 + 16);
              v150 = *(v146 + 24);
              v238.i64[0] = *v146;
              v238.i64[1] = v149;
              v240.i64[0] = v28.i64[0];
              v240.i64[1] = v150;
              v148 = 32;
            }

            else if (v82[1])
            {
              v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v146, v147, *v29.i64, *v28.i8);
            }

            else
            {
              v148 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
            }

            v151 = v146 + v148;
            v152 = v82[2];
            if (v152 == 96)
            {
              v29 = vld1q_dup_s8(v151);
              v235 = v29;
              v237 = v29;
              v153 = 1;
            }

            else if (v152 == 31)
            {
              v29.i64[0] = *v151;
              v28.i64[0] = *(v151 + 8);
              v154 = *(v151 + 16);
              v155 = *(v151 + 24);
              v235.i64[0] = *v151;
              v235.i64[1] = v154;
              v237.i64[0] = v28.i64[0];
              v237.i64[1] = v155;
              v153 = 32;
            }

            else if (v82[2])
            {
              v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v151, v152, *v29.i64, *v28.i8);
            }

            else
            {
              v153 = 0;
              v235 = 0uLL;
              v237 = 0uLL;
            }

            v156 = v151 + v153;
            v157 = v82[3];
            if (v157 == 96)
            {
              v29 = vld1q_dup_s8(v156);
              v239 = v29;
              v241 = v29;
              v158 = 1;
            }

            else if (v157 == 31)
            {
              v29.i64[0] = *v156;
              v28.i64[0] = *(v156 + 8);
              v159 = *(v156 + 16);
              v160 = *(v156 + 24);
              v239.i64[0] = *v156;
              v239.i64[1] = v159;
              v241.i64[0] = v28.i64[0];
              v241.i64[1] = v160;
              v158 = 32;
            }

            else if (v82[3])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 32, v156, v157, *v29.i64, *v28.i8);
            }

            else
            {
              v158 = 0;
              v239 = 0uLL;
              v241 = 0uLL;
            }

            v161 = v156 + v158;
            v162 = v82[4];
            if (v162 == 96)
            {
              v29 = vld1q_dup_s8(v161);
              v242 = v29;
              v244 = v29;
              v163 = 1;
            }

            else if (v162 == 31)
            {
              v29.i64[0] = *v161;
              v28.i64[0] = *(v161 + 8);
              v164 = *(v161 + 16);
              v165 = *(v161 + 24);
              v242.i64[0] = *v161;
              v242.i64[1] = v164;
              v244.i64[0] = v28.i64[0];
              v244.i64[1] = v165;
              v163 = 32;
            }

            else if (v82[4])
            {
              v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v161, v162, *v29.i64, *v28.i8);
            }

            else
            {
              v163 = 0;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v166 = v161 + v163;
            v167 = v82[5];
            if (v167 == 96)
            {
              v29 = vld1q_dup_s8(v166);
              v246 = v29;
              v248 = v29;
              v168 = 1;
            }

            else if (v167 == 31)
            {
              v29.i64[0] = *v166;
              v28.i64[0] = *(v166 + 8);
              v169 = *(v166 + 16);
              v170 = *(v166 + 24);
              v246.i64[0] = *v166;
              v246.i64[1] = v169;
              v248.i64[0] = v28.i64[0];
              v248.i64[1] = v170;
              v168 = 32;
            }

            else if (v82[5])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v166, v167, *v29.i64, *v28.i8);
            }

            else
            {
              v168 = 0;
              v246 = 0uLL;
              v248 = 0uLL;
            }

            v171 = v166 + v168;
            v172 = v82[6];
            if (v172 == 96)
            {
              v29 = vld1q_dup_s8(v171);
              v243 = v29;
              v245 = v29;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v29.i64[0] = *v171;
              v28.i64[0] = *(v171 + 8);
              v174 = *(v171 + 16);
              v175 = *(v171 + 24);
              v243.i64[0] = *v171;
              v243.i64[1] = v174;
              v245.i64[0] = v28.i64[0];
              v245.i64[1] = v175;
              v173 = 32;
            }

            else if (v82[6])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v171, v172, *v29.i64, *v28.i8);
            }

            else
            {
              v173 = 0;
              v243 = 0uLL;
              v245 = 0uLL;
            }

            v176 = v171 + v173;
            v177 = v82[7];
            if (v177 == 96)
            {
              v29 = vld1q_dup_s8(v176);
              v247 = v29;
              v249 = v29;
              v26 = v213;
              v178 = v229;
              if (!v229)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v26 = v213;
              if (v177 == 31)
              {
                v29.i64[0] = *v176;
                v28.i64[0] = *(v176 + 8);
                v179 = *(v176 + 16);
                v180 = *(v176 + 24);
                v247.i64[0] = *v176;
                v247.i64[1] = v179;
                v249.i64[0] = v28.i64[0];
                v249.i64[1] = v180;
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }

              else if (v82[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 32, v176, v177, *v29.i64, *v28.i8);
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v247 = 0uLL;
                v249 = 0uLL;
                v178 = v229;
                if (!v229)
                {
                  goto LABEL_29;
                }
              }
            }

            v181 = 0;
            v182 = &v234.i8[32 * v227 + 4 * v228];
            v183 = v230;
            do
            {
              if (v183)
              {
                v184 = 0;
                v185 = v225 + v226 * v181;
                do
                {
                  *(v185 + v184) = v182[v184];
                  ++v184;
                  v183 = v230;
                }

                while (4 * v230 > v184);
                v178 = v229;
              }

              ++v181;
              v182 += 32;
            }

            while (v181 < v178);
          }

          else
          {
            v84 = *v82;
            if (v84 == 96)
            {
              v29 = vld1q_dup_s8(v74->i8);
              *v83 = v29;
              *(v83 + a11) = v29;
              v85 = 1;
            }

            else if (v84 == 31)
            {
              v29.i64[0] = v74->i64[0];
              v28.i64[0] = v74->i64[1];
              v89 = v74[1].i64[0];
              v90 = v74[1].i64[1];
              v83->i64[0] = v74->i64[0];
              v83->i64[1] = v89;
              v91 = (v83->i64 + a11);
              *v91 = v28.i64[0];
              v91[1] = v90;
              v85 = 32;
            }

            else if (*v82)
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v220 + 4 * (v43 - a7)), a11, v74, v84, *v29.i64, *v28.i8);
            }

            else
            {
              v85 = 0;
              v83->i64[0] = 0;
              v83->i64[1] = 0;
              v86 = (v83->i64 + a11);
              *v86 = 0;
              v86[1] = 0;
            }

            v92 = v74->i64 + v85;
            v93 = (v83 + v206);
            v94 = v82[1];
            if (v94 == 96)
            {
              v29 = vld1q_dup_s8(v92);
              *v93 = v29;
              *(v93 + a11) = v29;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v29.i64[0] = *v92;
              v28.i64[0] = *(v92 + 8);
              v97 = *(v92 + 16);
              v98 = *(v92 + 24);
              v93->i64[0] = *v92;
              v93->i64[1] = v97;
              v99 = (v93->i64 + a11);
              *v99 = v28.i64[0];
              v99[1] = v98;
              v95 = 32;
            }

            else if (v82[1])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v83 + v206), a11, v92, v94, *v29.i64, *v28.i8);
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

            v100 = v92 + v95;
            v101 = v83 + 1;
            v102 = v82[2];
            if (v102 == 96)
            {
              v29 = vld1q_dup_s8(v100);
              *v101 = v29;
              *(v101 + a11) = v29;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v29.i64[0] = *v100;
              v28.i64[0] = *(v100 + 8);
              v105 = *(v100 + 16);
              v106 = *(v100 + 24);
              v83[1].i64[0] = *v100;
              v83[1].i64[1] = v105;
              v107 = (v101->i64 + a11);
              *v107 = v28.i64[0];
              v107[1] = v106;
              v103 = 32;
            }

            else if (v82[2])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *v29.i64, *v28.i8);
            }

            else
            {
              v103 = 0;
              v101->i64[0] = 0;
              v83[1].i64[1] = 0;
              v104 = (v101->i64 + a11);
              *v104 = 0;
              v104[1] = 0;
            }

            v108 = v100 + v103;
            v109 = v93 + 1;
            v110 = v82[3];
            if (v110 == 96)
            {
              v29 = vld1q_dup_s8(v108);
              *v109 = v29;
              *(v109 + a11) = v29;
              v111 = 1;
            }

            else if (v110 == 31)
            {
              v29.i64[0] = *v108;
              v28.i64[0] = *(v108 + 8);
              v113 = *(v108 + 16);
              v114 = *(v108 + 24);
              v93[1].i64[0] = *v108;
              v93[1].i64[1] = v113;
              v115 = (v109->i64 + a11);
              *v115 = v28.i64[0];
              v115[1] = v114;
              v111 = 32;
            }

            else if (v82[3])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *v29.i64, *v28.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v93[1].i64[1] = 0;
              v112 = (v109->i64 + a11);
              *v112 = 0;
              v112[1] = 0;
            }

            v116 = v108 + v111;
            v117 = (v83 + v205);
            v118 = v82[4];
            if (v118 == 96)
            {
              v29 = vld1q_dup_s8(v116);
              *v117 = v29;
              *(v117 + a11) = v29;
              v119 = 1;
            }

            else if (v118 == 31)
            {
              v29.i64[0] = *v116;
              v28.i64[0] = *(v116 + 8);
              v121 = *(v116 + 16);
              v122 = *(v116 + 24);
              v117->i64[0] = *v116;
              v117->i64[1] = v121;
              v123 = (v117->i64 + a11);
              *v123 = v28.i64[0];
              v123[1] = v122;
              v119 = 32;
            }

            else if (v82[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v83 + v205), a11, v116, v118, *v29.i64, *v28.i8);
            }

            else
            {
              v119 = 0;
              v117->i64[0] = 0;
              v117->i64[1] = 0;
              v120 = (v117->i64 + a11);
              *v120 = 0;
              v120[1] = 0;
            }

            v124 = v116 + v119;
            v125 = (v83 + 6 * a11);
            v126 = v82[5];
            if (v126 == 96)
            {
              v29 = vld1q_dup_s8(v124);
              *v125 = v29;
              *(v125 + a11) = v29;
              v127 = 1;
            }

            else if (v126 == 31)
            {
              v29.i64[0] = *v124;
              v28.i64[0] = *(v124 + 8);
              v129 = *(v124 + 16);
              v130 = *(v124 + 24);
              v125->i64[0] = *v124;
              v125->i64[1] = v129;
              v131 = (v125->i64 + a11);
              *v131 = v28.i64[0];
              v131[1] = v130;
              v127 = 32;
            }

            else if (v82[5])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, a11, v124, v126, *v29.i64, *v28.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v125->i64[1] = 0;
              v128 = (v125->i64 + a11);
              *v128 = 0;
              v128[1] = 0;
            }

            v132 = v124 + v127;
            v133 = v117 + 1;
            v134 = v82[6];
            if (v134 == 96)
            {
              v29 = vld1q_dup_s8(v132);
              *v133 = v29;
              *(v133 + a11) = v29;
              v135 = 1;
            }

            else if (v134 == 31)
            {
              v29.i64[0] = *v132;
              v28.i64[0] = *(v132 + 8);
              v137 = *(v132 + 16);
              v138 = *(v132 + 24);
              v117[1].i64[0] = *v132;
              v117[1].i64[1] = v137;
              v139 = (v133->i64 + a11);
              *v139 = v28.i64[0];
              v139[1] = v138;
              v135 = 32;
            }

            else if (v82[6])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *v29.i64, *v28.i8);
            }

            else
            {
              v135 = 0;
              v133->i64[0] = 0;
              v117[1].i64[1] = 0;
              v136 = (v133->i64 + a11);
              *v136 = 0;
              v136[1] = 0;
            }

            v140 = v132 + v135;
            v141 = v125 + 1;
            v142 = v82[7];
            if (v142 == 96)
            {
              v29 = vld1q_dup_s8(v140);
              *v141 = v29;
              *(v141 + a11) = v29;
              v26 = v213;
            }

            else
            {
              v26 = v213;
              if (v142 == 31)
              {
                v29.i64[0] = *v140;
                v28.i64[0] = *(v140 + 8);
                v38 = *(v140 + 16);
                v39 = *(v140 + 24);
                v125[1].i64[0] = *v140;
                v125[1].i64[1] = v38;
                v40 = (v141->i64 + a11);
                *v40 = v28.i64[0];
                v40[1] = v39;
              }

              else if (v82[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, a11, v140, v142, *v29.i64, *v28.i8);
              }

              else
              {
                v141->i64[0] = 0;
                v125[1].i64[1] = 0;
                v143 = (v141->i64 + a11);
                *v143 = 0;
                v143[1] = 0;
              }
            }
          }

LABEL_29:
          v22 = v36++ == v215 >> 3;
        }

        while (!v22);
        v22 = v18++ == v204;
      }

      while (!v22);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 64), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 4, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 4, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            v43 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92, a11, v89, *v91)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116), a11, v43, v91[1]);
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, a11, v44, v91[2]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v116 + 64), a11, v45, v91[3]);
            v47 = (v92 + v115);
            v48 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v115), a11, v46, v91[4]);
            v49 = (v92 + 6 * a11);
            v50 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49, a11, v48, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v47 + 4, a11, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v49 + 4, a11, v50 + v51, v91[7]);
            v42 = a7;
            v15 = v123;
LABEL_49:
            v52 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v89, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v98 + v99, v91[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 16 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 4, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 64), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 4, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 4, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
            v36 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v132 + 16 * (v48 - v35)), v24, v79, *v84)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119), v24, v36, v84[1]);
            v38 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v85 + 4, v24, v37, v84[2]);
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v119 + 64), v24, v38, v84[3]);
            v40 = (v85 + v118);
            v41 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v85 + v118), v24, v39, v84[4]);
            v42 = (v85 + 6 * a11);
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42, v24, v41, v84[5]);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v40 + 4, v24, v43, v84[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v42 + 4, v24, v43 + v44, v84[7]);
            v35 = a7;
            v15 = v126;
LABEL_29:
            v45 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v86 = &v79[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v79, *v84)];
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v84[1]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v87, v84[2]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v88, v84[3]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89, v84[4]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v90, v84[5]);
          v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v91, v84[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v91 + v92, v84[7]);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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