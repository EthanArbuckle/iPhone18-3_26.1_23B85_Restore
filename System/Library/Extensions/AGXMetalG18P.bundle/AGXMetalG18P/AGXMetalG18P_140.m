void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v103 = *MEMORY[0x29EDCA608];
  v77 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v88 = a8;
  v18 = a8 >> 5;
  v76 = a8 + a10 - 1;
  v19 = v76 >> 5;
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
  v85 = v24;
  if (v18 <= v19)
  {
    v84 = a7 + a9 - 1;
    if (a7 >> 5 <= v84 >> 5)
    {
      v90 = (a5 - 1) >> 5;
      v75 = (a6 - 1) >> 5;
      v80 = (a5 - 1) & 0x1F;
      v74 = v19 + 1;
      do
      {
        v25 = (32 * v18) | 0x1F;
        if (32 * v18 <= v88)
        {
          v26 = v88;
        }

        else
        {
          v26 = 32 * v18;
        }

        if (v76 < v25)
        {
          v25 = v76;
        }

        v83 = v26 - 32 * v18;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != ((a6 - 1) & 0x1F);
        v82 = v28;
        v30 = v28 != 32;
        v31 = ((a6 - 1) & 0x1F) + 1;
        if (v18 != v75)
        {
          v31 = 32;
        }

        v89 = v31;
        if (v18 != v75)
        {
          v29 = v30;
        }

        v81 = v29;
        v87 = a2 + (v26 - v88) * a11;
        v32 = a7 >> 5;
        do
        {
          v33 = 32 * v32;
          v91 = v32 + 1;
          v34 = 32 * (v32 + 1) - 1;
          if (32 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 32 * v32;
          }

          if (v84 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v90)
          {
            v38 = v80 + 1;
          }

          else
          {
            v38 = 32;
          }

          v39 = 1;
          if (32 * v18 < v88)
          {
            v40 = a1;
          }

          else
          {
            v40 = a1;
            if (v33 >= a7)
            {
              v41 = v36 != v80;
              if (v32 != v90)
              {
                v41 = v37 != 32;
              }

              v39 = v41 || v81;
            }
          }

          v42 = *(v40 + 128) >> (*(v40 + 144) + a12);
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

          v46 = *(v40 + 132) >> (*(v40 + 144) + a12);
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

          v56 = (a3 + v18 * v77 + 768 * v32);
          if (v85)
          {
            v57 = v37;
            memcpy(__dst, v56, 0x400uLL);
            v37 = v57;
            v40 = a1;
            v56 = __dst;
          }

          v58 = (a4 + v55);
          v59 = v87 + v35 - a7;
          if (v39 & 1 | (v38 < 0x20u) || v89 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v40;
            block[5] = v56;
            v100 = v38;
            v101 = v89;
            v96 = v83;
            v97 = v35 - v33;
            block[6] = v58;
            v94 = v87 + v35 - a7;
            v95 = a11;
            v98 = v82;
            v99 = v37;
            if (v39)
            {
              dispatch_sync(*(*(v40 + 8) + 16552), block);
            }

            else
            {
              v64 = *(*(v40 + 208) + 52);
              v65 = &byte_29D2F790B;
              v66 = 64;
              do
              {
                v67 = *v58++;
                v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&__dst[128 * *v65 + 1024 + 8 * *(v65 - 1)], 32, v56, v67, v64, v16, v17);
                v65 += 2;
                v66 -= 2;
              }

              while (v66);
              v68 = v98;
              if (v98 && v99)
              {
                v69 = 0;
                v70 = &__dst[32 * v96 + 1024 + v97];
                v71 = 1;
                do
                {
                  if (v71)
                  {
                    v72 = 0;
                    v73 = v94 + v95 * v69;
                    do
                    {
                      *(v73 + v72) = v70[v72];
                      v71 = v99;
                      ++v72;
                    }

                    while (v99 > v72);
                    v68 = v98;
                  }

                  ++v69;
                  v70 += 32;
                }

                while (v69 < v68);
              }
            }
          }

          else
          {
            v60 = *(*(v40 + 208) + 52);
            v61 = &byte_29D2F790B;
            v62 = 64;
            do
            {
              v63 = *v58++;
              v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v59 + 4 * a11 * *v61 + 8 * *(v61 - 1)), a11, v56, v63, v60, v16, v17);
              v61 += 2;
              v62 -= 2;
            }

            while (v62);
          }

          v32 = v91;
        }

        while (v91 != (v84 >> 5) + 1);
        ++v18;
      }

      while (v18 != v74);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v103 = *MEMORY[0x29EDCA608];
  v77 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v88 = a8;
  v18 = a8 >> 5;
  v76 = a8 + a10 - 1;
  v19 = v76 >> 5;
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
  v85 = v24;
  if (v18 <= v19)
  {
    v84 = a7 + a9 - 1;
    if (a7 >> 5 <= v84 >> 5)
    {
      v90 = (a5 - 1) >> 5;
      v75 = (a6 - 1) >> 5;
      v80 = (a5 - 1) & 0x1F;
      v74 = v19 + 1;
      do
      {
        v25 = (32 * v18) | 0x1F;
        if (32 * v18 <= v88)
        {
          v26 = v88;
        }

        else
        {
          v26 = 32 * v18;
        }

        if (v76 < v25)
        {
          v25 = v76;
        }

        v83 = v26 - 32 * v18;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != ((a6 - 1) & 0x1F);
        v82 = v28;
        v30 = v28 != 32;
        v31 = ((a6 - 1) & 0x1F) + 1;
        if (v18 != v75)
        {
          v31 = 32;
        }

        v89 = v31;
        if (v18 != v75)
        {
          v29 = v30;
        }

        v81 = v29;
        v87 = a2 + (v26 - v88) * a11;
        v32 = a7 >> 5;
        do
        {
          v33 = 32 * v32;
          v91 = v32 + 1;
          v34 = 32 * (v32 + 1) - 1;
          if (32 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 32 * v32;
          }

          if (v84 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v90)
          {
            v38 = v80 + 1;
          }

          else
          {
            v38 = 32;
          }

          v39 = 1;
          if (32 * v18 < v88)
          {
            v40 = a1;
          }

          else
          {
            v40 = a1;
            if (v33 >= a7)
            {
              v41 = v36 != v80;
              if (v32 != v90)
              {
                v41 = v37 != 32;
              }

              v39 = v41 || v81;
            }
          }

          v42 = *(v40 + 128) >> (*(v40 + 144) + a12);
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

          v46 = *(v40 + 132) >> (*(v40 + 144) + a12);
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

          v56 = (a3 + v18 * v77 + 640 * v32);
          if (v85)
          {
            v57 = v37;
            memcpy(__dst, v56, 0x400uLL);
            v37 = v57;
            v40 = a1;
            v56 = __dst;
          }

          v58 = (a4 + v55);
          v59 = v87 + v35 - a7;
          if (v39 & 1 | (v38 < 0x20u) || v89 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v40;
            block[5] = v56;
            v100 = v38;
            v101 = v89;
            v96 = v83;
            v97 = v35 - v33;
            block[6] = v58;
            v94 = v87 + v35 - a7;
            v95 = a11;
            v98 = v82;
            v99 = v37;
            if (v39)
            {
              dispatch_sync(*(*(v40 + 8) + 16552), block);
            }

            else
            {
              v64 = *(*(v40 + 208) + 52);
              v65 = &byte_29D2F790B;
              v66 = 64;
              do
              {
                v67 = *v58++;
                v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&__dst[128 * *v65 + 1024 + 8 * *(v65 - 1)], 32, v56, v67, v64, v16, v17);
                v65 += 2;
                v66 -= 2;
              }

              while (v66);
              v68 = v98;
              if (v98 && v99)
              {
                v69 = 0;
                v70 = &__dst[32 * v96 + 1024 + v97];
                v71 = 1;
                do
                {
                  if (v71)
                  {
                    v72 = 0;
                    v73 = v94 + v95 * v69;
                    do
                    {
                      *(v73 + v72) = v70[v72];
                      v71 = v99;
                      ++v72;
                    }

                    while (v99 > v72);
                    v68 = v98;
                  }

                  ++v69;
                  v70 += 32;
                }

                while (v69 < v68);
              }
            }
          }

          else
          {
            v60 = *(*(v40 + 208) + 52);
            v61 = &byte_29D2F790B;
            v62 = 64;
            do
            {
              v63 = *v58++;
              v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v59 + 4 * a11 * *v61 + 8 * *(v61 - 1)), a11, v56, v63, v60, v16, v17);
              v61 += 2;
              v62 -= 2;
            }

            while (v62);
          }

          v32 = v91;
        }

        while (v91 != (v84 >> 5) + 1);
        ++v18;
      }

      while (v18 != v74);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v103 = *MEMORY[0x29EDCA608];
  v77 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v88 = a8;
  v18 = a8 >> 5;
  v76 = a8 + a10 - 1;
  v19 = v76 >> 5;
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
  v85 = v24;
  if (v18 <= v19)
  {
    v84 = a7 + a9 - 1;
    if (a7 >> 5 <= v84 >> 5)
    {
      v90 = (a5 - 1) >> 5;
      v75 = (a6 - 1) >> 5;
      v80 = (a5 - 1) & 0x1F;
      v74 = v19 + 1;
      do
      {
        v25 = (32 * v18) | 0x1F;
        if (32 * v18 <= v88)
        {
          v26 = v88;
        }

        else
        {
          v26 = 32 * v18;
        }

        if (v76 < v25)
        {
          v25 = v76;
        }

        v83 = v26 - 32 * v18;
        v27 = v25 - v26;
        v28 = v27 + 1;
        v29 = v27 != ((a6 - 1) & 0x1F);
        v82 = v28;
        v30 = v28 != 32;
        v31 = ((a6 - 1) & 0x1F) + 1;
        if (v18 != v75)
        {
          v31 = 32;
        }

        v89 = v31;
        if (v18 != v75)
        {
          v29 = v30;
        }

        v81 = v29;
        v87 = a2 + (v26 - v88) * a11;
        v32 = a7 >> 5;
        do
        {
          v33 = 32 * v32;
          v91 = v32 + 1;
          v34 = 32 * (v32 + 1) - 1;
          if (32 * v32 <= a7)
          {
            v35 = a7;
          }

          else
          {
            v35 = 32 * v32;
          }

          if (v84 < v34)
          {
            v34 = a7 + a9 - 1;
          }

          v36 = v34 - v35;
          v37 = v36 + 1;
          if (v32 == v90)
          {
            v38 = v80 + 1;
          }

          else
          {
            v38 = 32;
          }

          v39 = 1;
          if (32 * v18 < v88)
          {
            v40 = a1;
          }

          else
          {
            v40 = a1;
            if (v33 >= a7)
            {
              v41 = v36 != v80;
              if (v32 != v90)
              {
                v41 = v37 != 32;
              }

              v39 = v41 || v81;
            }
          }

          v42 = *(v40 + 128) >> (*(v40 + 144) + a12);
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

          v46 = *(v40 + 132) >> (*(v40 + 144) + a12);
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

          v56 = (a3 + v18 * v77 + (v32 << 9));
          if (v85)
          {
            v57 = v37;
            memcpy(__dst, v56, 0x400uLL);
            v37 = v57;
            v40 = a1;
            v56 = __dst;
          }

          v58 = (a4 + v55);
          v59 = v87 + v35 - a7;
          if (v39 & 1 | (v38 < 0x20u) || v89 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v40;
            block[5] = v56;
            v100 = v38;
            v101 = v89;
            v96 = v83;
            v97 = v35 - v33;
            block[6] = v58;
            v94 = v87 + v35 - a7;
            v95 = a11;
            v98 = v82;
            v99 = v37;
            if (v39)
            {
              dispatch_sync(*(*(v40 + 8) + 16552), block);
            }

            else
            {
              v64 = *(*(v40 + 208) + 52);
              v65 = &byte_29D2F790B;
              v66 = 64;
              do
              {
                v67 = *v58++;
                v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&__dst[128 * *v65 + 1024 + 8 * *(v65 - 1)], 32, v56, v67, v64, v16, v17);
                v65 += 2;
                v66 -= 2;
              }

              while (v66);
              v68 = v98;
              if (v98 && v99)
              {
                v69 = 0;
                v70 = &__dst[32 * v96 + 1024 + v97];
                v71 = 1;
                do
                {
                  if (v71)
                  {
                    v72 = 0;
                    v73 = v94 + v95 * v69;
                    do
                    {
                      *(v73 + v72) = v70[v72];
                      v71 = v99;
                      ++v72;
                    }

                    while (v99 > v72);
                    v68 = v98;
                  }

                  ++v69;
                  v70 += 32;
                }

                while (v69 < v68);
              }
            }
          }

          else
          {
            v60 = *(*(v40 + 208) + 52);
            v61 = &byte_29D2F790B;
            v62 = 64;
            do
            {
              v63 = *v58++;
              v56 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v59 + 4 * a11 * *v61 + 8 * *(v61 - 1)), a11, v56, v63, v60, v16, v17);
              v61 += 2;
              v62 -= 2;
            }

            while (v62);
          }

          v32 = v91;
        }

        while (v91 != (v84 >> 5) + 1);
        ++v18;
      }

      while (v18 != v74);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + (v42 << 10));
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 768 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 640 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 1536 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 1280 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + (v42 << 10));
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v102 = v15;
  v17 = v16;
  v19 = v18;
  v95 = v20;
  v87 = v21;
  v88 = v22;
  v23 = v12;
  v113 = *MEMORY[0x29EDCA608];
  v86 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v97 = v14;
  v28 = v14 >> 5;
  v85 = v14 + a10 - 1;
  v29 = v85 >> 5;
  v100 = v23;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v94 = v34;
  if (v28 <= v29)
  {
    v93 = v102 + a9 - 1;
    if (v102 >> 5 <= v93 >> 5)
    {
      v99 = (v19 - 1) >> 5;
      v84 = (v17 - 1) >> 5;
      v89 = (v19 - 1) & 0x1F;
      v83 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v85 < v35)
        {
          v35 = v85;
        }

        v92 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v91 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v84)
        {
          v41 = 32;
        }

        v98 = v41;
        if (v28 != v84)
        {
          v39 = v40;
        }

        v90 = v39;
        v96 = v87 + (v36 - v97) * a11;
        v42 = v102 >> 5;
        do
        {
          v44 = 32 * v42;
          v101 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v102)
          {
            v46 = v102;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v93 < v45)
          {
            v45 = v102 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          v49 = v100;
          if (v42 == v99)
          {
            v50 = v89 + 1;
          }

          else
          {
            v50 = 32;
          }

          v51 = 1;
          if (32 * v28 >= v97 && v44 >= v102)
          {
            v52 = v47 != v89;
            if (v42 != v99)
            {
              v52 = v48 != 32;
            }

            v51 = v52 || v90;
          }

          v53 = *(v100 + 128) >> (*(v100 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v100 + 132) >> (*(v100 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v88 + v28 * v86 + (v42 << 11));
          if (v94)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v49 = v100;
            v67 = __dst;
          }

          v69 = (v95 + v66);
          v70 = v96 + 2 * (v46 - v102);
          if (v51 & 1 | (v50 < 0x20u) || v98 < 0x20)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v49;
            block[5] = v67;
            v110 = v50;
            v111 = v98;
            v106 = v92;
            v107 = v46 - v44;
            block[6] = v69;
            v104 = v96 + 2 * (v46 - v102);
            v105 = a11;
            v108 = v91;
            v109 = v48;
            if (v51)
            {
              dispatch_sync(*(*(v49 + 8) + 16552), block);
              v43 = v101;
            }

            else
            {
              v74 = &byte_29D2F790B;
              v75 = 64;
              v43 = v101;
              do
              {
                v76 = *v69++;
                v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v74 + 2048 + 16 * *(v74 - 1)], 64, v67, v76, v24, v25, v26, v27));
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              v77 = v108;
              if (v108)
              {
                v78 = 0;
                v79 = &__dst[64 * v106 + 2048 + 2 * v107];
                v80 = v109;
                do
                {
                  if (v80)
                  {
                    v81 = 0;
                    v82 = v104 + v105 * v78;
                    do
                    {
                      *(v82 + v81) = v79[v81];
                      ++v81;
                      v80 = v109;
                    }

                    while (2 * v109 > v81);
                    v77 = v108;
                  }

                  ++v78;
                  v79 += 64;
                }

                while (v78 < v77);
              }
            }
          }

          else
          {
            v71 = &byte_29D2F790B;
            v72 = 64;
            v43 = v101;
            do
            {
              v73 = *v69++;
              v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock((v70 + 4 * a11 * *v71 + 16 * *(v71 - 1)), a11, v67, v73, v24, v25, v26, v27));
              v71 += 2;
              v72 -= 2;
            }

            while (v72);
          }

          v42 = v43;
        }

        while (v43 != (v93 >> 5) + 1);
        ++v28;
      }

      while (v28 != v83);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 1152 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + (v42 << 10));
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v103 = v15;
  v17 = v16;
  v19 = v18;
  v97 = v20;
  v89 = v21;
  v90 = v22;
  v23 = v12;
  v114 = *MEMORY[0x29EDCA608];
  v88 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v99 = v14;
  v28 = v14 >> 5;
  v87 = v14 + a10 - 1;
  v29 = v87 >> 5;
  if (*(v23 + 168))
  {
    v30 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v96 = v34;
  if (v28 <= v29)
  {
    v95 = v103 + a9 - 1;
    if (v103 >> 5 <= v95 >> 5)
    {
      v101 = (v19 - 1) >> 5;
      v86 = (v17 - 1) >> 5;
      v91 = (v19 - 1) & 0x1F;
      v85 = v29 + 1;
      do
      {
        v35 = (32 * v28) | 0x1F;
        if (32 * v28 <= v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 32 * v28;
        }

        if (v87 < v35)
        {
          v35 = v87;
        }

        v94 = v36 - 32 * v28;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != ((v17 - 1) & 0x1F);
        v93 = v38;
        v40 = v38 != 32;
        v41 = ((v17 - 1) & 0x1F) + 1;
        if (v28 != v86)
        {
          v41 = 32;
        }

        v100 = v41;
        if (v28 != v86)
        {
          v39 = v40;
        }

        v92 = v39;
        v98 = v89 + (v36 - v99) * a11;
        v42 = v103 >> 5;
        do
        {
          v44 = 32 * v42;
          v102 = v42 + 1;
          v45 = 32 * (v42 + 1) - 1;
          if (32 * v42 <= v103)
          {
            v46 = v103;
          }

          else
          {
            v46 = 32 * v42;
          }

          if (v95 < v45)
          {
            v45 = v103 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v101)
          {
            v49 = v91 + 1;
          }

          else
          {
            v49 = 32;
          }

          v50 = 1;
          if (32 * v28 < v99)
          {
            v51 = v23;
          }

          else
          {
            v51 = v23;
            if (v44 >= v103)
            {
              v52 = v47 != v91;
              if (v42 != v101)
              {
                v52 = v48 != 32;
              }

              v50 = v52 || v92;
            }
          }

          v53 = *(v51 + 128) >> (*(v51 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 31;
          v55 = v54 >= 0x40;
          v56 = 32 - __clz(~(-1 << -__clz((v54 >> 5) - 1)));
          if (!v55)
          {
            v56 = 0;
          }

          v57 = *(v51 + 132) >> (*(v51 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 31;
          v59 = 32 - __clz(~(-1 << -__clz((v58 >> 5) - 1)));
          if (v58 >= 0x40)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (v60 | v56)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56 != 0;
            v64 = v60 != 0;
            v65 = 1;
            do
            {
              --v56;
              if (v63)
              {
                v62 |= (v65 & v42) << v61++;
              }

              else
              {
                v56 = 0;
              }

              --v60;
              if (v64)
              {
                v62 |= (v65 & v28) << v61++;
              }

              else
              {
                v60 = 0;
              }

              v65 *= 2;
              --v61;
              v64 = v60 != 0;
              v63 = v56 != 0;
            }

            while (v60 | v56);
            v66 = 32 * v62;
          }

          else
          {
            v66 = 0;
          }

          v67 = (v90 + v28 * v88 + 768 * v42);
          if (v96)
          {
            v68 = v48;
            memcpy(__dst, v67, 0x800uLL);
            v48 = v68;
            v51 = v23;
            v67 = __dst;
          }

          v69 = (v97 + v66);
          v70 = v98 + 2 * (v46 - v103);
          if (v50 & 1 | (v49 < 0x20u) || v100 <= 0x1F)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v51;
            block[5] = v67;
            v111 = v49;
            v112 = v100;
            v107 = v94;
            v108 = v46 - v44;
            block[6] = v69;
            v105 = v98 + 2 * (v46 - v103);
            v106 = a11;
            v109 = v93;
            v110 = v48;
            if (v50)
            {
              dispatch_sync(*(*(v51 + 8) + 16552), block);
              v43 = v102;
            }

            else
            {
              v75 = *(*(v51 + 208) + 52);
              v76 = &byte_29D2F790B;
              v77 = 64;
              v43 = v102;
              do
              {
                v78 = *v69++;
                v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&__dst[256 * *v76 + 2048 + 16 * *(v76 - 1)], 64, v67, v78, v75, v24, v25, v26, v27);
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              v79 = v109;
              if (v109)
              {
                v80 = 0;
                v81 = &__dst[64 * v107 + 2048 + 2 * v108];
                v82 = v110;
                do
                {
                  if (v82)
                  {
                    v83 = 0;
                    v84 = v105 + v106 * v80;
                    do
                    {
                      *(v84 + v83) = v81[v83];
                      ++v83;
                      v82 = v110;
                    }

                    while (2 * v110 > v83);
                    v79 = v109;
                  }

                  ++v80;
                  v81 += 64;
                }

                while (v80 < v79);
              }
            }
          }

          else
          {
            v71 = *(*(v51 + 208) + 52);
            v72 = &byte_29D2F790B;
            v73 = 64;
            v43 = v102;
            do
            {
              v74 = *v69++;
              v67 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock((v70 + 4 * a11 * *v72 + 16 * *(v72 - 1)), a11, v67, v74, v71, v24, v25, v26, v27);
              v72 += 2;
              v73 -= 2;
            }

            while (v73);
          }

          v42 = v43;
        }

        while (v43 != (v95 >> 5) + 1);
        ++v28;
      }

      while (v28 != v85);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v251 = *MEMORY[0x29EDCA608];
  v195 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v207 = a8;
  v19 = a8 >> 4;
  v194 = a8 + a10 - 1;
  v20 = v194 >> 4;
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
  v204 = v25;
  if (v19 <= v20)
  {
    v203 = a7 + a9 - 1;
    if (a7 >> 4 <= v203 >> 4)
    {
      v26 = a6 - 1;
      v27 = (a5 - 1) >> 4;
      v193 = v26 >> 4;
      v28 = v26 & 0xF;
      v191 = v28 + 1;
      v192 = v28;
      v199 = 4 * a11;
      v198 = a11;
      v190 = v20 + 1;
      v29 = 2 * a11;
      do
      {
        v30 = (16 * v19) | 0xF;
        if (16 * v19 <= v207)
        {
          v31 = v207;
        }

        else
        {
          v31 = 16 * v19;
        }

        if (v194 < v30)
        {
          v30 = v194;
        }

        v202 = v31 - 16 * v19;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v192;
        v201 = v33;
        v35 = v33 != 16;
        v36 = v191;
        if (v19 != v193)
        {
          v36 = 16;
        }

        v208 = v36;
        if (v19 != v193)
        {
          v34 = v35;
        }

        v200 = v34;
        v206 = a2 + (v31 - v207) * a11;
        v37 = a7 >> 4;
        do
        {
          v38 = 16 * v37;
          v39 = v37 + 1;
          v40 = 16 * (v37 + 1) - 1;
          if (16 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 16 * v37;
          }

          if (v203 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v40 - v41 + 1;
          if (v37 == v27)
          {
            v44 = ((a5 - 1) & 0xF) + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (16 * v19 >= v207 && v38 >= a7)
          {
            v46 = v42 != ((a5 - 1) & 0xF);
            if (v37 != v27)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v200;
          }

          v47 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
          }

          v50 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
            if (!v49)
            {
LABEL_62:
              v58 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
            if (!(v52 | v49))
            {
              goto LABEL_62;
            }
          }

          v53 = 0;
          v54 = 0;
          v55 = v49 != 0;
          v56 = v52 != 0;
          v57 = 1;
          do
          {
            --v49;
            if (v55)
            {
              v54 |= (v57 & v37) << v53++;
            }

            else
            {
              v49 = 0;
            }

            --v52;
            if (v56)
            {
              v54 |= (v57 & v19) << v53++;
            }

            else
            {
              v52 = 0;
            }

            v57 *= 2;
            --v53;
            v56 = v52 != 0;
            v55 = v49 != 0;
          }

          while (v52 | v49);
          v58 = 8 * v54;
LABEL_63:
          v59 = (a3 + v19 * v195 + (v37 << 8));
          if (v204)
          {
            v60 = v59[13];
            v218[12] = v59[12];
            v218[13] = v60;
            v61 = v59[15];
            v218[14] = v59[14];
            v218[15] = v61;
            v62 = v59[9];
            v218[8] = v59[8];
            v218[9] = v62;
            v63 = v59[11];
            v218[10] = v59[10];
            v218[11] = v63;
            v64 = v59[5];
            v218[4] = v59[4];
            v218[5] = v64;
            v65 = v59[7];
            v218[6] = v59[6];
            v218[7] = v65;
            v66 = v59[1];
            v218[0] = *v59;
            v218[1] = v66;
            v17 = v59[2];
            v18 = v59[3];
            v59 = v218;
            v218[2] = v17;
            v218[3] = v18;
          }

          v67 = (a4 + v58);
          v68 = (v206 + v41 - a7);
          if (v45 & 1 | (v44 < 0x10u) || v208 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v59;
            v216 = v44;
            v217 = v208;
            v212 = v202;
            v213 = v41 - v38;
            block[6] = a4 + v58;
            v210 = v206 + v41 - a7;
            v211 = a11;
            v214 = v201;
            v215 = v43;
            if (v45)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v71 = *v67;
            if (v71 == 96)
            {
              *&v17 = vdup_lane_s8(*v59, 0);
              v219 = v17;
              v221 = v17;
              v223 = v17;
              v225 = v17;
              v72 = 1;
            }

            else if (v71 == 31)
            {
              v132 = *(v59 + 8);
              v133 = v59[1];
              v134 = *(v59 + 24);
              v135 = vuzp2_s16(*v59, v133);
              v219 = vuzp1_s16(*v59, v133);
              v221 = v135;
              *&v17 = vuzp1_s16(v132, v134);
              *&v18 = vuzp2_s16(v132, v134);
              v223 = v17;
              v225 = v18;
              v72 = 32;
            }

            else if (*v67)
            {
              v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 16, v59, v71, *&v17, *&v18);
            }

            else
            {
              v72 = 0;
              v219 = 0;
              v221 = 0;
              v223 = 0;
              v225 = 0;
            }

            v136 = (v59 + v72);
            v137 = v67[1];
            if (v137 == 96)
            {
              *&v17 = vdup_lane_s8(*v136, 0);
              v220 = v17;
              v222 = v17;
              v224 = v17;
              v226 = v17;
              v138 = 1;
            }

            else if (v137 == 31)
            {
              v139 = v136[1];
              v140 = v136[2];
              v141 = v136[3];
              v142 = vuzp2_s16(*v136, v140);
              v220 = vuzp1_s16(*v136, v140);
              v222 = v142;
              *&v17 = vuzp1_s16(v139, v141);
              *&v18 = vuzp2_s16(v139, v141);
              v224 = v17;
              v226 = v18;
              v138 = 32;
            }

            else if (v67[1])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 16, v136, v137, *&v17, *&v18);
            }

            else
            {
              v138 = 0;
              v220 = 0;
              v222 = 0;
              v224 = 0;
              v226 = 0;
            }

            v143 = (v136 + v138);
            v144 = v67[2];
            if (v144 == 96)
            {
              *&v17 = vdup_lane_s8(*v143, 0);
              v227 = v17;
              v229 = v17;
              v231 = v17;
              v233 = v17;
              v145 = 1;
            }

            else if (v144 == 31)
            {
              v146 = v143[1];
              v147 = v143[2];
              v148 = v143[3];
              v149 = vuzp2_s16(*v143, v147);
              v227 = vuzp1_s16(*v143, v147);
              v229 = v149;
              *&v17 = vuzp1_s16(v146, v148);
              *&v18 = vuzp2_s16(v146, v148);
              v231 = v17;
              v233 = v18;
              v145 = 32;
            }

            else if (v67[2])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 16, v143, v144, *&v17, *&v18);
            }

            else
            {
              v145 = 0;
              v227 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
            }

            v150 = (v143 + v145);
            v151 = v67[3];
            if (v151 == 96)
            {
              *&v17 = vdup_lane_s8(*v150, 0);
              v228 = v17;
              v230 = v17;
              v232 = v17;
              v234 = v17;
              v152 = 1;
            }

            else if (v151 == 31)
            {
              v153 = v150[1];
              v154 = v150[2];
              v155 = v150[3];
              v156 = vuzp2_s16(*v150, v154);
              v228 = vuzp1_s16(*v150, v154);
              v230 = v156;
              *&v17 = vuzp1_s16(v153, v155);
              *&v18 = vuzp2_s16(v153, v155);
              v232 = v17;
              v234 = v18;
              v152 = 32;
            }

            else if (v67[3])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v150, v151, *&v17, *&v18);
            }

            else
            {
              v152 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v157 = (v150 + v152);
            v158 = v67[4];
            if (v158 == 96)
            {
              *&v17 = vdup_lane_s8(*v157, 0);
              v235 = v17;
              v237 = v17;
              v239 = v17;
              v241 = v17;
              v159 = 1;
            }

            else if (v158 == 31)
            {
              v160 = v157[1];
              v161 = v157[2];
              v162 = v157[3];
              v163 = vuzp2_s16(*v157, v161);
              v235 = vuzp1_s16(*v157, v161);
              v237 = v163;
              *&v17 = vuzp1_s16(v160, v162);
              *&v18 = vuzp2_s16(v160, v162);
              v239 = v17;
              v241 = v18;
              v159 = 32;
            }

            else if (v67[4])
            {
              v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 16, v157, v158, *&v17, *&v18);
            }

            else
            {
              v159 = 0;
              v235 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
            }

            v164 = (v157 + v159);
            v165 = v67[5];
            if (v165 == 96)
            {
              *&v17 = vdup_lane_s8(*v164, 0);
              v236 = v17;
              v238 = v17;
              v240 = v17;
              v242 = v17;
              v166 = 1;
            }

            else if (v165 == 31)
            {
              v167 = v164[1];
              v168 = v164[2];
              v169 = v164[3];
              v170 = vuzp2_s16(*v164, v168);
              v236 = vuzp1_s16(*v164, v168);
              v238 = v170;
              *&v17 = vuzp1_s16(v167, v169);
              *&v18 = vuzp2_s16(v167, v169);
              v240 = v17;
              v242 = v18;
              v166 = 32;
            }

            else if (v67[5])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v164, v165, *&v17, *&v18);
            }

            else
            {
              v166 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v171 = (v164 + v166);
            v172 = v67[6];
            if (v172 == 96)
            {
              *&v17 = vdup_lane_s8(*v171, 0);
              v243 = v17;
              v245 = v17;
              v247 = v17;
              v249 = v17;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v174 = v171[1];
              v175 = v171[2];
              v176 = v171[3];
              v177 = vuzp2_s16(*v171, v175);
              v243 = vuzp1_s16(*v171, v175);
              v245 = v177;
              *&v17 = vuzp1_s16(v174, v176);
              *&v18 = vuzp2_s16(v174, v176);
              v247 = v17;
              v249 = v18;
              v173 = 32;
            }

            else if (v67[6])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 16, v171, v172, *&v17, *&v18);
            }

            else
            {
              v173 = 0;
              v243 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
            }

            v178 = (v171 + v173);
            v179 = v67[7];
            if (v179 == 96)
            {
              *&v17 = vdup_lane_s8(*v178, 0);
              v244 = v17;
              v246 = v17;
              v248 = v17;
              v250 = v17;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else if (v179 == 31)
            {
              v181 = v178[1];
              v182 = v178[2];
              v183 = v178[3];
              v184 = vuzp2_s16(*v178, v182);
              v244 = vuzp1_s16(*v178, v182);
              v246 = v184;
              *&v17 = vuzp1_s16(v181, v183);
              *&v18 = vuzp2_s16(v181, v183);
              v248 = v17;
              v250 = v18;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else if (v67[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v178, v179, *&v17, *&v18);
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            if (v215)
            {
              v185 = 0;
              v186 = &v219 + 16 * v212 + v213;
              v187 = 1;
              do
              {
                if (v187)
                {
                  v188 = 0;
                  v189 = v210 + v211 * v185;
                  do
                  {
                    *(v189 + v188) = v186[v188];
                    v187 = v215;
                    ++v188;
                  }

                  while (v215 > v188);
                  v180 = v214;
                }

                ++v185;
                v186 += 16;
              }

              while (v185 < v180);
            }
          }

          else
          {
            v69 = *v67;
            if (v69 == 96)
            {
              *&v17 = vdup_lane_s8(*v59, 0);
              *v68 = v17;
              *(v68 + a11) = v17;
              *(v68 + 2 * a11) = v17;
              *(v68 + 3 * a11) = v17;
              v70 = 1;
            }

            else if (v69 == 31)
            {
              v73 = *v59;
              *&v18 = *(v59 + 1);
              v74 = v59[1];
              v75 = *(v59 + 24);
              *v68 = vuzp1_s16(*v59, v74);
              *(v68 + a11) = vuzp2_s16(v73, v74);
              v76 = (v68 + v29);
              *v76 = vuzp1_s16(*&v18, v75);
              *&v17 = vuzp2_s16(*&v18, v75);
              *(v76 + a11) = v17;
              v70 = 32;
            }

            else if (*v67)
            {
              v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v206 + v41 - a7), a11, v59, v69, *&v17, *&v18);
            }

            else
            {
              v70 = 0;
              *v68 = 0;
              *(v68 + a11) = 0;
              *(v68 + 2 * a11) = 0;
              *(v68 + 3 * a11) = 0;
            }

            v77 = (v59 + v70);
            v78 = v68 + 1;
            v79 = v67[1];
            if (v79 == 96)
            {
              *&v17 = vdup_lane_s8(*v77, 0);
              *v78 = v17;
              *(v78 + a11) = v17;
              *(v78 + 2 * a11) = v17;
              *(v78 + 3 * a11) = v17;
              v80 = 1;
            }

            else if (v79 == 31)
            {
              v81 = *v77;
              *&v18 = v77[1];
              v82 = v77[2];
              v83 = v77[3];
              *v78 = vuzp1_s16(*v77, v82);
              *(v78 + a11) = vuzp2_s16(v81, v82);
              v84 = (v78 + v29);
              *v84 = vuzp1_s16(*&v18, v83);
              *&v17 = vuzp2_s16(*&v18, v83);
              *(v84 + a11) = v17;
              v80 = 32;
            }

            else if (v67[1])
            {
              v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v78, a11, v77, v79, *&v17, *&v18);
            }

            else
            {
              v80 = 0;
              *v78 = 0;
              *(v78 + a11) = 0;
              *(v78 + 2 * a11) = 0;
              *(v78 + 3 * a11) = 0;
            }

            v85 = (v77 + v80);
            v86 = (v68 + v199);
            v87 = v67[2];
            if (v87 == 96)
            {
              *&v17 = vdup_lane_s8(*v85, 0);
              *v86 = v17;
              *(v86 + a11) = v17;
              *(v86 + 2 * a11) = v17;
              *(v86 + 3 * a11) = v17;
              v88 = 1;
            }

            else if (v87 == 31)
            {
              v89 = *v85;
              *&v18 = v85[1];
              v90 = v85[2];
              v91 = v85[3];
              *v86 = vuzp1_s16(*v85, v90);
              *(v86 + a11) = vuzp2_s16(v89, v90);
              v92 = (v86 + v29);
              *v92 = vuzp1_s16(*&v18, v91);
              *&v17 = vuzp2_s16(*&v18, v91);
              *(v92 + a11) = v17;
              v88 = 32;
            }

            else if (v67[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v199), a11, v85, v87, *&v17, *&v18);
            }

            else
            {
              v88 = 0;
              *v86 = 0;
              *(v86 + a11) = 0;
              *(v86 + 2 * a11) = 0;
              *(v86 + 3 * a11) = 0;
            }

            v93 = (v85 + v88);
            v94 = v86 + 1;
            v95 = v67[3];
            if (v95 == 96)
            {
              *&v17 = vdup_lane_s8(*v93, 0);
              *v94 = v17;
              *(v94 + a11) = v17;
              *(v94 + 2 * a11) = v17;
              *(v94 + 3 * a11) = v17;
              v96 = 1;
            }

            else if (v95 == 31)
            {
              v97 = *v93;
              *&v18 = v93[1];
              v98 = v93[2];
              v99 = v93[3];
              *v94 = vuzp1_s16(*v93, v98);
              *(v94 + a11) = vuzp2_s16(v97, v98);
              v100 = (v94 + v29);
              *v100 = vuzp1_s16(*&v18, v99);
              *&v17 = vuzp2_s16(*&v18, v99);
              *(v100 + a11) = v17;
              v96 = 32;
            }

            else if (v67[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v94, a11, v93, v95, *&v17, *&v18);
            }

            else
            {
              v96 = 0;
              *v94 = 0;
              *(v94 + a11) = 0;
              *(v94 + 2 * a11) = 0;
              *(v94 + 3 * a11) = 0;
            }

            v101 = (v93 + v96);
            v102 = &v68[v198];
            v103 = v67[4];
            if (v103 == 96)
            {
              *&v17 = vdup_lane_s8(*v101, 0);
              *v102 = v17;
              *(v102 + a11) = v17;
              *(v102 + 2 * a11) = v17;
              *(v102 + 3 * a11) = v17;
              v104 = 1;
            }

            else if (v103 == 31)
            {
              v105 = *v101;
              *&v18 = v101[1];
              v106 = v101[2];
              v107 = v101[3];
              *v102 = vuzp1_s16(*v101, v106);
              *(v102 + a11) = vuzp2_s16(v105, v106);
              v108 = (v102 + v29);
              *v108 = vuzp1_s16(*&v18, v107);
              *&v17 = vuzp2_s16(*&v18, v107);
              *(v108 + a11) = v17;
              v104 = 32;
            }

            else if (v67[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v68[v198], a11, v101, v103, *&v17, *&v18);
            }

            else
            {
              v104 = 0;
              *v102 = 0;
              *(v102 + a11) = 0;
              *(v102 + 2 * a11) = 0;
              *(v102 + 3 * a11) = 0;
            }

            v109 = (v101 + v104);
            v110 = v102 + 1;
            v111 = v67[5];
            if (v111 == 96)
            {
              *&v17 = vdup_lane_s8(*v109, 0);
              *v110 = v17;
              *(v110 + a11) = v17;
              *(v110 + 2 * a11) = v17;
              *(v110 + 3 * a11) = v17;
              v112 = 1;
            }

            else if (v111 == 31)
            {
              v113 = *v109;
              *&v18 = v109[1];
              v114 = v109[2];
              v115 = v109[3];
              *v110 = vuzp1_s16(*v109, v114);
              *(v110 + a11) = vuzp2_s16(v113, v114);
              v116 = (v110 + v29);
              *v116 = vuzp1_s16(*&v18, v115);
              *&v17 = vuzp2_s16(*&v18, v115);
              *(v116 + a11) = v17;
              v112 = 32;
            }

            else if (v67[5])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, a11, v109, v111, *&v17, *&v18);
            }

            else
            {
              v112 = 0;
              *v110 = 0;
              *(v110 + a11) = 0;
              *(v110 + 2 * a11) = 0;
              *(v110 + 3 * a11) = 0;
            }

            v117 = (v109 + v112);
            v118 = (v68 + 12 * a11);
            v119 = v67[6];
            if (v119 == 96)
            {
              *&v17 = vdup_lane_s8(*v117, 0);
              *v118 = v17;
              *(v118 + a11) = v17;
              *(v118 + 2 * a11) = v17;
              *(v118 + 3 * a11) = v17;
              v120 = 1;
            }

            else if (v119 == 31)
            {
              v121 = *v117;
              *&v18 = v117[1];
              v122 = v117[2];
              v123 = v117[3];
              *v118 = vuzp1_s16(*v117, v122);
              *(v118 + a11) = vuzp2_s16(v121, v122);
              v124 = (v118 + v29);
              *v124 = vuzp1_s16(*&v18, v123);
              *&v17 = vuzp2_s16(*&v18, v123);
              *(v124 + a11) = v17;
              v120 = 32;
            }

            else if (v67[6])
            {
              v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v118, a11, v117, v119, *&v17, *&v18);
            }

            else
            {
              v120 = 0;
              *v118 = 0;
              *(v118 + a11) = 0;
              *(v118 + 2 * a11) = 0;
              *(v118 + 3 * a11) = 0;
            }

            v125 = (v117 + v120);
            v126 = v118 + 1;
            v127 = v67[7];
            if (v127 == 96)
            {
              *&v17 = vdup_lane_s8(*v125, 0);
              *v126 = v17;
              *(v126 + a11) = v17;
              *(v126 + 2 * a11) = v17;
              *(v126 + 3 * a11) = v17;
              v27 = (a5 - 1) >> 4;
            }

            else
            {
              v27 = (a5 - 1) >> 4;
              if (v127 == 31)
              {
                v128 = *v125;
                *&v18 = v125[1];
                v129 = v125[2];
                v130 = v125[3];
                *v126 = vuzp1_s16(*v125, v129);
                *(v126 + a11) = vuzp2_s16(v128, v129);
                v131 = (v126 + v29);
                *v131 = vuzp1_s16(*&v18, v130);
                *&v17 = vuzp2_s16(*&v18, v130);
                *(v131 + a11) = v17;
              }

              else if (v67[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *&v17, *&v18);
              }

              else
              {
                *v126 = 0;
                *(v126 + a11) = 0;
                *(v126 + 2 * a11) = 0;
                *(v126 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v37 = v39;
        }

        while (v39 != (v203 >> 4) + 1);
        ++v19;
      }

      while (v19 != v190);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v251 = *MEMORY[0x29EDCA608];
  v195 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v207 = a8;
  v19 = a8 >> 4;
  v194 = a8 + a10 - 1;
  v20 = v194 >> 4;
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
  v204 = v25;
  if (v19 <= v20)
  {
    v203 = a7 + a9 - 1;
    if (a7 >> 4 <= v203 >> 4)
    {
      v26 = a6 - 1;
      v27 = (a5 - 1) >> 4;
      v193 = v26 >> 4;
      v28 = v26 & 0xF;
      v191 = v28 + 1;
      v192 = v28;
      v199 = 4 * a11;
      v198 = a11;
      v190 = v20 + 1;
      v29 = 2 * a11;
      do
      {
        v30 = (16 * v19) | 0xF;
        if (16 * v19 <= v207)
        {
          v31 = v207;
        }

        else
        {
          v31 = 16 * v19;
        }

        if (v194 < v30)
        {
          v30 = v194;
        }

        v202 = v31 - 16 * v19;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v192;
        v201 = v33;
        v35 = v33 != 16;
        v36 = v191;
        if (v19 != v193)
        {
          v36 = 16;
        }

        v208 = v36;
        if (v19 != v193)
        {
          v34 = v35;
        }

        v200 = v34;
        v206 = a2 + (v31 - v207) * a11;
        v37 = a7 >> 4;
        do
        {
          v38 = 16 * v37;
          v39 = v37 + 1;
          v40 = 16 * (v37 + 1) - 1;
          if (16 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 16 * v37;
          }

          if (v203 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v40 - v41 + 1;
          if (v37 == v27)
          {
            v44 = ((a5 - 1) & 0xF) + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (16 * v19 >= v207 && v38 >= a7)
          {
            v46 = v42 != ((a5 - 1) & 0xF);
            if (v37 != v27)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v200;
          }

          v47 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
          }

          v50 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v50 + 15;
          if (v51 < 0x20)
          {
            v52 = 0;
            if (!v49)
            {
LABEL_62:
              v58 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v52 = 32 - __clz(~(-1 << -__clz((v51 >> 4) - 1)));
            if (!(v52 | v49))
            {
              goto LABEL_62;
            }
          }

          v53 = 0;
          v54 = 0;
          v55 = v49 != 0;
          v56 = v52 != 0;
          v57 = 1;
          do
          {
            --v49;
            if (v55)
            {
              v54 |= (v57 & v37) << v53++;
            }

            else
            {
              v49 = 0;
            }

            --v52;
            if (v56)
            {
              v54 |= (v57 & v19) << v53++;
            }

            else
            {
              v52 = 0;
            }

            v57 *= 2;
            --v53;
            v56 = v52 != 0;
            v55 = v49 != 0;
          }

          while (v52 | v49);
          v58 = 8 * v54;
LABEL_63:
          v59 = (a3 + v19 * v195 + (v37 << 8));
          if (v204)
          {
            v60 = v59[13];
            v218[12] = v59[12];
            v218[13] = v60;
            v61 = v59[15];
            v218[14] = v59[14];
            v218[15] = v61;
            v62 = v59[9];
            v218[8] = v59[8];
            v218[9] = v62;
            v63 = v59[11];
            v218[10] = v59[10];
            v218[11] = v63;
            v64 = v59[5];
            v218[4] = v59[4];
            v218[5] = v64;
            v65 = v59[7];
            v218[6] = v59[6];
            v218[7] = v65;
            v66 = v59[1];
            v218[0] = *v59;
            v218[1] = v66;
            v17 = v59[2];
            v18 = v59[3];
            v59 = v218;
            v218[2] = v17;
            v218[3] = v18;
          }

          v67 = (a4 + v58);
          v68 = (v206 + v41 - a7);
          if (v45 & 1 | (v44 < 0x10u) || v208 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = a1;
            block[5] = v59;
            v216 = v44;
            v217 = v208;
            v212 = v202;
            v213 = v41 - v38;
            block[6] = a4 + v58;
            v210 = v206 + v41 - a7;
            v211 = a11;
            v214 = v201;
            v215 = v43;
            if (v45)
            {
              dispatch_sync(*(*(a1 + 8) + 16552), block);
              goto LABEL_29;
            }

            v71 = *v67;
            if (v71 == 96)
            {
              *&v17 = vdup_lane_s8(*v59, 0);
              v219 = v17;
              v221 = v17;
              v223 = v17;
              v225 = v17;
              v72 = 1;
            }

            else if (v71 == 31)
            {
              v132 = *(v59 + 8);
              v133 = v59[1];
              v134 = *(v59 + 24);
              v135 = vuzp2_s16(*v59, v133);
              v219 = vuzp1_s16(*v59, v133);
              v221 = v135;
              *&v17 = vuzp1_s16(v132, v134);
              *&v18 = vuzp2_s16(v132, v134);
              v223 = v17;
              v225 = v18;
              v72 = 32;
            }

            else if (*v67)
            {
              v72 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 16, v59, v71, *&v17, *&v18);
            }

            else
            {
              v72 = 0;
              v219 = 0;
              v221 = 0;
              v223 = 0;
              v225 = 0;
            }

            v136 = (v59 + v72);
            v137 = v67[1];
            if (v137 == 96)
            {
              *&v17 = vdup_lane_s8(*v136, 0);
              v220 = v17;
              v222 = v17;
              v224 = v17;
              v226 = v17;
              v138 = 1;
            }

            else if (v137 == 31)
            {
              v139 = v136[1];
              v140 = v136[2];
              v141 = v136[3];
              v142 = vuzp2_s16(*v136, v140);
              v220 = vuzp1_s16(*v136, v140);
              v222 = v142;
              *&v17 = vuzp1_s16(v139, v141);
              *&v18 = vuzp2_s16(v139, v141);
              v224 = v17;
              v226 = v18;
              v138 = 32;
            }

            else if (v67[1])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 16, v136, v137, *&v17, *&v18);
            }

            else
            {
              v138 = 0;
              v220 = 0;
              v222 = 0;
              v224 = 0;
              v226 = 0;
            }

            v143 = (v136 + v138);
            v144 = v67[2];
            if (v144 == 96)
            {
              *&v17 = vdup_lane_s8(*v143, 0);
              v227 = v17;
              v229 = v17;
              v231 = v17;
              v233 = v17;
              v145 = 1;
            }

            else if (v144 == 31)
            {
              v146 = v143[1];
              v147 = v143[2];
              v148 = v143[3];
              v149 = vuzp2_s16(*v143, v147);
              v227 = vuzp1_s16(*v143, v147);
              v229 = v149;
              *&v17 = vuzp1_s16(v146, v148);
              *&v18 = vuzp2_s16(v146, v148);
              v231 = v17;
              v233 = v18;
              v145 = 32;
            }

            else if (v67[2])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 16, v143, v144, *&v17, *&v18);
            }

            else
            {
              v145 = 0;
              v227 = 0;
              v229 = 0;
              v231 = 0;
              v233 = 0;
            }

            v150 = (v143 + v145);
            v151 = v67[3];
            if (v151 == 96)
            {
              *&v17 = vdup_lane_s8(*v150, 0);
              v228 = v17;
              v230 = v17;
              v232 = v17;
              v234 = v17;
              v152 = 1;
            }

            else if (v151 == 31)
            {
              v153 = v150[1];
              v154 = v150[2];
              v155 = v150[3];
              v156 = vuzp2_s16(*v150, v154);
              v228 = vuzp1_s16(*v150, v154);
              v230 = v156;
              *&v17 = vuzp1_s16(v153, v155);
              *&v18 = vuzp2_s16(v153, v155);
              v232 = v17;
              v234 = v18;
              v152 = 32;
            }

            else if (v67[3])
            {
              v152 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 16, v150, v151, *&v17, *&v18);
            }

            else
            {
              v152 = 0;
              v228 = 0;
              v230 = 0;
              v232 = 0;
              v234 = 0;
            }

            v157 = (v150 + v152);
            v158 = v67[4];
            if (v158 == 96)
            {
              *&v17 = vdup_lane_s8(*v157, 0);
              v235 = v17;
              v237 = v17;
              v239 = v17;
              v241 = v17;
              v159 = 1;
            }

            else if (v158 == 31)
            {
              v160 = v157[1];
              v161 = v157[2];
              v162 = v157[3];
              v163 = vuzp2_s16(*v157, v161);
              v235 = vuzp1_s16(*v157, v161);
              v237 = v163;
              *&v17 = vuzp1_s16(v160, v162);
              *&v18 = vuzp2_s16(v160, v162);
              v239 = v17;
              v241 = v18;
              v159 = 32;
            }

            else if (v67[4])
            {
              v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 16, v157, v158, *&v17, *&v18);
            }

            else
            {
              v159 = 0;
              v235 = 0;
              v237 = 0;
              v239 = 0;
              v241 = 0;
            }

            v164 = (v157 + v159);
            v165 = v67[5];
            if (v165 == 96)
            {
              *&v17 = vdup_lane_s8(*v164, 0);
              v236 = v17;
              v238 = v17;
              v240 = v17;
              v242 = v17;
              v166 = 1;
            }

            else if (v165 == 31)
            {
              v167 = v164[1];
              v168 = v164[2];
              v169 = v164[3];
              v170 = vuzp2_s16(*v164, v168);
              v236 = vuzp1_s16(*v164, v168);
              v238 = v170;
              *&v17 = vuzp1_s16(v167, v169);
              *&v18 = vuzp2_s16(v167, v169);
              v240 = v17;
              v242 = v18;
              v166 = 32;
            }

            else if (v67[5])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 16, v164, v165, *&v17, *&v18);
            }

            else
            {
              v166 = 0;
              v236 = 0;
              v238 = 0;
              v240 = 0;
              v242 = 0;
            }

            v171 = (v164 + v166);
            v172 = v67[6];
            if (v172 == 96)
            {
              *&v17 = vdup_lane_s8(*v171, 0);
              v243 = v17;
              v245 = v17;
              v247 = v17;
              v249 = v17;
              v173 = 1;
            }

            else if (v172 == 31)
            {
              v174 = v171[1];
              v175 = v171[2];
              v176 = v171[3];
              v177 = vuzp2_s16(*v171, v175);
              v243 = vuzp1_s16(*v171, v175);
              v245 = v177;
              *&v17 = vuzp1_s16(v174, v176);
              *&v18 = vuzp2_s16(v174, v176);
              v247 = v17;
              v249 = v18;
              v173 = 32;
            }

            else if (v67[6])
            {
              v173 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 16, v171, v172, *&v17, *&v18);
            }

            else
            {
              v173 = 0;
              v243 = 0;
              v245 = 0;
              v247 = 0;
              v249 = 0;
            }

            v178 = (v171 + v173);
            v179 = v67[7];
            if (v179 == 96)
            {
              *&v17 = vdup_lane_s8(*v178, 0);
              v244 = v17;
              v246 = v17;
              v248 = v17;
              v250 = v17;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else if (v179 == 31)
            {
              v181 = v178[1];
              v182 = v178[2];
              v183 = v178[3];
              v184 = vuzp2_s16(*v178, v182);
              v244 = vuzp1_s16(*v178, v182);
              v246 = v184;
              *&v17 = vuzp1_s16(v181, v183);
              *&v18 = vuzp2_s16(v181, v183);
              v248 = v17;
              v250 = v18;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else if (v67[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 16, v178, v179, *&v17, *&v18);
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v244 = 0;
              v246 = 0;
              v248 = 0;
              v250 = 0;
              v180 = v214;
              if (!v214)
              {
                goto LABEL_29;
              }
            }

            if (v215)
            {
              v185 = 0;
              v186 = &v219 + 16 * v212 + v213;
              v187 = 1;
              do
              {
                if (v187)
                {
                  v188 = 0;
                  v189 = v210 + v211 * v185;
                  do
                  {
                    *(v189 + v188) = v186[v188];
                    v187 = v215;
                    ++v188;
                  }

                  while (v215 > v188);
                  v180 = v214;
                }

                ++v185;
                v186 += 16;
              }

              while (v185 < v180);
            }
          }

          else
          {
            v69 = *v67;
            if (v69 == 96)
            {
              *&v17 = vdup_lane_s8(*v59, 0);
              *v68 = v17;
              *(v68 + a11) = v17;
              *(v68 + 2 * a11) = v17;
              *(v68 + 3 * a11) = v17;
              v70 = 1;
            }

            else if (v69 == 31)
            {
              v73 = *v59;
              *&v18 = *(v59 + 1);
              v74 = v59[1];
              v75 = *(v59 + 24);
              *v68 = vuzp1_s16(*v59, v74);
              *(v68 + a11) = vuzp2_s16(v73, v74);
              v76 = (v68 + v29);
              *v76 = vuzp1_s16(*&v18, v75);
              *&v17 = vuzp2_s16(*&v18, v75);
              *(v76 + a11) = v17;
              v70 = 32;
            }

            else if (*v67)
            {
              v70 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v206 + v41 - a7), a11, v59, v69, *&v17, *&v18);
            }

            else
            {
              v70 = 0;
              *v68 = 0;
              *(v68 + a11) = 0;
              *(v68 + 2 * a11) = 0;
              *(v68 + 3 * a11) = 0;
            }

            v77 = (v59 + v70);
            v78 = v68 + 1;
            v79 = v67[1];
            if (v79 == 96)
            {
              *&v17 = vdup_lane_s8(*v77, 0);
              *v78 = v17;
              *(v78 + a11) = v17;
              *(v78 + 2 * a11) = v17;
              *(v78 + 3 * a11) = v17;
              v80 = 1;
            }

            else if (v79 == 31)
            {
              v81 = *v77;
              *&v18 = v77[1];
              v82 = v77[2];
              v83 = v77[3];
              *v78 = vuzp1_s16(*v77, v82);
              *(v78 + a11) = vuzp2_s16(v81, v82);
              v84 = (v78 + v29);
              *v84 = vuzp1_s16(*&v18, v83);
              *&v17 = vuzp2_s16(*&v18, v83);
              *(v84 + a11) = v17;
              v80 = 32;
            }

            else if (v67[1])
            {
              v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v78, a11, v77, v79, *&v17, *&v18);
            }

            else
            {
              v80 = 0;
              *v78 = 0;
              *(v78 + a11) = 0;
              *(v78 + 2 * a11) = 0;
              *(v78 + 3 * a11) = 0;
            }

            v85 = (v77 + v80);
            v86 = (v68 + v199);
            v87 = v67[2];
            if (v87 == 96)
            {
              *&v17 = vdup_lane_s8(*v85, 0);
              *v86 = v17;
              *(v86 + a11) = v17;
              *(v86 + 2 * a11) = v17;
              *(v86 + 3 * a11) = v17;
              v88 = 1;
            }

            else if (v87 == 31)
            {
              v89 = *v85;
              *&v18 = v85[1];
              v90 = v85[2];
              v91 = v85[3];
              *v86 = vuzp1_s16(*v85, v90);
              *(v86 + a11) = vuzp2_s16(v89, v90);
              v92 = (v86 + v29);
              *v92 = vuzp1_s16(*&v18, v91);
              *&v17 = vuzp2_s16(*&v18, v91);
              *(v92 + a11) = v17;
              v88 = 32;
            }

            else if (v67[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v68 + v199), a11, v85, v87, *&v17, *&v18);
            }

            else
            {
              v88 = 0;
              *v86 = 0;
              *(v86 + a11) = 0;
              *(v86 + 2 * a11) = 0;
              *(v86 + 3 * a11) = 0;
            }

            v93 = (v85 + v88);
            v94 = v86 + 1;
            v95 = v67[3];
            if (v95 == 96)
            {
              *&v17 = vdup_lane_s8(*v93, 0);
              *v94 = v17;
              *(v94 + a11) = v17;
              *(v94 + 2 * a11) = v17;
              *(v94 + 3 * a11) = v17;
              v96 = 1;
            }

            else if (v95 == 31)
            {
              v97 = *v93;
              *&v18 = v93[1];
              v98 = v93[2];
              v99 = v93[3];
              *v94 = vuzp1_s16(*v93, v98);
              *(v94 + a11) = vuzp2_s16(v97, v98);
              v100 = (v94 + v29);
              *v100 = vuzp1_s16(*&v18, v99);
              *&v17 = vuzp2_s16(*&v18, v99);
              *(v100 + a11) = v17;
              v96 = 32;
            }

            else if (v67[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v94, a11, v93, v95, *&v17, *&v18);
            }

            else
            {
              v96 = 0;
              *v94 = 0;
              *(v94 + a11) = 0;
              *(v94 + 2 * a11) = 0;
              *(v94 + 3 * a11) = 0;
            }

            v101 = (v93 + v96);
            v102 = &v68[v198];
            v103 = v67[4];
            if (v103 == 96)
            {
              *&v17 = vdup_lane_s8(*v101, 0);
              *v102 = v17;
              *(v102 + a11) = v17;
              *(v102 + 2 * a11) = v17;
              *(v102 + 3 * a11) = v17;
              v104 = 1;
            }

            else if (v103 == 31)
            {
              v105 = *v101;
              *&v18 = v101[1];
              v106 = v101[2];
              v107 = v101[3];
              *v102 = vuzp1_s16(*v101, v106);
              *(v102 + a11) = vuzp2_s16(v105, v106);
              v108 = (v102 + v29);
              *v108 = vuzp1_s16(*&v18, v107);
              *&v17 = vuzp2_s16(*&v18, v107);
              *(v108 + a11) = v17;
              v104 = 32;
            }

            else if (v67[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v68[v198], a11, v101, v103, *&v17, *&v18);
            }

            else
            {
              v104 = 0;
              *v102 = 0;
              *(v102 + a11) = 0;
              *(v102 + 2 * a11) = 0;
              *(v102 + 3 * a11) = 0;
            }

            v109 = (v101 + v104);
            v110 = v102 + 1;
            v111 = v67[5];
            if (v111 == 96)
            {
              *&v17 = vdup_lane_s8(*v109, 0);
              *v110 = v17;
              *(v110 + a11) = v17;
              *(v110 + 2 * a11) = v17;
              *(v110 + 3 * a11) = v17;
              v112 = 1;
            }

            else if (v111 == 31)
            {
              v113 = *v109;
              *&v18 = v109[1];
              v114 = v109[2];
              v115 = v109[3];
              *v110 = vuzp1_s16(*v109, v114);
              *(v110 + a11) = vuzp2_s16(v113, v114);
              v116 = (v110 + v29);
              *v116 = vuzp1_s16(*&v18, v115);
              *&v17 = vuzp2_s16(*&v18, v115);
              *(v116 + a11) = v17;
              v112 = 32;
            }

            else if (v67[5])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v110, a11, v109, v111, *&v17, *&v18);
            }

            else
            {
              v112 = 0;
              *v110 = 0;
              *(v110 + a11) = 0;
              *(v110 + 2 * a11) = 0;
              *(v110 + 3 * a11) = 0;
            }

            v117 = (v109 + v112);
            v118 = (v68 + 12 * a11);
            v119 = v67[6];
            if (v119 == 96)
            {
              *&v17 = vdup_lane_s8(*v117, 0);
              *v118 = v17;
              *(v118 + a11) = v17;
              *(v118 + 2 * a11) = v17;
              *(v118 + 3 * a11) = v17;
              v120 = 1;
            }

            else if (v119 == 31)
            {
              v121 = *v117;
              *&v18 = v117[1];
              v122 = v117[2];
              v123 = v117[3];
              *v118 = vuzp1_s16(*v117, v122);
              *(v118 + a11) = vuzp2_s16(v121, v122);
              v124 = (v118 + v29);
              *v124 = vuzp1_s16(*&v18, v123);
              *&v17 = vuzp2_s16(*&v18, v123);
              *(v124 + a11) = v17;
              v120 = 32;
            }

            else if (v67[6])
            {
              v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v118, a11, v117, v119, *&v17, *&v18);
            }

            else
            {
              v120 = 0;
              *v118 = 0;
              *(v118 + a11) = 0;
              *(v118 + 2 * a11) = 0;
              *(v118 + 3 * a11) = 0;
            }

            v125 = (v117 + v120);
            v126 = v118 + 1;
            v127 = v67[7];
            if (v127 == 96)
            {
              *&v17 = vdup_lane_s8(*v125, 0);
              *v126 = v17;
              *(v126 + a11) = v17;
              *(v126 + 2 * a11) = v17;
              *(v126 + 3 * a11) = v17;
              v27 = (a5 - 1) >> 4;
            }

            else
            {
              v27 = (a5 - 1) >> 4;
              if (v127 == 31)
              {
                v128 = *v125;
                *&v18 = v125[1];
                v129 = v125[2];
                v130 = v125[3];
                *v126 = vuzp1_s16(*v125, v129);
                *(v126 + a11) = vuzp2_s16(v128, v129);
                v131 = (v126 + v29);
                *v131 = vuzp1_s16(*&v18, v130);
                *&v17 = vuzp2_s16(*&v18, v130);
                *(v131 + a11) = v17;
              }

              else if (v67[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v126, a11, v125, v127, *&v17, *&v18);
              }

              else
              {
                *v126 = 0;
                *(v126 + a11) = 0;
                *(v126 + 2 * a11) = 0;
                *(v126 + 3 * a11) = 0;
              }
            }
          }

LABEL_29:
          v37 = v39;
        }

        while (v39 != (v203 >> 4) + 1);
        ++v19;
      }

      while (v19 != v190);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v161[7] = *MEMORY[0x29EDCA608];
  v126 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v20 = a8 >> 4;
  v125 = a8 + a10 - 1;
  v21 = v125 >> 4;
  v137 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v140 = v26;
  if (v20 <= v21)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 4 <= v139 >> 4)
    {
      v124 = (a6 - 1) >> 4;
      v132 = (a5 - 1) & 0xF;
      v122 = ((a6 - 1) & 0xF) + 1;
      v123 = (a6 - 1) & 0xF;
      v131 = 4 * a11;
      v130 = a11;
      v129 = 12 * a11;
      v138 = a7;
      v120 = v21 + 1;
      v121 = a7 >> 4;
      v27 = (a5 - 1) >> 4;
      v133 = v27;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= a8)
        {
          v29 = a8;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v125 < v28)
        {
          v28 = v125;
        }

        v136 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v123;
        v135 = v31;
        v33 = v31 != 16;
        v34 = v122;
        if (v20 != v124)
        {
          v34 = 16;
        }

        v142 = v34;
        if (v20 != v124)
        {
          v32 = v33;
        }

        v134 = v32;
        v141 = a2 + (v29 - a8) * a11;
        v35 = v121;
        v36 = v137;
        do
        {
          v62 = 16 * v35;
          v143 = v35 + 1;
          v63 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v64 = a7;
          }

          else
          {
            v64 = 16 * v35;
          }

          if (v139 < v63)
          {
            v63 = v139;
          }

          v65 = v63 - v64;
          v66 = v63 - v64 + 1;
          if (v35 == v27)
          {
            v67 = v132 + 1;
          }

          else
          {
            v67 = 16;
          }

          v68 = 1;
          if (16 * v20 >= a8 && v62 >= v138)
          {
            v69 = v65 != v132;
            if (v35 != v27)
            {
              v69 = v66 != 16;
            }

            v68 = v69 || v134;
          }

          v70 = *(v36 + 128) >> (*(v36 + 144) + a12);
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

          v73 = *(v36 + 132) >> (*(v36 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_62:
              v81 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_62;
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
              v77 |= (v80 & v35) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v20) << v76++;
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
LABEL_63:
          v82 = (a3 + v20 * v126 + 192 * v35);
          if (v140)
          {
            v83 = v82[13];
            v153[12] = v82[12];
            v153[13] = v83;
            v84 = v82[15];
            v153[14] = v82[14];
            v153[15] = v84;
            v85 = v82[9];
            v153[8] = v82[8];
            v153[9] = v85;
            v86 = v82[11];
            v153[10] = v82[10];
            v153[11] = v86;
            v87 = v82[5];
            v153[4] = v82[4];
            v153[5] = v87;
            v88 = v82[7];
            v153[6] = v82[6];
            v153[7] = v88;
            v89 = v82[1];
            v153[0] = *v82;
            v153[1] = v89;
            v18 = v82[2];
            v19 = v82[3];
            v82 = v153;
            v153[2] = v18;
            v153[3] = v19;
          }

          v90 = (a4 + v81);
          v91 = (v141 + (v64 - a7));
          if (v68 & 1 | (v67 < 0x10u) || v142 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v36;
            block[5] = v82;
            v151 = v67;
            v152 = v142;
            v147 = v136;
            v148 = v64 - v62;
            block[6] = a4 + v81;
            v145 = v141 + (v64 - a7);
            v146 = a11;
            v149 = v135;
            v150 = v66;
            if (v68)
            {
              dispatch_sync(*(*(v36 + 8) + 16552), block);
            }

            else
            {
              v92 = *(*(v36 + 208) + 52);
              v93 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v154, 16, v82, *v90, v92, *&v18, *&v19);
              v96 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v155, 16, v93, v90[1], v92, v94, v95);
              v99 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v156, 16, v96, v90[2], v92, v97, v98);
              v102 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v157, 16, v99, v90[3], v92, v100, v101);
              v105 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v158, 16, v102, v90[4], v92, v103, v104);
              v108 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v159, 16, v105, v90[5], v92, v106, v107);
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v160, 16, v108, v90[6], v92, v109, v110);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v161, 16, v108 + v111, v90[7], v92, v112, v113);
              v114 = v149;
              if (v149 && v150)
              {
                v115 = 0;
                v116 = &v154 + 16 * v147 + v148;
                v117 = 1;
                do
                {
                  if (v117)
                  {
                    v118 = 0;
                    v119 = v145 + v146 * v115;
                    do
                    {
                      *(v119 + v118) = v116[v118];
                      v117 = v150;
                      ++v118;
                    }

                    while (v150 > v118);
                    v114 = v149;
                  }

                  ++v115;
                  v116 += 16;
                }

                while (v115 < v114);
              }
            }
          }

          else
          {
            v37 = *(*(v36 + 208) + 52);
            v38 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v141 + (v64 - a7)), a11, v82, *v90, v37, *&v18, *&v19);
            v41 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(v91 + 1, a11, v38, v90[1], v37, v39, v40);
            v42 = a4;
            v43 = a7;
            v44 = a8;
            v47 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v91 + v131), a11, v41, v90[2], v37, v45, v46);
            v50 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v91 + v131 + 8), a11, v47, v90[3], v37, v48, v49);
            v53 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v91[v130], a11, v50, v90[4], v37, v51, v52);
            v56 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v91[v130 + 1], a11, v53, v90[5], v37, v54, v55);
            v59 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v91 + v129), a11, v56, v90[6], v37, v57, v58);
            a8 = v44;
            a7 = v43;
            a4 = v42;
            v36 = v137;
            v27 = v133;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock((v91 + v129 + 8), a11, v59, v90[7], v37, v60, v61);
          }

          v35 = v143;
        }

        while (v143 != (v139 >> 4) + 1);
        ++v20;
      }

      while (v20 != v120);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v161[7] = *MEMORY[0x29EDCA608];
  v126 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v20 = a8 >> 4;
  v125 = a8 + a10 - 1;
  v21 = v125 >> 4;
  v137 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v140 = v26;
  if (v20 <= v21)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 4 <= v139 >> 4)
    {
      v124 = (a6 - 1) >> 4;
      v132 = (a5 - 1) & 0xF;
      v122 = ((a6 - 1) & 0xF) + 1;
      v123 = (a6 - 1) & 0xF;
      v131 = 4 * a11;
      v130 = a11;
      v129 = 12 * a11;
      v138 = a7;
      v120 = v21 + 1;
      v121 = a7 >> 4;
      v27 = (a5 - 1) >> 4;
      v133 = v27;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= a8)
        {
          v29 = a8;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v125 < v28)
        {
          v28 = v125;
        }

        v136 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v123;
        v135 = v31;
        v33 = v31 != 16;
        v34 = v122;
        if (v20 != v124)
        {
          v34 = 16;
        }

        v142 = v34;
        if (v20 != v124)
        {
          v32 = v33;
        }

        v134 = v32;
        v141 = a2 + (v29 - a8) * a11;
        v35 = v121;
        v36 = v137;
        do
        {
          v62 = 16 * v35;
          v143 = v35 + 1;
          v63 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v64 = a7;
          }

          else
          {
            v64 = 16 * v35;
          }

          if (v139 < v63)
          {
            v63 = v139;
          }

          v65 = v63 - v64;
          v66 = v63 - v64 + 1;
          if (v35 == v27)
          {
            v67 = v132 + 1;
          }

          else
          {
            v67 = 16;
          }

          v68 = 1;
          if (16 * v20 >= a8 && v62 >= v138)
          {
            v69 = v65 != v132;
            if (v35 != v27)
            {
              v69 = v66 != 16;
            }

            v68 = v69 || v134;
          }

          v70 = *(v36 + 128) >> (*(v36 + 144) + a12);
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

          v73 = *(v36 + 132) >> (*(v36 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_62:
              v81 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_62;
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
              v77 |= (v80 & v35) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v20) << v76++;
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
LABEL_63:
          v82 = (a3 + v20 * v126 + 160 * v35);
          if (v140)
          {
            v83 = v82[13];
            v153[12] = v82[12];
            v153[13] = v83;
            v84 = v82[15];
            v153[14] = v82[14];
            v153[15] = v84;
            v85 = v82[9];
            v153[8] = v82[8];
            v153[9] = v85;
            v86 = v82[11];
            v153[10] = v82[10];
            v153[11] = v86;
            v87 = v82[5];
            v153[4] = v82[4];
            v153[5] = v87;
            v88 = v82[7];
            v153[6] = v82[6];
            v153[7] = v88;
            v89 = v82[1];
            v153[0] = *v82;
            v153[1] = v89;
            v18 = v82[2];
            v19 = v82[3];
            v82 = v153;
            v153[2] = v18;
            v153[3] = v19;
          }

          v90 = (a4 + v81);
          v91 = (v141 + (v64 - a7));
          if (v68 & 1 | (v67 < 0x10u) || v142 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v36;
            block[5] = v82;
            v151 = v67;
            v152 = v142;
            v147 = v136;
            v148 = v64 - v62;
            block[6] = a4 + v81;
            v145 = v141 + (v64 - a7);
            v146 = a11;
            v149 = v135;
            v150 = v66;
            if (v68)
            {
              dispatch_sync(*(*(v36 + 8) + 16552), block);
            }

            else
            {
              v92 = *(*(v36 + 208) + 52);
              v93 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v154, 16, v82, *v90, v92, *&v18, *&v19);
              v96 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v155, 16, v93, v90[1], v92, v94, v95);
              v99 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v156, 16, v96, v90[2], v92, v97, v98);
              v102 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v157, 16, v99, v90[3], v92, v100, v101);
              v105 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v158, 16, v102, v90[4], v92, v103, v104);
              v108 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v159, 16, v105, v90[5], v92, v106, v107);
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v160, 16, v108, v90[6], v92, v109, v110);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v161, 16, v108 + v111, v90[7], v92, v112, v113);
              v114 = v149;
              if (v149 && v150)
              {
                v115 = 0;
                v116 = &v154 + 16 * v147 + v148;
                v117 = 1;
                do
                {
                  if (v117)
                  {
                    v118 = 0;
                    v119 = v145 + v146 * v115;
                    do
                    {
                      *(v119 + v118) = v116[v118];
                      v117 = v150;
                      ++v118;
                    }

                    while (v150 > v118);
                    v114 = v149;
                  }

                  ++v115;
                  v116 += 16;
                }

                while (v115 < v114);
              }
            }
          }

          else
          {
            v37 = *(*(v36 + 208) + 52);
            v38 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v141 + (v64 - a7)), a11, v82, *v90, v37, *&v18, *&v19);
            v41 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(v91 + 1, a11, v38, v90[1], v37, v39, v40);
            v42 = a4;
            v43 = a7;
            v44 = a8;
            v47 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v91 + v131), a11, v41, v90[2], v37, v45, v46);
            v50 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v91 + v131 + 8), a11, v47, v90[3], v37, v48, v49);
            v53 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v91[v130], a11, v50, v90[4], v37, v51, v52);
            v56 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v91[v130 + 1], a11, v53, v90[5], v37, v54, v55);
            v59 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v91 + v129), a11, v56, v90[6], v37, v57, v58);
            a8 = v44;
            a7 = v43;
            a4 = v42;
            v36 = v137;
            v27 = v133;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock((v91 + v129 + 8), a11, v59, v90[7], v37, v60, v61);
          }

          v35 = v143;
        }

        while (v143 != (v139 >> 4) + 1);
        ++v20;
      }

      while (v20 != v120);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v161[7] = *MEMORY[0x29EDCA608];
  v126 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v20 = a8 >> 4;
  v125 = a8 + a10 - 1;
  v21 = v125 >> 4;
  v137 = a1;
  if (*(a1 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v140 = v26;
  if (v20 <= v21)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 4 <= v139 >> 4)
    {
      v124 = (a6 - 1) >> 4;
      v132 = (a5 - 1) & 0xF;
      v122 = ((a6 - 1) & 0xF) + 1;
      v123 = (a6 - 1) & 0xF;
      v131 = 4 * a11;
      v130 = a11;
      v129 = 12 * a11;
      v138 = a7;
      v120 = v21 + 1;
      v121 = a7 >> 4;
      v27 = (a5 - 1) >> 4;
      v133 = v27;
      do
      {
        v28 = (16 * v20) | 0xF;
        if (16 * v20 <= a8)
        {
          v29 = a8;
        }

        else
        {
          v29 = 16 * v20;
        }

        if (v125 < v28)
        {
          v28 = v125;
        }

        v136 = v29 - 16 * v20;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v123;
        v135 = v31;
        v33 = v31 != 16;
        v34 = v122;
        if (v20 != v124)
        {
          v34 = 16;
        }

        v142 = v34;
        if (v20 != v124)
        {
          v32 = v33;
        }

        v134 = v32;
        v141 = a2 + (v29 - a8) * a11;
        v35 = v121;
        v36 = v137;
        do
        {
          v62 = 16 * v35;
          v143 = v35 + 1;
          v63 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v64 = a7;
          }

          else
          {
            v64 = 16 * v35;
          }

          if (v139 < v63)
          {
            v63 = v139;
          }

          v65 = v63 - v64;
          v66 = v63 - v64 + 1;
          if (v35 == v27)
          {
            v67 = v132 + 1;
          }

          else
          {
            v67 = 16;
          }

          v68 = 1;
          if (16 * v20 >= a8 && v62 >= v138)
          {
            v69 = v65 != v132;
            if (v35 != v27)
            {
              v69 = v66 != 16;
            }

            v68 = v69 || v134;
          }

          v70 = *(v36 + 128) >> (*(v36 + 144) + a12);
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

          v73 = *(v36 + 132) >> (*(v36 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_62:
              v81 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_62;
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
              v77 |= (v80 & v35) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v20) << v76++;
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
LABEL_63:
          v82 = (a3 + v20 * v126 + (v35 << 7));
          if (v140)
          {
            v83 = v82[13];
            v153[12] = v82[12];
            v153[13] = v83;
            v84 = v82[15];
            v153[14] = v82[14];
            v153[15] = v84;
            v85 = v82[9];
            v153[8] = v82[8];
            v153[9] = v85;
            v86 = v82[11];
            v153[10] = v82[10];
            v153[11] = v86;
            v87 = v82[5];
            v153[4] = v82[4];
            v153[5] = v87;
            v88 = v82[7];
            v153[6] = v82[6];
            v153[7] = v88;
            v89 = v82[1];
            v153[0] = *v82;
            v153[1] = v89;
            v18 = v82[2];
            v19 = v82[3];
            v82 = v153;
            v153[2] = v18;
            v153[3] = v19;
          }

          v90 = (a4 + v81);
          v91 = (v141 + (v64 - a7));
          if (v68 & 1 | (v67 < 0x10u) || v142 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v36;
            block[5] = v82;
            v151 = v67;
            v152 = v142;
            v147 = v136;
            v148 = v64 - v62;
            block[6] = a4 + v81;
            v145 = v141 + (v64 - a7);
            v146 = a11;
            v149 = v135;
            v150 = v66;
            if (v68)
            {
              dispatch_sync(*(*(v36 + 8) + 16552), block);
            }

            else
            {
              v92 = *(*(v36 + 208) + 52);
              v93 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v154, 16, v82, *v90, v92, *&v18, *&v19);
              v96 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v155, 16, v93, v90[1], v92, v94, v95);
              v99 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v156, 16, v96, v90[2], v92, v97, v98);
              v102 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v157, 16, v99, v90[3], v92, v100, v101);
              v105 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v158, 16, v102, v90[4], v92, v103, v104);
              v108 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v159, 16, v105, v90[5], v92, v106, v107);
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v160, 16, v108, v90[6], v92, v109, v110);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v161, 16, v108 + v111, v90[7], v92, v112, v113);
              v114 = v149;
              if (v149 && v150)
              {
                v115 = 0;
                v116 = &v154 + 16 * v147 + v148;
                v117 = 1;
                do
                {
                  if (v117)
                  {
                    v118 = 0;
                    v119 = v145 + v146 * v115;
                    do
                    {
                      *(v119 + v118) = v116[v118];
                      v117 = v150;
                      ++v118;
                    }

                    while (v150 > v118);
                    v114 = v149;
                  }

                  ++v115;
                  v116 += 16;
                }

                while (v115 < v114);
              }
            }
          }

          else
          {
            v37 = *(*(v36 + 208) + 52);
            v38 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v141 + (v64 - a7)), a11, v82, *v90, v37, *&v18, *&v19);
            v41 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(v91 + 1, a11, v38, v90[1], v37, v39, v40);
            v42 = a4;
            v43 = a7;
            v44 = a8;
            v47 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v91 + v131), a11, v41, v90[2], v37, v45, v46);
            v50 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v91 + v131 + 8), a11, v47, v90[3], v37, v48, v49);
            v53 = v50 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v91[v130], a11, v50, v90[4], v37, v51, v52);
            v56 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v91[v130 + 1], a11, v53, v90[5], v37, v54, v55);
            v59 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v91 + v129), a11, v56, v90[6], v37, v57, v58);
            a8 = v44;
            a7 = v43;
            a4 = v42;
            v36 = v137;
            v27 = v133;
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock((v91 + v129 + 8), a11, v59, v90[7], v37, v60, v61);
          }

          v35 = v143;
        }

        while (v143 != (v139 >> 4) + 1);
        ++v20;
      }

      while (v20 != v120);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v16 = a1;
  v259 = *MEMORY[0x29EDCA608];
  v196 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v20 = a8 >> 4;
  v195 = a8 + a10 - 1;
  v21 = v195 >> 4;
  if (*(v16 + 168))
  {
    v22 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v209 = v26;
  if (v20 <= v21)
  {
    v208 = a7 + a9 - 1;
    if (a7 >> 4 <= v208 >> 4)
    {
      v215 = (a5 - 1) >> 4;
      v194 = (a6 - 1) >> 4;
      v202 = (a5 - 1) & 0xF;
      v192 = ((a6 - 1) & 0xF) + 1;
      v193 = (a6 - 1) & 0xF;
      v201 = 4 * a11;
      v200 = 8 * a11;
      v206 = a7;
      v190 = v21 + 1;
      v191 = a7 >> 4;
      v213 = v16;
      v207 = a7;
      v199 = 2 * a11;
      do
      {
        v27 = (16 * v20) | 0xF;
        if (16 * v20 <= v212)
        {
          v28 = v212;
        }

        else
        {
          v28 = 16 * v20;
        }

        if (v195 < v27)
        {
          v27 = v195;
        }

        v205 = v28 - 16 * v20;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v193;
        v204 = v30;
        v32 = v30 != 16;
        v33 = v192;
        if (v20 != v194)
        {
          v33 = 16;
        }

        v214 = v33;
        if (v20 != v194)
        {
          v31 = v32;
        }

        v203 = v31;
        v211 = a2 + (v28 - v212) * a11;
        v34 = v191;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v208 < v37)
          {
            v37 = v208;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v215)
          {
            v41 = v202 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (16 * v20 >= v212 && v36 >= v206)
          {
            v43 = v39 != v202;
            if (v34 != v215)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v203;
          }

          v44 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v44 <= 1)
          {
            v44 = 1;
          }

          v45 = v44 + 15;
          if (v45 < 0x20)
          {
            v46 = 0;
          }

          else
          {
            v46 = 32 - __clz(~(-1 << -__clz((v45 >> 4) - 1)));
          }

          v47 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v47 + 15;
          if (v48 < 0x20)
          {
            v49 = 0;
            if (!v46)
            {
LABEL_63:
              v55 = 0;
              goto LABEL_64;
            }
          }

          else
          {
            v49 = 32 - __clz(~(-1 << -__clz((v48 >> 4) - 1)));
            if (!(v49 | v46))
            {
              goto LABEL_63;
            }
          }

          v50 = 0;
          v51 = 0;
          v52 = v46 != 0;
          v53 = v49 != 0;
          v54 = 1;
          do
          {
            --v46;
            if (v52)
            {
              v51 |= (v54 & v34) << v50++;
            }

            else
            {
              v46 = 0;
            }

            --v49;
            if (v53)
            {
              v51 |= (v54 & v20) << v50++;
            }

            else
            {
              v49 = 0;
            }

            v54 *= 2;
            --v50;
            v53 = v49 != 0;
            v52 = v46 != 0;
          }

          while (v49 | v46);
          v55 = 8 * v51;
LABEL_64:
          v56 = (a3 + v20 * v196 + (v34 << 9));
          v216 = v34 + 1;
          if (v209)
          {
            memcpy(__dst, v56, sizeof(__dst));
            v56 = __dst;
          }

          v57 = (a4 + v55);
          v58 = (v211 + 2 * (v38 - a7));
          if (!(v42 & 1 | (v41 < 0x10u)) && v214 > 0xF)
          {
            v59 = *v57;
            if (v59 == 63)
            {
              v68 = *v56;
              v18 = v56[1];
              v19 = v56[2];
              v69 = v56[3];
              *v58 = vuzp1q_s32(*v56, v19);
              *(v58 + a11) = vuzp2q_s32(v68, v19);
              v61 = 3 * a11;
              v60 = 2 * a11;
              v70 = (v58 + v199);
              *v70 = vuzp1q_s32(v18, v69);
              v17 = vuzp2q_s32(v18, v69);
              *(v70 + a11) = v17;
              v62 = 64;
            }

            else
            {
              v60 = 2 * a11;
              if (v59 == 1)
              {
                v17 = vld1q_dup_s16(v56->i16);
                *v58 = v17;
                *(v58 + a11) = v17;
                *(v58 + 2 * a11) = v17;
                v61 = 3 * a11;
                *(v58 + 3 * a11) = v17;
                v62 = 2;
              }

              else
              {
                v61 = 3 * a11;
                if (*v57)
                {
                  v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v58, a11, v56, v59, *v17.i8, *v18.i64, *v19.i8);
                }

                else
                {
                  v62 = 0;
                  v58->i64[0] = 0;
                  v58->i64[1] = 0;
                  v63 = (v58->i64 + a11);
                  *v63 = 0;
                  v63[1] = 0;
                  v64 = (v58->i64 + v199);
                  *v64 = 0;
                  v64[1] = 0;
                  v65 = (v58->i64 + 3 * a11);
                  *v65 = 0;
                  v65[1] = 0;
                }
              }
            }

            v71 = v56->i64 + v62;
            v72 = v58 + 1;
            v73 = v57[1];
            if (v73 == 63)
            {
              v78 = *v71;
              v18 = *(v71 + 16);
              v19 = *(v71 + 32);
              v79 = *(v71 + 48);
              *v72 = vuzp1q_s32(*v71, v19);
              *(v72 + a11) = vuzp2q_s32(v78, v19);
              v80 = (v72 + v60);
              *v80 = vuzp1q_s32(v18, v79);
              v17 = vuzp2q_s32(v18, v79);
              *(v80 + a11) = v17;
              v74 = 64;
            }

            else if (v73 == 1)
            {
              v17 = vld1q_dup_s16(v71);
              *v72 = v17;
              *(v72 + a11) = v17;
              *(v72 + v60) = v17;
              *(v72 + v61) = v17;
              v74 = 2;
            }

            else if (v57[1])
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v71, v73, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v74 = 0;
              v72->i64[0] = 0;
              v58[1].i64[1] = 0;
              v75 = (v72->i64 + a11);
              *v75 = 0;
              v75[1] = 0;
              v76 = (v72->i64 + v60);
              *v76 = 0;
              v76[1] = 0;
              v77 = (v72->i64 + v61);
              *v77 = 0;
              v77[1] = 0;
            }

            v81 = v71 + v74;
            v82 = (v58 + v201);
            v83 = v57[2];
            if (v83 == 63)
            {
              v88 = *v81;
              v18 = *(v81 + 16);
              v19 = *(v81 + 32);
              v89 = *(v81 + 48);
              *v82 = vuzp1q_s32(*v81, v19);
              *(v82 + a11) = vuzp2q_s32(v88, v19);
              v90 = (v82 + v60);
              *v90 = vuzp1q_s32(v18, v89);
              v17 = vuzp2q_s32(v18, v89);
              *(v90 + a11) = v17;
              v84 = 64;
            }

            else if (v83 == 1)
            {
              v17 = vld1q_dup_s16(v81);
              *v82 = v17;
              *(v82 + a11) = v17;
              *(v82 + v60) = v17;
              *(v82 + v61) = v17;
              v84 = 2;
            }

            else if (v57[2])
            {
              v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v58 + v201), a11, v81, v83, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v84 = 0;
              v82->i64[0] = 0;
              v82->i64[1] = 0;
              v85 = (v82->i64 + a11);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v82->i64 + v60);
              *v86 = 0;
              v86[1] = 0;
              v87 = (v82->i64 + v61);
              *v87 = 0;
              v87[1] = 0;
            }

            v91 = v81 + v84;
            v92 = v82 + 1;
            v93 = v57[3];
            if (v93 == 63)
            {
              v98 = *v91;
              v18 = *(v91 + 16);
              v19 = *(v91 + 32);
              v99 = *(v91 + 48);
              *v92 = vuzp1q_s32(*v91, v19);
              *(v92 + a11) = vuzp2q_s32(v98, v19);
              v100 = (v92 + v60);
              *v100 = vuzp1q_s32(v18, v99);
              v17 = vuzp2q_s32(v18, v99);
              *(v100 + a11) = v17;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v17 = vld1q_dup_s16(v91);
              *v92 = v17;
              *(v92 + a11) = v17;
              *(v92 + v60) = v17;
              *(v92 + v61) = v17;
              v94 = 2;
            }

            else if (v57[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v91, v93, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v94 = 0;
              v92->i64[0] = 0;
              v82[1].i64[1] = 0;
              v95 = (v92->i64 + a11);
              *v95 = 0;
              v95[1] = 0;
              v96 = (v92->i64 + v60);
              *v96 = 0;
              v96[1] = 0;
              v97 = (v92->i64 + v61);
              *v97 = 0;
              v97[1] = 0;
            }

            v101 = v91 + v94;
            v102 = (v58 + v200);
            v103 = v57[4];
            if (v103 == 63)
            {
              v108 = *v101;
              v18 = *(v101 + 16);
              v19 = *(v101 + 32);
              v109 = *(v101 + 48);
              *v102 = vuzp1q_s32(*v101, v19);
              *(v102 + a11) = vuzp2q_s32(v108, v19);
              v110 = (v102 + v60);
              *v110 = vuzp1q_s32(v18, v109);
              v17 = vuzp2q_s32(v18, v109);
              *(v110 + a11) = v17;
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v17 = vld1q_dup_s16(v101);
              *v102 = v17;
              *(v102 + a11) = v17;
              *(v102 + v60) = v17;
              *(v102 + v61) = v17;
              v104 = 2;
            }

            else if (v57[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v58 + v200), a11, v101, v103, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v104 = 0;
              v102->i64[0] = 0;
              v102->i64[1] = 0;
              v105 = (v102->i64 + a11);
              *v105 = 0;
              v105[1] = 0;
              v106 = (v102->i64 + v60);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v102->i64 + v61);
              *v107 = 0;
              v107[1] = 0;
            }

            v111 = v101 + v104;
            v112 = v102 + 1;
            v113 = v57[5];
            if (v113 == 63)
            {
              v118 = *v111;
              v18 = *(v111 + 16);
              v19 = *(v111 + 32);
              v119 = *(v111 + 48);
              *v112 = vuzp1q_s32(*v111, v19);
              *(v112 + a11) = vuzp2q_s32(v118, v19);
              v120 = (v112 + v60);
              *v120 = vuzp1q_s32(v18, v119);
              v17 = vuzp2q_s32(v18, v119);
              *(v120 + a11) = v17;
              v114 = 64;
              v16 = v213;
            }

            else
            {
              v16 = v213;
              if (v113 == 1)
              {
                v17 = vld1q_dup_s16(v111);
                *v112 = v17;
                *(v112 + a11) = v17;
                *(v112 + v60) = v17;
                *(v112 + v61) = v17;
                v114 = 2;
              }

              else if (v57[5])
              {
                v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, a11, v111, v113, *v17.i8, *v18.i64, *v19.i8);
              }

              else
              {
                v114 = 0;
                v112->i64[0] = 0;
                v112->i64[1] = 0;
                v115 = (v112->i64 + a11);
                *v115 = 0;
                v115[1] = 0;
                v116 = (v112->i64 + v60);
                *v116 = 0;
                v116[1] = 0;
                v117 = (v112->i64 + v61);
                *v117 = 0;
                v117[1] = 0;
              }
            }

            v121 = v111 + v114;
            v122 = (v58 + 12 * a11);
            v123 = v57[6];
            if (v123 == 63)
            {
              v128 = *v121;
              v18 = *(v121 + 16);
              v19 = *(v121 + 32);
              v129 = *(v121 + 48);
              *v122 = vuzp1q_s32(*v121, v19);
              *(v122 + a11) = vuzp2q_s32(v128, v19);
              v130 = (v122 + v60);
              *v130 = vuzp1q_s32(v18, v129);
              v17 = vuzp2q_s32(v18, v129);
              *(v130 + a11) = v17;
              v124 = 64;
            }

            else if (v123 == 1)
            {
              v17 = vld1q_dup_s16(v121);
              *v122 = v17;
              *(v122 + a11) = v17;
              *(v122 + v60) = v17;
              *(v122 + v61) = v17;
              v124 = 2;
            }

            else if (v57[6])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, a11, v121, v123, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v124 = 0;
              v122->i64[0] = 0;
              v122->i64[1] = 0;
              v125 = (v122->i64 + a11);
              *v125 = 0;
              v125[1] = 0;
              v126 = (v122->i64 + v60);
              *v126 = 0;
              v126[1] = 0;
              v127 = (v122->i64 + v61);
              *v127 = 0;
              v127[1] = 0;
            }

            v131 = v121 + v124;
            v132 = v122 + 1;
            v133 = v57[7];
            if (v133 == 63)
            {
              v137 = *v131;
              v18 = *(v131 + 16);
              v19 = *(v131 + 32);
              v138 = *(v131 + 48);
              *v132 = vuzp1q_s32(*v131, v19);
              *(v132 + a11) = vuzp2q_s32(v137, v19);
              v139 = (v132 + v60);
              *v139 = vuzp1q_s32(v18, v138);
              v17 = vuzp2q_s32(v18, v138);
              *(v139 + a11) = v17;
              a7 = v207;
            }

            else
            {
              a7 = v207;
              if (v133 == 1)
              {
                v17 = vld1q_dup_s16(v131);
                *v132 = v17;
                *(v132 + a11) = v17;
                *(v132 + v60) = v17;
                *(v132 + v61) = v17;
              }

              else if (v57[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v132, a11, v131, v133, *v17.i8, *v18.i64, *v19.i8);
              }

              else
              {
                v132->i64[0] = 0;
                v132->i64[1] = 0;
                v134 = (v132->i64 + a11);
                *v134 = 0;
                v134[1] = 0;
                v135 = (v132->i64 + v60);
                *v135 = 0;
                v135[1] = 0;
                v136 = (v132->i64 + v61);
                *v136 = 0;
                v136[1] = 0;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v213;
          block[5] = v56;
          v224 = v41;
          v225 = v214;
          v220 = v205;
          v221 = v38 - v36;
          block[6] = v57;
          v218 = v58;
          v219 = a11;
          v222 = v204;
          v223 = v40;
          if (v42)
          {
            dispatch_sync(*(*(v213 + 8) + 16552), block);
            a7 = v207;
            v16 = v213;
LABEL_29:
            v35 = v216;
            goto LABEL_30;
          }

          v66 = *v57;
          a7 = v207;
          if (v66 == 63)
          {
            v140 = v56[1];
            v19 = v56[2];
            v141 = v56[3];
            v142 = vuzp2q_s32(*v56, v19);
            v227 = vuzp1q_s32(*v56, v19);
            v229 = v142;
            v17 = vuzp1q_s32(v140, v141);
            v18 = vuzp2q_s32(v140, v141);
            v231 = v17;
            v233 = v18;
            v67 = 64;
          }

          else if (v66 == 1)
          {
            v17 = vld1q_dup_s16(v56->i16);
            v227 = v17;
            v229 = v17;
            v231 = v17;
            v233 = v17;
            v67 = 2;
          }

          else if (*v57)
          {
            v67 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 32, v56, v66, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v67 = 0;
            v227 = 0uLL;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
          }

          v143 = v56->i64 + v67;
          v144 = v57[1];
          if (v144 == 63)
          {
            v146 = *(v143 + 16);
            v19 = *(v143 + 32);
            v147 = *(v143 + 48);
            v148 = vuzp2q_s32(*v143, v19);
            v228 = vuzp1q_s32(*v143, v19);
            v230 = v148;
            v17 = vuzp1q_s32(v146, v147);
            v18 = vuzp2q_s32(v146, v147);
            v232 = v17;
            v234 = v18;
            v145 = 64;
            v16 = v213;
          }

          else
          {
            v16 = v213;
            if (v144 == 1)
            {
              v17 = vld1q_dup_s16(v143);
              v228 = v17;
              v230 = v17;
              v232 = v17;
              v234 = v17;
              v145 = 2;
            }

            else if (v57[1])
            {
              v145 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v143, v144, *v17.i8, *v18.i64, *v19.i8);
            }

            else
            {
              v145 = 0;
              v228 = 0uLL;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
            }
          }

          v149 = v143 + v145;
          v150 = v57[2];
          if (v150 == 63)
          {
            v152 = *(v149 + 16);
            v19 = *(v149 + 32);
            v153 = *(v149 + 48);
            v154 = vuzp2q_s32(*v149, v19);
            v235 = vuzp1q_s32(*v149, v19);
            v237 = v154;
            v17 = vuzp1q_s32(v152, v153);
            v18 = vuzp2q_s32(v152, v153);
            v239 = v17;
            v241 = v18;
            v151 = 64;
          }

          else if (v150 == 1)
          {
            v17 = vld1q_dup_s16(v149);
            v235 = v17;
            v237 = v17;
            v239 = v17;
            v241 = v17;
            v151 = 2;
          }

          else if (v57[2])
          {
            v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v149, v150, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v151 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v155 = v149 + v151;
          v156 = v57[3];
          if (v156 == 63)
          {
            v158 = *(v155 + 16);
            v19 = *(v155 + 32);
            v159 = *(v155 + 48);
            v160 = vuzp2q_s32(*v155, v19);
            v236 = vuzp1q_s32(*v155, v19);
            v238 = v160;
            v17 = vuzp1q_s32(v158, v159);
            v18 = vuzp2q_s32(v158, v159);
            v240 = v17;
            v242 = v18;
            v157 = 64;
          }

          else if (v156 == 1)
          {
            v17 = vld1q_dup_s16(v155);
            v236 = v17;
            v238 = v17;
            v240 = v17;
            v242 = v17;
            v157 = 2;
          }

          else if (v57[3])
          {
            v157 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 32, v155, v156, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v157 = 0;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
          }

          v161 = v155 + v157;
          v162 = v57[4];
          if (v162 == 63)
          {
            v164 = *(v161 + 16);
            v19 = *(v161 + 32);
            v165 = *(v161 + 48);
            v166 = vuzp2q_s32(*v161, v19);
            v243 = vuzp1q_s32(*v161, v19);
            v245 = v166;
            v17 = vuzp1q_s32(v164, v165);
            v18 = vuzp2q_s32(v164, v165);
            v247 = v17;
            v249 = v18;
            v163 = 64;
          }

          else if (v162 == 1)
          {
            v17 = vld1q_dup_s16(v161);
            v243 = v17;
            v245 = v17;
            v247 = v17;
            v249 = v17;
            v163 = 2;
          }

          else if (v57[4])
          {
            v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v161, v162, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v163 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v167 = v161 + v163;
          v168 = v57[5];
          if (v168 == 63)
          {
            v170 = *(v167 + 16);
            v19 = *(v167 + 32);
            v171 = *(v167 + 48);
            v172 = vuzp2q_s32(*v167, v19);
            v244 = vuzp1q_s32(*v167, v19);
            v246 = v172;
            v17 = vuzp1q_s32(v170, v171);
            v18 = vuzp2q_s32(v170, v171);
            v248 = v17;
            v250 = v18;
            v169 = 64;
          }

          else if (v168 == 1)
          {
            v17 = vld1q_dup_s16(v167);
            v244 = v17;
            v246 = v17;
            v248 = v17;
            v250 = v17;
            v169 = 2;
          }

          else if (v57[5])
          {
            v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 32, v167, v168, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v169 = 0;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
          }

          v173 = v167 + v169;
          v174 = v57[6];
          if (v174 == 63)
          {
            v176 = *(v173 + 16);
            v19 = *(v173 + 32);
            v177 = *(v173 + 48);
            v178 = vuzp2q_s32(*v173, v19);
            v251 = vuzp1q_s32(*v173, v19);
            v253 = v178;
            v17 = vuzp1q_s32(v176, v177);
            v18 = vuzp2q_s32(v176, v177);
            v255 = v17;
            v257 = v18;
            v175 = 64;
          }

          else if (v174 == 1)
          {
            v17 = vld1q_dup_s16(v173);
            v251 = v17;
            v253 = v17;
            v255 = v17;
            v257 = v17;
            v175 = 2;
          }

          else if (v57[6])
          {
            v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v173, v174, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v175 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v179 = v173 + v175;
          v180 = v57[7];
          if (v180 == 63)
          {
            v181 = *(v179 + 16);
            v19 = *(v179 + 32);
            v182 = *(v179 + 48);
            v183 = vuzp2q_s32(*v179, v19);
            v252 = vuzp1q_s32(*v179, v19);
            v254 = v183;
            v17 = vuzp1q_s32(v181, v182);
            v18 = vuzp2q_s32(v181, v182);
            v256 = v17;
            v258 = v18;
          }

          else if (v180 == 1)
          {
            v17 = vld1q_dup_s16(v179);
            v252 = v17;
            v254 = v17;
            v256 = v17;
            v258 = v17;
          }

          else if (v57[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 32, v179, v180, *v17.i8, *v18.i64, *v19.i8);
          }

          else
          {
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
            v258 = 0uLL;
          }

          v184 = v222;
          v35 = v216;
          if (v222)
          {
            v185 = 0;
            v186 = &v227.i8[32 * v220 + 2 * v221];
            v187 = v223;
            do
            {
              if (v187)
              {
                v188 = 0;
                v189 = &v218->i8[v219 * v185];
                do
                {
                  v189[v188] = v186[v188];
                  ++v188;
                  v187 = v223;
                }

                while (2 * v223 > v188);
                v184 = v222;
              }

              ++v185;
              v186 += 32;
            }

            while (v185 < v184);
          }

LABEL_30:
          v34 = v35;
        }

        while (v35 != (v208 >> 4) + 1);
        ++v20;
      }

      while (v20 != v190);
    }
  }
}